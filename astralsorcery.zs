

// --- Vars ---


// --- Removes ---
mods.jei.JEI.hide(<astralsorcery:blockmachine:1>);
mods.jei.JEI.hide(<astralsorcery:blocktreebeacon>);


// --- Recipes ---

// marble compat
recipes.addShapeless(<astralsorcery:blockmarble>, [<gregtech:stone_smooth:2>]);

// macerate starmetal
macerator.recipeBuilder()
    .inputs(<astralsorcery:blockcustomore:1>)
	.outputs(<astralsorcery:itemcraftingcomponent:2> *2)
	.chancedOutput(<astralsorcery:itemcraftingcomponent:2>, 500, 100)
    .duration(40)
    .EUt(48)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<ore:ingotAstralStarmetal>)
	.outputs(<astralsorcery:itemcraftingcomponent:2>)
    .duration(40)
    .EUt(48)
    .buildAndRegister();
