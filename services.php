<?php

header('Content-type: text/xml');

echo file_get_contents(__DIR__ . DIRECTORY_SEPARATOR . 'services.wsdl');

?>