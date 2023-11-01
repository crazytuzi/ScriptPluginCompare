// Fill out your copyright notice in the Description page of Project Settings.


#include "Cpp/CppActor.h"
#include "Cpp/CppSubsystem.h"
#include "Engine/UserDefinedEnum.h"
#include "Engine/UserDefinedStruct.h"
#include "Kismet/KismetMathLibrary.h"
#include "Subsystems/SubsystemBlueprintLibrary.h"
#include "TestCase/TestCaseBlueprintFunctionLibrary.h"

// Sets default values
ACppActor::ACppActor()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;
}

// Called when the game starts or when spawned
void ACppActor::BeginPlay()
{
	Super::BeginPlay();

	if (const auto CppSubsystem = Cast<UCppSubsystem>(
		USubsystemBlueprintLibrary::GetGameInstanceSubsystem(GetWorld(), UCppSubsystem::StaticClass())))
	{
		Loop = CppSubsystem->Loop;
	}

	StartTest();

	ProcessTest();

	EndTest();
}

// Called every frame
void ACppActor::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}

void ACppActor::StartTest()
{
	Data.Empty();
}

void ACppActor::TestSelf()
{
	EmptyFunction(Loop);

	AddFunction(Loop);

	SubtractFunction(Loop);

	MultiplyFunction(Loop);

	DivideFunction(Loop);
}

