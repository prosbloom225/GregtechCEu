

// --- Vals ---


// --- Removes ---


// --- Recipes ---

// Redstone /dank/null Panel
recipes.remove(<danknull:dank_null_panel_0>);
recipes.addShaped(<danknull:dank_null_panel_0>, 
	[[<ore:plateRedAlloy>, <ore:plateWood>, <ore:plateRedAlloy>], 
	[<ore:plateWood>, <trashcans:item_trash_can>, <ore:plateWood>], 
	[<ore:plateRedAlloy>, <ore:plateWood>, <ore:plateRedAlloy>]]);
	
// Lapis /dank/null Panel
recipes.remove(<danknull:dank_null_panel_1>);
recipes.addShaped(<danknull:dank_null_panel_1>, 
	[[<ore:plateLapis>, <ore:plateIron>, <ore:plateLapis>], 
	[<ore:plateIron>, <trashcans:item_trash_can>, <ore:plateIron>], 
	[<ore:plateLapis>, <ore:plateIron>, <ore:plateLapis>]]);
	
	
// Iron /dank/null Panel
recipes.remove(<danknull:dank_null_panel_2>);
recipes.addShaped(<danknull:dank_null_panel_2>, 
	[[<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>], 
	[<ore:plateSteel>, <trashcans:item_trash_can>, <ore:plateSteel>], 
	[<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>]]);

// Gold /dank/null Panel
recipes.remove(<danknull:dank_null_panel_3>);
recipes.addShaped(<danknull:dank_null_panel_3>, 
	[[<ore:plateGold>, <ore:plateAluminium>, <ore:plateGold>], 
	[<ore:plateAluminium>, <trashcans:item_trash_can>, <ore:plateAluminium>], 
	[<ore:plateGold>, <ore:plateAluminium>, <ore:plateGold>]]);
	
// Diamond /dank/null Panel
recipes.remove(<danknull:dank_null_panel_4>);
recipes.addShaped(<danknull:dank_null_panel_4>, 
	[[<ore:plateDiamond>, <ore:plateTitanium>, <ore:plateDiamond>], 
	[<ore:plateTitanium>, <trashcans:item_trash_can>, <ore:plateTitanium>], 
	[<ore:plateDiamond>, <ore:plateTitanium>, <ore:plateDiamond>]]);
	
// Emerald /dank/null Panel
recipes.remove(<danknull:dank_null_panel_5>);
recipes.addShaped(<danknull:dank_null_panel_5>, 
	[[<ore:plateEmerald>, <ore:plateTungstenSteel>, <ore:plateEmerald>], 
	[<ore:plateTungstenSteel>, <trashcans:item_trash_can>, <ore:plateTungstenSteel>], 
	[<ore:plateEmerald>, <ore:plateTungstenSteel>, <ore:plateEmerald>]]);
	
	
// /dank/null
recipes.remove(<danknull:dank_null_0>);
assembler.recipeBuilder()
	.inputs([<danknull:dank_null_panel_0> *5])
	.outputs(<danknull:dank_null_0>)
	.duration(200).EUt(30).buildAndRegister();

// /dank/null MKII
recipes.remove(<danknull:dank_null_1>);
assembler.recipeBuilder()
	.inputs([<danknull:dank_null_panel_1> *5, <danknull:dank_null_0>])
	.outputs(<danknull:dank_null_1>)
	.duration(300).EUt(30).buildAndRegister();
	
// /dank/null MKIII
recipes.remove(<danknull:dank_null_2>);
assembler.recipeBuilder()
	.inputs([<danknull:dank_null_panel_2> *5, <danknull:dank_null_1>])
	.outputs(<danknull:dank_null_2>)
	.duration(400).EUt(30).buildAndRegister();
	
// /dank/null MKIV
recipes.remove(<danknull:dank_null_3>);
assembler.recipeBuilder()
	.inputs([<danknull:dank_null_panel_3> *5, <danknull:dank_null_2>])
	.outputs(<danknull:dank_null_3>)
	.duration(500).EUt(30).buildAndRegister();
	
// /dank/null MKV
recipes.remove(<danknull:dank_null_4>);
assembler.recipeBuilder()
	.inputs([<danknull:dank_null_panel_4> *5, <danknull:dank_null_3>])
	.outputs(<danknull:dank_null_4>)
	.duration(600).EUt(30).buildAndRegister();
	
// /dank/null MKVI
recipes.remove(<danknull:dank_null_5>);
assembler.recipeBuilder()
	.inputs([<danknull:dank_null_panel_5> *5, <danknull:dank_null_4>])
	.outputs(<danknull:dank_null_5>)
	.duration(700).EUt(30).buildAndRegister();
	
// Docking Station
recipes.remove(<danknull:danknull_dock>);
recipes.addShaped(<danknull:danknull_dock>, 
	[[<ore:plateEmerald>, conveyorLv, <ore:plateEmerald>], 
	[<ore:circuitBasic>, machineCasingLv, <ore:circuitBasic>], 
	[<ore:plateEmerald>, conveyorLv, <ore:plateEmerald>]]);

