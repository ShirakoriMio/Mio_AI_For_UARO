-- Default Tactic for all monsters:
-- 3 = Aggressive
-- 1 = Skill Always
-- 1 = Melee Allowed

-- ===========================================================================
-- TACTIC INDEX REFERENCE (For AzzyAI v1.54)
-- ===========================================================================
-- 1.  Aggression  : 0=Passive, 1=Defensive, 2=React, 3=Aggressive
-- 2.  Skill Mode  : 0=No Skill, 1=Skill Always, 2=Skill Once, 3=Berserk Only
-- 3.  Kiting      : 0=No Kite, 1=Always Kite, 2=Kite if needed
-- 4.  Cast React  : 0=Ignore, 1=React to Enemy Cast, 2=Flee Enemy Cast
-- 5.  Pushback    : 0=No Push, 1=Use Pushback skills (if applicable)
-- 6.  Debuff      : 0=No Debuff, 1=Use Debuffs (if applicable)
-- 7.  Class/Level : 0=Normal, 1=Boss/High Level (Prioritize)
-- 8.  Rescue      : 0=Don't Rescue, 1=Prioritize Rescuing Owner
-- 9.  Cast Limit  : -1 = Infinite, 0 = No Skill, 1+ = Max number of casts
-- 10. SP Limit    : 0 = Always cast, 1+ = Stop casting if SP is below this %
-- 11. Snipe Mode  : 0=No Snipe, 1=Snipe while chasing, 2=Snipe while idle
-- 12. Melee Mode  : 0=No Melee, 1=Melee allowed, 2=Melee only if silenced
-- 13. Combo Mode  : 0=Standard, 1=Use Combo Skills (for S-types/Mercs)
-- ===========================================================================

MyTact={}
--          {1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11,12,13} 
MyTact[0] = {2, 1, 0, 0, 0, 0, 0, 0, -1, 0, 1, 1, 0}

-- Your Ignores
 --            {1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13}
MyTact[1020] = {3, 1, 0, 0, 0, 0, 1, 0, -1, 0, 1, 1, 0} -- Mandragora
MyTact[1682] = {3, 1, 0, 0, 0, 0, 1, 0, -1, 0, 1, 1, 0} -- Remover
MyTact[1652] = {1, 1, 1, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Ygnizem / Egnigem Cenia
MyTact[1653] = {1, 1, 1, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Whikebain / Wickebine Tres
MyTact[1654] = {1, 1, 1, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Armaia / Armeyer Dinze
MyTact[1655] = {1, 1, 1, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Erend / Errende Ebecee
MyTact[1656] = {1, 1, 1, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Kavac / Kavach Icarus
MyTact[1657] = {1, 1, 1, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Rawrel / Laurell Weinder
MyTact[1681] = {1, 1, 1, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Gemini-S58
MyTact[1509] = {3, 1, 0, 0, 0, 0, 1, 0, -1, 0, 1, 1, 0} -- Lude
MyTact[1508] = {1, 1, 0, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Quve
MyTact[1510] = {1, 1, 2, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Hylozoist
MyTact[1507] = {1, 1, 2, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Disguise
MyTact[1506] = {1, 1, 1, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Bloody Murderer
MyTact[1505] = {1, 1, 1, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Loli Ruri
MyTact[1504] = {1, 1, 1, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Dullahan
MyTact[1503] = {1, 1, 1, 0, 0, 0, 1, 1, -1, 0, 1, 1, 0} -- Gibbet
MyTact[1229] = {1, 1, 0, 0, 0, 0, 1, 0, -1, 0, 1, 1, 0} -- Fabre
MyTact[1004] = {3, 1, 0, 0, 0, 0, 1, 0, -1, 0, 1, 1, 0} -- Hornet
MyTact[1077] = {3, 1, 0, 0, 0, 0, 1, 0, -1, 0, 1, 1, 0} -- Poison Spore
MyTact[1014] = {3, 1, 0, 0, 0, 0, 1, 0, -1, 0, 1, 1, 0} -- Spore
MyTact[1113] = {3, 1, 0, 0, 0, 0, 1, 0, -1, 0, 1, 1, 0} -- Drops
MyTact[1019] = {3, 1, 0, 0, 0, 0, 1, 0, -1, 0, 1, 1, 0} -- PecoPeco
MyTact[1049] = {2, 1, 0, 0, 0, 0, 0, 1, -1, 0, 1, 0, 0} -- Picky
MyTact[1050] = {2, 1, 0, 0, 0, 0, 0, 1, -1, 0, 1, 0, 0} -- Picky Egg
MyTact[1047] = {2, 1, 0, 0, 0, 0, 0, 1, -1, 0, 1, 0, 0} -- PecoPeco_Egg
MyTact[1011] = {2, 1, 0, 0, 0, 0, 0, 1, -1, 0, 1, 0, 0} -- Chonchon
MyTact[1042] = {2, 1, 0, 0, 0, 0, 0, 1, -1, 0, 1, 0, 0} -- Steel Chonchon
MyTact[1149] = {2, 1, 0, 0, 0, 0, 0, 1, -1, 0, 1, 0, 0} -- Minorous
MyTact[1589] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0} -- Mandragora
MyTact[1118] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0} -- Flora
MyTact[1500] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0} -- Parasite
MyTact[1368] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0} -- Geographer
MyTact[1881] = {3, 1, 0, 0, 0, 0, 1, 0, -1, 0, 1, 1, 0} -- Les
MyTact[1880] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0} -- Wood Goblin
MyTact[1994] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0} -- Luciola Vespa