import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;
print("--- loading OreDict.zs ---");

# Removing Pam's in-world Apple from cropApple
	<ore:cropApple>.remove(<harvestcraft:pamapple>);
	
# Cobalt Block issues
	<ore:oreCobalt>.remove(<tconstruct:metal>);
	<ore:oreArdite>.remove(<tconstruct:metal>);
	
# Fixing the Mineralis Ritual
	<ore:oreNickel>.remove(<immersiveengineering:ore:4>);
	
	<ore:oreTin>.remove(<forestry:resources:2>);
	<ore:oreTin>.remove(<ic2:resource:3>);
	<ore:oreTin>.remove(<nuclearcraft:ore:1>);
	<ore:oreTin>.remove(<mekanism:oreblock:2>);
	<ore:oreTin>.remove(<libvulpes:ore0:5>);

	<ore:oreAluminum>.remove(<immersiveengineering:ore:1>);
	<ore:oreAluminum>.remove(<libvulpes:ore0:9>);

	<ore:oreCopper>.remove(<immersiveengineering:ore:0>);
	<ore:oreCopper>.remove(<ic2:resource:1>);
	<ore:oreCopper>.remove(<forestry:resources:1>);
	<ore:oreCopper>.remove(<nuclearcraft:ore:0>);
	<ore:oreCopper>.remove(<mekanism:oreblock:1>);
	<ore:oreCopper>.remove(<libvulpes:ore0:4>);
	
	<ore:oreLead>.remove(<ic2:resource:2>);
	<ore:oreLead>.remove(<immersiveengineering:ore:2>);
	<ore:oreLead>.remove(<nuclearcraft:ore:2>);

	<ore:oreUranium>.remove(<ic2:resource:4>);
	<ore:oreUranium>.remove(<nuclearcraft:ore:4>);

# Removing broken Draconium Ore from it's oredict
	<ore:oreDraconium>.remove(<draconicevolution:draconium_ore:32767>);
# Readding the correct ones
	<ore:oreDraconium>.add(<draconicevolution:draconium_ore>);
	<ore:oreDraconium>.add(<draconicevolution:draconium_ore:1>);
	<ore:oreDraconium>.add(<draconicevolution:draconium_ore:2>);
	
# Slag
	<ore:crystalSlag>.add(<ic2:misc_resource:5>);

# String isn't flax, wut
	<ore:cropFlax>.remove(<minecraft:string>);
		
# Pam's Apple
	<ore:cropApple>.add(<harvestcraft:pamapple>);
	<ore:listAllfruit>.add(<harvestcraft:pamapple>);

# Boat Oredict 
	val boats = [
		<minecraft:boat>,
		<minecraft:spruce_boat>,
		<minecraft:birch_boat>,
		<minecraft:jungle_boat>,
		<minecraft:acacia_boat>,
		<minecraft:dark_oak_boat>,
		<immersivepetroleum:speedboat>,
		<immersivepetroleum:upgrades>,
		<ic2:boat:3>
	] as IItemStack[];

	for boat in boats {
		<ore:boat>.add(boat);
	}
	
# Industrial Diamond
	<ore:gemDiamond>.remove(<ic2:crafting:19>);

# Black Quartz
	<ore:blockBlackQuartz>.add(<actuallyadditions:block_misc>);
	<ore:blockBlackQuartz>.add(<actuallyadditions:block_misc:1>);
	<ore:blockBlackQuartz>.add(<actuallyadditions:block_misc:2>);

# Certus Quartz
	<ore:crystalCertus>.add(<appliedenergistics2:material>);
	<ore:crystalCertus>.add(<appliedenergistics2:material:1>);
	<ore:crystalCertus>.add(<appliedenergistics2:material:10>);
	
	<ore:blockCertusQuartz>.add(<appliedenergistics2:quartz_block>);
	<ore:blockCertusQuartz>.add(<appliedenergistics2:quartz_pillar>);
	<ore:blockCertusQuartz>.add(<appliedenergistics2:chiseled_quartz_block>);
	
#Iridium
	<ore:ingotIridium>.add(<ic2:misc_resource:1>);
	<ore:nuggetIridium>.add(<ic2:misc_resource:2>);
	
# Crafting hammers
	<ore:craftingToolForgeHammer>.add(<immersiveengineering:tool>);
	
