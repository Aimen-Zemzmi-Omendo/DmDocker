FROM php:7.2-apache
 RUN docker-php-ext-install pdo pdo_mysql 
<?php
add_action( 'phpmailer_init', 'setup' );
function setup( PHPMailer $phpmailer ) {
    $phpmailer->Host = 'mailhog';
    $phpmailer->Port = 1025;
    $phpmailer->IsSMTP();
}