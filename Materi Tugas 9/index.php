<?php
    require("animal.php");
    

    $sheep=new animal("shaun");

    echo "nama domba: " . $sheep->name ; // "shaun"
    echo "jumlah kaki: " . $sheep->legs ; // 4
    echo "apakah berdarah dingin: " . $sheep->cold_blooded ; // "no"

    $frog=new animal("buduk");

    echo "nama kodok: " . $frog->name;
    echo "jumlah kaki: " . $frog->legs;
    echo "apakah berdarah dingin: " . $frog->cold_blood;

    $monkey=new animal("wukong");

    echo "nama: " . $monkey->name;
    echo "jumlah kaki: " . $monkey->leg;
    echo "apakah berdarah dingin: " . $monkey->cold_blooded;
    
?>