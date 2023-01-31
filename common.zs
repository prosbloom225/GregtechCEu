#priority 999

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

global alloy_smelter                as RecipeMap = RecipeMap.getByName("alloy_smelter");
global arc_furnace                  as RecipeMap = RecipeMap.getByName("arc_furnace");
global assembler                    as RecipeMap = RecipeMap.getByName("assembler");
global assembly_line                as RecipeMap = RecipeMap.getByName("assembly_line");
global autoclave                    as RecipeMap = RecipeMap.getByName("autoclave");
global bender                       as RecipeMap = RecipeMap.getByName("bender");
global brewery                      as RecipeMap = RecipeMap.getByName("brewery");
global canner                       as RecipeMap = RecipeMap.getByName("canner");
global centrifuge                   as RecipeMap = RecipeMap.getByName("centrifuge");
global chemical_bath                as RecipeMap = RecipeMap.getByName("chemical_bath");
global chemical_reactor             as RecipeMap = RecipeMap.getByName("chemical_reactor");
global circuit_assembler            as RecipeMap = RecipeMap.getByName("circuit_assembler");
global coke_oven                    as RecipeMap = RecipeMap.getByName("coke_oven");
global compressor                   as RecipeMap = RecipeMap.getByName("compressor");
global cracker                      as RecipeMap = RecipeMap.getByName("cracker");
global cutter                       as RecipeMap = RecipeMap.getByName("cutter");
global distillation_tower           as RecipeMap = RecipeMap.getByName("distillation_tower");
global distillery                   as RecipeMap = RecipeMap.getByName("distillery");
global electric_blast_furnace       as RecipeMap = RecipeMap.getByName("electric_blast_furnace");
global electric_furnace             as RecipeMap = RecipeMap.getByName("electric_furnace");
global electrolyzer                 as RecipeMap = RecipeMap.getByName("electrolyzer");
global electromagnetic_separator    as RecipeMap = RecipeMap.getByName("electromagnetic_separator");
global extractor                    as RecipeMap = RecipeMap.getByName("extractor");
global extruder                     as RecipeMap = RecipeMap.getByName("extruder");
global fermenter                    as RecipeMap = RecipeMap.getByName("fermenter");
global fluid_heater                 as RecipeMap = RecipeMap.getByName("fluid_heater");
global fluid_solidifier             as RecipeMap = RecipeMap.getByName("fluid_solidifier");
global forge_hammer                 as RecipeMap = RecipeMap.getByName("forge_hammer");
global forming_press                as RecipeMap = RecipeMap.getByName("forming_press");
global freezer                      as RecipeMap = RecipeMap.getByName("vacuum_freezer");
global fusion_reactor               as RecipeMap = RecipeMap.getByName("fusion_reactor");
global gas_collector                as RecipeMap = RecipeMap.getByName("gas_collector");
global implosion_compressor         as RecipeMap = RecipeMap.getByName("implosion_compressor");
global large_chemical_reactor       as RecipeMap = RecipeMap.getByName("large_chemical_reactor");
global laser_engraver               as RecipeMap = RecipeMap.getByName("laser_engraver");
global lathe                        as RecipeMap = RecipeMap.getByName("lathe");
global macerator                    as RecipeMap = RecipeMap.getByName("macerator");
global mass_fabricator              as RecipeMap = RecipeMap.getByName("mass_fabricator");
global mixer                        as RecipeMap = RecipeMap.getByName("mixer");
global ore_washer                   as RecipeMap = RecipeMap.getByName("ore_washer");
global packager                     as RecipeMap = RecipeMap.getByName("packer");
global polarizer                    as RecipeMap = RecipeMap.getByName("polarizer");
global primitive_blast_furnace      as RecipeMap = RecipeMap.getByName("primitive_blast_furnace");
global pyrolyse_oven                as RecipeMap = RecipeMap.getByName("pyrolyse_oven");
global reactor                      as RecipeMap = RecipeMap.getByName("chemical_reactor");
global replicator                   as RecipeMap = RecipeMap.getByName("replicator");
global rock_breaker                 as RecipeMap = RecipeMap.getByName("rock_breaker");
global sifter                       as RecipeMap = RecipeMap.getByName("sifter");
global simple_washer                as RecipeMap = RecipeMap.getByName("simple_washer");
global scanner                      as RecipeMap = RecipeMap.getByName("scanner");
global thermal_centrifuge           as RecipeMap = RecipeMap.getByName("thermal_centrifuge");
global unpackager                   as RecipeMap = RecipeMap.getByName("unpacker");
global vacuum_freezer               as RecipeMap = RecipeMap.getByName("vacuum_freezer");
global wiremill                     as RecipeMap = RecipeMap.getByName("wiremill");


