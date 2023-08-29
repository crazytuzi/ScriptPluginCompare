// Fill out your copyright notice in the Description page of Project Settings.


#include "UnLua/UnLuaSubsystem.h"
#include "UnLua/UnLuaActor.h"

UUnLuaSubsystem::UUnLuaSubsystem()
{
	Class = AUnLuaActor::StaticClass();
}

void UUnLuaSubsystem::Test_Implementation(const int32 InLoop)
{
	Super::Test_Implementation(InLoop);
}
