#loader contenttweaker
#priority 100
import crafttweaker.item.IItemDefinition;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerAttackEntityEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IWorld;
import mods.contenttweaker.tconstruct.TraitBuilder;
import crafttweaker.entity.IEntityLiving;
import crafttweaker.entity.IEntityLivingBase;
import mods.tconstruct.traits.OnToolDamage;

if(true/*土块特性 tu_kuai*/){
    val tu_kuai = mods.contenttweaker.tconstruct.TraitBuilder.create("tu_kuai");
    tu_kuai.color = 0xFBEC00;
    tu_kuai.localizedName = ("土块");
    tu_kuai.localizedDescription = ("给阿姨来上一杯卡布奇诺... \n 攻击时有15分之1的概率打出25倍的的伤害,有15分之14的概率打出25分之1倍的的伤害");
    tu_kuai.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
        val shuijishu1zhi10 = attacker.world.random.nextInt(1,15);
        if (shuijishu1zhi10 == 5) {
            return newDamage * 25;
        }else{  
            return newDamage * 0.04f + 3.0f;
        }
    };
    tu_kuai.register();
}

if(true/*记忆特性 jy*/){
    val jy = mods.contenttweaker.tconstruct.TraitBuilder.create("jy");
    jy.color = 0x99FFFF;
    jy.localizedName = ("记忆");
    jy.localizedDescription = ("记住你啦!\n  chengming重置版! \n 你第一个杀死的敌人,你会记住它,以后对他的伤害翻倍");
    jy.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
        if(attacker instanceof IPlayer && target instanceof IEntityLivingBase && !(target.isAlive())){
            if(isNull(tool.tag.killfrist)){
                tool.mutable().updateTag({killfrist : target.definition.id as string});
                tool.mutable().updateTag({display:{Lore:["§b我记住你了:§f"+ target.displayName]}});
            }
        }
    };
    jy.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
        if(attacker instanceof IPlayer && target instanceof IEntityLivingBase){
            if(!isNull(tool.tag.killfrist)){
                if(tool.tag.killfrist == target.definition.id){
                return newDamage * 4.5;
                }
            }
        }return newDamage;
    };
    jy.register();
}

if(true/*皎月之光特性 jyzg*/){
    val jyzg = mods.contenttweaker.tconstruct.TraitBuilder.create("jyzg");
    jyzg.color = 0x99FFFF;
    jyzg.localizedName = ("皎月之光");
    jyzg.localizedDescription = ("向皎月女王臣服!\n 在极光幽境中伤害翻倍!反之");
    
    jyzg.register();
}

if(true/*暴怒特性 baonu*/){
    val baonu = mods.contenttweaker.tconstruct.TraitBuilder.create("baonu");
    baonu.color = 0x99FFFF;
    baonu.localizedName = ("星怒");
    baonu.localizedDescription = (" 他妈的跟你爆了! \n 当血量低于75%,便不再暴击,但提升每次攻击的伤害");
    //禁止暴击
    baonu.calcCrit = function(thisTrait, tool, attacker, target) {
        return false;
    };
    //设置暴击的伤害
    baonu.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
        //                                     你的血量 小于等于 最大生命值*0.75
        if(attacker instanceof IPlayer && attacker.health <= attacker.maxHealth * 0.75f){
            if(isCritical){
                return newDamage / 1.5f;
            }else{
                return newDamage * 1.4f;
            }
        }return newDamage;
    };
    baonu.register();
}

if(true/*天地同源 huan_xie*/){
    val huan_xie = mods.contenttweaker.tconstruct.TraitBuilder.create("huan_xie");
    huan_xie.color = 0x99FFFF;
    huan_xie.localizedName = ("天地同源");
    huan_xie.localizedDescription = ("你应该信任我,将生命奉献给我,然后,我自然会向你展示,什么叫做力量 \n 当玩家最大生命值比怪物最大生命值低时，扣除一定百分比的血量，增加伤害");
    huan_xie.addItem(<item:contenttweaker:tian>);
    huan_xie.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
        if (attacker.health >= attacker.maxHealth * 0.1f) {
            if ( attacker.maxHealth <= target.maxHealth){        
                attacker.health -= (target.maxHealth - attacker.maxHealth) * 0.3f;
                return newDamage + (attacker.maxHealth + target.maxHealth) * 0.12f + 10.0f;
            }
        }return newDamage;
    };
    huan_xie.register();
}

