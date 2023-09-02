#loader gregtech
#priority 1200

import mods.gregtech.ore.OrePrefix;
import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.material.Material;
import mods.gregtech.MaterialFlag;
import mods.gregtech.MaterialFlagBuilder;

val curvedPlate as OrePrefix = OrePrefix.registerOrePrefix("plateCurved", 1);

curvedPlate.setGenerationPredicate(function(mat as Material) as bool {
    return mat.hasIngot();
} as IMaterialPredicate);

curvedPlate.createMaterialItem();