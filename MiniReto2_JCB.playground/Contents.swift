//: Mini Reto 2 Velocimetro - Jorge Carrillo

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }

}

class Auto {
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        var texto1 :String = "Apagado"
        if velocidad == Velocidades.Apagado {
            print("\(Velocidades.Apagado.rawValue) \(texto1)")
            velocidad = Velocidades.VelocidadBaja
            texto1 = "Velocidad Baja"
        }else if velocidad == Velocidades.VelocidadBaja {
            velocidad = Velocidades.VelocidadMedia
            texto1 = "Velocidad Media"
        }else if velocidad == Velocidades.VelocidadMedia {
            velocidad = Velocidades.VelocidadAlta
            texto1 = "Velocidad Alta"
        }else if velocidad == Velocidades.VelocidadAlta {
            velocidad = Velocidades.VelocidadMedia
            texto1 = "Velocidad Media"
        }
        let resultado = (velocidad.rawValue, texto1)
        return resultado
    }
}

var auto = Auto()

for var i in 0...20 {
    
    auto.cambioDeVelocidad()
    print("\(auto.velocidad.rawValue), \(auto.velocidad)")
    
}