if(true/*道德绑架退！退！退！ dao_de*/){
    val dao_de = mods.contenttweaker.tconstruct.TraitBuilder.create("dao_de");
    dao_de.color = 0x99FFFF;
    dao_de.localizedName = ("道德绑架退！退！退！");
    dao_de.localizedDescription = ("他还是个孩子！难度不能打的重亿点吗？");
    dao_de.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
        if (target.isChild == true ) {
            return target.maxHealth * 2000 + newDamage;
        }else{  
            return newDamage;
        }
    };
    dao_de.register();
}

if (true/*饱了特性 bao_le*/) {
    val bao_le = mods.contenttweaker.tconstruct.TraitBuilder.create("bao_le");
    bao_le.color = 0x99FFFF;
    bao_le.localizedName = ("吃饱了害嗨害！");
    bao_le.localizedDescription = ("吃饱了,我更NB了啊!害嗨害!害嗨害! \n 当饱食度大于等于15时,攻击力上升15%");
    bao_le.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if (attacker instanceof IPlayer){
        val player as IPlayer = attacker;
        if (player.foodStats.foodLevel >= 15 ) {
            attacker.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(60*20, 2));
            return newDamage * 1.15f;
            }
        }return newDamage;
    };
    bao_le.register();
}

if (true/*尖锐 jian_rui*/) {
    val jian_rui = mods.contenttweaker.tconstruct.TraitBuilder.create("jian_rui");
    jian_rui.color = 0x99FFFF;
    jian_rui.maxLevel = 3;
    jian_rui.localizedName = ("尖锐");
    jian_rui.localizedDescription = ("玻璃真是夸张,这使得数值反复膨胀 \n 直接为工具增加20%的伤害!");
    jian_rui.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(!attacker.world.remote){
        return newDamage * 1.2f;
    }return newDamage;
    };
    jian_rui.register();
}

if (true/*脆弱 cui_ruo*/) {
    val cui_ruo = mods.contenttweaker.tconstruct.TraitBuilder.create("cui_ruo");
    cui_ruo.color = 0x99FFFF;
    cui_ruo.localizedName = ("脆弱");
    cui_ruo.localizedDescription = ("凡事都是具有两面性的... \n 每一次攻击时额外扣除10!点耐久");
    cui_ruo.onToolDamage = function(thisTrait, tool, damage, newDamage, entity) {
        return newDamage + 10;
    };
    cui_ruo.register();
}

if (true/*噬魂者特性 shz*/) {
    val shz = mods.contenttweaker.tconstruct.TraitBuilder.create("shz");
    shz.color = 0x99FFFF;
    shz.localizedName = ("噬魂者");
    shz.localizedDescription = ("重置版！\n击杀的敌人越多,伤害越高");
    shz.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
        if(attacker instanceof IPlayer && target instanceof IEntityLivingBase && !(target.isAlive())){
            if(isNull(tool.tag.killnum)){
                tool.mutable().updateTag({killnum : 1 as int});
            }else{
                val kill_num as int = tool.tag.killnum.asInt();
                val kill_num1 as int = kill_num + 1;
                tool.mutable().updateTag({killnum :  kill_num1 as int});
            }
            if(!isNull(tool.tag.killnum)){
                var kill_Damage as float = 0.1f * tool.tag.killnum as float;
                tool.mutable().updateTag({display:{Lore:["§b击杀数:§f"+ tool.tag.killnum as int,"§b额外伤害增加:§f" + kill_Damage as float]}});
            }
        }
    };
    shz.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
        if(attacker instanceof IPlayer && target instanceof IEntityLivingBase){
            if(!isNull(tool.tag.killnum)){
                return newDamage + 0.1f * tool.tag.killnum as float;
            }
        }return newDamage;
    };
    shz.register();
}


//天地同源,生魂秉力
//不解释又难受,解释又听起来特别像找借口