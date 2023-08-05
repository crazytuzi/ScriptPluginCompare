// Fill out your copyright notice in the Description page of Project Settings.


#include "UnLua/UnLuaActor.h"

// Sets default values
AUnLuaActor::AUnLuaActor()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;
}

// Called when the game starts or when spawned
void AUnLuaActor::BeginPlay()
{
	Super::BeginPlay();
}

// Called every frame
void AUnLuaActor::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}

FString AUnLuaActor::GetModuleName_Implementation() const
{
	return "UnLuaActor";
}
