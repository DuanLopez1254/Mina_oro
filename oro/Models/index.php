<?php
class index extends Database{

    public function all(){
        try{
            $result = parent::connect()->prepare("SELECT * FROM rutas WHERE id_esta = 1 AND Encargado = 1 AND porcentaje > 49");
            $result->execute();
            return $result->fetchAll();
        }catch(Exception $e){
            die($e->getMessage());
        }
    }
    public function alls(){
        try{
            $result = parent::connect()->prepare("SELECT * FROM rutas WHERE id_esta = 1 AND Encargado = 2 and Porcentaje > 49");
            $result->execute();
            return $result->fetchAll();
        }catch(Exception $e){
            die($e->getMessage());
        }
    }
    public function update_ruta($data){
        try{
            $result = parent::connect()->prepare("UPDATE rutas SET Id_esta = ? WHERE Id = ?");
            $result->bindParam(1, $data['Id_esta'], PDO::PARAM_STR);
            $result->bindParam(2, $data['Id'], PDO::PARAM_INT);
            return $result->execute();
        }catch (Exception $e){
            die("location:?controller=index " . $e->getMessage());
        }
    }
public function register($data){
    try{
        $result = parent::connect()->prepare("INSERT INTO rutas (Cuadrante,Porcentaje,Encargado) VALUES (?,?,?)");
        $result->bindParam(1, $data['Cuadrante'], PDO::PARAM_STR);
        $result->bindParam(2, $data['Porcentaje'], PDO::PARAM_STR);
        $result->bindParam(3, $data['Encargado'], PDO::PARAM_STR);
        return $result->execute();
    }catch (Exception $e){
       die("Error index->register() " . $e->getMessage());
    }
}



}