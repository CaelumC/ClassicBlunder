globalTracker/var/
    list/WaterTreeNodes=list();
    list/FireTreeNodes=list();
    list/AirTreeNodes=list();
    list/EarthTreeNodes=list();
    list/LightTreeNodes=list();
    list/TimeTreeNodes=list();
    list/DarkTreeNodes=list();
    list/SpaceTreeNodes=list();

/proc/initMagicNodes()
    initWaterTree();
    initFireTree();
    initAirTree();
    initEarthTree();
    initLightTree();
    initTimeTree();
    initDarkTree();
    initSpaceTree();
/proc/clearMagicNodes()
    glob.WaterTreeNodes=list();//resetti the spaghetti
    glob.FireTreeNodes=list();
    glob.AirTreeNodes=list();
    glob.EarthTreeNodes=list();
    glob.LightTreeNodes=list();
    glob.TimeTreeNodes=list();
    glob.DarkTreeNodes=list();
    glob.SpaceTreeNodes=list();
/proc/
    initWaterTree()
        for(var/t in subtypesof(/magic_node/water_tree))
            var/magic_node/mn = new t;
            glob.WaterTreeNodes[mn.name] = mn;
    initFireTree()
        for(var/t in subtypesof(/magic_node/fire_tree))
            var/magic_node/mn = new t;
            glob.FireTreeNodes[mn.name] = mn;
    initAirTree()
        for(var/t in subtypesof(/magic_node/air_tree))
            var/magic_node/mn = new t;
            glob.AirTreeNodes[mn.name] = mn;
    initEarthTree()
        for(var/t in subtypesof(/magic_node/earth_tree))
            var/magic_node/mn = new t;
            glob.EarthTreeNodes[mn.name] = mn;
    initLightTree()
        for(var/t in subtypesof(/magic_node/light_tree))
            var/magic_node/mn = new t;
            glob.LightTreeNodes[mn.name] = mn;
    initTimeTree()
        for(var/t in subtypesof(/magic_node/time_tree))
            var/magic_node/mn = new t;
            glob.TimeTreeNodes[mn.name] = mn;
    initDarkTree()
        for(var/t in subtypesof(/magic_node/dark_tree))
            var/magic_node/mn = new t;
            glob.DarkTreeNodes[mn.name] = mn;
    initSpaceTree()
        for(var/t in subtypesof(/magic_node/space_tree))
            var/magic_node/mn = new t;
            glob.SpaceTreeNodes[mn.name] = mn;


/magic_node/var
    name = "Magic Node";
    xLoc;
    yLoc;
    lockedNodeImage;
    unlockedNodeImage;
    command;
    nodeType;//aoe, autohit, buff, debuff, line, projectile; mage, crown, spell
    list/unlocksNodes=list();
    list/grantsSkills=list();
    list/grantsPassives=list();
    list/grantsKnowledges=list();

/magic_node/
    New()
        ..()
        setNodeImages();

    proc/getTreeAOEImage()
    proc/getTreeAutohitImage()
    proc/getTreeBuffImage()
    proc/getTreeDebuffImage()
    proc/getTreeLineImage()
    proc/getTreeMagePassiveImage()
    proc/getTreePinnacleImage()
    proc/getTreeProjectileImage()
    proc/getTreeSpellPassiveImage()
    
    proc/setNodeImages()
        switch(nodeType)
            if("AOE")
                lockedNodeImage=LOCKED_AOE;
                unlockedNodeImage=getTreeAOEImage();
            if("Autohit")
                lockedNodeImage=LOCKED_AUTOHIT;
                unlockedNodeImage=getTreeAutohitImage();
            if("Buff")
                lockedNodeImage=LOCKED_BUFF;
                unlockedNodeImage=getTreeBuffImage();
            if("Debuff")
                lockedNodeImage=LOCKED_DEBUFF;
                unlockedNodeImage=getTreeDebuffImage();
            if("Line")
                lockedNodeImage=LOCKED_LINE;
                unlockedNodeImage=getTreeLineImage();
            if("Mage Passive")
                lockedNodeImage=LOCKED_MAGEP;
                unlockedNodeImage=getTreeMagePassiveImage();
            if("Pinnacle")
                lockedNodeImage=LOCKED_PINNACLE;
                unlockedNodeImage=getTreePinnacleImage();
            if("Projectile")
                lockedNodeImage=LOCKED_PROJ;
                unlockedNodeImage=getTreeProjectileImage();
            if("Spell Passive")
                lockedNodeImage=LOCKED_SPELLP;
                unlockedNodeImage=getTreeSpellPassiveImage();

/mob/var/
    magicKnowledge=list();
    accessedMagicTrees=list();
    acquiredMagicNodes=list();

/mob/proc/
    unlockMagicNode(node as text)
        set name=".unlockMagicNode"
        set hidden = 1;
        if(!node in VALID_MAGIC_NODES) return;

/mob/verb/
    Unlock_Access_Node(element as text)
        set name = ".unlockAccessNode"
        set hidden = 1;
        if(!element in VALID_MAGIC_ELEMENTS) return;