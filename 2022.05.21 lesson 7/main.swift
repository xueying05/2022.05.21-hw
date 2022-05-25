var boss = Boss(health: 1000, damage: 70, name: "Босс")
var warrior = Warrior(health: 300, damage: 50, name: "Воин")
var wizard = Wizard(health: 200, damage: 40, name: "Маг")
var archer = Archer(health: 250, damage: 30, name: "Лучник")

var game = Game()

game.setHeroes(hero: warrior)
game.setHeroes(hero: wizard)
game.setHeroes(hero: archer)

game.setBoss(boss: boss)
game.gameStatus()
