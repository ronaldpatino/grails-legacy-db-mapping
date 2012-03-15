package colineal

class Cabecera {


    String  fecha
    Cliente cliente

    static hasMany = [detalles : Detalle]



    static mapping = {

        table 'CAB020'
        version false
        columns {
            id column:'CODCABECERA'
            fecha column:'FECHA'
            detalles column: 'CODDETALLE'
            cliente column: 'CODCLIENTE'
        }
    }

}
