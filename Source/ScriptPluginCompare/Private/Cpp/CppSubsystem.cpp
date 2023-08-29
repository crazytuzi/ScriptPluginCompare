// Fill out your copyright notice in the Description page of Project Settings.


#include "Cpp/CppSubsystem.h"
#include "Cpp/CppActor.h"

UCppSubsystem::UCppSubsystem()
{
	Class = ACppActor::StaticClass();
}

void UCppSubsystem::Test_Implementation(const int32 InLoop)
{
	Super::Test_Implementation(InLoop);
}
