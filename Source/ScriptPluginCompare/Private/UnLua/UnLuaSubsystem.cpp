// Fill out your copyright notice in the Description page of Project Settings.


#include "UnLua/UnLuaSubsystem.h"
#include "UnLua/UnLuaActor.h"

void UUnLuaSubsystem::Test(const int32 InLoop)
{
	Loop = InLoop;

	GetWorld()->SpawnActor<AUnLuaActor>();
}
