// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "TestCase/TestSubsystem.h"
#include "CppSubsystem.generated.h"

/**
 * 
 */
UCLASS()
class SCRIPTPLUGINCOMPARE_API UCppSubsystem : public UTestSubsystem
{
	GENERATED_BODY()

public:
	UCppSubsystem();

public:
	virtual void Test_Implementation(int32 InLoop) override;
};
