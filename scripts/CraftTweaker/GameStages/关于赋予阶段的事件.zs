#reloadable
import mods.ctintegration.gamestages.GameStageAddEvent;
import mods.ctintegration.scalinghealth.DifficultyManager;
import crafttweaker.player.IPlayer;

//当玩家获得阶段时
events.onGameStageAdd(function(event as GameStageAddEvent) {
    //如果玩家拥有该阶段
    var player as IPlayer = event.player;
    if (player.hasGameStage(event.gameStage)) {
        return;
    }
    if(event.gameStage == "冒险第一章"){
        player.sendChat(" §9==================================================");
        player.sendChat(" §9§l已解锁游戏阶段!");
        player.sendChat(" "+event.gameStage + " - §b出来炸道");
        player.sendChat(" §5当你解锁该阶段时,表明你已经开始了这chengming的世界的奇幻之旅");
        player.sendChat(" §e可以开始发展与解锁项:");
        player.sendChat("  §a✔ " + "§a解锁污秽之地大部分内容 \n " + " §a✔ " + "§a允许进入极光幽境 \n "+ " §a✔ " + "§a允许进入暮色森林");
        player.sendChat(" §c难度上升部分");
        player.sendChat(" §b0 §f—> §b24");
        player.sendChat(" §b世界的亡灵生物开始演化出“零”级装备");
        player.sendChat(" §9==================================================");
    }
});
//                          阶段名称                一些描述             一些描述1(Tootip)         一些描述2(解锁功能)      一些描述3(怪物装备提升)         当前难度                   上升后难度
function GameStageTime(StageName as string , SomeMiaoShu as string , SomeMiaoShu1 as string , SomeMiaoShu2 as string , SomeMiaoShu3 as string , MinDifficulty as string , MaxDifficulty as string) {
    //当玩家获得阶段时
    events.onGameStageAdd(function(event as GameStageAddEvent) {
    //如果玩家拥有该阶段
        var player as IPlayer = event.player;
        if (player.hasGameStage(event.gameStage)) {
            return;
        }
        if(event.gameStage == StageName){
            player.sendChat(" §9==================================================");
            player.sendChat(" §9§l已解锁游戏阶段!");
            player.sendChat(" "+event.gameStage + " - §b" + SomeMiaoShu);
            player.sendChat(" §5"+SomeMiaoShu1);
            player.sendChat(" §e可以开始发展与解锁项:");
            player.sendChat(" "+SomeMiaoShu2);
            player.sendChat(" §c难度上升部分");
            player.sendChat(" §b"+MinDifficulty+" §f—>"+" §b"+MaxDifficulty);
            player.sendChat(" §b"+SomeMiaoShu3);
            player.sendChat(" §9==================================================");
        }
    });
}

events.onGameStageAdd(function(event as GameStageAddEvent) {
    //如果玩家拥有该阶段
    var player as IPlayer = event.player;
    if (player.hasGameStage(event.gameStage)) {
        return;
    }
    if(event.gameStage == "地狱"){
        player.sendChat(" §9==================================================");
        player.sendChat(" §9§l已解锁游戏阶段!");
        player.sendChat(" "+event.gameStage + " - §b灼热烈火之地");
        player.sendChat(" §5当你解锁该阶段时,表明你已经击败了皎月女王制作出了天宇锭,但这并不是终点...");
        player.sendChat(" §e可以开始发展与解锁项:");
        player.sendChat("  §a✔ " + "§a解锁前往地狱的权力 \n " + " §a✔ " + "§a解锁大部分下界的物品 \n" + "  §a✔ " + "§a解锁更多使用设备2的下界之心发电机");
        player.sendChat(" §c难度上升部分");
        player.sendChat(" §b24 §f—> §b64");
        player.sendChat(" §b世界的生物开始演化出“壹”级装备");
        player.sendChat(" §9==================================================");
    }
});

events.onGameStageAdd(function(event as GameStageAddEvent) {
    //如果玩家拥有该阶段
    var player as IPlayer = event.player;
    if (player.hasGameStage(event.gameStage)) {
        return;
    }
    if(event.gameStage == "冒险第二章"){
        player.sendChat(" §9==================================================");
        player.sendChat(" §9§l已解锁游戏阶段!");
        player.sendChat(" "+event.gameStage + " - §b永往直前");
        player.sendChat(" §5当你解锁该阶段时,表明你已来到了 灼热烈火之地—地狱 在这之后你将面临更多奇妙的事情......");
        player.sendChat(" §e可以开始发展与解锁项:");
        player.sendChat("  §a✔ " + "§a解锁深渊国度之中的“深渊荒原” \n" + "  §a✔ " + "§a解锁“魔界”维度 \n"  + "  §a✔ " + "§a允许前往“阿图姆”维度 \n" + "  §a✔ " + "§a允许前往天境 \n" + "  §a✔ " + "§a主维度中允许悼亡者的存在");
        player.sendChat(" §c难度上升部分");
        player.sendChat(" §b64 §f—> §b128");
        player.sendChat(" §b世界的生物开始演化出“贰”级装备");
        player.sendChat(" §9==================================================");
    }
});

events.onGameStageAdd(function(event as GameStageAddEvent) {
    //如果玩家拥有该阶段
    var player as IPlayer = event.player;
    if (player.hasGameStage(event.gameStage)) {
        return;
    }
    if(event.gameStage == "maelstrom_invasion"){
        player.sendChat(" §9==================================================");
        player.sendChat(" §9§l已解锁游戏阶段!");
        player.sendChat(" "+"漩涡之凝" + " - §b深入漩涡");
        player.sendChat(" §5当你解锁该阶段时,表明你已击败凋零成功地被“漩涡”注视了......");
        player.sendChat(" §l§c离开家!快!现在!立刻!马上!他们已经找§kdaonileaaaaaaa");
        player.sendChat(" §e可以开始发展与解锁项:");
        player.sendChat("  §a✔ " + "§a解锁冒险漩涡的全部内容");
        player.sendChat(" §c难度上升部分");
        player.sendChat(" §b128 §f—> §b192");
        player.sendChat(" §b世界的生物开始演化出“叁”级装备");
        player.sendChat(" §9==================================================");
    }
});