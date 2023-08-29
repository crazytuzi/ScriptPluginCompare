// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "TestCase/TestSubsystem.h"
#include "BlueprintSubsystem.generated.h"

/**
 * 
 */
UCLASS()
class SCRIPTPLUGINCOMPARE_API UBlueprintSubsystem : public UTestSubsystem
{
	GENERATED_BODY()

public:
	UBlueprintSubsystem();

public:
	virtual void Test_Implementation(int32 InLoop) override;
};
