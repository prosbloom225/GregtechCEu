

// --- Vals ---



// --- Removes ---
mods.jei.JEI.hideCategory("integrateddynamicscompat:dryingBasin");
mods.jei.JEI.hideCategory("integrateddynamicscompat:squeezer");
mods.jei.JEI.hideCategory("integrateddynamicscompat:mechanicalDryingBasin");
mods.jei.JEI.hideCategory("integrateddynamicscompat:mechanicalSqueezer");
mods.jei.JEI.removeAndHide(<integrateddynamics:drying_basin>);
mods.jei.JEI.removeAndHide(<integrateddynamics:squeezer>);
mods.jei.JEI.removeAndHide(<integrateddynamics:mechanical_squeezer>);
mods.jei.JEI.removeAndHide(<integrateddynamics:mechanical_drying_basin>);
mods.jei.JEI.removeAndHide(<integrateddynamics:energy_battery>);
mods.jei.JEI.removeAndHide(<integrateddynamics:creative_energy_battery>);
mods.jei.JEI.removeAndHide(<integrateddynamics:coal_generator>);
mods.jei.JEI.removeAndHide(<integratedtunnels:part_interface_energy_item>);
mods.jei.JEI.removeAndHide(<integratedtunnels:part_importer_energy_item>);
mods.jei.JEI.removeAndHide(<integratedtunnels:part_exporter_energy_item>);
mods.jei.JEI.removeAndHide(<integratedtunnels:part_importer_world_energy_item>);
mods.jei.JEI.removeAndHide(<integratedtunnels:part_exporter_world_energy_item>);
mods.jei.JEI.removeAndHide(<integrateddynamics:block_liquid_chorus>);
mods.jei.JEI.removeAndHide(<integrateddynamics:crystalized_chorus_block>);
mods.jei.JEI.removeAndHide(<integrateddynamics:crystalized_chorus_brick>);
mods.jei.JEI.removeAndHide(<integrateddynamics:crystalized_chorus_block_stairs>);
mods.jei.JEI.removeAndHide(<integrateddynamics:crystalized_chorus_brick_stairs>);
mods.jei.JEI.removeAndHide(<integrateddynamics:crystalized_chorus_chunk>);
mods.jei.JEI.removeAndHide(<integrateddynamics:logic_director>);
mods.jei.JEI.removeAndHide(<integratedterminals:chorus_glass>);

// --- Recipes ---

// Crafting Interface
recipes.remove(<integratedcrafting:part_interface_crafting_item>);
recipes.addShaped(<integratedcrafting:part_interface_crafting_item>, 
	[[<ore:plateStainlessSteel>, <integrateddynamics:cable>, <ore:plateStainlessSteel>],
	[<integrateddynamics:variable_transformer:1>, machineCasingHv, <integrateddynamics:variable_transformer>],
	[<ore:plateStainlessSteel>, <integrateddynamics:cable>, <ore:plateStainlessSteel>]]);
	
// Crafting Writer
recipes.remove(<integratedcrafting:part_crafting_writer_item>);
recipes.addShaped(<integratedcrafting:part_crafting_writer_item>, 
	[[<ore:plateStainlessSteel>, <ore:blockGlass>, <ore:plateStainlessSteel>],
	[<integrateddynamics:variable_transformer:1>, <gregtech:machine:102>, <integrateddynamics:variable_transformer>],
	[<ore:plateStainlessSteel>, <ore:blockGlass>, <ore:plateStainlessSteel>]]);



// Static Light Panel
recipes.remove(<integrateddynamics:part_static_light_panel_item>);
recipes.addShaped(<integrateddynamics:part_static_light_panel_item>, 
	[[<integrateddynamics:menril_berries>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>], 
	[<integrateddynamics:menril_berries>, <ore:itemIlluminatedPanel>, <ore:plateStainlessSteel>], 
	[<integrateddynamics:menril_berries>, <ore:plateStainlessSteel>, <ore:screwStainlessSteel>]]);

// Dynamic Light Panel
recipes.remove(<integrateddynamics:part_dynamic_light_panel_item>);
recipes.addShaped(<integrateddynamics:part_dynamic_light_panel_item>, 
	[[<ore:screwStainlessSteel>, <ore:plateRedstone>, <ore:screwStainlessSteel>], 
	[<ore:plateRedstone>, <integrateddynamics:part_static_light_panel_item>, <ore:plateRedstone>], 
	[<ore:screwStainlessSteel>, <ore:plateRedstone>, <ore:screwStainlessSteel>]]);
	
