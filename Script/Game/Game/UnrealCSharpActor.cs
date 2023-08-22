using System;
using System.Collections.Generic;
using System.Text;
using Script.Common;
using Script.CoreUObject;
using Script.Engine;

namespace Script.ScriptPluginCompare
{
    [IsOverride]
    public partial class AUnrealCSharpActor
    {
        [IsOverride]
        public override void ReceiveBeginPlay()
        {
            var UnrealCSharpSubsystem =
                USubsystemBlueprintLibrary.GetGameInstanceSubsystem(this, UUnrealCSharpSubsystem.StaticClass())
                    as UUnrealCSharpSubsystem;

            Loop = UnrealCSharpSubsystem.Loop;

            StartTest();

            ProcessTest();

            EndTest();
        }

        private void StartTest()
        {
            Data = new List<KeyValuePair<string, double>>();
        }

        private void ProcessTest()
        {
            var TestActor = GetWorld().SpawnActor<ATestActor>(new FTransform());

            var TestClass = TestActor.GetClass();

            var TestInterface = TestActor.InterfaceValue;

            var TestStruct = new FTestStruct
            {
                Value = 1
            };

            var TestEnum = ETestEnum.TestEnumOne;

            var TestEnumClass = ETestEnumClass.TestEnumClassOne;

            var TestArray = new TArray<Int32> { 1 };

            var TestSet = new TSet<Int32> { 1 };

            var TestMap = new TMap<Int32, Int32> { { 0, 1 } };

            // Bool
            SetCppBoolValue(Loop, TestActor, true);

            GetCppBoolValue(Loop, TestActor);

            // Int8
            SetCppInt8Value(Loop, TestActor, 1);

            GetCppInt8Value(Loop, TestActor);

            // Int16
            SetCppInt16Value(Loop, TestActor, 1);

            GetCppInt16Value(Loop, TestActor);

            // Int32
            SetCppInt32Value(Loop, TestActor, 1);

            GetCppInt32Value(Loop, TestActor);

            // Int64
            SetCppInt64Value(Loop, TestActor, 1);

            GetCppInt64Value(Loop, TestActor);

            // UInt8
            SetCppUInt8Value(Loop, TestActor, 1);

            GetCppUInt8Value(Loop, TestActor);

            // UInt16
            SetCppUInt16Value(Loop, TestActor, 1);

            GetCppUInt16Value(Loop, TestActor);

            // UInt32
            SetCppUInt32Value(Loop, TestActor, 1);

            GetCppUInt32Value(Loop, TestActor);

            // UInt64
            SetCppUInt64Value(Loop, TestActor, 1);

            GetCppUInt64Value(Loop, TestActor);

            // Float
            SetCppFloatValue(Loop, TestActor, 1.0f);

            GetCppFloatValue(Loop, TestActor);

            // Double
            SetCppDoubleValue(Loop, TestActor, 1.0);

            GetCppDoubleValue(Loop, TestActor);

            // FName
            SetCppNameValue(Loop, TestActor, "Name");

            GetCppNameValue(Loop, TestActor);

            // FText
            SetCppTextValue(Loop, TestActor, "Text");

            GetCppTextValue(Loop, TestActor);

            // FString
            SetCppStringValue(Loop, TestActor, "String");

            GetCppStringValue(Loop, TestActor);

            // UEnum
            SetCppEnumValue(Loop, TestActor, TestEnum);

            GetCppEnumValue(Loop, TestActor);

            // UEnum Class
            SetCppEnumClassValue(Loop, TestActor, TestEnumClass);

            GetCppEnumClassValue(Loop, TestActor);

            // UStruct
            SetCppStructValue(Loop, TestActor, TestStruct);

            GetCppStructValue(Loop, TestActor);

            // UObject
            SetCppObjectValue(Loop, TestActor, TestActor);

            GetCppObjectValue(Loop, TestActor);

            // UClass
            SetCppClassValue(Loop, TestActor, TestClass);

            GetCppClassValue(Loop, TestActor);

            // UInterface
            SetCppInterfaceValue(Loop, TestActor, TestInterface);

            GetCppInterfaceValue(Loop, TestActor);

            // TArray
            SetCppArrayValue(Loop, TestActor, TestArray);

            GetCppArrayValue(Loop, TestActor);

            // TArray Element
            SetCppArrayElement(Loop, TestActor, 0, 1);

            GetCppArrayElement(Loop, TestActor, 0);

            // TSet
            SetCppSetValue(Loop, TestActor, TestSet);

            GetCppSetValue(Loop, TestActor);

            // TMap
            SetCppMapValue(Loop, TestActor, TestMap);

            GetCppMapValue(Loop, TestActor);

            // TMap Element
            SetCppMapElement(Loop, TestActor, 0, 1);

            GetCppMapElement(Loop, TestActor, 0);

            // Empty
            EmptyFunction(Loop);

            // Add
            AddFunction(Loop);

            // Subtract
            SubtractFunction(Loop);

            // Multiply
            MultiplyFunction(Loop);

            // Divide
            DivideFunction(Loop);

            // Static
            StaticCppFunction(Loop);

            // Member
            MemberCppFunction(Loop, TestActor);

            // Bool
            SetCppBoolValueFunction(Loop, TestActor, true);

            GetCppBoolValueFunction(Loop, TestActor);

            // Int8
            SetCppInt8ValueFunction(Loop, TestActor, 1);

            GetCppInt8ValueFunction(Loop, TestActor);

            // Int16
            SetCppInt16ValueFunction(Loop, TestActor, 1);

            GetCppInt16ValueFunction(Loop, TestActor);

            // Int32
            SetCppInt32ValueFunction(Loop, TestActor, 1);

            GetCppInt32ValueFunction(Loop, TestActor);

            // Int64
            SetCppInt64ValueFunction(Loop, TestActor, 1);

            GetCppInt64ValueFunction(Loop, TestActor);

            // UInt8
            SetCppUInt8ValueFunction(Loop, TestActor, 1);

            GetCppUInt8ValueFunction(Loop, TestActor);

            // UInt16
            SetCppUInt16ValueFunction(Loop, TestActor, 1);

            GetCppUInt16ValueFunction(Loop, TestActor);

            // UInt32
            SetCppUInt32ValueFunction(Loop, TestActor, 1);

            GetCppUInt32ValueFunction(Loop, TestActor);

            // UInt64
            SetCppUInt64ValueFunction(Loop, TestActor, 1);

            GetCppUInt64ValueFunction(Loop, TestActor);

            // Float
            SetCppFloatValueFunction(Loop, TestActor, 1.0f);

            GetCppFloatValueFunction(Loop, TestActor);

            // Double
            SetCppDoubleValueFunction(Loop, TestActor, 1.0);

            GetCppDoubleValueFunction(Loop, TestActor);

            // FName
            SetCppNameValueFunction(Loop, TestActor, "Name");

            GetCppNameValueFunction(Loop, TestActor);

            // FText
            SetCppTextValueFunction(Loop, TestActor, "Text");

            GetCppTextValueFunction(Loop, TestActor);

            // FString
            SetCppStringValueFunction(Loop, TestActor, "String");

            GetCppStringValueFunction(Loop, TestActor);

            // UEnum
            SetCppEnumValueFunction(Loop, TestActor, TestEnum);

            GetCppEnumValueFunction(Loop, TestActor);

            // UEnum Class
            SetCppEnumClassValueFunction(Loop, TestActor, TestEnumClass);

            GetCppEnumClassValueFunction(Loop, TestActor);

            // UStruct
            SetCppStructValueFunction(Loop, TestActor, TestStruct);

            GetCppStructValueFunction(Loop, TestActor);

            // UObject
            SetCppObjectValueFunction(Loop, TestActor, TestActor);

            GetCppObjectValueFunction(Loop, TestActor);

            // UClass
            SetCppClassValueFunction(Loop, TestActor, TestClass);

            GetCppClassValueFunction(Loop, TestActor);

            // UInterface
            SetCppInterfaceValueFunction(Loop, TestActor, TestInterface);

            GetCppInterfaceValueFunction(Loop, TestActor);

            // TArray
            SetCppArrayValueFunction(Loop, TestActor, TestArray);

            GetCppArrayValueFunction(Loop, TestActor);

            // TSet
            SetCppSetValueFunction(Loop, TestActor, TestSet);

            GetCppSetValueFunction(Loop, TestActor);

            // TMap
            SetCppMapValueFunction(Loop, TestActor, TestMap);

            GetCppMapValueFunction(Loop, TestActor);
        }