# Void Metal Block
	<ore:blockVoid>.add(<thaumcraft:metal_void>);

# Circuit Board
	<ore:circuitBoard>.add(<immersiveengineering:material:27>);
	
# Amber Oredict
	<ore:blockAmber>.add(<thaumcraft:amber_block>);
	<ore:blockAmber>.add(<thaumcraft:amber_brick>);

# Astral Sorcery Rock Crystals
    <ore:crystalAstralAny>.add(<astralsorcery:itemrockcrystalsimple>.withEmptyTag());
    <ore:crystalAstralAny>.add(<astralsorcery:itemtunedrockcrystal>.withEmptyTag());
    <ore:crystalAstralAny>.add(<astralsorcery:itemcelestialcrystal>.withEmptyTag());
    <ore:crystalAstralAny>.add(<astralsorcery:itemtunedcelestialcrystal>.withEmptyTag());

# Blood Magic Runes
	val runes = [
		<bloodmagic:blood_rune>,
		<bloodmagic:blood_rune:1>,
		<bloodmagic:blood_rune:2>,
		<bloodmagic:blood_rune:3>,
		<bloodmagic:blood_rune:4>,
		<bloodmagic:blood_rune:5>,
		<bloodmagic:blood_rune:6>,
		<bloodmagic:blood_rune:7>,
		<bloodmagic:blood_rune:8>,
		<bloodmagic:blood_rune:9>,
		<bloodmagic:blood_rune:10>
	] as IItemStack[];

	for rune in runes {
		<ore:runeBlood>.add(rune);
	}
	
# CakeDict(TM)
	val cakes = [
		<minecraft:cake>,
		<actuallyadditions:item_food:8>,
		<harvestcraft:carrotcakeitem>,
		<harvestcraft:cheesecakeitem>,
		<harvestcraft:cherrycheesecakeitem>,
		<harvestcraft:chocolatesprinklecakeitem>,
		<harvestcraft:holidaycakeitem>,
		<harvestcraft:pineappleupsidedowncakeitem>,
		<harvestcraft:pumpkincheesecakeitem>,
		<harvestcraft:redvelvetcakeitem>,
		<harvestcraft:lemondrizzlecakeitem>
	] as IItemStack[];

	for cake in cakes {
		<ore:foodCake>.add(cake);
	}
	
# Wither Dust
	<ore:dustWither>.add(<darkutils:material>);
	<ore:dustWither>.add(<quark:black_ash>);

# Astral Sorcery compatibility for Chisel marble
	<ore:blockMarble>.add(<chisel:marble2:7>);
	
# Fertilizer
	var fertilizer = <ore:fertilizer>;
	fertilizer.add(<actuallyadditions:item_fertilizer>);
	fertilizer.add(<minecraft:dye:15>);
	fertilizer.add(<industrialforegoing:fertilizer>);
	fertilizer.add(<forestry:fertilizer_compound>);
	
# Sawdust compat
	<ore:pulpWood>.add(<thermalfoundation:material:800>);
	<ore:dustWood>.add(<forestry:wood_pulp>);

# Various stones
	val stonemarble = <ore:stoneMarble>;
	val stonemarblepolished = <ore:stoneMarblePolished>;
	val andesite = <ore:stoneAndesite>;
	val diorite = <ore:stoneDiorite>;
	val granite = <ore:stoneGranite>;
	val sandstone = <ore:sandstone>;
	val basalt = <ore:stoneBasalt>;
	val limestone = <ore:stoneLimestone>;
	
	/*
# Railcraft stones
	val bloodstained = <ore:stoneBloodstained>;
	val frostbound = <ore:stoneFrostbound>;
	val infernal = <ore:stoneInfernal>;
	val quarried = <ore:stoneQuarried>;
	val sandy = <ore:stoneSandy>;
	val redsandy = <ore:stoneRedsandy>;
	val nether = <ore:stoneNether>;
	val rednether = <ore:stoneRednether>;
	val abyssal = <ore:stoneAbyssal>;
	val bleachedbone = <ore:stoneBleachedbone>;
	val pearlized = <ore:stonePearlized>;
	*/
	
