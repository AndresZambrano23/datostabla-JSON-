<?php

require '../ConexionBD/Conexionbd.php';

class Usuariomodelo{

    public function MostrarDatos(){
        $db = Conexion();

        try {
            $resultado= $db->prepare("SELECT id, user_name, first_name, last_name  FROM vtiger_users");
            $resultado->execute();
            $res= [];
            foreach ($resultado as $dato ) {
                $res[] = $dato;
            }
            $json = json_encode($res);
                print_r($json);
                return $json;
        } catch (PDOException $e) {
            echo "Error al insertat datos ".$e->getMessage();
        }

    }
}