void ACppActor::TestCpp()
{
	const auto TestActor = GetWorld()->SpawnActor<ATestActor>();

	const auto TestClass = TestActor->GetClass();

	const auto TestInterface = TestActor->InterfaceValue;

	constexpr auto TestStruct = FTestStruct{1};

	constexpr auto TestEnum = ETestEnum::TestEnumOne;

	constexpr auto TestEnumClass = ETestEnumClass::TestEnumClassOne;

	const auto TestArray = TArray<int32>{1};

	const auto TestSet = TSet<int32>{1};

	const auto TestMap = TMap<int32, int32>{{0, 1}};

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
	SetCppNameValue(Loop, TestActor, FName(TEXT("Name")));

	GetCppNameValue(Loop, TestActor);

	// FText
	SetCppTextValue(Loop, TestActor, FText::FromString(TEXT("Text")));

	GetCppTextValue(Loop, TestActor);

	// FString
	SetCppStringValue(Loop, TestActor, FString(TEXT("String")));

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
	SetCppNameValueFunction(Loop, TestActor, FName(TEXT("Name")));

	GetCppNameValueFunction(Loop, TestActor);

	// FText
	SetCppTextValueFunction(Loop, TestActor, FText::FromString(TEXT("Text")));

	GetCppTextValueFunction(Loop, TestActor);

	// FString
	SetCppStringValueFunction(Loop, TestActor, FString(TEXT("String")));

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

void ACppActor::TestBP()
{
	const auto TestActor = GetWorld()->SpawnActor<AActor>(
		LoadObject<UClass>(this, TEXT("/Game/FirstPerson/Blueprints/BP_TestActor.BP_TestActor_C")));

	const auto TestClass = TestActor->GetClass();

	TScriptInterface<IInterface> TestInterface;

	const auto InterfaceValueProperty = CastField<FInterfaceProperty>(
		TestClass->FindPropertyByName(TEXT("InterfaceValue")));

	TestInterface.SetObject(TestActor);

	TestInterface.SetInterface(
		static_cast<IInterface*>(TestActor->GetInterfaceAddress(InterfaceValueProperty->InterfaceClass)));

	const auto ScriptStruct = LoadObject<UUserDefinedStruct>(
		this, TEXT("/Game/FirstPerson/Blueprints/BP_TestStruct.BP_TestStruct"));

	const auto StructureSize = ScriptStruct->GetStructureSize();

	const auto TestStruct = static_cast<void*>(static_cast<uint8*>(FMemory::Malloc(StructureSize)));

	ScriptStruct->InitializeStruct(TestStruct);

	constexpr auto Value = 1;

	for (const auto* Property = ScriptStruct->PropertyLink; Property != nullptr; Property = Property->PropertyLinkNext)
	{
		if (Property->GetName().Contains(TEXT("Value")))
		{
			Property->CopySingleValue(Property->ContainerPtrToValuePtr<void>(TestStruct), &Value);

			break;
		}
	}

	const auto Enum = LoadObject<UUserDefinedEnum>(this, TEXT("/Game/FirstPerson/Blueprints/BP_TestEnum.BP_TestEnum"));

	uint8 TestEnum = 0;

	for (const auto& DisplayName : Enum->DisplayNameMap)
	{
		if (DisplayName.Value.ToString() == TEXT("TestEnumOne"))
		{
			TestEnum = static_cast<uint8>(Enum->GetValueByName(DisplayName.Key));

			break;
		}
	}

	const auto TestArray = TArray<int32>{1};

	const auto TestSet = TSet<int32>{1};

	const auto TestMap = TMap<int32, int32>{{0, 1}};

	// Bool
	SetBPBoolValue(Loop, TestActor, true);

	GetBPBoolValue(Loop, TestActor);

	// Int32
	SetBPInt32Value(Loop, TestActor, 1);

	GetBPInt32Value(Loop, TestActor);

	// Int64
	SetBPInt64Value(Loop, TestActor, 1);

	GetBPInt64Value(Loop, TestActor);

	// UInt8
	SetBPUInt8Value(Loop, TestActor, 1);

	GetBPUInt8Value(Loop, TestActor);

	// Double
	SetBPDoubleValue(Loop, TestActor, 1.0);

	GetBPDoubleValue(Loop, TestActor);

	// FName
	SetBPNameValue(Loop, TestActor, FName(TEXT("Name")));

	GetBPNameValue(Loop, TestActor);

	// FText
	SetBPTextValue(Loop, TestActor, FText::FromString(TEXT("Text")));

	GetBPTextValue(Loop, TestActor);

	// FString
	SetBPStringValue(Loop, TestActor, FString(TEXT("String")));

	GetBPStringValue(Loop, TestActor);

	// UEnum
	SetBPEnumValue(Loop, TestActor, TestEnum);

	GetBPEnumValue(Loop, TestActor);

	// UStruct
	SetBPStructValue(Loop, TestActor, TestStruct);

	GetBPStructValue(Loop, TestActor);

	// UObject
	SetBPObjectValue(Loop, TestActor, TestActor);

	GetBPObjectValue(Loop, TestActor);

	// UClass
	SetBPClassValue(Loop, TestActor, TestClass);

	GetBPClassValue(Loop, TestActor);

	// UInterface
	SetBPInterfaceValue(Loop, TestActor, TestInterface);

	GetBPInterfaceValue(Loop, TestActor);

	// TArray
	SetBPArrayValue(Loop, TestActor, TestArray);

	GetBPArrayValue(Loop, TestActor);

	// TArray Element
	SetBPArrayElement(Loop, TestActor, 0, 1);

	GetBPArrayElement(Loop, TestActor, 0);

	// TSet
	SetBPSetValue(Loop, TestActor, TestSet);

	GetBPSetValue(Loop, TestActor);

	// TMap
	SetBPMapValue(Loop, TestActor, TestMap);

	GetBPMapValue(Loop, TestActor);

	// TMap Element
	SetBPMapElement(Loop, TestActor, 0, 1);

	GetBPMapElement(Loop, TestActor, 0);

	// Member
	MemberBPFunction(Loop, TestActor);

	// Bool
	SetBPBoolValueFunction(Loop, TestActor, true);

	GetBPBoolValueFunction(Loop, TestActor);

	// Int32
	SetBPInt32ValueFunction(Loop, TestActor, 1);

	GetBPInt32ValueFunction(Loop, TestActor);

	// Int64
	SetBPInt64ValueFunction(Loop, TestActor, 1);

	GetBPInt64ValueFunction(Loop, TestActor);

	// UInt8
	SetBPUInt8ValueFunction(Loop, TestActor, 1);

	GetBPUInt8ValueFunction(Loop, TestActor);

	// Double
	SetBPDoubleValueFunction(Loop, TestActor, 1.0);

	GetBPDoubleValueFunction(Loop, TestActor);

	// FName
	SetBPNameValueFunction(Loop, TestActor, FName(TEXT("Name")));

	GetBPNameValueFunction(Loop, TestActor);

	// FText
	SetBPTextValueFunction(Loop, TestActor, FText::FromString(TEXT("Text")));

	GetBPTextValueFunction(Loop, TestActor);

	// FString
	SetBPStringValueFunction(Loop, TestActor, FString(TEXT("String")));

	GetBPStringValueFunction(Loop, TestActor);

	// UEnum
	SetBPEnumValueFunction(Loop, TestActor, TestEnum);

	GetBPEnumValueFunction(Loop, TestActor);

	// UStruct
	SetBPStructValueFunction(Loop, TestActor, TestStruct);

	GetBPStructValueFunction(Loop, TestActor);

	// UObject
	SetBPObjectValueFunction(Loop, TestActor, TestActor);

	GetBPObjectValueFunction(Loop, TestActor);

	// UClass
	SetBPClassValueFunction(Loop, TestActor, TestClass);

	GetBPClassValueFunction(Loop, TestActor);

	// UInterface
	SetBPInterfaceValueFunction(Loop, TestActor, TestInterface);

	GetBPInterfaceValueFunction(Loop, TestActor);

	// TArray
	SetBPArrayValueFunction(Loop, TestActor, TestArray);

	GetBPArrayValueFunction(Loop, TestActor);

	// TSet
	SetBPSetValueFunction(Loop, TestActor, TestSet);

	GetBPSetValueFunction(Loop, TestActor);

	// TMap
	SetBPMapValueFunction(Loop, TestActor, TestMap);

	GetBPMapValueFunction(Loop, TestActor);
}

void ACppActor::ProcessTest()
{
	TestSelf();

	TestCpp();

	TestBP();
}

void ACppActor::EndTest()
{
	FString Value;

	Value.Append(TEXT("Name, Time\n"));

	const auto Now = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto Year = 0;

	auto Month = 0;

	auto Day = 0;

	auto Hour = 0;

	auto Minute = 0;

	auto Second = 0;

	auto Millisecond = 0;

	UKismetMathLibrary::BreakDateTime(Now, Year, Month, Day, Hour, Minute, Second, Millisecond);

	for (const auto& Var : Data)
	{
		Value.Append(FString::Printf(TEXT(
			"%s, %f\n"),
		                             *Var.Key,
		                             Var.Value));
	}

	const auto File = FString::Printf(TEXT(
		"Cpp-%s-%s-%d-%d-%d-%d-%d-%d-%d-%d.csv"
	),
	                                  *UTestCaseBlueprintFunctionLibrary::GetPlatform(),
	                                  *UTestCaseBlueprintFunctionLibrary::GetBuildConfiguration(),
	                                  Loop,
	                                  Year,
	                                  Month,
	                                  Day,
	                                  Hour,
	                                  Minute,
	                                  Second,
	                                  Millisecond
	);

	UTestCaseBlueprintFunctionLibrary::SaveStringToFile(File, Value);
}

void ACppActor::Empty()
{
}

void ACppActor::EmptyFunction(const int32 InLoop)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		Empty();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("EmptyFunction"), TotalSeconds));
}

void ACppActor::Add(const int32 A, const int32 B)
{
	auto Value = A + B;
}

