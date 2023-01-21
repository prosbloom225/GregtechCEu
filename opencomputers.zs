
// --- Vals ---
val microchipMv = <opencomputers:material:7>;
val microchipHv = <opencomputers:material:8>;
val microchipEv = <opencomputers:material:9>;
val cpuMv = <opencomputers:component>;
val cpuHv = <opencomputers:component:1>;
val cpuEv = <opencomputers:component:2>;

val grog = <opencomputers:material:1>;
val cardBase = <opencomputers:material:5>;
val arithmaticLogicUnit = <opencomputers:material:10>;
val controlUnit = <opencomputers:material:11>;
val diskPlatter = <opencomputers:material:12>;
val interweb = <opencomputers:material:13>;
val memoryMv = <opencomputers:component:6>;

val cardRedstoneMv = <opencomputers:card:4>;
var cardWirelessHv = <opencomputers:card:6>;
var cardWirelessEv = <opencomputers:card:7>;

val machineCasingLv = <gregtech:machine_casing:1>;
val machineCasingMv = <gregtech:machine_casing:2>;
val machineCasingHv = <gregtech:machine_casing:3>;
val machineCasingEv = <gregtech:machine_casing:4>;
val pistonLv = <gregtech:meta_item_1:172>;
val pistonMv = <gregtech:meta_item_1:173>;
val motorMv = <gregtech:meta_item_1:128>;
val motorHv = <gregtech:meta_item_1:129>;
val motorEv = <gregtech:meta_item_1:130>;
val robotArmLv = <gregtech:meta_item_1:187>;
val robotArmMv = <gregtech:meta_item_1:188>;
val robotArmHv = <gregtech:meta_item_1:189>;
val sensorMv = <gregtech:meta_item_1:233>;
val sensorHv = <gregtech:meta_item_1:234>;
val emitterHv = <gregtech:meta_item_1:219>;
val circuitBoardPlastic = <gregtech:meta_item_1:403>;
val circuitBoardAdvanced = <gregtech:meta_item_1:404>;
val circuitBoardExtreme = <gregtech:meta_item_1:405>;
val chargerMv = <gregtech:machine:1377>;
val energyInputHatchMv = <gregtech:machine:1212>;
val dynamoHatchMv = <gregtech:machine:1227>;
val computerMonitor = <gregtech:meta_item_1:307>;
val integratedCircuit = <gregtech:meta_item_1:593>;
val NAND = <gregtech:meta_item_1:600>;
val RAM = <gregtech:meta_item_1:592>;
val bioChaff = <gregtech:meta_item_1:440>;
val plantBall = <gregtech:meta_item_1:439>;
val stickyResin = <gregtech:meta_item_1:438>;

// --- Removes ---
mods.jei.JEI.hide(<opencomputers:material>);
mods.jei.JEI.hide(<opencomputers:material:2>);
mods.jei.JEI.hide(<opencomputers:material:4>);
mods.jei.JEI.hide(<opencomputers:material:6>);
mods.jei.JEI.hide(<opencomputers:material:14>);
mods.jei.JEI.hide(<opencomputers:material:15>);
mods.jei.JEI.hide(<opencomputers:material:16>);
mods.jei.JEI.hide(<opencomputers:material:29>);

// --- Recipes ---
// TODO - opencomputers

// Adapter
recipes.remove(<opencomputers:adapter>);
assembler.recipeBuilder()
	.inputs([machineCasingLv, circuitBoardPlastic, <ore:cableGtSingleCopper>, microchipMv])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:adapter>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.duration(200).EUt(120).buildAndRegister();
    
// Electronics Assembler
recipes.remove(<opencomputers:assembler>);
assembler.recipeBuilder()
	.inputs([machineCasingHv, <ore:plateAluminium> *2, circuitBoardAdvanced, microchipHv, robotArmLv])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:assembler>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.duration(200).EUt(256).buildAndRegister();

// Cable
// TODO - cables are broken - https://github.com/MightyPirates/OpenComputers/issues/3004 
/*
recipes.remove(<opencomputers:cable>);
assembler.recipeBuilder()
	.inputs([<ore:cableSingleGtGold>, <ore:dustTinyEmerald>])
	.outputs(<opencomputers:cable>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.duration(200).EUt(120).buildAndRegister();
    */