# Forestry gears
	val gearTin = <ore:gearTin>;
	val gearCopper = <ore:gearCopper>;
	val gearBronze = <ore:gearBronze>;	
		
# *======= Assorted OreDictionary =======*

#Marble
	stonemarblepolished.add(<astralsorcery:blockmarble>);
	stonemarblepolished.add(<astralsorcery:blockmarble:1>);
	stonemarblepolished.add(<astralsorcery:blockmarble:2>);
	stonemarblepolished.add(<astralsorcery:blockmarble:3>);
	stonemarblepolished.add(<astralsorcery:blockmarble:4>);
	stonemarblepolished.add(<astralsorcery:blockmarble:5>);
	stonemarblepolished.add(<astralsorcery:blockmarble:6>);
	
# Removing gears from JEI "cycling"
	gearTin.remove(<forestry:gear_tin>);
	gearCopper.remove(<forestry:gear_copper>);
	gearBronze.remove(<forestry:gear_bronze>);
	
# Immersive Tech Salt
	<ore:itemSalt>.add(<immersivetech:material>);
	<ore:foodSalt>.add(<immersivetech:material>);
	<ore:dustSalt>.add(<immersivetech:material>);
	
# *======= Quark Specific Oredict =======*

	stonemarble.add(<quark:world_stone_bricks:4>);
	stonemarble.add(<quark:marble:1>);
	
	sandstone.add(<quark:sandstone_new>);
	sandstone.add(<quark:sandstone_new:1>);
	sandstone.add(<quark:sandstone_new:2>);
	sandstone.add(<quark:sandstone_new:3>);
	
	diorite.add(<quark:world_stone_bricks:1>);
	andesite.add(<quark:world_stone_bricks:2>);
	granite.add(<quark:world_stone_bricks>);
	
	basalt.add(<quark:world_stone_bricks:3>);
	
	limestone.add(<quark:limestone:1>);
	limestone.add(<quark:world_stone_bricks:5>);

#====== Unify wood stuff in oredicts =======
# All credit for this script goes to Ordinator and the ATM team
# This script is borrowed from All The Mods 3 with permission. I have removed
# a few things, and added a few things.


#====== Variables ======

	var Chest = <ore:chest>;
	var ChestWood = <ore:chestWood>;
	var ChestTrapped = <ore:chestTrapped>;
	var Trapdoor = <ore:trapdoorWood>;
	var Door = <ore:doorWood>;
	var Bed = <ore:bed>;
	var Log = <ore:logWood>;
	var Plank = <ore:plankWood>;
	var WoodSlab = <ore:slabWood>;
	var WoodStair = <ore:stairWood>;
	var Stick = <ore:stickWood>;
	var Fence = <ore:fenceWood>;
	var Gate = <ore:fenceGateWood>;


