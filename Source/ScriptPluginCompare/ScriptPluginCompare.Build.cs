// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;

public class ScriptPluginCompare : ModuleRules
{
	public ScriptPluginCompare(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;

		PublicDependencyModuleNames.AddRange(new string[] { "Core", "CoreUObject", "Engine", "InputCore", "HeadMountedDisplay", "UnLua" });
	}
}
