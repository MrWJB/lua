print("start ...")

function create(name, id)
    local obj = {name = name, id = id}

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
        return self.id
    end
    return obj
end


local myCreate = create("sam", 001)
for k, v in pairs(myCreate) do
    print(k,"==>",v)
end

print("myCreate name is ", myCreate:GetName(),"myCreate‘s id: ",myCreate:GetId(myCreate))

myCreate:SetId(100)
myCreate:SetName("Hello Kit")

print("myCreate's name:",myCreate:GetName(),"myCreate's id:",myCreate:GetId())

print("end ..")