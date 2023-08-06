// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Kismet/BlueprintFunctionLibrary.h"
#include "TestCaseBlueprintFunctionLibrary.generated.h"

/**
 * 
 */
UCLASS()
class SCRIPTPLUGINCOMPARE_API UTestCaseBlueprintFunctionLibrary : public UBlueprintFunctionLibrary
{
	GENERATED_BODY()

public:
	UFUNCTION()
	static double GetTotalSeconds(const FDateTime& A, const FDateTime& B);

	UFUNCTION()
	static FString GetPlatform();

	UFUNCTION()
	static FString GetBuildConfiguration();

	UFUNCTION()
	static void SaveStringToFile(FString FileName, const FString& String);
};
