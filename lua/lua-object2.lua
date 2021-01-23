function CreateRobot(name,id)
    local obj = {name = name,id = id}

    function obj:SetName(name)
        self.name = name
    end

    function obj:GetName()
        return obj.name
    end

    function obj:SetId(id)
        self.id = id
    end

    function obj:GetId()
        return obj.id
    end
    return obj
end

local function createFootballRobot(name, id, position)
    local obj = CreateRobot(name, id)
    obj.position = position

    function obj:SetPosition(position)
        obj.position = position
    end

    function obj:GetPosition()
        return obj.position
    end

    return obj
end

local mycreateFootballRobot = createFootballRobot("tom", 101, "广州")
print("mycreateFootballRobot's name:",mycreateFootballRobot:GetName(),"myCreate's id:",mycreateFootballRobot:GetId(),mycreateFootballRobot:GetPosition())


mycreateFootballRobot:SetName("麦迪")
mycreateFootballRobot:SetId(2000)
mycreateFootballRobot:SetPosition("北京")
print("mycreateFootballRobot's name:",mycreateFootballRobot:GetName(),"myCreate's id:",mycreateFootballRobot:GetId(),mycreateFootballRobot:GetPosition())
