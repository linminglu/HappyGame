--===================================================
-- (c) copyright 2014 - 2015, www.cfanim.cn
-- All Rights Reserved.
--==================================================
-- filename:  WarriorSkill4.lua
-- author:    taoye
-- e-mail:    553681974@qq.com
-- created:   2015/5/29
-- descrip:   战士技能4 【裂风斩】
--===================================================
local WarriorSkill4 = class("WarriorSkill4",function(master, skillInfo)
    return require("SkillObj"):create(master, skillInfo)
end)

-- 构造函数
function WarriorSkill4:ctor()
    self._strName = "WarriorSkill4"                               -- 技能名称
    self._kTypeID = kType.kSkill.kID.kWarriorSkill4               -- 技能对象类型
    self._pCurState = nil                                         -- 技能当前的状态机状态
    
    self._bStickAdd = false                                    -- 引用计数的标记
    
    self._nRoleAttackActionIndex = 4                              -- 角色攻击动作index
    self._fChantDelayTime = 0.35                                   -- 吟唱动作持续时间s
    
end

-- 创建函数
function WarriorSkill4:create(master, skillInfo)   
    local skill = WarriorSkill4.new(master, skillInfo)
    skill:dispose()
    return skill
end

-- 处理函数
function WarriorSkill4:dispose()
    ------------------- 初始化 ------------------------  
    -- 创建状态机
    self:initStateMachine()
    
    ------------------- 结点事件------------------------
    local function onNodeEvent(event)
        if event == "exit" then
            self:onExitWarriorSkill4()
        end
    end
    self:registerScriptHandler(onNodeEvent)
    
    return
end

-- 退出函数
function WarriorSkill4:onExitWarriorSkill4()    
    self:onExitSkillObj()
end

-- 循环更新
function WarriorSkill4:update(dt)
    self:updateSkillObj(dt)
end

-- 创建状态机
function WarriorSkill4:initStateMachine()
    self._pStateMachineDelegate = require("StateMachineDelegate"):create()
    local pStateMachine = require("BattleSkillStateMachine"):create(self)
    self._pStateMachineDelegate:addStateMachine(pStateMachine)
end

-- 技能使用接口
function WarriorSkill4:onUse() 
    -- 立即手动切换到吟唱状态
    if self._pCurState._kTypeID == kType.kState.kBattleSkill.kIdle then
        self._fCDCounter = 0   -- CD时间清空 
        self._pCurState._pOwnerMachine:setCurStateByTypeID(kType.kState.kBattleSkill.kChant)
    else  -- 如果当前技能正处于使用状态，则立即将角色切换回站立状态
        if self:getMaster()._kRoleType == kType.kRole.kPlayer then
            self:getMaster():getStateMachineByTypeID(kType.kStateMachine.kBattlePlayerRole):setCurStateByTypeID(kType.kState.kBattlePlayerRole.kStand)          
        elseif self:getMaster()._kRoleType == kType.kRole.kOtherPlayer then
            self:getMaster():getStateMachineByTypeID(kType.kStateMachine.kBattleOtherPlayerRole):setCurStateByTypeID(kType.kState.kBattleOtherPlayerRole.kStand)
        end
    end
end

-- 初始化动作帧事件回调
function WarriorSkill4:initActionsFrameEvents(index, action)
    if index == 1 then
        local function onFrameEvent1(frame)
            if nil == frame then
                return
            end
            self._strFrameEventName = frame:getEvent()
        end
        action:setFrameEventCallFunc(onFrameEvent1)
    end

end

-- 帧事件的处理
function WarriorSkill4:procActionsFrameEvents()
    if self._strFrameEventName == "" then
    elseif self._strFrameEventName == "start1" then
    elseif self._strFrameEventName == "hurt1_1" then
        self:setCurAttackFrameEventInfo(1,1)
        self:getAIManager():skillCollidingOnEnemysAndHurt(self:getMaster(), self)
    elseif self._strFrameEventName == "hurt1_2" then
        self:setCurAttackFrameEventInfo(1,2)
        self:getAIManager():skillCollidingOnEnemysAndHurt(self:getMaster(), self)
    elseif self._strFrameEventName == "hurt1_3" then
        self:setCurAttackFrameEventInfo(1,3)
        self:getAIManager():skillCollidingOnEnemysAndHurt(self:getMaster(), self)
    elseif self._strFrameEventName == "hurt1_4" then
        self:setCurAttackFrameEventInfo(1,4)
        self:getAIManager():skillCollidingOnEnemysAndHurt(self:getMaster(), self)
    elseif self._strFrameEventName == "end1" then
        self:clearCurAttackFrameEventInfo()
    end
    self._strFrameEventName = ""
end

-------------------------------------------------------------------------------------------------
-- 技能待机状态onEnter时技能操作
function WarriorSkill4:onEnterIdleDo(state)
    --print("WarriorSkill4:onEnterIdleDo()")
    self._pCurState = state
    self:setVisible(false)
    self:setScale(1)
    self._pAni:setOpacity(255)

end

-- 技能待机状态onExit时技能操作
function WarriorSkill4:onExitIdleDo()
--print("WarriorSkill4:onExitIdleDo()")
end

-- 技能待机状态onUpdate时技能操作
function WarriorSkill4:onUpdateIdleDo(dt)

