<?php

class modBaseWebService {

    var $nroCosude = [];
    var $nroEmbarque = [];

    const CREATE_SERVER = 'create-server';
    const CREATE_CLIENT = 'create-client';
    const CREATE = 'C';
    const TIPO_EXPORTACION = 'E';
    const TIPO_IMPORTACION = 'I';

    function modBaseWebService() {

    }

    function getCodesFromRows($aRows) {
        foreach ($aRows as $key => $row){
            if (isset($row['strCosude']) && !empty($row['strCosude'])){
                $this->nroCosude[] = $row['strCosude'];
            }
            if (isset($row['strEmbarque']) && !empty($row['strEmbarque'])){
                $this->nroEmbarque[] = $row['strEmbarque'];
            }
        }
    }

    function generarStrEmbarque($strCodigoProd, $strTipoOperacion, $intAnnoEmbarque) {
        global $objDB;

        $codigoCategoria = $objDB->GetValue("SELECT tC.strCategoria 
                                              FROM tblcategorias tC 
                                              INNER JOIN tblproductos tP ON tC.idCategoria=tP.idCategoria AND tP.sysEliminado=0 
                                              WHERE tC.sysEliminado=0 AND tP.strCodigoProd='" . $strCodigoProd . "'");

        $strMask = $codigoCategoria . "-___-" . PadL($intAnnoEmbarque,4,"0");

        $strEmbarque =	$objDB->GetValue("
                                        SELECT strEmbarque 
                                        FROM tbloperaciones 
                                        WHERE 
                                        sysEliminado = 0 AND 
                                        strTipo = '$strTipoOperacion' AND 
                                        strEmbarque LIKE '$strMask' 
                                        ORDER BY strEmbarque DESC LIMIT 1");

        $lngSecuencia = 1;

        if(!is_null($strEmbarque)){
            $lngSecuencia = intval(substr($strEmbarque,strlen($codigoCategoria)+1,3));

            if($lngSecuencia <= 0) {
                // Error al generar un nuevo código. Código pre-existente inválido
                return;
            }

            $lngSecuencia++;
        }

        return  $codigoCategoria .
                "-" . PadL($lngSecuencia,3,"0") .
                "-" . PadL($intAnnoEmbarque,4,"0");
    }
}

?>