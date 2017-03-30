
EventNames ={}

--游戏准备界面
EventNames.EVENT_OPEN_READY = "event_open_ready"

--打开暂停界面
EventNames.EVENT_OPEN_PAUSE="event_open_pause"

--打开战斗结算界面
EventNames.EVENT_OPEN_OVER="event_openOver"

--屏蔽层
EventNames.EVENT_OPEN_LOAD = "event_open_load"

--关闭屏蔽层
EventNames.EVENT_LOADING_OVER = "event_loading_over"

--打开商店界面
EventNames.EVENT_OPEN_SHOP="event_open_shop"

--打开角色界面
EventNames.EVENT_OPEN_ROLEVIEW="event_open_roleview"

--随机奖励道具界面
EventNames.EVENT_OPEN_REWARDPROP = "event_open_rewardprop"

--=====================场景内

--时间变化
EventNames.EVENT_NET_TIME_CHANGE="event_net_timeChange"

--玩家体力变化
EventNames.EVENT_POWER_CHANGE = "event_power_change"

--飘字 ({text=""})
EventNames.EVENT_FLY_TEXT = "event_fly_text"

--角色受到攻击
EventNames.EVENT_PLAYER_ATTACKED = "event_player_attacked"

--更新分数
EventNames.EVENT_UPDATE_SCORE = "event_update_score"

--游戏中金币更新
EventNames.EVENT_FIGHT_UPDATE_GOLD = "event_fight_update_gold"

--钻石更新
EventNames.EVENT_UPDATE_DIAMOND="event_update_diamond"

--金币更新
EventNames.EVENT_UPDATE_GOLD="event_update_gold"

--角色更换
EventNames.EVENT_ROLE_CHANGE = "event_role_change"

--====================战斗内

--开局冲刺
EventNames.EVENT_START_SPRINT = "event_start_sprint"

--死亡冲刺
EventNames.EVENT_DEAD_SPRINT = "event_dead_sprint"

--开局护盾
EventNames.EVENT_START_PROTECT = "event_start_protect"

--死亡接力
EventNames.EVENT_DEAD_RELAY = "event_dead_relay"

--吸铁石
EventNames.EVENT_MANGET = "event_manget"

--巨人药水
EventNames.EVENT_GRANT_DRINK = "event_grant_drink"

--角色暂停
EventNames.EVENT_PLAYER_PAUSE = "event_player_pause"

--角色恢复
EventNames.EVENT_PLAYER_REGAIN = "event_player_regain"

--极限冲刺
EventNames.EVENT_LIMIT_SPRINT = "event_limit_sprint"

--金币转换
EventNames.EVENT_TRANSFORM_GOLD = "event_transform_gold"

--速度减慢
EventNames.EVENT_SLOW_SPEED = "event_slow_speed"

--飞行障碍物暂停
EventNames.EVENT_OBSCALE_FLYPAUSE = "event_obscale_flypause"
--飞行障碍物恢复
EventNames.EVENT_OBSCALE_FLYRESUM = "event_obscale_flyresum"

--弹簧障碍物
EventNames.EVENT_OBSCALE_SPRING = "event_obscale_spring"

return EventNames