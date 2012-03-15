package colineal

class Producto {

    String nombre
    String precio
    String iva

    static hasOne = [detalle : Detalle]

    static mapping = {

        table 'PROD010'
        version false
        columns {
            id column:'CODPROD'
            nombre column: 'NOMBRE'
            precio column: 'PRECIO'
            iva column: 'IVA'
        }
    }


}
