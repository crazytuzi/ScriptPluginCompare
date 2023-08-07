// Fill out your copyright notice in the Description page of Project Settings.


#include "UnrealCSharp/UnrealCSharpActor.h"

// Sets default values
AUnrealCSharpActor::AUnrealCSharpActor()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;
}

// Called when the game starts or when spawned
void AUnrealCSharpActor::BeginPlay()
{
	Super::BeginPlay();
}

// Called every frame
void AUnrealCSharpActor::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}
