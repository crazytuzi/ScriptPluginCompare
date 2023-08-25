local M = UnLua.Class()

function M:Empty()
end

-- Empty
function M:EmptyFunction(InLoop)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        self:Empty()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "EmptyFunction",
        ["Time"] = TotalSeconds
    })
end

function M:Add(A, B)
    local Value = A + B;
end

-- Add
function M:AddFunction(InLoop)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        self:Add(1, 1)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "AddFunction",
        ["Time"] = TotalSeconds
    })

end

function M:Subtract(A, B)
    local Value = A - B;
end

-- Subtract
function M:SubtractFunction(InLoop)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        self:Subtract(1, 1)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SubtractFunction",
        ["Time"] = TotalSeconds
    })
end

function M:Multiply(A, B)
    local Value = A * B;
end

-- Multiply
function M:MultiplyFunction(InLoop)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        self:Multiply(1, 1)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "MultiplyFunction",
        ["Time"] = TotalSeconds
    })
end

function M:Divide(A, B)
    local Value = A / B;
end

-- Divide
function M:DivideFunction(InLoop)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        self:Divide(1, 1)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "DivideFunction",
        ["Time"] = TotalSeconds
    })
end

-- Bool
function M:SetCppBoolValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.BoolValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppBoolValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppBoolValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.BoolValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppBoolValue",
        ["Time"] = TotalSeconds
    })
end

-- Int8
function M:SetCppInt8Value(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.Int8Value = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppInt8Value",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppInt8Value(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.Int8Value
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppInt8Value",
        ["Time"] = TotalSeconds
    })
end

-- Int16
function M:SetCppInt16Value(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.Int16Value = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppInt16Value",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppInt16Value(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.Int16Value
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppInt16Value",
        ["Time"] = TotalSeconds
    })
end

-- Int32
function M:SetCppInt32Value(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.Int32Value = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppInt32Value",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppInt32Value(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.Int32Value
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppInt32Value",
        ["Time"] = TotalSeconds
    })
end

-- Int64
function M:SetCppInt64Value(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.Int64Value = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppInt64Value",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppInt64Value(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.Int64Value
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppInt64Value",
        ["Time"] = TotalSeconds
    })
end

-- UInt8
function M:SetCppUInt8Value(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.UInt8Value = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppUInt8Value",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppUInt8Value(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.UInt8Value
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppUInt8Value",
        ["Time"] = TotalSeconds
    })
end

-- UInt16
function M:SetCppUInt16Value(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.UInt16Value = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppUInt16Value",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppUInt16Value(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.UInt16Value
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppUInt16Value",
        ["Time"] = TotalSeconds
    })
end

-- UInt32
function M:SetCppUInt32Value(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.UInt32Value = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppUInt32Value",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppUInt32Value(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.UInt32Value
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppUInt32Value",
        ["Time"] = TotalSeconds
    })
end

-- UInt64
function M:SetCppUInt64Value(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.UInt64Value = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppUInt64Value",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppUInt64Value(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.UInt64Value
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppUInt64Value",
        ["Time"] = TotalSeconds
    })
end

-- Float
function M:SetCppFloatValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.FloatValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppFloatValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppFloatValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.FloatValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppFloatValue",
        ["Time"] = TotalSeconds
    })
end

-- Double
function M:SetCppDoubleValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.DoubleValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppDoubleValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppDoubleValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.DoubleValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppDoubleValue",
        ["Time"] = TotalSeconds
    })
end

-- FName
function M:SetCppNameValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.NameValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppNameValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppNameValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.NameValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppNameValue",
        ["Time"] = TotalSeconds
    })
end

-- FText
function M:SetCppTextValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.TextValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppTextValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppTextValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.TextValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppTextValue",
        ["Time"] = TotalSeconds
    })
end

-- FString
function M:SetCppStringValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.StringValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppStringValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppStringValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.StringValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppStringValue",
        ["Time"] = TotalSeconds
    })
