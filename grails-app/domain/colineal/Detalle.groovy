package colineal

class Detalle {

    String coditem
    String cantidad
    Cabecera cabecera

    static belongsTo =  Cabecera


    static mapping = {

        table 'DET010'
        version false
        columns {
            id column:'CODDETALLE'
            coditem column:'CODITEM'
            cantidad column:'CANTIDAD'
            cabecera column: 'CODCABECERA'
        }
    }
}