void ACppActor::AddFunction(const int32 InLoop)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		Add(1, 1);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("AddFunction"), TotalSeconds));
}

void ACppActor::Subtract(const int32 A, const int32 B)
{
	auto Value = A - B;
}

void ACppActor::SubtractFunction(const int32 InLoop)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		Subtract(1, 1);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SubtractFunction"), TotalSeconds));
}

void ACppActor::Multiply(const int32 A, const int32 B)
{
	auto Value = A * B;
}

void ACppActor::MultiplyFunction(const int32 InLoop)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		Multiply(1, 1);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("MultiplyFunction"), TotalSeconds));
}

void ACppActor::Divide(const int32 A, const int32 B)
{
	auto Value = A / B;
}

void ACppActor::DivideFunction(const int32 InLoop)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		Divide(1, 1);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("DivideFunction"), TotalSeconds));
}

void ACppActor::SetCppBoolValue(const int32 InLoop, ATestActor* InObject, const bool InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->BoolValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppBoolValue"), TotalSeconds));
}

void ACppActor::GetCppBoolValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->BoolValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppBoolValue"), TotalSeconds));
}

void ACppActor::SetCppInt8Value(const int32 InLoop, ATestActor* InObject, const int8 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->Int8Value = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppInt8Value"), TotalSeconds));
}

void ACppActor::GetCppInt8Value(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->Int8Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppInt8Value"), TotalSeconds));
}

void ACppActor::SetCppInt16Value(const int32 InLoop, ATestActor* InObject, const int16 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->Int16Value = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppInt16Value"), TotalSeconds));
}

void ACppActor::GetCppInt16Value(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->Int16Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppInt16Value"), TotalSeconds));
}

void ACppActor::SetCppInt32Value(const int32 InLoop, ATestActor* InObject, const int32 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->Int32Value = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppInt32Value"), TotalSeconds));
}

void ACppActor::GetCppInt32Value(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->Int32Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppInt32Value"), TotalSeconds));
}

void ACppActor::SetCppInt64Value(const int32 InLoop, ATestActor* InObject, const int64 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->Int64Value = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppInt64Value"), TotalSeconds));
}

void ACppActor::GetCppInt64Value(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->Int64Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppInt64Value"), TotalSeconds));
}

void ACppActor::SetCppUInt8Value(const int32 InLoop, ATestActor* InObject, const uint8 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->UInt8Value = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppUInt8Value"), TotalSeconds));
}

void ACppActor::GetCppUInt8Value(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->UInt8Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppUInt8Value"), TotalSeconds));
}

void ACppActor::SetCppUInt16Value(const int32 InLoop, ATestActor* InObject, const uint16 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->UInt16Value = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppUInt16Value"), TotalSeconds));
}

void ACppActor::GetCppUInt16Value(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->UInt16Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppUInt16Value"), TotalSeconds));
}

void ACppActor::SetCppUInt32Value(const int32 InLoop, ATestActor* InObject, const uint32 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->UInt32Value = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppUInt32Value"), TotalSeconds));
}

void ACppActor::GetCppUInt32Value(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->UInt32Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppUInt32Value"), TotalSeconds));
}

void ACppActor::SetCppUInt64Value(const int32 InLoop, ATestActor* InObject, const uint64 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->UInt64Value = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppUInt64Value"), TotalSeconds));
}

void ACppActor::GetCppUInt64Value(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->UInt64Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppUInt64Value"), TotalSeconds));
}

void ACppActor::SetCppFloatValue(const int32 InLoop, ATestActor* InObject, const float InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->FloatValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppFloatValue"), TotalSeconds));
}

void ACppActor::GetCppFloatValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->FloatValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppFloatValue"), TotalSeconds));
}

void ACppActor::SetCppDoubleValue(const int32 InLoop, ATestActor* InObject, const double InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->DoubleValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppDoubleValue"), TotalSeconds));
}

void ACppActor::GetCppDoubleValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->DoubleValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppDoubleValue"), TotalSeconds));
}

void ACppActor::SetCppNameValue(const int32 InLoop, ATestActor* InObject, const FName& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->NameValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppNameValue"), TotalSeconds));
}

void ACppActor::GetCppNameValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->NameValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppNameValue"), TotalSeconds));
}

void ACppActor::SetCppTextValue(const int32 InLoop, ATestActor* InObject, const FText& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->TextValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppTextValue"), TotalSeconds));
}

void ACppActor::GetCppTextValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->TextValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppTextValue"), TotalSeconds));
}

void ACppActor::SetCppStringValue(const int32 InLoop, ATestActor* InObject, const FString& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->StringValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppStringValue"), TotalSeconds));
}

void ACppActor::GetCppStringValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->StringValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppStringValue"), TotalSeconds));
}

void ACppActor::SetCppEnumValue(const int32 InLoop, ATestActor* InObject, const ETestEnum InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->EnumValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppEnumValue"), TotalSeconds));
}

void ACppActor::GetCppEnumValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->EnumValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppEnumValue"), TotalSeconds));
}

void ACppActor::SetCppEnumClassValue(const int32 InLoop, ATestActor* InObject, const ETestEnumClass InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->EnumClassValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppEnumClassValue"), TotalSeconds));
}

void ACppActor::GetCppEnumClassValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->EnumClassValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppEnumClassValue"), TotalSeconds));
}

void ACppActor::SetCppStructValue(const int32 InLoop, ATestActor* InObject, const FTestStruct& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->StructValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppStructValue"), TotalSeconds));
}

void ACppActor::GetCppStructValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->StructValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppStructValue"), TotalSeconds));
}

