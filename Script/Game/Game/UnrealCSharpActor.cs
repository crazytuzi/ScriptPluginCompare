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
            SetBoolValue(Loop, TestActor, true);

            GetBoolValue(Loop, TestActor);

            // Int8
            SetInt8Value(Loop, TestActor, 1);

            GetInt8Value(Loop, TestActor);

            // Int16
            SetInt16Value(Loop, TestActor, 1);

            GetInt16Value(Loop, TestActor);

            // Int32
            SetInt32Value(Loop, TestActor, 1);

            GetInt32Value(Loop, TestActor);

            // Int64
            SetInt64Value(Loop, TestActor, 1);

            GetInt64Value(Loop, TestActor);

            // UInt8
            SetUInt8Value(Loop, TestActor, 1);

            GetUInt8Value(Loop, TestActor);

            // UInt16
            SetUInt16Value(Loop, TestActor, 1);

            GetUInt16Value(Loop, TestActor);

            // UInt32
            SetUInt32Value(Loop, TestActor, 1);

            GetUInt32Value(Loop, TestActor);

            // UInt64
            SetUInt64Value(Loop, TestActor, 1);

            GetUInt64Value(Loop, TestActor);

            // Float
            SetFloatValue(Loop, TestActor, 1.0f);

            GetFloatValue(Loop, TestActor);

            // Double
            SetDoubleValue(Loop, TestActor, 1.0);

            GetDoubleValue(Loop, TestActor);

            // FName
            SetNameValue(Loop, TestActor, "Name");

            GetNameValue(Loop, TestActor);

            // FText
            SetTextValue(Loop, TestActor, "Text");

            GetTextValue(Loop, TestActor);

            // FString
            SetStringValue(Loop, TestActor, "String");

            GetStringValue(Loop, TestActor);

            // UEnum
            SetEnumValue(Loop, TestActor, TestEnum);

            GetEnumValue(Loop, TestActor);

            // UEnum Class
            SetEnumClassValue(Loop, TestActor, TestEnumClass);

            GetEnumClassValue(Loop, TestActor);

            // UStruct
            SetStructValue(Loop, TestActor, TestStruct);

            GetStructValue(Loop, TestActor);

            // UObject
            SetObjectValue(Loop, TestActor, TestActor);

            GetObjectValue(Loop, TestActor);

            // UClass
            SetClassValue(Loop, TestActor, TestClass);

            GetClassValue(Loop, TestActor);

            // UInterface
            SetInterfaceValue(Loop, TestActor, TestInterface);

            GetInterfaceValue(Loop, TestActor);

            // TArray
            SetArrayValue(Loop, TestActor, TestArray);

            GetArrayValue(Loop, TestActor);

            // TArray Element
            SetArrayElement(Loop, TestActor, 0, 1);

            GetArrayElement(Loop, TestActor, 0);

            // TSet
            SetSetValue(Loop, TestActor, TestSet);

            GetSetValue(Loop, TestActor);

            // TMap
            SetMapValue(Loop, TestActor, TestMap);

            GetMapValue(Loop, TestActor);

            // TMap Element
            SetMapElement(Loop, TestActor, 0, 1);

            GetMapElement(Loop, TestActor, 0);

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
            StaticFunction(Loop);

            // Member
            MemberFunction(Loop, TestActor);

            // Bool
            SetBoolValueFunction(Loop, TestActor, true);

            GetBoolValueFunction(Loop, TestActor);

            // Int8
            SetInt8ValueFunction(Loop, TestActor, 1);

            GetInt8ValueFunction(Loop, TestActor);

            // Int16
            SetInt16ValueFunction(Loop, TestActor, 1);

            GetInt16ValueFunction(Loop, TestActor);

            // Int32
            SetInt32ValueFunction(Loop, TestActor, 1);

            GetInt32ValueFunction(Loop, TestActor);

            // Int64
            SetInt64ValueFunction(Loop, TestActor, 1);

            GetInt64ValueFunction(Loop, TestActor);

            // UInt8
            SetUInt8ValueFunction(Loop, TestActor, 1);

            GetUInt8ValueFunction(Loop, TestActor);

            // UInt16
            SetUInt16ValueFunction(Loop, TestActor, 1);

            GetUInt16ValueFunction(Loop, TestActor);

            // UInt32
            SetUInt32ValueFunction(Loop, TestActor, 1);

            GetUInt32ValueFunction(Loop, TestActor);

            // UInt64
            SetUInt64ValueFunction(Loop, TestActor, 1);

            GetUInt64ValueFunction(Loop, TestActor);

            // Float
            SetFloatValueFunction(Loop, TestActor, 1.0f);

            GetFloatValueFunction(Loop, TestActor);

            // Double
            SetDoubleValueFunction(Loop, TestActor, 1.0);

            GetDoubleValueFunction(Loop, TestActor);

            // FName
            SetNameValueFunction(Loop, TestActor, "Name");

            GetNameValueFunction(Loop, TestActor);

            // FText
            SetTextValueFunction(Loop, TestActor, "Text");

            GetTextValueFunction(Loop, TestActor);

            // FString
            SetStringValueFunction(Loop, TestActor, "String");

            GetStringValueFunction(Loop, TestActor);

            // UEnum
            SetEnumValueFunction(Loop, TestActor, TestEnum);

            GetEnumValueFunction(Loop, TestActor);

            // UEnum Class
            SetEnumClassValueFunction(Loop, TestActor, TestEnumClass);

            GetEnumClassValueFunction(Loop, TestActor);

            // UStruct
            SetStructValueFunction(Loop, TestActor, TestStruct);

            GetStructValueFunction(Loop, TestActor);

            // UObject
            SetObjectValueFunction(Loop, TestActor, TestActor);

            GetObjectValueFunction(Loop, TestActor);

            // UClass
            SetClassValueFunction(Loop, TestActor, TestClass);

            GetClassValueFunction(Loop, TestActor);

            // UInterface
            SetInterfaceValueFunction(Loop, TestActor, TestInterface);

            GetInterfaceValueFunction(Loop, TestActor);

            // TArray
            SetArrayValueFunction(Loop, TestActor, TestArray);

            GetArrayValueFunction(Loop, TestActor);

            // TSet
            SetSetValueFunction(Loop, TestActor, TestSet);

            GetSetValueFunction(Loop, TestActor);

            // TMap
            SetMapValueFunction(Loop, TestActor, TestMap);

            GetMapValueFunction(Loop, TestActor);
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
        private void SetBoolValue(Int32 InLoop, ATestActor InTestActor, Boolean InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.BoolValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetBoolValue", TotalSeconds));
        }

        private void GetBoolValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.BoolValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetBoolValue", TotalSeconds));
        }

        // Int8
        private void SetInt8Value(Int32 InLoop, ATestActor InTestActor, SByte InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.Int8Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetInt8Value", TotalSeconds));
        }

        private void GetInt8Value(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.Int8Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetInt8Value", TotalSeconds));
        }

        // Int16
        private void SetInt16Value(Int32 InLoop, ATestActor InTestActor, Int16 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.Int16Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetInt16Value", TotalSeconds));
        }

        private void GetInt16Value(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.Int16Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetInt16Value", TotalSeconds));
        }

        // Int32
        private void SetInt32Value(Int32 InLoop, ATestActor InTestActor, Int32 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.Int32Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetInt32Value", TotalSeconds));
        }

        private void GetInt32Value(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.Int32Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetInt32Value", TotalSeconds));
        }

        // Int64
        private void SetInt64Value(Int32 InLoop, ATestActor InTestActor, Int64 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.Int64Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetInt64Value", TotalSeconds));
        }

        private void GetInt64Value(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.Int64Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetInt64Value", TotalSeconds));
        }

        // UInt8
        private void SetUInt8Value(Int32 InLoop, ATestActor InTestActor, Byte InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.UInt8Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetUInt8Value", TotalSeconds));
        }

        private void GetUInt8Value(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.UInt8Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetUInt8Value", TotalSeconds));
        }

        // UInt16
        private void SetUInt16Value(Int32 InLoop, ATestActor InTestActor, UInt16 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.UInt16Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetUInt16Value", TotalSeconds));
        }

        private void GetUInt16Value(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.UInt16Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetUInt16Value", TotalSeconds));
        }

        // UInt32
        private void SetUInt32Value(Int32 InLoop, ATestActor InTestActor, UInt32 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.UInt32Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetUInt32Value", TotalSeconds));
        }

        private void GetUInt32Value(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.UInt32Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetUInt32Value", TotalSeconds));
        }

        // UInt64
        private void SetUInt64Value(Int32 InLoop, ATestActor InTestActor, UInt64 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.UInt64Value = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetUInt64Value", TotalSeconds));
        }

        private void GetUInt64Value(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.UInt64Value;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetUInt64Value", TotalSeconds));
        }

        // Float
        private void SetFloatValue(Int32 InLoop, ATestActor InTestActor, Single InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.FloatValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetFloatValue", TotalSeconds));
        }

        private void GetFloatValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.FloatValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetFloatValue", TotalSeconds));
        }

        // Double
        private void SetDoubleValue(Int32 InLoop, ATestActor InTestActor, Double InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.DoubleValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetDoubleValue", TotalSeconds));
        }

        private void GetDoubleValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.DoubleValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetDoubleValue", TotalSeconds));
        }

        // FName
        private void SetNameValue(Int32 InLoop, ATestActor InTestActor, FName InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.NameValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetNameValue", TotalSeconds));
        }

        private void GetNameValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.NameValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetNameValue", TotalSeconds));
        }

        // FText
        private void SetTextValue(Int32 InLoop, ATestActor InTestActor, FText InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.TextValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetTextValue", TotalSeconds));
        }

        private void GetTextValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.TextValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetTextValue", TotalSeconds));
        }

        // FString
        private void SetStringValue(Int32 InLoop, ATestActor InTestActor, FString InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.StringValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetStringValue", TotalSeconds));
        }

        private void GetStringValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.StringValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetStringValue", TotalSeconds));
        }

        // UEnum
        private void SetEnumValue(Int32 InLoop, ATestActor InTestActor, ETestEnum InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.EnumValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetEnumValue", TotalSeconds));
        }

        private void GetEnumValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.EnumValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetEnumValue", TotalSeconds));
        }

        // UEnum Class
        private void SetEnumClassValue(Int32 InLoop, ATestActor InTestActor, ETestEnumClass InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.EnumClassValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetEnumClassValue", TotalSeconds));
        }

        private void GetEnumClassValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.EnumClassValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetEnumClassValue", TotalSeconds));
        }

        // UStruct
        private void SetStructValue(Int32 InLoop, ATestActor InTestActor, FTestStruct InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.StructValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetStructValue", TotalSeconds));
        }

        private void GetStructValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.StructValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetStructValue", TotalSeconds));
        }

        // UObject
        private void SetObjectValue(Int32 InLoop, ATestActor InTestActor, ATestActor InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.ObjectValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetObjectValue", TotalSeconds));
        }

        private void GetObjectValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.ObjectValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetObjectValue", TotalSeconds));
        }

        // UClass
        private void SetClassValue(Int32 InLoop, ATestActor InTestActor, TSubclassOf<UObject> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.ClassValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetClassValue", TotalSeconds));
        }

        private void GetClassValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.ClassValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetClassValue", TotalSeconds));
        }

        // UInterface 
        private void SetInterfaceValue(Int32 InLoop, ATestActor InTestActor, TScriptInterface<ITestInterface> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.InterfaceValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetInterfaceValue", TotalSeconds));
        }

        private void GetInterfaceValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.InterfaceValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetInterfaceValue", TotalSeconds));
        }

        // TArray
        private void SetArrayValue(Int32 InLoop, ATestActor InTestActor, TArray<Int32> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.ArrayValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetArrayValue", TotalSeconds));
        }

        private void GetArrayValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.ArrayValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetArrayValue", TotalSeconds));
        }

        // TArray Element
        private void SetArrayElement(Int32 InLoop, ATestActor InTestActor, Int32 InIndex, Int32 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.ArrayValue[InIndex] = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetArrayElement", TotalSeconds));
        }

        private void GetArrayElement(Int32 InLoop, ATestActor InTestActor, Int32 InIndex)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.ArrayValue[InIndex];
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetArrayElement", TotalSeconds));
        }

        // TSet
        private void SetSetValue(Int32 InLoop, ATestActor InTestActor, TSet<Int32> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetSetValue", TotalSeconds));
        }

        private void GetSetValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.SetValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetSetValue", TotalSeconds));
        }

        // TMap
        private void SetMapValue(Int32 InLoop, ATestActor InTestActor, TMap<Int32, Int32> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.MapValue = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetMapValue", TotalSeconds));
        }

        private void GetMapValue(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.MapValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetMapValue", TotalSeconds));
        }

        // TMap Element
        private void SetMapElement(Int32 InLoop, ATestActor InTestActor, Int32 InIndex, Int32 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.MapValue[InIndex] = InValue;
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetMapElement", TotalSeconds));
        }

        private void GetMapElement(Int32 InLoop, ATestActor InTestActor, Int32 InIndex)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.MapValue[InIndex];
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetMapElement", TotalSeconds));
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
        private void StaticFunction(Int32 InLoop)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                ATestActor.StaticFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("StaticFunction", TotalSeconds));
        }

        // Member
        private void MemberFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.MemberFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("MemberFunction", TotalSeconds));
        }

        // Bool
        private void SetBoolValueFunction(Int32 InLoop, ATestActor InTestActor, Boolean InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetBoolValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetBoolValueFunction", TotalSeconds));
        }

        private void GetBoolValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetBoolValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetBoolValueFunction", TotalSeconds));
        }

        // Int8
        private void SetInt8ValueFunction(Int32 InLoop, ATestActor InTestActor, SByte InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetInt8ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetInt8ValueFunction", TotalSeconds));
        }

        private void GetInt8ValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetInt8ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetInt8ValueFunction", TotalSeconds));
        }

        // Int16
        private void SetInt16ValueFunction(Int32 InLoop, ATestActor InTestActor, Int16 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetInt16ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetInt16ValueFunction", TotalSeconds));
        }

        private void GetInt16ValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetUInt16ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetInt16ValueFunction", TotalSeconds));
        }

        // Int32
        private void SetInt32ValueFunction(Int32 InLoop, ATestActor InTestActor, Int32 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetInt32ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetInt32ValueFunction", TotalSeconds));
        }

        private void GetInt32ValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetInt32ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetInt32ValueFunction", TotalSeconds));
        }

        // Int64
        private void SetInt64ValueFunction(Int32 InLoop, ATestActor InTestActor, Int64 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetInt64ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetInt64ValueFunction", TotalSeconds));
        }

        private void GetInt64ValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetInt64ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetInt64ValueFunction", TotalSeconds));
        }

        // UInt8
        private void SetUInt8ValueFunction(Int32 InLoop, ATestActor InTestActor, Byte InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetUInt8ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetUInt8ValueFunction", TotalSeconds));
        }

        private void GetUInt8ValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetUInt8ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetUInt8ValueFunction", TotalSeconds));
        }

        // UInt16
        private void SetUInt16ValueFunction(Int32 InLoop, ATestActor InTestActor, UInt16 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetUInt16ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetUInt16ValueFunction", TotalSeconds));
        }

        private void GetUInt16ValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetUInt16ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetUInt16ValueFunction", TotalSeconds));
        }

        // UInt32
        private void SetUInt32ValueFunction(Int32 InLoop, ATestActor InTestActor, UInt32 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetUInt32ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetUInt32ValueFunction", TotalSeconds));
        }

        private void GetUInt32ValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetUInt32ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetUInt32ValueFunction", TotalSeconds));
        }

        // UInt64
        private void SetUInt64ValueFunction(Int32 InLoop, ATestActor InTestActor, UInt64 InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetUInt64ValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetUInt64ValueFunction", TotalSeconds));
        }

        private void GetUInt64ValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetUInt64ValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetUInt64ValueFunction", TotalSeconds));
        }

        // Float
        private void SetFloatValueFunction(Int32 InLoop, ATestActor InTestActor, Single InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetFloatValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetFloatValueFunction", TotalSeconds));
        }

        private void GetFloatValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetFloatValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetFloatValueFunction", TotalSeconds));
        }

        // Double
        private void SetDoubleValueFunction(Int32 InLoop, ATestActor InTestActor, Double InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetDoubleValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetDoubleValueFunction", TotalSeconds));
        }

        private void GetDoubleValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetDoubleValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetDoubleValueFunction", TotalSeconds));
        }

        // FName
        private void SetNameValueFunction(Int32 InLoop, ATestActor InTestActor, FName InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetNameValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetNameValueFunction", TotalSeconds));
        }

        private void GetNameValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetNameValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetNameValueFunction", TotalSeconds));
        }

        // FText
        private void SetTextValueFunction(Int32 InLoop, ATestActor InTestActor, FText InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetTextValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetTextValueFunction", TotalSeconds));
        }

        private void GetTextValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetTextValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetTextValueFunction", TotalSeconds));
        }

        // FString
        private void SetStringValueFunction(Int32 InLoop, ATestActor InTestActor, FString InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetStringValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetStringValueFunction", TotalSeconds));
        }

        private void GetStringValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetStringValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetStringValueFunction", TotalSeconds));
        }

        // UEnum
        private void SetEnumValueFunction(Int32 InLoop, ATestActor InTestActor, ETestEnum InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetEnumValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetEnumValueFunction", TotalSeconds));
        }

        private void GetEnumValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetEnumValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetEnumValueFunction", TotalSeconds));
        }

        // UEnum Class
        private void SetEnumClassValueFunction(Int32 InLoop, ATestActor InTestActor, ETestEnumClass InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetEnumClassValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetEnumClassValueFunction", TotalSeconds));
        }

        private void GetEnumClassValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetEnumClassValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetEnumClassValueFunction", TotalSeconds));
        }

        // UStruct
        private void SetStructValueFunction(Int32 InLoop, ATestActor InTestActor, FTestStruct InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetStructValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetStructValueFunction", TotalSeconds));
        }

        private void GetStructValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetStructValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetStructValueFunction", TotalSeconds));
        }

        // UObject
        private void SetObjectValueFunction(Int32 InLoop, ATestActor InTestActor, ATestActor InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetObjectValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetObjectValueFunction", TotalSeconds));
        }

        private void GetObjectValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetObjectValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetObjectValueFunction", TotalSeconds));
        }

        // UClass
        private void SetClassValueFunction(Int32 InLoop, ATestActor InTestActor, TSubclassOf<UObject> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetClassValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetClassValueFunction", TotalSeconds));
        }

        private void GetClassValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetClassValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetClassValueFunction", TotalSeconds));
        }

        // UInterface 
        private void SetInterfaceValueFunction(Int32 InLoop, ATestActor InTestActor,
            TScriptInterface<ITestInterface> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetInterfaceValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetInterfaceValueFunction", TotalSeconds));
        }

        private void GetInterfaceValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetInterfaceValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetInterfaceValueFunction", TotalSeconds));
        }

        // TArray
        private void SetArrayValueFunction(Int32 InLoop, ATestActor InTestActor, TArray<Int32> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetArrayValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetArrayValueFunction", TotalSeconds));
        }

        private void GetArrayValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetArrayValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetArrayValueFunction", TotalSeconds));
        }

        // TSet
        private void SetSetValueFunction(Int32 InLoop, ATestActor InTestActor, TSet<Int32> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetSetValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetSetValueFunction", TotalSeconds));
        }

        private void GetSetValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetSetValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetSetValueFunction", TotalSeconds));
        }

        // TMap
        private void SetMapValueFunction(Int32 InLoop, ATestActor InTestActor, TMap<Int32, Int32> InValue)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                InTestActor.SetMapValueFunction(InValue);
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("SetMapValueFunction", TotalSeconds));
        }

        private void GetMapValueFunction(Int32 InLoop, ATestActor InTestActor)
        {
            var Start = UKismetMathLibrary.Now();

            for (var i = 0; i < InLoop; i++)
            {
                var Value = InTestActor.GetMapValueFunction();
            }

            var End = UKismetMathLibrary.Now();

            var TotalSeconds = UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

            Data.Add(new KeyValuePair<string, double>("GetMapValueFunction", TotalSeconds));
        }

        private List<KeyValuePair<string, double>> Data;

        private Int32 Loop;
    }
}