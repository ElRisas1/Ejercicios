//
//  tarea4.swift
//  RuletaRusa
//
//  Created by José Luis on 9/10/24.
import Foundation

func censurador(){
    
    func censurarTexto(texto: String) -> String{
        
        
        return texto
    }
    
    print("Bienvenido al censurador, introduce el texto que quieras censurar", "\n", "Te recordamos que los textos que se censurarán serán lás palabras malsonantes")
    
    print("Introduce el texto que quieras censurar:")
    var textoUsuario: String = readLine()!
    textoUsuario = censurarTexto(texto: textoUsuario)
    print("Texto censurado:", textoUsuario)
}

