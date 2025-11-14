//
//  main.swift
//  Aula02
//
//  Created by MARIANA FRACAROLI LOPES on 11/11/25.
//

import Foundation

//O nome do "jogo" é: A Jornada em Luminara! Onde um viajante(você) chega em uma terra desconhecida chamada Luminara e enfrenta escolhas pelo caminho

func escolhaPersonagem() {
    print("Bem Vindo(a) à Luminara, a terra da magia!")
    print("Está na hora de decidir qual personagem vai te acompanhar nesta aventura")
    print("Digite M se quer ser mulher ou digite H para homem")
    let resposta = readLine() ?? ""
    if resposta == "M" {
        print("Bem Vinda Astra! Espero que sua jornada seja brilhante!")
    } else if resposta == "H" {
        print("Bem Vindo Zeus! Espero que sua jornada seja brilhante!")
    } else {
        print("Ops! Você digitou algo errado, não foi possível escolher seu personagem...")
    }
}
// para funcionar chame a função escolhaPersonagem()

func afinidadeElemental() {
    let elementos = [
        "força" : "Geo(Terra)" ,
        "calma" : "Hydro(Água)" ,
        "sabedoria" : "Electro(Elétrico)" ,
        "liberdade" : "Anemo(Vento)" ,
        "paciencia" : "Pyro(Fogo)" ,
        "misterio" : "Cryo(Gelo)"
    ]
    print("Agora, baseado em sua característica mais marcante, veremos qual elemento você mais se identifica...")
    print("Qual qualidade mais te define? Força, calma, sabedoria, liberdade, paciencia ou misterio?")
    let resposta = readLine()?.lowercased() ?? ""
    if let elemento = elementos[resposta] {
        print("Sua afinidade elemental é \(elemento)")
    } else {
        print("Nenhum elemento respondeu ao seu chamado")
    }
}
// para funcionar chame a função afinidadeElemental()

func explorarRegiao() {
    print("Escolha uma região digitando entre 1 e 4 para iniciar a sua aventura em Luminara!")
    print("1 - Vale dos ventos")
    print("2 - Penhascos flamejantes")
    print("3 - Jardins da maré")
    print("4 - Pico da estática")
    let escolha = readLine()
    if let numesc = escolha {
        if let numEscolha = Int(numesc) {
            switch numEscolha {
            case 1:
                print("Você sente uma brisa suave enquanto ouve estranhas canções vindas do céu")
                print("Agora já está pronto(a) para iniciar a sua aventura!")
            case 2:
                print("O calor intenso faz seu corpo brilhar como um vulcão em chamas")
                print("Agora já está pronto(a) para iniciar a sua aventura!")
            case 3:
                print("Águas cristalinas revelam criaturas que ali habitam")
                print("Agora já está pronto(a) para iniciar a sua aventura!")
            case 4:
                print("Relâmpagos sentem sua energia e dançam ao seu redor")
                print("Agora já está pronto(a) para iniciar a sua aventura!")
            default:
                print("Essa região não existe em Luminara")
            }
        }
        
        
    }
}
// para funcionar chame a função explorarRegiao()

func inventarioArtefatos(){
    var artefatos: [String] = []
    print("Após iniciar sua aventura, você caminha pela região e acaba dando de cara com um baú lendário!!!")
    print("Dentro dele havia recompensas, artefatos que podem te ajudar na batalha")
    print("Para guardar eles no inventário, digite quantos artefatos você encontrou?")
    let qtd = readLine()
    if let numqtd = qtd {
        if let quantidade = Int(numqtd) {
            for i in 1...quantidade {
                print("Digite o nome do artefato \(i):")
                let nome = readLine() ?? ""
                artefatos.append(nome)
            }
            print("Seus artefatos: ")
            for item in artefatos {
                print("- \(item)")
            }
        }
    }
}
// para funcionar chame a função inventarioArtefatos()

