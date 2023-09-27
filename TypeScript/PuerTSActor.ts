import { $ref, blueprint } from 'puerts';
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
        var TestActor = new UE.TestActor();

        var TestClass = TestActor.GetClass();

        var TestInterface = TestActor.InterfaceValue;

        var TestStruct = new UE.TestStruct(1);

        var TestEnum = UE.ETestEnum.TestEnumOne;

        var TestEnumClass = UE.ETestEnumClass.TestEnumClassOne;

        var TestArray = UE.NewArray(UE.BuiltinInt);

        TestArray.Add(1);

        var TestSet = UE.NewSet(UE.BuiltinInt);

        TestSet.Add(1);

        var TestMap = UE.NewMap(UE.BuiltinInt, UE.BuiltinInt);

        TestMap.Add(0, 1);

        // Bool
        this.SetCppBoolValue(this.Loop, TestActor, true);

        this.GetCppBoolValue(this.Loop, TestActor);

        // Int8
        this.SetCppInt8Value(this.Loop, TestActor, 1);

        this.GetCppInt8Value(this.Loop, TestActor);

        // Int16
        this.SetCppInt16Value(this.Loop, TestActor, 1);

        this.GetCppInt16Value(this.Loop, TestActor);

        // Int32
        this.SetCppInt32Value(this.Loop, TestActor, 1);

        this.GetCppInt32Value(this.Loop, TestActor);

        // Int64
        this.SetCppInt64Value(this.Loop, TestActor, 1n);

        this.GetCppInt64Value(this.Loop, TestActor);

        // UInt8
        this.SetCppUInt8Value(this.Loop, TestActor, 1);

        this.GetCppUInt8Value(this.Loop, TestActor);

        // UInt16
        this.SetCppUInt16Value(this.Loop, TestActor, 1);

        this.GetCppUInt16Value(this.Loop, TestActor);

        // UInt32
        this.SetCppUInt32Value(this.Loop, TestActor, 1);

        this.GetCppUInt32Value(this.Loop, TestActor);

        // UInt64
        this.SetCppUInt64Value(this.Loop, TestActor, 1n);

        this.GetCppUInt64Value(this.Loop, TestActor);

        // Float
        this.SetCppFloatValue(this.Loop, TestActor, 1.0);

        this.GetCppFloatValue(this.Loop, TestActor);

        // Double
        this.SetCppDoubleValue(this.Loop, TestActor, 1.0);

        this.GetCppDoubleValue(this.Loop, TestActor);

        // FName
        this.SetCppNameValue(this.Loop, TestActor, "Name");

        this.GetCppNameValue(this.Loop, TestActor);

        // FText
        this.SetCppTextValue(this.Loop, TestActor, "Text");

        this.GetCppTextValue(this.Loop, TestActor);

        // FString
        this.SetCppStringValue(this.Loop, TestActor, "String");

        this.GetCppStringValue(this.Loop, TestActor);

        // UEnum
        this.SetCppEnumValue(this.Loop, TestActor, TestEnum);

        this.GetCppEnumValue(this.Loop, TestActor);

        // UEnum Class
        this.SetCppEnumClassValue(this.Loop, TestActor, TestEnumClass);

        this.GetCppEnumClassValue(this.Loop, TestActor);

        // UStruct
        this.SetCppStructValue(this.Loop, TestActor, TestStruct);

        this.GetCppStructValue(this.Loop, TestActor);

        // UObject
        this.SetCppObjectValue(this.Loop, TestActor, TestActor);

        this.GetCppObjectValue(this.Loop, TestActor);

        // UClass
        this.SetCppClassValue(this.Loop, TestActor, TestClass);

        this.GetCppClassValue(this.Loop, TestActor);

        // UInterface
        this.SetCppInterfaceValue(this.Loop, TestActor, TestInterface);

        this.GetCppInterfaceValue(this.Loop, TestActor);

        // TArray
        this.SetCppArrayValue(this.Loop, TestActor, TestArray);

        this.GetCppArrayValue(this.Loop, TestActor);

        // TArray Element
        this.SetCppArrayElement(this.Loop, TestActor, 0, 1);

        this.GetCppArrayElement(this.Loop, TestActor, 0);

        // TSet
        this.SetCppSetValue(this.Loop, TestActor, TestSet);

        this.GetCppSetValue(this.Loop, TestActor);

        // TMap
        this.SetCppMapValue(this.Loop, TestActor, TestMap);

        this.GetCppMapValue(this.Loop, TestActor);

        // TMap Element
        this.SetCppMapElement(this.Loop, TestActor, 0, 1);

        this.GetCppMapElement(this.Loop, TestActor, 0);

        // Static
        this.StaticCppFunction(this.Loop);

        // Member
        this.MemberCppFunction(this.Loop, TestActor);

        // Bool
        this.SetCppBoolValueFunction(this.Loop, TestActor, true);

        this.GetCppBoolValueFunction(this.Loop, TestActor);

        // Int8
        this.SetCppInt8ValueFunction(this.Loop, TestActor, 1);

        this.GetCppInt8ValueFunction(this.Loop, TestActor);

        // Int16
        this.SetCppInt16ValueFunction(this.Loop, TestActor, 1);

        this.GetCppInt16ValueFunction(this.Loop, TestActor);

        // Int32
        this.SetCppInt32ValueFunction(this.Loop, TestActor, 1);

        this.GetCppInt32ValueFunction(this.Loop, TestActor);

        // Int64
        this.SetCppInt64ValueFunction(this.Loop, TestActor, 1n);

        this.GetCppInt64ValueFunction(this.Loop, TestActor);

        // UInt8
        this.SetCppUInt8ValueFunction(this.Loop, TestActor, 1);

        this.GetCppUInt8ValueFunction(this.Loop, TestActor);

        // UInt16
        this.SetCppUInt16ValueFunction(this.Loop, TestActor, 1);

        this.GetCppUInt16ValueFunction(this.Loop, TestActor);

        // UInt32
        this.SetCppUInt32ValueFunction(this.Loop, TestActor, 1);

        this.GetCppUInt32ValueFunction(this.Loop, TestActor);

        // UInt64
        this.SetCppUInt64ValueFunction(this.Loop, TestActor, 1n);

        this.GetCppUInt64ValueFunction(this.Loop, TestActor);

        // Float
        this.SetCppFloatValueFunction(this.Loop, TestActor, 1.0);

        this.GetCppFloatValueFunction(this.Loop, TestActor);

        // Double
        this.SetCppDoubleValueFunction(this.Loop, TestActor, 1.0);

        this.GetCppDoubleValueFunction(this.Loop, TestActor);

        // FName
        this.SetCppNameValueFunction(this.Loop, TestActor, "Name");

        this.GetCppNameValueFunction(this.Loop, TestActor);

        // FText
        this.SetCppTextValueFunction(this.Loop, TestActor, "Text");

        this.GetCppTextValueFunction(this.Loop, TestActor);

        // FString
        this.SetCppStringValueFunction(this.Loop, TestActor, "String");

        this.GetCppStringValueFunction(this.Loop, TestActor);

        // UEnum
        this.SetCppEnumValueFunction(this.Loop, TestActor, TestEnum);

        this.GetCppEnumValueFunction(this.Loop, TestActor);

        // UEnum Class
        this.SetCppEnumClassValueFunction(this.Loop, TestActor, TestEnumClass);

        this.GetCppEnumClassValueFunction(this.Loop, TestActor);

        // UStruct
        this.SetCppStructValueFunction(this.Loop, TestActor, TestStruct);

        this.GetCppStructValueFunction(this.Loop, TestActor);

        // UObject
        this.SetCppObjectValueFunction(this.Loop, TestActor, TestActor);

        this.GetCppObjectValueFunction(this.Loop, TestActor);

        // UClass
        this.SetCppClassValueFunction(this.Loop, TestActor, TestClass);

        this.GetCppClassValueFunction(this.Loop, TestActor);

        // UInterface
        this.SetCppInterfaceValueFunction(this.Loop, TestActor, TestInterface);

        this.GetCppInterfaceValueFunction(this.Loop, TestActor);

        // TArray
        this.SetCppArrayValueFunction(this.Loop, TestActor, TestArray);

        this.GetCppArrayValueFunction(this.Loop, TestActor);

        // TSet
        this.SetCppSetValueFunction(this.Loop, TestActor, TestSet);

        this.GetCppSetValueFunction(this.Loop, TestActor);

        // TMap
        this.SetCppMapValueFunction(this.Loop, TestActor, TestMap);

        this.GetCppMapValueFunction(this.Loop, TestActor);
    }

    private TestBP(): void {
        blueprint.load(UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C);

        var TestActor = new UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C();

        var TestClass = TestActor.GetClass();

        var TestInterface = TestActor.InterfaceValue;

        blueprint.load(UE.Game.FirstPerson.Blueprints.BP_TestStruct.BP_TestStruct);

        var TestStruct = new UE.Game.FirstPerson.Blueprints.BP_TestStruct.BP_TestStruct(1);

        var TestEnum = UE.Game.FirstPerson.Blueprints.BP_TestEnum.BP_TestEnum.TestEnumOne;

        var TestArray = UE.NewArray(UE.BuiltinInt);

        TestArray.Add(1);

        var TestSet = UE.NewSet(UE.BuiltinInt);

        TestSet.Add(1);

        var TestMap = UE.NewMap(UE.BuiltinInt, UE.BuiltinInt);

        TestMap.Add(0, 1);

        // Bool
        this.SetBPBoolValue(this.Loop, TestActor, true);

        this.GetBPBoolValue(this.Loop, TestActor);

        // Int32
        this.SetBPInt32Value(this.Loop, TestActor, 1);

        this.GetBPInt32Value(this.Loop, TestActor);

        // Int64
        this.SetBPInt64Value(this.Loop, TestActor, 1n);

        this.GetBPInt64Value(this.Loop, TestActor);

        // UInt8
        this.SetBPUInt8Value(this.Loop, TestActor, 1);

        this.GetBPUInt8Value(this.Loop, TestActor);

        // Double
        this.SetBPDoubleValue(this.Loop, TestActor, 1.0);

        this.GetBPDoubleValue(this.Loop, TestActor);

        // FName
        this.SetBPNameValue(this.Loop, TestActor, "Name");

        this.GetBPNameValue(this.Loop, TestActor);

        // FText
        this.SetBPTextValue(this.Loop, TestActor, "Text");

        this.GetBPTextValue(this.Loop, TestActor);

        // FString
        this.SetBPStringValue(this.Loop, TestActor, "String");

        this.GetBPStringValue(this.Loop, TestActor);

        // UEnum
        this.SetBPEnumValue(this.Loop, TestActor, TestEnum);

        this.GetBPEnumValue(this.Loop, TestActor);

        // UStruct
        this.SetBPStructValue(this.Loop, TestActor, TestStruct);

        this.GetBPStructValue(this.Loop, TestActor);

        // UObject
        this.SetBPObjectValue(this.Loop, TestActor, TestActor);

        this.GetBPObjectValue(this.Loop, TestActor);

        // UClass
        this.SetBPClassValue(this.Loop, TestActor, TestClass);

        this.GetBPClassValue(this.Loop, TestActor);

        // UInterface
        this.SetBPInterfaceValue(this.Loop, TestActor, TestInterface);

        this.GetBPInterfaceValue(this.Loop, TestActor);

        // TArray
        this.SetBPArrayValue(this.Loop, TestActor, TestArray);

        this.GetBPArrayValue(this.Loop, TestActor);

        // TArray Element
        this.SetBPArrayElement(this.Loop, TestActor, 0, 1);

        this.GetBPArrayElement(this.Loop, TestActor, 0);

        // TSet
        this.SetBPSetValue(this.Loop, TestActor, TestSet);

        this.GetBPSetValue(this.Loop, TestActor);

        // TMap
        this.SetBPMapValue(this.Loop, TestActor, TestMap);

        this.GetBPMapValue(this.Loop, TestActor);

        // TMap Element
        this.SetBPMapElement(this.Loop, TestActor, 0, 1);

        this.GetBPMapElement(this.Loop, TestActor, 0);

        // Member
        this.MemberBPFunction(this.Loop, TestActor);

        // Bool
        this.SetBPBoolValueFunction(this.Loop, TestActor, true);

        this.GetBPBoolValueFunction(this.Loop, TestActor);

        // Int32
        this.SetBPInt32ValueFunction(this.Loop, TestActor, 1);

        this.GetBPInt32ValueFunction(this.Loop, TestActor);

        // Int64
        this.SetBPInt64ValueFunction(this.Loop, TestActor, 1n);

        this.GetBPInt64ValueFunction(this.Loop, TestActor);

        // UInt8
        this.SetBPUInt8ValueFunction(this.Loop, TestActor, 1);

        this.GetBPUInt8ValueFunction(this.Loop, TestActor);

        // Double
        this.SetBPDoubleValueFunction(this.Loop, TestActor, 1.0);

        this.GetBPDoubleValueFunction(this.Loop, TestActor);

        // FName
        this.SetBPNameValueFunction(this.Loop, TestActor, "Name");

        this.GetBPNameValueFunction(this.Loop, TestActor);

        // FText
        this.SetBPTextValueFunction(this.Loop, TestActor, "Text");

        this.GetBPTextValueFunction(this.Loop, TestActor);

        // FString
        this.SetBPStringValueFunction(this.Loop, TestActor, "String");

        this.GetBPStringValueFunction(this.Loop, TestActor);

        // UEnum
        this.SetBPEnumValueFunction(this.Loop, TestActor, TestEnum);

        this.GetBPEnumValueFunction(this.Loop, TestActor);

        // UStruct
        this.SetBPStructValueFunction(this.Loop, TestActor, TestStruct);

        this.GetBPStructValueFunction(this.Loop, TestActor);

        // UObject
        this.SetBPObjectValueFunction(this.Loop, TestActor, TestActor);

        this.GetBPObjectValueFunction(this.Loop, TestActor);

        // UClass
        this.SetBPClassValueFunction(this.Loop, TestActor, TestClass);

        this.GetBPClassValueFunction(this.Loop, TestActor);

        // UInterface
        this.SetBPInterfaceValueFunction(this.Loop, TestActor, TestInterface);

        this.GetBPInterfaceValueFunction(this.Loop, TestActor);

        // TArray
        this.SetBPArrayValueFunction(this.Loop, TestActor, TestArray);

        this.GetBPArrayValueFunction(this.Loop, TestActor);

        // TSet
        this.SetBPSetValueFunction(this.Loop, TestActor, TestSet);

        this.GetBPSetValueFunction(this.Loop, TestActor);

        // TMap
        this.SetBPMapValueFunction(this.Loop, TestActor, TestMap);

        this.GetBPMapValueFunction(this.Loop, TestActor);
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

    // Bool
    private SetCppBoolValue(InLoop: number, InObject: UE.TestActor, InValue: boolean): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.BoolValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppBoolValue", TotalSeconds]);
    }

    private GetCppBoolValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.BoolValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppBoolValue", TotalSeconds]);
    }

    // Int8
    private SetCppInt8Value(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.Int8Value = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppInt8Value", TotalSeconds]);
    }

    private GetCppInt8Value(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.Int8Value;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppInt8Value", TotalSeconds]);
    }

    // Int16
    private SetCppInt16Value(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.Int16Value = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppInt16Value", TotalSeconds]);
    }

    private GetCppInt16Value(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.Int16Value;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppInt16Value", TotalSeconds]);
    }

    // Int32
    private SetCppInt32Value(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.Int32Value = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppInt32Value", TotalSeconds]);
    }

    private GetCppInt32Value(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.Int32Value;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppInt32Value", TotalSeconds]);
    }

    // Int64
    private SetCppInt64Value(InLoop: number, InObject: UE.TestActor, InValue: bigint): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.Int64Value = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppInt64Value", TotalSeconds]);
    }

    private GetCppInt64Value(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.Int64Value;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppInt64Value", TotalSeconds]);
    }

    // UInt8
    private SetCppUInt8Value(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.UInt8Value = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppUInt8Value", TotalSeconds]);
    }

    private GetCppUInt8Value(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.UInt8Value;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppUInt8Value", TotalSeconds]);
    }

    // UInt16
    private SetCppUInt16Value(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.UInt16Value = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppUInt16Value", TotalSeconds]);
    }

    private GetCppUInt16Value(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.UInt16Value;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppUInt16Value", TotalSeconds]);
    }

    // UInt32
    private SetCppUInt32Value(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.UInt32Value = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppUInt32Value", TotalSeconds]);
    }

    private GetCppUInt32Value(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.UInt32Value;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppUInt32Value", TotalSeconds]);
    }

    // UInt64
    private SetCppUInt64Value(InLoop: number, InObject: UE.TestActor, InValue: bigint): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.UInt64Value = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppUInt64Value", TotalSeconds]);
    }

    private GetCppUInt64Value(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.UInt64Value;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppUInt64Value", TotalSeconds]);
    }

    // Float
    private SetCppFloatValue(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.FloatValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppFloatValue", TotalSeconds]);
    }

    private GetCppFloatValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.FloatValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppFloatValue", TotalSeconds]);
    }

    // Double
    private SetCppDoubleValue(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.DoubleValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppDoubleValue", TotalSeconds]);
    }

    private GetCppDoubleValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.DoubleValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppDoubleValue", TotalSeconds]);
    }

    // FName
    private SetCppNameValue(InLoop: number, InObject: UE.TestActor, InValue: string): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.NameValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppNameValue", TotalSeconds]);
    }

    private GetCppNameValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.NameValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppNameValue", TotalSeconds]);
    }

    // FText
    private SetCppTextValue(InLoop: number, InObject: UE.TestActor, InValue: string): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.TextValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppTextValue", TotalSeconds]);
    }

    private GetCppTextValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.TextValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppTextValue", TotalSeconds]);
    }

    // FString
    private SetCppStringValue(InLoop: number, InObject: UE.TestActor, InValue: string): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.StringValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppStringValue", TotalSeconds]);
    }

    private GetCppStringValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.StringValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppStringValue", TotalSeconds]);
    }

    // UEnum
    private SetCppEnumValue(InLoop: number, InObject: UE.TestActor, InValue: UE.ETestEnum): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.EnumValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppEnumValue", TotalSeconds]);
    }

    private GetCppEnumValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.EnumValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppEnumValue", TotalSeconds]);
    }

    // UEnum Class
    private SetCppEnumClassValue(InLoop: number, InObject: UE.TestActor, InValue: UE.ETestEnumClass): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.EnumClassValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppEnumClassValue", TotalSeconds]);
    }

    private GetCppEnumClassValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.EnumClassValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppEnumClassValue", TotalSeconds]);
    }

    // UStruct
    private SetCppStructValue(InLoop: number, InObject: UE.TestActor, InValue: UE.TestStruct): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.StructValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppStructValue", TotalSeconds]);
    }

    private GetCppStructValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.StructValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppStructValue", TotalSeconds]);
    }

    // UObject
    private SetCppObjectValue(InLoop: number, InObject: UE.TestActor, InValue: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.ObjectValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppObjectValue", TotalSeconds]);
    }

    private GetCppObjectValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.ObjectValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppObjectValue", TotalSeconds]);
    }

    // UClass
    private SetCppClassValue(InLoop: number, InObject: UE.TestActor, InValue: UE.Class): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.ClassValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppClassValue", TotalSeconds]);
    }

    private GetCppClassValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.ClassValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppClassValue", TotalSeconds]);
    }

    // UInterface
    private SetCppInterfaceValue(InLoop: number, InObject: UE.TestActor, InValue: UE.TestInterface): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.InterfaceValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppInterfaceValue", TotalSeconds]);
    }

    private GetCppInterfaceValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.InterfaceValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppInterfaceValue", TotalSeconds]);
    }

    // TArray
    private SetCppArrayValue(InLoop: number, InObject: UE.TestActor, InValue: UE.TArray<number>): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.ArrayValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppArrayValue", TotalSeconds]);
    }

    private GetCppArrayValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.ArrayValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppArrayValue", TotalSeconds]);
    }

    // TArray Element
    private SetCppArrayElement(InLoop: number, InObject: UE.TestActor, InIndex: number, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.ArrayValue[InIndex] = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppArrayElement", TotalSeconds]);
    }

    private GetCppArrayElement(InLoop: number, InObject: UE.TestActor, InIndex: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.ArrayValue[InIndex];
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppArrayElement", TotalSeconds]);
    }

    // TSet
    private SetCppSetValue(InLoop: number, InObject: UE.TestActor, InValue: UE.TSet<number>): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppSetValue", TotalSeconds]);
    }

    private GetCppSetValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.SetValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppSetValue", TotalSeconds]);
    }

    // TMap
    private SetCppMapValue(InLoop: number, InObject: UE.TestActor, InValue: UE.TMap<number, number>): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.MapValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppMapValue", TotalSeconds]);
    }

    private GetCppMapValue(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.MapValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppMapValue", TotalSeconds]);
    }

    // TMap Element
    private SetCppMapElement(InLoop: number, InObject: UE.TestActor, InIndex: number, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.MapValue[InIndex] = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppMapElement", TotalSeconds]);
    }

    private GetCppMapElement(InLoop: number, InObject: UE.TestActor, InIndex: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.MapValue[InIndex];
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppMapElement", TotalSeconds]);
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

    // Static
    private StaticCppFunction(InLoop: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            UE.TestActor.StaticFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["StaticCppFunction", TotalSeconds]);
    }

    // Member
    private MemberCppFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.MemberFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["MemberCppFunction", TotalSeconds]);
    }

    // Bool
    private SetCppBoolValueFunction(InLoop: number, InObject: UE.TestActor, InValue: boolean): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetBoolValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppBoolValueFunction", TotalSeconds]);
    }

    private GetCppBoolValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetBoolValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppBoolValueFunction", TotalSeconds]);
    }

    // Int8
    private SetCppInt8ValueFunction(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetInt8ValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppInt8ValueFunction", TotalSeconds]);
    }

    private GetCppInt8ValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetInt8ValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppInt8ValueFunction", TotalSeconds]);
    }

    // Int16
    private SetCppInt16ValueFunction(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetInt16ValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppInt16ValueFunction", TotalSeconds]);
    }

    private GetCppInt16ValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetInt16ValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppInt16ValueFunction", TotalSeconds]);
    }

    // Int32
    private SetCppInt32ValueFunction(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetInt32ValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppInt32ValueFunction", TotalSeconds]);
    }

    private GetCppInt32ValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetInt32ValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppInt32ValueFunction", TotalSeconds]);
    }

    // Int64
    private SetCppInt64ValueFunction(InLoop: number, InObject: UE.TestActor, InValue: bigint): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetInt64ValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppInt64ValueFunction", TotalSeconds]);
    }

    private GetCppInt64ValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetInt64ValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppInt64ValueFunction", TotalSeconds]);
    }

    // UInt8
    private SetCppUInt8ValueFunction(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetUInt8ValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppUInt8ValueFunction", TotalSeconds]);
    }

    private GetCppUInt8ValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetUInt8ValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppUInt8ValueFunction", TotalSeconds]);
    }

    // UInt16
    private SetCppUInt16ValueFunction(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetUInt16ValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppUInt16ValueFunction", TotalSeconds]);
    }

    private GetCppUInt16ValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetUInt16ValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppUInt16ValueFunction", TotalSeconds]);
    }

    // UInt32
    private SetCppUInt32ValueFunction(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetUInt32ValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppUInt32ValueFunction", TotalSeconds]);
    }

    private GetCppUInt32ValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetUInt32ValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppUInt32ValueFunction", TotalSeconds]);
    }

    // UInt64
    private SetCppUInt64ValueFunction(InLoop: number, InObject: UE.TestActor, InValue: bigint): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetUInt64ValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppUInt64ValueFunction", TotalSeconds]);
    }

    private GetCppUInt64ValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetUInt64ValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppUInt64ValueFunction", TotalSeconds]);
    }

    // Float
    private SetCppFloatValueFunction(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetFloatValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppFloatValueFunction", TotalSeconds]);
    }

    private GetCppFloatValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetFloatValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppFloatValueFunction", TotalSeconds]);
    }

    // Double
    private SetCppDoubleValueFunction(InLoop: number, InObject: UE.TestActor, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetDoubleValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppDoubleValueFunction", TotalSeconds]);
    }

    private GetCppDoubleValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetDoubleValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppDoubleValueFunction", TotalSeconds]);
    }

    // FName
    private SetCppNameValueFunction(InLoop: number, InObject: UE.TestActor, InValue: string): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetNameValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppNameValueFunction", TotalSeconds]);
    }

    private GetCppNameValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetNameValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppNameValueFunction", TotalSeconds]);
    }

    // FText
    private SetCppTextValueFunction(InLoop: number, InObject: UE.TestActor, InValue: string): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetTextValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppTextValueFunction", TotalSeconds]);
    }

    private GetCppTextValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetTextValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppTextValueFunction", TotalSeconds]);
    }

    // FString
    private SetCppStringValueFunction(InLoop: number, InObject: UE.TestActor, InValue: string): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetStringValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppStringValueFunction", TotalSeconds]);
    }

    private GetCppStringValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetStringValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppStringValueFunction", TotalSeconds]);
    }

    // UEnum
    private SetCppEnumValueFunction(InLoop: number, InObject: UE.TestActor, InValue: UE.ETestEnum): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetEnumValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppEnumValueFunction", TotalSeconds]);
    }

    private GetCppEnumValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetEnumValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppEnumValueFunction", TotalSeconds]);
    }

    // UEnum Class
    private SetCppEnumClassValueFunction(InLoop: number, InObject: UE.TestActor, InValue: UE.ETestEnumClass): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetEnumClassValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppEnumClassValueFunction", TotalSeconds]);
    }

    private GetCppEnumClassValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetEnumClassValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppEnumClassValueFunction", TotalSeconds]);
    }

    // UStruct
    private SetCppStructValueFunction(InLoop: number, InObject: UE.TestActor, InValue: UE.TestStruct): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetStructValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppStructValueFunction", TotalSeconds]);
    }

    private GetCppStructValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetStructValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppStructValueFunction", TotalSeconds]);
    }

    // UObject
    private SetCppObjectValueFunction(InLoop: number, InObject: UE.TestActor, InValue: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetObjectValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppObjectValueFunction", TotalSeconds]);
    }

    private GetCppObjectValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetObjectValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppObjectValueFunction", TotalSeconds]);
    }

    // UClass
    private SetCppClassValueFunction(InLoop: number, InObject: UE.TestActor, InValue: UE.Class): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetClassValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppClassValueFunction", TotalSeconds]);
    }

    private GetCppClassValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetClassValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppClassValueFunction", TotalSeconds]);
    }

    // UInterface
    private SetCppInterfaceValueFunction(InLoop: number, InObject: UE.TestActor, InValue: UE.TestInterface): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetInterfaceValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppInterfaceValueFunction", TotalSeconds]);
    }

    private GetCppInterfaceValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetInterfaceValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppInterfaceValueFunction", TotalSeconds]);
    }

    // TArray
    private SetCppArrayValueFunction(InLoop: number, InObject: UE.TestActor, InValue: UE.TArray<number>): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetArrayValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppArrayValueFunction", TotalSeconds]);
    }

    private GetCppArrayValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetArrayValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppArrayValueFunction", TotalSeconds]);
    }

    // TSet
    private SetCppSetValueFunction(InLoop: number, InObject: UE.TestActor, InValue: UE.TSet<number>): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetSetValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppSetValueFunction", TotalSeconds]);
    }

    private GetCppSetValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetSetValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppSetValueFunction", TotalSeconds]);
    }

    // TMap
    private SetCppMapValueFunction(InLoop: number, InObject: UE.TestActor, InValue: UE.TMap<number, number>): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetMapValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetCppMapValueFunction", TotalSeconds]);
    }

    private GetCppMapValueFunction(InLoop: number, InObject: UE.TestActor): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetMapValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetCppMapValueFunction", TotalSeconds]);
    }

    // Bool
    private SetBPBoolValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: boolean): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.BoolValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPBoolValue", TotalSeconds]);
    }

    private GetBPBoolValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.BoolValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPBoolValue", TotalSeconds]);
    }

    // Int32
    private SetBPInt32Value(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.Int32Value = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPInt32Value", TotalSeconds]);
    }

    private GetBPInt32Value(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.Int32Value;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPInt32Value", TotalSeconds]);
    }

    // Int64
    private SetBPInt64Value(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: bigint): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.Int64Value = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPInt64Value", TotalSeconds]);
    }

    private GetBPInt64Value(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.Int64Value;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPInt64Value", TotalSeconds]);
    }

    // UInt8
    private SetBPUInt8Value(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.UInt8Value = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPUInt8Value", TotalSeconds]);
    }

    private GetBPUInt8Value(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.UInt8Value;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPUInt8Value", TotalSeconds]);
    }

    // Double
    private SetBPDoubleValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.DoubleValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPDoubleValue", TotalSeconds]);
    }

    private GetBPDoubleValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.DoubleValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPDoubleValue", TotalSeconds]);
    }

    // FName
    private SetBPNameValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: string): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.NameValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPNameValue", TotalSeconds]);
    }

    private GetBPNameValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.NameValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPNameValue", TotalSeconds]);
    }

    // FText
    private SetBPTextValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: string): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.TextValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPTextValue", TotalSeconds]);
    }

    private GetBPTextValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.TextValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPTextValue", TotalSeconds]);
    }

    // FString
    private SetBPStringValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: string): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.StringValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPStringValue", TotalSeconds]);
    }

    private GetBPStringValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.StringValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPStringValue", TotalSeconds]);
    }

    // UEnum
    private SetBPEnumValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.Game.FirstPerson.Blueprints.BP_TestEnum.BP_TestEnum): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.EnumValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPEnumValue", TotalSeconds]);
    }

    private GetBPEnumValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.EnumValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPEnumValue", TotalSeconds]);
    }

    // UStruct
    private SetBPStructValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.Game.FirstPerson.Blueprints.BP_TestStruct.BP_TestStruct): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.StructValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPStructValue", TotalSeconds]);
    }

    private GetBPStructValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.StructValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPStructValue", TotalSeconds]);
    }

    // UObject
    private SetBPObjectValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.ObjectValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPObjectValue", TotalSeconds]);
    }

    private GetBPObjectValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.ObjectValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPObjectValue", TotalSeconds]);
    }

    // UClass
    private SetBPClassValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.Class): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.ClassValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPClassValue", TotalSeconds]);
    }

    private GetBPClassValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.ClassValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPClassValue", TotalSeconds]);
    }

    // UInterface
    private SetBPInterfaceValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.Game.FirstPerson.Blueprints.BP_TestInterface.BP_TestInterface_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.InterfaceValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPInterfaceValue", TotalSeconds]);
    }

    private GetBPInterfaceValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.InterfaceValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPInterfaceValue", TotalSeconds]);
    }

    // TArray
    private SetBPArrayValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.TArray<number>): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.ArrayValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPArrayValue", TotalSeconds]);
    }

    private GetBPArrayValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.ArrayValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPArrayValue", TotalSeconds]);
    }

    // TArray Element
    private SetBPArrayElement(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InIndex: number, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.ArrayValue[InIndex] = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPArrayElement", TotalSeconds]);
    }

    private GetBPArrayElement(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InIndex: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.ArrayValue[InIndex];
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPArrayElement", TotalSeconds]);
    }

    // TSet
    private SetBPSetValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.TSet<number>): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPSetValue", TotalSeconds]);
    }

    private GetBPSetValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.SetValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPSetValue", TotalSeconds]);
    }

    // TMap
    private SetBPMapValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.TMap<number, number>): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.MapValue = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPMapValue", TotalSeconds]);
    }

    private GetBPMapValue(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.MapValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPMapValue", TotalSeconds]);
    }

    // TMap Element
    private SetBPMapElement(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InIndex: number, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.MapValue[InIndex] = InValue;
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPMapElement", TotalSeconds]);
    }

    private GetBPMapElement(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InIndex: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.MapValue[InIndex];
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPMapElement", TotalSeconds]);
    }

    private MemberBPFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.MemberFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["MemberBPFunction", TotalSeconds]);
    }

    // Bool
    private SetBPBoolValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: boolean): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetBoolValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPBoolValueFunction", TotalSeconds]);
    }

    private GetBPBoolValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetBoolValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPBoolValueFunction", TotalSeconds]);
    }

    // Int32
    private SetBPInt32ValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetInt32ValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPInt32ValueFunction", TotalSeconds]);
    }

    private GetBPInt32ValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetInt32ValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPInt32ValueFunction", TotalSeconds]);
    }

    // Int64
    private SetBPInt64ValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: bigint): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetInt64ValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPInt64ValueFunction", TotalSeconds]);
    }

    private GetBPInt64ValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetInt64ValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPInt64ValueFunction", TotalSeconds]);
    }

    // UInt8
    private SetBPUInt8ValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetUInt8ValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPUInt8ValueFunction", TotalSeconds]);
    }

    private GetBPUInt8ValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetUInt8ValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPUInt8ValueFunction", TotalSeconds]);
    }

    // Double
    private SetBPDoubleValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: number): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetDoubleValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPDoubleValueFunction", TotalSeconds]);
    }

    private GetBPDoubleValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetDoubleValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPDoubleValueFunction", TotalSeconds]);
    }

    // FName
    private SetBPNameValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: string): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetNameValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPNameValueFunction", TotalSeconds]);
    }

    private GetBPNameValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetNameValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPNameValueFunction", TotalSeconds]);
    }

    // FText
    private SetBPTextValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: string): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetTextValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPTextValueFunction", TotalSeconds]);
    }

    private GetBPTextValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetTextValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPTextValueFunction", TotalSeconds]);
    }

    // FString
    private SetBPStringValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: string): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetStringValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPStringValueFunction", TotalSeconds]);
    }

    private GetBPStringValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetStringValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPStringValueFunction", TotalSeconds]);
    }

    // UEnum
    private SetBPEnumValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.Game.FirstPerson.Blueprints.BP_TestEnum.BP_TestEnum): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetEnumValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPEnumValueFunction", TotalSeconds]);
    }

    private GetBPEnumValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetEnumValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPEnumValueFunction", TotalSeconds]);
    }

    // UStruct
    private SetBPStructValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.Game.FirstPerson.Blueprints.BP_TestStruct.BP_TestStruct): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetStructValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPStructValueFunction", TotalSeconds]);
    }

    private GetBPStructValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetStructValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPStructValueFunction", TotalSeconds]);
    }

    // UObject
    private SetBPObjectValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetObjectValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPObjectValueFunction", TotalSeconds]);
    }

    private GetBPObjectValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetObjectValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPObjectValueFunction", TotalSeconds]);
    }

    // UClass
    private SetBPClassValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.Class): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetClassValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPClassValueFunction", TotalSeconds]);
    }

    private GetBPClassValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetClassValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPClassValueFunction", TotalSeconds]);
    }

    // UInterface
    private SetBPInterfaceValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.Game.FirstPerson.Blueprints.BP_TestInterface.BP_TestInterface_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetInterfaceValueFunction(InValue);
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPInterfaceValueFunction", TotalSeconds]);
    }

    private GetBPInterfaceValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetInterfaceValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPInterfaceValueFunction", TotalSeconds]);
    }

    // TArray
    private SetBPArrayValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.TArray<number>): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetArrayValueFunction($ref(InValue));
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPArrayValueFunction", TotalSeconds]);
    }

    private GetBPArrayValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetArrayValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPArrayValueFunction", TotalSeconds]);
    }

    // TSet
    private SetBPSetValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.TSet<number>): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetSetValueFunction($ref(InValue));
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPSetValueFunction", TotalSeconds]);
    }

    private GetBPSetValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetSetValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPSetValueFunction", TotalSeconds]);
    }

    // TMap
    private SetBPMapValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C, InValue: UE.TMap<number, number>): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            InObject.SetMapValueFunction($ref(InValue));
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["SetBPMapValueFunction", TotalSeconds]);
    }

    private GetBPMapValueFunction(InLoop: number, InObject: UE.Game.FirstPerson.Blueprints.BP_TestActor.BP_TestActor_C): void {
        var Start = UE.KismetMathLibrary.Now();

        for (var i = 0; i < InLoop; i++) {
            var Value = InObject.GetMapValueFunction();
        }

        var End = UE.KismetMathLibrary.Now();

        var TotalSeconds = UE.TestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

        this.Data.push(["GetBPMapValueFunction", TotalSeconds]);
    }

    private Data: [String, number][];

    private Loop: number;
}

export default PuerTSActor;