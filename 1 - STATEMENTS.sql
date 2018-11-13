/**
* ALTER TABLE: tbloperaciones
*/
ALTER TABLE tbloperaciones ADD strCosude VARCHAR(15);
ALTER TABLE tbloperaciones ADD strComentarios TEXT;
ALTER TABLE tbloperaciones ADD dateDescarga DATE DEFAULT NULL;
ALTER TABLE tbloperaciones ADD fltToleranciaVolumenOpeMayor DECIMAL(10,4);
ALTER TABLE tbloperaciones ADD fltToleranciaVolumenOpeMenor DECIMAL(10,4);
ALTER TABLE tbloperaciones ADD fltDiferenciaVolumetrica DECIMAL(10,4);
ALTER TABLE tbloperaciones ADD fltVariacionVolumetrica DECIMAL(10,4);
ALTER TABLE tbloperaciones ADD ftlVentanaContractual DECIMAL(10,4);
ALTER TABLE tbloperaciones ADD ftlVentanaNominada DECIMAL(10,4);
ALTER TABLE tbloperaciones ADD ftlVentanaAcortada DECIMAL(10,4);
ALTER TABLE tbloperaciones ADD strVentanaFlotante VARCHAR(45);
ALTER TABLE tbloperaciones ADD fltEta DECIMAL(3,2);
ALTER TABLE tbloperaciones ADD intCargamentoAsignado BIGINT(20);
ALTER TABLE tbloperaciones ADD strNroPedidoSAP VARCHAR(20);
ALTER TABLE tbloperaciones ADD strNroTransporteSAP VARCHAR(20);
ALTER TABLE tbloperaciones ADD intEvaluacionInspector INT(11);
ALTER TABLE tbloperaciones ADD strObservacionesInspector TEXT;
ALTER TABLE tbloperaciones ADD intPreciacion INT(11);
ALTER TABLE tbloperaciones ADD strMarcador VARCHAR(45);
ALTER TABLE tbloperaciones ADD strAjuste INT(11);
ALTER TABLE tbloperaciones ADD strTerminosPago VARCHAR(45);
ALTER TABLE tbloperaciones ADD strPenalidad VARCHAR(45);
ALTER TABLE tbloperaciones ADD intPenalidadHora INT(11);
ALTER TABLE tbloperaciones ADD idAgenteMaritimo INT(11);
ALTER TABLE tbloperaciones ADD datePenalidadFechaPago DATE DEFAULT NULL;
ALTER TABLE tbloperaciones ADD strSobreCostos VARCHAR(45);
ALTER TABLE tbloperaciones ADD fltSobreCostosMonto DECIMAL(14,4);
ALTER TABLE tbloperaciones ADD strSobreCostosFactura VARCHAR(45);
ALTER TABLE tbloperaciones ADD dateSobreCostosFechaPago DATE DEFAULT NULL;
ALTER TABLE tbloperaciones ADD timeNOR VARCHAR(10);


-- ALTER TABLE tbloperaciones ADD fltPenalidadMonto DECIMAL(14,4);
-- ALTER TABLE tbloperaciones ADD strPenalidadFactura VARCHAR(45);
-- ALTER TABLE tbloperaciones ADD strObservaciones TEXT;


