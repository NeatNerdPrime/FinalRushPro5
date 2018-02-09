local SURVIVAL_VERSUS = 0
local SURVIVAL_CLASSIC = 1
local PARAGON_WARS = 2
local GAME_MODE_PLAIN = 3

local VERY_EASY = 1
local EASIER = 2
local EASY = 3
local NORMAL = 4
local HARD = 5
local HARDER = 6
local VERY_HARD = 7
local INSANE = 8

local SET_BY_PRESET = -1

local defaults = {
    RestrictedCategories = {},
    opt_gamemode = SURVIVAL_VERSUS,
    opt_FinalRushDifficulty = NORMAL,
    opt_FinalRushTeamBonusReclaim = 0,
    opt_FinalRushTeamBonusHP = 0,
    opt_tents = 9,
    opt_AutoReclaim = 50,
    opt_FinalRushAir = 0,
    opt_timeunlocked = 0,
    opt_t2tml = 0,
    opt_t3arty = 0,
    opt_snipers = 0,
    opt_FinalRushEventNotifications = 1,
    opt_FinalRushKillableTransports = 0,
    opt_FinalRushWaterKillsACUs = 2,
    opt_FinalRushRandomEvents = SET_BY_PRESET,
    opt_FinalRushSpawnDelay = SET_BY_PRESET,
    opt_FinalRushT1Frequency = SET_BY_PRESET,
    opt_FinalRushT2Delay = SET_BY_PRESET,
    opt_FinalRushT2Frequency = SET_BY_PRESET,
    opt_FinalRushT3Delay = SET_BY_PRESET,
    opt_FinalRushT3Frequency = SET_BY_PRESET,
    opt_FinalRushT4Delay = SET_BY_PRESET,
    opt_FinalRushT4Frequency = SET_BY_PRESET,
    opt_FinalRushHunterDelay = SET_BY_PRESET,
    opt_FinalRushHunters = SET_BY_PRESET,
    opt_FinalRushHealthIncrease = SET_BY_PRESET,
    opt_FinalRushAggression = SET_BY_PRESET
}

local optionsThatGotDefaulted = {}

-- This function works around the FAF lobby not correctly defaulting the options
local function defaultOptions(scenarioOptions)
    for optionName, defaultValue in pairs(defaults) do
        if (scenarioOptions[optionName] == nil) then
            scenarioOptions[optionName] = defaultValue
            optionsThatGotDefaulted[optionName] = true
        end
    end

    return scenarioOptions
end

