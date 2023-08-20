// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Subsystems/GameInstanceSubsystem.h"
#include "BlueprintSubsystem.generated.h"

/**
 * 
 */
UCLASS()
class SCRIPTPLUGINCOMPARE_API UBlueprintSubsystem : public UGameInstanceSubsystem
{
	GENERATED_BODY()

public:
	UBlueprintSubsystem();

public:
	UFUNCTION(BlueprintCallable)
	void Test(int32 InLoop);

	UPROPERTY(BlueprintReadWrite)
	int32 Loop;

	TSubclassOf<AActor> Class;
};
