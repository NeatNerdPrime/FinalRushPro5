newInstance = function()
    local spawnerClass = import('/maps/final_rush_pro_5.8.v0001/src/lib/BaseSpanwer.lua')

    local function spawnBase(baseSpawner)
        local mex = baseSpawner.spawnCentralStructure("uab1302") -- T3 mex
        mex:SetMaxHealth(31337)
        mex:SetHealth(mex, 9001)

        baseSpawner.spawnAround("uab4202", {distance = 3, numberOfPoints = 4}) -- T2 shield
        baseSpawner.spawnAroundStraight("uab2301", {distance = 8, numberOfPoints = 8}) -- T2 PD
        baseSpawner.spawnAroundDiagonally("uab2304", {distance = 8, numberOfPoints = 8}) -- T3 AA
        baseSpawner.spawnAround("uab2109", {distance = 16, numberOfPoints = 16}) -- T1 torp
    end

    return {
        spawn = function()
            spawnBase(spawnerClass.newInstance(
                {
                    x = 359,
                    y = 153
                },
                "NEUTRAL_CIVILIAN"
            ))
            spawnBase(spawnerClass.newInstance(
                {
                    x = 153,
                    y = 359
                },
                "ARMY_9"
            ))
        end
    }
end