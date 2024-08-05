************************************************************************
*     * 700865 06/03/17 JMCG VALIDAR RUC EMPLEADOR Y MONEDA           **
120112* FO4101 12/01/12 JMCG REQ. 27695. VALIDACION CODIGO UNICO CLIENT*
************************************************************************
      ***************************************************************   00000010
      **  SISTEMA  : T A R J E T A   D E   C R E D I T O            *   00000020
      **  OBJETIVO : INTERFASE VULCANO                              *   00000040
      **  DESCRIPC.: VALIDACION AFILIACION DE CLIENTE EN CTA SUELDO *   00000040
      **  COPY     : ADQCWVC                                        *   00000050
      **  LONGITUD : 2000 BYTES                                     *   00000060
      *-------------------------------------------------------------*   00000080
      *-                                                                00001280
       01  ADQCWVC.                                                     00001190
      *-------------------------------------------------------------    00001280
           03  WVC-HEADER.                                              00001200
      *-                               ---  FECHA                       00001280
               05  WVC-HDR-FECHA       PIC  X(06).                      00001230
      *-                               ---  HORA                        00001280
               05  WVC-HDR-HORA        PIC  X(06).                      00001230
      *-                               ---  CODIGO DE USUARIO FUNCIONAL 00001280
               05  WVC-HDR-USRFUN      PIC  X(08).                      00001230
      *-                               ---  ORIGEN                      00001280
               05  WVC-HDR-ORIGEN      PIC  X(03).                      00001230
      *-                               ---  PROGRAMA A INVOCAR          00001280
               05  WVC-HDR-PGMINV      PIC  X(08).                      00001230
      *-                               ---  NUMERO DE INVOCACION        00001280
               05  WVC-HDR-NUMINV      PIC  9(02).                      00001230
      *-                               ---                              00001280
               05  WVC-HDR-FILLER      PIC  X(27).                      00001230
      *-                               ---                              00001280
      *-------------------------------------------------------------    00001280
           03  WVC-INPUT.                                               00001200
      *-                               ---  CODIGO UNICO                00001280
               05  WVC-COD-UNICO       PIC  9(10).                      00001230
      *-                               ---  CODIGO DE PRODUCTO          00001280
               05  WVC-COD-PRODUCTO    PIC  9(03).
700865*-                               ---  RUC DE EMPLEADOR
700865         05  WVC-RUC             PIC 9(11).
700865*-                               ---  CODIGO MONEDA A APERTURAR
700865         05  WVC-CODMON          PIC 9(03).
      *-
700865         05  WVC-INP-FILLER      PIC  X(913).                     00001230
700865*        05  WVC-INP-FILLER      PIC  X(927).                     00001230
      *-                               ---                              00001280
      *-------------------------------------------------------------    00001280
           03  WVC-RETURN.                                              00001200
      *-                               ---  INDICADOR TOLD              00001280
               05  WVC-RET-TOLD        PIC  9(04).                      00001230
                   88  WVC-TLD-OK      VALUE  00.                       00001230
                   88  WVC-TLD-ERR     VALUE  92.                       00001230
      *-                               ---  ESTADO DE RETORNO           00001280
               05  WVC-RET-ESTADO      PIC  9(02).                      00001230
                   88  WVC-OK          VALUE  00.                       00001230
                   88  WVC-WARNING     VALUE  10.                       00001230
                   88  WVC-ERR         VALUE  20.                       00001230
                   88  WVC-ERR-CICS    VALUE  80.                       00001230
                   88  WVC-ERR-DB2     VALUE  90.                       00001230
      *-                               ---  CODIGO DE ERROR             00001280
               05  WVC-RET-CODERR      PIC  9(04).                      00001230
      *-                               ---  MENSAJE DE ERROR            00001280
               05  WVC-RET-MSGERR      PIC  X(60).                      00001230
      *-                               ---                              00001280
               05  WVC-RET-FILLER      PIC  X(20).                      00001230
      *-                               ---                              00001280
      *-------------------------------------------------------------    00001280
           03  WVC-OUTPUT.                                              00001200
      *-                               ---  0=NO OK   1=OK              00001280
               05  WVC-OUT-FLGRPT      PIC  X(01).                      00001230
      *-                               ---  MENSAJE DE ERROR            00001280
               05  WVC-OUT-MENSAJ      PIC  X(60).
      *-
               05  WVC-OUT-FILLER      PIC  X(849).                     00001230
      *-                                                                00001390
      *-------------------------------------------------------------*   00003170
      *--071----------------- FIN ADQCWVC---------------------------*   00003170
      *-------------------------------------------------------------*   00003170
