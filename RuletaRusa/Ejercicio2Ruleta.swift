//
//  Ejercicio2Ruleta.swift
//  RuletaRusa
//
//  Created by José Luis on 26/9/24.
//
func EjercicioRuleta(){
    print("Bienvenido a la ruleta rusa, vas a jugar contra la maquina, buena suerte")
    var seguirJugando:Bool = true
    repeat{
        var tambor = [1,2,3,4,5,6] //QUe me viene mejor hacer "1" o 1 y como retirar items de una lista
      
        let bala = tambor.randomElement()!
        print("Pulsa cualquier tecla para empezar a disparar")
        var pressEnter = readLine()
        for i in Range(1...6){
            
            let apretarGatillo = tambor.removeFirst()
            if bala == apretarGatillo{
                print("¡¡Has Perdido!!, has recibido un balazo")
                break
            }
            else if tambor.count == 1{
                print("¡¡Has ganado!!, la bala no ha salido y se ha quedado en el último hueco del tambor")
                break
            }
            else{
                print("No has muerto, pulsa cualquier tecla para disparar de nuevo")
                pressEnter = readLine()
            }
        }
        print("Juego acabado, ¿quieres seguir jugando?")
        
        let decisionUsu = readLine()!
        if decisionUsu.first == "s"{
            seguirJugando = true
        }else{
            seguirJugando = false
        }
        
    }while seguirJugando == true
    


}