end

-- UEnum
function M:SetCppEnumValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.EnumValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppEnumValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppEnumValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.EnumValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppEnumValue",
        ["Time"] = TotalSeconds
    })
end

-- UEnum Class
function M:SetCppEnumClassValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.EnumClassValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppEnumClassValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppEnumClassValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.EnumClassValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppEnumClassValue",
        ["Time"] = TotalSeconds
    })
end

-- UStruct
function M:SetCppStructValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.StructValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppStructValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppStructValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.StructValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppStructValue",
        ["Time"] = TotalSeconds
    })
end

-- UObject
function M:SetCppObjectValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.ObjectValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppObjectValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppObjectValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.ObjectValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppObjectValue",
        ["Time"] = TotalSeconds
    })
end

-- UClass
function M:SetCppClassValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.ClassValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppClassValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppClassValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.ClassValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppClassValue",
        ["Time"] = TotalSeconds
    })
end

-- UInterface 
function M:SetCppInterfaceValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.InterfaceValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppInterfaceValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppInterfaceValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.InterfaceValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppInterfaceValue",
        ["Time"] = TotalSeconds
    })
end

-- TArray
function M:SetCppArrayValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.ArrayValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppArrayValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppArrayValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.ArrayValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppArrayValue",
        ["Time"] = TotalSeconds
    })
end

-- TArray Element
function M:SetCppArrayElement(InLoop, InObject, InIndex, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.ArrayValue[InIndex] = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppArrayElement",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppArrayElement(InLoop, InObject, InIndex)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.ArrayValue[InIndex]
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppArrayElement",
        ["Time"] = TotalSeconds
    })
end

-- TSet
function M:SetCppSetValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.SetValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppSetValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppSetValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.SetValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppSetValue",
        ["Time"] = TotalSeconds
    })
end

-- TMap
function M:SetCppMapValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.MapValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppMapValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppMapValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.MapValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppMapValue",
        ["Time"] = TotalSeconds
    })
end

-- TMap Element
function M:SetCppMapElement(InLoop, InObject, InIndex, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.MapValue:Add(InIndex, InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppMapElement",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppMapElement(InLoop, InObject, InIndex)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.MapValue:Find(InIndex)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppMapElement",
        ["Time"] = TotalSeconds
    })
end

-- Static
function M:StaticCppFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.StaticFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "StaticCppFunction",
        ["Time"] = TotalSeconds
    })
end

-- Member
function M:MemberCppFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:MemberFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "MemberCppFunction",
        ["Time"] = TotalSeconds
    })
end

