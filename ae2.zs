import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Inscriber;


// --- Vars ---
val certusQuartz = <appliedenergistics2:material>;
val chargedCertusQuartz = <appliedenergistics2:material:1>;
val meCable = <appliedenergistics2:part:16>;
val processorLogic = <appliedenergistics2:material:22>;
val processorCalculation = <appliedenergistics2:material:23>;
val processorEngineering = <appliedenergistics2:material:24>;
val coreAnnihilation = <appliedenergistics2:material:44>;
val coreFormation = <appliedenergistics2:material:43>;
val storageHousing = <appliedenergistics2:material:39>;
val fluidComponent1k = <appliedenergistics2:material:54>;
val fluidComponent4k = <appliedenergistics2:material:55>;
val fluidComponent16k = <appliedenergistics2:material:56>;
val fluidComponent64k = <appliedenergistics2:material:57>;
val component1k = <appliedenergistics2:material:35>;
val component4k = <appliedenergistics2:material:36>;
val component16k = <appliedenergistics2:material:37>;
val component64k = <appliedenergistics2:material:38>;
val spatialComponent2 = <appliedenergistics2:material:32>;
val spatialComponent16 = <appliedenergistics2:material:33>;
val spatialComponent128 = <appliedenergistics2:material:34>;


val smallCoil = <gregtech:meta_item_1:522>;
val display = <gregtech:meta_item_1:307>;
val casingHv = <gregtech:machine_casing:3>;
val hullHv = <gregtech:machine:988>;
val pistonLv = <gregtech:meta_item_1:172>;
val pistonHv = <gregtech:meta_item_1:174>;
val laserEngraverHv = <gregtech:machine:52>;
val assemblerEv = <gregtech:machine:113>;
val chargerHv = <gregtech:machine:1378>;
val crateSteel = <gregtech:machine:1627>;


// --- Removes --
mods.jei.JEI.hideCategory("appliedenergistics2.grinder");
mods.jei.JEI.hideCategory("appliedenergistics2.inscriber");
mods.jei.JEI.hide(<appliedenergistics2:facade:*>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:grindstone>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:crank>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_axe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_hoe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_spade>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_pickaxe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_sword>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_wrench>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:nether_quartz_axe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:nether_quartz_hoe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:nether_quartz_spade>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:nether_quartz_pickaxe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:nether_quartz_sword>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:nether_quartz_wrench>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);



// --- Recipes ---

// Certus Quartz
recipes.addShapeless(<appliedenergistics2:material>, [<ore:gemCertusQuartz>]);

// Quartz Glass
recipes.remove(<appliedenergistics2:quartz_glass>);
alloy_smelter.recipeBuilder()
	.inputs([<ore:blockGlass>, <ore:dustCertusQuartz>])
	.outputs(<appliedenergistics2:quartz_glass>)
	.duration(100).EUt(16).buildAndRegister();	
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:blockGlass>, <ore:dustCertusQuartz>])
	.outputs(<appliedenergistics2:quartz_glass>)
	.property("temperature", 1000)
	.duration(50).EUt(120).buildAndRegister();	
	
// Charged Quartz Fixture 
recipes.remove(<appliedenergistics2:quartz_fixture>);
assembler.recipeBuilder()
	.inputs([chargedCertusQuartz, <ore:stickAluminium>])
	.outputs(<appliedenergistics2:quartz_fixture>)
	.duration(200).EUt(30).buildAndRegister();	


// Vibrant Quartz Glass
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:quartz_glass>, <ore:dustGlowstone> *8])
	.outputs(<appliedenergistics2:quartz_vibrant_glass>)
	.duration(200).EUt(30).buildAndRegister();	

// Fluix Block
recipes.remove(<appliedenergistics2:fluix_block>);
compressor.recipeBuilder()
	.inputs([<ore:crystalPureFluix> *8])
	.outputs(<appliedenergistics2:fluix_block>)
	.duration(300).EUt(2).buildAndRegister();	
	
// Meteorite Compass
recipes.remove(<appliedenergistics2:sky_compass>);
recipes.addShaped(<appliedenergistics2:sky_compass>, 
	[[<ore:craftingToolScrewdriver>, <ore:paneGlass>, <ore:screwSteel>], 
	[<ore:plateSteel>, <ore:stickSteelMagnetic>, <ore:plateSteel>], 
	[<ore:screwSteel>, <ore:plateSteel>, <ore:craftingToolHammer>]]);
	
// Inscriber
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber>, 
	[[<ore:plateStainlessSteel>, <ore:crystalFluix>, <ore:plateStainlessSteel>], 
	[smallCoil, laserEngraverHv, smallCoil], 
	[<ore:plateStainlessSteel>, <ore:crystalFluix>, <ore:plateStainlessSteel>]]);

// ME Wireless Access Point
recipes.remove(<appliedenergistics2:wireless_access_point>);
recipes.addShaped(<appliedenergistics2:wireless_access_point>, 
	[[null, <appliedenergistics2:material:41>, null], 
	[<ore:screwStainlessSteel>, processorCalculation, <ore:screwStainlessSteel>], 
	[<ore:craftingToolScrewdriver>, meCable, <ore:craftingToolWrench>]]);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:material:41>, processorCalculation, meCable, <ore:screwStainlessSteel> *2])
	.outputs(<appliedenergistics2:wireless_access_point>)
	.duration(300).EUt(256).buildAndRegister();
	
// Charger
recipes.remove(<appliedenergistics2:charger>);
recipes.addShaped(<appliedenergistics2:charger>, 
	[[<ore:plateStainlessSteel>, <ore:crystalFluix>, <ore:plateStainlessSteel>], 
	[<ore:cableGtSingleCopper>, chargerHv, <ore:cableGtSingleCopper>], 
	[<ore:plateStainlessSteel>, <ore:crystalFluix>, <ore:plateStainlessSteel>]]);
	
// Tiny Tnt
recipes.remove(<appliedenergistics2:tiny_tnt>);
centrifuge.recipeBuilder()
	.inputs([<minecraft:tnt>])
	.outputs(<appliedenergistics2:tiny_tnt> *2)
	.duration(600).EUt(5).buildAndRegister();	

// Security Station	
recipes.remove(<appliedenergistics2:security_station>);
recipes.addShaped(<appliedenergistics2:security_station>, 
	[[<ore:plateStainlessSteel>, <appliedenergistics2:chest>, <ore:plateStainlessSteel>], 
	[meCable, <appliedenergistics2:material:37>, meCable], 
	[<ore:plateStainlessSteel>, processorEngineering, <ore:plateStainlessSteel>]]);
	
// ME Quantum Ring
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.addShaped(<appliedenergistics2:quantum_ring>, 
	[[<ore:plateStainlessSteel>, processorLogic, <ore:plateStainlessSteel>], 
	[processorEngineering, <appliedenergistics2:energy_cell>.withTag({}), meCable], 
	[<ore:plateStainlessSteel>, processorLogic, <ore:plateStainlessSteel>]]);
	
// ME Quantum Link Chamber
recipes.remove(<appliedenergistics2:quantum_link>);
recipes.addShaped(<appliedenergistics2:quantum_link>, 
	[[<ore:plateStainlessSteel>, <ore:pearlFluix>, <ore:plateStainlessSteel>], 
	[<ore:pearlFluix>, <appliedenergistics2:quartz_glass>, <ore:pearlFluix>], 
	[<ore:plateStainlessSteel>, <ore:pearlFluix>, <ore:plateStainlessSteel>]]);

