package colineal

class Detalle {


    String cantidad
    Cabecera cabecera
    Producto producto
    static belongsTo =  [Cabecera, Producto]


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
