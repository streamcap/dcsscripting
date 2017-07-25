BASE:E("Starting the script******************");

BASE:TraceOnOff(false);
BASE:TraceAll(false);



function spawnMinVodyHawk()
  BASE:E("Spawning Min Vody Hawk...");

  local zone = ZONE:New("MinVody_Spawn");
  local hawkSpawn = SPAWN:New("HAWK_1");
  if(hawkSpawn:_GetLastIndex() > 0) then
    group = hawkSpawn:GetLastAliveGroup();
    if(group ~= nil) then
      group.destroy();
    end
  end
  hawkSpawn:InitAIOn():SpawnInZone(zone, true);
  
  BASE:E("Min Vody Hawk spawned...");
end

BASE:E("Ending the script********************");