// Spatial Pylon
recipes.remove(<appliedenergistics2:spatial_pylon>);
recipes.addShaped(<appliedenergistics2:spatial_pylon>, 
	[[<ore:plateStainlessSteel>, meCable, <ore:plateStainlessSteel>], 
	[<ore:dustFluix>, <ore:crystalFluix>, <ore:dustFluix>], 
	[<ore:plateStainlessSteel>, meCable, <ore:plateStainlessSteel>]]);

// Spatial IO Port
recipes.remove(<appliedenergistics2:spatial_io_port>);
recipes.addShaped(<appliedenergistics2:spatial_io_port>, 
	[[<ore:plateStainlessSteel>, <appliedenergistics2:spatial_pylon>, <ore:plateStainlessSteel>], 
	[meCable, <appliedenergistics2:io_port>, meCable], 
	[<ore:plateStainlessSteel>, processorEngineering, <ore:plateStainlessSteel>]]);

// ME Controller
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped(<appliedenergistics2:controller>, 
	[[<ore:plateTitanium>, <ore:circuitHv>, <ore:plateTitanium>], 
	[processorEngineering, <appliedenergistics2:fluix_block>, processorEngineering], 
	[<ore:plateTitanium>, <ore:circuitHv>, <ore:plateTitanium>]]);

// ME Drive
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, 
	[[<ore:plateStainlessSteel>, processorEngineering, <ore:plateStainlessSteel>], 
	[meCable, crateSteel, meCable], 
	[<ore:plateStainlessSteel>, <ore:circuitHv>, <ore:plateStainlessSteel>]]);

// ME Chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, 
	[[<ore:plateStainlessSteel>, <ore:circuitMv>, <ore:plateStainlessSteel>], 
	[meCable, crateSteel, meCable], 
	[<ore:plateStainlessSteel>, <ore:circuitMv>, <ore:plateStainlessSteel>]]);

// ME Interface
recipes.remove(<appliedenergistics2:interface>);
recipes.addShaped(<appliedenergistics2:interface>, 
	[[<ore:plateTitanium>, meCable, <ore:plateTitanium>], 
	[coreAnnihilation, casingHv, coreFormation], 
	[<ore:plateTitanium>, meCable, <ore:plateTitanium>]]);
recipes.addShapeless(<appliedenergistics2:interface>, [<appliedenergistics2:part:440>]);
recipes.addShapeless(<appliedenergistics2:part:440>, [<appliedenergistics2:interface>]);

// ME Fluid Interface
recipes.remove(<appliedenergistics2:fluid_interface>);
recipes.addShaped(<appliedenergistics2:fluid_interface>, 
	[[<ore:plateLapis>, meCable, <ore:plateLapis>], 
	[fluidComponent1k, <appliedenergistics2:interface>, fluidComponent1k], 
	[<ore:plateLapis>, meCable, <ore:plateLapis>]]);
recipes.addShapeless(<appliedenergistics2:fluid_interface>, [<appliedenergistics2:part:441>]);

// Cell Workbench
recipes.remove(<appliedenergistics2:cell_workbench>);
recipes.addShaped(<appliedenergistics2:cell_workbench>, 
	[[<ore:craftingToolScrewdriver>, display, <ore:craftingToolWrench>], 
	[<ore:screwStainlessSteel>, <minecraft:crafting_table>, <ore:screwStainlessSteel>], 
	[<ore:plateStainlessSteel>, processorCalculation, <ore:plateStainlessSteel>]]);
	
// ME IO Port
recipes.remove(<appliedenergistics2:io_port>);
recipes.addShaped(<appliedenergistics2:io_port>, 
	[[meCable, <ore:plateStainlessSteel>, meCable], 
	[<appliedenergistics2:drive>, meCable, <appliedenergistics2:drive>], 
	[<ore:plateStainlessSteel>, processorLogic, <ore:plateStainlessSteel>]]);
	
// Matter Condenser
recipes.remove(<appliedenergistics2:condenser>);
recipes.addShaped(<appliedenergistics2:condenser>, 
	[[<ore:plateStainlessSteel>, pistonHv, <ore:plateStainlessSteel>], 
	[pistonHv, hullHv, pistonHv], 
	[<ore:plateStainlessSteel>, pistonHv, <ore:plateStainlessSteel>]]);

// Energy Acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, 
	[[<ore:plateStainlessSteel>, <ore:crystalFluix>, <ore:plateStainlessSteel>], 
	[<ore:crystalFluix>, <ore:plateGlowstone>, <ore:crystalFluix>], 
	[<ore:plateStainlessSteel>, <ore:crystalFluix>, <ore:plateStainlessSteel>]]);
	
// Vibration Chamber
recipes.remove(<appliedenergistics2:vibration_chamber>);
recipes.addShaped(<appliedenergistics2:vibration_chamber>, 
	[[<ore:plateStainlessSteel>, <ore:screwStainlessSteel>, <ore:plateStainlessSteel>], 
	[<ore:craftingToolScrewdriver>, <gregtech:machine:53>, <ore:craftingToolWrench>], 
	[<ore:plateStainlessSteel>, <appliedenergistics2:energy_acceptor>, <ore:plateStainlessSteel>]]);
	
// Crystal Growth Accelerator
recipes.remove(<appliedenergistics2:quartz_growth_accelerator>);
recipes.addShaped(<appliedenergistics2:quartz_growth_accelerator>, 
	[[<ore:plateStainlessSteel>, <appliedenergistics2:quartz_glass>, <ore:plateStainlessSteel>], 
	[meCable, <gregtech:machine:113>, meCable], 
	[<ore:plateStainlessSteel>, processorEngineering, <ore:plateStainlessSteel>]]);

// Energy Cell
recipes.remove(<appliedenergistics2:energy_cell>);
recipes.addShaped(<appliedenergistics2:energy_cell>, 
	[[<ore:plateCertusQuartz>, <ore:dustFluix>, <ore:plateCertusQuartz>], 
	[<ore:circuitHv>, <appliedenergistics2:fluix_block>, <ore:circuitHv>], 
	[<ore:plateCertusQuartz>, <ore:cableGtOctalAluminium>, <ore:plateCertusQuartz>]]);
	
// Dense Energy Cell
recipes.remove(<appliedenergistics2:dense_energy_cell>);
recipes.addShaped(<appliedenergistics2:dense_energy_cell>, 
	[[<appliedenergistics2:energy_cell>, <appliedenergistics2:energy_cell>, <appliedenergistics2:energy_cell>], 
	[<ore:circuitLuv>, processorEngineering, <ore:circuitLuv>], 
	[<appliedenergistics2:energy_cell>, <appliedenergistics2:energy_cell>, <appliedenergistics2:energy_cell>]]);
	
// TODO - Creative Energy Cell

// Crafting Unit
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>, 
	[[<ore:plateStainlessSteel>, processorLogic, <ore:plateStainlessSteel>], 
	[<ore:circuitLv>, processorEngineering, <ore:circuitLv>], 
	[<ore:plateStainlessSteel>, processorCalculation, <ore:plateStainlessSteel>]]);

// Crafting Co-Processing Unit
recipes.remove(<appliedenergistics2:crafting_accelerator>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:crafting_unit>, processorEngineering *2])
	.outputs(<appliedenergistics2:crafting_accelerator>)
	.duration(400).EUt(120).buildAndRegister();

