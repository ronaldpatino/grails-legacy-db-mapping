package colineal

class Cabecera {

    Integer codcliente
    String  fecha

    static hasMany = [detalles : Detalle]

    static mapping = {

        table 'CAB020'
        version false
        columns {
            id column:'CODCABECERA'
            codcliente column:'CODCLIENTE'
            fecha column:'FECHA'
            detalles column: 'CODDETALLE'
        }
    }

}
