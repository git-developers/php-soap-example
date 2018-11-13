<?php

require_once('config.php');
require_once('modBaseWebService.php');
require_once($k_PathEngine . '/Lib/objDB.php');
require_once($k_PathEngine . '/Lib/incMisc.php');

class modWebService extends modBaseWebService {

    function modWebService(array $aRows = []) {
        $this->getCodesFromRows($aRows);
    }

    function Manager() {

    }

    function createServer() {

        function dataReporteDiario()
        {
            global $objDB, $k_DB_Host, $k_DB_Database, $k_DB_User, $k_DB_Password;

            $response = [];
            $objDB->Open($k_DB_Host,$k_DB_Database,$k_DB_User,$k_DB_Password);
            $response[0]['listImportacion'] = $objDB->GetRows("call sp_data_reporte_diario('I')");
            $objDB->Close();

            $objDB->Open($k_DB_Host,$k_DB_Database,$k_DB_User,$k_DB_Password);
            $response[1]['listExportacion'] = $objDB->GetRows("call sp_data_reporte_diario('E')");
            $objDB->Close();

            return $response;
        }

        function listIncoterm()
        {
            global $objDB, $k_DB_Host, $k_DB_Database, $k_DB_User, $k_DB_Password;
            $objDB->Open($k_DB_Host,$k_DB_Database,$k_DB_User,$k_DB_Password);

            $response = $objDB->GetRows("call sp_list_incoterm()");
            $objDB->Close();

//            echo "POLLO :: <pre>";
//            print_r($response);
//            exit;


            return $response;
        }

        function crudProducto($parameters)
        {
            global $objDB, $k_DB_Host, $k_DB_Database, $k_DB_User, $k_DB_Password;
            $objDB->Open($k_DB_Host,$k_DB_Database,$k_DB_User,$k_DB_Password);

            $arrayProducto = $parameters->listObjProducto;

            if (!is_array($arrayProducto)) {
                $arrayProducto = [$arrayProducto];
            }

            $response = [];
            foreach ($arrayProducto as $key => $o){

                $objDB->Execute("call sp_crud_product('". strtoupper($o->flag) ."',
                                                                    '$o->codigo',
                                                                    '$o->nombre',
                                                                    '$o->descripcion',
                                                                    '$o->categoria',
                                                                    '$o->estado',
                                                                    @idProducto)");

                $response[]['idProducto'] = $objDB->GetValue("SELECT @idProducto");
            }

            $objDB->Close();

            return $response;
        }

        function crudEmbarque($parameters)
        {
            global $objDB, $k_DB_Host, $k_DB_Database, $k_DB_User, $k_DB_Password;
            $objDB->Open($k_DB_Host,$k_DB_Database,$k_DB_User,$k_DB_Password);

            $arrayEmbarque = $parameters->listObjEmbarque;

            if (!is_array($arrayEmbarque)) {
                $arrayEmbarque = [$arrayEmbarque];
            }

            $response = [];
            foreach ($arrayEmbarque as $key => $o){

                if ( empty($o->strEmbarque) && (strtoupper($o->flag) == 'C') ) {
                    $o->strEmbarque = modBaseWebService::generarStrEmbarque($o->strCodigoProd,
                                                                        $o->strTipo,
                                                                        $o->intAnnoEmbarque);
                }

                $result = $objDB->Execute("call sp_crud_embarque('". strtoupper($o->flag) ."',
                                                                            '$o->hojaAccion',
                                                                            '$o->dateHojaAccion',
                                                                            '$o->fltVolumenContractual',
                                                                            '$o->fltToleranciaVolumenOpeMayor',
                                                                            '$o->fltToleranciaVolumenOpeMenor',
                                                                            '$o->incoterm',
                                                                            '$o->strCodigoProd',
                                                                            '$o->strTipo',
                                                                            '$o->intAnnoEmbarque',
                                                                            '$o->strModalidad',
                                                                            '$o->dateDescarga',
                                                                            '$o->strEmbarque')");

                if ($result) {
                    $response[$key]['posicion'] = $o->posicion;
                    $response[$key]['strEmbarque'] = $o->strEmbarque;
                }
            }

            $objDB->Close();

            return $response;
        }

        $server = new SoapServer(__DIR__ . DIRECTORY_SEPARATOR . 'services.wsdl',[
            'cache_wsdl' => WSDL_CACHE_NONE,
            'encoding' => 'ISO-8859-1'
        ]);
        $server->addFunction('crudProducto');
        $server->addFunction('crudEmbarque');
        $server->addFunction('listIncoterm');
        $server->addFunction('dataReporteDiario');
        $server->handle();
    }

    function getCosude() {
        global $k_WS_Cosude_Url, $k_WS_Cosude_Proxy_Host, $k_WS_Cosude_Proxy_Port;

        try{

            $out = [];
            $client = new \SoapClient($k_WS_Cosude_Url, [
                'proxy_host' => $k_WS_Cosude_Proxy_Host,
                'proxy_port' => $k_WS_Cosude_Proxy_Port
            ]);

            $response = $client->obtenerDatosCosude($this->nroCosude);

            if ($response->datosCosude->codigoRespuesta){
                return $out;
            }

            if (is_array($response->datosCosude->lstCosude)) {
                foreach ($response->datosCosude->lstCosude as $key => $row) {
                    $out[$row->nroAcuerdoCosude] = $row;
                }
            } else {
                $out[$response->datosCosude->lstCosude->nroAcuerdoCosude] = $response->datosCosude->lstCosude;
            }

            return $out;

        }catch(\SoapFault $e){
            print_r($e->getMessage());
        }
    }

    function getTender() {
        global $k_WS_Tender_Url, $k_WS_Tender_Proxy_Host, $k_WS_Tender_Proxy_Port;

        try{

            $out = [];
            $client = new \SoapClient($k_WS_Tender_Url, [
                'proxy_host' => $k_WS_Tender_Proxy_Host,
                'proxy_port' => $k_WS_Tender_Proxy_Port
            ]);

            $response = $client->obtenerDatosTender($this->nroEmbarque);

            if ($response->respuestaTender->codigoRespuesta){
                return $out;
            }

            if (is_array($response->respuestaTender->lstDatosTender)) {
                foreach ($response->respuestaTender->lstDatosTender as $key => $row) {
                    $out[$row->codigoEmbarque] = $row;
                }
            } else {
                $out[$response->respuestaTender->lstDatosTender->codigoEmbarque] = $response->respuestaTender->lstDatosTender;
            }

            return $out;

        }catch(\SoapFault $e){
            print_r($e->getMessage());
        }
    }
}

?>