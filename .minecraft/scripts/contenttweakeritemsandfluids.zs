#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Part;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.Material;
import mods.contenttweaker.Fluid;
//FLUIDS---------------------------------------------------------
  #Diluted Sulfuric Acid
var sulfuricAcidDiluted = mods.contenttweaker.VanillaFactory.createFluid("diluted_sulfuric_acid", Color.fromHex("aaaa55"));
sulfuricAcidDiluted.temperature = 1000;
sulfuricAcidDiluted.register();
  
  #Hydrogen Sulfide
var hydrogenSulfide = mods.contenttweaker.VanillaFactory.createFluid("hydrogen_sulfide", Color.fromHex("FFFFE6"));
hydrogenSulfide.density = 200;
hydrogenSulfide.gaseous = true;
hydrogenSulfide.viscosity = 300;
hydrogenSulfide.temperature = 1000;
hydrogenSulfide.register();

  #Polyethylene
var polyethylene = mods.contenttweaker.VanillaFactory.createFluid("polyethylene", Color.fromHex("e6e6e6"));
polyethylene.density = 5000;
polyethylene.viscosity = 10000;
polyethylene.temperature = 1000;
polyethylene.register();

  #Polytetrafluoroethylene
var teflon = mods.contenttweaker.VanillaFactory.createFluid("polytetrafluoroethylene", Color.fromHex("d9d9d9"));
teflon.density = 10000;
teflon.viscosity = 10000;
teflon.temperature = 1000;
teflon.register();

#Mutagen
var mutagen = mods.contenttweaker.VanillaFactory.createFluid("Mutagen", Color.fromHex("cc8899"));
mutagen.density = 10000;
mutagen.viscosity = 10000;
mutagen.temperature = 1000;
mutagen.register();

  #Sulfuric Diesel
var sulfuricDiesel = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_diesel", Color.fromHex("D1C28F"));
sulfuricDiesel.density = 10000;
sulfuricDiesel.viscosity = 10000;
sulfuricDiesel.temperature = 671;
sulfuricDiesel.register();

  #Sulfuric Gasoline
var sulfuricGasoline = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_gasoline", Color.fromHex("FFE03D"));
sulfuricGasoline.density = 10000;
sulfuricGasoline.viscosity = 10000;
sulfuricGasoline.temperature = 671;
sulfuricGasoline.register();

  #Sulfuric Kerosene
var sulfuricKerosene = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_kerosene", Color.fromHex("9CFFA6"));
sulfuricKerosene.density = 10000;
sulfuricKerosene.viscosity = 10000;
sulfuricKerosene.temperature = 671;
sulfuricKerosene.register();

  #Sulfuric LPG
var sulfuricLPG = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_lpg", Color.fromHex("FFFF00"));
sulfuricLPG.density = 10000;
sulfuricLPG.viscosity = 10000;
sulfuricLPG.temperature = 671;
sulfuricLPG.register();

  #Sulfuric Naphtha
var sulfuricNaphtha = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_naphtha", Color.fromHex("FFCC1A"));
sulfuricNaphtha.density = 10000;
sulfuricNaphtha.viscosity = 10000;
sulfuricNaphtha.temperature = 671;
sulfuricNaphtha.register();

  #Rubber
var new_rubber = mods.contenttweaker.VanillaFactory.createFluid("new_rubber", Color.fromHex("1776664"));
new_rubber.density = 10000;
new_rubber.viscosity = 10000;
new_rubber.temperature = 300;
new_rubber.register();

  #Phenol
var phenol = mods.contenttweaker.VanillaFactory.createFluid("phenol", Color.fromHex("b5651d"));
phenol.density = 10000;
phenol.viscosity = 10000;
phenol.temperature = 300;
phenol.register();

  #Charcoal Byproducts
var charcoal = mods.contenttweaker.VanillaFactory.createFluid("charcoal", Color.fromHex("654321"));
charcoal.density = 10000;
charcoal.viscosity = 10000;
charcoal.temperature = 300;
charcoal.register();

  #Glue
var glue = mods.contenttweaker.VanillaFactory.createFluid("glue", Color.fromHex("ffc726"));
glue.density = 10000;
glue.viscosity = 10000;
glue.temperature = 300;
glue.register();

  #Chlorine
var chlorine = mods.contenttweaker.VanillaFactory.createFluid("chlorine", Color.fromHex("c6ffe6"));
chlorine.density = 10000;
chlorine.viscosity = 10000;
chlorine.temperature = 300;
chlorine.register();

  #Radon
var radon = mods.contenttweaker.VanillaFactory.createFluid("radon", Color.fromHex("800080"));
radon.density = 10000;
radon.viscosity = 10000;
radon.temperature = 300;
radon.register();

  #Ethylbenzene
var ethylbenzene = mods.contenttweaker.VanillaFactory.createFluid("ethylbenzene", Color.fromHex("e1e7e4"));
ethylbenzene.density = 10000;
ethylbenzene.viscosity = 10000;
ethylbenzene.temperature = 136;
ethylbenzene.register();

  #Anthracene
var anthracene = mods.contenttweaker.VanillaFactory.createFluid("anthracene", Color.fromHex("ffffff"));
anthracene.density = 10000;
anthracene.viscosity = 10000;
anthracene.temperature = 340;
anthracene.register();

  #Coal Tar Oil
