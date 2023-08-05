// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "UnLuaInterface.h"
#include "GameFramework/Actor.h"
#include "UnLuaActor.generated.h"

UCLASS()
class SCRIPTPLUGINCOMPARE_API AUnLuaActor : public AActor, public IUnLuaInterface
{
	GENERATED_BODY()

public:
	// Sets default values for this actor's properties
	AUnLuaActor();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:
	// Called every frame
	virtual void Tick(float DeltaTime) override;

	virtual FString GetModuleName_Implementation() const override;
};