// Crafting Storage 1k
recipes.remove(<appliedenergistics2:crafting_storage_1k>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:crafting_unit>, component1k])
	.outputs(<appliedenergistics2:crafting_storage_1k>)
	.duration(400).EUt(480).buildAndRegister();
	
// Crafting Storage 4k
recipes.remove(<appliedenergistics2:crafting_storage_4k>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:crafting_unit>, component4k])
	.outputs(<appliedenergistics2:crafting_storage_4k>)
	.duration(400).EUt(480).buildAndRegister();
	
// Crafting Storage 16k
recipes.remove(<appliedenergistics2:crafting_storage_16k>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:crafting_unit>, component16k])
	.outputs(<appliedenergistics2:crafting_storage_16k>)
	.duration(400).EUt(480).buildAndRegister();
	
// Crafting Storage 64k
recipes.remove(<appliedenergistics2:crafting_storage_64k>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:crafting_unit>, component64k])
	.outputs(<appliedenergistics2:crafting_storage_64k>)
	.duration(400).EUt(480).buildAndRegister();
	
// Crafting Monitor
recipes.remove(<appliedenergistics2:crafting_monitor>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:crafting_unit>, <appliedenergistics2:part:400>])
	.outputs(<appliedenergistics2:crafting_monitor>)
	.duration(400).EUt(120).buildAndRegister();
	
// Molecular Assembler
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped(<appliedenergistics2:molecular_assembler>, 
	[[<ore:plateStainlessSteel>, <ore:blockGlass>, <ore:plateStainlessSteel>], 
	[coreAnnihilation, assemblerEv, coreFormation], 
	[<ore:plateStainlessSteel>, <ore:blockGlass>, <ore:plateStainlessSteel>]]);

// Light Detecting Fixture
recipes.remove(<appliedenergistics2:light_detector>);
assembler.recipeBuilder()
	.inputs([certusQuartz, <ore:stickAluminium>])
	.outputs(<appliedenergistics2:light_detector>)
	.duration(200).EUt(30).buildAndRegister();	

// Cable Anchor
recipes.remove(<appliedenergistics2:part:120>);
cutter.recipeBuilder()
	.inputs([<ore:boltSilver>])
	.outputs(<appliedenergistics2:part:120>)
	.duration(100).EUt(16).buildAndRegister();	


// Certus Quartz Cutting Knife
recipes.remove(<appliedenergistics2:certus_quartz_cutting_knife>);
recipes.addShaped(<appliedenergistics2:certus_quartz_cutting_knife>, 
	[[<ore:craftingToolHammer>, <ore:screwStainlessSteel>, <ore:stickWood>], 
	[<ore:crystalCertusQuartz>, <ore:stickWood>, <ore:screwStainlessSteel>], 
	[<ore:plateCertusQuartz>, <ore:crystalCertusQuartz>, <ore:craftingToolFile>]]);
	
// Nether Quartz Cutting Knife
recipes.remove(<appliedenergistics2:nether_quartz_cutting_knife>);
recipes.addShaped(<appliedenergistics2:certus_quartz_cutting_knife>, 
	[[<ore:craftingToolHammer>, <ore:screwStainlessSteel>, <ore:stickWood>], 
	[<ore:gemNetherQuartz>, <ore:stickWood>, <ore:screwStainlessSteel>], 
	[<ore:plateNetherQuartz>, <ore:gemNetherQuartz>, <ore:craftingToolFile>]]);
	
// Entropy Manipulator
recipes.remove(<appliedenergistics2:entropy_manipulator>);
recipes.addShaped(<appliedenergistics2:entropy_manipulator>, 
	[[<ore:crystalFluix>, processorLogic, null], 
	[processorEngineering, <appliedenergistics2:energy_cell>, null], 
	[null, null, <ore:stickAluminium>]]);
	
// Wireless Terminal
recipes.remove(<appliedenergistics2:wireless_terminal>);
recipes.addShaped(<appliedenergistics2:wireless_terminal>, 
	[[<appliedenergistics2:material:41>, <appliedenergistics2:part:380>, <appliedenergistics2:material:41>], 
	[<ore:plateNetherQuartz>, processorLogic, <ore:plateNetherQuartz>], 
	[<ore:plateNetherQuartz>, <appliedenergistics2:dense_energy_cell>, <ore:plateNetherQuartz>]]);

// Matter Cannon
recipes.remove(<appliedenergistics2:matter_cannon>);
recipes.addShaped(<appliedenergistics2:matter_cannon>, 
	[[<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, coreFormation], 
	[component64k, <appliedenergistics2:dense_energy_cell>, null], 
	[<ore:plateStainlessSteel>, null, null]]);
	
// TODO - Charged Staff
recipes.remove(<appliedenergistics2:charged_staff>);

// Portable Cell
recipes.remove(<appliedenergistics2:portable_cell>);
recipes.addShaped(<appliedenergistics2:portable_cell>, 
	[[null, <appliedenergistics2:storage_cell_1k>, null], 
	[<ore:screwStainlessSteel>, <appliedenergistics2:chest>, <ore:screwStainlessSteel>], 
	[<ore:craftingToolScrewdriver>, <appliedenergistics2:energy_cell>, <ore:craftingToolWrench>]]);

// Color Applicator
recipes.remove(<appliedenergistics2:color_applicator>);
recipes.addShaped(<appliedenergistics2:color_applicator>, 
	[[<ore:wireGtSingleAluminium>, coreFormation, <ore:wireGtSingleAluminium>], 
	[component4k, <appliedenergistics2:energy_cell>, component4k], 
	[null, <ore:stickSteel>, null]]);

// Biometric Card
recipes.remove(<appliedenergistics2:biometric_card>);
recipes.addShaped(<appliedenergistics2:biometric_card>, 
	[[processorEngineering, display, <ore:plateStainlessSteel>], 
	[<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>], 
	[null, null, null]]);
	
// Network Tool
recipes.remove(<appliedenergistics2:network_tool>);
recipes.addShapeless(<appliedenergistics2:network_tool>, [<ore:craftingToolWrench>, <ore:itemIlluminatedPanel>, processorCalculation, <ore:chest>]);

// Memory Card
recipes.remove(<appliedenergistics2:memory_card>);
recipes.addShaped(<appliedenergistics2:memory_card>, 
	[[processorCalculation, <ore:circuitHv>, <ore:plateStainlessSteel>], 
	[<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>], 
	[null, null, null]]);

// View Cell
recipes.remove(<appliedenergistics2:view_cell>);
recipes.addShaped(<appliedenergistics2:view_cell>, 
	[[<ore:craftingToolScrewdriver>, <ore:plateCertusQuartz>, <ore:screwAluminium>], 
	[<ore:plateStainlessSteel>, <ore:crystalCertusQuartz>, <ore:plateStainlessSteel>], 
	[<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolHammer>]]);
recipes.addShapeless(<appliedenergistics2:view_cell>, [storageHousing, <ore:crystalCertusQuartz>]);

// Storage Cell 1k
recipes.remove(<appliedenergistics2:storage_cell_1k>);
recipes.addShaped(<appliedenergistics2:storage_cell_1k>, 
	[[<ore:craftingToolHammer>, <ore:plateCertusQuartz>, <ore:screwAluminium>], 
	[<ore:plateStainlessSteel>, component1k, <ore:plateStainlessSteel>], 
	[<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]]);
recipes.addShapeless(<appliedenergistics2:storage_cell_1k>, [storageHousing, component1k]);

