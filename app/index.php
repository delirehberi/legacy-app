<?php
include('./database.php');

$query =$dbh->query("SELECT count(*) FROM users");

echo $query->fetchColumn().' users exists</br>';
echo "Hello world!";