local function applyPresets(scenarioOptions)
    local difficultyPreset = {
        opt_FinalRushSpawnDelay = {
            [VERY_EASY] = 180,
            [EASIER] = 10,
            [EASY] = 10,
            [NORMAL] = 10,
            [HARD] = 10,
            [HARDER] = 10,
            [VERY_HARD] = 0,
            [INSANE] = 0,
        },
        opt_FinalRushT2Delay = {
            [VERY_EASY] = 8 * 60,
            [EASIER] = 6 * 60,
            [EASY] = 6 * 60,
            [NORMAL] = 6 * 60,
            [HARD] = 6 * 60,
            [HARDER] = 6 * 60,
            [VERY_HARD] = 5 * 60,
            [INSANE] = 4 * 60,
        },
        opt_FinalRushT3Delay = {
            [VERY_EASY] = 16 * 60,
            [EASIER] = 15 * 60,
            [EASY] = 14 * 60,
            [NORMAL] = 13 * 60,
            [HARD] = 12 * 60,
            [HARDER] = 11 * 60,
            [VERY_HARD] = 10 * 60,
            [INSANE] = 8 * 60,
        },
        opt_FinalRushT4Delay = {
            [VERY_EASY] = 24 * 60,
            [EASIER] = 22 * 60,
            [EASY] = 20 * 60,
            [NORMAL] = 19 * 60,
            [HARD] = 18 * 60,
            [HARDER] = 17 * 60,
            [VERY_HARD] = 16 * 60,
            [INSANE] = 14 * 60,
        },
        opt_FinalRushT1Frequency = {
            [VERY_EASY] = 6,
            [EASIER] = 6,
            [EASY] = 6,
            [NORMAL] = 6,
            [HARD] = 6,
            [HARDER] = 6,
            [VERY_HARD] = 6,
            [INSANE] = 6,
        },
        opt_FinalRushT2Frequency = {
            [VERY_EASY] = 8,
            [EASIER] = 8,
            [EASY] = 7,
            [NORMAL] = 7,
            [HARD] = 6,
            [HARDER] = 6,
            [VERY_HARD] = 6,
            [INSANE] = 6,
        },
        opt_FinalRushT3Frequency = {
            [VERY_EASY] = 13,
            [EASIER] = 12,
            [EASY] = 11,
            [NORMAL] = 10,
            [HARD] = 10,
            [HARDER] = 9,
            [VERY_HARD] = 9,
            [INSANE] = 10,
        },
        opt_FinalRushT4Frequency = {
            [VERY_EASY] = 13,
            [EASIER] = 12,
            [EASY] = 12,
            [NORMAL] = 11,
            [HARD] = 10,
            [HARDER] = 10,
            [VERY_HARD] = 10,
            [INSANE] = 8,
        },
        opt_FinalRushAggression = {
            [VERY_EASY] = 0,
            [EASIER] = 0,
            [EASY] = 0,
            [NORMAL] = 0,
            [HARD] = 0,
            [HARDER] = 0,
            [VERY_HARD] = 1,
            [INSANE] = 1,
        },
        opt_FinalRushRandomEvents = {
            [VERY_EASY] = 600,
            [EASIER] = 90,
            [EASY] = 80,
            [NORMAL] = 70,
            [HARD] = 70,
            [HARDER] = 60,
            [VERY_HARD] = 50,
            [INSANE] = 30,
        },
        opt_FinalRushHunters = {
            [VERY_EASY] = 0,
            [EASIER] = 480,
            [EASY] = 360,
            [NORMAL] = 300,
            [HARD] = 300,
            [HARDER] = 270,
            [VERY_HARD] = 240,
            [INSANE] = 120,
        },
        opt_FinalRushHunterDelay = {
            [VERY_EASY] = 0,
            [EASIER] = 27 * 60,
            [EASY] = 23 * 60,
            [NORMAL] = 22 * 60,
            [HARD] = 22 * 60,
            [HARDER] = 20 * 60,
            [VERY_HARD] = 18 * 60,
            [INSANE] = 16 * 60,
        },
        opt_FinalRushHealthIncrease = {
            [VERY_EASY] = 0,
            [EASIER] = 0.1,
            [EASY] = 0.18,
            [NORMAL] = 0.22,
            [HARD] = 0.25,
            [HARDER] = 0.3,
            [VERY_HARD] = 1,
            [INSANE] = 2,
        }
    }

    for optionName, defaultValues in pairs(difficultyPreset) do
        if (scenarioOptions[optionName] == SET_BY_PRESET) then
            scenarioOptions[optionName] = defaultValues[scenarioOptions.opt_FinalRushDifficulty]
        end
    end

    return scenarioOptions
end

function newInstance(ScenarioInfoOptions)
    local rawOptions = applyPresets(defaultOptions(ScenarioInfoOptions))

    local this = {}

    this. getRawOptions = function()
        return rawOptions
    end

    this.isSurvivalGame = function()
        return rawOptions.opt_gamemode == SURVIVAL_VERSUS or rawOptions.opt_gamemode == SURVIVAL_CLASSIC
    end

    this.isSurvivalVersus = function()
        return rawOptions.opt_gamemode == SURVIVAL_VERSUS
    end

    this.isSurvivalClassic = function()
        return rawOptions.opt_gamemode == SURVIVAL_CLASSIC
    end

    this.isParagonWars = function()
        return rawOptions.opt_gamemode == PARAGON_WARS
    end

    this.canKillTransports = function()
        if rawOptions.opt_FinalRushKillableTransports == 0 then
            return this.isSurvivalVersus()
        else
            return rawOptions.opt_FinalRushKillableTransports == 2
        end
    end

    this.waterKillsAcu = function()
        if rawOptions.opt_FinalRushWaterKillsACUs == 0 then
            return this.isSurvivalClassic()
        else
            return rawOptions.opt_FinalRushWaterKillsACUs == 2
        end
    end

    this.isNonDefault = function(optionName)
        return optionsThatGotDefaulted[optionName] or false
    end

    return this
end
