// Fill out your copyright notice in the Description page of Project Settings.


#include "UnrealCSharp/UnrealCSharpSubsystem.h"
#include "UnrealCSharp/UnrealCSharpActor.h"

UUnrealCSharpSubsystem::UUnrealCSharpSubsystem()
{
	Class = AUnrealCSharpActor::StaticClass();
}

void UUnrealCSharpSubsystem::Test_Implementation(const int32 InLoop)
{
	Super::Test_Implementation(InLoop);
}
