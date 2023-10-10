<?php
    class animal{
        public $name;
        public $legs=4;
        public $leg=2;
        public $cold_blooded="no";
        public $cold_blood="yes";

        public function __construct($string){
            $this->name=$string;
        }
    }
?>