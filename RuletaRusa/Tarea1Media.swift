//
//  Tarea1Media.swift
//  Tarrea1
//
//  Created by user257493 on 9/26/24.
//

import Foundation

func tarea1media(){
    func esNumero(texto: String) -> Bool {
        let resultado = Int(texto)
        if resultado == nil{
            return false
        }
        else{
            return true
        }
    }

    func transformarANumero(numero: String) -> Int {
        let numeroEnInt = Int(numero)!
        return numeroEnInt
    }

    print("introduce 5 número por consola para hacer una media")

    var numero1Int = 0
    var numero2Int = 0
    var numero3Int = 0
    var numero4Int = 0
    var numero5Int = 0


    print("introduce el primero: ")
    var numero1 = readLine()!
    if esNumero(texto: numero1){
        numero1Int = transformarANumero(numero: numero1)
    }
    else{
        print("valor introducido incorrecto, por favor introducelo de nuevo")
        numero1 = readLine()!
    //esNumero(texto: numero1)
    }

    print("introduce el segúndo: ")
    var numero2 = readLine()!

    print("introduce el tercero: ")
    var numero3 = readLine()!

    print("introduce el cuarto: ")
    var numero4 = readLine()!

    print("introduce el quinto y último: ")
    var numero5 = readLine()!

    //var mediaUsuario = ((numero1 + numero2 + numero3 + numero4 + numero5) / 5)
    
}

