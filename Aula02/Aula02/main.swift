//
//  main.swift
//  Aula02
//
//  Created by MARIANA FRACAROLI LOPES on 11/11/25.
//

import Foundation

func escolhaPersonagem() {
    print("Bem Vindo(a) à Luminara, a terra da magia!")
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
        "calma" : "Hydro(água)" ,
        "sabedoria" : "Electro(elétrico)" ,
        "liberdade" : "Anemo(vento)" ,
        "paciência" : "Pyro(fogo)" ,
        "mistério" : "Cryo(gelo)"
    ]
    
    print("Qual qualidade mais te define? Força, calma, sabedoria, liberdade, paciência ou mistério?")
    let resposta = readLine()?.lowercased() ?? ""
    if let elemento = elementos[resposta] {
        print("Sua afinidade elemental é \(elemento)")
    } else {
        print("Nenhum elemento respondeu ao seu chamado")
    }
}
// para funcionar chame a função afinidadeElemental()



