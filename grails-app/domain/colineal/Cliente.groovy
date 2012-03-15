package colineal

class Cliente {


    String  nombre
    String  apellido
    Integer codciudad


    static mapping = {

        table 'CLI030'
        version false
        columns {
            id column:'CODCLIENTE'
            nombre column:'NOMBRE'
            apellido column:'APELLIDO'
            codciudad column: 'CODCIUDAD'


        }
    }

}