#====== Planks ======
#--Ord (added 12-JULY-2017)
#
	var PlanksToAdd = [
		<rustic:painted_wood_white:0>, 
		<rustic:painted_wood_orange:0>, 
		<rustic:painted_wood_purple:0>, 
		<rustic:painted_wood_blue:0>, 
		<rustic:painted_wood_brown:0>, 
		<rustic:painted_wood_green:0>, 
		<rustic:painted_wood_red:0>, 
		<rustic:painted_wood_black:0>, 
		<rustic:painted_wood_magenta:0>, 
		<rustic:painted_wood_light_blue:0>, 
		<rustic:painted_wood_yellow:0>, 
		<rustic:painted_wood_lime:0>, 
		<rustic:painted_wood_pink:0>, 
		<rustic:painted_wood_gray:0>, 
		<rustic:painted_wood_silver:0>, 
		<rustic:painted_wood_cyan:0>,
		<chisel:planks-acacia>, 
		<chisel:planks-acacia:1>, 
		<chisel:planks-acacia:2>, 
		<chisel:planks-acacia:3>, 
		<chisel:planks-acacia:4>, 
		<chisel:planks-acacia:5>, 
		<chisel:planks-acacia:6>, 
		<chisel:planks-acacia:7>, 
		<chisel:planks-acacia:8>, 
		<chisel:planks-acacia:9>, 
		<chisel:planks-acacia:10>, 
		<chisel:planks-acacia:11>, 
		<chisel:planks-acacia:12>, 
		<chisel:planks-acacia:13>, 
		<chisel:planks-acacia:14>, 
		<chisel:planks-birch>, 
		<chisel:planks-birch:1>, 
		<chisel:planks-birch:2>, 
		<chisel:planks-birch:3>, 
		<chisel:planks-birch:4>, 
		<chisel:planks-birch:5>, 
		<chisel:planks-birch:6>, 
		<chisel:planks-birch:7>, 
		<chisel:planks-birch:8>, 
		<chisel:planks-birch:9>, 
		<chisel:planks-birch:10>, 
		<chisel:planks-birch:11>, 
		<chisel:planks-birch:12>, 
		<chisel:planks-birch:13>, 
		<chisel:planks-birch:14>, 
		<chisel:planks-dark-oak>, 
		<chisel:planks-dark-oak:1>, 
		<chisel:planks-dark-oak:2>, 
		<chisel:planks-dark-oak:3>, 
		<chisel:planks-dark-oak:4>, 
		<chisel:planks-dark-oak:5>, 
		<chisel:planks-dark-oak:6>, 
		<chisel:planks-dark-oak:7>, 
		<chisel:planks-dark-oak:8>, 
		<chisel:planks-dark-oak:9>, 
		<chisel:planks-dark-oak:10>, 
		<chisel:planks-dark-oak:11>, 
		<chisel:planks-dark-oak:12>, 
		<chisel:planks-dark-oak:13>, 
		<chisel:planks-dark-oak:14>, 
		<chisel:planks-jungle>, 
		<chisel:planks-jungle:1>, 
		<chisel:planks-jungle:2>, 
		<chisel:planks-jungle:3>, 
		<chisel:planks-jungle:4>, 
		<chisel:planks-jungle:5>, 
		<chisel:planks-jungle:6>, 
		<chisel:planks-jungle:7>, 
		<chisel:planks-jungle:8>, 
		<chisel:planks-jungle:9>, 
		<chisel:planks-jungle:10>, 
		<chisel:planks-jungle:11>, 
		<chisel:planks-jungle:12>, 
		<chisel:planks-jungle:13>, 
		<chisel:planks-jungle:14>, 
		<chisel:planks-oak>, 
		<chisel:planks-oak:1>, 
		<chisel:planks-oak:2>, 
		<chisel:planks-oak:3>, 
		<chisel:planks-oak:4>, 
		<chisel:planks-oak:5>, 
		<chisel:planks-oak:6>, 
		<chisel:planks-oak:7>, 
		<chisel:planks-oak:8>, 
		<chisel:planks-oak:9>, 
		<chisel:planks-oak:10>, 
		<chisel:planks-oak:11>, 
		<chisel:planks-oak:12>, 
		<chisel:planks-oak:13>, 
		<chisel:planks-oak:14>, 
		<chisel:planks-spruce>, 
		<chisel:planks-spruce:1>, 
		<chisel:planks-spruce:2>, 
		<chisel:planks-spruce:3>, 
		<chisel:planks-spruce:4>, 
		<chisel:planks-spruce:5>, 
		<chisel:planks-spruce:6>, 
		<chisel:planks-spruce:7>, 
		<chisel:planks-spruce:8>, 
		<chisel:planks-spruce:9>, 
		<chisel:planks-spruce:10>, 
		<chisel:planks-spruce:11>, 
		<chisel:planks-spruce:12>, 
		<chisel:planks-spruce:13>, 
		<chisel:planks-spruce:14>, 
		<forestry:planks.0>, 
		<forestry:planks.0:1>, 
		<forestry:planks.0:2>, 
		<forestry:planks.0:3>, 
		<forestry:planks.0:4>, 
		<forestry:planks.0:5>, 
		<forestry:planks.0:6>, 
		<forestry:planks.0:7>, 
		<forestry:planks.0:8>, 
		<forestry:planks.0:9>, 
		<forestry:planks.0:10>, 
		<forestry:planks.0:11>, 
		<forestry:planks.0:12>, 
		<forestry:planks.0:13>, 
		<forestry:planks.0:14>, 
		<forestry:planks.0:15>, 
		<forestry:planks.1>, 
		<forestry:planks.1:1>, 
		<forestry:planks.1:2>, 
		<forestry:planks.1:3>, 
		<forestry:planks.1:4>, 
		<forestry:planks.1:5>, 
		<forestry:planks.1:6>, 
		<forestry:planks.1:7>, 
		<forestry:planks.1:8>, 
		<forestry:planks.1:9>, 
		<forestry:planks.1:10>, 
		<forestry:planks.1:11>, 
		<forestry:planks.1:12>, 
		<forestry:planks.fireproof.0>, 
		<forestry:planks.fireproof.0:1>, 
		<forestry:planks.fireproof.0:2>, 
		<forestry:planks.fireproof.0:3>, 
		<forestry:planks.fireproof.0:4>, 
		<forestry:planks.fireproof.0:5>, 
		<forestry:planks.fireproof.0:6>, 
		<forestry:planks.fireproof.0:7>, 
		<forestry:planks.fireproof.0:8>, 
		<forestry:planks.fireproof.0:9>, 
		<forestry:planks.fireproof.0:10>, 
		<forestry:planks.fireproof.0:11>, 
		<forestry:planks.fireproof.0:12>, 
		<forestry:planks.fireproof.0:13>, 
		<forestry:planks.fireproof.0:14>, 
		<forestry:planks.fireproof.0:15>, 
		<forestry:planks.fireproof.1>, 
		<forestry:planks.fireproof.1:1>, 
		<forestry:planks.fireproof.1:2>, 
		<forestry:planks.fireproof.1:3>, 
		<forestry:planks.fireproof.1:4>, 
		<forestry:planks.fireproof.1:5>, 
		<forestry:planks.fireproof.1:6>, 
		<forestry:planks.fireproof.1:7>, 
		<forestry:planks.fireproof.1:8>, 
		<forestry:planks.fireproof.1:9>, 
		<forestry:planks.fireproof.1:10>, 
		<forestry:planks.fireproof.1:11>, 
		<forestry:planks.fireproof.1:12>, 
		<forestry:planks.vanilla.fireproof.0>, 
		<forestry:planks.vanilla.fireproof.0:1>, 
		<forestry:planks.vanilla.fireproof.0:2>, 
		<forestry:planks.vanilla.fireproof.0:3>, 
		<forestry:planks.vanilla.fireproof.0:4>, 
		<forestry:planks.vanilla.fireproof.0:5>, 
		<minecraft:planks>, 
		<minecraft:planks:1>, 
		<minecraft:planks:2>, 
		<minecraft:planks:3>, 
		<minecraft:planks:4>, 
		<minecraft:planks:5>,
		<rustic:planks>, 
		<rustic:planks:1>
	] as IItemStack[];
	
	Plank.addItems(PlanksToAdd);