// Storage Cell 4k
recipes.remove(<appliedenergistics2:storage_cell_4k>);
recipes.addShaped(<appliedenergistics2:storage_cell_4k>, 
	[[<ore:craftingToolHammer>, <ore:plateCertusQuartz>, <ore:screwAluminium>], 
	[<ore:plateStainlessSteel>, component4k, <ore:plateStainlessSteel>], 
	[<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]]);
recipes.addShapeless(<appliedenergistics2:storage_cell_4k>, [storageHousing, component4k]);

// Storage Cell 16k
recipes.remove(<appliedenergistics2:storage_cell_16k>);
recipes.addShaped(<appliedenergistics2:storage_cell_16k>, 
	[[<ore:craftingToolHammer>, <ore:plateCertusQuartz>, <ore:screwAluminium>], 
	[<ore:plateStainlessSteel>, component16k, <ore:plateStainlessSteel>], 
	[<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]]);
recipes.addShapeless(<appliedenergistics2:storage_cell_16k>, [storageHousing, component16k]);

// Storage Cell 64k
recipes.remove(<appliedenergistics2:storage_cell_64k>);
recipes.addShaped(<appliedenergistics2:storage_cell_64k>, 
	[[<ore:craftingToolHammer>, <ore:plateCertusQuartz>, <ore:screwAluminium>], 
	[<ore:plateStainlessSteel>, component64k, <ore:plateStainlessSteel>], 
	[<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]]);
recipes.addShapeless(<appliedenergistics2:storage_cell_64k>, [storageHousing, component64k]);

// Fluid Storage Cell 1k
recipes.remove(<appliedenergistics2:fluid_storage_cell_1k>);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_1k>, 
	[[<ore:craftingToolHammer>, <ore:plateCertusQuartz>, <ore:screwAluminium>], 
	[<ore:plateStainlessSteel>, fluidComponent1k, <ore:plateStainlessSteel>], 
	[<ore:screwAluminium>, <ore:plateStainlessSteel>, <ore:craftingToolScrewdriver>]]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_1k>, [storageHousing, fluidComponent1k]);

// Fluid Storage Cell 4k
recipes.remove(<appliedenergistics2:fluid_storage_cell_4k>);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_4k>, 
	[[<ore:craftingToolHammer>, <ore:plateCertusQuartz>, <ore:screwAluminium>], 
	[<ore:plateStainlessSteel>, fluidComponent4k, <ore:plateStainlessSteel>], 
	[<ore:screwAluminium>, <ore:plateStainlessSteel>, <ore:craftingToolScrewdriver>]]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_4k>, [storageHousing, fluidComponent4k]);

// Fluid Storage Cell 16k
recipes.remove(<appliedenergistics2:fluid_storage_cell_16k>);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_16k>, 
	[[<ore:craftingToolHammer>, <ore:plateCertusQuartz>, <ore:screwAluminium>], 
	[<ore:plateStainlessSteel>, fluidComponent16k, <ore:plateStainlessSteel>], 
	[<ore:screwAluminium>, <ore:plateStainlessSteel>, <ore:craftingToolScrewdriver>]]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_16k>, [storageHousing, fluidComponent16k]);

// Fluid Storage Cell 64k
recipes.remove(<appliedenergistics2:fluid_storage_cell_64k>);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_64k>, 
	[[<ore:craftingToolHammer>, <ore:plateCertusQuartz>, <ore:screwAluminium>], 
	[<ore:plateStainlessSteel>, fluidComponent64k, <ore:plateStainlessSteel>], 
	[<ore:screwAluminium>, <ore:plateStainlessSteel>, <ore:craftingToolScrewdriver>]]);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_64k>, [storageHousing, fluidComponent64k]);

// Spatial Storage Cell 2
recipes.remove(<appliedenergistics2:spatial_storage_cell_2_cubed>);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>, 
	[[<ore:craftingToolHammer>, <ore:plateCertusQuartz>, <ore:screwAluminium>], 
	[<ore:plateStainlessSteel>, spatialComponent2, <ore:plateStainlessSteel>], 
	[<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]]);
recipes.addShapeless(<appliedenergistics2:spatial_storage_cell_2_cubed>, [storageHousing, spatialComponent2]);

// Spatial Storage Cell 16
recipes.remove(<appliedenergistics2:spatial_storage_cell_16_cubed>);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>, 
	[[<ore:craftingToolHammer>, <ore:plateCertusQuartz>, <ore:screwAluminium>], 
	[<ore:plateStainlessSteel>, spatialComponent16, <ore:plateStainlessSteel>], 
	[<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]]);
recipes.addShapeless(<appliedenergistics2:spatial_storage_cell_16_cubed>, [storageHousing, spatialComponent16]);

// Spatial Storage Cell 128
recipes.remove(<appliedenergistics2:spatial_storage_cell_128_cubed>);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>, 
	[[<ore:craftingToolHammer>, <ore:plateCertusQuartz>, <ore:screwAluminium>], 
	[<ore:plateStainlessSteel>, spatialComponent128, <ore:plateStainlessSteel>], 
	[<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]]);
recipes.addShapeless(<appliedenergistics2:spatial_storage_cell_128_cubed>, [storageHousing, spatialComponent128]);


// Certus Quartz Seed
recipes.remove(<appliedenergistics2:crystal_seed>);
assembler.recipeBuilder()
	.inputs([<ore:dustCertusQuartz>, <ore:sand>])
	.outputs(<appliedenergistics2:crystal_seed> *2)
	.duration(64).EUt(7).buildAndRegister();	

// Nether Quartz Seed
recipes.remove(<appliedenergistics2:crystal_seed:600>);
assembler.recipeBuilder()
	.inputs([<ore:dustNetherQuartz>, <ore:sand>])
	.outputs(<appliedenergistics2:crystal_seed:600> *2)
	.duration(64).EUt(7).buildAndRegister();	

// Advanced Card
recipes.remove(<appliedenergistics2:material:28>);
recipes.addShaped(<appliedenergistics2:material:28>, 
	[[<ore:platePlatinum>, <ore:plateStainlessSteel>, null], 
	[<ore:plateRedAlloy>, processorCalculation, <ore:plateStainlessSteel>], 
	[<ore:platePlatinum>, <ore:plateStainlessSteel>, null]]);

// Annihilation Core
recipes.remove(<appliedenergistics2:material:44>);
recipes.addShaped(<appliedenergistics2:material:44>, 
	[[<ore:plateNetherQuartz>, processorLogic, <ore:plateNetherQuartz>], 
	[processorLogic, <ore:crystalPureFluix>, processorLogic], 
	[<ore:plateNetherQuartz>, processorLogic, <ore:plateNetherQuartz>]]);

// Basic Card
recipes.remove(<appliedenergistics2:material:25>);
recipes.addShaped(<appliedenergistics2:material:25>, 
	[[<ore:plateGold>, <ore:plateAluminium>, null], 
	[<ore:plateRedAlloy>, processorCalculation, <ore:plateAluminium>], 
	[<ore:plateGold>, <ore:plateAluminium>, null]]);