// NotConsumables
global shapePipeNormal as IItemStack = <gregtech:meta_item_1:40>;


global crateSteel as IItemStack = <gregtech:machine:1627>;
global quantumTank as IItemStack = <gregtech:machine:1585>;
global crateTungstenSteel as IItemStack = <gregtech:machine:1631>;
global quantumEye as IItemStack = <gregtech:meta_item_1:281>;
global cleanRoomGlass as IItemStack = <gregtech:transparent_casing:3>;
global carbonFibers as IItemStack = <gregtech:meta_item_1:499>;
global powerIc as IItemStack = <gregtech:meta_item_1:604>;
global display as IItemStack = <gregtech:meta_item_1:307>;
global craftingStation as IItemStack = <gregtech:machine:1647>;
global coinDoge as IItemStack = <gregtech:meta_item_1:9>;
global fertilizer as IItemStack = <gregtech:meta_item_1:1001>;
global filterItem as IItemStack = <gregtech:meta_item_1:291>;
global filterOreDict as IItemStack = <gregtech:meta_item_1:292>;
global filterSmart as IItemStack = <gregtech:meta_item_1:293>;
global filterFluid as IItemStack = <gregtech:meta_item_1:290>;
global gemExquisiteDiamond as IItemStack = <gregtech:meta_gem_exquisite:276>;
global plateAluminium as IItemStack = <gregtech:meta_plate:2>;
global plateStainlessSteel as IItemStack = <gregtech:meta_plate:323>;
global plateTitanium as IItemStack = <gregtech:meta_plate:113>;
global plateTungstenSteel as IItemStack = <gregtech:meta_plate:2013>;
global plateOsmium as IItemStack = <gregtech:meta_plate:75>;
global energyCrystal as IItemStack = <gregtech:meta_item_1:741>;
global lapotronCrystal as IItemStack = <gregtech:meta_item_1:742>;
global gravitationEngine as IItemStack = <gregtech:meta_item_1:778>;

global dustEnergium as IItemStack = <gregtech:meta_item_1:491>;
global drumSteel as IItemStack = <gregtech:machine:1612>;

global machineCasingUlv as IItemStack = <gregtech:machine_casing>;
global machineCasingLv as IItemStack = <gregtech:machine_casing:1>;
global machineCasingMv as IItemStack = <gregtech:machine_casing:2>;
global machineCasingHv as IItemStack = <gregtech:machine_casing:3>;
global machineCasingEv as IItemStack = <gregtech:machine_casing:4>;
global machineCasingIv as IItemStack = <gregtech:machine_casing:5>;
global machineCasingLuv as IItemStack = <gregtech:machine_casing:6>;
global machineCasingZpm as IItemStack = <gregtech:machine_casing:7>;
global machineCasingUv as IItemStack = <gregtech:machine_casing:8>;
global machineCasingUhv as IItemStack = <gregtech:machine_casing:9>;