-- Bool
function M:SetCppBoolValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetBoolValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppBoolValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppBoolValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetBoolValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppBoolValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- Int8
function M:SetCppInt8ValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetInt8ValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppInt8ValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppInt8ValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetInt8ValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppInt8ValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- Int16
function M:SetCppInt16ValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetInt16ValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppInt16ValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppInt16ValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetInt16ValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppInt16ValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- Int32
function M:SetCppInt32ValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetInt32ValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppInt32ValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppInt32ValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetInt32ValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppInt32ValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- Int64
function M:SetCppInt64ValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetInt64ValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppInt64ValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppInt64ValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetInt64ValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppInt64ValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UInt8
function M:SetCppUInt8ValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetUInt8ValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppUInt8ValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppUInt8ValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetUInt8ValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppUInt8ValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UInt16
function M:SetCppUInt16ValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetUInt16ValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppUInt16ValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppUInt16ValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetUInt16ValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppUInt16ValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UInt32
function M:SetCppUInt32ValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetUInt32ValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppUInt32ValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppUInt32ValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetUInt32ValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppUInt32ValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UInt64
function M:SetCppUInt64ValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetUInt64ValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppUInt64ValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppUInt64ValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetUInt64ValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppUInt64ValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- Float
function M:SetCppFloatValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetFloatValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppFloatValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppFloatValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetFloatValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppFloatValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- Double
function M:SetCppDoubleValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetDoubleValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppDoubleValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppDoubleValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetDoubleValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppDoubleValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- FName
function M:SetCppNameValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetNameValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppNameValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppNameValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetNameValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppNameValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- FText
function M:SetCppTextValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetTextValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppTextValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppTextValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetTextValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppTextValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- FString
function M:SetCppStringValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetStringValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppStringValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppStringValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetStringValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppStringValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UEnum
function M:SetCppEnumValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetEnumValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppEnumValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppEnumValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetEnumValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppEnumValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UEnum Class
function M:SetCppEnumClassValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetEnumClassValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppEnumClassValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppEnumClassValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetEnumClassValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppEnumClassValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UStruct
function M:SetCppStructValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetStructValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppStructValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppStructValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetStructValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppStructValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UObject
function M:SetCppObjectValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetObjectValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppObjectValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppObjectValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetObjectValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppObjectValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UClass
function M:SetCppClassValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetClassValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppClassValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppClassValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetClassValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppClassValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UInterface 
function M:SetCppInterfaceValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetInterfaceValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppInterfaceValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppInterfaceValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetInterfaceValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppInterfaceValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- TArray
function M:SetCppArrayValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetArrayValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppArrayValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppArrayValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetArrayValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppArrayValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- TSet
function M:SetCppSetValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetSetValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppSetValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppSetValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetSetValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppSetValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- TMap
function M:SetCppMapValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetMapValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetCppMapValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetCppMapValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetMapValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetCppMapValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- Bool
function M:SetBPBoolValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.BoolValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPBoolValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPBoolValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.BoolValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPBoolValue",
        ["Time"] = TotalSeconds
    })
end

-- Int32
function M:SetBPInt32Value(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.Int32Value = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPInt32Value",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPInt32Value(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.Int32Value
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPInt32Value",
        ["Time"] = TotalSeconds
    })
end

-- Int64
function M:SetBPInt64Value(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.Int64Value = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPInt64Value",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPInt64Value(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.Int64Value
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPInt64Value",
        ["Time"] = TotalSeconds
    })
end

-- UInt8
function M:SetBPUInt8Value(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.UInt8Value = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPUInt8Value",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPUInt8Value(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.UInt8Value
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPUInt8Value",
        ["Time"] = TotalSeconds
    })
end

-- Double
function M:SetBPDoubleValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.DoubleValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPDoubleValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPDoubleValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.DoubleValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPDoubleValue",
        ["Time"] = TotalSeconds
    })
end

-- FName
function M:SetBPNameValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.NameValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPNameValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPNameValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.NameValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPNameValue",
        ["Time"] = TotalSeconds
    })
end

-- FText
function M:SetBPTextValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.TextValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPTextValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPTextValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.TextValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPTextValue",
        ["Time"] = TotalSeconds
    })
end

-- FString
function M:SetBPStringValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.StringValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPStringValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPStringValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.StringValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPStringValue",
        ["Time"] = TotalSeconds
    })
end

-- UEnum
function M:SetBPEnumValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.EnumValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPEnumValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPEnumValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.EnumValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPEnumValue",
        ["Time"] = TotalSeconds
    })
end

-- UStruct
function M:SetBPStructValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.StructValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPStructValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPStructValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.StructValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPStructValue",
        ["Time"] = TotalSeconds
    })
end

-- UObject
function M:SetBPObjectValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.ObjectValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPObjectValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPObjectValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.ObjectValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPObjectValue",
        ["Time"] = TotalSeconds
    })