void ACppActor::SetCppObjectValue(const int32 InLoop, ATestActor* InObject, ATestActor* InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->ObjectValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppObjectValue"), TotalSeconds));
}

void ACppActor::GetCppObjectValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->ObjectValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppObjectValue"), TotalSeconds));
}

void ACppActor::SetCppClassValue(const int32 InLoop, ATestActor* InObject, UClass* InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->ClassValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppClassValue"), TotalSeconds));
}

void ACppActor::GetCppClassValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->ClassValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppClassValue"), TotalSeconds));
}

void ACppActor::SetCppInterfaceValue(const int32 InLoop, ATestActor* InObject,
                                     const TScriptInterface<ITestInterface>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->InterfaceValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppInterfaceValue"), TotalSeconds));
}

void ACppActor::GetCppInterfaceValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->InterfaceValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppInterfaceValue"), TotalSeconds));
}

void ACppActor::SetCppArrayValue(const int32 InLoop, ATestActor* InObject, const TArray<int32>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->ArrayValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppArrayValue"), TotalSeconds));
}

void ACppActor::GetCppArrayValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->ArrayValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppArrayValue"), TotalSeconds));
}

void ACppActor::SetCppArrayElement(const int32 InLoop, ATestActor* InObject, const int32 InIndex, const int32 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->ArrayValue[InIndex] = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppArrayElement"), TotalSeconds));
}

void ACppActor::GetCppArrayElement(const int32 InLoop, const ATestActor* InObject, int32 InIndex)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->ArrayValue[InIndex];
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppArrayElement"), TotalSeconds));
}

void ACppActor::SetCppSetValue(const int32 InLoop, ATestActor* InObject, const TSet<int32>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppSetValue"), TotalSeconds));
}

void ACppActor::GetCppSetValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->SetValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppSetValue"), TotalSeconds));
}

void ACppActor::SetCppMapValue(const int32 InLoop, ATestActor* InObject, const TMap<int32, int32>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->MapValue = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppMapValue"), TotalSeconds));
}

void ACppActor::GetCppMapValue(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->MapValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppMapValue"), TotalSeconds));
}

void ACppActor::SetCppMapElement(const int32 InLoop, ATestActor* InObject, const int32 InIndex, const int32 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->MapValue[InIndex] = InValue;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppMapElement"), TotalSeconds));
}

void ACppActor::GetCppMapElement(const int32 InLoop, const ATestActor* InObject, const int32 InIndex)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->MapValue[InIndex];
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppMapElement"), TotalSeconds));
}

void ACppActor::StaticCppFunction(const int32 InLoop)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		ATestActor::StaticFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("StaticCppFunction"), TotalSeconds));
}

void ACppActor::MemberCppFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->MemberFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("MemberCppFunction"), TotalSeconds));
}

void ACppActor::SetCppBoolValueFunction(const int32 InLoop, ATestActor* InObject, const bool InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetBoolValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppBoolValueFunction"), TotalSeconds));
}

void ACppActor::GetCppBoolValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetBoolValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppBoolValueFunction"), TotalSeconds));
}

void ACppActor::SetCppInt8ValueFunction(const int32 InLoop, ATestActor* InObject, const int8 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetInt8ValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppInt8ValueFunction"), TotalSeconds));
}

void ACppActor::GetCppInt8ValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetInt8ValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppInt8ValueFunction"), TotalSeconds));
}

void ACppActor::SetCppInt16ValueFunction(const int32 InLoop, ATestActor* InObject, const int16 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetInt16ValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppInt16ValueFunction"), TotalSeconds));
}

void ACppActor::GetCppInt16ValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetInt16ValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppInt16ValueFunction"), TotalSeconds));
}

void ACppActor::SetCppInt32ValueFunction(const int32 InLoop, ATestActor* InObject, const int32 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetInt32ValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppInt32ValueFunction"), TotalSeconds));
}

void ACppActor::GetCppInt32ValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetInt32ValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppInt32ValueFunction"), TotalSeconds));
}

void ACppActor::SetCppInt64ValueFunction(const int32 InLoop, ATestActor* InObject, const int64 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetInt64ValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppInt64ValueFunction"), TotalSeconds));
}

void ACppActor::GetCppInt64ValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetInt64ValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppInt64ValueFunction"), TotalSeconds));
}

void ACppActor::SetCppUInt8ValueFunction(const int32 InLoop, ATestActor* InObject, const uint8 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetUInt8ValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppUInt8ValueFunction"), TotalSeconds));
}

void ACppActor::GetCppUInt8ValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetUInt8ValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppUInt8ValueFunction"), TotalSeconds));
}

void ACppActor::SetCppUInt16ValueFunction(const int32 InLoop, ATestActor* InObject, const uint16 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetUInt16ValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppUInt16ValueFunction"), TotalSeconds));
}

void ACppActor::GetCppUInt16ValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetUInt16ValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppUInt16ValueFunction"), TotalSeconds));
}

void ACppActor::SetCppUInt32ValueFunction(const int32 InLoop, ATestActor* InObject, const uint32 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetUInt32ValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppUInt32ValueFunction"), TotalSeconds));
}

void ACppActor::GetCppUInt32ValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetUInt32ValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppUInt32ValueFunction"), TotalSeconds));
}

void ACppActor::SetCppUInt64ValueFunction(const int32 InLoop, ATestActor* InObject, const uint64 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetUInt64ValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppUInt64ValueFunction"), TotalSeconds));
}

void ACppActor::GetCppUInt64ValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetUInt64ValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppUInt64ValueFunction"), TotalSeconds));
}