global motorLv as IItemStack = <gregtech:meta_item_1:127>;
global motorMv as IItemStack = <gregtech:meta_item_1:128>;
global motorHv as IItemStack = <gregtech:meta_item_1:129>;
global motorEv as IItemStack = <gregtech:meta_item_1:130>;
global motorIv as IItemStack = <gregtech:meta_item_1:131>;
global motorLuv as IItemStack = <gregtech:meta_item_1:132>;
global motorZpm as IItemStack = <gregtech:meta_item_1:133>;
global motorUv as IItemStack = <gregtech:meta_item_1:134>;

global pistonLv as IItemStack = <gregtech:meta_item_1:172>;
global pistonMv as IItemStack = <gregtech:meta_item_1:173>;
global pistonHv as IItemStack = <gregtech:meta_item_1:174>;
global pistonEv as IItemStack = <gregtech:meta_item_1:175>;
global pistonIv as IItemStack = <gregtech:meta_item_1:176>;
global pistonLuv as IItemStack = <gregtech:meta_item_1:177>;
global pistonZpm as IItemStack = <gregtech:meta_item_1:178>;
global pistonUv as IItemStack = <gregtech:meta_item_1:179>;

global conveyorLv as IItemStack = <gregtech:meta_item_1:157>;
global conveyorMv as IItemStack = <gregtech:meta_item_1:158>;
global conveyorHv as IItemStack = <gregtech:meta_item_1:159>;
global conveyorEv as IItemStack = <gregtech:meta_item_1:160>;
global conveyorIv as IItemStack = <gregtech:meta_item_1:161>;
global conveyorLuv as IItemStack = <gregtech:meta_item_1:162>;
global conveyorZpm as IItemStack = <gregtech:meta_item_1:163>;
global conveyorUv as IItemStack = <gregtech:meta_item_1:164>;

global sensorLv as IItemStack = <gregtech:meta_item_1:232>;
global sensorMv as IItemStack = <gregtech:meta_item_1:233>;
global sensorHv as IItemStack = <gregtech:meta_item_1:234>;
global sensorEv as IItemStack = <gregtech:meta_item_1:235>;
global sensorIv as IItemStack = <gregtech:meta_item_1:236>;
global sensorLuv as IItemStack = <gregtech:meta_item_1:237>;
global sensorZpm as IItemStack = <gregtech:meta_item_1:238>;
global sensorUv as IItemStack = <gregtech:meta_item_1:239>;

global robotArmLv as IItemStack = <gregtech:meta_item_1:187>;
global robotArmMv as IItemStack = <gregtech:meta_item_1:188>;
global robotArmHv as IItemStack = <gregtech:meta_item_1:189>;
global robotArmEv as IItemStack = <gregtech:meta_item_1:190>;
global robotArmLuv as IItemStack = <gregtech:meta_item_1:191>;
global robotArmZpm as IItemStack = <gregtech:meta_item_1:192>;
global robotArmUv as IItemStack = <gregtech:meta_item_1:193>;

global pumpLv as IItemStack = <gregtech:meta_item_1:142>;
global pumpMv as IItemStack = <gregtech:meta_item_1:143>;
global pumpHv as IItemStack = <gregtech:meta_item_1:144>;
global pumpEv as IItemStack = <gregtech:meta_item_1:145>;
global pumpIv as IItemStack = <gregtech:meta_item_1:146>;
global pumpLuv as IItemStack = <gregtech:meta_item_1:147>;
global pumpZpm as IItemStack = <gregtech:meta_item_1:148>;
global pumpUv as IItemStack = <gregtech:meta_item_1:149>;

global emitterHv as IItemStack = <gregtech:meta_item_1:219>;
global emitterEv as IItemStack = <gregtech:meta_item_1:220>;
global emitterIv as IItemStack = <gregtech:meta_item_1:221>;
global emitterLuv as IItemStack = <gregtech:meta_item_1:222>;
global emitterZpm as IItemStack = <gregtech:meta_item_1:223>;
global emitterUv as IItemStack = <gregtech:meta_item_1:224>;