end

-- UClass
function M:SetBPClassValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.ClassValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPClassValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPClassValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.ClassValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPClassValue",
        ["Time"] = TotalSeconds
    })
end

-- UInterface 
function M:SetBPInterfaceValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.InterfaceValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPInterfaceValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPInterfaceValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.InterfaceValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPInterfaceValue",
        ["Time"] = TotalSeconds
    })
end

-- TArray
function M:SetBPArrayValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.ArrayValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPArrayValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPArrayValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.ArrayValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPArrayValue",
        ["Time"] = TotalSeconds
    })
end

-- TArray Element
function M:SetBPArrayElement(InLoop, InObject, InIndex, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.ArrayValue[InIndex] = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPArrayElement",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPArrayElement(InLoop, InObject, InIndex)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.ArrayValue[InIndex]
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPArrayElement",
        ["Time"] = TotalSeconds
    })
end

-- TSet
function M:SetBPSetValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.SetValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPSetValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPSetValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.SetValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPSetValue",
        ["Time"] = TotalSeconds
    })
end

-- TMap
function M:SetBPMapValue(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.MapValue = InValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPMapValue",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPMapValue(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.MapValue
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPMapValue",
        ["Time"] = TotalSeconds
    })
end

-- TMap Element
function M:SetBPMapElement(InLoop, InObject, InIndex, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject.MapValue:Add(InIndex, InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPMapElement",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPMapElement(InLoop, InObject, InIndex)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject.MapValue:Find(InIndex)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPMapElement",
        ["Time"] = TotalSeconds
    })
end

-- Member
function M:MemberBPFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:MemberFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "MemberBPFunction",
        ["Time"] = TotalSeconds
    })
end

-- Bool
function M:SetBPBoolValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetBoolValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPBoolValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPBoolValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetBoolValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPBoolValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- Int32
function M:SetBPInt32ValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetInt32ValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPInt32ValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPInt32ValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetInt32ValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPInt32ValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- Int64
function M:SetBPInt64ValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetInt64ValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPInt64ValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPInt64ValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetInt64ValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPInt64ValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UInt8
function M:SetBPUInt8ValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetUInt8ValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPUInt8ValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPUInt8ValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetUInt8ValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPUInt8ValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- Double
function M:SetBPDoubleValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetDoubleValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPDoubleValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPDoubleValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetDoubleValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPDoubleValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- FName
function M:SetBPNameValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetNameValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPNameValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPNameValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetNameValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPNameValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- FText
function M:SetBPTextValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetTextValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPTextValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPTextValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetTextValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPTextValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- FString
function M:SetBPStringValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetStringValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPStringValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPStringValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetStringValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPStringValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UEnum
function M:SetBPEnumValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetEnumValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPEnumValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPEnumValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetEnumValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPEnumValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UStruct
function M:SetBPStructValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetStructValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPStructValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPStructValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetStructValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPStructValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UObject
function M:SetBPObjectValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetObjectValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPObjectValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPObjectValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetObjectValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPObjectValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UClass
function M:SetBPClassValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetClassValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPClassValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPClassValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetClassValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPClassValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- UInterface 
function M:SetBPInterfaceValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetInterfaceValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPInterfaceValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPInterfaceValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetInterfaceValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPInterfaceValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- TArray
function M:SetBPArrayValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetArrayValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPArrayValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPArrayValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetArrayValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPArrayValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- TSet
function M:SetBPSetValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetSetValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPSetValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPSetValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetSetValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPSetValueFunction",
        ["Time"] = TotalSeconds
    })
end

-- TMap
function M:SetBPMapValueFunction(InLoop, InObject, InValue)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        InObject:SetMapValueFunction(InValue)
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "SetBPMapValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:GetBPMapValueFunction(InLoop, InObject)
    local Start = UE.UKismetMathLibrary.Now()

    for i = 0, InLoop do
        local Value = InObject:GetMapValueFunction()
    end

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = "GetBPMapValueFunction",
        ["Time"] = TotalSeconds
    })
