// Copyright Epic Games, Inc. All Rights Reserved.

#include "ScriptPluginCompareGameMode.h"
#include "ScriptPluginCompareCharacter.h"
#include "UObject/ConstructorHelpers.h"

AScriptPluginCompareGameMode::AScriptPluginCompareGameMode()
	: Super()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnClassFinder(TEXT("/Game/FirstPerson/Blueprints/BP_FirstPersonCharacter"));
	DefaultPawnClass = PlayerPawnClassFinder.Class;

}
