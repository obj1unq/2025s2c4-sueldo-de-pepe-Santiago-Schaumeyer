import wollok.vm.*
object pepe {
    var property categoria = cadete
    var bonoResultados = bonoResultadosNulo
    var bonoPresentismo = bonoPresentismoNulo
    var property faltas = 0

    method neto() {
        return categoria.neto() 
    }
    method sueldo() = self.neto() + bonoResultados.valor(self) + bonoPresentismo.valor(self)
    //setter
    method categoria(_categoria) {
        categoria = _categoria
    }
    method categoria() = categoria 
    //setter
    method bonoResultados(_bonoResultados) {
        bonoResultados = _bonoResultados
    }
    //setter
    method bonoPresentismo(_bonoPresentismo) {
        bonoPresentismo = _bonoPresentismo
    }
    //setter

}

object cadete {
  method neto() = 20000
}

object gerente{
    method neto() = 15000
}

// BONOS DE RESULTADOS
object bonoResultadosPorcentaje {
    const porcentajeAumento = 0.10
    method valor(empleado){
        return empleado.neto() * porcentajeAumento
    }
}

object bonoResultadosFijo {
    const aumentoFijo = 800
    method valor(empleado){
        return aumentoFijo
    }
}

object bonoResultadosNulo {
    method valor(empleado){
        return 0
    }
}

// BONOS DE PRESENTISMO
object bonoPresentismoNormal{
    method valor(empleado){
        if (empleado.faltas() == 0) {
            return 2000
        } else if (empleado.faltas() == 1) {
            return 1000
        } else {
            return 0
        }
    }
}

object bonoPresentismoAjuste{
    method valor(empleado){
        if(empleado.faltas() == 0){
            return 100
        } else{
            return 0
        }
    }
}


object bonoPresentismoDemagogico{

    method valor(empleado){
        if(empleado.neto() < 18000){
            return 500
        } else {
            return 300
        }
    }
}

object bonoPresentismoNulo{
    method valor(empleado) {
        return 0
    }
}