// Blank Pattern
recipes.remove(<appliedenergistics2:material:52>);
recipes.addShaped(<appliedenergistics2:material:52>, 
	[[<appliedenergistics2:quartz_glass>, <ore:plateGlowstone>, <appliedenergistics2:quartz_glass>], 
	[<ore:plateGlowstone>, <ore:crystalCertusQuartz>, <ore:plateGlowstone>], 
	[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
	
// Calculation Processor
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:material:16>, <appliedenergistics2:material:20>])
	.outputs(<appliedenergistics2:material:23>)
	.fluidInputs([<liquid:redstone> *144])
	.duration(64).EUt(30).buildAndRegister();	
	
// Inscriber Calculation Press
laser_engraver.recipeBuilder()
	.inputs([<ore:blockIron>])
	.outputs(<appliedenergistics2:material:13>)
	.notConsumable(<ore:craftingLensBlue>)
	.duration(2000).EUt(480).buildAndRegister();	

// Printed Calculation Circuit 
forming_press.recipeBuilder()
	.inputs([<ore:crystalPureCertusQuartz>])
	.outputs(<appliedenergistics2:material:16>)
	.notConsumable(<appliedenergistics2:material:13>)
	.duration(200).EUt(16).buildAndRegister();	
	
// Capacity Card
recipes.remove(<appliedenergistics2:material:27>);
recipes.addShapeless(<appliedenergistics2:material:27>,	
	[<appliedenergistics2:material:25>, component1k, 
	component1k, <ore:crystalCertusQuartz>]);
	
// Crafting Card
recipes.remove(<appliedenergistics2:material:53>);
recipes.addShapeless(<appliedenergistics2:material:53>,	
	[<appliedenergistics2:material:25>, component1k, 
	component1k, <ore:workbench>]);
	
// Fuzzy Card
recipes.remove(<appliedenergistics2:material:29>);
recipes.addShapeless(<appliedenergistics2:material:29>,	
	[<appliedenergistics2:material:28>, processorEngineering, 
	processorLogic, processorCalculation]);
	
// Inverter Card
recipes.remove(<appliedenergistics2:material:31>);
recipes.addShapeless(<appliedenergistics2:material:31>,	
	[<appliedenergistics2:material:28>, <ore:craftingRedstoneTorch>, 
	<ore:craftingRedstoneTorch>, processorCalculation]);
	
// Pattern Expansion Card
recipes.remove(<appliedenergistics2:material:58>);
recipes.addShapeless(<appliedenergistics2:material:58>,	
	[<appliedenergistics2:material:28>, component16k, 
	component16k, <appliedenergistics2:interface>]);
	
// Redstone Card
recipes.remove(<appliedenergistics2:material:26>);
recipes.addShapeless(<appliedenergistics2:material:26>,	
	[<appliedenergistics2:material:25>, <ore:craftingRedstoneTorch>, 
	<ore:craftingRedstoneTorch>, processorCalculation]);
	
// Acceleration Card
recipes.remove(<appliedenergistics2:material:30>);
recipes.addShapeless(<appliedenergistics2:material:30>,	
	[<appliedenergistics2:material:28>, processorEngineering, 
	processorLogic, <ore:crystalFluix>]);

// TODO - Spatial/Item/Fluid Processors...using equivalent tier circuit for now
// Spatial Component 128
recipes.remove(spatialComponent128);
recipes.addShaped(spatialComponent128, 
	[[<ore:plateEnderEye>, spatialComponent16, <ore:plateEnderEye>], 
	[spatialComponent16, <ore:circuitIv>, spatialComponent16], 
	[<ore:plateEnderEye>, spatialComponent16, <ore:plateEnderEye>]]);

// Storage Component 16k
recipes.remove(component16k);
recipes.addShaped(component16k, 
	[[<ore:circuitMv>, component4k, <ore:circuitMv>], 
	[component4k, processorEngineering, component4k], 
	[<ore:circuitMv>, component4k, <ore:circuitMv>]]);
	
// Spatial Component 16
recipes.remove(spatialComponent16);
recipes.addShaped(spatialComponent16, 
	[[<ore:plateEnderEye>, spatialComponent2, <ore:plateEnderEye>], 
	[spatialComponent2, <ore:circuitIv>, spatialComponent2], 
	[<ore:plateEnderEye>, spatialComponent2, <ore:plateEnderEye>]]);

// Storage Component 1k
recipes.remove(component1k);
recipes.addShaped(component1k, 
	[[<ore:circuitUlv>, <appliedenergistics2:material:1>, <ore:circuitUlv>], 
	[<appliedenergistics2:material:1>, processorLogic, <appliedenergistics2:material:1>], 
	[<ore:circuitUlv>, <appliedenergistics2:material:1>, <ore:circuitUlv>]]);

// Spatial Component 2
recipes.remove(spatialComponent2);
recipes.addShaped(spatialComponent2, 
	[[<ore:plateGlowstone>, <ore:pearlFluix>, <ore:plateGlowstone>], 
	[<ore:pearlFluix>, <ore:circuitIv>, <ore:pearlFluix>], 
	[<ore:plateGlowstone>, <ore:pearlFluix>, <ore:plateGlowstone>]]);


// Storage Component 4k
recipes.remove(component4k);
recipes.addShaped(component4k, 
	[[<ore:circuitLv>, component1k, <ore:circuitLv>], 
	[component1k, processorLogic, component1k], 
	[<ore:circuitLv>, component1k, <ore:circuitLv>]]);

// Storage Component 64k
recipes.remove(component64k);
recipes.addShaped(component64k, 
	[[<ore:circuitHv>, component16k, <ore:circuitHv>], 
	[component16k, processorEngineering, component16k], 
	[<ore:circuitHv>, component16k, <ore:circuitHv>]]);
	
// Charged Certus Quartz
autoclave.recipeBuilder()
	.inputs([<ore:crystalCertusQuartz>])
	.outputs(<appliedenergistics2:material:1>)
	.fluidInputs([<liquid:water> *100])
	.duration(200).EUt(24).buildAndRegister();	

// ME Storage Housing
recipes.remove(storageHousing);
recipes.addShaped(storageHousing, 
	[[<ore:craftingToolHammer>, <ore:plateCertusQuartz>, <ore:screwAluminium>], 
	[<ore:plateStainlessSteel>, <ore:paneGlass>, <ore:plateStainlessSteel>], 
	[<ore:screwAluminium>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>]]);
assembler.recipeBuilder()
	.inputs([<ore:paneGlass>, <ore:plateCertusQuartz>, <ore:plateAluminium>, <ore:plateStainlessSteel>])
	.outputs(storageHousing)
	.duration(100).EUt(16).buildAndRegister();	

// Engineering Processor
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:material:17>, <appliedenergistics2:material:20>])
	.outputs(processorEngineering)
	.fluidInputs([<liquid:redstone> *144])
	.duration(64).EUt(30).buildAndRegister();	
	
// Inscriber Engineering Press
laser_engraver.recipeBuilder()
	.inputs([<ore:blockIron>])
	.outputs(<appliedenergistics2:material:14>)
	.notConsumable(<ore:craftingLensYellow>)
	.duration(2000).EUt(480).buildAndRegister();	

// Printed Engineering Circuit
forming_press.recipeBuilder()
	.inputs([<ore:plateDiamond>])
	.outputs(<appliedenergistics2:material:17>)
	.notConsumable(<appliedenergistics2:material:14>)
	.duration(200).EUt(16).buildAndRegister();	
	
// Fluid Storage Component 16k
recipes.remove(fluidComponent16k);
recipes.addShaped(fluidComponent16k, 
	[[<ore:circuitMv>, fluidComponent4k, <ore:circuitMv>], 
	[fluidComponent4k, processorLogic, fluidComponent4k], 
	[<ore:circuitMv>, fluidComponent4k, <ore:circuitMv>]]);
	
