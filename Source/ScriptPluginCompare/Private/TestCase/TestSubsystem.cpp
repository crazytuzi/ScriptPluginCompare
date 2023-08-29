// Fill out your copyright notice in the Description page of Project Settings.


#include "TestCase/TestSubsystem.h"

void UTestSubsystem::Test_Implementation(const int32 InLoop)
{
	Loop = InLoop;

	GetWorld()->SpawnActor<AActor>(Class);
}
