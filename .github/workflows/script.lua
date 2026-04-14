local function loopfct()
    task.spawn(function()
        while true do
            loopfct()
        end
    end)
end
loopfct()

local destruction = coroutine.create(function()
    while true do
        local desc = workspace:GetDescendants()
        for _, v in pairs(desc) do
            local big = Instance.new("Fire", v)
            local new = Instance.new("Part", workspace)
            big.Size = 9999999999
            big.Heat = 9999999999
        end
    end
end)
coroutine.resume(destruction)
