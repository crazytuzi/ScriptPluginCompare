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

    private Data: [String, number][];

    private Loop: number;

}

export default PuerTSActor;