void ACppActor::SetCppFloatValueFunction(const int32 InLoop, ATestActor* InObject, const float InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetFloatValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppFloatValueFunction"), TotalSeconds));
}

void ACppActor::GetCppFloatValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetFloatValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppFloatValueFunction"), TotalSeconds));
}

void ACppActor::SetCppDoubleValueFunction(const int32 InLoop, ATestActor* InObject, const double InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetDoubleValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppDoubleValueFunction"), TotalSeconds));
}

void ACppActor::GetCppDoubleValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetDoubleValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppDoubleValueFunction"), TotalSeconds));
}

void ACppActor::SetCppNameValueFunction(const int32 InLoop, ATestActor* InObject, const FName& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetNameValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppNameValueFunction"), TotalSeconds));
}

void ACppActor::GetCppNameValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetNameValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppNameValueFunction"), TotalSeconds));
}

void ACppActor::SetCppTextValueFunction(const int32 InLoop, ATestActor* InObject, const FText& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetTextValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppTextValueFunction"), TotalSeconds));
}

void ACppActor::GetCppTextValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetTextValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppTextValueFunction"), TotalSeconds));
}

void ACppActor::SetCppStringValueFunction(const int32 InLoop, ATestActor* InObject, const FString& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetStringValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppStringValueFunction"), TotalSeconds));
}

void ACppActor::GetCppStringValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetStringValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppStringValueFunction"), TotalSeconds));
}

void ACppActor::SetCppEnumValueFunction(const int32 InLoop, ATestActor* InObject, const ETestEnum InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetEnumValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppEnumValueFunction"), TotalSeconds));
}

void ACppActor::GetCppEnumValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetEnumValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppEnumValueFunction"), TotalSeconds));
}

void ACppActor::SetCppEnumClassValueFunction(const int32 InLoop, ATestActor* InObject, const ETestEnumClass InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetEnumClassValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppEnumClassValueFunction"), TotalSeconds));
}

void ACppActor::GetCppEnumClassValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetEnumClassValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppEnumClassValueFunction"), TotalSeconds));
}

void ACppActor::SetCppStructValueFunction(const int32 InLoop, ATestActor* InObject, const FTestStruct& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetStructValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppStructValueFunction"), TotalSeconds));
}

void ACppActor::GetCppStructValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetStructValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppStructValueFunction"), TotalSeconds));
}

void ACppActor::SetCppObjectValueFunction(const int32 InLoop, ATestActor* InObject, ATestActor* InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetObjectValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppObjectValueFunction"), TotalSeconds));
}

void ACppActor::GetCppObjectValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetObjectValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppObjectValueFunction"), TotalSeconds));
}

void ACppActor::SetCppClassValueFunction(const int32 InLoop, ATestActor* InObject, UClass* InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetClassValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppClassValueFunction"), TotalSeconds));
}

void ACppActor::GetCppClassValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetClassValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppClassValueFunction"), TotalSeconds));
}

void ACppActor::SetCppInterfaceValueFunction(const int32 InLoop, ATestActor* InObject,
                                             const TScriptInterface<ITestInterface>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetInterfaceValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppInterfaceValueFunction"), TotalSeconds));
}

void ACppActor::GetCppInterfaceValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetInterfaceValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppInterfaceValueFunction"), TotalSeconds));
}

void ACppActor::SetCppArrayValueFunction(const int32 InLoop, ATestActor* InObject, const TArray<int32>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetArrayValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppArrayValueFunction"), TotalSeconds));
}

void ACppActor::GetCppArrayValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetArrayValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppArrayValueFunction"), TotalSeconds));
}

void ACppActor::SetCppSetValueFunction(const int32 InLoop, ATestActor* InObject, const TSet<int32>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetSetValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppSetValueFunction"), TotalSeconds));
}

void ACppActor::GetCppSetValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetSetValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppSetValueFunction"), TotalSeconds));
}

void ACppActor::SetCppMapValueFunction(const int32 InLoop, ATestActor* InObject, const TMap<int32, int32>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->SetMapValueFunction(InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetCppMapValueFunction"), TotalSeconds));
}

void ACppActor::GetCppMapValueFunction(const int32 InLoop, const ATestActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = InObject->GetMapValueFunction();
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetCppMapValueFunction"), TotalSeconds));
}

void ACppActor::SetBPBoolValue(const int32 InLoop, AActor* InObject, const bool InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FBoolProperty>(InObject->GetClass()->FindPropertyByName("BoolValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->CopySingleValue(Property->ContainerPtrToValuePtr<void>(InObject), &InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPBoolValue"), TotalSeconds));
}

