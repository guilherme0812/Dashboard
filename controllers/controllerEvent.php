<?php
include("../src/config/config.php");

$objEvents = new \Classes\ClassEvents();
$eventList = $objEvents->eventsPerPerson();
$dataNumbers = [];
$dataNames = [];
//var_dump($eventList);

for($i=0; $i<count($eventList); $i++) {
    //print_r($eventList[$i]);
    array_push($dataNumbers, $eventList[$i]['qtd']);
    array_push($dataNames, $eventList[$i]['name']);

    /*foreach($eventList[$i] as $column => $data) {
        echo $data . ' ';
    }*/
}

$json = [
    'datas'=>$dataNumbers,
    'names'=>$dataNames
];
echo json_encode($json);