// Fluid Storage Component 1k
recipes.remove(fluidComponent1k);
recipes.addShaped(fluidComponent1k, 
	[[<ore:circuitUlv>, <ore:dustFluix>, <ore:circuitUlv>], 
	[<ore:dustFluix>, processorLogic, <ore:dustFluix>], 
	[<ore:circuitUlv>, <ore:dustFluix>, <ore:circuitUlv>]]);
	
// Fluid Storage Component 4k
recipes.remove(fluidComponent4k);
recipes.addShaped(fluidComponent4k, 
	[[<ore:circuitLv>,fluidComponent1k, <ore:circuitLv>], 
	[fluidComponent1k, processorLogic, fluidComponent1k], 
	[<ore:circuitLv>, fluidComponent1k, <ore:circuitLv>]]);
	
// Fluid Storage Component 64k
recipes.remove(fluidComponent64k);
recipes.addShaped(fluidComponent64k, 
	[[<ore:circuitHv>,fluidComponent16k, <ore:circuitHv>], 
	[fluidComponent16k, processorLogic, fluidComponent16k], 
	[<ore:circuitHv>, fluidComponent16k, <ore:circuitHv>]]);
	
// Fluix Crystal
mixer.recipeBuilder()
	.inputs([<appliedenergistics2:material:1>, <ore:dustRedstone>, <ore:gemNetherQuartz>])
	.outputs(<appliedenergistics2:material:7>)
	.fluidInputs([<liquid:water> *500])
	.duration(20).EUt(16).buildAndRegister();
macerator.recipeBuilder();

// Fluix Dust
macerator.recipeBuilder()
	.inputs([<ore:crystalFluix>])
	.outputs(<appliedenergistics2:material:8>)
	.duration(98).EUt(4).buildAndRegister();
macerator.recipeBuilder()
	.inputs([<appliedenergistics2:fluix_block>])
	.outputs(<appliedenergistics2:material:8> *4)
	.duration(300).EUt(2).buildAndRegister();	
	
// Fluix Pearl
recipes.remove(<appliedenergistics2:material:9>);
recipes.addShaped(<appliedenergistics2:material:9>, 
	[[<ore:crystalFluix>, <ore:plateEnderEye>, <ore:crystalFluix>], 
	[<ore:plateEnderEye>, <ore:gemEnderPearl>, <ore:plateEnderEye>], 
	[<ore:crystalFluix>, <ore:plateEnderEye>, <ore:crystalFluix>]]);

// Formation Core
recipes.remove(coreFormation);
recipes.addShaped(coreFormation, 
	[[<ore:plateCertusQuartz>, processorLogic, <ore:plateCertusQuartz>], 
	[processorLogic, <ore:crystalPureFluix>, processorLogic], 
	[<ore:plateCertusQuartz>, processorLogic, <ore:plateCertusQuartz>]]);

// Logic Processor
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:material:18>, <appliedenergistics2:material:20>])
	.outputs(processorLogic)
	.fluidInputs([<liquid:redstone> *144])
	.duration(64).EUt(30).buildAndRegister();	

// Inscriber Logic Press
laser_engraver.recipeBuilder()
	.inputs([<ore:blockIron>])
	.outputs(<appliedenergistics2:material:15>)
	.notConsumable(<ore:craftingLensLime>)
	.duration(2000).EUt(480).buildAndRegister();	

// Printed Logic Circuit
forming_press.recipeBuilder()
	.inputs([<ore:plateGold>])
	.outputs(<appliedenergistics2:material:18>)
	.notConsumable(<appliedenergistics2:material:15>)
	.duration(200).EUt(16).buildAndRegister();	

// TODO - distilled water is weird in gtce..need to impl for ae2 recipes
// Pure Certus Quartz Crystal
autoclave.recipeBuilder()
	.inputs([<appliedenergistics2:crystal_seed>])
	.outputs(<appliedenergistics2:material:10>)
	.fluidInputs([<liquid:water> *200])
	.duration(2000).EUt(24).buildAndRegister();	

// Pure Certus Quartz Crystal
autoclave.recipeBuilder()
	.inputs([<appliedenergistics2:crystal_seed:1200>])
	.outputs(<appliedenergistics2:material:12>)
	.fluidInputs([<liquid:water> *200])
	.duration(2000).EUt(24).buildAndRegister();	

// Pure Certus Quartz Crystal
autoclave.recipeBuilder()
	.inputs([<appliedenergistics2:crystal_seed:600>])
	.outputs(<appliedenergistics2:material:11>)
	.fluidInputs([<liquid:water> *200])
	.duration(2000).EUt(24).buildAndRegister();	

// Inscriber Silicon Press
laser_engraver.recipeBuilder()
	.inputs([<ore:blockIron>])
	.outputs(<appliedenergistics2:material:19>)
	.notConsumable(<ore:craftingLensWhite>)
	.duration(2000).EUt(480).buildAndRegister();

// Printed Silicon
forming_press.recipeBuilder()
	.inputs([<ore:itemSilicon>])
	.outputs(<appliedenergistics2:material:20>)
	.notConsumable(<appliedenergistics2:material:19>)
	.duration(200).EUt(16).buildAndRegister();	
forming_press.recipeBuilder()
	.inputs([<ore:plateSilicon>])
	.outputs(<appliedenergistics2:material:20>)
	.notConsumable(<appliedenergistics2:material:19>)
	.duration(200).EUt(16).buildAndRegister();	

// Wireless Reciever
recipes.remove(<appliedenergistics2:material:41>);
recipes.addShaped(<appliedenergistics2:material:41>, 
	[[<appliedenergistics2:part:140>, <ore:pearlFluix>, <appliedenergistics2:part:140>], 
	[null, <ore:stickDiamond>, null], 
	[<ore:plateCertusQuartz>, <ore:circuitHv>, <ore:plateCertusQuartz>]]);

// Wireless Booster
recipes.remove(<appliedenergistics2:material:42>);
recipes.addShaped(<appliedenergistics2:material:42>, 
	[[<ore:dustFluix>, <ore:crystalCertusQuartz>, <ore:plateEnderPearl>], 
	[<ore:plateStainlessSteel>, <ore:plateAluminium>, <ore:plateStainlessSteel>], 
	[null, null, null]]);

// Annihilation Plane
recipes.remove(<appliedenergistics2:part:300>);
recipes.addShaped(<appliedenergistics2:part:300>, 
	[[<ore:craftingToolScrewdriver>, <minecraft:diamond_pickaxe>, <ore:craftingToolHammer>], 
	[<ore:screwAluminium>, coreAnnihilation, <ore:screwAluminium>], 
	[<ore:crystalFluix>, <ore:crystalFluix>, <ore:crystalFluix>]]);

// ME Covered Cable
recipes.remove(<appliedenergistics2:part:36>);
recipes.addShaped(<appliedenergistics2:part:36> *3, 
	[[<ore:plateRubber>, <ore:craftingToolSaw>, <ore:plateRubber>], 
	[meCable, meCable, meCable], 
	[<ore:plateRubber>, null, <ore:plateRubber>]]);
recipes.addShaped(<appliedenergistics2:part:36> *3, 
	[[<ore:plateSiliconRubber>, <ore:craftingToolSaw>, <ore:plateSiliconRubber>], 
	[meCable, meCable, meCable], 
	[<ore:plateSiliconRubber>, null, <ore:plateSiliconRubber>]]);
recipes.addShaped(<appliedenergistics2:part:36> *3, 
	[[<ore:plateStyreneButadieneRubber>, <ore:craftingToolSaw>, <ore:plateStyreneButadieneRubber>], 
	[meCable, meCable, meCable], 
	[<ore:plateStyreneButadieneRubber>, null, <ore:plateStyreneButadieneRubber>]]);	