#====== Crafting Tables ======
#
	var TablesToAdd = [
		<actuallyadditions:item_crafter_on_a_stick>,
		<minecraft:crafting_table>
	] as IItemStack[];
	
	<ore:craftingTableWood>.addItems(TablesToAdd);
	<ore:crafterWood>.addItems(TablesToAdd);


#======Add to chest======
#
	var ChestsToAdd = [
		<minecraft:chest>,
		<minecraft:ender_chest>,
		<minecraft:trapped_chest>,
		<actuallyadditions:block_treasure_chest>,
		<quark:custom_chest:0>,
		<quark:custom_chest:1>,
		<quark:custom_chest:2>,
		<quark:custom_chest:3>,
		<quark:custom_chest:4>,
		<quark:custom_chest_trap:0>,
		<quark:custom_chest_trap:1>,
		<quark:custom_chest_trap:2>,
		<quark:custom_chest_trap:3>,
		<quark:custom_chest_trap:4>
	] as IItemStack[];
	
	Chest.addItems(ChestsToAdd);

#======Add to chestWood======
#
	var WoodChestToAdd = [
		<minecraft:chest>,
		<minecraft:trapped_chest>,
		<quark:custom_chest:0>,
		<quark:custom_chest:1>,
		<quark:custom_chest:2>,
		<quark:custom_chest:3>,
		<quark:custom_chest:4>,
		<quark:custom_chest_trap:0>,
		<quark:custom_chest_trap:1>,
		<quark:custom_chest_trap:2>,
		<quark:custom_chest_trap:3>,
		<quark:custom_chest_trap:4>
	] as IItemStack[];
	
	ChestWood.addItems(WoodChestToAdd);


