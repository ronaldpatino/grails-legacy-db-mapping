package colineal

class Detalle {


    Integer cantidad
    Cabecera cabecera
    Producto producto


    static belongsTo =  Cabecera

    static mapping = {

        table 'DET010'
        version false
        columns {
            id column:'CODDETALLE'
            producto column:'CODPROD'
            cantidad column:'CANTIDAD'
            cabecera column: 'CODCABECERA'
        }
    }
}
