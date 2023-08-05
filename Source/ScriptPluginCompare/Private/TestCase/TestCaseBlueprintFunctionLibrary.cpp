// Fill out your copyright notice in the Description page of Project Settings.


#include "TestCase/TestCaseBlueprintFunctionLibrary.h"

double UTestCaseBlueprintFunctionLibrary::GetTotalSeconds(const FDateTime& A, const FDateTime& B)
{
	return (A - B).GetTotalSeconds();
}

void UTestCaseBlueprintFunctionLibrary::SaveStringToFile(FString FileName, const FString& String)
{
	const auto FileManager = &IFileManager::Get();

	FFileHelper::SaveStringToFile(String,
	                              *FPaths::Combine(FPaths::ProjectSavedDir(), FileName),
	                              FFileHelper::EEncodingOptions::ForceUTF8, FileManager,
	                              FILEWRITE_None);
}
