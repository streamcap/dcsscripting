env.info("Starting the script******************");

BASE:TraceOnOff(false);
BASE:TraceAll(false);

groupNames = {"Vehicle_1","Vehicle_2", "Vehicle_3"};

function spawnGroup()
  BASE:E("Running spawnGroup...");
  
  --Init array to spawn stuff
  -- Arrays are one-indexed!
  for i,groupName in pairs(groupNames) do
    BASE:E("Spawning group " .. groupName);
    mySpawn = SPAWN:New(groupName):Spawn();
    BASE:E("Spawned group " .. groupName);
  end
  BASE:E("End of function spawnGroup()");
end

function despawnGroups()
  BASE:E("Despawning all...")  
  for i,groupName in pairs(groupNames) do
    group = GROUP:FindByName(groupName .. "#001"):Destroy();
  end
  
  BASE:E("All despawned.");
end

function spawnRussianIfv()
  BASE:E("Spawning russian IFV...");
  local russianZone = ZONE:New("Spawn3");
  mySpawn = SPAWN:New("Vehicle_3")
              :InitAIOn()
              :SpawnInZone(russianZone);
  activateGroupFromSpawn(mySpawn);
end

function spawnUsTank()
  BASE:E("Spawning US tank...");
  local tankZone = ZONE:New("Spawn1");
  myTankSpawn = SPAWN:New("Vehicle_1")
              :InitAIOn()
              :SpawnInZone(tankZone);
end

function spawnUsIfv()
  BASE:E("Spawning US IFV...");
  local ifvZone = ZONE:New("Spawn2");
  mySpawn = SPAWN:New("Vehicle_2")
              :InitAIOn()
              :SpawnInZone(ifvZone);
end

env.info("Ending with env.info********")