        private void EndTest()
        {
            var Value = new StringBuilder();

            Value.Append("Name, Time\n");

            var Now = UKismetMathLibrary.Now();

            var Year = 0;

            var Month = 0;

            var Day = 0;

            var Hour = 0;

            var Minute = 0;

            var Second = 0;

            var Millisecond = 0;

            UKismetMathLibrary.BreakDateTime(Now, out Year, out Month, out Day, out Hour, out Minute, out Second,
                out Millisecond);

            foreach (var Var in Data)
            {
                Value.Append(Var.Key + ", " + Var.Value + "\n");
            }

            var File = string.Format("UnrealCSharp-{0}-{1}-{2}-{3}-{4}-{5}-{6}-{7}-{8}-{9}.csv",
                UTestCaseBlueprintFunctionLibrary.GetPlatform(),
                UTestCaseBlueprintFunctionLibrary.GetBuildConfiguration(),
                Loop, Year, Month, Day, Hour, Minute, Second, Millisecond);

            UTestCaseBlueprintFunctionLibrary.SaveStringToFile(File, Value.ToString());
        }

        // Bool
        private void SetCppBoolValue(Int32 InLoop, ATestActor InObject, Boolean InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.BoolValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppBoolValue", TotalSeconds));
        }

        private void GetCppBoolValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.BoolValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppBoolValue", TotalSeconds));
        }

