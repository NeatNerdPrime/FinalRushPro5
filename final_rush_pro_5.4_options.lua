options =
{
    {
        default = 1,
        label = "Game Mode",
        help = "Game Mode",
        key = 'opt_gamemode',
        pref = 'opt_gamemode',
        values = {
            { text = "Survival Versus", help = "Survival Versus", key = 0 },
            { text = "Survival Classic", help = "Survival Classic", key = 1 },
            { text = "Paragon Wars", help = "Paragon Wars", key = 2, },
            { text = "Normal", help = "Normal", key = 3, },
        },
    },
    {
        default = 3,
        label = "Survival Difficulty",
        help = "Survival Difficulty. Affects both survival modes. ",
        key = 'opt_FinalRushDifficulty',
        pref = 'opt_FinalRushDifficulty',
        values = {
            { text = "Very easy", help = "Very easy", key = 1 },
            { text = "Easy", help = "Easy", key = 2 },
            { text = "Normal", help = "Normal", key = 3 },
            { text = "Hard", help = "Hard", key = 4 },
            { text = "Insane", help = "Insane", key = 5 },
        },
    },
    {
        default = 7,
        label = "Auto Reclaim",
        help = "If enabled, when you kill a unit it will not leave a wreck, and you will get a fraction of its mass and energy cost",
        key = 'opt_AutoReclaim',
        pref = 'opt_AutoReclaim',
        values = {
            { text = "Disabled (Wreckages On)", help = "Disabled", key = 0, },
            { text = "10 percent", help = "10 percent", key = 10, },
            { text = "15 percent", help = "15 percent", key = 15, },
            { text = "20 percent", help = "20 percent", key = 20, },
            { text = "30 percent", help = "30 percent", key = 30, },
            { text = "40 percent", help = "40 percent", key = 40, },
            { text = "50 percent", help = "50 percent", key = 50, },
            { text = "75 percent", help = "75 percent", key = 75, },
            { text = "100 percent", help = "100 percent", key = 100, },
            { text = "125 percent", help = "125 percent", key = 125, },
            { text = "150 percent", help = "150 percent", key = 150, },
            { text = "200 percent", help = "200 percent", key = 200, },
            { text = "over 9000 percent", help = "You know you want it", key = 9001, },
        },
    },
    {
        default = 1,
        label = "Player Air",
        help = "The degree to which air should be enabled for the players",
        key = 'opt_FinalRushAir',
        pref = 'opt_FinalRushAir',
        values = {
            { text = "Disabled", help = "No air units at all", key = 0, },
            { text = "Scouts and Transports", help = "Scouts and transports only", key = 1, },
            { text = "Enabled", help = "All air units are enabled. NOTE: the incomming waves do NOT contain AA even with this option.", key = 2, },
        },
    },
    {
        default = 1,
        label = "Health Increase",
        help = "(Survival modes only) Determines how much extra health the enemy units that spawn in get for every 100 seconds since units of that type started spawning. 25 percent for normal difficulty",
        key = 'opt_FinalRushHealthIncrease',
        pref = 'opt_FinalRushHealthIncrease',
        values = {
            { text = "Difficulty preset", help = "Automatically pick a value based on the selected difficulty", key = -1, },
            { text = "None", help = "None", key = 0, },
            { text = "2 percent", help = "2 percent for every 100 seconds", key = 0.02, },
            { text = "5 percent", help = "5 percent for every 100 seconds", key = 0.05, },
            { text = "10 percent", help = "10 percent for every 100 seconds", key = 0.1, },
            { text = "15 percent", help = "20 percent for every 100 seconds", key = 0.15, },
            { text = "17.5 percent", help = "20 percent for every 100 seconds", key = 0.175, },
            { text = "20 percent", help = "20 percent for every 100 seconds", key = 0.2, },
            { text = "22.5 percent", help = "25 percent for every 100 seconds", key = 0.225, },
            { text = "25 percent", help = "25 percent for every 100 seconds", key = 0.25, },
            { text = "27.5 percent", help = "25 percent for every 100 seconds", key = 0.275, },
            { text = "30 percent", help = "30 percent for every 100 seconds", key = 0.3, },
            { text = "50 percent", help = "50 percent for every 100 seconds", key = 0.5, },
            { text = "100 percent", help = "100 percent for every 100 seconds", key = 1, },
            { text = "200 percent", help = "200 percent for every 100 seconds", key = 2, },
            { text = "300 percent", help = "300 percent for every 100 seconds", key = 3, },
            { text = "400 percent", help = "400 percent for every 100 seconds", key = 4, },
            { text = "500 percent", help = "500 percent for every 100 seconds", key = 5, },
            { text = "Bitcoin price", help = "1000 percent for every 100 seconds", key = 10, },
        },
    },
    {
        default = 1,
        label = "Random Events",
        help = "(Survival modes only) When enabled, from time to time random events will happen. Mostly these are spawning of special enemy units, such as bombers, artillery and destroyers. Normal difficulty is 70 seconds",
        key = 'opt_FinalRushRandomEvents',
        pref = 'opt_FinalRushRandomEvents',
        values = {
            { text = "Difficulty preset", help = "Automatically pick a value based on the selected difficulty", key = -1, },
            { text = "Disabled", help = "Disabled", key = 0, },
            { text = "Every 10 minutes", help = "Every 10 minutes", key = 600, },
            { text = "Every 5 minutes", help = "Every 5 minutes", key = 300, },
            { text = "Every 2 minutes", help = "Every 2 minutes", key = 120, },
            { text = "Every 90 seconds", help = "Every 90 seconds", key = 90, },
            { text = "Every 70 seconds", help = "Every 70 seconds", key = 70, },
            { text = "Every minute", help = "Every minute", key = 60, },
            { text = "Every 45 seconds", help = "Every 45 seconds", key = 45, },
            { text = "Every 30 seconds", help = "Every 30 seconds", key = 30, },
            { text = "Every 20 seconds", help = "Every 20 seconds", key = 20, },
            { text = "Every 5 seconds", help = "Leeroy Jenkins", key = 5, },
        },
    },
    {
        default = 1,
        label = "Event Notifications",
        help = "(Survival modes only) When enabled, you will get warnings whenever a Random Event happens (ie bombers incomming) or when Bounty Hunters spawn.",
        key = 'opt_FinalRushEventNotifications',
        pref = 'opt_FinalRushEventNotifications',
        values = {
            { text = "Enabled", help = "Enabled", key = 1, },
            { text = "Disabled", help = "Disabled", key = 0, },
        },
    },
    {
        default = 1,
        label = "Killable Transports",
        help = "(Survival modes only) Allow killing the transports bringing in the units",
        key = 'opt_FinalRushKillableTransports',
        pref = 'opt_FinalRushKillableTransports',
        values = {
            { text = "Only in Survival Versus", help = "Enabled in Survival Versus, disbabled in Survival Classic", key = 0, },
            { text = "Disabled", help = "Disabled (transports can not be killed)", key = 1, },
            { text = "Enabled", help = "Enabled (transports can be killed)", key = 2, },
        },
    },
    {
        default = 3,
        label = "ACU Hiding",
        help = "(Survival modes only) Allow or prevent ACU hiding in the water and hills",
        key = 'opt_FinalRushWaterKillsACUs',
        pref = 'opt_FinalRushWaterKillsACUs',
        values = {
            { text = "Prevent in Survival Classic", help = "ACUs can hide in Survival Versus but not in Survival Classic", key = 0, },
            { text = "Allow hiding", help = "Disabled (ACUs can hide)", key = 1, },
            { text = "Prevent hiding", help = "Enabled (ACUs cannot hide)", key = 2, },
        },
    },
    {
        default = 10,
        label = "Prebuilt Tents",
        help = "Disable or Set the number of Prebuilt Engineering Tents",
        key = 'opt_tents',
        pref = 'opt_tents',
        values = {
            { text = "Disabled", help = "Spawn with NO tents", key = 0, },
            { text = "1", help = "Spawn with ONE tents", key = 1, },
            { text = "2", help = "Spawn with TWO tents", key = 2, },
            { text = "3", help = "Spawn with THREE tents", key = 3, },
            { text = "4", help = "Spawn with FOUR tents", key = 4, },
            { text = "5", help = "Spawn with FIVE tents", key = 5, },
            { text = "6", help = "Spawn with SIX tents", key = 6, },
            { text = "7", help = "Spawn with SEVEN tents", key = 7, },
            { text = "8", help = "Spawn with EIGHT tents", key = 8, },
            { text = "9", help = "Spawn with NINE tents", key = 9, },
        },
    },
    {
        default = 1,
        label = "Spawn Delay",
        help = "(Survival modes only) Extra time before the first enemies start spawning. Compounds with the tech specific spawn delay options. Also delays Random Events and Bounty Hunters. Normal difficulty has 6 seconds spawn delay. Very easy has 3 minutes",
        key = 'opt_FinalRushSpawnDelay',
        pref = 'opt_FinalRushSpawnDelay',
        values = {
            { text = "Difficulty preset", help = "Automatically pick a value based on the selected difficulty", key = -1, },
            { text = "None", help = "None", key = 0, },
            { text = "10 seconds", help = "10 seconds", key = 10, },
            { text = "30 seconds", help = "30 seconds", key = 30, },
            { text = "1 minute", help = "1 minute", key = 60, },
            { text = "2 minutes", help = "2 minutes", key = 120, },
            { text = "3 minutes", help = "3 minutes", key = 180, },
            { text = "5 minutes", help = "5 minutes", key = 300, },
            { text = "7 minutes", help = "7 minutes", key = 420, },
            { text = "10 minutes", help = "10 minutes", key = 600, },
            { text = "15 minutes", help = "15 minutes", key = 900, },
            { text = "24 hours", help = "Welcome to SimCity", key = 86400, },
        },
    },
    {
        default = 1,
        label = "T1 Frequency",
        help = "(Survival modes only) How often T1 units are spawned. The default for all difficulties is 6 seconds",
        key = 'opt_FinalRushT1Frequency',
        pref = 'opt_FinalRushT1Frequency',
        values = {
            { text = "Difficulty preset", help = "Automatically pick a value based on the selected difficulty", key = -1, },
            { text = "Every 2 seconds", help = "Every 2 seconds", key = 2, },
            { text = "Every 3 seconds", help = "Every 3 seconds", key = 3, },
            { text = "Every 4 seconds", help = "Every 4 seconds", key = 4, },
            { text = "Every 5 seconds", help = "Every 5 seconds", key = 5, },
            { text = "Every 6 seconds", help = "Every 6 seconds", key = 6, },
            { text = "Every 7 seconds", help = "Every 7 seconds", key = 7, },
            { text = "Every 8 seconds", help = "Every 8 seconds", key = 8, },
            { text = "Every 10 seconds", help = "Every 10 seconds", key = 10, },
            { text = "Every 20 seconds", help = "Every 20 seconds", key = 20, },
            { text = "Every 30 seconds", help = "Every 30 seconds", key = 30, },
        },
    },
    {
        default = 1,
        label = "T2 Spawn Delay",
        help = "(Survival modes only) Time before the first T2 units start spawning. Compounds with the general Spawn Delay option. Normal difficulty is 6 minutes",
        key = 'opt_FinalRushT2Delay',
        pref = 'opt_FinalRushT2Delay',
        values = {
            { text = "Difficulty preset", help = "Automatically pick a value based on the selected difficulty", key = -1, },
            { text = "None", help = "None", key = 0, },
            { text = "30 seconds", help = "30 seconds", key = 30, },
            { text = "1 minute", help = "1 minute", key = 60, },
            { text = "2 minutes", help = "2 minutes", key = 120, },
            { text = "3 minutes", help = "3 minutes", key = 180, },
            { text = "5 minutes", help = "5 minutes", key = 300, },
            { text = "6 minutes", help = "6 minutes", key = 360, },
            { text = "7 minutes", help = "7 minutes", key = 420, },
            { text = "10 minutes", help = "10 minutes", key = 600, },
            { text = "15 minutes", help = "15 minutes", key = 900, },
            { text = "20 minutes", help = "20 minutes", key = 1200, },
        },
    },
    {
        default = 1,
        label = "T2 Frequency",
        help = "(Survival modes only) How often T2 units are spawned. The default for all difficulties is 6 seconds",
        key = 'opt_FinalRushT2Frequency',
        pref = 'opt_FinalRushT2Frequency',
        values = {
            { text = "Difficulty preset", help = "Automatically pick a value based on the selected difficulty", key = -1, },
            { text = "Every 2 seconds", help = "Every 2 seconds", key = 2, },
            { text = "Every 3 seconds", help = "Every 3 seconds", key = 3, },
            { text = "Every 4 seconds", help = "Every 4 seconds", key = 4, },
            { text = "Every 5 seconds", help = "Every 5 seconds", key = 5, },
            { text = "Every 6 seconds", help = "Every 6 seconds", key = 6, },
            { text = "Every 7 seconds", help = "Every 7 seconds", key = 7, },
            { text = "Every 8 seconds", help = "Every 8 seconds", key = 8, },
            { text = "Every 10 seconds", help = "Every 10 seconds", key = 10, },
            { text = "Every 12 seconds", help = "Every 12 seconds", key = 12, },
            { text = "Every 15 seconds", help = "Every 15 seconds", key = 15, },
            { text = "Every 20 seconds", help = "Every 20 seconds", key = 20, },
            { text = "Every 30 seconds", help = "Every 30 seconds", key = 30, },
        },
    },
    {
        default = 1,
        label = "T3 Spawn Delay",
        help = "(Survival modes only) Time before the first T3 units start spawning. Compounds with the general Spawn Delay option. Normal difficulty is 12 minutes",
        key = 'opt_FinalRushT3Delay',
        pref = 'opt_FinalRushT3Delay',
        values = {
            { text = "Difficulty preset", help = "Automatically pick a value based on the selected difficulty", key = -1, },
            { text = "None", help = "None", key = 0, },
            { text = "3 minutes", help = "3 minutes", key = 180, },
            { text = "5 minutes", help = "5 minutes", key = 300, },
            { text = "7 minutes", help = "7 minutes", key = 420, },
            { text = "10 minutes", help = "10 minutes", key = 600, },
            { text = "12 minutes", help = "12 minutes", key = 720, },
            { text = "15 minutes", help = "15 minutes", key = 900, },
            { text = "20 minutes", help = "20 minutes", key = 1200, },
            { text = "30 minutes", help = "30 minutes", key = 1800, },
            { text = "40 minutes", help = "40 minutes", key = 2400, },
        },
    },
    {
        default = 1,
        label = "T3 Frequency",
        help = "(Survival modes only) How often T3 units are spawned. The default for all difficulties is 10 seconds",
        key = 'opt_FinalRushT3Frequency',
        pref = 'opt_FinalRushT3Frequency',
        values = {
            { text = "Difficulty preset", help = "Automatically pick a value based on the selected difficulty", key = -1, },
            { text = "Every 2 seconds", help = "Every 2 seconds", key = 2, },
            { text = "Every 3 seconds", help = "Every 3 seconds", key = 3, },
            { text = "Every 4 seconds", help = "Every 4 seconds", key = 4, },
            { text = "Every 5 seconds", help = "Every 5 seconds", key = 5, },
            { text = "Every 6 seconds", help = "Every 6 seconds", key = 6, },
            { text = "Every 7 seconds", help = "Every 7 seconds", key = 7, },
            { text = "Every 8 seconds", help = "Every 8 seconds", key = 8, },
            { text = "Every 9 seconds", help = "Every 9 seconds", key = 9, },
            { text = "Every 10 seconds", help = "Every 10 seconds", key = 10, },
            { text = "Every 11 seconds", help = "Every 11 seconds", key = 11, },
            { text = "Every 12 seconds", help = "Every 12 seconds", key = 12, },
            { text = "Every 13 seconds", help = "Every 13 seconds", key = 13, },
            { text = "Every 15 seconds", help = "Every 15 seconds", key = 15, },
            { text = "Every 20 seconds", help = "Every 20 seconds", key = 20, },
            { text = "Every 30 seconds", help = "Every 30 seconds", key = 30, },
        },
    },
    {
        default = 1,
        label = "T4 Spawn Delay",
        help = "(Survival modes only) Time before the first T4 units start spawning. Compounds with the general Spawn Delay option. Normal difficulty is 18 minutes",
        key = 'opt_FinalRushT4Delay',
        pref = 'opt_FinalRushT4Delay',
        values = {
            { text = "Difficulty preset", help = "Automatically pick a value based on the selected difficulty", key = -1, },
            { text = "None", help = "None", key = 0, },
            { text = "5 minutes", help = "5 minutes", key = 300, },
            { text = "7 minutes", help = "7 minutes", key = 420, },
            { text = "10 minutes", help = "10 minutes", key = 600, },
            { text = "15 minutes", help = "15 minutes", key = 900, },
            { text = "18 minutes", help = "18 minutes", key = 18 * 60, },
            { text = "20 minutes", help = "20 minutes", key = 20 * 60, },
            { text = "22 minutes", help = "22 minutes", key = 22 * 60, },
            { text = "25 minutes", help = "25 minutes", key = 25 * 60, },
            { text = "30 minutes", help = "30 minutes", key = 1800, },
            { text = "40 minutes", help = "40 minutes", key = 2400, },
            { text = "50 minutes", help = "50 minutes", key = 3000, },
            { text = "60 minutes", help = "60 minutes", key = 3600, },
        },
    },
    {
        default = 1,
        label = "T4 Frequency",
        help = "(Survival modes only) How often T4 units are spawned. Normal difficulty is 10 seconds",
        key = 'opt_FinalRushT4Frequency',
        pref = 'opt_FinalRushT4Frequency',
        values = {
            { text = "Difficulty preset", help = "Automatically pick a value based on the selected difficulty", key = -1, },
            { text = "Every 2 seconds", help = "Every 2 seconds", key = 2, },
            { text = "Every 3 seconds", help = "Every 3 seconds", key = 3, },
            { text = "Every 4 seconds", help = "Every 4 seconds", key = 4, },
            { text = "Every 5 seconds", help = "Every 5 seconds", key = 5, },
            { text = "Every 6 seconds", help = "Every 6 seconds", key = 6, },
            { text = "Every 7 seconds", help = "Every 7 seconds", key = 7, },
            { text = "Every 8 seconds", help = "Every 8 seconds", key = 8, },
            { text = "Every 9 seconds", help = "Every 9 seconds", key = 9, },
            { text = "Every 10 seconds", help = "Every 10 seconds", key = 10, },
            { text = "Every 11 seconds", help = "Every 11 seconds", key = 11, },
            { text = "Every 12 seconds", help = "Every 12 seconds", key = 12, },
            { text = "Every 15 seconds", help = "Every 15 seconds", key = 15, },
            { text = "Every 20 seconds", help = "Every 20 seconds", key = 20, },
            { text = "Every 30 seconds", help = "Every 30 seconds", key = 30, },
        },
    },
    {
        default = 1,
        label = "Bounty Hunter Spawn Delay",
        help = "(Survival modes only) Time before the first Bounty Hunters start spawning. Compounds with the general Spawn Delay option. Normal difficulty is 22 minutes",
        key = 'opt_FinalRushHunterDelay',
        pref = 'opt_FinalRushHunterDelay',
        values = {
            { text = "Difficulty preset", help = "Automatically pick a value based on the selected difficulty", key = -1, },
            { text = "None", help = "None", key = 0, },
            { text = "5 minutes", help = "5 minutes", key = 300, },
            { text = "7 minutes", help = "7 minutes", key = 420, },
            { text = "10 minutes", help = "10 minutes", key = 600, },
            { text = "15 minutes", help = "15 minutes", key = 900, },
            { text = "18 minutes", help = "18 minutes", key = 18 * 60, },
            { text = "20 minutes", help = "20 minutes", key = 1200, },
            { text = "22 minutes", help = "22 minutes", key = 22 * 60, },
            { text = "24 minutes", help = "24 minutes", key = 24 * 60, },
            { text = "30 minutes", help = "30 minutes", key = 1800, },
            { text = "40 minutes", help = "40 minutes", key = 2400, },
            { text = "50 minutes", help = "50 minutes", key = 3000, },
            { text = "60 minutes", help = "60 minutes", key = 3600, },
        },
    },
    {
        default = 1,
        label = "Bounty Hunter Frequency",
        help = "(Survival modes only) When enabled, from time to time Bounty Hunters (an ACU and a few SACUs) will hunt the players. Normal difficulty is 5 minutes",
        key = 'opt_FinalRushHunters',
        pref = 'opt_FinalRushHunters',
        values = {
            { text = "Difficulty preset", help = "Automatically pick a value based on the selected difficulty", key = -1, },
            { text = "No Bounty Hunters", help = "No Bounty Hunters", key = 0, },
            { text = "Every 20 minutes", help = "Every 20 minutes", key = 1200, },
            { text = "Every 10 minutes", help = "Every 10 minutes", key = 600, },
            { text = "Every 7 minutes", help = "Every 7 minutes", key = 420, },
            { text = "Every 5 minutes", help = "Every 5 minutes", key = 300, },
            { text = "Every 3 minutes", help = "Every 3 minutes", key = 180, },
            { text = "Every 2 minutes", help = "Every 2 minutes", key = 120, },
            { text = "Every minute", help = "Every minute", key = 60, },
            { text = "Every 5 seconds", help = "Because I'm worth it", key = 5, },
        },
    },
    {
        default = 1,
        label = "Aggression Tracking",
        help = "(Survival modes only) Aggressive players get more units. If artilery is not disabled, the extra units will mainly be artilery. Things that generate agression: reaching tech 2, reaching tech 3, creating your first experimental, building mexes, building massfabs, building nukes, building arty and walking your ACU to the center.",
        key = 'opt_FinalRushAggression',
        pref = 'opt_FinalRushAggression',
        values = {
            { text = "Difficulty preset", help = "Automatically pick a value based on the selected difficulty", key = -1, },
            { text = "Disabled", help = "Disabled", key = 0, },
            { text = "Enabled", help = "Enabled", key = 1, },
        },
    },
    {
        default = 1,
        label = "Player Teleportation",
        help = "Player Teleportation",
        key = 'opt_Teleport',
        pref = 'opt_Teleport',
        values = {
            { text = "Enabled", help = "Enabled", key = 0, },
            { text = "Disabled", help = "Disabled", key = 1, },
        },
    },
    {
        default = 1,
        label = "Player Tech Delay",
        help = "Players start with only tech 1. Higher tech tiers get unlocked at the specified interval. This does not effect the spawned enemy units.",
        key = 'opt_timeunlocked',
        pref = 'opt_timeunlocked',
        values = {
            { text = "Disabled", help = "Disabled", key = 0, },
            { text = "1 minute", help = "1 minute", key = 60, },
            { text = "2 minutes", help = "2 minutes", key = 120, },
            { text = "3 minutes", help = "3 minutes", key = 180, },
            { text = "5 minutes", help = "5 minutes", key = 300, },
            { text = "10 minutes", help = "10 minutes", key = 600, },
            { text = "15 minutes", help = "15 minutes", key = 900, },
            { text = "20 minutes", help = "20 minutes", key = 1200, },
            { text = "24 hours", help = "Who needs tech anyway. Such hipsters", key = 86400, },
        },
    },
    {
        default = 1,
        label = "Enemy T2 MMLs",
        help = "(Survival modes only) T2 MMLs",
        key = 'opt_t2tml',
        pref = 'opt_t2tml',
        values = {
            { text = "Enabled", help = "Enabled", key = 0, },
            { text = "Disabled", help = "Disabled", key = 1, },
        },
    },
    {
        default = 1,
        label = "Enemy Mobile T3 Artillery",
        help = "(Survival modes only) Mobile T3 Artillery",
        key = 'opt_t3arty',
        pref = 'opt_t3arty',
        values = {
            { text = "Enabled", help = "Enabled", key = 0, },
            { text = "Disabled", help = "Disabled", key = 1, },
        },
    },
    {
        default = 1,
        label = "Enemy Sniper Bots",
        help = "(Survival modes only) Sniper Bots",
        key = 'opt_snipers',
        pref = 'opt_snipers',
        values = {
            { text = "Enabled", help = "Enabled", key = 0, },
            { text = "Disabled", help = "Disabled", key = 1, },
        },
    }
};