end

function M:TestSelf()
    local Loop = self.Loop

    -- Empty
    self:EmptyFunction(Loop)

    -- Add
    self:AddFunction(Loop)

    -- Subtract
    self:SubtractFunction(Loop)

    -- Multiply
    self:MultiplyFunction(Loop)

    -- Divide
    self:DivideFunction(Loop)
end

function M:TestCpp()
    local Loop = self.Loop

    local TestActor = self:GetWorld():SpawnActor(UE.ATestActor)

    local TestClass = TestActor:GetClass()

    local TestInterface = TestActor.InterfaceValue

    local TestStruct = UE.FTestStruct()

    TestStruct.Value = 1

    local TestEnum = UE.ETestEnum.TestEnumOne

    local TestEnumClass = UE.ETestEnumClass.TestEnumClassOne

    local TestArray = UE.TArray(0)

    TestArray:Add(1)

    local TestSet = UE.TSet(0)

    TestSet:Add(1)

    local TestMap = UE.TMap(0, 0)

    TestMap:Add(0, 1)

    -- Bool
    self:SetCppBoolValue(Loop, TestActor, true)

    self:GetCppBoolValue(Loop, TestActor)

    -- Int8
    self:SetCppInt8Value(Loop, TestActor, 1)

    self:GetCppInt8Value(Loop, TestActor)

    -- Int16
    self:SetCppInt16Value(Loop, TestActor, 1)

    self:GetCppInt16Value(Loop, TestActor)

    -- Int32
    self:SetCppInt32Value(Loop, TestActor, 1)

    self:GetCppInt32Value(Loop, TestActor)

    -- Int64
    self:SetCppInt64Value(Loop, TestActor, 1)

    self:GetCppInt64Value(Loop, TestActor)

    -- UInt8
    self:SetCppUInt8Value(Loop, TestActor, 1)

    self:GetCppUInt8Value(Loop, TestActor)

    -- UInt16
    self:SetCppUInt16Value(Loop, TestActor, 1)

    self:GetCppUInt16Value(Loop, TestActor)

    -- UInt32
    self:SetCppUInt32Value(Loop, TestActor, 1)

    self:GetCppUInt32Value(Loop, TestActor)

    -- UInt64
    self:SetCppUInt64Value(Loop, TestActor, 1)

    self:GetCppUInt64Value(Loop, TestActor)

    -- Float
    self:SetCppFloatValue(Loop, TestActor, 1.0)

    self:GetCppFloatValue(Loop, TestActor)

    -- Double
    self:SetCppDoubleValue(Loop, TestActor, 1.0)

    self:GetCppDoubleValue(Loop, TestActor)

    -- FName
    self:SetCppNameValue(Loop, TestActor, "Name")

    self:GetCppNameValue(Loop, TestActor)

    -- FText
    self:SetCppTextValue(Loop, TestActor, "Text")

    self:GetCppTextValue(Loop, TestActor)

    -- FString
    self:SetCppStringValue(Loop, TestActor, "String")

    self:GetCppStringValue(Loop, TestActor)

    -- UEnum
    self:SetCppEnumValue(Loop, TestActor, TestEnum)

    self:GetCppEnumValue(Loop, TestActor)

    -- UEnum Class
    self:SetCppEnumClassValue(Loop, TestActor, TestEnumClass)

    self:GetCppEnumClassValue(Loop, TestActor)

    -- UStruct
    self:SetCppStructValue(Loop, TestActor, TestStruct)

    self:GetCppStructValue(Loop, TestActor)

    -- UObject
    self:SetCppObjectValue(Loop, TestActor, TestActor)

    self:GetCppObjectValue(Loop, TestActor)

    -- UClass
    self:SetCppClassValue(Loop, TestActor, TestClass)

    self:GetCppClassValue(Loop, TestActor)

    -- UInterface 
    self:SetCppInterfaceValue(Loop, TestActor, TestInterface)

    self:GetCppInterfaceValue(Loop, TestActor)

    -- TArray
    self:SetCppArrayValue(Loop, TestActor, TestArray)

    self:GetCppArrayValue(Loop, TestActor)

    -- TArray Element
    self:SetCppArrayElement(Loop, TestActor, 1, 1)

    self:GetCppArrayElement(Loop, TestActor, 1)

    -- TSet
    self:SetCppSetValue(Loop, TestActor, TestSet)

    self:GetCppSetValue(Loop, TestActor)

    -- TMap
    self:SetCppMapValue(Loop, TestActor, TestMap)

    self:GetCppMapValue(Loop, TestActor)

    -- TMap Element
    self:SetCppMapElement(Loop, TestActor, 0, 1)

    self:GetCppMapElement(Loop, TestActor, 0)

    -- Static
    self:StaticCppFunction(Loop, TestActor)

    -- Member
    self:MemberCppFunction(Loop, TestActor)

    -- Bool
    self:SetCppBoolValueFunction(Loop, TestActor, true)

    self:GetCppBoolValueFunction(Loop, TestActor)

    -- Int8
    self:SetCppInt8ValueFunction(Loop, TestActor, 1)

    self:GetCppInt8ValueFunction(Loop, TestActor)

    -- Int16
    self:SetCppInt16ValueFunction(Loop, TestActor, 1)

    self:GetCppInt16ValueFunction(Loop, TestActor)

    -- Int32
    self:SetCppInt32ValueFunction(Loop, TestActor, 1)

    self:GetCppInt32ValueFunction(Loop, TestActor)

    -- Int64
    self:SetCppInt64ValueFunction(Loop, TestActor, 1)

    self:GetCppInt64ValueFunction(Loop, TestActor)

    -- UInt8
    self:SetCppUInt8ValueFunction(Loop, TestActor, 1)

    self:GetCppUInt8ValueFunction(Loop, TestActor)

    -- UInt16
    self:SetCppUInt16ValueFunction(Loop, TestActor, 1)

    self:GetCppUInt16ValueFunction(Loop, TestActor)

    -- UInt32
    self:SetCppUInt32ValueFunction(Loop, TestActor, 1)

    self:GetCppUInt32ValueFunction(Loop, TestActor)

    -- UInt64
    self:SetCppUInt64ValueFunction(Loop, TestActor, 1)

    self:GetCppUInt64ValueFunction(Loop, TestActor)

    -- Float
    self:SetCppFloatValueFunction(Loop, TestActor, 1.0)

    self:GetCppFloatValueFunction(Loop, TestActor)

    -- Double
    self:SetCppDoubleValueFunction(Loop, TestActor, 1.0)

    self:GetCppDoubleValueFunction(Loop, TestActor)

    -- FName
    self:SetCppNameValueFunction(Loop, TestActor, "Name")

    self:GetCppNameValueFunction(Loop, TestActor)

    -- FText
    self:SetCppTextValueFunction(Loop, TestActor, "Text")

    self:GetCppTextValueFunction(Loop, TestActor)

    -- FString
    self:SetCppStringValueFunction(Loop, TestActor, "String")

    self:GetCppStringValueFunction(Loop, TestActor)

    -- UEnum
    self:SetCppEnumValueFunction(Loop, TestActor, TestEnum)

    self:GetCppEnumValueFunction(Loop, TestActor)

    -- UEnum Class
    self:SetCppEnumClassValueFunction(Loop, TestActor, TestEnumClass)

    self:GetCppEnumClassValueFunction(Loop, TestActor)

    -- UStruct
    self:SetCppStructValueFunction(Loop, TestActor, TestStruct)

    self:GetCppStructValueFunction(Loop, TestActor)

    -- UObject
    self:SetCppObjectValueFunction(Loop, TestActor, TestActor)

    self:GetCppObjectValueFunction(Loop, TestActor)

    -- UClass
    self:SetCppClassValueFunction(Loop, TestActor, TestClass)

    self:GetCppClassValueFunction(Loop, TestActor)

    -- UInterface 
    self:SetCppInterfaceValueFunction(Loop, TestActor, TestInterface)

    self:GetCppInterfaceValueFunction(Loop, TestActor)

    -- TArray
    self:SetCppArrayValueFunction(Loop, TestActor, TestArray)

    self:GetCppArrayValueFunction(Loop, TestActor)

    -- TSet
    self:SetCppSetValueFunction(Loop, TestActor, TestSet)

    self:GetCppSetValueFunction(Loop, TestActor)

    -- TMap
    self:SetCppMapValueFunction(Loop, TestActor, TestMap)

    self:GetCppMapValueFunction(Loop, TestActor)