        // Int8
        private void SetCppInt8Value(Int32 InLoop, ATestActor InObject, SByte InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.Int8Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppInt8Value", TotalSeconds));
        }

        private void GetCppInt8Value(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.Int8Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppInt8Value", TotalSeconds));
        }

        // Int16
        private void SetCppInt16Value(Int32 InLoop, ATestActor InObject, Int16 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.Int16Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppInt16Value", TotalSeconds));
        }

        private void GetCppInt16Value(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.Int16Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppInt16Value", TotalSeconds));
        }

        // Int32
        private void SetCppInt32Value(Int32 InLoop, ATestActor InObject, Int32 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.Int32Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppInt32Value", TotalSeconds));
        }

        private void GetCppInt32Value(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.Int32Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppInt32Value", TotalSeconds));
        }

        // Int64
        private void SetCppInt64Value(Int32 InLoop, ATestActor InObject, Int64 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.Int64Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppInt64Value", TotalSeconds));
        }

        private void GetCppInt64Value(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.Int64Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppInt64Value", TotalSeconds));
        }

        // UInt8
        private void SetCppUInt8Value(Int32 InLoop, ATestActor InObject, Byte InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.UInt8Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppUInt8Value", TotalSeconds));
        }

        private void GetCppUInt8Value(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.UInt8Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppUInt8Value", TotalSeconds));
        }

        // UInt16
        private void SetCppUInt16Value(Int32 InLoop, ATestActor InObject, UInt16 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.UInt16Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppUInt16Value", TotalSeconds));
        }

        private void GetCppUInt16Value(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.UInt16Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppUInt16Value", TotalSeconds));
        }

        // UInt32
        private void SetCppUInt32Value(Int32 InLoop, ATestActor InObject, UInt32 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.UInt32Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppUInt32Value", TotalSeconds));
        }

        private void GetCppUInt32Value(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.UInt32Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppUInt32Value", TotalSeconds));
        }

        // UInt64
        private void SetCppUInt64Value(Int32 InLoop, ATestActor InObject, UInt64 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.UInt64Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppUInt64Value", TotalSeconds));
        }

        private void GetCppUInt64Value(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.UInt64Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppUInt64Value", TotalSeconds));
        }

        // Float
        private void SetCppFloatValue(Int32 InLoop, ATestActor InObject, Single InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.FloatValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppFloatValue", TotalSeconds));
        }

