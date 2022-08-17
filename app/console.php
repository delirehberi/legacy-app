<?php
require_once(__DIR__.'/vendor/autoload.php');

use SevenCupsMigratos\Command\MigrationCommand;
use Symfony\Component\Console\Application;
 

include('./database.php');
//dbh comes from database.php
$application = new Application('My Console','1.0');

$application->add(new MigrationCommand($dbh)); 

$application->run();