// Mono-Directional Connector
recipes.remove(<integrateddynamics:part_connector_mono_directional_item>);
recipes.addShaped(<integrateddynamics:part_connector_mono_directional_item>, 
	[[<ore:plateStainlessSteel>, <integrateddynamics:variable_transformer>, <ore:plateStainlessSteel>], 
	[<integrateddynamics:cable>, <appliedenergistics2:material:41>, <integrateddynamics:cable>], 
	[<ore:plateStainlessSteel>, <integrateddynamics:variable_transformer:1>, <ore:plateStainlessSteel>]]);
	
// Omni-Directional Connector
recipes.remove(<integrateddynamics:part_connector_omni_directional_item>);
recipes.addShaped(<integrateddynamics:part_connector_omni_directional_item> * 3, 
	[[null, <appliedenergistics2:quantum_ring>, null], 
	[<integrateddynamics:part_connector_mono_directional_item>, <appliedenergistics2:quantum_link>, <integrateddynamics:part_connector_mono_directional_item>], 
	[null, <appliedenergistics2:quantum_ring>, null]]);
recipes.addShapeless(<integrateddynamics:part_connector_omni_directional_item> * 2, 
	[<integrateddynamics:part_connector_omni_directional_item>, <integrateddynamics:part_connector_omni_directional_item>]);
recipes.addShaped(<integrateddynamics:part_connector_omni_directional_item> * 2, 
	[[null, <appliedenergistics2:quantum_ring>, null], 
	[<integrateddynamics:part_connector_mono_directional_item>, <appliedenergistics2:quantum_link>, <integrateddynamics:part_connector_mono_directional_item>], 
	[null, <appliedenergistics2:quantum_ring>, null]]);

// Logic Cable
recipes.remove(<integrateddynamics:cable>);
recipes.addShaped(<integrateddynamics:cable>, 
    [[<ore:foilSteel>, <ore:foilSteel>, <ore:foilSteel>],
    [<ore:foilRubber>, <ore:wireGtSingleCopper>, <ore:foilRubber>],
    [<ore:foilSteel>, <ore:foilSteel>, <ore:foilSteel>]]);
forming_press.recipeBuilder()
	.inputs([<ore:foilAluminium> *4, <ore:cableGtSingleCopper>])
	.outputs(<integrateddynamics:cable> *8)
	.duration(160).EUt(16).buildAndRegister();
	
// Variable Store
recipes.remove(<integrateddynamics:variablestore>);
recipes.addShaped(<integrateddynamics:variablestore>, 
	[[<ore:plateAluminium>, <integrateddynamics:crystalized_menril_block>, <ore:plateAluminium>], 
	[<ore:plateAluminium>, machineCasingMv, <ore:plateAluminium>], 
	[<ore:plateAluminium>, <integrateddynamics:crystalized_menril_block>, <ore:plateAluminium>]]);
	
// Logic Programmer
recipes.remove(<integrateddynamics:logic_programmer>);
recipes.addShapeless(<integrateddynamics:logic_programmer>, 
	[<integrateddynamics:crystalized_menril_block>, <ore:circuitMv>]);


// Menril Glass
recipes.remove(<integratedterminals:menril_glass>);
alloy_smelter.recipeBuilder()
	.inputs([<ore:blockGlass>, <integrateddynamics:crystalized_menril_chunk>])
	.outputs(<integratedterminals:menril_glass>)
	.duration(200).EUt(16).buildAndRegister();

// Wrench
recipes.remove(<integrateddynamics:wrench>);
recipes.addShaped(<integrateddynamics:wrench>, 
	[[<integrateddynamics:crystalized_menril_chunk>, <ore:craftingToolHardHammer>, <integrateddynamics:crystalized_menril_chunk>],
	[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>],
	[null, <integrateddynamics:crystalized_menril_chunk>, null]]);

// Variable Card
recipes.removeByRecipeName("integrateddynamics:variable");
recipes.addShaped(<integrateddynamics:variable>, 
	[[<ore:screwSteel>, <integrateddynamics:crystalized_menril_chunk>, <ore:screwSteel>],
	[<integrateddynamics:crystalized_menril_chunk>, <ore:plateGlowstone>, <integrateddynamics:crystalized_menril_chunk>],
	[<ore:screwSteel>, <integrateddynamics:crystalized_menril_chunk>, <ore:screwSteel>]]);
