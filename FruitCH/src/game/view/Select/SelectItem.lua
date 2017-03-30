
local SelectItem = class("SelectItem",function()
    return display.newNode()
end)

function SelectItem:ctor(parameters)
    self.parm = parameters
    
    self.m_json = cc.uiloader:load("json/SelectItem.json")
    self:addChild(self.m_json)

    self.SelectBtn = cc.uiloader:seekNodeByName(self.m_json,"SelectBtn")
    self.SelectBtn:setTouchSwallowEnabled(false)
    self.SelectBtn:onButtonClicked(function(event)
        Tools.printDebug("chjh button click")
        Tools.printDebug("----------关卡：",parameters._id)
        self:initLevelVo(parameters._id)
    end)
    
    local LevelCount = cc.uiloader:seekNodeByName(self.m_json,"LevelCount")
    LevelCount:setString(parameters._id)
    
    self.starArr = {}
    for var=1, 3 do
        self.starArr[var] = cc.uiloader:seekNodeByName(self.m_json,"Star_"..var)
        self.starArr[var]:setVisible(false)
    end

    self:initLevelData()
    
end

function SelectItem:initLevelVo(level)
    GameDataManager.setCurLevelId(level,level)
    GameDispatcher:dispatch(EventNames.EVENT_OPEN_READY,GAME_TYPE.LevelMode)
--    GameDataManager.generatePlayerVo()  --产生新的角色数据对象
--    app:enterGameScene()
end

function SelectItem:initLevelData(level)
    if not GameDataManager.getFightData(self.parm._id) then
        self.SelectBtn:setButtonEnabled(false)
        if GameDataManager.getFightData(self.parm._id-1) then
            self.SelectBtn:setButtonEnabled(true)
        end
    else
        self.SelectBtn:setButtonEnabled(true)
        local stars = GameDataManager.getLevelStar(self.parm._id)
        for var=1, stars do
            self.starArr[var]:setVisible(true)
        end
        
    end
end

function SelectItem:onCleanup(parameters)

end

function SelectItem:dispose(_clean)
    self:removeFromParent(_clean)
end

return SelectItem