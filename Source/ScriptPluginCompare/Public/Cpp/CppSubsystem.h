// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Subsystems/GameInstanceSubsystem.h"
#include "CppSubsystem.generated.h"

/**
 * 
 */
UCLASS()
class SCRIPTPLUGINCOMPARE_API UCppSubsystem : public UGameInstanceSubsystem
{
	GENERATED_BODY()

public:
	UFUNCTION(BlueprintCallable)
	void Test(int32 InLoop);

	UPROPERTY()
	int32 Loop;
};