// Capacitor
recipes.remove(<opencomputers:capacitor>);
assembler.recipeBuilder()
	.inputs([machineCasingHv *2, <ore:componentCapacitor> *8, circuitBoardPlastic *2, <ore:cableGtSingleCopper>*2])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:capacitor>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.duration(200).EUt(120).buildAndRegister();

// Computer Case Tier 1
recipes.remove(<opencomputers:case1>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, <ore:plateAluminium> *2, circuitBoardPlastic, microchipMv, <ore:gearAluminium> *2, <ore:foilGold> *4])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:case1>)
	.duration(200).EUt(120).buildAndRegister();

// Computer Case Tier 3
recipes.remove(<opencomputers:case3>);
assembler.recipeBuilder()
	.inputs([machineCasingEv, <ore:plateTitanium> *2, circuitBoardExtreme, microchipEv, <ore:gearAluminium> *2, <ore:foilGold> *4])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:case3>)
	.duration(200).EUt(480).buildAndRegister();

// Computer Case Tier 2
recipes.remove(<opencomputers:case2>);
assembler.recipeBuilder()
	.inputs([machineCasingHv, <ore:plateStainlessSteel> *2, circuitBoardAdvanced, microchipHv, <ore:gearAluminium> *2, <ore:foilGold> *4])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:case2>)
	.duration(200).EUt(256).buildAndRegister();

// Block of Chamelium
recipes.remove(<opencomputers:chameliumblock>);
compressor.recipeBuilder()
	.inputs(<opencomputers:material:28> *9)
	.outputs(<opencomputers:chameliumblock>)
	.duration(300).EUt(2).buildAndRegister();

// Charger
recipes.remove(<opencomputers:charger>);
assembler.recipeBuilder()
	.inputs([machineCasingHv *2, chargerMv *2, circuitBoardAdvanced, microchipEv, <ore:cableGtSingleCopper> *2])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:charger>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.duration(200).EUt(256).buildAndRegister();

// Disassembler
recipes.remove(<opencomputers:disassembler>);
assembler.recipeBuilder()
	.inputs([machineCasingHv, <opencomputers:tool>, <opencomputers:material:11>, <ore:plateAluminium> *4, microchipHv, robotArmHv])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:disassembler>)
	.duration(200).EUt(256).buildAndRegister();

// Disk Drive 
recipes.remove(<opencomputers:diskdrive>);
assembler.recipeBuilder()
	.inputs([machineCasingLv, microchipHv *3, motorMv, <ore:springIron>, <ore:stickIronMagnetic>])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:diskdrive>)
	.duration(200).EUt(120).buildAndRegister();

// Geolyzer
recipes.remove(<opencomputers:geolyzer>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, circuitBoardPlastic, microchipHv, <opencomputers:tool>, sensorMv *2, <ore:lensEmerald> *2])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:geolyzer>)
	.duration(200).EUt(120).buildAndRegister();

// Hologram Projector Tier 1
recipes.remove(<opencomputers:hologram1>);
assembler.recipeBuilder()
	.inputs([circuitBoardPlastic *2, microchipHv *2, <ore:platePlastic> *2, <ore:cableGtSingleCopper> *2, <ore:plateLead>, <ore:lensDiamond>])
    .fluidInputs([<liquid:plastic> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 10}))
	.outputs(<opencomputers:hologram1>)
	.duration(200).EUt(120).buildAndRegister();

// Hologram Projector Tier 2
recipes.remove(<opencomputers:hologram2>);
assembler.recipeBuilder()
	.inputs([circuitBoardAdvanced *2, microchipEv *2, <ore:platePlastic> *2, <ore:cableGtSingleCopper> *2, <ore:plateLead> *4, 
        <ore:lensEmerald>, <ore:lensRuby>, <ore:lensSapphire>])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:hologram2>)
	.duration(200).EUt(120).buildAndRegister();

// Keyboard
recipes.remove(<opencomputers:keyboard>);
assembler.recipeBuilder()
	.inputs([<minecraft:stone_button> *64, <minecraft:stone_button> *40, <ore:circuitLv>, <ore:plateAluminium>])
	.outputs(<opencomputers:keyboard>)
	.duration(200).EUt(64).buildAndRegister();

