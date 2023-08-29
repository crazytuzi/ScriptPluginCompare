// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "TestCase/TestActor.h"
#include "CppActor.generated.h"

template <typename T>
struct TParam
{
	T Value;
};

UCLASS()
class SCRIPTPLUGINCOMPARE_API ACppActor : public AActor
{
	GENERATED_BODY()

public:
	// Sets default values for this actor's properties
	ACppActor();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:
	// Called every frame
	virtual void Tick(float DeltaTime) override;

private:
	void StartTest();

	void TestSelf();

	void TestCpp();

	void TestBP();

	void ProcessTest();

	void EndTest();

private:
	void Empty();

	void EmptyFunction(int32 InLoop);

	void Add(int32 A, int32 B);

	void AddFunction(int32 InLoop);

	void Subtract(int32 A, int32 B);

	void SubtractFunction(int32 InLoop);

	void Multiply(int32 A, int32 B);

	void MultiplyFunction(int32 InLoop);

	void Divide(int32 A, int32 B);

	void DivideFunction(int32 InLoop);

private:
	void SetCppBoolValue(int32 InLoop, ATestActor* InObject, bool InValue);

	void GetCppBoolValue(int32 InLoop, const ATestActor* InObject);

	void SetCppInt8Value(int32 InLoop, ATestActor* InObject, int8 InValue);

	void GetCppInt8Value(int32 InLoop, const ATestActor* InObject);

	void SetCppInt16Value(int32 InLoop, ATestActor* InObject, int16 InValue);

	void GetCppInt16Value(int32 InLoop, const ATestActor* InObject);

	void SetCppInt32Value(int32 InLoop, ATestActor* InObject, int32 InValue);

	void GetCppInt32Value(int32 InLoop, const ATestActor* InObject);

	void SetCppInt64Value(int32 InLoop, ATestActor* InObject, int64 InValue);

	void GetCppInt64Value(int32 InLoop, const ATestActor* InObject);

	void SetCppUInt8Value(int32 InLoop, ATestActor* InObject, uint8 InValue);

	void GetCppUInt8Value(int32 InLoop, const ATestActor* InObject);

	void SetCppUInt16Value(int32 InLoop, ATestActor* InObject, uint16 InValue);

	void GetCppUInt16Value(int32 InLoop, const ATestActor* InObject);

	void SetCppUInt32Value(int32 InLoop, ATestActor* InObject, uint32 InValue);

	void GetCppUInt32Value(int32 InLoop, const ATestActor* InObject);

	void SetCppUInt64Value(int32 InLoop, ATestActor* InObject, uint64 InValue);

	void GetCppUInt64Value(int32 InLoop, const ATestActor* InObject);

	void SetCppFloatValue(int32 InLoop, ATestActor* InObject, float InValue);

	void GetCppFloatValue(int32 InLoop, const ATestActor* InObject);

	void SetCppDoubleValue(int32 InLoop, ATestActor* InObject, double InValue);

	void GetCppDoubleValue(int32 InLoop, const ATestActor* InObject);

	void SetCppNameValue(int32 InLoop, ATestActor* InObject, const FName& InValue);

	void GetCppNameValue(int32 InLoop, const ATestActor* InObject);

	void SetCppTextValue(int32 InLoop, ATestActor* InObject, const FText& InValue);

	void GetCppTextValue(int32 InLoop, const ATestActor* InObject);

	void SetCppStringValue(int32 InLoop, ATestActor* InObject, const FString& InValue);

	void GetCppStringValue(int32 InLoop, const ATestActor* InObject);

	void SetCppEnumValue(int32 InLoop, ATestActor* InObject, ETestEnum InValue);

	void GetCppEnumValue(int32 InLoop, const ATestActor* InObject);

	void SetCppEnumClassValue(int32 InLoop, ATestActor* InObject, ETestEnumClass InValue);

	void GetCppEnumClassValue(int32 InLoop, const ATestActor* InObject);

	void SetCppStructValue(int32 InLoop, ATestActor* InObject, const FTestStruct& InValue);

	void GetCppStructValue(int32 InLoop, const ATestActor* InObject);

	void SetCppObjectValue(int32 InLoop, ATestActor* InObject, ATestActor* InValue);

	void GetCppObjectValue(int32 InLoop, const ATestActor* InObject);

	void SetCppClassValue(int32 InLoop, ATestActor* InObject, UClass* InValue);

	void GetCppClassValue(int32 InLoop, const ATestActor* InObject);

	void SetCppInterfaceValue(int32 InLoop, ATestActor* InObject, const TScriptInterface<ITestInterface>& InValue);

	void GetCppInterfaceValue(int32 InLoop, const ATestActor* InObject);

	void SetCppArrayValue(int32 InLoop, ATestActor* InObject, const TArray<int32>& InValue);

	void GetCppArrayValue(int32 InLoop, const ATestActor* InObject);

	void SetCppArrayElement(int32 InLoop, ATestActor* InObject, int32 InIndex, int32 InValue);

	void GetCppArrayElement(int32 InLoop, const ATestActor* InObject, int32 InIndex);

