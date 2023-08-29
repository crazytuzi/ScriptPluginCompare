// Fill out your copyright notice in the Description page of Project Settings.


#include "Cpp/CppSubsystem.h"
#include "Cpp/CppActor.h"

void UCppSubsystem::Test(const int32 InLoop)
{
	Loop = InLoop;

	GetWorld()->SpawnActor<ACppActor>();
}