/**
* INSERT TO TABLE: tblparametro
*/
ALTER TABLE tblparametro MODIFY descripcion TEXT;
ALTER TABLE tblparametro MODIFY codigo VARCHAR(45);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EVA.INSP.1', '<= 10', 'No aceptado', 40, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EVA.INSP.2', '10 – 15', 'Aceptado condicional', 40, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EVA.INSP.3', '>= 15', 'Aceptado', 40, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('TERM.PAGO.1', 'term 1', 'Termino 1', 50, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('TERM.PAGO.2', 'term 2', 'Termino 2', 50, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('TERM.PAGO.3', 'term 3', 'Termino 3', 50, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('PRECIACION.1', 'preciacion 1', 'Preciación 1', 60, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('PRECIACION.2', 'preciacion 2', 'Preciación 2', 60, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EXCEL.CARACT.1', 'fltApi', 'fltApi', 70, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EXCEL.CARACT.2', 'fltAzufre', 'fltAzufre', 70, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EXCEL.CARACT.3', 'fltCetanoIdx', 'fltCetanoIdx', 70, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EXCEL.CARACT.4', 'fltCetanoNum', 'fltCetanoNum', 70, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EXCEL.CARACT.5', 'fltcoldsoakfilterability', 'fltcoldsoakfilterability', 70, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EXCEL.CARACT.6', 'fltPorcEthanol', 'fltPorcEthanol', 70, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EXCEL.CARACT.7', 'fltflashpoint', 'fltflashpoint', 70, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EXCEL.CARACT.8', 'fltFreezingPoint', 'fltFreezingPoint', 70, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EXCEL.CARACT.9', 'fltNAPHTHENESAROMATICS', 'fltNAPHTHENESAROMATICS', 70, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EXCEL.CARACT.10', 'fltSiAlppm', 'fltSiAlppm', 70, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EXCEL.CARACT.11', 'fltViscosity', 'fltViscosity', 70, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('EXCEL.CARACT.12', 'fltwatermass', 'fltwatermass', 70, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('AGENTE.MARITIMO.1', 'Agente Maritimo 1', 'Agente Maritimo 1', 100, 1);
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) VALUES ('AGENTE.MARITIMO.2', 'Agente Maritimo 2', 'Agente Maritimo 2', 100, 1);


/**
* INSERT TO TABLE: tblparametro
*/
INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_JEFE_NOMBRE_1', 'texto del word', 
'Rafael Martínez Román',
90, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_JEFE_CARGO_1', 'texto del word', 
'SUB MANAGEMENT PURCHASE OF HYDROCARBONS',
90, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_JEFE_NOMBRE_2', 'texto del word', 
'ARTURO MUÑOZ RODRIGUEZ',
90, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_JEFE_CARGO_2_A', 'texto del word', 
'JEFE UNIDAD VENTA DE CRUDO Y DERIVADOS',
90, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_JEFE_CARGO_2_B', 'texto del word', 
'SUB GERENCIA SUMINISTRO Y VENTAS INTERNACIONALES',
90, 1);


INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_PETRO_1', 'texto del word', 
'Petróleos del Perú - PETROPERU S.A. - RUC 20100128218',
90, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_PETRO_2', 'texto del word', 
'Canaval Moreyra Nº 150.Lima 27, Perú',
90, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_PETRO_3', 'texto del word', 
'Sub Management Purchase of Hydrocarbons',
90, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_PETRO_4', 'texto del word', 
'Attn.: Mr. Rafael Martínez Román',
90, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_PETRO_5', 'texto del word', 
'Telephone: 001-511-614-5000 (EXT: 13110)',
90, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_EXPORTACION_2_A', 'texto del word', 
'Petróleos del Perú - PETROPERU S.A. y REPLACE_WORD_PROVEEDOR.  
nominan a su compañía como Inspectores Independientes para supervisar el siguiente 
embarque en el puerto de carga; incluyendo calidad y cantidad. 
',
81, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_EXPORTACION_3_A', 'texto del word', 
'3/3 Conocimientos de Embarque Originales, y 03 Conocimientos de Embarque No 
Negociable, emitido a: REPLACE_WORD_PROVEEDOR indicando:
',
82, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_IMPORTACION_1_A', 'texto del word', 
'Petróleos del Perú - PETROPERU S.A. and REPLACE_WORD_PROVEEDOR. hereby nominate your Company as Independent Inspectors 
to survey the following cargo at loadport and destinations ports, including quality and quantity.
',
83, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_IMPORTACION_1_G', 'texto del word', 
'Note: Bill of Lading figures will be based on shore tanks measurements.',
83, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_IMPORTACION_1_H', 'texto del word', 
'For operative reasons Port procedures, Active Shore Tanks could be used 
for seller to deliver the product. That means, figure of Bill of Lading must be determined 
by vessel’s tank ullages after applying the corresponding experience Factor (VEF).',
83, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_IMPORTACION_1_CONTACT', 'texto del word', 
'###Mrs. Karim Huamán V.|511-614-5000 Ext. 13122|511-614-5000 Ext. 13123
###Ms. Magdalena Sánchez V.|511-96167-2596|511-9686-03746      
###Mr. Ricardo Bisso F.|511-614-5000 Ext. 13612|511-9962-91607
###Mrs. Milca Castillo V.|511-614-5000 Ext. 13121|511-99571-9346
###Mr. Rafael Martínez Román|511-614-5000 Ext. 13110|511-99900-6717
',
83, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_EXPORTACION_2_CONTACT', 'texto del word', 
'###Srta. Mónica Bardález|511-614-5000 Ext. 13132|511-9513-37100
###Sr. Yusko Toscano|511-614-5000 Ext. 13124|511-9418-63157 
###Sr. Raul Soto |511-614-5000 Ext. 13113|511-9513-37258
###Sr. Arturo Muñoz|511-614-5000 Ext. 13140|511-9962-90021
',
81, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_EXPORTACION_3_CONTACT', 'texto del word', 
'###Sr. Yusko Toscano|ytoscano@petroperu.com.pe
###Srta. Mónica Bardález|mbardalez@petroperu.com.pe
###Sr. Raul Soto|rsotog@petroperu.com.pe
###Sr.Arturo Muñoz|amunoz@petroperu.com.pe
',
82, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_IMPORTACION_2_A', 'texto del word', 
'REPLACE_WORD_PROVEEDOR. shall send Petroleos del Perú - Petroperú S.A. fax, as soon as the loading is 
finished and not later than before the date of the arrival of the vessel to discharge port; copies of the 
above mentioned documents. If does not liberate REPLACE_WORD_PROVEEDOR. of the obligation to makeformal 
delivery of the originals within the period of time stated. The copies must be legible and must be obtained only from the originals.
',
84, 1);

