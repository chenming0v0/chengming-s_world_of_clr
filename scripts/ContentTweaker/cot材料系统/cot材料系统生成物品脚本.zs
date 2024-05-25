#loader contenttweaker
#priority 999
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Part;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.RegisterMaterialPart;
import mods.contenttweaker.MaterialPart;
import mods.mekatweaker.Gas;
import mods.mekatweaker.GasFactory;
import mods.mekatweaker.InfuserType;

//部件全局函数
function addMaterial(name as string , Color as string , Part as string[]) {
    MaterialSystem.getMaterialBuilder().setName(name).setColor(Color).build().registerParts(Part);
}


/*
这里只是为了减少无用物品的注册与避免与原版的物品冲突才给出的多种方法
*/
//少粉的mek5倍
val Part as string[]=["crystal", "shard","clump","dirty_dust","clean_ore_slurry_gas","dirty_ore_slurry_gas"];
//全mek5倍
val Part1 as string[]=["dust", "crystal", "shard","clump","dirty_dust","clean_ore_slurry_gas","dirty_ore_slurry_gas"];
//物品额外全收集(熔融，齿轮，板，致密，外壳，粒，棍)
val Part2 as string[]=["molten","gear","plate","dense_plate","casing","nugget","rod"];
//科技锭的额外注册物品(熔融，齿轮，板，棍)
val Part3 as string[]=["plate" ,"gear" , "rod", "molten"];
//少粉的全物品收集
val Part4 as string[]=["crystal", "shard","clump","dirty_dust","clean_ore_slurry_gas","dirty_ore_slurry_gas","plate" ,"gear" , "rod", "molten"];
//少粉少熔融的全物品收集
val Part5 as string[]=["crystal", "shard","clump","dirty_dust","clean_ore_slurry_gas","dirty_ore_slurry_gas","plate" ,"gear" , "rod"];
//全物品收集
val Part6 as string[]=["dust","crystal", "shard","clump","dirty_dust","clean_ore_slurry_gas","dirty_ore_slurry_gas","plate" ,"gear" , "rod", "molten"];
//有粉物品收集
val Part7 as string[]=["dust","plate" ,"gear" , "rod", "molten"];
//有粉少熔融物品收集
val Part8 as string[]=["dust","plate" ,"gear" , "rod"];
//有粉的mek5倍物品收集
val Part9 as string[]=["dust","crystal", "shard","clump","dirty_dust","clean_ore_slurry_gas","dirty_ore_slurry_gas","plate" ,"gear" , "rod"];
//gear
val Part10 as string[]=["gear"];
//有熔融全mek5倍
val Part11 as string[]=["dust", "crystal", "shard","clump","dirty_dust","clean_ore_slurry_gas","dirty_ore_slurry_gas", "molten"];

//天宇
addMaterial("Tian" , 0x84e2f7, Part3);

//压缩铁
addMaterial("IronCompressed" , 0x363130, Part3);
//Vibrant脉冲合金
addMaterial("Vibrant" , 0x71e055, Part10);
//Dark玄钢
addMaterial("Dark" , 0x202025, Part10);
//充能合金

//奈布
addMaterial("Nebu" , 0xcf9407, Part11);

addMaterial("Energized" , 0xff7c26, Part10);