end

function M:TestBP()
    local Loop = self.Loop

    local TestActor = self:GetWorld():SpawnActor(UE.UClass.Load(
        "/Game/FirstPerson/Blueprints/BP_TestActor.BP_TestActor_C"))

    local TestClass = TestActor:GetClass()

    local TestInterface = TestActor.InterfaceValue

    local TestStruct = UE.UObject.Load("/Game/FirstPerson/Blueprints/BP_TestStruct.BP_TestStruct")()

    TestStruct.Value = 1

    local TestEnum = UE.UObject.Load("/Game/FirstPerson/Blueprints/BP_TestEnum.BP_TestEnum").TestEnumOne

    local TestArray = UE.TArray(0)

    TestArray:Add(1)

    local TestSet = UE.TSet(0)

    TestSet:Add(1)

    local TestMap = UE.TMap(0, 0)

    TestMap:Add(0, 1)

    -- Bool
    self:SetBPBoolValue(Loop, TestActor, true)

    self:GetBPBoolValue(Loop, TestActor)

    -- Int32
    self:SetBPInt32Value(Loop, TestActor, 1)

    self:GetBPInt32Value(Loop, TestActor)

    -- Int64
    self:SetBPInt64Value(Loop, TestActor, 1)

    self:GetBPInt64Value(Loop, TestActor)

    -- UInt8
    self:SetBPUInt8Value(Loop, TestActor, 1)

    self:GetBPUInt8Value(Loop, TestActor)

    -- Double
    self:SetBPDoubleValue(Loop, TestActor, 1.0)

    self:GetBPDoubleValue(Loop, TestActor)

    -- FName
    self:SetBPNameValue(Loop, TestActor, "Name")

    self:GetBPNameValue(Loop, TestActor)

    -- FText
    self:SetBPTextValue(Loop, TestActor, "Text")

    self:GetBPTextValue(Loop, TestActor)

    -- FString
    self:SetBPStringValue(Loop, TestActor, "String")

    self:GetBPStringValue(Loop, TestActor)

    -- UEnum
    self:SetBPEnumValue(Loop, TestActor, TestEnum)

    self:GetBPEnumValue(Loop, TestActor)

    -- UStruct
    self:SetBPStructValue(Loop, TestActor, TestStruct)

    self:GetBPStructValue(Loop, TestActor)

    -- UObject
    self:SetBPObjectValue(Loop, TestActor, TestActor)

    self:GetBPObjectValue(Loop, TestActor)

    -- UClass
    self:SetBPClassValue(Loop, TestActor, TestClass)

    self:GetBPClassValue(Loop, TestActor)

    -- UInterface 
    self:SetBPInterfaceValue(Loop, TestActor, TestInterface)

    self:GetBPInterfaceValue(Loop, TestActor)

    -- TArray
    self:SetBPArrayValue(Loop, TestActor, TestArray)

    self:GetBPArrayValue(Loop, TestActor)

    -- TArray Element
    self:SetBPArrayElement(Loop, TestActor, 1, 1)

    self:GetBPArrayElement(Loop, TestActor, 1)

    -- TSet
    self:SetBPSetValue(Loop, TestActor, TestSet)

    self:GetBPSetValue(Loop, TestActor)

    -- TMap
    self:SetBPMapValue(Loop, TestActor, TestMap)

    self:GetBPMapValue(Loop, TestActor)

    -- TMap Element
    self:SetBPMapElement(Loop, TestActor, 0, 1)

    self:GetBPMapElement(Loop, TestActor, 0)

    -- Member
    self:MemberBPFunction(Loop, TestActor)

    -- Bool
    self:SetBPBoolValueFunction(Loop, TestActor, true)

    self:GetBPBoolValueFunction(Loop, TestActor)

    -- Int32
    self:SetBPInt32ValueFunction(Loop, TestActor, 1)

    self:GetBPInt32ValueFunction(Loop, TestActor)

    -- Int64
    self:SetBPInt64ValueFunction(Loop, TestActor, 1)

    self:GetBPInt64ValueFunction(Loop, TestActor)

    -- UInt8
    self:SetBPUInt8ValueFunction(Loop, TestActor, 1)

    self:GetBPUInt8ValueFunction(Loop, TestActor)

    -- Double
    self:SetBPDoubleValueFunction(Loop, TestActor, 1.0)

    self:GetBPDoubleValueFunction(Loop, TestActor)

    -- FName
    self:SetBPNameValueFunction(Loop, TestActor, "Name")

    self:GetBPNameValueFunction(Loop, TestActor)

    -- FText
    self:SetBPTextValueFunction(Loop, TestActor, "Text")

    self:GetBPTextValueFunction(Loop, TestActor)

    -- FString
    self:SetBPStringValueFunction(Loop, TestActor, "String")

    self:GetBPStringValueFunction(Loop, TestActor)

    -- UEnum
    self:SetBPEnumValueFunction(Loop, TestActor, TestEnum)

    self:GetBPEnumValueFunction(Loop, TestActor)

    -- UStruct
    self:SetBPStructValueFunction(Loop, TestActor, TestStruct)

    self:GetBPStructValueFunction(Loop, TestActor)

    -- UObject
    self:SetBPObjectValueFunction(Loop, TestActor, TestActor)

    self:GetBPObjectValueFunction(Loop, TestActor)

    -- UClass
    self:SetBPClassValueFunction(Loop, TestActor, TestClass)

    self:GetBPClassValueFunction(Loop, TestActor)

    -- UInterface 
    self:SetBPInterfaceValueFunction(Loop, TestActor, TestInterface)

    self:GetBPInterfaceValueFunction(Loop, TestActor)

    -- TArray
    self:SetBPArrayValueFunction(Loop, TestActor, TestArray)

    self:GetBPArrayValueFunction(Loop, TestActor)

    -- TSet
    self:SetBPSetValueFunction(Loop, TestActor, TestSet)

    self:GetBPSetValueFunction(Loop, TestActor)

    -- TMap
    self:SetBPMapValueFunction(Loop, TestActor, TestMap)

    self:GetBPMapValueFunction(Loop, TestActor)
