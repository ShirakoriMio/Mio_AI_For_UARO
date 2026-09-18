-- This is the Extra Options file
-- NewAutoFriend = 0 -- uncomment this if you're not using AzzyAI for your homun.
-- AggressiveRelogTracking = 1               -- see documentation
-- AggressiveRelogPath = "./AI/USER_AI/data" -- do not uncomment without reading applicable documentation
-- AggressiveAutofriend = 1                 -- see documentation


MyRoute={{0,0}}

FriendAttack={}         --Set these to 1 to have homun attack 
                --the target of a friend/owner when the friend is:
FriendAttack[MOTION_ATTACK]=0  --Attacking normally
FriendAttack[MOTION_ATTACK2]=0  --Attacking normally
FriendAttack[MOTION_SKILL]=0    --Uses a skill (which has the normal skill animation)
FriendAttack[MOTION_CASTING]=0  --Is casting a skill with a casting time
FriendAttack[MOTION_TOSS]=0 --Uses SpearBoom/AidPot/other "throwing" things
FriendAttack[MOTION_BIGTOSS]=0  --Uses Acid Bomb
FriendAttack[MOTION_FULLBLAST]=0    --Uses Full Blast


BasicDebuffs={}
BasicDebuffs[MER_CRASH]=    1
BasicDebuffs[MER_LEXDIVINA]=    1
BasicDebuffs[MER_DECAGI]=   1
BasicDebuffs[MA_SANDMAN]=   1
BasicDebuffs[MA_FREEZINGTRAP]=  1


--Uncomment the lines below to enable logging of skill failure detection and Closest() (respectively)
--LogEnable["AAI_SKILLFAIL"]=1 
--LogEnable["AAI_CLOSEST"]=1
--LogEnable["AAI_DANCE"]=1
--LogEnable["AAI_ACTORS"]=1
--LogEnable["AAI_LAG"]=1

--Uncomment this line to suppress AAI_ERROR logging. This should only be done as a stop-gap measure; if your AAI_ERROR log is filling up with messages, please report this to the developer. 
--LogEnable["AAI_ERROR"]=0

-- This logic checks the Homunculus ID (Safely ignores Mercenaries)
-- This logic checks the Homunculus ID (Safely ignores Mercenaries)
local myType = GetV(V_HOMUNTYPE, MyID)

if myType ~= nil then
    if (myType < 13) then
        -- Non-Vanilmirth behavior: Passive Standby
        Aggressive = 0
        Assist = 0
        Standby = 1
        AttackSkill = 0
    else
        -- Vanilmirth behavior: Active Killer
        Aggressive = 1
        AttackSkill = 1
    end
else
    -- Mercenary behavior: Totally Passive (Loyalty Leech Mode)
    Aggressive = 0
    Assist = 0
    AttackSkill = 0
    Standby = 1
    UseAttackSkill = 0
    UseSkillOnFollow = 0
    SuperPassive = 1
    DefendStandby = 0
    StickyStandby = 0
end

-- Mercenary intentionally remains passive and does not attack automatically.
