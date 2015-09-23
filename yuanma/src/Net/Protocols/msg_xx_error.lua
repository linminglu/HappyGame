-- Date: 2015-9
-- File: msg_xx_error.lua
-- Auth: generated by auto tool 'lazybone'
-- Desc: message define
--// 本文档用于定义全局错误码


--// 全局错误码定义
--// ErrorCode
kEC = {
    SUCCESS = 0,  --// 成功
    XE_ERROR = 10000,  --// 入口服务通用错误码
    XE_TIMEOUT = 10001,  --// 超时
    XE_INVALID_ARG = 10002,  --// 请求参数错误
    XE_INVALID_VERIFY_KEY = 10003,  --// 无效的验证码
    XE_INVALID_GAME_CODE = 10004,  --// 无效的游戏代号
    XG_ERROR = 20000,  --// 游戏服务通用错误码
    XG_TIMEOUT = 20001,  --// 操作超时
    XG_REPEAT_NAME = 20002,  --// 重名
    XG_INVALID_NAME = 20003,  --// 无效名字
    XG_LACK_GOLD = 20004,  --// 金币不足
    XG_LACK_DIAMOND = 20005,  --// 钻石不足
    XG_LACK_MATERIAL = 20006,  --// 材料不足
    XG_NO_MATERIAL_DATA = 20007,  --// 缺少材料数据
    XG_LACK_KFC = 20008,  --// 家族贡献度不足
    XG_LACK_kHR = 20009,  --// 荣誉值不足
    XG_LACK_STRENGTH = 20010,  --// 体力不足
    XG_LACK_REAML = 20011,  --// 境界点不足
    XG_LACK_SP = 20012,  --// 斗魂点不足
    XG_AUTHENTICATE_FAILD = 20020,  --// 认证失败
    XG_INVALID_ARGS = 20100,  --// 无效参数
    XG_PACKAGE_FULL = 20101,  --// 背包已满
    XG_RESOLVE_QUALITY_ERROR = 20102,  --// 装备品质不符合分解要求
    XG_INLAY_HOLE_ERROR = 20110,  --// 装备孔不足
    XG_INLAY_STONE_TYPE_ERROR = 20111,  --// 不可镶嵌同类型宝石
    XG_EQUIP_MAX_LEVEL = 20130,  --// 装备已经是最大等级
    XG_ROLE_LACK_EQUIP = 20131,  --// 人物身上没有此装备
    XG_NO_ITENSIFY_MATERIAL_DATA = 20132,  --// 缺少强化需要的材料数据
    XG_NO_SHOP = 20140,  --// 没有此商城
    XG_NO_SHOP_GOODS = 20141,  --//没有此商城物品
    XG_FAIRY_DISH_HOLE_FULL = 20150,  --// 境界盘孔已满
    XG_FAIRY_PILL_TYPE_ERROR = 20151,  --// 境界丹类型冲突
    XG_CANNOT_FIND_SAME_PILL = 20152,  --// 找不到同类型的境界丹
    XG_PILL_LEVEL_REACH_MAX = 20153,  --// 境界丹达到最大级
    XG_DISH_LEVEL_LIMIT = 20154,  --// 境界盘等级限制
    XG_ROLE_LEVEL_LIMIT = 20155,  --// 角色等级限制
    XG_DISH_LEVEL_REACH_MAX = 20156,  --// 盘子等级到最大级
    XG_LACK_DISH_EXP = 20157,  --// 盘子经验不足
    XG_LACK_DISH_UPGRADE_ITEM = 20158,  --// 境界升阶丹不足
    XG_NOT_BEAUTY = 20160,  --// 群芳阁中没有此美人图
    XG_KISS_NUM_USE_UP = 20161,  --// 亲密次数已经用完
    XG_KISS_CD_NON_ARRIVAL = 20162,  --// 亲密时间未到
    XG_TOTAL_BEAUTY_HAS_AWAKEN = 20163,  --// 所有的美人图都唤醒
    XG_LEVEL_UNLOCK_GROUP = 20164,  --// 等级不够无法解锁组合
    XG_BEAUTY_NUM_IS_EZRO = 20165,  --// 美人图的数目为零
    XG_EQUIP_QUALITY_ERROR = 20170,  --// 装备品质错误
    XG_REFINE_QUEUE_FULL = 20171,  --// 炼化队列满
    XG_BLADESOUL_APCKAGE_FULLL = 20172,  --// 剑魂背包满
    XG_REFINE_STATE_NOT_FINISH = 20173,  --// 炼化状态未完成
    XG_REFINE_STATE_FINISH = 20174,  --// 炼化状态为已完成完成
    XG_COPY_COUNT_LIMIT = 20180,  --// 达到副本次数上限
    XG_NO_EQUIP_DATA = 20190,  --// 没有此件装备数据
    XG_LACK_CHIP = 20191,  --// 碎片不足
    XG_LACK_MAP = 20192,  --// 图谱不足
    XG_SKILL_LEVEL_REACH_MAX = 20200,  --// 技能达最大等级
    XG_SKILL_MOUNTED = 20201,  --// 技能已装载
    XG_SKILL_ROLE_LEVEL_LIMIT = 20202,  --// 升级技能人物等级限制
    XG_SKILL_PRE_CONDITION_LIMIT = 20203,  --// 升级技能前置人物限制
    XG_PET_IS_FIELD = 20210,  --// 宠物已经上阵
    XG_PET_MAX_FIELD = 20211,  --// 已经达到最大上阵数
    XG_PET_NO_HAS = 20212,  --// 没有拥有此宠物
    XG_PET_NO_FIELD = 20213,  --// 宠物没有上阵
    XG_PET_HAS_MAX_LEVEL = 20214,  --// 宠物已经达到最大等级
    XG_PET_THAN_EQUAL_ROLE_LEVEL = 20215,  --// 宠物达到或者超过人物等级
    XG_PET_HAS_MAX_QUALITY = 20216,  --// 宠物达到最大品质
    XG_LACK_PET_PIECE = 20217,  --// 宠物碎片不足
    XG_HUASHAN_BUFF_LEVEL_LIMIT = 20220,  --// 华山buff等级已达上限
    XG_FRIEND_CANNOT_FIND_ROLE = 20230,  --// 搜索好友查无此人
    XG_FRIEND_EXIST = 20231,  --// 已经是好友
    XG_FRIEND_COUNT_LIMIT = 20232,  --// 本人好友数量到上限
    XG_DES_FRIEND_COUNT_LIMIT = 20233,  --// 对方好友列表到上限
    XG_TASK_BOX_OPENED = 20250,  --// 活跃度宝箱已打开
    XG_TASK_ACTIVITY_LACK = 20251,  --// 活跃度不足
    XG_NO_SELL_WINE = 20260,  --// 无酒品销售
    XG_NO_GET_WARD_TIME_OUT = 20261,  --// 领取奖励时间未到
    XG_LACK_MONEY = 20263,  --// 金钱不足
    XG_LACK_DRINK_COUNT = 20264,  --// 喝酒次数不足
    XG_LEVLE_LIMIT = 20265,  --// 角色等级未达到
    XG_FAMILY_NO_RIGHT = 20270,  --// 没有权限
    XG_FAMILY_HAS_MEMBER = 20271,  --// 成员处于有家族状态
    XG_FAMILY_POSITION_FULL = 20272,  --// 职位已满
    XG_FAMILY_NO_EXIST_MEMBER = 20273,  --// 家族没有此成员
    XG_FAMILY_LEADER_NOW_NO_QUIT = 20274,  --// 此时族长不能退出家族
    XG_FAMILY_LACK_SCARE = 20275,  --// 家族建设度不足
    XG_FAMILY_IS_FULL = 20276,  --// 家族成员已满
    XG_FAMILY_ENTER_NO_TIME = 20277,  --// 进入家族时间未到
    XG_FAMILY_DONATE_LIMIT = 20278,  --// 捐献次数已到上限
    XG_FAMILY_NO_LEADER = 20279,  --// 家族没有族长
    XG_FAMILY_NAME_LEN_ERROR = 20280,  --// 名字长度错误
    XG_FAMILY_NAME_NAME_ILLEGAL = 20281,  --// 名字不合法
    XG_FAMILY_PURPOSE_LEN_ERROR = 20282,  --// 家族宗旨长度错误
    XG_FAMILY_PURPOSE_ILLEGAL = 20283,  --// 家族宗旨不合法
    XG_FAMILY_HAS_EXIST = 20284,  --// 家族已经存在
    XG_FAMILY_NO_EXIST = 20285,  --// 家族不存在
    XG_FAMILY_MAX_LEVEL = 20286,  --// 家族已经达到最大等级
    XG_FAMILY_DISMISS_SELF = 20287,  --// 家族不能开除自己
    XG_FAMILY_APPOINT_SELF = 20288,  --// 家族不能任命自己
    XG_FAMILY_NO_ACADEMY = 20289,  --// 家族没有研究院
    XG_FAMILY_ACADEMY_MAX_LEVEL = 20290,  --// 家族研究院达到最大等级
    XG_FAMILY_LEVEL_LIMIT = 20291,  --// 家族等级限制
    XG_FAMILY_LACK_SCORE = 20292,  --// 家族建设度不足
    XG_FAMILY_LACK_CASH = 20293,  --// 家族资金不足
    XG_FAMILY_TECH_ACTIVATE_TIME_NO = 20294,  --// 家族科技激活时间未到
    XG_FAMILY_TECH_ACTIVATE_LIST_FULL = 20295,  --// 家族科技激活队列已满
    XG_FAMILY_TECH_MAX_LEVEL = 20296,  --// 家族科技达到最大等级
    XG_FAMILY_ACADEMY_LEVEL_LIMIT = 20297,  --// 家族研究院等级限制
    XG_FAMILY_MEMBER_NO_TIME = 20298,  --// 成员进入家族时间未到
    XG_ARENA_COUNT_LLIMIT = 20300,  --// 竞技场次数限制
    XG_LIBRARY_LACK_PAGE = 20400,  --// 藏经阁残页数量不足
    XG_LACK_UNDEAD = 20301,  --// 免死符不足
    XG_NOT_THE_MAIL = 20401,  --// 没有此邮件
    XG_MAIL_AWARD_HAS_GOT = 20402,  --// 邮件附件已领取
    XG_MAIL_NOT_AWARD_HAS_GOT = 20403,  --// 邮件附件未领取
    XA_ERROR = 30000,  --// 账号服务通用错误码
    XA_INVALID_ARG = 30001,  --// 请求参数错误
    XA_DB_ERROR = 30002,  --// 数据库操作错误
    DB_NOT_FOUND_DEVICEID = 30003,  --// 未找到deviceid
    XA_OPERATE_TIMEOUT = 30004,  --// 操作超时
    XD_ERROR = 40000,  --//数据库服务器通用错误码
}
