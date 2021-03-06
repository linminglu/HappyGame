-- Date: 2015-10
-- File: msg_xx_common.lua
-- Auth: generated by auto tool 'lazybone'
-- Desc: message define


--// 金融系统中虚拟货币类型
kFinance = {
    kNone = 0,
    kDiamond = 1,  --//钻石
    kCoin = 2,  --//金币
    kBP = 3,  --//境界点
    kSP = 4,  --//斗魂点
    kHR = 5,  --//荣誉值
    kFC = 6,  --//家族贡献度
}

--// 角色的职业类型
kCareer = {
    kNone = 0,
    kWarrior = 1,  --//战士
    kMage = 2,  --//法师
    kThug = 3,  --//刺客
    kTotoalNum = 3,  --//总数
}

--// 物品基本类型
kItemType = {
    kNone = 0,
    kEquip = 1,  --// 武器装备
    kStone = 2,  --// 宝石
    kBox = 3,  --// 宝箱
    kFeed = 4,  --// 补给类
    kCounter = 5,  --// 计数类
}

--// 补给类物品作用类型
kFeedEffect = {
    kNone = 0,
    kRealmPoint = 1,  --// 境界点
    kExp = 2,  --// 经验
    kStrength = 3,  --// 体力
    kFreeWar = 4,  --// 免战
}

--// 属性类型
kAttribute = {
    kNone = 0,
    kHp = 1,  --// 生命值
    kAttack = 2,  --// 攻击力
    kDefend = 3,  --// 防御
    kCritChance = 4,  --// 暴击几率
    kCritDmage = 5,  --// 暴击伤害
    kResilience = 6,  --// 韧性
    kResistance = 7,  --// 抗性
    kBlock = 8,  --// 格挡
    kPenetration = 9,  --// 穿透
    kDodgeChance = 10,  --// 闪避
    kAbilityPower = 11,  --// 属性强化
    kFireAttack = 12,  --// 火属性攻击
    kColdAttack = 13,  --// 冰属性攻击
    kLightningAttack = 14,  --// 雷属性攻击
    kLifePerSecond = 15,  --// 再生
    kLifeSteal = 16,  --// 吸血比率
    kSpeed = 17,  --// 行走速度
    kFuryRegeneration = 18,  --// 怒气积攒速率
    kTotalNum = 18,  --// 属性类型总数
}

--// 装备部位
kEqpLocation = {
    kNone = 0,
    kHead = 1,  --// 头部
    kBody = 2,  --// 身
    hHand = 3,  --// 手
    kLeg = 4,  --// 胳膊
    kWeapon = 5,  --// 武器
    kNecklace = 6,  --// 项链
    kRing = 7,  --// 戒指
    kFashionBack = 8,  --// 时装背
    kFashionBody = 9,  --// 时装身
    kFashionHalo = 10,  --// 时装光环
    kTotoalNum = 10,  --// 位置总数
}

--// 商店类型
kShopType = {
    kNone = 0,
    kDiamondShop = 1,  --// 钻石商城
    kHonorShop = 2,  --// 荣誉商城
    kFamilyShop = 3,  --// 家族商城
}

--// 商品
kGoodsFlag = {
    kNote = 0,
    kHot = 1,  --// 热销
    kTimeLimited = 2,  --//限时抢购
}

--// 炼化状态
kRefineState = {
    kNone = 0,
    kFinish = 1,  --// 完成
    kRefining = 2,  --// 炼化中
    kWait = 3,  --// 等待
}

--// 物品使用类型
kItemUseType = {
    kNone = 0,
    kBladeSoul = 1,  --// 剑灵丹
    kEquipPieces = 2,  --// 装备碎片
    kEquipTree = 3,  --// 图谱
    kPetFood = 4,  --// 宠物食材
    kFriendGift = 5,  --// 好友礼物
    kExpPill = 6,  --// 经验丹
    kPage = 7,  --// 残页
}