recipes.addShaped(<integrateddynamics:variable> *2, 
	[[<ore:screwSteel>, <integrateddynamics:crystalized_menril_chunk>, <ore:screwSteel>],
	[<integrateddynamics:crystalized_menril_chunk>, <ore:plateAluminium>, <integrateddynamics:crystalized_menril_chunk>],
	[<ore:screwSteel>, <integrateddynamics:crystalized_menril_chunk>, <ore:screwSteel>]]);
recipes.addShaped(<integrateddynamics:variable> *8, 
	[[<ore:screwSteel>, <integrateddynamics:crystalized_menril_chunk>, <ore:screwSteel>],
	[<integrateddynamics:crystalized_menril_chunk>, <ore:plateStainlessSteel>, <integrateddynamics:crystalized_menril_chunk>],
	[<ore:screwSteel>, <integrateddynamics:crystalized_menril_chunk>, <ore:screwSteel>]]);
recipes.addShaped(<integrateddynamics:variable> *16, 
	[[<ore:screwSteel>, <integrateddynamics:crystalized_menril_chunk>, <ore:screwSteel>],
	[<integrateddynamics:crystalized_menril_chunk>, <ore:plateTitanium>, <integrateddynamics:crystalized_menril_chunk>],
	[<ore:screwSteel>, <integrateddynamics:crystalized_menril_chunk>, <ore:screwSteel>]]);
recipes.addShaped(<integrateddynamics:variable> *64, 
	[[<ore:screwSteel>, <integrateddynamics:crystalized_menril_chunk>, <ore:screwSteel>],
	[<integrateddynamics:crystalized_menril_chunk>, <ore:plateTungstenSteel>, <integrateddynamics:crystalized_menril_chunk>],
	[<ore:screwSteel>, <integrateddynamics:crystalized_menril_chunk>, <ore:screwSteel>]]);
assembler.recipeBuilder()
	.inputs([<ore:plateGlowstone>, <integrateddynamics:crystalized_menril_chunk> *4])
	.outputs(<integrateddynamics:variable>)
	.duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder()
	.inputs([<ore:plateAluminium>, <integrateddynamics:crystalized_menril_chunk> *4])
	.outputs(<integrateddynamics:variable> *2)
	.duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder()
	.inputs([<ore:plateStainlessSteel>, <integrateddynamics:crystalized_menril_chunk> *4])
	.outputs(<integrateddynamics:variable> *8)
	.duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder()
	.inputs([<ore:plateTitanium>, <integrateddynamics:crystalized_menril_chunk> *4])
	.outputs(<integrateddynamics:variable> *16)
	.duration(20).EUt(16).buildAndRegister();
assembler.recipeBuilder()
	.inputs([<ore:plateTungstenSteel>, <integrateddynamics:crystalized_menril_chunk> *4])
	.outputs(<integrateddynamics:variable> *64)
	.duration(20).EUt(16).buildAndRegister();

// Block of Crystallized Menril
recipes.remove(<integrateddynamics:crystalized_menril_block>);
compressor.recipeBuilder()
	.inputs([<integrateddynamics:crystalized_menril_chunk> *9])
	.outputs(<integrateddynamics:crystalized_menril_block>)
	.duration(200).EUt(16).buildAndRegister();

// Labeller
recipes.remove(<integrateddynamics:labeller>);
recipes.addShaped(<integrateddynamics:labeller>, 
	[[null, <integrateddynamics:crystalized_menril_chunk>,  <ore:craftingToolHardHammer>],
	[null, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>],
	[<integrateddynamics:crystalized_menril_chunk>, null, null]]);

// Crystallized Menril
extractor.recipeBuilder()
	.inputs([<integrateddynamics:menril_log>])
	.outputs(<integrateddynamics:crystalized_menril_chunk>)
	.duration(200).EUt(120).buildAndRegister();
	
