// Fill out your copyright notice in the Description page of Project Settings.


#include "PuerTS/PuerTSSubsystem.h"

UPuerTSSubsystem::UPuerTSSubsystem()
{
	static ConstructorHelpers::FClassFinder<AActor> Blueprint(TEXT("/Game/Blueprints/TypeScript/PuerTSActor"));

	Class = Blueprint.Class;
}

void UPuerTSSubsystem::Test_Implementation(const int32 InLoop)
{
	Super::Test_Implementation(InLoop);
}