func dueloElemental() {
    let vantagens = [
        "Pyro" : "Cryo" ,
        "Hydro" : "Pyro" ,
        "Electro" : "Hydro" ,
        "Cryo" : "Electro" ,
        "Anemo" : "Pyro" ,
        "Geo" : "Cryo"
    ]
    
    let inimigos = ["Pyro" , "Hydro" , "Electro" , "Cryo" , "Anemo" , "Geo"]
    let inimigo = inimigos.randomElement() ?? "Pyro"
    print("Enquanto guardava seus artefatos no inventário, você acaba tendo uma sensação estranha")
    print("Parece que um inimigo está se aproximando, temos que agir rápido!!!")
    print("Seu elemento é Pyro, Hydro, Electro, Anemo, Geo ou Cryo?")
    let seu = (readLine() ?? "Pyro").capitalized
    print("Uma criatura \(inimigo) apareceu!!!")
    if vantagens[seu] == inimigo {
        print("Vantagem elemental!!! Você causou dano dobrado.")
        print("Você venceu a batalha, meus parabéns!!!")
    } else if vantagens[inimigo] == seu {
        print("Desvantagem elemental!!! Seu dano foi reduzido")
        print("Você perdeu a batalha, jogue novamente para tentar vencer... Boa sorte!!!")
    } else {
        print("Dano neutro, tente novamente!")
    }
}
// para funcionar chame a função dueloElemental()

func parteFinal() {
        print("Depois de derrotar seu inimigo, outra criatura se aproxima de você")
        print("Mas essa criatura é diferente, tem forma humana... Ela se aproxima e logo em seguida fala com você")
        print("XiangLing - Olá, sou XiangLing, parece que você derrotou um dos meus não é mesmo?")
        print("Oh não!!! Parece que XiangLing, a deusa mais forte de Luminara, está realmente zangada com você... Digite um número de 1 a 4 para responde-la")
        print("1 - Olá XiangLing, não era a minha intenção machucar ninguém... Apenas me defendi")
        print("2 - Derrotei mesmo, e vou derrotar qualquer um que chegar no meu caminho")
        print("3 - Quem é você? Sai daqui")
        print("4 - Me desculpa XiangLing... Me desculpa mesmo por favor não me machuque")
        let escolha = readLine()
        if let numesc = escolha {
            if let numEscolha = Int(numesc) {
                switch numEscolha {
                case 1:
                    print("XiangLing - Independente, derrubou um dos meus... Terei que exterminar você de Luminara!!!")
                case 2:
                    print("XiangLing - Se acha mesmo forte assim? Pois terá que passar por cima de mim primeiro!")
                case 3:
                    print("XiangLing - Como ousa debochar de mim assim??? Você sofrerá as consequências...")
                case 4:
                    print("XiangLing - Uma criatura tão fraca como você derrotou um dos meus?? Acabar com você será fácil então ")
                default:
                    print("XiangLing não entendeu o que você disse e te derrotou na mesma hora...")
                }
            }
            
            
        
    }
    
}

// para funcionar chame a função parteFinal()

func batalhaXiangling() {
    let vantagens = [
        "Pyro" : "Cryo" ,
        "Hydro" : "Pyro" ,
        "Electro" : "Hydro" ,
        "Cryo" : "Electro" ,
        "Anemo" : "Pyro" ,
        "Geo" : "Cryo"
    ]
    
    let inimigos = ["Pyro" , "Hydro" , "Electro" , "Cryo" , "Anemo" , "Geo"]
    let inimigo = inimigos.randomElement() ?? "Pyro"
    print("Uma faísca de magia cai sobre você... Agora você pode escolher qual elemento usar na batalha")
    print("Temos que atacar antes da XiangLing, rápido escolha qual elemento usar!!!")
    print("Seu elemento será Pyro, Hydro, Electro, Anemo, Geo ou Cryo?")
    let seu = (readLine() ?? "Pyro").capitalized
    print("XiangLing utilizou o elemento: \(inimigo)!")
    if vantagens[seu] == inimigo {
        print("Vantagem elemental!!! Você causou dano dobrado.")
        print("Você derrotou XiangLing, meus parabéns!!!")
    } else if vantagens[inimigo] == seu {
        print("Desvantagem elemental!!! Seu dano foi reduzido")
        print("XiangLing derrotou você... Fim de jogo, tente jogar novamente...")
    } else {
        print("Dano neutro, tente novamente!")
    }
    
}

// para funcionar chame a função batalhaXiangling()

