<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Factura</title>
    <link rel="stylesheet" type="text/css" media="screen,print"  href="${resource(dir: 'css', file: 'print.css')}" />

</head>
<body>
<h1>Factura</h1>
<table class="sample_table">
    <thead>
    <tr>
        <th>ID</th>
        <th>Cantidad</th>
        <th>Descripcion</th>
        <th>Valor Unitario</th>
        <th>Valor Total</th>

    </tr>
    </thead>
    <tbody>
    <g:each in="${cabeceraInstance.detalles}" status="i" var="detalles">
        <tr>
            <td>${detalles.producto.id}</td>
            <td>${detalles.cantidad}</td>
            <td>${detalles.producto.nombre}</td>
            <td>${detalles.producto.precio}</td>
            <td>${detalles.producto.precio.toBigDecimal() * detalles.cantidad}</td>
        </tr>
    </g:each>
    </tbody>
    <tbody>
        <tr>
            <td colspan="3"></td>
            <td>SUBTOTAL</td>
            <td>$ ${subTotal}</td>
        </tr>
        <tr>
            <td colspan="3"></td>
            <td>IVA</td>
            <td>$ ${iva}</td>
        </tr>
    <tr>
        <td colspan="3"></td>
        <td>TOTAL</td>
        <td>$   ${total}</td>
    </tr>

    </tbody>
</table>
</body>
</html>
