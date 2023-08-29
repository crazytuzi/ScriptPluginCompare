// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "TestCase/TestSubsystem.h"
#include "UnLuaSubsystem.generated.h"

/**
 * 
 */
UCLASS()
class SCRIPTPLUGINCOMPARE_API UUnLuaSubsystem : public UTestSubsystem
{
	GENERATED_BODY()

public:
	UUnLuaSubsystem();

public:
	virtual void Test_Implementation(int32 InLoop) override;
};
