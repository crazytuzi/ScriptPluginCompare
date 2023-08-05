// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "TestInterface.h"
#include "GameFramework/Actor.h"
#include "TestActor.generated.h"

USTRUCT()
struct FTestStruct
{
	GENERATED_BODY()

	UPROPERTY()
	int32 Value;
};

UENUM()
enum ETestEnum
{
	TestEnumZero,
	TestEnumOne
};

UENUM()
enum class ETestEnumClass
{
	TestEnumClassZero,
	TestEnumClassOne
};

UCLASS()
class SCRIPTPLUGINCOMPARE_API ATestActor : public AActor
{
	GENERATED_BODY()

public:
	// Sets default values for this actor's properties
	ATestActor();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:
	// Called every frame
	virtual void Tick(float DeltaTime) override;

public:
	UFUNCTION()
	void SetBoolValueFunction(bool InBoolValue);

	UFUNCTION()
	bool GetBoolValueFunction() const;

	UFUNCTION()
	void SetInt8ValueFunction(int8 InInt8Value);

	UFUNCTION()
	int8 GetInt8ValueFunction() const;

	UFUNCTION()
	void SetInt16ValueFunction(int16 InInt16Value);

	UFUNCTION()
	int16 GetInt16ValueFunction() const;

	UFUNCTION()
	void SetInt32ValueFunction(int32 InInt32Value);

	UFUNCTION()
	int32 GetInt32ValueFunction() const;

	UFUNCTION()
	void SetInt64ValueFunction(int64 InInt64Value);

	UFUNCTION()
	int64 GetInt64ValueFunction() const;

	UFUNCTION()
	void SetUInt8ValueFunction(uint8 InUInt8Value);

	UFUNCTION()
	uint8 GetUInt8ValueFunction() const;

	UFUNCTION()
	void SetUInt16ValueFunction(uint16 InUInt16Value);

	UFUNCTION()
	uint16 GetUInt16ValueFunction() const;

	UFUNCTION()
	void SetUInt32ValueFunction(uint32 InUInt32Value);

	UFUNCTION()
	uint32 GetUInt32ValueFunction() const;

	UFUNCTION()
	void SetUInt64ValueFunction(uint64 InUInt64Value);

	UFUNCTION()
	uint64 GetUInt64ValueFunction() const;

	UFUNCTION()
	void SetFloatValueFunction(float InFloatValue);

	UFUNCTION()
	float GetFloatValueFunction() const;

	UFUNCTION()
	void SetDoubleValueFunction(double InDoubleValue);

	UFUNCTION()
	double GetDoubleValueFunction() const;

	UFUNCTION()
	void SetNameValueFunction(const FName& InNameValue);

	UFUNCTION()
	FName GetNameValueFunction() const;

	UFUNCTION()
	void SetTextValueFunction(const FText& InTextValue);

	UFUNCTION()
	FText GetTextValueFunction();

	UFUNCTION()
	void SetStringValueFunction(const FString& InStringValue);

	UFUNCTION()
	FString GetStringValueFunction() const;

	UFUNCTION()
	void SetEnumValueFunction(ETestEnum InEnumValue);

	UFUNCTION()
	ETestEnum GetEnumValueFunction() const;

	UFUNCTION()
	void SetEnumClassValueFunction(ETestEnumClass InEnumClassValue);

	UFUNCTION()
	ETestEnumClass GetEnumClassValueFunction() const;

	UFUNCTION()
	void SetStructValueFunction(const FTestStruct& InStructValue);

	UFUNCTION()
	FTestStruct GetStructValueFunction() const;

	UFUNCTION()
	void SetObjectValueFunction(ATestActor* InObjectValue);

	UFUNCTION()
	ATestActor* GetObjectValueFunction() const;

	UFUNCTION()
	void SetClassValueFunction(UClass* InClassValue);

	UFUNCTION()
	UClass* GetClassValueFunction() const;

	UFUNCTION()
	void SetInterfaceValueFunction(TScriptInterface<ITestInterface> InInterfaceValue);

	UFUNCTION()
	TScriptInterface<ITestInterface> GetInterfaceValueFunction() const;

	UFUNCTION()
	void SetArrayValueFunction(const TArray<int32>& InArrayValue);

	UFUNCTION()
	TArray<int32> GetArrayValueFunction() const;

	UFUNCTION()
	void SetSetValueFunction(const TSet<int32>& InSetValue);

	UFUNCTION()
	TSet<int32> GetSetValueFunction() const;

	UFUNCTION()
	void SetMapValueFunction(const TMap<int32, int32>& InMapValue);

	UFUNCTION()
	TMap<int32, int32> GetMapValueFunction();

public:
	UPROPERTY()
	bool BoolValue;

	UPROPERTY()
	int8 Int8Value;

	UPROPERTY()
	int16 Int16Value;

	UPROPERTY()
	int32 Int32Value;

	UPROPERTY()
	int64 Int64Value;

	UPROPERTY()
	uint8 UInt8Value;

	UPROPERTY()
	uint16 UInt16Value;

	UPROPERTY()
	uint32 UInt32Value;

	UPROPERTY()
	uint64 UInt64Value;

	UPROPERTY()
	float FloatValue;

	UPROPERTY()
	double DoubleValue;

	UPROPERTY()
	FName NameValue;

	UPROPERTY()
	FText TextValue;

	UPROPERTY()
	FString StringValue;

	UPROPERTY()
	TEnumAsByte<ETestEnum> EnumValue;

	UPROPERTY()
	ETestEnumClass EnumClassValue;

	UPROPERTY()
	FTestStruct StructValue;

	UPROPERTY()
	ATestActor* ObjectValue;

	UPROPERTY()
	UClass* ClassValue;

	UPROPERTY()
	TScriptInterface<ITestInterface> InterfaceValue;

	UPROPERTY()
	TArray<int32> ArrayValue;

	UPROPERTY()
	TSet<int32> SetValue;

	UPROPERTY()
	TMap<int32, int32> MapValue;
};
