// Fill out your copyright notice in the Description page of Project Settings.


#include "Blueprint/BlueprintSubsystem.h"

UBlueprintSubsystem::UBlueprintSubsystem()
{
	static ConstructorHelpers::FClassFinder<AActor> Blueprint(TEXT("/Game/FirstPerson/Blueprints/BP_BlueprintActor"));

	Class = Blueprint.Class;
}

void UBlueprintSubsystem::Test(const int32 InLoop)
{
	Loop = InLoop;

	GetWorld()->SpawnActor<AActor>(Class);
}