//mek5倍矿与齿轮板子统一
if (true) {
    /*
    //IU的矿石
    //铝矿石的暴力矿词剥离
    val iu_name_and_color as string[][]=[
    [
        "Mikhail",//米哈游矿（不是
        "Aluminium",//紫铝
        "Vanadium",//钒矿
        "Tungsten",//钨矿
        "IuCobalt",//钴矿
        "Titanium",//钛矿
        "Chromium",//铬矿
        "Spinel",//尖晶石矿石
        "Zinc",//锌矿
        "Manganese",//锰矿
        "Germanium"//锗矿
    ],
    [
        0x7d9dae,
        0x9c849c,
        0xd3e891,
        0xb0c0a7,
        0x2577c2,
        0x747474,
        0x8dcd95,
        0xf18ab6,
        0xbebebe,
        0xcf6e8f,
        0x985514
        
    ]
    ];

    for i in 0 to 11{
    addMaterial(iu_name_and_color[0][i], iu_name_and_color[1][i], Part4);
    }
    */
    /*
    //交错的矿石
        val jiaochuo_name_and_color as string[][]=[
    [
        "Octine",//炽炎铁
        "Syrmorite"//赛摩铜
    ],
    [
        0xed6b0e,
        0x4a59a6
        
    ]
    ];
    for i in 0 to 2{
    addMaterial(jiaochuo_name_and_color[0][i], jiaochuo_name_and_color[1][i], Part9);
    }
    */
    //NC的矿石
    val nc_name_and_color as string[][]=[
    [
        "Magnesium",//镁矿
        "Lithium",//锂矿
        "Boron",//硼矿
        "Thorium"//钍矿
    ],
    [
        0xf0d0ed,
        0xcccccc,
        0x9d9d9d,
        0x2c2c2c
        
    ]
    ];

    for i in 0 to 4{
    addMaterial(nc_name_and_color[0][i], nc_name_and_color[1][i], Part5);
    }

    //热力的矿石
    val te_name_and_color as string[][]=[
    [
        "Aluminum",//白铝矿
        "Nickel",//镍矿
        "Platinum",//铂矿
        "Iridium",//铱矿
        "Mithril"//蕴魔密银矿
    ],
    [
        0xe8e8f3,
        0xf5f1a0,
        0x69d6fc,
        0xbfbedb,
        0x537e9c  
    ]
    ];

    for i in 0 to 5{
    addMaterial(te_name_and_color[0][i], te_name_and_color[1][i], Part);
    }


    //极光幽境的矿石
    val TA_name_and_color as string[][]=[
    [
        "Cerulean",//晶蓝
        "Moonstone"//皎月
    ],
    [
        0x88fcfc,
        0xfcfcf4
    ]
    ];

    for i in 0 to 2{
    addMaterial(TA_name_and_color[0][i], TA_name_and_color[1][i], Part9);
    }


    //AbyssalCraft的矿石
    //渊素
    addMaterial("Abyssalnite", 0x6227b3, Part);

    //AS的矿石
    //星辉矿
    addMaterial("AstralStarmetal", 0x012aaa, Part);

    //DefiledLands的矿石
    //影素
    addMaterial("Umbrium", 0x9b17c8, Part1);

    //DE的矿石
    //龙矿石
    addMaterial("Draconium", 0x7a519a, Part4);


    /*匠魂mek5倍*/
    if(true){
    //TiC2的矿石
    val tic_name_and_color as string[][]=[
        [
        "Cobalt",//钴矿
        "Ardite"//阿迪特
        ],
        [
        0x2376dd,
        0xf97717
        ]
    ];

    for i in 0 to 2{
    addMaterial(tic_name_and_color[0][i], tic_name_and_color[1][i], Part9);
    }

    //匠魂合金附加的矿石
    val taiga_name_and_color as string[][]=[
        [
        "Karmesine",//绯红铁
        "Ovium",//欧维姆
        "Jauxum",//若氏铁
        "Prometheum",//钷
        "Valyrium",//瓦雷利亚
        "Osram",//熔晶
        "Palladium",//钯
        "Aurorium",//极光金属
        "Abyssum",//深渊金属
        "Duranite",//杜兰特
        "Uru",//乌鲁
        "Eezo",//零素
        "Vibranium"//振金
        ],
        [
        0xde645c,
        0x6d64da,
        0x6fd778,
        0x1f191f,
        0xdd6c54,
        0xe9b19a,
        0xff780a,
        0xffcee4,
        0x2c949b,
        0x76648e,
        0x9eb3c7,
        0x465059,
        0xccdde0
        ]
    ];

    for i in 0 to 13{
    addMaterial(taiga_name_and_color[0][i], taiga_name_and_color[1][i], Part);
    }

    //更多匠魂材料的矿石
    val MTC_name_and_color as string[][]=[
        [
        "Fusionite",//聚变
        "Irradium",//铱镭
        "Gallium",//镓
        "Gravitonium",//重力鎓
        "Arkenium"//阿肯钢
        ],
        [
        0x3e77b1,
        0x1acd00,
        0xc7b6c6,
        0x090707,
        0x464144
        ]
    ];
    for i in 0 to 5{
    addMaterial(MTC_name_and_color[0][i], MTC_name_and_color[1][i], Part1);
    }
    }
}