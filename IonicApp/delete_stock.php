<?php
if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header("Access-Control-Allow-Credentials: true");
    header("Access-Control-Max_Age: 86400");
}


//MAS headers para el correcto funcionamiento del script
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD'])) {
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    }

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'])) {
        header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
    }

    exit(0);
}

require "dbConnect.php";

$data = file_get_contents("php://input");
if (isset($data)) {
    $request = json_decode($data);

    $nombre = $request->nombre;
    $codigo = $request->codigo;
    $id = $request->id;
}

$deleteStockQuery = ("DELETE FROM productos WHERE nombre = '$nombre' and codigo = '$codigo' ");
$deleteEntry = ("DELETE FROM entradas WHERE producto_id = $id");
$deleteDepart = ("DELETE FROM salidas WHERE producto_id = $id");

if ($db->query($deleteDepart) === true) {
    if ($db->query($deleteStockQuery) === true) {
        if ($db->query($deleteEntry) === true)
            $response = "success";
    } else {
        $response = "Error con la base de datos" . $deleteStockQuery . $db->error;
    }
    
} else {
    if ($db->query($deleteStockQuery) === true) {
        if ($db->query($deleteEntry) === true)
            $response = "success";
    } else {
        $response = "Error con la base de datos" . $deleteStockQuery . $db->error;
    }
}



echo json_encode($response);

$db->close();

?>