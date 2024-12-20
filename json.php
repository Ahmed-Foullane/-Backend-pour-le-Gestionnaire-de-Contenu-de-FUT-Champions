<?php
header("Content-Type: application/json");

$servername = "db"; 
$username = "admin";  
$password = "admin"; 
$dbname = "myapp";    

$link = mysqli_connect($servername, $username, $password, $dbname);

$sql_att = "SELECT * from players_income_infos pi, attack_players ap, club c, nationality n WHERE pi.id_player_income_infos = ap.id_attack and c.id_c = pi.id_club and n.id_n = pi.id_nationality;";
$sql_gk = "SELECT * from players_income_infos pi, goal_keepers gk, club c, nationality n WHERE pi.id_player_income_infos = gk.id_goal_plaer and c.id_c = pi.id_club and n.id_n = pi.id_nationality;";
$result_att = mysqli_query($link, $sql_att);
$result_gk = mysqli_query($link, $sql_gk);
    
    $players = [];
    while ($row = mysqli_fetch_array($result_att)) {
        $players[] = $row;  
    }
    while ($row = mysqli_fetch_array($result_gk)) {
        $players[] = $row;  
    }

    
    echo json_encode($players); 

    mysqli_close($link);

?>