INSERT INTO tblparametro (codigo, valor, descripcion, id_grupo, estado) 
VALUES 
('WORD_IMPORTACION_2_B', 'texto del word', 
'In the event that, REPLACE_WORD_PROVEEDOR. did not send Petroleos del Perú - Petroperú S.A. the 
copies of the shipping documents within the established time, and the ship arrives to the discharge 
port before the presentation of these documents to customs authorities, Petroperu must hold the 
product inmobilized in ship tanks until the presentation of the copies of the documents. In this case, 
Petroperu shall not be responsible for demurrages and costs in which it can incur as a result of the 
REPLACE_WORD_PROVEEDOR. failure to fax on time the shipping documents.
',
84, 1);




/**
* ALTER TABLE: tblclientesproveedores
*/
ALTER TABLE tblclientesproveedores ADD strDireccion1 VARCHAR(150);
ALTER TABLE tblclientesproveedores ADD strDireccion2 VARCHAR(150);


/**
* ALTER TABLE: tblproductos
*/
ALTER TABLE tblproductos ADD strCodigoProd VARCHAR(45) AFTER strCodigo, ADD UNIQUE (strCodigoProd);


/**
* ALTER TABLE: tbloperacionesdescargas
*/
ALTER TABLE tbloperacionesdescargas ADD dateDescargaFin DATE DEFAULT NULL AFTER dateDescarga;


/**
* ALTER TABLE: tblinspectorescontratos
*/
ALTER TABLE tblinspectorescontratos ADD strTipo VARCHAR(4) DEFAULT NULL AFTER strContrato;


/**
* ALTER TABLE: tblproductos
*/
ALTER TABLE tblinspectores ADD strContacto VARCHAR(100) AFTER strInspector;