void ACppActor::GetBPBoolValue(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FBoolProperty>(InObject->GetClass()->FindPropertyByName("BoolValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = false;

		Property->CopySingleValue(&Value, Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPBoolValue"), TotalSeconds));
}

void ACppActor::SetBPInt32Value(const int32 InLoop, AActor* InObject, const int32 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FIntProperty>(InObject->GetClass()->FindPropertyByName("Int32Value"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->CopySingleValue(Property->ContainerPtrToValuePtr<void>(InObject), &InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPInt32Value"), TotalSeconds));
}

void ACppActor::GetBPInt32Value(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FIntProperty>(InObject->GetClass()->FindPropertyByName("Int32Value"));

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = 0;

		Property->CopySingleValue(&Value, Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPInt32Value"), TotalSeconds));
}

void ACppActor::SetBPInt64Value(const int32 InLoop, AActor* InObject, const int64 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FInt64Property>(InObject->GetClass()->FindPropertyByName("Int64Value"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->CopySingleValue(Property->ContainerPtrToValuePtr<void>(InObject), &InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPInt64Value"), TotalSeconds));
}

void ACppActor::GetBPInt64Value(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FInt64Property>(InObject->GetClass()->FindPropertyByName("Int64Value"));

	for (auto i = 0; i < InLoop; i++)
	{
		int64 Value = 0;

		Property->CopySingleValue(&Value, Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPInt64Value"), TotalSeconds));
}

void ACppActor::SetBPUInt8Value(const int32 InLoop, AActor* InObject, const uint8 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FByteProperty>(InObject->GetClass()->FindPropertyByName("UInt8Value"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->CopySingleValue(Property->ContainerPtrToValuePtr<void>(InObject), &InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPUInt8Value"), TotalSeconds));
}

void ACppActor::GetBPUInt8Value(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FByteProperty>(InObject->GetClass()->FindPropertyByName("UInt8Value"));

	for (auto i = 0; i < InLoop; i++)
	{
		uint8 Value = 0;

		Property->CopySingleValue(&Value, Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPUInt8Value"), TotalSeconds));
}

void ACppActor::SetBPDoubleValue(const int32 InLoop, AActor* InObject, const double InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FDoubleProperty>(InObject->GetClass()->FindPropertyByName("DoubleValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->CopySingleValue(Property->ContainerPtrToValuePtr<void>(InObject), &InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPDoubleValue"), TotalSeconds));
}

void ACppActor::GetBPDoubleValue(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FDoubleProperty>(InObject->GetClass()->FindPropertyByName("DoubleValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = 0.0;

		Property->CopySingleValue(&Value, Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPDoubleValue"), TotalSeconds));
}

void ACppActor::SetBPNameValue(const int32 InLoop, AActor* InObject, const FName& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FNameProperty>(InObject->GetClass()->FindPropertyByName("NameValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->CopySingleValue(Property->ContainerPtrToValuePtr<void>(InObject), &InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPNameValue"), TotalSeconds));
}

void ACppActor::GetBPNameValue(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FNameProperty>(InObject->GetClass()->FindPropertyByName("NameValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		FName Value;

		Property->CopySingleValue(&Value, Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPNameValue"), TotalSeconds));
}

void ACppActor::SetBPTextValue(const int32 InLoop, AActor* InObject, const FText& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FTextProperty>(InObject->GetClass()->FindPropertyByName("TextValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->CopySingleValue(Property->ContainerPtrToValuePtr<void>(InObject), &InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPTextValue"), TotalSeconds));
}

void ACppActor::GetBPTextValue(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FTextProperty>(InObject->GetClass()->FindPropertyByName("TextValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		FText Value;

		Property->CopySingleValue(&Value, Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPTextValue"), TotalSeconds));
}

void ACppActor::SetBPStringValue(const int32 InLoop, AActor* InObject, const FString& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FStrProperty>(InObject->GetClass()->FindPropertyByName("StringValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->CopySingleValue(Property->ContainerPtrToValuePtr<void>(InObject), &InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPStringValue"), TotalSeconds));
}

void ACppActor::GetBPStringValue(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FStrProperty>(InObject->GetClass()->FindPropertyByName("StringValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		FString Value;

		Property->CopySingleValue(&Value, Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPStringValue"), TotalSeconds));
}

void ACppActor::SetBPEnumValue(const int32 InLoop, AActor* InObject, const uint8 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FByteProperty>(InObject->GetClass()->FindPropertyByName("EnumValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->CopySingleValue(Property->ContainerPtrToValuePtr<void>(InObject), &InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPEnumValue"), TotalSeconds));
}

void ACppActor::GetBPEnumValue(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FByteProperty>(InObject->GetClass()->FindPropertyByName("EnumValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		uint8 Value;

		Property->CopySingleValue(&Value, Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPEnumValue"), TotalSeconds));
}

void ACppActor::SetBPStructValue(const int32 InLoop, AActor* InObject, const void* InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FStructProperty>(InObject->GetClass()->FindPropertyByName("StructValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->CopySingleValue(Property->ContainerPtrToValuePtr<void>(InObject), InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPStructValue"), TotalSeconds));
}

void ACppActor::GetBPStructValue(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FStructProperty>(InObject->GetClass()->FindPropertyByName("StructValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		void* Value = nullptr;

		Property->CopySingleValue(&Value, Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPStructValue"), TotalSeconds));
}

void ACppActor::SetBPObjectValue(const int32 InLoop, AActor* InObject, const AActor* InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FObjectProperty>(InObject->GetClass()->FindPropertyByName("ObjectValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->SetObjectPropertyValue(Property->ContainerPtrToValuePtr<void>(InObject),
		                                 const_cast<AActor*>(InValue));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPObjectValue"), TotalSeconds));
}

void ACppActor::GetBPObjectValue(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FObjectProperty>(InObject->GetClass()->FindPropertyByName("ObjectValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = Property->GetObjectPropertyValue(Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPObjectValue"), TotalSeconds));
}

void ACppActor::SetBPClassValue(const int32 InLoop, AActor* InObject, const UClass* InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FClassProperty>(InObject->GetClass()->FindPropertyByName("ClassValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->SetObjectPropertyValue(Property->ContainerPtrToValuePtr<void>(InObject),
		                                 const_cast<UClass*>(InValue));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPClassValue"), TotalSeconds));
}

void ACppActor::GetBPClassValue(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FClassProperty>(InObject->GetClass()->FindPropertyByName("ClassValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		auto Value = Property->GetObjectPropertyValue(Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPClassValue"), TotalSeconds));
}

void ACppActor::SetBPInterfaceValue(const int32 InLoop, AActor* InObject, const TScriptInterface<IInterface>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FInterfaceProperty>(InObject->GetClass()->FindPropertyByName("InterfaceValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		const auto Interface = static_cast<FScriptInterface*>(Property->ContainerPtrToValuePtr<void>(InObject));

		Interface->SetObject(InObject);

		Interface->SetInterface(InObject->GetInterfaceAddress(Property->InterfaceClass));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPInterfaceValue"), TotalSeconds));
}

void ACppActor::GetBPInterfaceValue(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FInterfaceProperty>(InObject->GetClass()->FindPropertyByName("InterfaceValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		TScriptInterface<IInterface> Value;

		Value.SetObject(const_cast<AActor*>(InObject));

		Value.SetInterface(
			static_cast<IInterface*>(const_cast<AActor*>(InObject)->GetInterfaceAddress(Property->InterfaceClass)));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPInterfaceValue"), TotalSeconds));
}

void ACppActor::SetBPArrayValue(const int32 InLoop, AActor* InObject, const TArray<int32>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FArrayProperty>(InObject->GetClass()->FindPropertyByName("ArrayValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->CopyCompleteValue(Property->ContainerPtrToValuePtr<void>(InObject), &InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPArrayValue"), TotalSeconds));
}

void ACppActor::GetBPArrayValue(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FArrayProperty>(InObject->GetClass()->FindPropertyByName("ArrayValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		TArray<int32> Value;

		Property->CopyCompleteValue(&Value, Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPArrayValue"), TotalSeconds));
}

void ACppActor::SetBPArrayElement(const int32 InLoop, AActor* InObject, const int32 InIndex, const int32 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FArrayProperty>(InObject->GetClass()->FindPropertyByName("ArrayValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		auto Helper = FScriptArrayHelper::CreateHelperFormInnerProperty(
			Property->Inner, Property->ContainerPtrToValuePtr<void>(InObject));

		Property->Inner->CopyCompleteValue(Helper.GetRawPtr(InIndex), &InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPArrayElement"), TotalSeconds));
}

void ACppActor::GetBPArrayElement(const int32 InLoop, const AActor* InObject, const int32 InIndex)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FArrayProperty>(InObject->GetClass()->FindPropertyByName("ArrayValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		auto Helper = FScriptArrayHelper::CreateHelperFormInnerProperty(
			Property->Inner, Property->ContainerPtrToValuePtr<void>(InObject));

		auto Value = *(int32*)Helper.GetRawPtr(InIndex);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPArrayElement"), TotalSeconds));
}

void ACppActor::SetBPSetValue(const int32 InLoop, AActor* InObject, const TSet<int32>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FSetProperty>(InObject->GetClass()->FindPropertyByName("SetValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->CopyCompleteValue(Property->ContainerPtrToValuePtr<void>(InObject), &InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPSetValue"), TotalSeconds));
}

void ACppActor::GetBPSetValue(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FSetProperty>(InObject->GetClass()->FindPropertyByName("SetValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		TSet<int32> Value;

		Property->CopyCompleteValue(&Value, Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPSetValue"), TotalSeconds));
}

void ACppActor::SetBPMapValue(const int32 InLoop, AActor* InObject, const TMap<int32, int32>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FMapProperty>(InObject->GetClass()->FindPropertyByName("MapValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		Property->CopyCompleteValue(Property->ContainerPtrToValuePtr<void>(InObject), &InValue);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPMapValue"), TotalSeconds));
}

void ACppActor::GetBPMapValue(const int32 InLoop, const AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FMapProperty>(InObject->GetClass()->FindPropertyByName("MapValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		TMap<int32, int32> Value;

		Property->CopyCompleteValue(&Value, Property->ContainerPtrToValuePtr<void>(InObject));
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPMapValue"), TotalSeconds));
}

void ACppActor::SetBPMapElement(const int32 InLoop, AActor* InObject, const int32 InIndex, const int32 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FMapProperty>(InObject->GetClass()->FindPropertyByName("MapValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		auto Helper = FScriptMapHelper(Property, Property->ContainerPtrToValuePtr<void>(InObject));

		for (auto Index = 0; Index < Helper.GetMaxIndex(); ++Index)
		{
			if (Helper.IsValidIndex(Index))
			{
				const auto KeyPtr = Helper.GetKeyPtr(Index);

				if (Property->KeyProp->Identical(KeyPtr, &InIndex))
				{
					Property->ValueProp->CopyCompleteValue(Helper.GetValuePtr(InIndex), &InValue);
				}
			}
		}
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPMapElement"), TotalSeconds));
}

void ACppActor::GetBPMapElement(const int32 InLoop, const AActor* InObject, const int32 InIndex)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Property = CastField<FMapProperty>(InObject->GetClass()->FindPropertyByName("MapValue"));

	for (auto i = 0; i < InLoop; i++)
	{
		auto Helper = FScriptMapHelper(Property, Property->ContainerPtrToValuePtr<void>(InObject));

		for (auto Index = 0; Index < Helper.GetMaxIndex(); ++Index)
		{
			if (Helper.IsValidIndex(Index))
			{
				const auto KeyPtr = Helper.GetKeyPtr(Index);

				if (Property->KeyProp->Identical(KeyPtr, &InIndex))
				{
					auto Value = *(int32*)Helper.GetValuePtr(Index);
				}
			}
		}
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPMapElement"), TotalSeconds));
}

void ACppActor::MemberBPFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("MemberFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		InObject->ProcessEvent(Function, nullptr);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("MemberBPFunction"), TotalSeconds));
}

void ACppActor::SetBPBoolValueFunction(const int32 InLoop, AActor* InObject, const bool InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetBoolValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<bool> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPBoolValueFunction"), TotalSeconds));
}

void ACppActor::GetBPBoolValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetBoolValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<bool> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPBoolValueFunction"), TotalSeconds));
}

void ACppActor::SetBPInt32ValueFunction(const int32 InLoop, AActor* InObject, const int32 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetInt32ValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<int32> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPInt32ValueFunction"), TotalSeconds));
}

void ACppActor::GetBPInt32ValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetInt32ValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<int32> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPInt32ValueFunction"), TotalSeconds));
}

void ACppActor::SetBPInt64ValueFunction(const int32 InLoop, AActor* InObject, const int64 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetInt64ValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<int64> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPInt64ValueFunction"), TotalSeconds));
}

void ACppActor::GetBPInt64ValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetInt64ValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<int64> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPInt64ValueFunction"), TotalSeconds));
}

void ACppActor::SetBPUInt8ValueFunction(const int32 InLoop, AActor* InObject, const uint8 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetUInt8ValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<uint8> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPUInt8ValueFunction"), TotalSeconds));
}

void ACppActor::GetBPUInt8ValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetUInt8ValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<uint8> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPUInt8ValueFunction"), TotalSeconds));
}

void ACppActor::SetBPDoubleValueFunction(const int32 InLoop, AActor* InObject, const double InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetDoubleValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<double> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPDoubleValueFunction"), TotalSeconds));
}

void ACppActor::GetBPDoubleValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetDoubleValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<double> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPDoubleValueFunction"), TotalSeconds));
}

void ACppActor::SetBPNameValueFunction(const int32 InLoop, AActor* InObject, const FName& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetNameValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<FName> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPNameValueFunction"), TotalSeconds));
}

void ACppActor::GetBPNameValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetNameValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<FName> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPNameValueFunction"), TotalSeconds));
}

void ACppActor::SetBPTextValueFunction(const int32 InLoop, AActor* InObject, const FText& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetTextValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<FText> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPTextValueFunction"), TotalSeconds));
}

void ACppActor::GetBPTextValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetTextValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<FText> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPTextValueFunction"), TotalSeconds));
}

void ACppActor::SetBPStringValueFunction(const int32 InLoop, AActor* InObject, const FString& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetStringValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<FString> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPStringValueFunction"), TotalSeconds));
}

void ACppActor::GetBPStringValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetStringValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<FString> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPStringValueFunction"), TotalSeconds));
}

void ACppActor::SetBPEnumValueFunction(const int32 InLoop, AActor* InObject, const uint8 InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetEnumValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<uint8> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPEnumValueFunction"), TotalSeconds));
}

void ACppActor::GetBPEnumValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetEnumValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<uint8> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPEnumValueFunction"), TotalSeconds));
}

void ACppActor::SetBPStructValueFunction(const int32 InLoop, AActor* InObject, const void* InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetStructValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		// @TODO
		TParam<int32> Param{*static_cast<int*>(const_cast<void*>(InValue))};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPStructValueFunction"), TotalSeconds));
}

void ACppActor::GetBPStructValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetStructValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		// @TODO
		TParam<int32> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPStructValueFunction"), TotalSeconds));
}

void ACppActor::SetBPObjectValueFunction(const int32 InLoop, AActor* InObject, const AActor* InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetObjectValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<const AActor*> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPObjectValueFunction"), TotalSeconds));
}

void ACppActor::GetBPObjectValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetObjectValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<UObject*> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPObjectValueFunction"), TotalSeconds));
}

void ACppActor::SetBPClassValueFunction(const int32 InLoop, AActor* InObject, const UClass* InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetClassValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<const UClass*> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPClassValueFunction"), TotalSeconds));
}

void ACppActor::GetBPClassValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetClassValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<UClass*> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPClassValueFunction"), TotalSeconds));
}

void ACppActor::SetBPInterfaceValueFunction(const int32 InLoop, AActor* InObject,
                                            const TScriptInterface<IInterface>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetInterfaceValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<TScriptInterface<IInterface>> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPInterfaceValueFunction"), TotalSeconds));
}

void ACppActor::GetBPInterfaceValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetInterfaceValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<TScriptInterface<IInterface>> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPInterfaceValueFunction"), TotalSeconds));
}

void ACppActor::SetBPArrayValueFunction(const int32 InLoop, AActor* InObject, const TArray<int32>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetArrayValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<TArray<int32>> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPArrayValueFunction"), TotalSeconds));
}

void ACppActor::GetBPArrayValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetArrayValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<TArray<int32>> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPArrayValueFunction"), TotalSeconds));
}

void ACppActor::SetBPSetValueFunction(const int32 InLoop, AActor* InObject, const TSet<int32>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetSetValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<TSet<int32>> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPSetValueFunction"), TotalSeconds));
}

void ACppActor::GetBPSetValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetSetValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<TSet<int32>> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPSetValueFunction"), TotalSeconds));
}

void ACppActor::SetBPMapValueFunction(const int32 InLoop, AActor* InObject, const TMap<int32, int32>& InValue)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("SetMapValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<TMap<int32, int32>> Param{InValue};

		InObject->ProcessEvent(Function, &Param);
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("SetBPMapValueFunction"), TotalSeconds));
}

void ACppActor::GetBPMapValueFunction(const int32 InLoop, AActor* InObject)
{
	const auto Start = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	const auto Function = InObject->GetClass()->FindFunctionByName("GetMapValueFunction");

	for (auto i = 0; i < InLoop; i++)
	{
		TParam<TMap<int32, int32>> Param;

		InObject->ProcessEvent(Function, &Param);

		auto Value = Param.Value;
	}

	const auto End = UTestCaseBlueprintFunctionLibrary::GetTimestamp();

	auto TotalSeconds = UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(End, Start);

	Data.Add(TPair<FString, double>(TEXT("GetBPMapValueFunction"), TotalSeconds));
}
