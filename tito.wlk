object tito {
    var cantidad = 0
    var bebida = cianuro
    method peso() = 70
    method inerciaBase() = 490
    method consumir(unaCantidad,unaBebida) {
        bebida = unaBebida
        cantidad = unaCantidad
    }
    method bebida() = bebida

    method velocidad() {
        return bebida.rendimiento(cantidad)
        * self.inerciaBase() / self.peso()
    }
}

object wisky {
    method rendimiento(cantidad) = 0.9 ** cantidad
}
object cianuro {
    method rendimiento(cantidad) = 0
}

object terere {
    method rendimiento(cantidad) {
        return 1.max(cantidad * 0.1)
        //tambien (cantidad * 0.1).max(1)
    }
}

object licuadoDeFrutas {
    const property nutrientes = []

    method agregarNutrientes(unNutriente) {
        nutrientes.add(unNutriente)
      
    }
    method rendimiento(cantidad) {
        //return nutrientes.sum({unaFruta -> unaFruta.nutrientes()})
        return nutrientes.sum() * 1.max((cantidad.div(1000)))
      
    }

}

object saborizada {
    method rendimiento(cantidad) {

        return 1+ bebida.rendimiento(cantidad)/ 4
      
    }
  
}