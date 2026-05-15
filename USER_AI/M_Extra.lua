-- This is the Extra Options file
-- NewAutoFriend = 0 -- uncomment this if you're not using AzzyAI for your homun.
-- AggressiveRelogTracking = 1               -- see documentation
-- AggressiveRelogPath = "./AI/USER_AI/data" -- do not uncomment without reading applicable documentation
-- AggressiveAutofriend = 1 				-- see documentation


MyRoute={{0,0}}

FriendAttack={}			--Set these to 1 to have homun attack 
				--the target of a friend/owner when the friend is:
FriendAttack[MOTION_ATTACK]=1	--Attacking normally
FriendAttack[MOTION_ATTACK2]=1	--Attacking normally
FriendAttack[MOTION_SKILL]=1	--Uses a skill (which has the normal skill animation)
FriendAttack[MOTION_CASTING]=1	--Is casting a skill with a casting time
FriendAttack[MOTION_TOSS]=0	--Uses SpearBoom/AidPot/other "throwing" things
FriendAttack[MOTION_BIGTOSS]=1	--Uses Acid Bomb
FriendAttack[MOTION_FULLBLAST]=1	--Uses Full Blast


BasicDebuffs={}
BasicDebuffs[MER_CRASH]=	1
BasicDebuffs[MER_LEXDIVINA]=	1
BasicDebuffs[MER_DECAGI]=	1
BasicDebuffs[MA_SANDMAN]=	1
BasicDebuffs[MA_FREEZINGTRAP]=	1


--Uncomment the lines below to enable logging of skill failure detection and Closest() (respectively)
--LogEnable["AAI_SKILLFAIL"]=1 
--LogEnable["AAI_CLOSEST"]=1
--LogEnable["AAI_DANCE"]=1
--LogEnable["AAI_ACTORS"]=1
--LogEnable["AAI_LAG"]=1

--Uncomment this line to suppress AAI_ERROR logging. This should only be done as a stop-gap measure; if your AAI_ERROR log is filling up with messages, please report this to the developer. 
--LogEnable["AAI_ERROR"]=0

-- This logic checks the Homunculus ID
-- 1-4 = Lif, 5-8 = Amistr, 9-12 = Filir, 13-16 = Vanilmirth
local myType = GetV(V_HOMUNTYPE, MyID)

if (myType < 13) then
    -- Non-Vanilmirth behavior: Passive Standby
    Aggressive = 0
    Assist = 0
    Standby = 1
else
    -- Vanilmirth behavior: Active Killer
    Aggressive = 1
    AttackSkill = 1
end

-- Forces the Homunculus to drop a Class 1 target if a Class 0 appears
function OnATTACK_ST()
    local curTarget = MyTarget
    local curTact = GetMyTact(GetV(V_TYPE, curTarget))
    
    -- If we are currently hitting a "High Class" (Wood Goblin)
    if curTact[7] == 0 then 
        local betterTarget = GetBestTarget()
        -- If GetBestTarget found something better (Class 0)
        if betterTarget ~= 0 and betterTarget ~= curTarget then
            local betterTact = GetMyTact(GetV(V_TYPE, betterTarget))
            if betterTact[7] == 1 then
                -- Drop the Goblin and switch immediately
                SetState(CHASE_ST, betterTarget)
                return
            end
        end
    end
    -- Continue normal attack if no better target found
    old_OnATTACK_ST() 
end