	void SetCppSetValue(int32 InLoop, ATestActor* InObject, const TSet<int32>& InValue);

	void GetCppSetValue(int32 InLoop, const ATestActor* InObject);

	void SetCppMapValue(int32 InLoop, ATestActor* InObject, const TMap<int32, int32>& InValue);

	void GetCppMapValue(int32 InLoop, const ATestActor* InObject);

	void SetCppMapElement(int32 InLoop, ATestActor* InObject, int32 InIndex, int32 InValue);

	void GetCppMapElement(int32 InLoop, const ATestActor* InObject, int32 InIndex);

	void StaticCppFunction(int32 InLoop);

	void MemberCppFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppBoolValueFunction(int32 InLoop, ATestActor* InObject, bool InValue);

	void GetCppBoolValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppInt8ValueFunction(int32 InLoop, ATestActor* InObject, int8 InValue);

	void GetCppInt8ValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppInt16ValueFunction(int32 InLoop, ATestActor* InObject, int16 InValue);

	void GetCppInt16ValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppInt32ValueFunction(int32 InLoop, ATestActor* InObject, int32 InValue);

	void GetCppInt32ValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppInt64ValueFunction(int32 InLoop, ATestActor* InObject, int64 InValue);

	void GetCppInt64ValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppUInt8ValueFunction(int32 InLoop, ATestActor* InObject, uint8 InValue);

	void GetCppUInt8ValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppUInt16ValueFunction(int32 InLoop, ATestActor* InObject, uint16 InValue);

	void GetCppUInt16ValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppUInt32ValueFunction(int32 InLoop, ATestActor* InObject, uint32 InValue);

	void GetCppUInt32ValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppUInt64ValueFunction(int32 InLoop, ATestActor* InObject, uint64 InValue);

	void GetCppUInt64ValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppFloatValueFunction(int32 InLoop, ATestActor* InObject, float InValue);

	void GetCppFloatValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppDoubleValueFunction(int32 InLoop, ATestActor* InObject, double InValue);

	void GetCppDoubleValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppNameValueFunction(int32 InLoop, ATestActor* InObject, const FName& InValue);

	void GetCppNameValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppTextValueFunction(int32 InLoop, ATestActor* InObject, const FText& InValue);

	void GetCppTextValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppStringValueFunction(int32 InLoop, ATestActor* InObject, const FString& InValue);

	void GetCppStringValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppEnumValueFunction(int32 InLoop, ATestActor* InObject, ETestEnum InValue);

	void GetCppEnumValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppEnumClassValueFunction(int32 InLoop, ATestActor* InObject, ETestEnumClass InValue);

	void GetCppEnumClassValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppStructValueFunction(int32 InLoop, ATestActor* InObject, const FTestStruct& InValue);

	void GetCppStructValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppObjectValueFunction(int32 InLoop, ATestActor* InObject, ATestActor* InValue);

	void GetCppObjectValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppClassValueFunction(int32 InLoop, ATestActor* InObject, UClass* InValue);

	void GetCppClassValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppInterfaceValueFunction(int32 InLoop, ATestActor* InObject,
	                                  const TScriptInterface<ITestInterface>& InValue);

	void GetCppInterfaceValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppArrayValueFunction(int32 InLoop, ATestActor* InObject, const TArray<int32>& InValue);

	void GetCppArrayValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppSetValueFunction(int32 InLoop, ATestActor* InObject, const TSet<int32>& InValue);

	void GetCppSetValueFunction(int32 InLoop, const ATestActor* InObject);

	void SetCppMapValueFunction(int32 InLoop, ATestActor* InObject, const TMap<int32, int32>& InValue);

	void GetCppMapValueFunction(int32 InLoop, const ATestActor* InObject);

private:
	void SetBPBoolValue(int32 InLoop, AActor* InObject, bool InValue);

	void GetBPBoolValue(int32 InLoop, const AActor* InObject);

	void SetBPInt32Value(int32 InLoop, AActor* InObject, int32 InValue);

	void GetBPInt32Value(int32 InLoop, const AActor* InObject);

	void SetBPInt64Value(int32 InLoop, AActor* InObject, int64 InValue);

	void GetBPInt64Value(int32 InLoop, const AActor* InObject);

	void SetBPUInt8Value(int32 InLoop, AActor* InObject, uint8 InValue);

	void GetBPUInt8Value(int32 InLoop, const AActor* InObject);

	void SetBPDoubleValue(int32 InLoop, AActor* InObject, double InValue);

	void GetBPDoubleValue(int32 InLoop, const AActor* InObject);

	void SetBPNameValue(int32 InLoop, AActor* InObject, const FName& InValue);

	void GetBPNameValue(int32 InLoop, const AActor* InObject);

	void SetBPTextValue(int32 InLoop, AActor* InObject, const FText& InValue);

	void GetBPTextValue(int32 InLoop, const AActor* InObject);

