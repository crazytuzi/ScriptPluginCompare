import { $ref } from 'puerts';
import * as UE from 'ue'

class PuerTSActor extends UE.Actor {
    ReceiveBeginPlay(): void {
        var PuerTSSubsystem = UE.SubsystemBlueprintLibrary.GetGameInstanceSubsystem(this, UE.PuerTSSubsystem.StaticClass()) as UE.PuerTSSubsystem;

        this.Loop = PuerTSSubsystem.Loop;

        this.StartTest();

        this.ProcessTest();

        this.EndTest();
    }

    private StartTest(): void {
        this.Data = [];
    }

    private TestSelf(): void {
        // Empty
        this.EmptyFunction(this.Loop);

        // Add
        this.AddFunction(this.Loop);

        // Subtract
        this.SubtractFunction(this.Loop);

        // Multiply
        this.MultiplyFunction(this.Loop);

        // Divide
        this.DivideFunction(this.Loop);
    }

    private TestCpp(): void {

    }

    private TestBP(): void {

    }

    private ProcessTest(): void {
        this.TestSelf();

        this.TestCpp();

        this.TestBP();
    }

    private EndTest(): void {
        var Value = "";

        Value += "Name, Time\n";

        var Now = UE.KismetMathLibrary.Now();

        var Year = $ref(0);

        var Month = $ref(0);

        var Day = $ref(0);

        var Hour = $ref(0);

        var Minute = $ref(0);

        var Second = $ref(0);

        var Millisecond = $ref(0);

        UE.KismetMathLibrary.BreakDateTime(Now, Year, Month, Day, Hour, Minute, Second, Millisecond);

        this.Data.forEach(Element => {
            Value += Element[0] + ", " + Element[1] + "\n";
        });

        var Platform = UE.TestCaseBlueprintFunctionLibrary.GetPlatform();

        var BuildConfiguration = UE.TestCaseBlueprintFunctionLibrary.GetBuildConfiguration();

        var File = `PuerTS-${Platform}-${BuildConfiguration}-${this.Loop}-${Year}-${Month}-${Day}-${Hour}-${Minute}-${Second}-${Millisecond}.csv`;

        UE.TestCaseBlueprintFunctionLibrary.SaveStringToFile(File, Value);
    }

    private Empty(): void {

    }

    // Empty
    private EmptyFunction(InLoop: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            this.Empty();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["EmptyFunction", TotalSeconds]);
    }

    private Add(A: number, B: number): void {
        var Value = A + B;
    }

    // Add
    private AddFunction(InLoop: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            this.Add(1, 1);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["AddFunction", TotalSeconds]);
    }

    private Subtract(A: number, B: number): void {
        var Value = A + B;
    }

    // Subtract
    private SubtractFunction(InLoop: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            this.Subtract(1, 1);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SubtractFunction", TotalSeconds]);
    }

    private Multiply(A: number, B: number): void {
        var Value = A * B;
    }

    // Multiply
    private MultiplyFunction(InLoop: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            this.Multiply(1, 1);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["MultiplyFunction", TotalSeconds]);
    }

    private Divide(A: number, B: number): void {
        var Value = A / B;
    }

    // Divide
    private DivideFunction(InLoop: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            this.Divide(1, 1);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["DivideFunction", TotalSeconds]);
    }

    private Data: [String, number][];

    private Loop: number;

}

export default PuerTSActor;