// Motion Sensor
recipes.remove(<opencomputers:motionsensor>);
assembler.recipeBuilder()
	.inputs([circuitBoardAdvanced, <opencomputers:component:1>, <ore:platePlastic> *2, <ore:cableGtSingleCopper> *2, <minecraft:daylight_detector> *2])
    .fluidInputs([<liquid:plastic> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:motionsensor>)
	.duration(200).EUt(120).buildAndRegister();

// Power Converter
recipes.remove(<opencomputers:powerconverter>);
assembler.recipeBuilder()
	.inputs([energyInputHatchMv, circuitBoardPlastic *2, microchipMv *2, <ore:plateAluminium> *2, <ore:cableGtSingleCopper> *2])
    .fluidInputs([<liquid:plastic> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:powerconverter>)
	.duration(200).EUt(120).buildAndRegister();

// Power Distributor
recipes.remove(<opencomputers:powerdistributor>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, dynamoHatchMv, circuitBoardPlastic, <ore:plateAluminium> *2, <ore:cableGtSingleCopper> *2, <ore:circuitEv> *2])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:powerdistributor>)
	.duration(200).EUt(256).buildAndRegister();

// 3D Printer
recipes.remove(<opencomputers:printer>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, circuitBoardAdvanced, microchipEv, <ore:platePlastic> *4, <ore:cableGtSingleCopper> *2])
    .fluidInputs([<liquid:plastic> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:printer>)
	.duration(200).EUt(256).buildAndRegister();

// Raid
recipes.remove(<opencomputers:raid>);
assembler.recipeBuilder()
	.inputs([<opencomputers:diskdrive>, cpuEv, memoryMv *2, microchipHv, <ore:platePlastic> *4, <ore:cableGtSingleCopper> *2])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:raid>)
	.duration(200).EUt(256).buildAndRegister();

// Redstone IO
recipes.remove(<opencomputers:redstone>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, circuitBoardPlastic *2, microchipHv *2, <ore:plateRedstone> *2, cardRedstoneMv, <minecraft:detector_rail>])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:redstone>)
	.duration(200).EUt(120).buildAndRegister();

// Relay
recipes.remove(<opencomputers:relay>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, circuitBoardPlastic *2, cardWirelessEv, microchipHv, <ore:cableGtSingleCopper>])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:relay>)
	.duration(200).EUt(120).buildAndRegister();

// Screen Tier 1
recipes.remove(<opencomputers:screen1>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, <ore:paneGlass>, <ore:circuitMv> *2, computerMonitor *2])
    .fluidInputs([<liquid:plastic> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:screen1>)
	.duration(200).EUt(64).buildAndRegister();

// Screen Tier 3
recipes.remove(<opencomputers:screen3>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, <opencomputers:screen2>, <ore:circuitEv> *2, computerMonitor])
    .fluidInputs([<liquid:plastic> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:screen3>)
	.duration(200).EUt(256).buildAndRegister();

// Screen Tier 2
recipes.remove(<opencomputers:screen2>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, <opencomputers:screen1>, <ore:circuitHv> *2, computerMonitor])
    .fluidInputs([<liquid:plastic> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:screen2>)
	.duration(200).EUt(120).buildAndRegister();

// Rack
recipes.remove(<opencomputers:rack>);
assembler.recipeBuilder()
	.inputs([<opencomputers:relay>, <opencomputers:powerdistributor>, cardWirelessHv, circuitBoardPlastic *2, <ore:gearAluminium>, <ore:plateAluminium>, <ore:stickSteel> *2])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:rack>)
	.duration(200).EUt(256).buildAndRegister();

// Waypoint
recipes.remove(<opencomputers:waypoint>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, interweb, circuitBoardPlastic, microchipMv, machineCasingMv *2, <ore:cableGtSingleCopper>])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:waypoint>)
	.duration(200).EUt(64).buildAndRegister();

