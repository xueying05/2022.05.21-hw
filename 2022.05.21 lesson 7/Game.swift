class Game: SuperAbility {
    var heroes: [Heroes] = []
    var bosses: [Boss] = []
    
    func setHeroes(hero: Heroes){
        heroes.append(hero)
    }
    func setBoss(boss: Boss){
        bosses.append(boss)
    }
    func bossHit(){
        for i in 0..<heroes.count{
            heroes[i].setHealth(health:
                    heroes[i].getHealth() -
                    bosses[0].getDamage())
        }
        }
    func heroesHit(){
        for i in 0..<heroes.count {
            bosses[0].setHealth(health: bosses[0].getHealth() - heroes[i].getDamage())
        }
        }
    func gameStatus(){
        while true{
            if heroes.count == 0{
                print("Boss win!")
                break
            }
            if bosses.count == 0 {
                print("Heroes win")
                break
            }
            for (index, hero) in heroes.enumerated(){
                if hero.getHealth() <= 0{
                    heroes.remove(at: index)
                }
            }
            if bosses[0].getHealth() <= 0{
                bosses.remove(at: 0)
               
            }
            round()
            changeDamage()
        }
    }
    func round(){
        print("----------------------------")
        bossHit()
        for i in heroes{
            print("Здоровье \(i.getName()) героя = \(i.getHealth())")
        }
        heroesHit()
        print("Здоровье Босса = \(bosses[0].getHealth())")
    }
    func changeDamage() {
            for (index, hero) in heroes.enumerated() {
                if hero.health <= 100 {
                    hero.damage = 100
                }
            }
    
    }
}