	void SetBPStringValue(int32 InLoop, AActor* InObject, const FString& InValue);

	void GetBPStringValue(int32 InLoop, const AActor* InObject);

	void SetBPEnumValue(int32 InLoop, AActor* InObject, uint8 InValue);

	void GetBPEnumValue(int32 InLoop, const AActor* InObject);

	void SetBPStructValue(int32 InLoop, AActor* InObject, const void* InValue);

	void GetBPStructValue(int32 InLoop, const AActor* InObject);

	void SetBPObjectValue(int32 InLoop, AActor* InObject, const AActor* InValue);

	void GetBPObjectValue(int32 InLoop, const AActor* InObject);

	void SetBPClassValue(int32 InLoop, AActor* InObject, const UClass* InValue);

	void GetBPClassValue(int32 InLoop, const AActor* InObject);

	void SetBPInterfaceValue(int32 InLoop, AActor* InObject, const TScriptInterface<IInterface>& InValue);

	void GetBPInterfaceValue(int32 InLoop, const AActor* InObject);

	void SetBPArrayValue(int32 InLoop, AActor* InObject, const TArray<int32>& InValue);

	void GetBPArrayValue(int32 InLoop, const AActor* InObject);

	void SetBPArrayElement(int32 InLoop, AActor* InObject, int32 InIndex, int32 InValue);

	void GetBPArrayElement(int32 InLoop, const AActor* InObject, int32 InIndex);

	void SetBPSetValue(int32 InLoop, AActor* InObject, const TSet<int32>& InValue);

	void GetBPSetValue(int32 InLoop, const AActor* InObject);

	void SetBPMapValue(int32 InLoop, AActor* InObject, const TMap<int32, int32>& InValue);

	void GetBPMapValue(int32 InLoop, const AActor* InObject);

	void SetBPMapElement(int32 InLoop, AActor* InObject, int32 InIndex, int32 InValue);

	void GetBPMapElement(int32 InLoop, const AActor* InObject, int32 InIndex);

	void MemberBPFunction(int32 InLoop, AActor* InObject);

	void SetBPBoolValueFunction(int32 InLoop, AActor* InObject, bool InValue);

	void GetBPBoolValueFunction(int32 InLoop, AActor* InObject);

	void SetBPInt32ValueFunction(int32 InLoop, AActor* InObject, int32 InValue);

	void GetBPInt32ValueFunction(int32 InLoop, AActor* InObject);

	void SetBPInt64ValueFunction(int32 InLoop, AActor* InObject, int64 InValue);

	void GetBPInt64ValueFunction(int32 InLoop, AActor* InObject);

	void SetBPUInt8ValueFunction(int32 InLoop, AActor* InObject, uint8 InValue);

	void GetBPUInt8ValueFunction(int32 InLoop, AActor* InObject);

	void SetBPDoubleValueFunction(int32 InLoop, AActor* InObject, double InValue);

	void GetBPDoubleValueFunction(int32 InLoop, AActor* InObject);

	void SetBPNameValueFunction(int32 InLoop, AActor* InObject, const FName& InValue);

	void GetBPNameValueFunction(int32 InLoop, AActor* InObject);

	void SetBPTextValueFunction(int32 InLoop, AActor* InObject, const FText& InValue);

	void GetBPTextValueFunction(int32 InLoop, AActor* InObject);

	void SetBPStringValueFunction(int32 InLoop, AActor* InObject, const FString& InValue);

	void GetBPStringValueFunction(int32 InLoop, AActor* InObject);

	void SetBPEnumValueFunction(int32 InLoop, AActor* InObject, uint8 InValue);

	void GetBPEnumValueFunction(int32 InLoop, AActor* InObject);

	void SetBPStructValueFunction(int32 InLoop, AActor* InObject, const void* InValue);

	void GetBPStructValueFunction(int32 InLoop, AActor* InObject);

	void SetBPObjectValueFunction(int32 InLoop, AActor* InObject, const AActor* InValue);

	void GetBPObjectValueFunction(int32 InLoop, AActor* InObject);

	void SetBPClassValueFunction(int32 InLoop, AActor* InObject, const UClass* InValue);

	void GetBPClassValueFunction(int32 InLoop, AActor* InObject);

	void SetBPInterfaceValueFunction(int32 InLoop, AActor* InObject, const TScriptInterface<IInterface>& InValue);

	void GetBPInterfaceValueFunction(int32 InLoop, AActor* InObject);

	void SetBPArrayValueFunction(int32 InLoop, AActor* InObject, const TArray<int32>& InValue);

	void GetBPArrayValueFunction(int32 InLoop, AActor* InObject);

	void SetBPSetValueFunction(int32 InLoop, AActor* InObject, const TSet<int32>& InValue);

	void GetBPSetValueFunction(int32 InLoop, AActor* InObject);

	void SetBPMapValueFunction(int32 InLoop, AActor* InObject, const TMap<int32, int32>& InValue);

	void GetBPMapValueFunction(int32 InLoop, AActor* InObject);

private:
	int32 Loop;

	TArray<TPair<FString, double>> Data;
};