/**
* CREATE TABLE: tblsobreestadia
*/
CREATE TABLE `tblsobreestadia` (
  `idSobreEstadia` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idOperacion` bigint(20) unsigned NOT NULL DEFAULT '0',
  `idPuertoCarga` bigint(20) unsigned NOT NULL DEFAULT '0',
  
  `dateRecepcion` date DEFAULT NULL,
  `strProcede` char(1) NOT NULL DEFAULT '' COMMENT 'valores: S, N',
  `fltMontoSol` decimal(14,4) DEFAULT NULL,
  `fltMontoApr` decimal(14,4) DEFAULT NULL,
  `strNroInforme` varchar(20) NOT NULL DEFAULT '',
  `dateInforme` date DEFAULT NULL,
  `strCondicion` char(1) NOT NULL DEFAULT '' COMMENT 'valores: C, S, P',
  `strMemo` varchar(20) NOT NULL DEFAULT '',
  `dateMemo` date DEFAULT NULL,
  `fltTotLayTime` decimal(5,2) DEFAULT NULL,
  `fltLayProm` decimal(5,2) DEFAULT NULL,
  `fltSobreNeta` decimal(5,2) DEFAULT NULL,
  `fltSobreCarga` decimal(5,2) DEFAULT NULL,
  `strObsCongst` varchar(200) NOT NULL DEFAULT '',
  `strObsShifting` varchar(200) NOT NULL DEFAULT '',
  `strObsEsp` varchar(200) NOT NULL DEFAULT '',
  `strObsDesefe` varchar(200) NOT NULL DEFAULT '',

  PRIMARY KEY (
  `idSobreEstadia`) USING BTREE,
  KEY `fk_tblSobreEstadia_tblOperaciones` (`idOperacion`),
  KEY `fk_tblSobreEstadia_tblPuertos` (`idPuertoCarga`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



/**
* CREATE TABLE: tblsobrestadiadet
*/
CREATE TABLE `tblsobrestadiadet` (
  `idSobreEstadiaDet` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idSobreEstadia` bigint(20) unsigned NOT NULL DEFAULT '0',
  `idPuerto` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fltMtoSobre` decimal(14,4) DEFAULT NULL,
  `fltHrSobre` decimal(5,2) DEFAULT NULL,
  `fltPuerto` decimal(5,2) DEFAULT NULL,
  `fltDemoCon` decimal(5,2) DEFAULT NULL,
  `fltShifting` decimal(5,2) DEFAULT NULL,
  `fltEspera` decimal(5,2) DEFAULT NULL,
  `fltDesEfe` decimal(5,2) DEFAULT NULL,
  `fltCoorFin` decimal(5,2) DEFAULT NULL,
  `fltRegimen` decimal(5,2) DEFAULT NULL,

  PRIMARY KEY (
  `idSobreEstadiaDet`) USING BTREE,
  KEY `fk_tblSobrEstadiaDet_tblSobreEstadia` (`idSobreEstadia`),
  KEY `fk_tblSobrEstadiaDet_tblPuertos` (`idPuerto`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



/**
* ACTUALIZAR LA TABLA: tblinspectorescontratos con el embarque
*/
UPDATE tblinspectorescontratos AS t1
INNER JOIN tbloperaciones AS t2 ON t2.strEmbarque = t1.strArchivo AND t2.sysEliminado = 0
SET t1.strTipo = t2.strTipo;



/**
* CREATE PROCEDURE sp_crud_product
* Esto lo utiliza el Web Service
*/
DROP PROCEDURE IF EXISTS sp_crud_product;
DELIMITER ;;
CREATE PROCEDURE `sp_crud_product`(
	INflag char(1),
	INstrCodigoProd varchar(255),
	INstrProducto varchar(255),
	INstrDescripcion TEXT,
	INidCategoria integer,
	INsysEliminado integer,
	OUT OUTidProducto integer
)
BEGIN

	IF (INstrCodigoProd IS NOT NULL) AND (INflag = 'C') THEN
		INSERT INTO tblproductos 
			(idCategoria, strCodigoProd, strProducto, strDescripcion, blnActivo, sysEliminado)
		VALUES
			(INidCategoria, INstrCodigoProd, INstrProducto, INstrDescripcion, 1, 0)
		;
		SET OUTidProducto = LAST_INSERT_ID();	
	ELSEIF (INstrCodigoProd IS NOT NULL) AND (INflag = 'M') THEN
		UPDATE tblproductos SET
			idCategoria = INidCategoria,
			strCodigoProd = INstrCodigoProd,
			strProducto = INstrProducto,
			strDescripcion = INstrDescripcion
		WHERE
			strCodigoProd = INstrCodigoProd
			;
		SELECT idProducto INTO OUTidProducto FROM tblproductos WHERE strCodigoProd = INstrCodigoProd;
	ELSEIF (INstrCodigoProd IS NOT NULL) AND (INflag = 'E') THEN
		UPDATE tblproductos SET
			sysEliminado = 1
		WHERE
			strCodigoProd = INstrCodigoProd
			;
		SELECT idProducto INTO OUTidProducto FROM tblproductos WHERE strCodigoProd = INstrCodigoProd;
	END IF;
END
;;
DELIMITER ;




/**
* CREATE PROCEDURE sp_create_embarque
* Esto lo utiliza el Web Service
*/
DROP PROCEDURE IF EXISTS sp_crud_embarque;
DELIMITER ;;
CREATE PROCEDURE `sp_crud_embarque`(
	INflag char(1),
	INstrHojaAccion varchar(255),
	INdateHojaAccion varchar(25),
	INfltVolumenContractual DECIMAL(10,4),
	INfltToleranciaVolumenOpeMayor DECIMAL(10,4),
	INfltToleranciaVolumenOpeMenor DECIMAL(10,4),
	INincoterm varchar(25),

	INstrCodigoProd varchar(45),
	INstrTipo varchar(255),
	INintAnnoEmbarque integer,
	INstrModalidad varchar(5),
	INdateDescarga DATE,
	INstrEmbarque varchar(25)	
)
BEGIN

	DECLARE TBLidIncoterm INT;
	DECLARE TBLidProducto INT;
	SELECT idIncoterm INTO TBLidIncoterm FROM tblincoterm WHERE strIncoterm = INincoterm;
	SELECT idProducto INTO TBLidProducto FROM tblproductos WHERE strCodigoProd = INstrCodigoProd;

	IF (INstrEmbarque <> '') AND (INflag = 'C') THEN
		INSERT INTO tbloperaciones 
			(
			strHojaAccion, dateHojaAccion, fltVolumenContractual,
			fltToleranciaVolumenOpeMayor, fltToleranciaVolumenOpeMenor,
			idProducto, strTipo, intAnnoEmbarque,
			strModalidad, strEstado, dateDescarga, strEmbarque, 
			dateCreacion, idCreadoPor, 
			dateActualizacion, idActualizadoPor, idIncoterm
			)
		VALUES
			(
			INstrHojaAccion, INdateHojaAccion, INfltVolumenContractual,
			INfltToleranciaVolumenOpeMayor, INfltToleranciaVolumenOpeMenor,
			TBLidProducto, INstrTipo, INintAnnoEmbarque,
			INstrModalidad, 'P', INdateDescarga, INstrEmbarque,
			NOW(), 1, 
			NOW(), null, TBLidIncoterm
			)
		;
	ELSEIF (INstrEmbarque <> '') AND (INflag = 'M') THEN
		UPDATE tbloperaciones SET
			strHojaAccion = INstrHojaAccion,
			dateHojaAccion = INdateHojaAccion,
			fltVolumenContractual = INfltVolumenContractual,
			fltToleranciaVolumenOpeMayor = INfltToleranciaVolumenOpeMayor,
			fltToleranciaVolumenOpeMenor = INfltToleranciaVolumenOpeMenor,
			idIncoterm = TBLidIncoterm
		WHERE
			strEmbarque = INstrEmbarque
			;
	END IF;
END
;;
DELIMITER ;



/**
* CREATE PROCEDURE sp_list_incoterm
* Esto lo utiliza el Web Service
*/
DROP PROCEDURE IF EXISTS sp_list_incoterm;
DELIMITER ;;
CREATE PROCEDURE `sp_list_incoterm`()
BEGIN
	SELECT idIncoterm, strIncoterm, strDescripcion FROM tblincoterm WHERE sysEliminado = 0;
END
;;
DELIMITER ;


/**
* CREATE PROCEDURE sp_list_incoterm
* Esto lo utiliza el Web Service
*/
DROP PROCEDURE IF EXISTS sp_data_reporte_diario;
DELIMITER ;;
CREATE PROCEDURE `sp_data_reporte_diario`(INstrTipo char(1))
BEGIN
	SELECT 
	t1.strTipo,
	t2.strProducto AS nombreProducto,
	t1.strEmbarque AS numEmbarque,
	t7.strClienteProveedor AS nombreProveedor,
	t1.fltVolumenContractual AS volumen,
	t1.strVentanaFlotante AS ventanaFlotante,
	t1.ftlVentanaContractual AS ventanaContractual,
	t3.strPuerto AS puertoDescarga,
	t1.strEmbarcacion AS bt,
	t1.fltEta AS eta,
	t4.strInspector AS nombreInspector,
	t5.descripcion AS agenteMaritimo,
	t1.strComentarios AS estadoSituacional,
	CONCAT(t6.Nombres, ' ', t6.Apellidos) AS supervisorAsignado
	FROM tbloperaciones t1
	LEFT JOIN tblproductos t2 ON t2.idProducto = t1.idProducto AND t2.sysEliminado = 0
	LEFT JOIN tblpuertos t3 ON t3.idPuerto = t1.idPuertoDestino AND t3.sysEliminado = 0
	LEFT JOIN tblinspectores t4 ON t4.idInspector = t1.idInspector AND t4.sysEliminado = 0
	LEFT JOIN tblparametro t5 ON t5.idparametro = t1.idAgenteMaritimo AND t5.estado = 1
	LEFT JOIN usuarios t6 ON t6.IDUsuario = t1.intCargamentoAsignado AND t6.sysEliminado = 0
	LEFT JOIN tblclientesproveedores t7 ON t7.idClienteProveedor = t1.idClienteProveedor AND t7.sysEliminado = 0
	WHERE 
	t1.strEstado = 'P' AND
	t1.strTipo = INstrTipo AND 
	t1.sysEliminado = 0
	ORDER BY t1.idOperacion DESC
	;

END
;;
DELIMITER ;




/**
* CREATE PROCEDURE sp_data_reporte_detallado
* Esto lo utiliza el Web Service

-- https://stackoverflow.com/questions/5817395/how-can-i-loop-through-all-rows-of-a-table-mysql
DROP PROCEDURE IF EXISTS sp_data_reporte_detallado;
DELIMITER ;;
CREATE PROCEDURE `sp_data_reporte_detallado`()
BEGIN
	DECLARE cursor_ID_PRODUCTO INT;
	DECLARE cursor_STR_PRODUCTO VARCHAR(100);
	DECLARE done INT DEFAULT FALSE;
	DECLARE cursor_i CURSOR FOR SELECT idProducto, strProducto FROM tblproductos WHERE sysEliminado = 0 ORDER BY idProducto ASC;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
  	OPEN cursor_i;

	read_loop: LOOP
		FETCH cursor_i INTO cursor_ID_PRODUCTO, cursor_STR_PRODUCTO;
		IF done THEN
			LEAVE read_loop;
		END IF;

		INSERT INTO test(idProducto, strProducto) VALUES(cursor_ID_PRODUCTO, cursor_STR_PRODUCTO);

	END LOOP;
	CLOSE cursor_i;

END
;;
DELIMITER ;
*/

/**
* CREATE PROCEDURE sp_data_reporte_detallado
* Esto lo utiliza el Web Service
*/
DROP PROCEDURE IF EXISTS sp_data_reporte_detallado;
DELIMITER ;;
CREATE PROCEDURE `sp_data_reporte_detallado`()
BEGIN
	SELECT 
	t1.idOperacion,
	t1.strTipo,
	t1.strCosude,
	t1.strEmbarque,
	t2.idProducto AS idProducto,
	t2.strProducto AS producto,
	t1.strEmbarcacion AS bt,
	t3.strPuerto AS puertoDestino,
	t1.dateLayCanCarga1 AS fechaCarga,
	t1.dateLayCanDescarga1 AS fechaRecepcion,
	t4.strClienteProveedor AS proveedor,
	t1.fltVolumenContractual AS volbls,
	t1.fltToleranciaVolumenOpeMayor AS volmbls
	FROM tbloperaciones t1
	LEFT JOIN tblproductos t2 ON t2.idProducto = t1.idProducto AND t2.sysEliminado = 0 
	LEFT JOIN tblpuertos t3 ON t3.idPuerto = t1.idPuertoDestino AND t3.sysEliminado = 0
	LEFT JOIN tblclientesproveedores t4 ON t4.idClienteProveedor = t1.idClienteProveedor AND t4.sysEliminado = 0
	WHERE 
	t1.strEstado = 'P' AND
	t1.strTipo IN ('I', 'E') AND 
	t1.sysEliminado = 0 AND
	t2.strProducto <> ''
	ORDER BY t2.idProducto, t1.strCosude ASC
	;
END
;;
DELIMITER ;
