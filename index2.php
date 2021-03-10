<?php
$clearpass = '1234';

$hash = password_hash($clearpass, PASSWORD_DEFAULT);
echo "Encrypted Password" .$hash. "<br>";

//verify

$loginpass = '1234';

$verify = password_verify($loginpass, $hash);

var_dump($verify);echo "</br>";

echo $verify ? "ok" : "wrong user";


?>