// Net Splitter
recipes.remove(<opencomputers:netsplitter>);
assembler.recipeBuilder()
	.inputs([machineCasingLv, circuitBoardPlastic *2, <ore:platePlastic> *4, <ore:cableGtSingleCopper>, pistonLv])
    .fluidInputs([<liquid:plastic> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:netsplitter>)
	.duration(200).EUt(64).buildAndRegister();

// Transposer
recipes.remove(<opencomputers:transposer>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, <opencomputers:upgrade:18>, <opencomputers:upgrade:23>, <ore:platePlastic> *2, <ore:cableGtSingleCopper>])
    .fluidInputs([<liquid:plastic> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:transposer> *2)
	.duration(200).EUt(120).buildAndRegister();

// Grog
recipes.remove(grog);
recipes.addShapeless(grog, [bioChaff, stickyResin, plantBall]);

// ALU
recipes.remove(arithmaticLogicUnit);
assembler.recipeBuilder()
	.inputs([circuitBoardPlastic, NAND *16])
    .fluidInputs([<liquid:plastic> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(arithmaticLogicUnit)
	.duration(200).EUt(64).buildAndRegister();

// Card Base
recipes.remove(cardBase);
assembler.recipeBuilder()
	.inputs([<ore:stickIron>, circuitBoardPlastic, <ore:foilGold>])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
	.outputs(cardBase)
	.duration(200).EUt(64).buildAndRegister();

// Chamelium
recipes.remove(<opencomputers:material:28>);
mixer.recipeBuilder()
	.inputs([<ore:dustRedstone> *4, <ore:dustCoal>, <ore:dustFlint> *4])
    .fluidInputs([<liquid:water> *1000])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
	.outputs(<opencomputers:material:28>)
	.duration(200).EUt(120).buildAndRegister();

// Control Unit
recipes.remove(controlUnit);
circuit_assembler.recipeBuilder()
	.inputs([NAND *2, <ore:circuitHv>])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(controlUnit)
	.duration(200).EUt(30).buildAndRegister();

// Disk Platter
recipes.remove(diskPlatter);
assembler.recipeBuilder()
	.inputs([<ore:lensGlass>, <ore:foilAluminium> *4])
    .fluidInputs([<liquid:cobalt> *36])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(controlUnit)
	.duration(200).EUt(30).buildAndRegister();

// Drone Case Tier 1
recipes.remove(<opencomputers:material:23>);
assembler.recipeBuilder()
	.inputs([<opencomputers:material:20>, <opencomputers:component:4>, microchipHv *2, <ore:rotorStainlessSteel> *4, <ore:plateAluminium> *4, motorHv *4])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:material:23>)
	.duration(300).EUt(256).buildAndRegister();

// Drone Case Tier 2
recipes.remove(<opencomputers:material:24>);
assembler.recipeBuilder()
	.inputs([<opencomputers:material:21>, <opencomputers:component:5>, microchipEv *2, <ore:rotorTitanium> *4, <ore:plateTitanium> *4, motorEv *4])
    .fluidInputs([<liquid:plastic> *72])
	.outputs(<opencomputers:material:24>)
	.duration(300).EUt(480).buildAndRegister();

// TODO - Drone Case Tier 3
recipes.remove(<opencomputers:material:25>);

// Ink Cartridge
recipes.remove(<opencomputers:material:27>);
mixer.recipeBuilder()
	.inputs([<opencomputers:material:26>, <ore:dyeBlack>, <ore:dyeCyan>, <ore:dyeYellow>, <ore:dyeMagenta>])
    .fluidInputs([<liquid:water> *1000])
	.outputs(<opencomputers:material:27>)
	.duration(200).EUt(64).buildAndRegister();

// Ink Cartridge (Empty)
recipes.remove(<opencomputers:material:26>);
assembler.recipeBuilder()
	.inputs([circuitBoardPlastic, microchipMv, <ore:pipeTinyFluidPlastic> *8, <ore:boltElectrum> *8])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:material:26>)
	.duration(200).EUt(64).buildAndRegister();

// Interweb
recipes.remove(interweb);
assembler.recipeBuilder()
	.inputs([<ore:platePlastic>, <minecraft:string> *8])
    .fluidInputs([<liquid:glue> *576])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
	.outputs(interweb)
	.duration(200).EUt(64).buildAndRegister();

// Microchip Tier 1
recipes.remove(microchipMv);
assembler.recipeBuilder()
	.inputs([circuitBoardPlastic, <ore:circuitMv>, integratedCircuit *2, <ore:foilElectrum> *4])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(microchipMv)
	.duration(300).EUt(120).buildAndRegister();

// Microchip Tier 2
recipes.remove(microchipHv);
assembler.recipeBuilder()
	.inputs([circuitBoardAdvanced, <ore:circuitHv>, <ore:componentTransistor> *2, <ore:foilElectrum> *8])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
	.outputs(microchipHv)
	.duration(300).EUt(256).buildAndRegister();

// Microchip Tier 3
recipes.remove(microchipEv);
assembler.recipeBuilder()
	.inputs([circuitBoardExtreme, <ore:circuitEv>, <ore:componentTransistor> *8, <ore:foilElectrum> *16])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
	.outputs(microchipEv)
	.duration(300).EUt(480).buildAndRegister();

// Microcontroller Case Tier 1
recipes.remove(<opencomputers:material:20>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, circuitBoardPlastic, microchipHv, <ore:plateAluminium> *2])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:material:20>)
	.duration(200).EUt(120).buildAndRegister();