--// 副本类型
kBattleType = {
    kNone = 0,
    kMoney = 1,  --// 金钱副本
}

--// 商城标签类型
kTagType = {
    KLabel = 0,  --// 标注标签（热销等）
    kClothes = 1,  --// 时装标签
    kEquip = 2,  --// 装备标签
    kPet = 3,  --// 宠物标签
    kJewel = 4,  --// 宝石标签
    kTool = 5,  --// 道具标签
}

--// 副本类型
kCopy = {
    kNone = 0,  --// 无效
    kGold = 1,  --// 金钱副本
    kStuff = 2,  --// 材料副本
    kMaze = 3,  --// 迷宫副本
    kChallenge = 4,  --// 挑战副本
    kTower = 5,  --// 爬塔副本
    kMapBoss = 6,  --// 地图boss副本
    kMidNight = 7,  --// 午夜惊魂副本
    kPVP = 8,  --// 排行榜副本
    kHuaShan = 9,  --// 华山论剑副本
    kStory = 10,  --// 剧情副本
    kTeamAIFight = 11,  --// 组队（AI版）副本
}

--// 通知类型
kNoticeType = {
    kNone = 0,  --// 无效类型
    kDisplay = 1,  --// 跑马灯
}

--// 任务类型
kTaskType = {
    kNone = 0,  --// 无效
    kMain = 1,  --// 主线任务
    kSub = 2,  --// 支线任务
    kBounty = 3,  --// 悬赏任务
    kDaily = 4,  --// 日常任务
    kFamily = 5,  --// 家族任务
}

--// 事件类型
kEventType = {
    kNone = 0,  --// 无效
    kCopy = 1,  --// 打副本
    kArena = 2,  --// 竞技场挑战
    kResolve = 3,  --// 分解
    kSynthesis = 4,  --// 合成
    kInlay = 5,  --// 镶嵌
    kForging = 6,  --// 锻造
    kUpFairyPill = 7,  --// 升级境界丹
    kUpFairyDish = 8,  --// 升级境界盘
    kRefineBlade = 9,  --// 炼化剑魂
    kDevourBlade = 10,  --// 吞噬剑魂
    kAwakeBeauty = 11,  --// 唤醒美人
    kKissBeauty = 12,  --// 亲密美人
    kUpBeauty = 13,  --// 美人升级
    kUpSkill = 14,  --// 技能升级
    kFeedPet = 15,  --// 给宠物喂食
    kUpPet = 16,  --// 宠物升级
    kCompoundPet = 17,  --// 合成宠物
    kAdvancePet = 18,  --// 给宠物升阶
    kCharge = 19,  --// 充值
    kCostDiamond = 20,  --// 消耗钻石
    kUpRoleLevel = 21,  --// 升级
    kUseItem = 22,  --// 使用道具
    kCostStrength = 23,  --// 消耗体力
    kInviteFriend = 24,  --// 申请好友
    kIntensify = 25,  --// 强化
    kFightPower = 26,  --// 战斗力
    kFriendCount = 27,  --// 好友数量
    kFriendShip = 28,  --// 好友亲密度
    kFriendGift = 29,  --// 好友礼包
    kEntryFamily = 30,  --// 加入家族
    kFamilyDonate = 31,  --// 家族捐献
    kFinishTypeTask = 32,  --// 完成某类型任务N个
    kSaleWine = 33,  --// 出售酒品
    kBuyWine = 34,  --// 购买酒品
    kAchieveRank = 35,  --// 达成成就排名刷新
    kLibrary = 36,  --// 藏经阁
    kVipLevel = 37,  --// vip等级
}

--// 任务状态
kTaskState = {
    kNone = 0,  --// 无效状态
    kRunning = 1,  --// 进行中
    kFinish = 2,  --// 完成未领奖
    kClear = 3,  --// 完成随时回收
}

--// 邮件类型
KMailType = {
    kNone = 0,  --// 无效
    kSystem = 1,  --// 系统邮件
}

