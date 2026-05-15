-----------------------------
-- Dr. Azzy's AzzyAI v1.54
-- Modified for uaRO-Pre-Renewal Beta v0.90 - Configuration v1.0
-- Homunculus Configuration File
-- uaRO server only - do not redistribute
-----------------------------

-- Basic Options
AggroHP                  = 0
AggroSP                  = 0
OldHomunType             = 3
UseSkillOnly             = -1 
UseAttackSkill           = 1
UseSkillOnFollow         = 1 -- 1 = use skill when Hom/Merc following player, 0 = disable
OpportunisticTargeting   = 1
DoNotChase               = 0
UseDanceAttack           = 1
SuperPassive             = 0
PVPmode                  = 0
UseIdleWalk              = 0 -- 1 = enable idle walk when standing still, 0 = disable.
-- For Above: UseIdleWalk: If setting the toggle to "don't idle until you alt+T twice,"
-- set this to 0 and go to AI_main.lua line 390. Then, comment out that line (comment
-- out "UseIdleWalk = 1").
    -- Simplified:
        -- Patrol On by Default:
            -- H_Config.lua set UseIdleWalk = 1
            -- AI_Main.lua (line 390) leave the above UseIdleWalk = 1
        -- Patrol Off by Default:
            -- H_Config.lua (here, right above) set UseIdleWalk = 0
            -- AI_Main.lua (line 390) comment out the line that sets UseIdleWalk = 1
IdleWalkSP               = 20
IdleWalkDistance         = 10
UseCastleRoute           = 0
RelativeRoute            = 0
UseCastleDefend          = 0
CastleDefendThreshold    = 4
AutoDetectPlant          = 1
FleeHP                   = 0
DanceMinSP               = 0
ChaseSPPause             = 0
ChaseSPPauseSP           = -60
ChaseSPPauseTime         = 3000
RescueOwnerLowHP         = 1
AoEFixedLevel            = 1
LiveMobID                = 0

-- Attack skill options
AttackSkillRange         = 15
AttackSkillReserveSP     = 1 
AutoMobMode              = 0 
AutoMobCount             = 1
UseAutoPushback          = 0
AutoPushbackThreshold    = 2
AutoSkillDelay           = 300   -- WAS 400 to avoid packet overload and let him circle.
AoEMaximizeTargets       = 1
CastTimeRatio            = .80

--Autobuff options
UseDefensiveBuff         = 1
UseOffensiveBuff         = 1 
UseProvokeOwner          = 1
DefensiveBuffOwnerMobbed = 1
ProvokeOwnerMobbed       = 3
LifEscapeLevel           = 5
FilirFlitLevel           = 1
FilirAccelLevel          = 1
AmiBulwarkLevel          = 5
UseSmartBulwark          = 0

--AutoHeal Options:
HealSelfHP               = 60 
HealOwnerHP              = 80 
UseAutoHeal              = 2 

-- Movement and positioning
FollowStayBack           = 1
StationaryAggroDist      = 18
MobileAggroDist          = 18
StationaryMoveBounds     = 15
MobileMoveBounds         = 18
DoNotUseRest             = 1
RestXOff                 = 1
RestYOff                 = -1	
AoEReserveSP             = 1
MoveSticky               = 1
MoveStickyFight          = 1

--Kiting options:
KiteMonsters             = 0
KiteBounds               = 18 
KiteStep                 = 5
KiteParanoidStep         = 2
KiteThreshold            = 3
KiteParanoidThreshold    = 2
KiteParanoid             = 1 
ForceKite                = 0

--Standby Behavior:
DefendStandby            = 1 
StickyStandby            = 0 

--Advanced Timing settings 
SpawnDelay               = 0  -- WAS 1000 to allow circling for the thing lol
AttackTimeLimit          = 10000
AutoSkillLimit           = 255

--Berserk Settings:
BerserkMinEnemies        = 1
UseBerserkMobbed         = 1
UseBerserkSkill          = 1
UseBerserkAttack         = 1
Berserk_SkillAlways      = 1
Berserk_Dance            = 1
Berserk_IgnoreMinSP      = 1

--Misc settings:
StandbyFriending         = 1  
MirAIFriending           = 0  
PickUpBraggi             = 1	-- 0 = disable, 1 = enable seeking bard buffs
PickUpDancer             = 1	-- 0 = disable, 1 = enable seeking dancer buffs (separate from bard system)
UseAvoid                 = 0  
TankMonsterLimit         = 4
AssumeHomun              = 1
AttackLastFullSP         = 0
LagReduction             = 0
DoNotAttackMoving        = 0

LastSavedDate            = "03/09/2025 06:31:23"