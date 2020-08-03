<?php

$data= json_decode(file_get_contents("CategoriasMercadoLibreARG",true));
// print_r($data);

for ($i=0; $i < 10 ; $i++) { 
    echo $data[$i] ["name"]."<br>";
}
?>