#======Add to chestTrapped======
#
	var TrappedChestToAdd = [
		<minecraft:trapped_chest>,
		<quark:custom_chest_trap:0>,
		<quark:custom_chest_trap:1>,
		<quark:custom_chest_trap:2>,
		<quark:custom_chest_trap:3>,
		<quark:custom_chest_trap:4>
	] as IItemStack[];

	ChestTrapped.addItems(TrappedChestToAdd);
	
	
#======Add to ore:bed======
#
	var BedToAdd = [
		<minecraft:bed>, #White Bed
		<minecraft:bed:1>, #Orange Bed
		<minecraft:bed:2>, #Magenta Bed
		<minecraft:bed:3>, #Light Blue Bed
		<minecraft:bed:4>, #Yellow Bed
		<minecraft:bed:5>, #Lime Bed
		<minecraft:bed:6>, #Pink Bed
		<minecraft:bed:7>, #Gray Bed
		<minecraft:bed:8>, #Light Gray Bed
		<minecraft:bed:9>, #Cyan Bed
		<minecraft:bed:10>, #Purple Bed
		<minecraft:bed:11>, #Blue Bed
		<minecraft:bed:12>, #Brown Bed
		<minecraft:bed:13>, #Green Bed
		<minecraft:bed:14>, #Red Bed
		<minecraft:bed:15> #Black Bed
	] as IItemStack[];
	
	Bed.addItems(BedToAdd);


#======Add to Trapdoor======
#
	var TrapdoorToAdd = [
		<minecraft:trapdoor>,
		<engineersdoors:trapdoor_treated>
	] as IItemStack[];
	
	Trapdoor.addItems(TrapdoorToAdd);
	
#======Add to Door======
	var DoorToAdd = [
		<minecraft:wooden_door>,
		<forestry:doors.acacia>, #Desert Acacia Door
		<forestry:doors.balsa>, #Balsa Door
		<forestry:doors.baobab>, #Baobab Door
		<forestry:doors.cherry>, #Cherry Door
		<forestry:doors.chestnut>, #Chestnut Door
		<forestry:doors.citrus>, #Citrus Door
		<forestry:doors.cocobolo>, #Cocobolo Door
		<forestry:doors.ebony>, #Ebony Door
		<forestry:doors.giganteum>, #Giant Sequoia Door
		<forestry:doors.greenheart>, #Greenheart Door
		<forestry:doors.ipe>, #Ipe Door
		<forestry:doors.kapok>, #Kapok Door
		<forestry:doors.larch>, #Larch Door
		<forestry:doors.lime>, #Lime Door
		<forestry:doors.mahoe>, #Mahoe Door
		<forestry:doors.mahogany>, #Mahogany Door
		<forestry:doors.maple>, #Maple Door
		<forestry:doors.padauk>, #Padauk Door
		<forestry:doors.palm>, #Palm Door
		<forestry:doors.papaya>, #Papaya Door
		<forestry:doors.pine>, #Pine Door
		<forestry:doors.plum>, #Plum Door
		<forestry:doors.poplar>, #Poplar Door
		<forestry:doors.sequoia>, #Sequoia Door
		<forestry:doors.teak>, #Teak Door
		<forestry:doors.walnut>, #Walnut Door
		<forestry:doors.wenge>, #Wenge Door
		<forestry:doors.willow>, #Willow Door
		<forestry:doors.zebrawood>, #Zebrawood Door
		<minecraft:acacia_door>,
		<minecraft:jungle_door>,
		<minecraft:birch_door>,
		<minecraft:spruce_door>,
		<minecraft:dark_oak_door>
	] as IItemStack[];
	
	Door.addItems(DoorToAdd);

#======Conversion Recipes======
	recipes.addShapeless("trapdoororedict1", <minecraft:trapdoor>, [Trapdoor]);
	recipes.addShapeless("trappedchestoredict1", <minecraft:trapped_chest>, [ChestTrapped]);
	recipes.addShapeless("chestoredict1", <minecraft:chest>, [Chest]);
	recipes.addShapeless("bedoredict1", <minecraft:bed>, [<ore:bed>]);
	recipes.addShapeless("wooddoororedict1", <minecraft:wooden_door>, [Door]);

	

	
	