// Output Variable Transformer
recipes.remove(<integrateddynamics:variable_transformer>);
recipes.addShaped(<integrateddynamics:variable_transformer>, 
	[[<ore:stickSteel>, <ore:plateBronze>, <ore:stickSteel>], 
	[<ore:plateBronze>, <ore:circuitLv>, <ore:plateBronze>], 
	[<ore:stickSteel>, <ore:plateBronze>, <ore:stickSteel>]]);
assembler.recipeBuilder()
	.inputs([<ore:stickSteel > *4, <ore:plateBronze> *4, <ore:circuitLv>])
	.outputs(<integrateddynamics:variable_transformer>)
	.duration(200).EUt(16).buildAndRegister();
	
// Input Variable Transformer
recipes.remove(<integrateddynamics:variable_transformer:1>);
recipes.addShaped(<integrateddynamics:variable_transformer:1>, 
	[[<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel>], 
	[<ore:plateSteel>, <ore:circuitLv>, <ore:plateSteel>], 
	[<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel>]]);
assembler.recipeBuilder()
	.inputs([<ore:stickSteel> *4, <ore:plateSteel> *4, <ore:circuitLv>])
	.outputs(<integrateddynamics:variable_transformer:1>)
	.duration(200).EUt(16).buildAndRegister();
	
// Storage Terminal
recipes.remove(<integratedterminals:part_terminal_storage_item>);
recipes.addShaped(<integratedterminals:part_terminal_storage_item>, 
	[[<ore:plateSteel>, <ore:paneGlass>, <ore:plateSteel>],
	[<ore:circuitLv>, craftingStation, <ore:circuitLv>],
	[<ore:plateSteel>, <ore:paneGlass>, <ore:plateSteel>]]);
	
// Crafting Job Terminal
recipes.remove(<integratedterminals:part_terminal_crafting_job_item>);
recipes.addShaped(<integratedterminals:part_terminal_crafting_job_item>, 
	[[<ore:plateAluminium>, <ore:workbench>, <ore:plateAluminium>],
	[<ore:circuitMv>, display, <ore:circuitMv>],
	[<ore:plateAluminium>, <ore:workbench>, <ore:plateAluminium>]]);

// Item Interface
recipes.remove(<integratedtunnels:part_interface_item_item>);
recipes.addShaped(<integratedtunnels:part_interface_item_item>, 
	[[<ore:plateSteel>, <integrateddynamics:cable>, <ore:plateSteel>], 
	[<ore:pipeNormalItemBrass>, <ore:circuitLv>, <ore:pipeNormalItemBrass>], 
	[<ore:plateSteel>, <integrateddynamics:cable>, <ore:plateSteel>]]);

// Item Importer
recipes.remove(<integratedtunnels:part_importer_item_item>);
recipes.addShaped(<integratedtunnels:part_importer_item_item>, 
	[[<ore:craftingToolScrewdriver>, <ore:plateAluminium>, <ore:craftingToolWrench>], 
	[<ore:screwAluminium>, <integrateddynamics:variable_transformer:1>, <ore:screwAluminium>], 
	[<ore:plateAluminium>, motorLv, <ore:plateAluminium>]]);
assembler.recipeBuilder()
	.inputs([<ore:plateAluminium> *3, motorLv, <integrateddynamics:cable>])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
	.outputs(<integratedtunnels:part_importer_item_item>)
	.duration(300).EUt(64).buildAndRegister();
	
// Item Exporter
recipes.remove(<integratedtunnels:part_exporter_item_item>);
recipes.addShaped(<integratedtunnels:part_exporter_item_item>, 
	[[<ore:craftingToolScrewdriver>, <ore:plateAluminium>, <ore:craftingToolWrench>], 
	[<ore:screwAluminium>, <integrateddynamics:variable_transformer>, <ore:screwAluminium>], 
	[<ore:plateAluminium>, motorLv, <ore:plateAluminium>]]);
assembler.recipeBuilder()
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.inputs([<ore:plateAluminium> *3, motorLv, <integrateddynamics:cable>])
	.outputs(<integratedtunnels:part_exporter_item_item>)
	.duration(300).EUt(64).buildAndRegister();

