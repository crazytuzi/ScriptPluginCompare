// Fill out your copyright notice in the Description page of Project Settings.


#include "UnrealCSharp/UnrealCSharpSubsystem.h"
#include "UnrealCSharp/UnrealCSharpActor.h"

void UUnrealCSharpSubsystem::Test(const int32 InLoop)
{
	Loop = InLoop;

	GetWorld()->SpawnActor<AUnrealCSharpActor>();
}
