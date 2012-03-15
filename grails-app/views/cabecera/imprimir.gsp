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
        <th>Name</th>
        <th>Age</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${cabeceraInstance.detalles}" status="i" var="detalles">
        <tr>
            <td>${detalles.coditem}</td>
            <td>${detalles.cantidad}</td>
            <td>NOMBRE</td>
        </tr>
    </g:each>
    <tr>
        TOTALES
    </tr>
    </tbody>
</table>
</body>
</html>
