import mods.astralsorcery.Altar as Altar;
import mods.astralsorcery.Grindstone as grinder;
import mods.astralsorcery.StarlightInfusion as StarInfusion;
import mods.astralsorcery.LightTransmutation as LightTransmutation;
import mods.astralsorcery.LiquidInteraction as Interaction;
import mods.astralsorcery.Utils as util;
import mods.astralsorcery.Lightwell as well;


// --- Vars ---


// --- Removes ---
mods.jei.JEI.hide(<astralsorcery:blocktreebeacon>);
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/treebeacon");

LightTransmutation.removeTransmutation(<minecraft:end_stone>,false);
LightTransmutation.removeTransmutation(<minecraft:emerald_ore>,false);
LightTransmutation.removeTransmutation(<minecraft:glass_pane>,false);

// --- Recipes ---

// Starmetal Ore
arc_furnace.recipeBuilder()
    .inputs(<ore:oreIron>)
    .fluidInputs([<liquid:oxygen> *100])
	.outputs(<astralsorcery:blockcustomore:1>)
    .duration(200)
    .EUt(48)
    .buildAndRegister();
arc_furnace.recipeBuilder()
    .inputs(<ore:oreMagnetite>)
    .fluidInputs([<liquid:oxygen> *100])
	.outputs(<astralsorcery:blockcustomore:1>)
    .duration(200)
    .EUt(48)
    .buildAndRegister();
arc_furnace.recipeBuilder()
    .inputs(<ore:oreVanadiumMagnetite>)
    .fluidInputs([<liquid:oxygen> *100])
	.outputs(<astralsorcery:blockcustomore:1>)
    .duration(200)
    .EUt(48)
    .buildAndRegister();

// Aquamarine Shale
arc_furnace.recipeBuilder()
    .inputs(<ore:oreDiamond>)
    .fluidInputs([<liquid:oxygen> *100])
	.outputs(<astralsorcery:blockcustomsandore>)
    .duration(200)
    .EUt(48)
    .buildAndRegister();

// Marble compat
arc_furnace.recipeBuilder()
    .inputs(<gregtech:stone_smooth:2>)
    .fluidInputs([<liquid:oxygen> *100])
	.outputs(<astralsorcery:blockmarble>)
    .duration(20)
    .EUt(48)
    .buildAndRegister();

// Rock Crystal Ore

arc_furnace.recipeBuilder()
    .inputs(<astralsorcery:blockcustomore:1>)
    .fluidInputs([<liquid:oxygen> *1000])
	.outputs(<astralsorcery:blockcustomore>)
    .duration(200)
    .EUt(48)
    .buildAndRegister();

// Starmetal Dust
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

// StarMetal Ingot
furnace.remove(<astralsorcery:itemcraftingcomponent:1>);
electric_blast_furnace.recipeBuilder()
    .inputs(<astralsorcery:itemcraftingcomponent:2>)
    .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 6000)
    .outputs(<astralsorcery:itemcraftingcomponent:1>)
    .property("temperature", 7000)
    .circuit(0)
    .duration(1000)
    .EUt(6000)
    .buildAndRegister();

// Resonating Gem
electric_blast_furnace.recipeBuilder()
    .inputs(<ore:gemAquamarine>)
    .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 6000)
    .outputs(<astralsorcery:itemcraftingcomponent:4>)
    .property("temperature", 7000)
    .duration(1000)
    .EUt(6000)
    .buildAndRegister();

// Runed Marble
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_runed");
recipes.remove(<astralsorcery:blockmarble:6>);
recipes.addShaped(<astralsorcery:blockmarble:6> * 4, 
    [[<ore:foilTungsten>, <ore:foilTungsten>, <ore:foilTungsten>],
    [<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>], 
    [<ore:foilTungsten>, <ore:foilTungsten>, <ore:foilTungsten>]]);

// Illumination Power
mixer.recipeBuilder()
.inputs([<minecraft:glowstone_dust> * 4, <ore:gemAquamarine>])
.circuit(1)
.outputs([<astralsorcery:itemusabledust> * 16])
.duration(30)
.EUt(800)
.buildAndRegister();

// Nocturnal powder
mixer.recipeBuilder()
.inputs([<astralsorcery:itemusabledust>, <minecraft:dye:4>])
.circuit(1)
.outputs([<astralsorcery:itemusabledust:1>* 4])
.duration(30)
.EUt(1150)
.buildAndRegister();

// Grindstone
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/grindstone");
recipes.addShaped(<astralsorcery:blockmachine:1>, 
    [[null, <ore:ringSteel>, null],
    [<ore:plankWood>, <minecraft:stone>, <minecraft:stick>], 
    [<ore:plankWood>, <ore:plankWood>, motorLv]]);