assembler.recipeBuilder()
	.inputs([meCable])
	.outputs(<appliedenergistics2:part:36>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 24}))
	.fluidInputs([<liquid:styrene_butadiene_rubber> *108])
	.duration(150).EUt(120).buildAndRegister();	
assembler.recipeBuilder()
	.inputs([meCable, <ore:dustSmallSiliconeRubber>])
	.outputs(<appliedenergistics2:part:36>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 24}))
	.fluidInputs([<liquid:styrene_butadiene_rubber> *36])
	.duration(150).EUt(120).buildAndRegister();	
assembler.recipeBuilder()
	.inputs([meCable, <ore:dustSmallPolyvinylChloride>])
	.outputs(<appliedenergistics2:part:36>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 24}))
	.fluidInputs([<liquid:silicone_rubber> *36])
	.duration(150).EUt(120).buildAndRegister();			
assembler.recipeBuilder()
	.inputs([meCable])
	.outputs(<appliedenergistics2:part:36>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 24}))
	.fluidInputs([<liquid:silicone_rubber> *72])
	.duration(150).EUt(120).buildAndRegister();	
assembler.recipeBuilder()
	.inputs([meCable, <ore:dustSmallPolyvinylChloride>])
	.outputs(<appliedenergistics2:part:36>)
	.fluidInputs([<liquid:styrene_butadiene_rubber> *36])
	.duration(150).EUt(120).buildAndRegister();	
assembler.recipeBuilder()
	.inputs([meCable, <ore:dustSmallSiliconeRubber>])
	.outputs(<appliedenergistics2:part:36>)
	.fluidInputs([<liquid:silicone_rubber> *36])
	.duration(150).EUt(120).buildAndRegister();	
assembler.recipeBuilder()
	.inputs([meCable])
	.outputs(<appliedenergistics2:part:36>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 24}))
	.fluidInputs([<liquid:rubber> *144])
	.duration(150).EUt(120).buildAndRegister();	

// ME Dense Covered Cable
recipes.remove(<appliedenergistics2:part:516>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:part:36> *4])
	.outputs(<appliedenergistics2:part:516>)
	.fluidInputs([<liquid:redstone> *144])
	.duration(150).EUt(120).buildAndRegister();	

// ME Dense Smart Cable
recipes.remove(<appliedenergistics2:part:76>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:part:516> *4, <ore:circuitHv>])
	.outputs(<appliedenergistics2:part:76> *4)
	.fluidInputs([<liquid:redstone> *144])
	.duration(200).EUt(120).buildAndRegister();	

// ME Smart Cable
recipes.remove(<appliedenergistics2:part:56>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:part:36> *4, <ore:circuitMv>])
	.outputs(<appliedenergistics2:part:56> *4)
	.fluidInputs([<liquid:redstone> *144])
	.duration(150).EUt(120).buildAndRegister();	

// ME Conversion Monitor
recipes.remove(<appliedenergistics2:part:420>);
recipes.addShaped(<appliedenergistics2:part:420>, 
	[[<ore:craftingToolScrewdriver>, <appliedenergistics2:part:400>, <ore:craftingToolHammer>], 
	[<ore:screwAluminium>, coreFormation, <ore:screwAluminium>], 
	[<ore:plateNetherQuartz>, coreAnnihilation, <ore:plateNetherQuartz>]]);
	
// ME Crafting Terminal
recipes.remove(<appliedenergistics2:part:360>);
recipes.addShaped(<appliedenergistics2:part:360>, 
	[[<ore:craftingToolScrewdriver>, <appliedenergistics2:part:380>, <ore:craftingToolHammer>], 
	[<ore:screwAluminium>, <ore:workbench>, <ore:screwAluminium>], 
	[<ore:plateNetherQuartz>, processorEngineering, <ore:plateNetherQuartz>]]);
assembler.recipeBuilder()
	.inputs([<ore:workbench>, <appliedenergistics2:part:380>, <ore:plateNetherQuartz> *2])
	.outputs(<appliedenergistics2:part:360>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 4}))
	.duration(100).EUt(4).buildAndRegister();	

// Dark Illumination Panel
recipes.remove(<appliedenergistics2:part:200>);
assembler.recipeBuilder()
	.inputs([<ore:itemIlluminatedPanel>])
	.outputs(<appliedenergistics2:part:200>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
	.duration(100).EUt(4).buildAndRegister();	

// ME Export Bus
recipes.remove(<appliedenergistics2:part:260>);
recipes.addShaped(<appliedenergistics2:part:260>, 
	[[<ore:craftingToolScrewdriver>, <ore:plateStainlessSteel>, <ore:craftingToolHammer>], 
	[<ore:screwAluminium>, coreFormation, <ore:screwAluminium>], 
	[<ore:plateNetherQuartz>, pistonLv, <ore:plateNetherQuartz>]]);
assembler.recipeBuilder()
	.inputs([<ore:plateStainlessSteel>, coreFormation, <ore:plateNetherQuartz> *2, pistonLv])
	.outputs(<appliedenergistics2:part:260>)
	.duration(300).EUt(120).buildAndRegister();	

// ME Fluid Annihilation Plane
recipes.remove(<appliedenergistics2:part:302>);
recipes.addShaped(<appliedenergistics2:part:302>, 
	[[<ore:craftingToolScrewdriver>, <ore:pipeLargeStainlessSteel>, <ore:craftingToolHammer>], 
	[<ore:screwAluminium>, coreAnnihilation, <ore:screwAluminium>], 
	[<ore:crystalFluix>, <ore:crystalFluix>, <ore:crystalFluix>]]);

// ME Fluid Export Bus
recipes.remove(<appliedenergistics2:part:261>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:part:260>, <ore:plateLapis> *3])
	.outputs(<appliedenergistics2:part:261>)
	.duration(300).EUt(120).buildAndRegister();	

// ME Fluid Formation Plane
recipes.remove(<appliedenergistics2:part:321>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:part:320>, <ore:plateLapis> *3])
	.outputs(<appliedenergistics2:part:321>)
	.duration(300).EUt(120).buildAndRegister();	

// ME Fluid Import Bus
recipes.remove(<appliedenergistics2:part:241>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:part:240>, <ore:plateLapis> *3])
	.outputs(<appliedenergistics2:part:241>)
	.duration(300).EUt(120).buildAndRegister();	

// ME Fluid Level Emitter
recipes.remove(<appliedenergistics2:part:281>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:part:280>, <ore:plateLapis> *3])
	.outputs(<appliedenergistics2:part:281>)
	.duration(300).EUt(120).buildAndRegister();	

// ME Fluid Storage Bus
recipes.remove(<appliedenergistics2:part:221>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:part:220>, <ore:plateLapis> *3])
	.outputs(<appliedenergistics2:part:221>)
	.duration(300).EUt(120).buildAndRegister();	

// ME Fluid Terminal
recipes.remove(<appliedenergistics2:part:520>);
recipes.addShaped(<appliedenergistics2:part:520>, 
	[[<ore:plateLapis>, meCable, <ore:plateLapis>], 
	[coreFormation, <appliedenergistics2:part:380>, coreAnnihilation], 
	[<ore:plateLapis>, meCable, <ore:plateLapis>]]);

