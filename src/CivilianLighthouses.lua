newInstance = function(textPrinter)
    local function preventDamage(unit)
       unit:SetReclaimable(false);
       unit:SetCanTakeDamage(false);
       unit:SetDoNotTarget(true);
       unit:SetCanBeKilled(false);
    end

    local function initializeLighthouse(lighthouse, textLocation)
        local printText = function(txt, durationInSeconds)
            textPrinter.print("     " .. txt .. "     ", {location = textLocation, duration = durationInSeconds})
        end

        preventDamage(lighthouse)

        lighthouse:SetCustomName("Such NSA")

        lighthouse.OnStartBeingCaptured = function()
            printText("Wolololo", 2)
        end

        lighthouse.OnCaptured = function(self, captor)
            local unit = ChangeUnitArmy(self, captor:GetArmy())
            preventDamage(unit)

            printText("Converted to Christianity", 3)
        end

        lighthouse.OnFailedBeingCaptured = function()
            printText("Nope.jpg", 2)
        end
    end

    return {
        spawn = function()
            local bp = GetUnitBlueprintByName("urc1901")
            bp.Intel.VisionRadius = 290
            bp.Economy.BuildTime = 800

            initializeLighthouse(
                CreateUnitHPR( "urc1901", "NEUTRAL_CIVILIAN", 13.816323, 25.730654, 500.078125, 0,0,0),
                "leftcenter"
            )

            initializeLighthouse(
                CreateUnitHPR( "urc1901", "ARMY_9", 498.060150, 25.724628, 12.122614, 0,0,0),
                "rightcenter"
            )
        end
    }
end