--// 聊天类型
kChatType = {
    kNone = 0,  --// 无效类型
    kAll = 1,  --// 全服
    kFamily = 2,  --// 家族
    kPrivate = 3,  --// 私聊
    kTeam = 4,  --// 队伍
    kAddTeam = 5,  --//组队信息
    kSystem = 6,  --// 系统
}

--// 内容类型
kContentType = {
    kNone = 0,  --// 无效类型
    kText = 1,  --// 普通文字
    kVoice = 2,  --// 语音类型
    kOther = 3,  --// 其他
}

--// 家族职位
kFamilyPosition = {
    kNone = 0,  --// 无效类型
    kLeader = 1,  --// 族长
    kDeputyLeader = 2,  --// 副族长
    kManager = 3,  --// 管理员
    kMember = 4,  --// 普通成员
}

--// 跑马灯类型
kMarqueeType = {
    kNone = 0,  --// 无效类型
    kHornChat = 1,  --// 公共频道使用喇叭
    kCreateFamily = 2,  --// 创建家族
    kSystemChat = 3,  --// 系统通告
}

--// 家族操作类型
kFamilyAction = {
    kNone = 0,  --// 无效
    kSetLeader = 1,  --// 设置族长职位
    kSetDeputy = 2,  --// 设置副族长职位
    kSetManager = 3,  --// 设置管理员职位
    kSetMenber = 4,  --// 设置成员职位
    kJoin = 5,  --// 批准加入
    kExpelMember = 6,  --// 开除成员
    kUpgrade = 7,  --// 升级家族
    kBuff = 8,  --// 家族科技的操作
    kChangeName = 9,  --// 修改名字
    kChangePurpose = 10,  --// 修改宗旨
    kUpgradeAcademy = 11,  --// 升级研究所
    kActivateTech = 12,  --// 激活科技
    kUpgradeTech = 13,  --// 升级科技
    kMax = 13,
}

--// 贡献类型
kContributionType = {
    kNone = 0,  --// 无效类型
    kScore = 1,  --// 家族建设度
    KCash = 2,  --// 家族资金
}

--// 宠物操作类型
kPetHandleType = {
    kNone = 0,  --// 无效类型
    kCompound = 1,  --// 宠物合成
    kUpdate = 2,  --// 宠物升级
    kPromotion = 3,  --// 宠物升阶
    kResonance = 4,  --// 宠物共鸣
}

--// 活动类型
kActivityType = {
    kNone = 0,  --// 无效类型
    kOnline = 1,  --// 在线奖励
    kAmassPay = 2,  --// 累计充值
    kLevelGift = 3,  --// 等级礼包
    kMonthSign = 4,  --// 月签到
    kStrengthGive = 5,  --// 体力赠送
    kGiftCodeCash = 6,  --// 礼品码兑换
    kFirstPay = 7,  --// 首充
}

--// 签到状态
kSignState = {
    kNone = 0,  --// 未签到
    kNormal = 1,  --// 普通签到
    kVip = 2,  --// vip签到
}

--// 体力赠送状态
kPowerGiveState = {
    kNoOpen = 0,  --// 未开启
    kOpen = 1,  --// 开启
    kGain = 2,  --// 已领取
}

--// 排行榜类型
kRankType = {
    kNone = 0,  --//
    kLevle = 1,  --// 等级排行
    kFightPower = 2,  --// 战斗力排行
    kFortune = 3,  --// 财富排行
    kPet = 4,  --// 宠物排行
    kAchievement = 5,  --// 成就排行
    kMax = 5,  --// 最大类型
    kArena = 6,  --// 竞技场排行(放在max之后 因为竞技场排行不在排行榜中 这里只是用枚举)
}

--// 后台充值类型
kWebPayType = {
    kNone = 0,  --// 无效类型
    kFake = 1,  --// 伪充值（补单）
    kDirect = 2,  --// 直充
}