end
-------------------------------------------------------------------------------------------------
-- 技能吟唱状态onEnter时技能操作
function WarriorSkill4:onEnterChantDo(state)
    --print("WarriorSkill4:onEnterChantDo()")
    self._pCurState = state
    
    local info = self._pSkillInfo
    
    -- 播放人物动作
    self:getMaster():playAttackAction(self._nRoleAttackActionIndex)
    
    -- 技能吼叫音效
    AudioManager:getInstance():playEffect(self._tTempleteInfo.SkillRoarVoice)

    ---人物吟唱动作播放到一段时间时进入到process阶段------------------------------------------------------------------------------
    local chantOver = function()
        self:setVisible(true)
        self:playActionByIndex(1)
        
        -- 给技能指定施展时的zorder
        self._nSettledZorder = kZorder.kMaxSkill
        
        -- 位置更新
        local posX, posY = self:getMaster():getPosition()
        self:setPosition(posX, posY)  
        self._pCurState._pOwnerMachine:setCurStateByTypeID(kType.kState.kBattleSkill.kProcess)
    end
    self._pChantOverActionNode:stopAllActions()
    self._pChantOverActionNode:runAction(cc.Sequence:create(cc.DelayTime:create(self._fChantDelayTime), cc.CallFunc:create(chantOver)))  -- x秒动作后放出技能  
    
    local skillActOver = function()
        -- 摇杆解禁
        self:getMaster()._refStick:sub()
        self._bStickAdd = false
        if self:getMaster():isUnusualState() == false then     -- 正常状态
            if self:getMaster()._kRoleType == kType.kRole.kPlayer then
                self:getMaster():getStateMachineByTypeID(kType.kStateMachine.kBattlePlayerRole):setCurStateByTypeID(kType.kState.kBattlePlayerRole.kStand)          
            elseif self:getMaster()._kRoleType == kType.kRole.kOtherPlayer then
                self:getMaster():getStateMachineByTypeID(kType.kStateMachine.kBattleOtherPlayerRole):setCurStateByTypeID(kType.kState.kBattleOtherPlayerRole.kStand)
            end
        end
    end
    -- 摇杆禁用
    self:getMaster()._refStick:add()
    self._bStickAdd = true
    self:getMaster()._refStick._nWaitingSkillActOverToSubCount = self:getMaster()._refStick._nWaitingSkillActOverToSubCount + 1
    
    local duration = self:getMaster():getAttackActionTime(self._nRoleAttackActionIndex)
    self._pSkillActOverActionNode:stopAllActions()
    self._pSkillActOverActionNode:runAction(cc.Sequence:create(cc.DelayTime:create(duration), cc.CallFunc:create(skillActOver)))
    
end

-- 技能吟唱状态onExit时技能操作
function WarriorSkill4:onExitChantDo()
--print("WarriorSkill4:onExitChantDo()")
end

-- 技能吟唱状态onUpdate时技能操作
function WarriorSkill4:onUpdateChantDo(dt)

end
-------------------------------------------------------------------------------------------------
-- 技能执行状态onEnter时技能操作
function WarriorSkill4:onEnterProcessDo(state)
    --print("WarriorSkill4:onEnterProcessDo()")
    self._pCurState = state
    self:setScale(0.1)
    
    -- 技能施展音效
    AudioManager:getInstance():playEffect(self._tTempleteInfo.SkillProcessSound)
    
    local flyOutOver = function()
        self._pCurState._pOwnerMachine:setCurStateByTypeID(kType.kState.kBattleSkill.kRelease)
    end
    local offsetY = self._pSkillInfo.BulletMaxDistance*math.sin(math.rad(self:getMaster():getAngle3D()))
    local offsetX = self._pSkillInfo.BulletMaxDistance*math.cos(math.rad(self:getMaster():getAngle3D()))
    self:stopActionByTag(nSkillFlyActTag)
    local action = cc.Spawn:create(cc.Sequence:create(cc.EaseSineOut:create(cc.MoveBy:create(self._pSkillInfo.BulletMaxDistance/self._pSkillInfo.BulletSpeed, cc.p(offsetX,offsetY))), cc.DelayTime:create(0.25), cc.CallFunc:create(flyOutOver)), cc.EaseSineInOut:create(cc.ScaleTo:create(0.4,1.0,1.0)))
    action:setTag(nSkillFlyActTag)
    self:runAction(action)
    
end

-- 技能执行状态onExit时技能操作
function WarriorSkill4:onExitProcessDo()
--print("WarriorSkill4:onExitProcessDo()")

end

-- 技能执行状态onUpdate时技能操作
function WarriorSkill4:onUpdateProcessDo(dt)  
    
end
-----------------------------------------------------------------------------------------------------
-- 技能释放状态onEnter时技能操作
function WarriorSkill4:onEnterReleaseDo(state)
    --print("WarriorSkill4:onEnterReleaseDo()")
    self._pCurState = state
    self._pCurState._pOwnerMachine:setCurStateByTypeID(kType.kState.kBattleSkill.kIdle)

end

-- 技能释放状态onExit时技能操作
function WarriorSkill4:onExitReleaseDo()
    --print("WarriorSkill4:onExitReleaseDo()")

end

-- 技能释放状态onUpdate时技能操作
function WarriorSkill4:onUpdateReleaseDo(dt)
    
end

-- 技能结束时的复位操作
function WarriorSkill4:reset()
    -- 复位给技能指定施展时的zorder
    self._nSettledZorder = nil
    self:clearCurAttackFrameEventInfo()
    
    -- 检测 相关引用计数
    if self._bStickAdd == true then
        self:getMaster()._refStick:sub()
        self._bStickAdd = false
    end
    
end

---------------------------------------------------------------------------------------------------------
return WarriorSkill4