        private void GetCppFloatValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.FloatValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppFloatValue", TotalSeconds));
        }

        // Double
        private void SetCppDoubleValue(Int32 InLoop, ATestActor InObject, Double InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.DoubleValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppDoubleValue", TotalSeconds));
        }

        private void GetCppDoubleValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.DoubleValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppDoubleValue", TotalSeconds));
        }

        // FName
        private void SetCppNameValue(Int32 InLoop, ATestActor InObject, FName InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.NameValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppNameValue", TotalSeconds));
        }

        private void GetCppNameValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.NameValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppNameValue", TotalSeconds));
        }

        // FText
        private void SetCppTextValue(Int32 InLoop, ATestActor InObject, FText InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.TextValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppTextValue", TotalSeconds));
        }

        private void GetCppTextValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.TextValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppTextValue", TotalSeconds));
        }

        // FString
        private void SetCppStringValue(Int32 InLoop, ATestActor InObject, FString InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.StringValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppStringValue", TotalSeconds));
        }

        private void GetCppStringValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.StringValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppStringValue", TotalSeconds));
        }

        // UEnum
        private void SetCppEnumValue(Int32 InLoop, ATestActor InObject, ETestEnum InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.EnumValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppEnumValue", TotalSeconds));
        }

        private void GetCppEnumValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.EnumValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppEnumValue", TotalSeconds));
        }

        // UEnum Class
        private void SetCppEnumClassValue(Int32 InLoop, ATestActor InObject, ETestEnumClass InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.EnumClassValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppEnumClassValue", TotalSeconds));
        }

        private void GetCppEnumClassValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.EnumClassValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppEnumClassValue", TotalSeconds));
        }

        // UStruct
        private void SetCppStructValue(Int32 InLoop, ATestActor InObject, FTestStruct InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.StructValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppStructValue", TotalSeconds));
        }

        private void GetCppStructValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.StructValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppStructValue", TotalSeconds));
        }

        // UObject
        private void SetCppObjectValue(Int32 InLoop, ATestActor InObject, ATestActor InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.ObjectValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppObjectValue", TotalSeconds));
        }

        private void GetCppObjectValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.ObjectValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppObjectValue", TotalSeconds));
        }

        // UClass
        private void SetCppClassValue(Int32 InLoop, ATestActor InObject, TSubclassOf<UObject> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.ClassValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppClassValue", TotalSeconds));
        }

        private void GetCppClassValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.ClassValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppClassValue", TotalSeconds));
        }

        // UInterface 
        private void SetCppInterfaceValue(Int32 InLoop, ATestActor InObject, TScriptInterface<ITestInterface> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.InterfaceValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppInterfaceValue", TotalSeconds));
        }

        private void GetCppInterfaceValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.InterfaceValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppInterfaceValue", TotalSeconds));
        }

        // TArray
        private void SetCppArrayValue(Int32 InLoop, ATestActor InObject, TArray<Int32> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.ArrayValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppArrayValue", TotalSeconds));
        }

        private void GetCppArrayValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.ArrayValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppArrayValue", TotalSeconds));
        }

        // TArray Element
        private void SetCppArrayElement(Int32 InLoop, ATestActor InObject, Int32 InIndex, Int32 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.ArrayValue[InIndex] = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppArrayElement", TotalSeconds));
        }

        private void GetCppArrayElement(Int32 InLoop, ATestActor InObject, Int32 InIndex)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.ArrayValue[InIndex];
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppArrayElement", TotalSeconds));
        }

        // TSet
        private void SetCppSetValue(Int32 InLoop, ATestActor InObject, TSet<Int32> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppSetValue", TotalSeconds));
        }

        private void GetCppSetValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.SetValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppSetValue", TotalSeconds));
        }

        // TMap
        private void SetCppMapValue(Int32 InLoop, ATestActor InObject, TMap<Int32, Int32> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.MapValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppMapValue", TotalSeconds));
        }

        private void GetCppMapValue(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.MapValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppMapValue", TotalSeconds));
        }

        // TMap Element
        private void SetCppMapElement(Int32 InLoop, ATestActor InObject, Int32 InIndex, Int32 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.MapValue[InIndex] = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppMapElement", TotalSeconds));
        }

        private void GetCppMapElement(Int32 InLoop, ATestActor InObject, Int32 InIndex)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.MapValue[InIndex];
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppMapElement", TotalSeconds));
        }

        private void Empty()
        {
        }

        // Empty
        private void EmptyFunction(Int32 InLoop)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                Empty();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("EmptyFunction", TotalSeconds));
        }

        private void Add(Int32 A, Int32 B)
        {
            var Value = A + B;
        }

        // Add
        private void AddFunction(Int32 InLoop)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                Add(1, 1);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("AddFunction", TotalSeconds));
        }

        private void Subtract(Int32 A, Int32 B)
        {
            var Value = A - B;
        }

        // Subtract
        private void SubtractFunction(Int32 InLoop)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                Subtract(1, 1);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SubtractFunction", TotalSeconds));
        }

        private void Multiply(Int32 A, Int32 B)
        {
            var Value = A * B;
        }

        // Multiply
        private void MultiplyFunction(Int32 InLoop)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                Multiply(1, 1);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("MultiplyFunction", TotalSeconds));
        }

        private void Divide(Int32 A, Int32 B)
        {
            var Value = A / B;
        }

        // Divide
        private void DivideFunction(Int32 InLoop)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                Divide(1, 1);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("DivideFunction", TotalSeconds));
        }

        // Static
        private void StaticCppFunction(Int32 InLoop)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                ATestActor.StaticFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("StaticCppFunction", TotalSeconds));
        }

        // Member
        private void MemberCppFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.MemberFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("MemberCppFunction", TotalSeconds));
        }

        // Bool
        private void SetCppBoolValueFunction(Int32 InLoop, ATestActor InObject, Boolean InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetBoolValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppBoolValueFunction", TotalSeconds));
        }

        private void GetCppBoolValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetBoolValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppBoolValueFunction", TotalSeconds));
        }

        // Int8
        private void SetCppInt8ValueFunction(Int32 InLoop, ATestActor InObject, SByte InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetInt8ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppInt8ValueFunction", TotalSeconds));
        }

        private void GetCppInt8ValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetInt8ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppInt8ValueFunction", TotalSeconds));
        }

        // Int16
        private void SetCppInt16ValueFunction(Int32 InLoop, ATestActor InObject, Int16 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetInt16ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppInt16ValueFunction", TotalSeconds));
        }

        private void GetCppInt16ValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetUInt16ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppInt16ValueFunction", TotalSeconds));
        }

        // Int32
        private void SetCppInt32ValueFunction(Int32 InLoop, ATestActor InObject, Int32 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetInt32ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppInt32ValueFunction", TotalSeconds));
        }

        private void GetCppInt32ValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetInt32ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppInt32ValueFunction", TotalSeconds));
        }

        // Int64
        private void SetCppInt64ValueFunction(Int32 InLoop, ATestActor InObject, Int64 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetInt64ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppInt64ValueFunction", TotalSeconds));
        }

        private void GetCppInt64ValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetInt64ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppInt64ValueFunction", TotalSeconds));
        }

        // UInt8
        private void SetCppUInt8ValueFunction(Int32 InLoop, ATestActor InObject, Byte InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetUInt8ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppUInt8ValueFunction", TotalSeconds));
        }

        private void GetCppUInt8ValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetUInt8ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppUInt8ValueFunction", TotalSeconds));
        }

        // UInt16
        private void SetCppUInt16ValueFunction(Int32 InLoop, ATestActor InObject, UInt16 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetUInt16ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppUInt16ValueFunction", TotalSeconds));
        }

        private void GetCppUInt16ValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetUInt16ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppUInt16ValueFunction", TotalSeconds));
        }

        // UInt32
        private void SetCppUInt32ValueFunction(Int32 InLoop, ATestActor InObject, UInt32 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetUInt32ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppUInt32ValueFunction", TotalSeconds));
        }

        private void GetCppUInt32ValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetUInt32ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppUInt32ValueFunction", TotalSeconds));
        }

        // UInt64
        private void SetCppUInt64ValueFunction(Int32 InLoop, ATestActor InObject, UInt64 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetUInt64ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppUInt64ValueFunction", TotalSeconds));
        }

        private void GetCppUInt64ValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetUInt64ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppUInt64ValueFunction", TotalSeconds));
        }

        // Float
        private void SetCppFloatValueFunction(Int32 InLoop, ATestActor InObject, Single InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetFloatValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppFloatValueFunction", TotalSeconds));
        }

        private void GetCppFloatValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetFloatValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppFloatValueFunction", TotalSeconds));
        }

        // Double
        private void SetCppDoubleValueFunction(Int32 InLoop, ATestActor InObject, Double InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetDoubleValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppDoubleValueFunction", TotalSeconds));
        }

        private void GetCppDoubleValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetDoubleValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppDoubleValueFunction", TotalSeconds));
        }

        // FName
        private void SetCppNameValueFunction(Int32 InLoop, ATestActor InObject, FName InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetNameValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppNameValueFunction", TotalSeconds));
        }

        private void GetCppNameValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetNameValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppNameValueFunction", TotalSeconds));
        }

        // FText
        private void SetCppTextValueFunction(Int32 InLoop, ATestActor InObject, FText InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetTextValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppTextValueFunction", TotalSeconds));
        }

        private void GetCppTextValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetTextValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppTextValueFunction", TotalSeconds));
        }

        // FString
        private void SetCppStringValueFunction(Int32 InLoop, ATestActor InObject, FString InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetStringValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppStringValueFunction", TotalSeconds));
        }

        private void GetCppStringValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetStringValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppStringValueFunction", TotalSeconds));
        }

        // UEnum
        private void SetCppEnumValueFunction(Int32 InLoop, ATestActor InObject, ETestEnum InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetEnumValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppEnumValueFunction", TotalSeconds));
        }

        private void GetCppEnumValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetEnumValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppEnumValueFunction", TotalSeconds));
        }

        // UEnum Class
        private void SetCppEnumClassValueFunction(Int32 InLoop, ATestActor InObject, ETestEnumClass InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetEnumClassValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppEnumClassValueFunction", TotalSeconds));
        }

        private void GetCppEnumClassValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetEnumClassValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppEnumClassValueFunction", TotalSeconds));
        }

        // UStruct
        private void SetCppStructValueFunction(Int32 InLoop, ATestActor InObject, FTestStruct InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetStructValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppStructValueFunction", TotalSeconds));
        }

        private void GetCppStructValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetStructValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppStructValueFunction", TotalSeconds));
        }

        // UObject
        private void SetCppObjectValueFunction(Int32 InLoop, ATestActor InObject, ATestActor InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetObjectValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppObjectValueFunction", TotalSeconds));
        }

        private void GetCppObjectValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetObjectValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppObjectValueFunction", TotalSeconds));
        }

        // UClass
        private void SetCppClassValueFunction(Int32 InLoop, ATestActor InObject, TSubclassOf<UObject> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetClassValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppClassValueFunction", TotalSeconds));
        }

        private void GetCppClassValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetClassValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppClassValueFunction", TotalSeconds));
        }

        // UInterface 
        private void SetCppInterfaceValueFunction(Int32 InLoop, ATestActor InObject,
            TScriptInterface<ITestInterface> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetInterfaceValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppInterfaceValueFunction", TotalSeconds));
        }

        private void GetCppInterfaceValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetInterfaceValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppInterfaceValueFunction", TotalSeconds));
        }

        // TArray
        private void SetCppArrayValueFunction(Int32 InLoop, ATestActor InObject, TArray<Int32> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetArrayValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppArrayValueFunction", TotalSeconds));
        }

        private void GetCppArrayValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetArrayValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppArrayValueFunction", TotalSeconds));
        }

        // TSet
        private void SetCppSetValueFunction(Int32 InLoop, ATestActor InObject, TSet<Int32> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetSetValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppSetValueFunction", TotalSeconds));
        }

        private void GetCppSetValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetSetValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppSetValueFunction", TotalSeconds));
        }

        // TMap
        private void SetCppMapValueFunction(Int32 InLoop, ATestActor InObject, TMap<Int32, Int32> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InObject.SetMapValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetCppMapValueFunction", TotalSeconds));
        }

        private void GetCppMapValueFunction(Int32 InLoop, ATestActor InObject)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InObject.GetMapValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetCppMapValueFunction", TotalSeconds));
        }

        private List<KeyValuePair<string, double>> Data;

        private Int32 Loop;
    }
}