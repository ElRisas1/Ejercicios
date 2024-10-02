//
//  Tarea1Media.swift
//  Tarrea1
//
//  Created by user257493 on 9/26/24.
//

import Foundation

func tarea1media(){
    
    //---------Declaramos variable niumero y las funciones para que despúes funcione---------
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

    
    //---------Empieza el programa---------
    
    print("Introduce números por consola para hacer una media")

    var sumatorioNumeroInt = 0
    var cantidadDeNumeros = 0
    print("¿Cuantos numeros quieres introducir para hacer la media?")
    
    numero = readLine()!
    if esNumero(texto: numero){
        cantidadDeNumeros = transformarANumero(numero: numero)
    }
    
    
    print("El programa tendrá", cantidadDeNumeros, "valores")
    
    print("Introduce el primero: ")
    numero = readLine()!
    if esNumero(texto: numero){
        sumatorioNumeroInt += transformarANumero(numero: numero)
    }
    for i in 2...cantidadDeNumeros{
        print("Introduce el siguiente: ")
        numero = readLine()!
        if esNumero(texto: numero){
            sumatorioNumeroInt += transformarANumero(numero: numero)
        }
    }
   
    let mediaUsuario = (sumatorioNumeroInt / cantidadDeNumeros)
    print("La media de los números introducidos es:", mediaUsuario)
}

