<?php
require 'vendor/autoload.php'; // If you're using Composer (recommended)
// Comment out the above line if not using Composer
// require("<PATH TO>/sendgrid-php.php");
// If not using Composer, uncomment the above line and
// download sendgrid-php.zip from the latest release here,
// replacing <PATH TO> with the path to the sendgrid-php.php file,
// which is included in the download:
// https://github.com/sendgrid/sendgrid-php/releases

$email = new \SendGrid\Mail\Mail(); 
$email->setFrom("tiwarishani01@gmail.com", "Class Link");
$email->setSubject($subject);
$email->addTo($user_email, $user_name);
$email->addContent("text/html",$mail);
$sendgrid = new \SendGrid('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');
try {
    $response = $sendgrid->send($email);
    print $response->statusCode() . "\n";
    print_r($response->headers());
    print $response->body() . "\n";
} catch (Exception $e) {
    echo 'Caught exception: '. $e->getMessage() ."\n";
}