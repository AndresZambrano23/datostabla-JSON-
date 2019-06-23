<?php

include '../Modelo/UsuarioModelo.php';

$insert = new MostrarDatos();
$mostrar = $insert->UsuariosMostrar();

class MostrarDatos{
    public function UsuariosMostrar(){
        $insertar = new Usuariomodelo();
        $mostrar = $insertar->MostrarDatos();
    }

}