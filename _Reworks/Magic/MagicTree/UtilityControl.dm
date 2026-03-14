/mob/var/tmp/
    magicTreeDisplayed=0;

/mob/proc/showMagicTree()
    changeTreeImage();
    setAccessNode();
    setTreeSelectNodes();
    skinShow(MAGIC_TREE);

/mob/proc/setMagicTreeToElement()
    DEBUGMSG("setting [src]'s magic tree displayed")
    switch(magicTreeDisplayed)
        if("Water") setMagicTreeToWater();
        if("Fire") setMagicTreeToFire();
        if("Air") setMagicTreeToAir();
        if("Earth") setMagicTreeToEarth();
        if("Light") setMagicTreeToLight();
        if("Time") setMagicTreeToTime();
        if("Dark") setMagicTreeToDark();
        if("Space") setMagicTreeToSpace();
        else setMagicTreeToWater();//default

/mob/proc/
    setMagicTreeToWater()
        hideRevealedButtons();
        magicTreeDisplayed="Water";
        showWaterTree();
    showWaterTree()
        showMagicTree();
        loadButtons(glob.WaterTreeNodes);
    hideWaterTree()
        for(var/mname in glob.WaterTreeNodes)
            skinHide(mname);


/mob/proc/
    setMagicTreeToFire()
        hideRevealedButtons();
        magicTreeDisplayed="Fire";
        showFireTree();
    showFireTree()
        showMagicTree();
        loadButtons(glob.FireTreeNodes);
    hideFireTree()
        for(var/mname in glob.FireTreeNodes)
            skinHide(mname);

/mob/proc/
    setMagicTreeToAir()
        hideRevealedButtons();
        magicTreeDisplayed="Air";
        showAirTree();
    showAirTree()
        showMagicTree();
        loadButtons(glob.AirTreeNodes);
    hideAirTree()
        for(var/mname in glob.AirTreeNodes)
            skinHide(mname);

/mob/proc/
    setMagicTreeToEarth()
        hideRevealedButtons();
        magicTreeDisplayed="Earth";
        showEarthTree();
    showEarthTree()
        showMagicTree();
        loadButtons(glob.EarthTreeNodes);
    hideEarthTree()
        for(var/mname in glob.EarthTreeNodes)
            skinHide(mname);

/mob/proc/
    setMagicTreeToLight()
        hideRevealedButtons();
        magicTreeDisplayed="Light";
        showLightTree();
    showLightTree()
        showMagicTree();
        loadButtons(glob.LightTreeNodes);
    hideLightTree()
        for(var/mname in glob.LightTreeNodes)
            skinHide(mname);

/mob/proc/
    setMagicTreeToTime()
        hideRevealedButtons();
        magicTreeDisplayed="Time";
        showTimeTree();
    showTimeTree()
        showMagicTree();
        loadButtons(glob.TimeTreeNodes);
    hideTimeTree()
        for(var/mname in glob.TimeTreeNodes)
            skinHide(mname);

/mob/proc/
    setMagicTreeToDark()
        hideRevealedButtons();
        magicTreeDisplayed="Dark";
        showDarkTree();
    showDarkTree()
        showMagicTree();
        loadButtons(glob.DarkTreeNodes);
    hideDarkTree()
        for(var/mname in glob.DarkTreeNodes)
            skinHide(mname);

/mob/proc/
    setMagicTreeToSpace()
        hideRevealedButtons();
        magicTreeDisplayed="Space";
        showSpaceTree();
    showSpaceTree()
        showMagicTree();
        loadButtons(glob.SpaceTreeNodes);
    hideSpaceTree()
        for(var/mname in glob.SpaceTreeNodes)
            skinHide(mname);

/mob/var/tmp/
    loadingTree=0;

/mob/proc/loadButtons(list/treeNodes)
    loadingTree=1;
    for(var/mname in treeNodes)
        toggleMagicTreeButton(treeNodes[mname]);
    loadingTree=0;

/mob/verb/
    Show_Magic_Tree()
        set category="Utility"
        if(loadingTree) return
        setMagicTreeToElement();

    Show_Water_Tree()
        set hidden=1;
        set name=".ShowWaterTree"
        if(loadingTree) return
        setMagicTreeToWater();
    
    Show_Fire_Tree()
        set hidden=1;
        set name=".ShowFireTree"
        if(loadingTree) return
        setMagicTreeToFire();
    
    Show_Air_Tree()
        set hidden=1;
        set name=".ShowAirTree";
        if(loadingTree) return
        setMagicTreeToAir();
    
    Show_Earth_Tree()
        set hidden=1;
        set name=".ShowEarthTree";
        if(loadingTree) return
        setMagicTreeToEarth();
    
    Show_Light_Tree()
        set hidden=1;
        set name=".ShowLightTree";
        if(loadingTree) return
        setMagicTreeToLight();
    
    Show_Time_Tree()
        set hidden=1;
        set name=".ShowTimeTree";
        if(loadingTree) return
        setMagicTreeToTime();
    
    Show_Dark_Tree()
        set hidden=1;
        set name=".ShowDarkTree";
        if(loadingTree) return
        setMagicTreeToDark();
    
    Show_Space_Tree()
        set hidden=1;
        set name=".ShowSpaceTree";
        setMagicTreeToSpace();

#ifdef DEBUGGING
/mob/verb/
    DEBUG_MAGIC_TREE()
        set category="Debug"
        for(var/x in glob.WaterTreeNodes)
            src << "[x] is defined in water tree nodes.";
        for(var/x in glob.FireTreeNodes)
            src << "[x] is defined in fire tree nodes.";
        for(var/x in glob.AirTreeNodes)
            src << "[x] is defined in air tree nodes.";
        for(var/x in glob.EarthTreeNodes)
            src << "[x] is defined in earth tree nodes.";
        for(var/x in glob.LightTreeNodes)
            src << "[x] is defined in Light tree nodes.";
        for(var/x in glob.TimeTreeNodes)
            src << "[x] is defined in time tree nodes.";
        for(var/x in glob.DarkTreeNodes)
            src << "[x] is defined in dark tree nodes.";
        for(var/x in glob.SpaceTreeNodes)
            src << "[x] is defined in space tree nodes.";
        
    DEBUG_INIT_MAGIC_TREE()
        set category="Debug"
        initMagicNodes();
    DEBUG_CLEAR_MAGIC_TREE()
        set category="Debug"
        clearMagicNodes();
#endif
        