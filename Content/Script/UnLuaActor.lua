local M = UnLua.Class()

local function Empty()
end

-- Empty
local function EmptyFunction(InLoop)
    for i = 0, InLoop do
        Empty()
    end
end

local function Add(A, B)
    local Value = A + B;
end

-- Add
local function AddFunction(InLoop)
    for i = 0, InLoop do
        Add(1, 1)
    end
end

local function Subtract(A, B)
    local Value = A - B;
end

-- Subtract
local function SubtractFunction(InLoop)
    for i = 0, InLoop do
        Subtract(1, 1)
    end
end

local function Multiply(A, B)
    local Value = A * B;
end

-- Multiply
local function MultiplyFunction(InLoop)
    for i = 0, InLoop do
        Multiply(1, 1)
    end
end

local function Divide(A, B)
    local Value = A / B;
end

-- Divide
local function DivideFunction(InLoop)
    for i = 0, InLoop do
        Divide(1, 1)
    end
end

-- Bool
local function SetCppBoolValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.BoolValue = InValue
    end
end

local function GetCppBoolValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.BoolValue
    end
end

-- Int8
local function SetCppInt8Value(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.Int8Value = InValue
    end
end

local function GetCppInt8Value(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.Int8Value
    end
end

-- Int16
local function SetCppInt16Value(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.Int16Value = InValue
    end
end

local function GetCppInt16Value(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.Int16Value
    end
end

-- Int32
local function SetCppInt32Value(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.Int32Value = InValue
    end
end

local function GetCppInt32Value(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.Int32Value
    end
end

-- Int64
local function SetCppInt64Value(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.Int64Value = InValue
    end
end

local function GetCppInt64Value(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.Int64Value
    end
end

-- UInt8
local function SetCppUInt8Value(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.UInt8Value = InValue
    end
end

local function GetCppUInt8Value(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.UInt8Value
    end
end

-- UInt16
local function SetCppUInt16Value(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.UInt16Value = InValue
    end
end

local function GetCppUInt16Value(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.UInt16Value
    end
end

-- UInt32
local function SetCppUInt32Value(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.UInt32Value = InValue
    end
end

local function GetCppUInt32Value(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.UInt32Value
    end
end

-- UInt64
local function SetCppUInt64Value(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.UInt64Value = InValue
    end
end

local function GetCppUInt64Value(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.UInt64Value
    end
end

-- Float
local function SetCppFloatValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.FloatValue = InValue
    end
end

local function GetCppFloatValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.FloatValue
    end
end

-- Double
local function SetCppDoubleValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.DoubleValue = InValue
    end
end

local function GetCppDoubleValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.DoubleValue
    end
end

-- FName
local function SetCppNameValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.NameValue = InValue
    end
end

local function GetCppNameValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.NameValue
    end
end

-- FText
local function SetCppTextValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.TextValue = InValue
    end
end

local function GetCppTextValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.TextValue
    end
end

-- FString
local function SetCppStringValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.StringValue = InValue
    end
end

local function GetCppStringValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.StringValue
    end
end

-- UEnum
local function SetCppEnumValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.EnumValue = InValue
    end
end

local function GetCppEnumValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.EnumValue
    end
end

-- UEnum Class
local function SetCppEnumClassValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.EnumClassValue = InValue
    end
end

local function GetCppEnumClassValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.EnumClassValue
    end
end

-- UStruct
local function SetCppStructValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.StructValue = InValue
    end
end

local function GetCppStructValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.StructValue
    end
end

-- UObject
local function SetCppObjectValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.ObjectValue = InValue
    end
end

local function GetCppObjectValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.ObjectValue
    end
end

-- UClass
local function SetCppClassValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.ClassValue = InValue
    end
end

local function GetCppClassValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.ClassValue
    end
end

-- UInterface 
local function SetCppInterfaceValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.InterfaceValue = InValue
    end
end

local function GetCppInterfaceValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.InterfaceValue
    end
end

-- TArray
local function SetCppArrayValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.ArrayValue = InValue
    end
end

local function GetCppArrayValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.ArrayValue
    end
end

-- TArray Element
local function SetCppArrayElement(InLoop, InObject, InIndex, InValue)
    for i = 0, InLoop do
        InObject.ArrayValue[InIndex] = InValue
    end
end

local function GetCppArrayElement(InLoop, InObject, InIndex)
    for i = 0, InLoop do
        local Value = InObject.ArrayValue[InIndex]
    end
end

-- TSet
local function SetCppSetValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.SetValue = InValue
    end
end

local function GetCppSetValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.SetValue
    end
end

-- TMap
local function SetCppMapValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.MapValue = InValue
    end
end

local function GetCppMapValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.MapValue
    end
end

-- TMap Element
local function SetCppMapElement(InLoop, InObject, InIndex, InValue)
    for i = 0, InLoop do
        InObject.MapValue:Add(InIndex, InValue)
    end
end

local function GetCppMapElement(InLoop, InObject, InIndex)
    for i = 0, InLoop do
        local Value = InObject.MapValue:Find(InIndex)
    end
end

-- Static
local function StaticCppFunction(InLoop, InObject)
    for i = 0, InLoop do
        InObject.StaticFunction()
    end
end

-- Member
local function MemberCppFunction(InLoop, InObject)
    for i = 0, InLoop do
        InObject:MemberFunction()
    end
end

-- Bool
local function SetCppBoolValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetBoolValueFunction(InValue)
    end
end

local function GetCppBoolValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetBoolValueFunction()
    end
end

-- Int8
local function SetCppInt8ValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetInt8ValueFunction(InValue)
    end
end

local function GetCppInt8ValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetInt8ValueFunction()
    end
end

-- Int16
local function SetCppInt16ValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetInt16ValueFunction(InValue)
    end
end

local function GetCppInt16ValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetInt16ValueFunction()
    end
end

-- Int32
local function SetCppInt32ValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetInt32ValueFunction(InValue)
    end
end

local function GetCppInt32ValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetInt32ValueFunction()
    end
end

-- Int64
local function SetCppInt64ValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetInt64ValueFunction(InValue)
    end
end

local function GetCppInt64ValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetInt64ValueFunction()
    end
end

-- UInt8
local function SetCppUInt8ValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetUInt8ValueFunction(InValue)
    end
end

local function GetCppUInt8ValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetUInt8ValueFunction()
    end
end

-- UInt16
local function SetCppUInt16ValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetUInt16ValueFunction(InValue)
    end
end

local function GetCppUInt16ValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetUInt16ValueFunction()
    end
end

-- UInt32
local function SetCppUInt32ValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetUInt32ValueFunction(InValue)
    end
end

local function GetCppUInt32ValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetUInt32ValueFunction()
    end
end

-- UInt64
local function SetCppUInt64ValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetUInt64ValueFunction(InValue)
    end
end

local function GetCppUInt64ValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetUInt64ValueFunction()
    end
end

-- Float
local function SetCppFloatValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetFloatValueFunction(InValue)
    end
end

local function GetCppFloatValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetFloatValueFunction()
    end
end

-- Double
local function SetCppDoubleValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetDoubleValueFunction(InValue)
    end
end

local function GetCppDoubleValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetDoubleValueFunction()
    end
end

-- FName
local function SetCppNameValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetNameValueFunction(InValue)
    end
end

local function GetCppNameValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetNameValueFunction()
    end
end

-- FText
local function SetCppTextValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetTextValueFunction(InValue)
    end
end

local function GetCppTextValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetTextValueFunction()
    end
end

-- FString
local function SetCppStringValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetStringValueFunction(InValue)
    end
end

local function GetCppStringValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetStringValueFunction()
    end
end

-- UEnum
local function SetCppEnumValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetEnumValueFunction(InValue)
    end
end

local function GetCppEnumValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetEnumValueFunction()
    end
end

-- UEnum Class
local function SetCppEnumClassValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetEnumClassValueFunction(InValue)
    end
end

local function GetCppEnumClassValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetEnumClassValueFunction()
    end
end

-- UStruct
local function SetCppStructValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetStructValueFunction(InValue)
    end
end

local function GetCppStructValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetStructValueFunction()
    end
end

-- UObject
local function SetCppObjectValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetObjectValueFunction(InValue)
    end
end

local function GetCppObjectValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetObjectValueFunction()
    end
end

-- UClass
local function SetCppClassValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetClassValueFunction(InValue)
    end
end

local function GetCppClassValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetClassValueFunction()
    end
end

-- UInterface 
local function SetCppInterfaceValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetInterfaceValueFunction(InValue)
    end
end

local function GetCppInterfaceValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetInterfaceValueFunction()
    end
end

-- TArray
local function SetCppArrayValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetArrayValueFunction(InValue)
    end
end

local function GetCppArrayValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetArrayValueFunction()
    end
end

-- TSet
local function SetCppSetValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetSetValueFunction(InValue)
    end
end

local function GetCppSetValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetSetValueFunction()
    end
end

-- TMap
local function SetCppMapValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetMapValueFunction(InValue)
    end
end

local function GetCppMapValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetMapValueFunction()
    end
end

-- Bool
local function SetBPBoolValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.BoolValue = InValue
    end
end

local function GetBPBoolValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.BoolValue
    end
end

-- Int32
local function SetBPInt32Value(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.Int32Value = InValue
    end
end

local function GetBPInt32Value(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.Int32Value
    end
end

-- Int64
local function SetBPInt64Value(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.Int64Value = InValue
    end
end

local function GetBPInt64Value(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.Int64Value
    end
end

-- UInt8
local function SetBPUInt8Value(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.UInt8Value = InValue
    end
end

local function GetBPUInt8Value(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.UInt8Value
    end
end

-- Double
local function SetBPDoubleValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.DoubleValue = InValue
    end
end

local function GetBPDoubleValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.DoubleValue
    end
end

-- FName
local function SetBPNameValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.NameValue = InValue
    end
end

local function GetBPNameValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.NameValue
    end
end

-- FText
local function SetBPTextValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.TextValue = InValue
    end
end

local function GetBPTextValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.TextValue
    end
end

-- FString
local function SetBPStringValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.StringValue = InValue
    end
end

local function GetBPStringValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.StringValue
    end
end

-- UEnum
local function SetBPEnumValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.EnumValue = InValue
    end
end

local function GetBPEnumValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.EnumValue
    end
end

-- UEnum Class
local function SetBPEnumClassValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.EnumClassValue = InValue
    end
end

local function GetBPEnumClassValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.EnumClassValue
    end
end

-- UStruct
local function SetBPStructValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.StructValue = InValue
    end
end

local function GetBPStructValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.StructValue
    end
end

-- UObject
local function SetBPObjectValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.ObjectValue = InValue
    end
end

local function GetBPObjectValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.ObjectValue
    end
end

-- UClass
local function SetBPClassValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.ClassValue = InValue
    end
end

local function GetBPClassValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.ClassValue
    end
end

-- UInterface 
local function SetBPInterfaceValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.InterfaceValue = InValue
    end
end

local function GetBPInterfaceValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.InterfaceValue
    end
end

-- TArray
local function SetBPArrayValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.ArrayValue = InValue
    end
end

local function GetBPArrayValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.ArrayValue
    end
end

-- TArray Element
local function SetBPArrayElement(InLoop, InObject, InIndex, InValue)
    for i = 0, InLoop do
        InObject.ArrayValue[InIndex] = InValue
    end
end

local function GetBPArrayElement(InLoop, InObject, InIndex)
    for i = 0, InLoop do
        local Value = InObject.ArrayValue[InIndex]
    end
end

-- TSet
local function SetBPSetValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.SetValue = InValue
    end
end

local function GetBPSetValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.SetValue
    end
end

-- TMap
local function SetBPMapValue(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject.MapValue = InValue
    end
end

local function GetBPMapValue(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject.MapValue
    end
end

-- TMap Element
local function SetBPMapElement(InLoop, InObject, InIndex, InValue)
    for i = 0, InLoop do
        InObject.MapValue:Add(InIndex, InValue)
    end
end

local function GetBPMapElement(InLoop, InObject, InIndex)
    for i = 0, InLoop do
        local Value = InObject.MapValue:Find(InIndex)
    end
end

-- Member
local function MemberBPFunction(InLoop, InObject)
    for i = 0, InLoop do
        InObject:MemberFunction()
    end
end

-- Bool
local function SetBPBoolValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetBoolValueFunction(InValue)
    end
end

local function GetBPBoolValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetBoolValueFunction()
    end
end

-- Int32
local function SetBPInt32ValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetInt32ValueFunction(InValue)
    end
end

local function GetBPInt32ValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetInt32ValueFunction()
    end
end

-- Int64
local function SetBPInt64ValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetInt64ValueFunction(InValue)
    end
end

local function GetBPInt64ValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetInt64ValueFunction()
    end
end

-- UInt8
local function SetBPUInt8ValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetUInt8ValueFunction(InValue)
    end
end

local function GetBPUInt8ValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetUInt8ValueFunction()
    end
end

-- Double
local function SetBPDoubleValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetDoubleValueFunction(InValue)
    end
end

local function GetBPDoubleValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetDoubleValueFunction()
    end
end

-- FName
local function SetBPNameValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetNameValueFunction(InValue)
    end
end

local function GetBPNameValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetNameValueFunction()
    end
end

-- FText
local function SetBPTextValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetTextValueFunction(InValue)
    end
end

local function GetBPTextValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetTextValueFunction()
    end
end

-- FString
local function SetBPStringValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetStringValueFunction(InValue)
    end
end

local function GetBPStringValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetStringValueFunction()
    end
end

-- UEnum
local function SetBPEnumValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetEnumValueFunction(InValue)
    end
end

local function GetBPEnumValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetEnumValueFunction()
    end
end

-- UStruct
local function SetBPStructValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetStructValueFunction(InValue)
    end
end

local function GetBPStructValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetStructValueFunction()
    end
end

-- UObject
local function SetBPObjectValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetObjectValueFunction(InValue)
    end
end

local function GetBPObjectValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetObjectValueFunction()
    end
end

-- UClass
local function SetBPClassValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetClassValueFunction(InValue)
    end
end

local function GetBPClassValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetClassValueFunction()
    end
end

-- UInterface 
local function SetBPInterfaceValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetInterfaceValueFunction(InValue)
    end
end

local function GetBPInterfaceValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetInterfaceValueFunction()
    end
end

-- TArray
local function SetBPArrayValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetArrayValueFunction(InValue)
    end
end

local function GetBPArrayValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetArrayValueFunction()
    end
end

-- TSet
local function SetBPSetValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetSetValueFunction(InValue)
    end
end

local function GetBPSetValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetSetValueFunction()
    end
end

-- TMap
local function SetBPMapValueFunction(InLoop, InObject, InValue)
    for i = 0, InLoop do
        InObject:SetMapValueFunction(InValue)
    end
end

local function GetBPMapValueFunction(InLoop, InObject)
    for i = 0, InLoop do
        local Value = InObject:GetMapValueFunction()
    end
end

function M:Exec(InName, InFunction, ...)
    local Start = UE.UKismetMathLibrary.Now()

    InFunction(...)

    local End = UE.UKismetMathLibrary.Now()

    local TotalSeconds = UE.UTestCaseBlueprintFunctionLibrary.GetTotalSeconds(End, Start);

    table.insert(self.Data, {
        ["Name"] = InName,
        ["Time"] = TotalSeconds
    })
end

function M:TestSelf()
    local Loop = self.Loop

    -- Empty
    self:Exec("EmptyFunction", EmptyFunction, Loop)

    -- Add
    self:Exec("AddFunction", AddFunction, Loop)

    -- Subtract
    self:Exec("SubtractFunction", SubtractFunction, Loop)

    -- Multiply
    self:Exec("MultiplyFunction", MultiplyFunction, Loop)

    -- Divide
    self:Exec("DivideFunction", DivideFunction, Loop)
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
    self:Exec("SetCppBoolValue", SetCppBoolValue, Loop, TestActor, true)

    self:Exec("GetCppBoolValue", GetCppBoolValue, Loop, TestActor)

    -- Int8
    self:Exec("SetCppInt8Value", SetCppInt8Value, Loop, TestActor, 1)

    self:Exec("GetCppInt8Value", GetCppInt8Value, Loop, TestActor)

    -- Int16
    self:Exec("SetCppInt16Value", SetCppInt16Value, Loop, TestActor, 1)

    self:Exec("GetCppInt16Value", GetCppInt16Value, Loop, TestActor)

    -- Int32
    self:Exec("SetCppInt32Value", SetCppInt32Value, Loop, TestActor, 1)

    self:Exec("GetCppInt32Value", GetCppInt32Value, Loop, TestActor)

    -- Int64
    self:Exec("SetCppInt64Value", SetCppInt64Value, Loop, TestActor, 1)

    self:Exec("GetCppInt64Value", GetCppInt64Value, Loop, TestActor)

    -- UInt8
    self:Exec("SetCppUInt8Value", SetCppUInt8Value, Loop, TestActor, 1)

    self:Exec("GetCppUInt8Value", GetCppUInt8Value, Loop, TestActor)

    -- UInt16
    self:Exec("SetCppUInt16Value", SetCppUInt16Value, Loop, TestActor, 1)

    self:Exec("GetCppUInt16Value", GetCppUInt16Value, Loop, TestActor)

    -- UInt32
    self:Exec("SetCppUInt32Value", SetCppUInt32Value, Loop, TestActor, 1)

    self:Exec("GetCppUInt32Value", GetCppUInt32Value, Loop, TestActor)

    -- UInt64
    self:Exec("SetCppUInt64Value", SetCppUInt64Value, Loop, TestActor, 1)

    self:Exec("GetCppUInt64Value", GetCppUInt64Value, Loop, TestActor)

    -- Float
    self:Exec("SetCppFloatValue", SetCppFloatValue, Loop, TestActor, 1.0)

    self:Exec("GetCppFloatValue", GetCppFloatValue, Loop, TestActor)

    -- Double
    self:Exec("SetCppDoubleValue", SetCppDoubleValue, Loop, TestActor, 1.0)

    self:Exec("GetCppDoubleValue", GetCppDoubleValue, Loop, TestActor)

    -- FName
    self:Exec("SetCppNameValue", SetCppNameValue, Loop, TestActor, "Name")

    self:Exec("GetCppNameValue", GetCppNameValue, Loop, TestActor)

    -- FText
    self:Exec("SetCppTextValue", SetCppNameValue, Loop, TestActor, "Text")

    self:Exec("GetCppTextValue", GetCppNameValue, Loop, TestActor)

    -- FString
    self:Exec("SetCppStringValue", SetCppStringValue, Loop, TestActor, "String")

    self:Exec("GetCppStringValue", GetCppStringValue, Loop, TestActor)

    -- UEnum
    self:Exec("SetCppEnumValue", SetCppEnumValue, Loop, TestActor, TestEnum)

    self:Exec("GetCppEnumValue", GetCppEnumValue, Loop, TestActor)

    -- UEnum Class
    self:Exec("SetCppEnumClassValue", SetCppEnumClassValue, Loop, TestActor, TestEnumClass)

    self:Exec("GetCppEnumClassValue", GetCppEnumClassValue, Loop, TestActor)

    -- UStruct
    self:Exec("SetCppStructValue", SetCppStructValue, Loop, TestActor, TestStruct)

    self:Exec("GetCppStructValue", GetCppStructValue, Loop, TestActor)

    -- UObject
    self:Exec("SetCppObjectValue", SetCppObjectValue, Loop, TestActor, TestActor)

    self:Exec("GetCppObjectValue", GetCppObjectValue, Loop, TestActor)

    -- UClass
    self:Exec("SetCppClassValue", SetCppClassValue, Loop, TestActor, TestClass)

    self:Exec("GetCppClassValue", GetCppClassValue, Loop, TestActor)

    -- UInterface 
    self:Exec("SetCppInterfaceValue", SetCppInterfaceValue, Loop, TestActor, TestInterface)

    self:Exec("GetCppInterfaceValue", GetCppInterfaceValue, Loop, TestActor)

    -- TArray
    self:Exec("SeCppArrayValue", SetCppArrayValue, Loop, TestActor, TestArray)

    self:Exec("GeCppArrayValue", GetCppArrayValue, Loop, TestActor)

    -- TArray Element
    self:Exec("SetCppArrayElement", SetCppArrayElement, Loop, TestActor, 1, 1)

    self:Exec("GetCppArrayElement", GetCppArrayValue, Loop, TestActor, 1)

    -- TSet
    self:Exec("SetCppSetValue", SetCppSetValue, Loop, TestActor, TestSet)

    self:Exec("GetCppSetValue", GetCppSetValue, Loop, TestActor)

    -- TMap
    self:Exec("SeCppMapValue", SetCppMapValue, Loop, TestActor, TestMap)

    self:Exec("GetCppMapValue", GetCppMapValue, Loop, TestActor)

    -- TMap Element
    self:Exec("SetCppMapElement", SetCppMapElement, Loop, TestActor, 0, 1)

    self:Exec("GetCppMapElement", GetCppMapValue, Loop, TestActor, 0)

    -- Static
    self:Exec("StaticCppFunction", StaticCppFunction, Loop, TestActor)

    -- Member
    self:Exec("MemberCppFunction", MemberCppFunction, Loop, TestActor)

    -- Bool
    self:Exec("SetCppBoolValueFunction", SetCppBoolValueFunction, Loop, TestActor, true)

    self:Exec("GetCppBoolValueFunction", GetCppBoolValueFunction, Loop, TestActor)

    -- Int8
    self:Exec("SetCppInt8ValueFunction", SetCppInt8ValueFunction, Loop, TestActor, 1)

    self:Exec("GetCppInt8ValueFunction", GetCppInt8ValueFunction, Loop, TestActor)

    -- Int16
    self:Exec("SetCppInt16ValueFunction", SetCppInt16ValueFunction, Loop, TestActor, 1)

    self:Exec("GetCppInt16ValueFunction", GetCppInt16ValueFunction, Loop, TestActor)

    -- Int32
    self:Exec("SetCppInt32ValueFunction", SetCppInt32ValueFunction, Loop, TestActor, 1)

    self:Exec("GetCppInt32ValueFunction", GetCppInt32ValueFunction, Loop, TestActor)

    -- Int64
    self:Exec("SetCppInt64ValueFunction", SetCppInt64ValueFunction, Loop, TestActor, 1)

    self:Exec("GetCppInt64ValueFunction", GetCppInt64ValueFunction, Loop, TestActor)

    -- UInt8
    self:Exec("SetCppUInt8ValueFunction", SetCppUInt8ValueFunction, Loop, TestActor, 1)

    self:Exec("GetCppUInt8ValueFunction", GetCppUInt8ValueFunction, Loop, TestActor)

    -- UInt16
    self:Exec("SetCppUInt16ValueFunction", SetCppUInt16ValueFunction, Loop, TestActor, 1)

    self:Exec("GetCppUInt16ValueFunction", GetCppUInt16ValueFunction, Loop, TestActor)

    -- UInt32
    self:Exec("SetCppUInt32ValueFunction", SetCppUInt32ValueFunction, Loop, TestActor, 1)

    self:Exec("GetCppUInt32ValueFunction", GetCppUInt32ValueFunction, Loop, TestActor)

    -- UInt64
    self:Exec("SetCppUInt64ValueFunction", SetCppUInt64ValueFunction, Loop, TestActor, 1)

    self:Exec("GetCppUInt64ValueFunction", GetCppUInt64ValueFunction, Loop, TestActor)

    -- Float
    self:Exec("SetCppFloatValueFunction", SetCppFloatValueFunction, Loop, TestActor, 1.0)

    self:Exec("GetCppFloatValueFunction", GetCppFloatValueFunction, Loop, TestActor)

    -- Double
    self:Exec("SetCppDoubleValueFunction", SetCppDoubleValueFunction, Loop, TestActor, 1.0)

    self:Exec("GetCppDoubleValueFunction", GetCppDoubleValueFunction, Loop, TestActor)

    -- FName
    self:Exec("SetCppNameValueFunction", SetCppNameValueFunction, Loop, TestActor, "Name")

    self:Exec("GetCppNameValueFunction", GetCppNameValueFunction, Loop, TestActor)

    -- FText
    self:Exec("SetCppTextValueFunction", SetCppTextValueFunction, Loop, TestActor, "Text")

    self:Exec("GetCppTextValueFunction", GetCppTextValueFunction, Loop, TestActor)

    -- FString
    self:Exec("SetCppStringValueFunction", SetCppStringValueFunction, Loop, TestActor, "String")

    self:Exec("GetCppStringValueFunction", GetCppStringValueFunction, Loop, TestActor)

    -- UEnum
    self:Exec("SetCppEnumValueFunction", SetCppEnumValueFunction, Loop, TestActor, TestEnum)

    self:Exec("GetCppEnumValueFunction", GetCppEnumValueFunction, Loop, TestActor)

    -- UEnum Class
    self:Exec("SetCppEnumClassValueFunction", SetCppEnumClassValueFunction, Loop, TestActor, TestEnumClass)

    self:Exec("GetCppEnumClassValueFunction", GetCppEnumClassValueFunction, Loop, TestActor)

    -- UStruct
    self:Exec("SetCppStructValueFunction", SetCppStructValueFunction, Loop, TestActor, TestStruct)

    self:Exec("GetCppStructValueFunction", GetCppStructValueFunction, Loop, TestActor)

    -- UObject
    self:Exec("SetCppObjectValueFunction", SetCppObjectValueFunction, Loop, TestActor, TestActor)

    self:Exec("GetCppObjectValueFunction", GetCppObjectValueFunction, Loop, TestActor)

    -- UClass
    self:Exec("SetCppClassValueFunction", SetCppClassValueFunction, Loop, TestActor, TestClass)

    self:Exec("GetCppClassValueFunction", GetCppClassValueFunction, Loop, TestActor)

    -- UInterface 
    self:Exec("SetCppInterfaceValueFunction", SetCppInterfaceValueFunction, Loop, TestActor, TestInterface)

    self:Exec("GetCppInterfaceValueFunction", GetCppInterfaceValueFunction, Loop, TestActor)

    -- TArray
    self:Exec("SetCppArrayValueFunction", SetCppArrayValueFunction, Loop, TestActor, TestArray)

    self:Exec("GetCppArrayValueFunction", GetCppArrayValueFunction, Loop, TestActor)

    -- TSet
    self:Exec("SetCppSetValueFunction", SetCppSetValueFunction, Loop, TestActor, TestSet)

    self:Exec("GetCppSetValueFunction", GetCppSetValueFunction, Loop, TestActor)

    -- TMap
    self:Exec("SetCppMapValueFunction", SetCppMapValueFunction, Loop, TestActor, TestMap)

    self:Exec("GetCppMapValueFunction", GetCppMapValueFunction, Loop, TestActor)
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
    self:Exec("SetBPBoolValue", SetBPBoolValue, Loop, TestActor, true)

    self:Exec("GetBPBoolValue", GetBPBoolValue, Loop, TestActor)

    -- Int32
    self:Exec("SetBPInt32Value", SetBPInt32Value, Loop, TestActor, 1)

    self:Exec("GetBPInt32Value", GetBPInt32Value, Loop, TestActor)

    -- Int64
    self:Exec("SetBPInt64Value", SetBPInt64Value, Loop, TestActor, 1)

    self:Exec("GetBPInt64Value", GetBPInt64Value, Loop, TestActor)

    -- UInt8
    self:Exec("SetBPUInt8Value", SetBPUInt8Value, Loop, TestActor, 1)

    self:Exec("GetBPUInt8Value", GetBPUInt8Value, Loop, TestActor)

    -- Double
    self:Exec("SetBPDoubleValue", SetBPDoubleValue, Loop, TestActor, 1.0)

    self:Exec("GetBPDoubleValue", GetBPDoubleValue, Loop, TestActor)

    -- FName
    self:Exec("SetBPNameValue", SetBPNameValue, Loop, TestActor, "Name")

    self:Exec("GetBPNameValue", GetBPNameValue, Loop, TestActor)

    -- FText
    self:Exec("SetBPTextValue", SetBPNameValue, Loop, TestActor, "Text")

    self:Exec("GetBPTextValue", GetBPNameValue, Loop, TestActor)

    -- FString
    self:Exec("SetBPStringValue", SetBPStringValue, Loop, TestActor, "String")

    self:Exec("GetBPStringValue", GetBPStringValue, Loop, TestActor)

    -- UEnum
    self:Exec("SetBPEnumValue", SetBPEnumValue, Loop, TestActor, TestEnum)

    self:Exec("GetBPEnumValue", GetBPEnumValue, Loop, TestActor)

    -- UEnum Class
    self:Exec("SetBPEnumClassValue", SetBPEnumClassValue, Loop, TestActor, TestEnumClass)

    self:Exec("GetBPEnumClassValue", GetBPEnumClassValue, Loop, TestActor)

    -- UStruct
    self:Exec("SetBPStructValue", SetBPStructValue, Loop, TestActor, TestStruct)

    self:Exec("GetBPStructValue", GetBPStructValue, Loop, TestActor)

    -- UObject
    self:Exec("SetBPObjectValue", SetBPObjectValue, Loop, TestActor, TestActor)

    self:Exec("GetBPObjectValue", GetBPObjectValue, Loop, TestActor)

    -- UClass
    self:Exec("SetBPClassValue", SetBPClassValue, Loop, TestActor, TestClass)

    self:Exec("GetBPClassValue", GetBPClassValue, Loop, TestActor)

    -- UInterface 
    self:Exec("SetBPInterfaceValue", SetBPInterfaceValue, Loop, TestActor, TestInterface)

    self:Exec("GetBPInterfaceValue", GetBPInterfaceValue, Loop, TestActor)

    -- TArray
    self:Exec("SeBPArrayValue", SetBPArrayValue, Loop, TestActor, TestArray)

    self:Exec("GeBPArrayValue", GetBPArrayValue, Loop, TestActor)

    -- TArray Element
    self:Exec("SetBPArrayElement", SetBPArrayElement, Loop, TestActor, 1, 1)

    self:Exec("GetBPArrayElement", GetBPArrayValue, Loop, TestActor, 1)

    -- TSet
    self:Exec("SetBPSetValue", SetBPSetValue, Loop, TestActor, TestSet)

    self:Exec("GetBPSetValue", GetBPSetValue, Loop, TestActor)

    -- TMap
    self:Exec("SeBPMapValue", SetBPMapValue, Loop, TestActor, TestMap)

    self:Exec("GetBPMapValue", GetBPMapValue, Loop, TestActor)

    -- TMap Element
    self:Exec("SetBPMapElement", SetBPMapElement, Loop, TestActor, 0, 1)

    self:Exec("GetBPMapElement", GetBPMapValue, Loop, TestActor, 0)

    -- Member
    self:Exec("MemberBPFunction", MemberBPFunction, Loop, TestActor)

    -- Bool
    self:Exec("SetBPBoolValueFunction", SetBPBoolValueFunction, Loop, TestActor, true)

    self:Exec("GetBPBoolValueFunction", GetBPBoolValueFunction, Loop, TestActor)

    -- Int32
    self:Exec("SetBPInt32ValueFunction", SetBPInt32ValueFunction, Loop, TestActor, 1)

    self:Exec("GetBPInt32ValueFunction", GetBPInt32ValueFunction, Loop, TestActor)

    -- Int64
    self:Exec("SetBPInt64ValueFunction", SetBPInt64ValueFunction, Loop, TestActor, 1)

    self:Exec("GetBPInt64ValueFunction", GetBPInt64ValueFunction, Loop, TestActor)

    -- UInt8
    self:Exec("SetBPUInt8ValueFunction", SetBPUInt8ValueFunction, Loop, TestActor, 1)

    self:Exec("GetBPUInt8ValueFunction", GetBPUInt8ValueFunction, Loop, TestActor)

    -- Double
    self:Exec("SetBPDoubleValueFunction", SetBPDoubleValueFunction, Loop, TestActor, 1.0)

    self:Exec("GetBPDoubleValueFunction", GetBPDoubleValueFunction, Loop, TestActor)

    -- FName
    self:Exec("SetBPNameValueFunction", SetBPNameValueFunction, Loop, TestActor, "Name")

    self:Exec("GetBPNameValueFunction", GetBPNameValueFunction, Loop, TestActor)

    -- FText
    self:Exec("SetBPTextValueFunction", SetBPTextValueFunction, Loop, TestActor, "Text")

    self:Exec("GetBPTextValueFunction", GetBPTextValueFunction, Loop, TestActor)

    -- FString
    self:Exec("SetBPStringValueFunction", SetBPStringValueFunction, Loop, TestActor, "String")

    self:Exec("GetBPStringValueFunction", GetBPStringValueFunction, Loop, TestActor)

    -- UEnum
    self:Exec("SetBPEnumValueFunction", SetBPEnumValueFunction, Loop, TestActor, TestEnum)

    self:Exec("GetBPEnumValueFunction", GetBPEnumValueFunction, Loop, TestActor)

    -- UStruct
    self:Exec("SetBPStructValueFunction", SetBPStructValueFunction, Loop, TestActor, TestStruct)

    self:Exec("GetBPStructValueFunction", GetBPStructValueFunction, Loop, TestActor)

    -- UObject
    self:Exec("SetBPObjectValueFunction", SetBPObjectValueFunction, Loop, TestActor, TestActor)

    self:Exec("GetBPObjectValueFunction", GetBPObjectValueFunction, Loop, TestActor)

    -- UClass
    self:Exec("SetBPClassValueFunction", SetBPClassValueFunction, Loop, TestActor, TestClass)

    self:Exec("GetBPClassValueFunction", GetBPClassValueFunction, Loop, TestActor)

    -- UInterface 
    self:Exec("SetBPInterfaceValueFunction", SetBPInterfaceValueFunction, Loop, TestActor, TestInterface)

    self:Exec("GetBPInterfaceValueFunction", GetBPInterfaceValueFunction, Loop, TestActor)

    -- TArray
    self:Exec("SetBPArrayValueFunction", SetBPArrayValueFunction, Loop, TestActor, TestArray)

    self:Exec("GetBPArrayValueFunction", GetBPArrayValueFunction, Loop, TestActor)

    -- TSet
    self:Exec("SetBPSetValueFunction", SetBPSetValueFunction, Loop, TestActor, TestSet)

    self:Exec("GetBPSetValueFunction", GetBPSetValueFunction, Loop, TestActor)

    -- TMap
    self:Exec("SetBPMapValueFunction", SetBPMapValueFunction, Loop, TestActor, TestMap)

    self:Exec("GetBPMapValueFunction", GetBPMapValueFunction, Loop, TestActor)
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