// Glass Lens
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/glasslens");
Altar.addDiscoveryAltarRecipe("gtceu/internal/glasslens", 
    <astralsorcery:itemcraftingcomponent:3>, 5, 300,
        [null,<ore:craftingLensWhite>, null,
        <ore:craftingLensWhite>,<ore:gemAquamarine>,<ore:craftingLensWhite>,
        null,<ore:craftingLensWhite>,null]);

// Cave Illuminator
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminator");
Altar.addDiscoveryAltarRecipe("gtceu/internal/illuminator", 
    <astralsorcery:blockworldilluminator>, 200, 300,
        [<astralsorcery:itemusabledust>,<ore:gemAquamarine>,<astralsorcery:itemusabledust>,
        <ore:gemAquamarine>,machineCasingMv,<ore:gemAquamarine>,
        <astralsorcery:itemusabledust>,<ore:gemAquamarine>,<astralsorcery:itemusabledust>]);

// Containment Chalice
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/chalice");
Altar.addConstellationAltarRecipe("gtce/internal/chalice", 
    <astralsorcery:blockchalice> , 450 ,300 , 
        [cleanRoomGlass,quantumTank,cleanRoomGlass,
        cleanRoomGlass,null,cleanRoomGlass,
        <ore:plateTungstenCarbide>,<ore:plateTungstenCarbide>,<ore:plateTungstenCarbide>,
        <astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,
        <astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,
        <ore:gemAquamarine>,<ore:gemAquamarine>,<astralsorcery:itemcraftingcomponent:2>,
        <astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>]);

// Lightwell
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/lightwell");
Altar.addDiscoveryAltarRecipe("gtceu/internal/lightwell", 
    <astralsorcery:blockwell>, 700, 300, 
         [<astralsorcery:blockmarble:6>, <astralsorcery:itemcraftingcomponent> ,<astralsorcery:blockmarble:6>,
         <ore:plateTungstenCarbide>,cleanRoomGlass, <ore:plateTungstenCarbide>,
         <astralsorcery:blockmarble:6>,<ore:plateOsmium>,<astralsorcery:blockmarble:6>]);

// Luminous Crafting Table
recipes.remove(<astralsorcery:blockaltar>);
assembler.recipeBuilder()
    .inputs(craftingStation)
	.outputs(<astralsorcery:blockaltar>)
    .duration(2000)
    .EUt(48)
    .buildAndRegister();

// Starlight Crafting Altar
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
Altar.addDiscoveryAltarRecipe("gtce/internal/upgrade_tier2", 
    <astralsorcery:blockaltar:1>, 200, 300,
        [<ore:stoneMarble>,util.getCrystalORIngredient(true, false),<ore:stoneMarble>,
        <astralsorcery:blockmarble:6>,<ore:plateDoubleTungstenSteel>,<astralsorcery:blockmarble:6>,
        <ore:stoneMarble>,<ore:plateDoubleTungstenSteel>,<ore:stoneMarble>]);

// Celestial Altar
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3");
Altar.addAttunementAltarRecipe("gtce/internal/upgrade_tier3", 
    <astralsorcery:blockaltar:2>, 500, 300,
        [<astralsorcery:itemcraftingcomponent:4>,null,<astralsorcery:itemcraftingcomponent:4>,
        <astralsorcery:blockmarble:6>,util.getCrystalORIngredient(true, false),<astralsorcery:blockmarble:6>,
        <ore:plateDoubleRhodiumPlatedPalladium>,<astralsorcery:itemcraftingcomponent:1>,<ore:plateDoubleRhodiumPlatedPalladium>,
        <astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:1>,
        <astralsorcery:itemcraftingcomponent:1>]);

// Iridescent Altar
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier4");
Altar.addConstellationAltarRecipe("gtce/internal/upgrade_tier4", 
    <astralsorcery:blockaltar:3>,  800, 400, 
        [<astralsorcery:blockmarble:6>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockmarble:6>,
        <ore:plateDoubleNaquadahAlloy>,util.getCrystalORIngredient(true, false),<ore:plateDoubleNaquadahAlloy>,
        <astralsorcery:blockmarble:6>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockmarble:6>,
        <astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,
        <astralsorcery:blockmarble:6>,<astralsorcery:blockblackmarble>,<astralsorcery:blockblackmarble>,
        <astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,
        <astralsorcery:itemcraftingcomponent:4>,<astralsorcery:blockblackmarble>,<astralsorcery:blockblackmarble>]);