end

function M:StartTest()
    self.Data = {}
end

function M:ProcessTest()
    self:TestSelf()

    self:TestCpp()

    self:TestBP()
end

function M:EndTest()
    local Value = "Name, Time\n"

    local Now = UE.UKismetMathLibrary.Now()

    local Year, Month, Day, Hour, Minute, Second, Millisecond = UE.UKismetMathLibrary.BreakDateTime(Now)

    for i = 1, #self.Data do
        Value = Value .. self.Data[i]["Name"] .. ", " .. tostring(self.Data[i]["Time"]) .. "\n"
    end

    local File = string.format("UnLua-%s-%s-%d-%d-%d-%d-%d-%d-%d-%d.csv",
        UE.UTestCaseBlueprintFunctionLibrary.GetPlatform(),
        UE.UTestCaseBlueprintFunctionLibrary.GetBuildConfiguration(), self.Loop, Year, Month, Day, Hour, Minute, Second,
        Millisecond)

    UE.UTestCaseBlueprintFunctionLibrary.SaveStringToFile(File, Value)
end

function M:ReceiveBeginPlay()
    local UnLuaSubsystem = UE.USubsystemBlueprintLibrary.GetGameInstanceSubsystem(self, UE.UUnLuaSubsystem)

    self.Loop = UnLuaSubsystem.Loop

    self:StartTest()

    self:ProcessTest()

    self:EndTest()
end

return M