var coaloil = mods.contenttweaker.VanillaFactory.createFluid("coaloil", Color.fromHex("ffd59a"));
coaloil.density = 10000;
coaloil.viscosity = 10000;
coaloil.temperature = 240;
coaloil.register();

  #Benzene
var benzene = mods.contenttweaker.VanillaFactory.createFluid("benzene", Color.fromHex("060607"));
benzene.density = 10000;
benzene.viscosity = 10000;
benzene.temperature = 300;
benzene.register();

  #Toluene
var toluene = mods.contenttweaker.VanillaFactory.createFluid("toluene", Color.fromHex("a8ce12"));
toluene.density = 10000;
toluene.viscosity = 10000;
toluene.temperature = 300;
toluene.register();

  #Wood Vinegear
var winegar = mods.contenttweaker.VanillaFactory.createFluid("winegar", Color.fromHex("bda800"));
winegar.density = 10000;
winegar.viscosity = 10000;
winegar.temperature = 300;
winegar.register();

  #Methane
var methane = mods.contenttweaker.VanillaFactory.createFluid("methane", Color.fromHex("6dd7a26"));
methane.density = 10000;
methane.viscosity = 10000;
methane.temperature = 300;
methane.register();

  #Phtalic
var phtalic = mods.contenttweaker.VanillaFactory.createFluid("phtalic", Color.fromHex("6dd7a26"));
phtalic.density = 10000;
phtalic.viscosity = 10000;
phtalic.temperature = 300;
phtalic.register();

  #Desalted Oil
var desalted = mods.contenttweaker.VanillaFactory.createFluid("desaltedoil", Color.fromHex("14100e"));
desalted.density = 10000;
desalted.viscosity = 10000;
desalted.temperature = 300;
desalted.register();

  #Processed
var oil = mods.contenttweaker.VanillaFactory.createFluid("processedoil", Color.fromHex("14100e"));
oil.density = 10000;
oil.viscosity = 10000;
oil.temperature = 300;
oil.register();

  #mazut
var mazut = mods.contenttweaker.VanillaFactory.createFluid("mazut", Color.fromHex("654321"));
mazut.density = 10000;
mazut.viscosity = 10000;
mazut.temperature = 300;
mazut.register();

  #mineraloil
var mineral = mods.contenttweaker.VanillaFactory.createFluid("mineraloil", Color.fromHex("14100e"));
mineral.density = 10000;
mineral.viscosity = 10000;
mineral.temperature = 300;
mineral.register();

  #gascondensates
var gas = mods.contenttweaker.VanillaFactory.createFluid("gascondensates", Color.fromHex("e1e17e4"));
gas.density = 10000;
gas.viscosity = 10000;
gas.temperature = 300;
gas.register();

  #lng
var lng = mods.contenttweaker.VanillaFactory.createFluid("lng", Color.fromHex("f9e4b7"));
lng.density = 10000;
lng.viscosity = 10000;
lng.temperature = 300;
lng.register();

  #natural
var natural = mods.contenttweaker.VanillaFactory.createFluid("hotnaturalgas", Color.fromHex("f9e4b7"));
natural.density = 10000;
natural.viscosity = 10000;
natural.temperature = 1100;
natural.register();

  #glass
var glass = mods.contenttweaker.VanillaFactory.createFluid("glass", Color.fromHex("ffffff"));
glass.density = 10000;
glass.viscosity = 1000;
glass.temperature = 550;
glass.register();

  #ice
var ice = mods.contenttweaker.VanillaFactory.createFluid("ice", Color.fromHex("d6ecef"));
ice.density = 10000;
ice.viscosity = 5000;
ice.temperature = 250;
ice.register();

  #mana
var mana = mods.contenttweaker.VanillaFactory.createFluid("fluidedmana", Color.fromHex("0000FF"));
mana.density = 10000;
mana.viscosity = 4000;
mana.temperature = 300;
mana.register();

  #refinedmana
var refinedmana = mods.contenttweaker.VanillaFactory.createFluid("refinedmana", Color.fromHex("89cff0"));
refinedmana.density = 10000;
refinedmana.viscosity = 6000;
refinedmana.temperature = -1000;
refinedmana.register();



//ITEMS-----------------------------
#Carbonfirbres
var carbonFibres as Item = VanillaFactory.createItem("carbon_fibres");
carbonFibres.register();

#Quarry Rat
var quarryRat as Item = VanillaFactory.createItem("quarryrat");
quarryRat.register();

#Digital Miner Rat
var digitalMinerRat as Item = VanillaFactory.createItem("dmrat");
digitalMinerRat.register();

//Microcraftingparts
//Parts
#Basic, Intermediate, Advanced, Elite, and Insane Parts
var techTiers = ["basic","intermediate","advanced","elite","insane","ludicrous","divine","absurd"] as string[];
var techParts = ["piston","conveyor","motor","sensor","emitter","robotarm","valve","field_generator"] as string[];

for techTiers in techTiers {
  for techParts in techParts {
    var item = VanillaFactory.createItem(techTiers + techParts);      
    item.register();
  }
}

  #Ludicrous and Divine Microcrafting parts
var lastTiers = ["transcendent"] as string[];
for lastTiers in lastTiers {
  for techParts in techParts {
    var item = VanillaFactory.createItem(lastTiers + techParts);
    item.setMaxStackSize(1);
    item.glowing = true;
    item.rarity = "epic";
    item.register();
  }
 }