// ME Formation Plane
recipes.remove(<appliedenergistics2:part:320>);
recipes.addShaped(<appliedenergistics2:part:320>, 
	[[<ore:craftingToolScrewdriver>, <minecraft:hopper>, <ore:craftingToolHammer>], 
	[<ore:screwAluminium>, coreFormation, <ore:screwAluminium>], 
	[<ore:crystalFluix>, <ore:crystalFluix>, <ore:crystalFluix>]]);

// ME Identity Annihilation Plane
recipes.remove(<appliedenergistics2:part:301>);
recipes.addShapeless(<appliedenergistics2:part:301>, [<appliedenergistics2:part:300>, <ore:pearlFluix>]);

// ME Import Bus
recipes.remove(<appliedenergistics2:part:240>);
recipes.addShaped(<appliedenergistics2:part:240>, 
	[[<ore:craftingToolScrewdriver>, <ore:plateStainlessSteel>, <ore:craftingToolHammer>], 
	[<ore:screwAluminium>, coreAnnihilation, <ore:screwAluminium>], 
	[<ore:plateNetherQuartz>, pistonLv, <ore:plateNetherQuartz>]]);
assembler.recipeBuilder()
	.inputs([<ore:plateStainlessSteel>, coreAnnihilation, <ore:plateNetherQuartz> *2, pistonLv])
	.outputs(<appliedenergistics2:part:240>)
	.duration(300).EUt(120).buildAndRegister();	

// ME Interface Terminal
recipes.remove(<appliedenergistics2:part:480>);
recipes.addShaped(<appliedenergistics2:part:480>, 
	[[<ore:craftingToolScrewdriver>, <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>], 
	[<ore:screwAluminium>, <appliedenergistics2:part:440>, <ore:screwAluminium>], 
	[<ore:plateNetherQuartz>, processorEngineering, <ore:plateNetherQuartz>]]);

// ME Inverted Toggle Bus
recipes.remove(<appliedenergistics2:part:100>);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:part:80>])
	.outputs(<appliedenergistics2:part:100>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
	.duration(100).EUt(4).buildAndRegister();	

// ME Level Emitter
recipes.remove(<appliedenergistics2:part:280>);
assembler.recipeBuilder()
	.inputs([<ore:craftingRedstoneTorch>, processorCalculation])
	.outputs(<appliedenergistics2:part:280>)
	.duration(200).EUt(30).buildAndRegister();	

// Bright Illumination Panel
recipes.remove(<appliedenergistics2:part:160>);
assembler.recipeBuilder()
	.inputs([<ore:itemIlluminatedPanel>])
	.outputs(<appliedenergistics2:part:160>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
	.duration(200).EUt(30).buildAndRegister();	

// P2P Bus
recipes.remove(<appliedenergistics2:part:460>);
recipes.addShaped(<appliedenergistics2:part:460>, 
	[[<ore:craftingToolScrewdriver>, <ore:plateStainlessSteel>, <ore:craftingToolHammer>], 
	[<ore:screwAluminium>, processorEngineering, <ore:screwAluminium>], 
	[<ore:crystalFluix>, <ore:crystalFluix>, <ore:crystalFluix>]]);
assembler.recipeBuilder()
	.inputs([<ore:crystalFluix> *3, processorEngineering, <ore:plateStainlessSteel>])
	.outputs(<appliedenergistics2:part:460>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 4}))
	.duration(200).EUt(30).buildAndRegister();	

// ME Pattern Terminal
recipes.remove(<appliedenergistics2:part:340>);
recipes.addShaped(<appliedenergistics2:part:340>, 
	[[<ore:craftingToolScrewdriver>, <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>], 
	[<ore:screwAluminium>, <appliedenergistics2:material:52>, <ore:screwAluminium>], 
	[<ore:plateNetherQuartz>, processorEngineering, <ore:plateNetherQuartz>]]);

// Quartz Fiber
recipes.remove(<appliedenergistics2:part:140>);
wiremill.recipeBuilder()
	.inputs([<ore:gemCertusQuartz> *4])
	.outputs(<appliedenergistics2:part:140>)
	.duration(80).EUt(120).buildAndRegister();	
wiremill.recipeBuilder()
	.inputs([<ore:gemNetherQuartz> *8])
	.outputs(<appliedenergistics2:part:140>)
	.duration(80).EUt(120).buildAndRegister();	

// Illuminated Panel
recipes.remove(<appliedenergistics2:part:180>);
recipes.addShaped(<appliedenergistics2:part:180>, 
	[[<ore:craftingToolScrewdriver>, <ore:plateTitanium>, <ore:craftingToolHammer>], 
	[<ore:screwAluminium>, display, <ore:screwAluminium>], 
	[<ore:plateGlowstone>, <ore:plateRedAlloy>, <ore:plateGlowstone>]]);
assembler.recipeBuilder()
	.inputs([<ore:screwAluminium> *2, display, <ore:plateTitanium>, <ore:plateRedAlloy>, <ore:plateGlowstone> *2])
	.outputs(<appliedenergistics2:part:180>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 4}))
	.duration(100).EUt(120).buildAndRegister();	
assembler.recipeBuilder()
	.inputs([<ore:itemIlluminatedPanel>])
	.outputs(<appliedenergistics2:part:180>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.duration(100).EUt(4).buildAndRegister();	

// ME Storage Bus
recipes.remove(<appliedenergistics2:part:220>);
recipes.addShaped(<appliedenergistics2:part:220>, 
	[[<ore:craftingToolScrewdriver>, <ore:chestWood>, <ore:craftingToolHammer>], 
	[<ore:screwAluminium>, <appliedenergistics2:part:440>, <ore:screwAluminium>], 
	[<ore:plateNetherQuartz>, pistonLv, <ore:plateNetherQuartz>]]);
assembler.recipeBuilder()
	.inputs([<appliedenergistics2:part:440>, <ore:chestWood>, <ore:plateNetherQuartz> *2, pistonLv])
	.outputs(<appliedenergistics2:part:220>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 4}))
	.duration(100).EUt(4).buildAndRegister();	

// ME Storage Monitor
recipes.remove(<appliedenergistics2:part:400>);
recipes.addShaped(<appliedenergistics2:part:400>, 
	[[<ore:craftingToolScrewdriver>, <ore:itemIlluminatedPanel>, <ore:craftingToolHammer>], 
	[<ore:screwAluminium>, <appliedenergistics2:part:280>, <ore:screwAluminium>], 
	[<ore:plateNetherQuartz>, <ore:plateNetherQuartz>, <ore:plateNetherQuartz>]]);

// ME Terminal
recipes.remove(<appliedenergistics2:part:380>);
recipes.addShaped(<appliedenergistics2:part:380>, 
	[[<ore:plateNetherQuartz>, <ore:screwStainlessSteel>, <ore:plateNetherQuartz>], 
	[<ore:itemIlluminatedPanel>, <ore:circuitMv>, <ore:plateCertusQuartz>], 
	[<ore:plateNetherQuartz>, <ore:craftingToolScrewdriver>, <ore:plateNetherQuartz>]]);
assembler.recipeBuilder()
	.inputs([<ore:plateNetherQuartz> *4, <ore:circuitMv>, <ore:itemIlluminatedPanel>])
	.outputs(<appliedenergistics2:part:380>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 4}))
	.duration(100).EUt(4).buildAndRegister();

// ME Toggle Bus
recipes.remove(<appliedenergistics2:part:80>);
assembler.recipeBuilder()
	.inputs([meCable *2, <appliedenergistics2:part:280>])
	.outputs(<appliedenergistics2:part:80>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.duration(100).EUt(4).buildAndRegister();
