<?php

require './head.php';
$head = head();
print($head);

echo"<body>";

echo "<h1 class='h2'> Prueba Consumir datos </h1>";

echo 
"<div class='datos'> 
<button type='button' id='consulta' class='btn btn-success datos'>Consulta</button>
</div>";

echo "<div class='container'>";
echo "<table class='table table-hover'> ";
    echo 
    "<thead> 
    <tr>
    <th scope='col'>ID</th>
    <th scope='col'>User Name</th>
    <th scope='col'>First Name</th>
    <th scope='col'>Last Name</th>
    </tr>
    </thead>
    <tbody id='tbl'></tbody>";
echo "</table>";
echo "</div>";


echo "</body>";