// World Item Exporter
recipes.remove(<integratedtunnels:part_exporter_world_item_item>);
recipes.addShaped(<integratedtunnels:part_exporter_world_item_item>, 
	[[<ore:craftingToolScrewdriver>, <minecraft:hopper>, <ore:craftingToolHardHammer>], 
	[<ore:screwAluminium>, <integratedtunnels:part_importer_item_item>, <ore:screwAluminium>], 
	[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
assembler.recipeBuilder()
	.inputs([<ore:plateAluminium> *3, <integratedtunnels:part_importer_item_item>, <minecraft:hopper>])
	.outputs(<integratedtunnels:part_exporter_world_item_item>)
	.duration(600).EUt(64).buildAndRegister();
	
// World Item Importer
recipes.remove(<integratedtunnels:part_importer_world_item_item>);
recipes.addShaped(<integratedtunnels:part_importer_world_item_item>, 
	[[<ore:craftingToolScrewdriver>, <minecraft:diamond_pickaxe>, <ore:craftingToolHardHammer>], 
	[<ore:screwAluminium>, <integratedtunnels:part_importer_item_item>, <ore:screwAluminium>], 
	[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
assembler.recipeBuilder()
	.inputs([<ore:plateAluminium> *3,  <integratedtunnels:part_importer_item_item>, <minecraft:diamond_pickaxe>])
	.outputs(<integratedtunnels:part_importer_world_item_item>)
	.duration(600).EUt(64).buildAndRegister();

// Fluid Interface
recipes.remove(<integratedtunnels:part_interface_fluid_item>);
recipes.addShaped(<integratedtunnels:part_interface_fluid_item>, 
	[[<ore:plateLapis>, <integrateddynamics:cable>, <ore:plateLapis>], 
	[<ore:pipeNormalFluidAluminium>, <ore:circuitLv>, <ore:pipeNormalFluidAluminium>], 
	[<ore:plateLapis>, <integrateddynamics:cable>, <ore:plateLapis>]]);

// Fluid Importer
recipes.remove(<integratedtunnels:part_importer_fluid_item>);
assembler.recipeBuilder()
	.inputs([<integratedtunnels:part_importer_item_item>, <ore:plateLapis> *3])
	.outputs(<integratedtunnels:part_importer_fluid_item>)
	.duration(300).EUt(120).buildAndRegister();
	
// Fluid Exporter
recipes.remove(<integratedtunnels:part_exporter_fluid_item>);
assembler.recipeBuilder()
	.inputs([<integratedtunnels:part_exporter_item_item>, <ore:plateLapis> *3])
	.outputs(<integratedtunnels:part_exporter_fluid_item>)
	.duration(300).EUt(120).buildAndRegister();
	
// World Fluid Importer
recipes.remove(<integratedtunnels:part_importer_world_fluid_item>);
assembler.recipeBuilder()
	.inputs([<integratedtunnels:part_importer_fluid_item>, <minecraft:bucket>])
	.outputs(<integratedtunnels:part_importer_world_fluid_item>)
	.duration(300).EUt(120).buildAndRegister();
	
// World Fluid Exporter
recipes.remove(<integratedtunnels:part_exporter_world_fluid_item>);
assembler.recipeBuilder()
	.inputs([<integratedtunnels:part_exporter_item_item>, <minecraft:bucket>])
	.outputs(<integratedtunnels:part_exporter_world_fluid_item>)
	.duration(300).EUt(120).buildAndRegister();
	
// World Block Importer
recipes.remove(<integratedtunnels:part_importer_world_block_item>);
assembler.recipeBuilder()
	.inputs([<gregtech:machine:1031>, <integratedtunnels:part_importer_item_item>])
	.outputs(<integratedtunnels:part_importer_world_block_item>)
	.duration(600).EUt(120).buildAndRegister();
	
// World Block Exporter
recipes.remove(<integratedtunnels:part_exporter_world_block_item>);
assembler.recipeBuilder()
	.inputs([<gregtech:machine:495>, <integratedtunnels:part_importer_item_item>])
	.outputs(<integratedtunnels:part_exporter_world_block_item>)
	.duration(600).EUt(120).buildAndRegister();
	
// Player Simulator
recipes.remove(<integratedtunnels:part_player_simulator_item>);
recipes.addShaped(<integratedtunnels:part_player_simulator_item>,
	[[<ore:plateAluminium>, <integratedtunnels:part_exporter_world_block_item>, <ore:plateAluminium>],
	[<ore:craftingToolWrench>, coinDoge, <ore:craftingToolHardHammer>],
	[<ore:plateAluminium>, <integratedtunnels:part_importer_world_block_item>, <ore:plateAluminium>]]);



