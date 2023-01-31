// No special #loader, just use the default crafttweaker one.

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;


// TODO - impl fertilizer - no chanced input, need to up the output and time taken to compensate
// TODO - cool multiblock shapes for custom multiblocks
// TODO - nuclear reactors?


// --- Tree Farm ---

val tree_farm = Builder.start("tree_farm") // automatic allocation ID
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
            val casing = CTPredicate.states(<blockstate:gregtech:machine_casing>).setMinGlobalLimited(9).addTooltips("tree_farm.casing.tooltips");
            return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            .aisle( "KKK",
                    "KKK",
                    "KSK")
            .aisle( "CCC",
                    "C C",
                    "CCC")
            .aisle( "CCC",
                    "CCC",
                    "CCC")
            .where("K", casing | controller.autoAbilities())
            .where("C", casing)
            .where("S", controller.self())
            .where(" ", CTPredicate.getAny())
            .build();
            } as IPatternBuilderFunction)
    .withRecipeMap(
        FactoryRecipeMap.start("tree_farm")
        .minInputs(1)
        .maxInputs(1)
        .minOutputs(1)
        .maxOutputs(3)
        .minFluidInputs(0)
        .maxFluidInputs(1)
        .build())
    .withBaseTexture(<metastate:gregtech:machine_casing>)
    .buildAndRegister();

tree_farm.recipeMap.recipeBuilder()
    .inputs(<minecraft:sapling>)
    .outputs(<minecraft:log>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();
tree_farm.recipeMap.recipeBuilder()
    .inputs(<minecraft:sapling:1>)
    .outputs(<minecraft:log:1>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();
tree_farm.recipeMap.recipeBuilder()
    .inputs(<minecraft:sapling:2>)
    .outputs(<minecraft:log:2>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();
tree_farm.recipeMap.recipeBuilder()
    .inputs(<minecraft:sapling:3>)
    .outputs(<minecraft:log:3>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();
tree_farm.recipeMap.recipeBuilder()
    .inputs(<minecraft:sapling:4>)
    .outputs(<minecraft:log:4>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();
tree_farm.recipeMap.recipeBuilder()
    .inputs(<minecraft:sapling:5>)
    .outputs(<minecraft:log:5>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();
tree_farm.recipeMap.recipeBuilder()
    .inputs(<gregtech:rubber_sapling>)
    .outputs([<gregtech:rubber_log>, <gregtech:meta_item_1:438>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();
tree_farm.recipeMap.recipeBuilder()
    .inputs(<integrateddynamics:menril_sapling>)
    .outputs([<integrateddynamics:menril_log>, <integrateddynamics:crystalized_menril_chunk>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

tree_farm.recipeMap.recipeBuilder()
	.notConsumable(<thaumcraft:sapling_greatwood>)
    .outputs([<thaumcraft:log_greatwood>])
    .chancedOutput(<thaumcraft:sapling_greatwood>, 500, 500)
    .duration(600)
    .EUt(120)
    .buildAndRegister();
tree_farm.recipeMap.recipeBuilder()
	.notConsumable(<thaumcraft:sapling_silverwood>)
    .outputs([<thaumcraft:log_silverwood>])
    .chancedOutput(<thaumcraft:sapling_silverwood>, 500, 500)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:32000>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <minecraft:dirt>, <ore:plateSteel>],
    [pistonLv, machineCasingUlv, pistonLv]]);



// --- Greenhouse ---

val greenhouse = Builder.start("greenhouse") // automatic allocation ID
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
            val casing = CTPredicate.states(<blockstate:gregtech:machine_casing>).setMinGlobalLimited(9).addTooltips("greenhouse.casing.tooltips");
            return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            .aisle( "KKK",
                    "KKK",
                    "KSK")
            .aisle( "CCC",
                    "C C",
                    "CCC")
            .aisle( "CCC",
                    "CCC",
                    "CCC")
            .where("K", casing | controller.autoAbilities())
            .where("C", casing)
            .where("S", controller.self())
            .where(" ", CTPredicate.getAny())
            .build();
            } as IPatternBuilderFunction)
    .withRecipeMap(
        FactoryRecipeMap.start("greenhouse")
        .minInputs(1)
        .maxInputs(1)
        .minOutputs(1)
        .maxOutputs(3)
        .minFluidInputs(1)
        .maxFluidInputs(1)
        .build())
    .withBaseTexture(<metastate:gregtech:machine_casing>)
    .buildAndRegister();


// Wheat
greenhouse.recipeMap.recipeBuilder()
	.fluidInputs([<liquid:water> *100])
    .notConsumable(<minecraft:wheat_seeds>)
    .outputs([<minecraft:wheat>])
    .chancedOutput(<minecraft:wheat_seeds>, 2000, 500)
    .duration(200) 
    .EUt(120)
    .buildAndRegister();
// Pumpkin
greenhouse.recipeMap.recipeBuilder()
	.fluidInputs([<liquid:water> *100])
    .notConsumable(<minecraft:pumpkin_seeds>)
    .outputs([<minecraft:pumpkin>])
    .chancedOutput(<minecraft:pumpkin_seeds>, 2000, 500)
    .duration(200) 
    .EUt(120)
    .buildAndRegister();
// Melon
greenhouse.recipeMap.recipeBuilder()
	.fluidInputs([<liquid:water> *100])
    .notConsumable(<minecraft:melon_seeds>)
    .outputs([<minecraft:melon>])
    .chancedOutput(<minecraft:melon_seeds>, 2000, 500)
    .duration(200) 
    .EUt(120)
    .buildAndRegister();
// Melon
greenhouse.recipeMap.recipeBuilder()
	.fluidInputs([<liquid:water> *100])
    .notConsumable(<minecraft:beetroot_seeds>)
    .outputs([<minecraft:beetroot>])
    .chancedOutput(<minecraft:beetroot_seeds>, 2000, 500)
    .duration(200) 
    .EUt(120)
    .buildAndRegister();
// Nether Wart
greenhouse.recipeMap.recipeBuilder()
	.fluidInputs([<liquid:water> *100])
    .notConsumable(<minecraft:nether_wart>)
    .outputs([<minecraft:nether_wart>])
    .chancedOutput(<minecraft:nether_wart>, 2000, 500)
    .duration(200) 
    .EUt(120)
    .buildAndRegister();
// Potato
greenhouse.recipeMap.recipeBuilder()
	.fluidInputs([<liquid:water> *100])
    .notConsumable(<minecraft:potato>)
    .outputs([<minecraft:potato>])
    .chancedOutput(<minecraft:potato>, 2000, 500)
    .duration(200) 
    .EUt(120)
    .buildAndRegister();
// Carrot
greenhouse.recipeMap.recipeBuilder()
	.fluidInputs([<liquid:water> *100])
    .notConsumable(<minecraft:carrot>)
    .outputs([<minecraft:carrot>])
    .chancedOutput(<minecraft:carrot>, 2000, 500)
    .duration(200) 
    .EUt(120)
    .buildAndRegister();
// Sugar Cane
greenhouse.recipeMap.recipeBuilder()
	.fluidInputs([<liquid:water> *100])
    .notConsumable(<minecraft:reeds>)
    .outputs([<minecraft:reeds>])
    .chancedOutput(<minecraft:reeds>, 2000, 500)
    .duration(200) 
    .EUt(120)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:32001>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <minecraft:dirt>, <ore:plateSteel>],
    [conveyorLv, machineCasingUlv, conveyorLv]]);
