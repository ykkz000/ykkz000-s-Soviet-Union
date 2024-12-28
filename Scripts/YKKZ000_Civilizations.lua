---@param pPlayer Player
---@param sCivilizationType string
---@return boolean
function __ykkz000_su_check_civilization(pPlayer, sCivilizationType)
    return PlayerConfigurations[pPlayer:GetID()]:GetCivilizationTypeName() == sCivilizationType;
end

---@param pPlayer Player
function __ykkz000_su_clean_faith(pPlayer)
    pPlayer:GrantYield(YieldTypes.FAITH, -pPlayer:GetReligion():GetFaithBalance());
end

---@param iPlayerID number
---@param iFaithAmount number
function TRAIT_CIVILIZATION_YKKZ000_DIALECTICAL_MATERIALISM_NO_FAITH(iPlayerID, iFaithAmount)
    local pPlayer = PlayerManager.GetPlayer(iPlayerID);
    if (pPlayer == nil) then
        return
    end
    if (not __ykkz000_su_check_civilization(pPlayer, "CIVILIZATION_YKKZ000_SOVIET_UNION")) then
        return
    end
    __ykkz000_su_clean_faith(pPlayer);
end

---@param iPlayerID number
function TRAIT_CIVILIZATION_YKKZ000_DIALECTICAL_MATERIALISM_CLEAN_FAITH(iPlayerID)
    local pPlayer = PlayerManager.GetPlayer(iPlayerID);
    if (pPlayer == nil) then
        return
    end
    if (not __ykkz000_su_check_civilization(pPlayer, "CIVILIZATION_YKKZ000_SOVIET_UNION")) then
        return
    end
    __ykkz000_su_clean_faith(pPlayer);
end

function TRAIT_CIVILIZATION_YKKZ000_DIALECTICAL_MATERIALISM_INDUSTRIAL_ZONE_IRON(iPlayerID, iDistrictID, iX, iY)
    local pPlayer = PlayerManager.GetPlayer(iPlayerID);
    if (pPlayer == nil) then
        return;
    end
    for _, pNeighborPlot in ipairs(Map.GetAdjacentPlots(iX, iY)) do
        if (pNeighborPlot:GetOwner() == iPlayerID and pNeighborPlot:GetImprovementType() == GameInfo.Improvements["IMPROVEMENT_MINE"].Index and pNeighborPlot:GetResourceType() == -1) then
            ResourceBuilder.SetResourceType(pNeighborPlot, GameInfo.Resources["RESOURCE_IRON"].Index, 1);
        end
    end
end

---@param iPlayerID number
---@param iUnitID number
function TRAIT_CIVILIZATION_YKKZ000_DIALECTICAL_MATERIALISM_BUILDER_MORE_CHARGES(iPlayerID, iUnitID)
    local pPlayer = PlayerManager.GetPlayer(iPlayerID);
    if (pPlayer == nil) then
        return;
    end
    if (not __ykkz000_su_check_civilization(pPlayer, "CIVILIZATION_YKKZ000_SOVIET_UNION")) then
        return;
    end
    local pUnit = UnitManager.GetUnit(iPlayerID, iUnitID);
    if (pUnit:GetType() ~= GameInfo.Units["UNIT_BUILDER"].Index) then
        return;
    end
    local dSumOfProduction = 0;
    for _, pCity in pPlayer:GetCities():Members() do
        dSumOfProduction = dSumOfProduction + pCity:GetYield(YieldTypes.PRODUCTION);
    end
    local pAbility = pUnit:GetAbility();
    local iExtraCharges = math.floor(math.log(dSumOfProduction)/math.log(4));
    if (iExtraCharges <= 0) then
        return
    end
    iExtraCharges = math.min(iExtraCharges, 5);
    local sAbility = string.format("ABILITY_YKKZ000_DIALECTICAL_MATERIALISM_%d", iExtraCharges)
    pAbility:AddAbilityCount(sAbility, 1);
end

GameEvents.OnFaithEarned.Add(TRAIT_CIVILIZATION_YKKZ000_DIALECTICAL_MATERIALISM_NO_FAITH);
GameEvents.PlayerTurnStarted.Add(TRAIT_CIVILIZATION_YKKZ000_DIALECTICAL_MATERIALISM_CLEAN_FAITH);
GameEvents.OnGameTurnStarted.Add(TRAIT_CIVILIZATION_YKKZ000_DIALECTICAL_MATERIALISM_CLEAN_FAITH);
Events.UnitAddedToMap.Add(TRAIT_CIVILIZATION_YKKZ000_DIALECTICAL_MATERIALISM_BUILDER_MORE_CHARGES);
GameEvents.OnDistrictConstructed.Add(TRAIT_CIVILIZATION_YKKZ000_DIALECTICAL_MATERIALISM_INDUSTRIAL_ZONE_IRON);
