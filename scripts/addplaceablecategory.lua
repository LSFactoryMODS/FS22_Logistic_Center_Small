

addplaceablecategorie = {};
local modDirectory = g_currentModDirectory or ""
local modName = g_currentModName or "unknown"

function addplaceablecategorie:addowncategory()


    g_storeManager:addConstructionCategory("factorymods", "FactoryMods", "$dataS/menu/construction/ui_construction_icons.png", GuiUtils.getUVs("41px 0 32px 32px",string.getVectorN("256 256", 2)),"")
    g_storeManager:addConstructionTab("factorymods", "LogisticCenterKlein", g_i18n:getText("factorymods_logisticcenter_klein"), "$dataS/menu/construction/ui_construction_icons.png", GuiUtils.getUVs("41px 0 32px 32px",string.getVectorN("256 256", 2)), "")
   	
end

function loadMapData(xmlFile, missionInfo, baseDirectory)
    addplaceablecategorie:addowncategory()
end

StoreManager.loadMapData = Utils.appendedFunction(StoreManager.loadMapData, loadMapData)