// Microcontroller Case Tier 2
recipes.remove(<opencomputers:material:21>);
assembler.recipeBuilder()
	.inputs([machineCasingHv, circuitBoardAdvanced, microchipEv, <ore:plateTitanium> *2])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:material:21>)
	.duration(200).EUt(256).buildAndRegister();

// TODO - Microcontroller Case Tier 3
recipes.remove(<opencomputers:material:22>);

// Tablet Case Tier 1
recipes.remove(<opencomputers:material:17>);
assembler.recipeBuilder()
	.inputs([<opencomputers:screen2>, circuitBoardPlastic, microchipHv *2, <opencomputers:component:3>, microchipMv *2, <ore:foilElectrum> *4])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.outputs(<opencomputers:material:17>)
	.duration(200).EUt(120).buildAndRegister();

// Tablet Case Tier 2
recipes.remove(<opencomputers:material:18>);
assembler.recipeBuilder()
	.inputs([<opencomputers:screen3>, circuitBoardAdvanced, microchipEv *2, <opencomputers:component:5>, microchipMv *2, <ore:foilElectrum> *4])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.outputs(<opencomputers:material:18>)
	.duration(400).EUt(256).buildAndRegister();

// Analyzer
recipes.remove(<opencomputers:tool>);
assembler.recipeBuilder()
	.inputs([machineCasingMv, microchipHv *2, computerMonitor, sensorHv])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.outputs(<opencomputers:tool>)
	.duration(300).EUt(120).buildAndRegister();

// Nanomachines
recipes.remove(<opencomputers:tool:5>);
assembler.recipeBuilder()
	.inputs([<opencomputers:capacitor>, <opencomputers:component:8> *2, <opencomputers:card:7>, <opencomputers:component:1> *2, <opencomputers:material:1>, <opencomputers:material:28> *9])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.outputs(<opencomputers:tool:5>)
	.duration(400).EUt(256).buildAndRegister();

// Remote Terminal
recipes.remove(<opencomputers:tool:2>);
assembler.recipeBuilder()
	.inputs([<opencomputers:screen2>, <opencomputers:upgrade:22>, <opencomputers:card:7>, microchipEv *2, <opencomputers:keyboard>])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:tool:2>)
	.duration(400).EUt(120).buildAndRegister();

// Hover Boots
recipes.remove(<opencomputers:hoverboots>);
assembler.recipeBuilder()
	.inputs([<opencomputers:capacitor>, <opencomputers:material:23>, <opencomputers:upgrade:28>, <ore:plateAluminium> *4, pistonMv *2])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:hoverboots>)
	.duration(500).EUt(256).buildAndRegister();

// APU Tier 2
recipes.remove(<opencomputers:component:16>);
assembler.recipeBuilder()
	.inputs([arithmaticLogicUnit *32, <opencomputers:material:11> *4, <ore:circuitEv>, <ore:plateAluminium>])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:component:16>)
	.duration(200).EUt(256).buildAndRegister();

// APU Tier 3
recipes.remove(<opencomputers:component:17>);
assembler.recipeBuilder()
	.inputs([arithmaticLogicUnit *64, <opencomputers:material:11> *8, <ore:circuitIv>, <ore:plateAluminium>])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
	.outputs(<opencomputers:component:17>)
	.duration(200).EUt(480).buildAndRegister();

