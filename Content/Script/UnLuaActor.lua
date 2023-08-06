local M = UnLua.Class()

-- Bool
local function SetBoolValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.BoolValue = InValue
    end
end

local function GetBoolValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.BoolValue
    end
end

-- Int8
local function SetInt8Value(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.Int8Value = InValue
    end
end

local function GetInt8Value(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.Int8Value
    end
end

-- Int16
local function SetInt16Value(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.Int16Value = InValue
    end
end

local function GetInt16Value(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.Int16Value
    end
end

-- Int32
local function SetInt32Value(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.Int32Value = InValue
    end
end

local function GetInt32Value(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.Int32Value
    end
end

-- Int64
local function SetInt64Value(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.Int64Value = InValue
    end
end

local function GetInt64Value(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.Int64Value
    end
end

-- UInt8
local function SetUInt8Value(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.UInt8Value = InValue
    end
end

local function GetUInt8Value(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.UInt8Value
    end
end

-- UInt16
local function SetUInt16Value(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.UInt16Value = InValue
    end
end

local function GetUInt16Value(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.UInt16Value
    end
end

-- UInt32
local function SetUInt32Value(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.UInt32Value = InValue
    end
end

local function GetUInt32Value(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.UInt32Value
    end
end

-- UInt64
local function SetUInt64Value(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.UInt64Value = InValue
    end
end

local function GetUInt64Value(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.UInt64Value
    end
end

-- Float
local function SetFloatValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.FloatValue = InValue
    end
end

local function GetFloatValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.FloatValue
    end
end

-- Double
local function SetDoubleValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.DoubleValue = InValue
    end
end

local function GetDoubleValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.DoubleValue
    end
end

-- FName
local function SetNameValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.NameValue = InValue
    end
end

local function GetNameValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.NameValue
    end
end

-- FText
local function SetTextValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.TextValue = InValue
    end
end

local function GetTextValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.TextValue
    end
end

-- FString
local function SetStringValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.StringValue = InValue
    end
end

local function GetStringValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.StringValue
    end
end

-- UEnum
local function SetEnumValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.EnumValue = InValue
    end
end

local function GetEnumValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.EnumValue
    end
end

-- UEnum Class
local function SetEnumClassValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.EnumClassValue = InValue
    end
end

local function GetEnumClassValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.EnumClassValue
    end
end

-- UStruct
local function SetStructValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.StructValue = InValue
    end
end

local function GetStructValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.StructValue
    end
end

-- UObject
local function SetObjectValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.ObjectValue = InValue
    end
end

local function GetObjectValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.ObjectValue
    end
end

-- UClass
local function SetClassValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.ClassValue = InValue
    end
end

local function GetClassValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.ClassValue
    end
end

-- UInterface 
-- @TODO

-- TArray
local function SetArrayValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.ArrayValue = InValue
    end
end

local function GetArrayValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.ArrayValue
    end
end

-- TSet
local function SetSetValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.SetValue = InValue
    end
end

local function GetSetValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.SetValue
    end
end

-- TMap
local function SetMapValue(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor.MapValue = InValue
    end
end

local function GetMapValue(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor.MapValue
    end
end

-- Bool
local function SetBoolValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetBoolValueFunction(InValue)
    end
end

local function GetBoolValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetBoolValueFunction()
    end
end

-- Int8
local function SetInt8ValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetInt8ValueFunction(InValue)
    end
end

local function GetInt8ValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetInt8ValueFunction()
    end
end

-- Int16
local function SetInt16ValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetInt16ValueFunction(InValue)
    end
end

local function GetInt16ValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetInt16ValueFunction()
    end
end

-- Int32
local function SetInt32ValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetInt32ValueFunction(InValue)
    end
end

local function GetInt32ValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetInt32ValueFunction()
    end
end

-- Int64
local function SetInt64ValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetInt64ValueFunction(InValue)
    end
end

local function GetInt64ValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetInt64ValueFunction()
    end
end

-- UInt8
local function SetUInt8ValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetUInt8ValueFunction(InValue)
    end
end

local function GetUInt8ValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetUInt8ValueFunction()
    end
end

-- UInt16
local function SetUInt16ValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetUInt16ValueFunction(InValue)
    end
end

local function GetUInt16ValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetUInt16ValueFunction()
    end
end

-- UInt32
local function SetUInt32ValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetUInt32ValueFunction(InValue)
    end
end

local function GetUInt32ValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetUInt32ValueFunction()
    end
end

-- UInt64
local function SetUInt64ValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetUInt64ValueFunction(InValue)
    end
end

local function GetUInt64ValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetUInt64ValueFunction()
    end
end

-- Float
local function SetFloatValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetFloatValueFunction(InValue)
    end
end

local function GetFloatValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetFloatValueFunction()
    end
end

-- Double
local function SetDoubleValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetDoubleValueFunction(InValue)
    end
end

local function GetDoubleValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetDoubleValueFunction()
    end
end

-- FName
local function SetNameValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetNameValueFunction(InValue)
    end
end

local function GetNameValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetNameValueFunction()
    end
end

-- FText
local function SetTextValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetTextValueFunction(InValue)
    end
end

local function GetTextValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetTextValueFunction()
    end
end

-- FString
local function SetStringValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetStringValueFunction(InValue)
    end
end

local function GetStringValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetStringValueFunction()
    end
end

-- UEnum
local function SetEnumValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetEnumValueFunction(InValue)
    end
end

local function GetEnumValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetEnumValueFunction()
    end
end

-- UEnum Class
local function SetEnumClassValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetEnumClassValueFunction(InValue)
    end
end

local function GetEnumClassValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetEnumClassValueFunction()
    end
end

-- UStruct
local function SetStructValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetStructValueFunction(InValue)
    end
end

local function GetStructValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetStructValueFunction()
    end
end

-- UObject
local function SetObjectValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetObjectValueFunction(InValue)
    end
end

local function GetObjectValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetObjectValueFunction()
    end
end

-- UClass
local function SetClassValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetClassValueFunction(InValue)
    end
end

local function GetClassValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetClassValueFunction()
    end
end

-- UInterface 
-- @TODO

-- TArray
local function SetArrayValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetArrayValueFunction(InValue)
    end
end

local function GetArrayValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetArrayValueFunction()
    end
end

-- TSet
local function SetSetValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetSetValueFunction(InValue)
    end
end

local function GetSetValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetSetValueFunction()
    end
end

-- TMap
local function SetMapValueFunction(InLoop, InTestActor, InValue)
    for i = 0, InLoop do
        InTestActor:SetMapValueFunction(InValue)
    end
end

local function GetMapValueFunction(InLoop, InTestActor)
    for i = 0, InLoop do
        local Value = InTestActor:GetMapValueFunction()
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

function M:StartTest()
    self.Data = {}
end

function M:ProcessTest()
    local Loop = self.Loop

    local TestActor = self:GetWorld():SpawnActor(UE.ATestActor)

    local TestClass = TestActor:GetClass()

    local TestStruct = UE.FTestStruct()

    TestStruct.Value = 1

    local TestEnum = UE.ETestEnum.TestEnumOne

    local TestEnumClass = UE.ETestEnumClass.TestEnumClassOne

    local TestArray = UE.TArray(0)

    TestArray:Add(1)

    local TestSet = UE.TSet(0)

    TestSet:Add(1)

    local TestMap = UE.TMap(0, 0)

    TestMap:Add(1, 1)

    -- Bool
    self:Exec("SetBoolValue", SetBoolValue, Loop, TestActor, true)

    self:Exec("GetBoolValue", GetBoolValue, Loop, TestActor)

    -- Int8
    self:Exec("SetInt8Value", SetInt8Value, Loop, TestActor, 1)

    self:Exec("GetInt8Value", GetInt8Value, Loop, TestActor)

    -- Int16
    self:Exec("SetInt16Value", SetInt16Value, Loop, TestActor, 1)

    self:Exec("GetInt16Value", GetInt16Value, Loop, TestActor)

    -- Int32
    self:Exec("SetInt32Value", SetInt32Value, Loop, TestActor, 1)

    self:Exec("GetInt32Value", GetInt32Value, Loop, TestActor)

    -- Int64
    self:Exec("SetInt64Value", SetInt64Value, Loop, TestActor, 1)

    self:Exec("GetInt64Value", GetInt64Value, Loop, TestActor)

    -- UInt8
    self:Exec("SetUInt8Value", SetUInt8Value, Loop, TestActor, 1)

    self:Exec("GetUInt8Value", GetUInt8Value, Loop, TestActor)

    -- UInt16
    self:Exec("SetUInt16Value", SetUInt16Value, Loop, TestActor, 1)

    self:Exec("GetUInt16Value", GetUInt16Value, Loop, TestActor)

    -- UInt32
    self:Exec("SetUInt32Value", SetUInt32Value, Loop, TestActor, 1)

    self:Exec("GetUInt32Value", GetUInt32Value, Loop, TestActor)

    -- UInt64
    self:Exec("SetUInt64Value", SetUInt64Value, Loop, TestActor, 1)

    self:Exec("GetUInt64Value", GetUInt64Value, Loop, TestActor)

    -- Float
    self:Exec("SetFloatValue", SetFloatValue, Loop, TestActor, 1.0)

    self:Exec("GeFloatValue", GetFloatValue, Loop, TestActor)

    -- Double
    self:Exec("SetDoubleValue", SetDoubleValue, Loop, TestActor, 1.0)

    self:Exec("GeDoubleValue", GetDoubleValue, Loop, TestActor)

    -- FName
    self:Exec("SetNameValue", SetNameValue, Loop, TestActor, "Name")

    self:Exec("GeNameValue", GetNameValue, Loop, TestActor)

    -- FText
    self:Exec("SetTextValue", SetNameValue, Loop, TestActor, "Text")

    self:Exec("GeTextValue", GetNameValue, Loop, TestActor)

    -- FString
    self:Exec("SetTextValue", SetStringValue, Loop, TestActor, "String")

    self:Exec("GeTextValue", GetStringValue, Loop, TestActor)

    -- UEnum
    self:Exec("SetEnumValue", SetEnumValue, Loop, TestActor, TestEnum)

    self:Exec("GeEnumValue", GetEnumValue, Loop, TestActor)

    -- UEnum Class
    self:Exec("SetEnumClassValue", SetEnumClassValue, Loop, TestActor, TestEnumClass)

    self:Exec("GeEnumClassValue", GetEnumClassValue, Loop, TestActor)

    -- UStruct
    self:Exec("SetStructValue", SetStructValue, Loop, TestActor, TestStruct)

    self:Exec("GeStructValue", GetStructValue, Loop, TestActor)

    -- UObject
    self:Exec("SetObjectValue", SetObjectValue, Loop, TestActor, TestActor)

    self:Exec("GeObjectValue", GetObjectValue, Loop, TestActor)

    -- UClass
    self:Exec("SetClassValue", SetClassValue, Loop, TestActor, TestClass)

    self:Exec("GeClassValue", GetClassValue, Loop, TestActor)

    -- UInterface 
    -- @TODO

    -- TArray
    self:Exec("SeArrayValue", SetArrayValue, Loop, TestActor, TestArray)

    self:Exec("GeArrayValue", GetArrayValue, Loop, TestActor)

    -- TSet
    self:Exec("SeSetValue", SetSetValue, Loop, TestActor, TestSet)

    self:Exec("GeSetValue", GetSetValue, Loop, TestActor)

    -- TMap
    self:Exec("SeMapValue", SetMapValue, Loop, TestActor, TestMap)

    self:Exec("GeMapValue", GetMapValue, Loop, TestActor)

    -- Bool
    self:Exec("SetBoolValueFunction", SetBoolValueFunction, Loop, TestActor, true)

    self:Exec("GetBoolValueFunction", GetBoolValueFunction, Loop, TestActor)

    -- Int8
    self:Exec("SetInt8ValueFunction", SetInt8ValueFunction, Loop, TestActor, 1)

    self:Exec("GetInt8ValueFunction", GetInt8ValueFunction, Loop, TestActor)

    -- Int16
    self:Exec("SetInt16ValueFunction", SetInt16ValueFunction, Loop, TestActor, 1)

    self:Exec("GetInt16ValueFunction", GetInt16ValueFunction, Loop, TestActor)

    -- Int32
    self:Exec("SetInt32ValueFunction", SetInt32ValueFunction, Loop, TestActor, 1)

    self:Exec("GetInt32ValueFunction", GetInt32ValueFunction, Loop, TestActor)

    -- Int64
    self:Exec("SetInt64ValueFunction", SetInt64ValueFunction, Loop, TestActor, 1)

    self:Exec("GetInt64ValueFunction", GetInt64ValueFunction, Loop, TestActor)

    -- UInt8
    self:Exec("SetUInt8ValueFunction", SetUInt8ValueFunction, Loop, TestActor, 1)

    self:Exec("GetUInt8ValueFunction", GetUInt8ValueFunction, Loop, TestActor)

    -- UInt16
    self:Exec("SetUInt16ValueFunction", SetUInt16ValueFunction, Loop, TestActor, 1)

    self:Exec("GetUInt16ValueFunction", GetUInt16ValueFunction, Loop, TestActor)

    -- UInt32
    self:Exec("SetUInt32ValueFunction", SetUInt32ValueFunction, Loop, TestActor, 1)

    self:Exec("GetUInt32ValueFunction", GetUInt32ValueFunction, Loop, TestActor)

    -- UInt64
    self:Exec("SetUInt64ValueFunction", SetUInt64ValueFunction, Loop, TestActor, 1)

    self:Exec("GetUInt64ValueFunction", GetUInt64ValueFunction, Loop, TestActor)

    -- Float
    self:Exec("SetFloatValueFunction", SetFloatValueFunction, Loop, TestActor, 1.0)

    self:Exec("GetFloatValueFunction", GetFloatValueFunction, Loop, TestActor)

    -- Double
    self:Exec("SetDoubleValueFunction", SetDoubleValueFunction, Loop, TestActor, 1.0)

    self:Exec("GetDoubleValueFunction", GetDoubleValueFunction, Loop, TestActor)

    -- FName
    self:Exec("SetNameValueFunction", SetNameValueFunction, Loop, TestActor, "Name")

    self:Exec("GeNameValueFunction", GetNameValueFunction, Loop, TestActor)

    -- FText
    self:Exec("SetTextValueFunction", SetTextValueFunction, Loop, TestActor, "Text")

    self:Exec("GeTextValueFunction", GetTextValueFunction, Loop, TestActor)

    -- FString
    self:Exec("SetStringValueFunction", SetStringValueFunction, Loop, TestActor, "String")

    self:Exec("GeStringValueFunction", GetStringValueFunction, Loop, TestActor)

    -- UEnum
    self:Exec("SetEnumValueFunction", SetEnumValueFunction, Loop, TestActor, TestEnum)

    self:Exec("GeEnumValueFunction", GetEnumValueFunction, Loop, TestActor)

    -- UEnum Class
    self:Exec("SetEnumClassValueFunction", SetEnumClassValueFunction, Loop, TestActor, TestEnumClass)

    self:Exec("GeEnumClassValueFunction", GetEnumClassValueFunction, Loop, TestActor)

    -- UStruct
    self:Exec("SetStructValueFunction", SetStructValueFunction, Loop, TestActor, TestStruct)

    self:Exec("GeStructValueFunction", GetStructValueFunction, Loop, TestActor)

    -- UObject
    self:Exec("SetObjectValueFunction", SetObjectValueFunction, Loop, TestActor, TestActor)

    self:Exec("GetObjectValueFunction", GetObjectValueFunction, Loop, TestActor)

    -- UClass
    self:Exec("SetClassValueFunction", SetClassValueFunction, Loop, TestActor, TestClass)

    self:Exec("GetClassValueFunction", GetClassValueFunction, Loop, TestActor)

    -- UInterface 
    -- @TODO

    -- TArray
    self:Exec("SetArrayValueFunction", SetArrayValueFunction, Loop, TestActor, TestArray)

    self:Exec("GetArrayValueFunction", GetArrayValueFunction, Loop, TestActor)

    -- TSet
    self:Exec("SetSetValueFunction", SetSetValueFunction, Loop, TestActor, TestSet)

    self:Exec("GetSetValueFunction", GetSetValueFunction, Loop, TestActor)

    -- TMap
    self:Exec("SetMapValueFunction", SetMapValueFunction, Loop, TestActor, TestMap)

    self:Exec("GetMapValueFunction", GetMapValueFunction, Loop, TestActor)
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
