//
//  Tarea1Media.swift
//  Tarrea1
//
//  Created by user257493 on 9/26/24.
//

import Foundation

func tarea1media(){
    var numero = ""
    func esNumero(texto: String) -> Bool { //Esta funcion pide un valor string y devuelve un bool true, para decirle al if de abajo que se cumple la condición
        
        let resultado = Int(texto) // Aqui hacemos la comprobación con una variable local
        
        if resultado == nil{ //Si la variable local devuelve un NIL significa que NO puede convertirlo en un numero y que por ende NO es nu numero
            
            esNumero(texto: repetirNumero())// Ahora llama a pedir numero, imprime un error, y volvemos a pedir el valor para después enviarlo de nuevo a esta misma función, creando así un bucle en el que si y solo si es un número va a salir del bucle
        }
            return true
    }
    
    func repetirNumero() -> String{
        
          print("Error, el texto introducido no es un número, intentalo de nuevo")
          numero = readLine()!
        return numero
    }

    func transformarANumero(numero: String) -> Int { // Esta funcion convierte el string que sabemos que es numero, en un int
        print("Ha entrado en la segunda Func el string:",numero)
        
        let numeroEnInt = Int(numero)!
        
        return numeroEnInt
    }

    print("Introduce 5 números por consola para hacer una media")

    var numero1Int = 0
    var numero2Int = 0
    var numero3Int = 0
    var numero4Int = 0
    var numero5Int = 0

    print("Introduce el primero: ")
    numero = readLine()!
    if esNumero(texto: numero){
        numero1Int += transformarANumero(numero: numero)
       
    }
    
    
    print("todo correcto, imprimimos: Numero1Int:", numero1Int, "y numero1 Str:", numero)
    
"""
    print("Introduce el segundo: ")
    var numero2 = readLine()!
    if esNumero(texto: numero2){
        numero2 = ""
        numero2 = numero
        numero2Int += transformarANumero(numero: numero2)
        numero = ""
    }
    
    print("Introduce el tercero: ")
    var numero3 = readLine()!
    if esNumero(texto: numero3){
        numero3 = ""
        numero3 = numero
        numero3Int += transformarANumero(numero: numero3)
        numero = ""
    }
    
    print("Introduce el cuarto: ")
    var numero4 = readLine()!
    if esNumero(texto: numero4){
        numero4 = ""
        numero4 = numero
        numero4Int += transformarANumero(numero: numero4)
        numero = ""
    }
    
    print("Introduce el quinto y último valor: ")
    var numero5 = readLine()!
    if esNumero(texto: numero5){
        numero5 = ""
        numero5 = numero
        numero5Int += transformarANumero(numero: numero5)
        
    }
    
    print("numeros int:", numero1Int, numero2Int, numero3Int, numero4Int, numero5Int)
    """
    
    """
    print("introduce el segúndo: ")
    var numero2 = readLine()!
    esNumero(texto: numero1)
    numero1Int = transformarANumero(numero: numero1)

    print("introduce el tercero: ")
    var numero3 = readLine()!

    print("introduce el cuarto: ")
    var numero4 = readLine()!

    print("introduce el quinto y último: ")
    var numero5 = readLine()!

    //var mediaUsuario = ((numero1 + numero2 + numero3 + numero4 + numero5) / 5)
    """
}