// Component Bus Tier 1
recipes.remove(<opencomputers:component:3>);
assembler.recipeBuilder()
	.inputs([circuitBoardPlastic, microchipMv *2, controlUnit, <ore:wireFineRedAlloy> *8])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:component:3>)
	.duration(100).EUt(120).buildAndRegister();

// Component Bus Tier 2
recipes.remove(<opencomputers:component:4>);
assembler.recipeBuilder()
	.inputs([circuitBoardAdvanced, microchipHv *2, controlUnit *4, <opencomputers:component:8>, <ore:wireFineGold> *8])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:component:4>)
	.duration(100).EUt(256).buildAndRegister();

// Component Bus Tier 3
recipes.remove(<opencomputers:component:5>);
assembler.recipeBuilder()
	.inputs([circuitBoardExtreme, microchipEv *2, controlUnit *8, <opencomputers:component:10>, <ore:wireFineNiobiumTitanium> *8])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:component:5>)
	.duration(100).EUt(480).buildAndRegister();

// Central Processing Unit Tier 1
recipes.remove(<opencomputers:component>);
assembler.recipeBuilder()
	.inputs([arithmaticLogicUnit *8, controlUnit, <ore:circuitMv>, <ore:plateAluminium>])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:component>)
	.duration(200).EUt(120).buildAndRegister();

// Central Processing Unit Tier 2
recipes.remove(<opencomputers:component:1>);
assembler.recipeBuilder()
	.inputs([arithmaticLogicUnit *12, controlUnit *2, <ore:circuitHv>, <ore:plateAluminium>])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
	.outputs(<opencomputers:component:1>)
	.duration(200).EUt(120).buildAndRegister();

// Central Processing Unit Tier 3
recipes.remove(<opencomputers:component:2>);
assembler.recipeBuilder()
	.inputs([arithmaticLogicUnit *16, controlUnit *4, <ore:circuitEv>, <ore:plateAluminium>])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
	.outputs(<opencomputers:component:2>)
	.duration(200).EUt(120).buildAndRegister();

// Disk Drive
recipes.remove(<opencomputers:component:20>);
assembler.recipeBuilder()
	.inputs([<opencomputers:diskdrive>, microchipMv, circuitBoardAdvanced, <ore:stickSteel> *8, <ore:plateDoubleLead> *4])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:component:20>)
	.duration(200).EUt(480).buildAndRegister();

// Memory Tier 1
recipes.remove(<opencomputers:component:6>);
assembler.recipeBuilder()
	.inputs([circuitBoardPlastic, RAM *16, microchipMv *2, <ore:foilElectrum> *16]) 
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:component:6>)
	.duration(250).EUt(64).buildAndRegister();

// Memory Tier 1.5
recipes.remove(<opencomputers:component:7>);
assembler.recipeBuilder()
	.inputs([circuitBoardPlastic, RAM *32, microchipMv *4, <ore:foilElectrum> *16]) 
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
	.outputs(<opencomputers:component:7>)
	.duration(250).EUt(64).buildAndRegister();

// Memory Tier 2 
recipes.remove(<opencomputers:component:8>);
assembler.recipeBuilder()
	.inputs([circuitBoardAdvanced, RAM *64, microchipHv *2, <ore:foilElectrum> *16]) 
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:component:8>)
	.duration(250).EUt(256).buildAndRegister();

// Memory Tier 2.5
recipes.remove(<opencomputers:component:9>);
assembler.recipeBuilder()
	.inputs([circuitBoardAdvanced, RAM *64, <ore:foilAluminium> *16, microchipHv *4, <ore:foilElectrum> *16]) 
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
	.outputs(<opencomputers:component:9>)
	.duration(250).EUt(256).buildAndRegister();

// Memory Tier 3
recipes.remove(<opencomputers:component:10>);
assembler.recipeBuilder()
	.inputs([circuitBoardExtreme, RAM *64, <ore:foilAluminium> *32, microchipEv *2, <ore:foilElectrum> *16]) 
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:component:10>)
	.duration(250).EUt(1024).buildAndRegister();

// Memory Tier 3.5
recipes.remove(<opencomputers:component:11>);
assembler.recipeBuilder()
	.inputs([circuitBoardExtreme, RAM *64, <ore:foilAluminium> *64, microchipEv *4, <ore:foilElectrum> *16]) 
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
	.outputs(<opencomputers:component:11>)
	.duration(250).EUt(1024).buildAndRegister();

// Server Tier 1
recipes.remove(<opencomputers:component:13>);
assembler.recipeBuilder()
	.inputs([circuitBoardPlastic, <opencomputers:case1>, microchipMv *2, microchipHv, <opencomputers:component:9>])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:component:13>)
	.duration(400).EUt(256).buildAndRegister();

// Server Tier 2
recipes.remove(<opencomputers:component:14>);
assembler.recipeBuilder()
	.inputs([circuitBoardAdvanced, <opencomputers:case2>, microchipHv *2, microchipEv, <opencomputers:component:10>])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:component:14>)
	.duration(400).EUt(480).buildAndRegister();

// Server Tier 3
recipes.remove(<opencomputers:component:15>);
assembler.recipeBuilder()
	.inputs([circuitBoardExtreme, <opencomputers:case3>, microchipEv *2, <ore:circuitIv>, <opencomputers:component:10> *2])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:component:15>)
	.duration(400).EUt(1024).buildAndRegister();

// Terminal Server
recipes.remove(<opencomputers:component:19>);
assembler.recipeBuilder()
	.inputs([circuitBoardExtreme, <opencomputers:card:7> *3, microchipHv *2, <ore:plateDoubleLead> *4, <ore:cableGtSingleCopper> *8])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:component:19>)
	.duration(400).EUt(480).buildAndRegister();

// Data Card Tier 1
recipes.remove(<opencomputers:card:10>);
circuit_assembler.recipeBuilder()
	.inputs([cardBase, microchipMv, arithmaticLogicUnit *4, <ore:foilGold> *16])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:card:10>)
	.duration(300).EUt(120).buildAndRegister();

// Data Card Tier 2
recipes.remove(<opencomputers:card:11>);
circuit_assembler.recipeBuilder()
	.inputs([cardBase, microchipHv, <opencomputers:component>, <ore:foilGold> *16])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:card:11>)
	.duration(300).EUt(256).buildAndRegister();

// Data Card Tier 3
recipes.remove(<opencomputers:card:12>);
circuit_assembler.recipeBuilder()
	.inputs([cardBase, microchipEv, <opencomputers:component:1>, <ore:foilGold> *16])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:card:12>)
	.duration(300).EUt(480).buildAndRegister();

// Graphics Card Tier 1
recipes.remove(<opencomputers:card:1>);
circuit_assembler.recipeBuilder()
	.inputs([cardBase, arithmaticLogicUnit *8, controlUnit, microchipMv, <opencomputers:component:6>])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:card:1>)
	.duration(400).EUt(120).buildAndRegister();

// Graphics Card Tier 2
recipes.remove(<opencomputers:card:2>);
circuit_assembler.recipeBuilder()
	.inputs([cardBase, arithmaticLogicUnit *16, controlUnit *2, microchipHv, <opencomputers:component:8>])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:card:2>)
	.duration(400).EUt(256).buildAndRegister();

// Graphics Card Tier 3
recipes.remove(<opencomputers:card:3>);
circuit_assembler.recipeBuilder()
	.inputs([cardBase, arithmaticLogicUnit *32, controlUnit *4, microchipEv, <opencomputers:component:10>])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:card:3>)
	.duration(400).EUt(480).buildAndRegister();

// Internet Card
recipes.remove(<opencomputers:card:8>);
circuit_assembler.recipeBuilder()
	.inputs([<opencomputers:card:7>, interweb, microchipEv, <ore:plateStainlessSteel>, <appliedenergistics2:material:41>])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:card:8>)
	.duration(400).EUt(480).buildAndRegister();

// Linked Card
recipes.remove(<opencomputers:card:9>);
recipes.addShapeless(<opencomputers:card:9> *2, [<ore:oc:linkedCard>, <ore:oc:linkedCard>]);
circuit_assembler.recipeBuilder()
	.inputs([<opencomputers:card:7> *2, controlUnit *2, interweb])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:card:9> *2)
	.duration(400).EUt(480).buildAndRegister();

// Network Card
recipes.remove(<opencomputers:card:6>);
circuit_assembler.recipeBuilder()
	.inputs([cardBase, <ore:cableGtSingleCopper> *2, microchipEv, <ore:foilGold> *16])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:card:6>)
	.duration(200).EUt(120).buildAndRegister();

// Redstone Card Tier 1
recipes.remove(<opencomputers:card:4>);
circuit_assembler.recipeBuilder()
	.inputs([cardBase, <ore:cableGtSingleCopper> *2, microchipMv, <minecraft:redstone_torch> *2])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:card:4>)
	.duration(200).EUt(120).buildAndRegister();

// Redstone Card Tier 2
recipes.remove(<opencomputers:card:5>);
circuit_assembler.recipeBuilder()
	.inputs([cardBase, <ore:cableGtSingleCopper> *2, microchipHv, <minecraft:redstone_torch> *4])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:card:5>)
	.duration(200).EUt(256).buildAndRegister();

// Wireless Network Card Tier 2
recipes.remove(<opencomputers:card:7>);
circuit_assembler.recipeBuilder()
	.inputs([<opencomputers:card:6>, circuitBoardAdvanced, microchipEv, sensorHv, emitterHv])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:card:7>)
	.duration(200).EUt(256).buildAndRegister();

// Angel Upgrade
recipes.remove(<opencomputers:upgrade>);
assembler.recipeBuilder()
	.inputs([circuitBoardPlastic, <ore:plateAluminium>, <ore:blockObsidian>, microchipHv])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:upgrade>)
	.duration(200).EUt(256).buildAndRegister();

// Battery Upgrade Tier 1
recipes.remove(<opencomputers:upgrade:1>);
assembler.recipeBuilder()
	.inputs([circuitBoardPlastic, <ore:plateAluminium>, <opencomputers:capacitor>, <ore:batteryMv> *2, <ore:wireFineRedAlloy> *8])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:upgrade:1>)
	.duration(300).EUt(120).buildAndRegister();

// Battery Upgrade Tier 2
recipes.remove(<opencomputers:upgrade:2>);
assembler.recipeBuilder()
	.inputs([circuitBoardAdvanced, <ore:plateTitanium>, <opencomputers:capacitor> *2, <ore:batteryHv> *2, <ore:wireFineRedAlloy> *8])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:upgrade:2>)
	.duration(300).EUt(480).buildAndRegister();

// Battery Upgrade Tier 3
recipes.remove(<opencomputers:upgrade:3>);
assembler.recipeBuilder()
	.inputs([circuitBoardExtreme, <ore:plateTungstenSteel>, <opencomputers:capacitor> *4, <ore:batteryEv> *2, <ore:wireFineRedAlloy> *8])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:upgrade:3>)
	.duration(300).EUt(1024).buildAndRegister();

// Chunkloader Upgrade
recipes.remove(<opencomputers:upgrade:4>);
assembler.recipeBuilder()
	.inputs([circuitBoardPlastic, <ore:plateAluminium>, <ore:enderpearl> *4, microchipEv])
    .fluidInputs([<liquid:soldering_alloy> *144])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:upgrade:4>)
	.duration(200).EUt(480).buildAndRegister();

// Card Container Tier 1
recipes.remove(<opencomputers:upgrade:5>);
assembler.recipeBuilder()
	.inputs([cardBase, <ore:plateAluminium> *2, <ore:chest>, microchipMv])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:upgrade:5>)
	.duration(200).EUt(120).buildAndRegister();

// Card Container Tier 2
recipes.remove(<opencomputers:upgrade:6>);
assembler.recipeBuilder()
	.inputs([cardBase, <ore:plateTitanium> *2, <ore:chest>, microchipHv])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:upgrade:6>)
	.duration(200).EUt(256).buildAndRegister();

// Card Container Tier 3
recipes.remove(<opencomputers:upgrade:7>);
assembler.recipeBuilder()
	.inputs([cardBase, <ore:plateTungstenSteel> *2, <ore:chest>, microchipEv])
    .fluidInputs([<liquid:soldering_alloy> *72])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<opencomputers:upgrade:7>)
	.duration(200).EUt(480).buildAndRegister();
