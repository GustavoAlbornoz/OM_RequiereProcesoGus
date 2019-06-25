<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="DataMapALaBase.map" md5sum="f470f21c8b9e9dfceb4922c5e7f32af2" version="8.0.400" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		DataMapALaBase.map
*   Map declaration(s):	DataMapALaBase
*   Input file(s):		/_235/_56/_0/_10/decisionservice/ws/checklistarqdeventa/checklistarqdeventa/v75_wsdl.wsdl
*   Output file(s):		/listaDocumentoOutWS.xsd
*
*   Note: Do not modify the contents of this file as it is overwritten
*         each time the mapping model is updated.
*****************************************************************************
-->
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xalan="http://xml.apache.org/xslt"
    xmlns:math="http://exslt.org/math"
    xmlns:str="http://exslt.org/strings"
    xmlns:set="http://exslt.org/sets"
    xmlns:date="http://exslt.org/dates-and-times"
    xmlns:exsl="http://exslt.org/common"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:in2="http://www.ibm.com/rules/decisionservice/ChecklistArqDeVenta/ChecklistArqDeVenta/param"
    xmlns:in3="checkListArqDeVenta"
    xmlns:in="http://www.ibm.com/rules/decisionservice/ChecklistArqDeVenta/ChecklistArqDeVenta"
    xmlns:out="http://OM_RequiereProceso_Lib"
    xmlns:map="http://OM_RequiereProceso/DataMapALaBase"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="math str set date exsl map xalan msl"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <msl:datamap>
      <xsl:choose>
        <xsl:when test="not(msl:datamap/dataObject[1]/@xsi:nil)">
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'out:listaDocumentoOutWS'"/>
            </xsl:attribute>
            <xsl:call-template name="map:DataMapALaBase">
              <xsl:with-param name="ChecklistArqDeVentaResponse" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </xsl:when>
        <xsl:otherwise>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'out:listaDocumentoOutWS'"/>
            </xsl:attribute>
            <xsl:attribute name="xsi:nil">
              <xsl:text>true</xsl:text>
            </xsl:attribute>
          </xsl:element>
        </xsl:otherwise>
      </xsl:choose>
    </msl:datamap>
  </xsl:template>

  <!-- This rule represents a type mapping: "in:ChecklistArqDeVentaResponse" to "out:listaDocumentoOutWS".  -->
  <xsl:template name="map:DataMapALaBase">
    <xsl:param name="ChecklistArqDeVentaResponse"/>
    <!-- a simple data mapping: "$ChecklistArqDeVentaResponse/in2:checklist/in3:checklist/NroDeSolicitud"(string) to "nroSolicitud"(string) -->
    <xsl:if test="$ChecklistArqDeVentaResponse/in2:checklist/in3:checklist/NroDeSolicitud">
      <nroSolicitud>
        <xsl:value-of select="$ChecklistArqDeVentaResponse/in2:checklist/in3:checklist/NroDeSolicitud"/>
      </nroSolicitud>
    </xsl:if>
    <!-- a for-each transform: "Documento"(Documento) to "documentos"(documentoOutWS) -->
    <xsl:apply-templates select="$ChecklistArqDeVentaResponse/in2:checklist/in3:checklist/Documentos/Documento" mode="localDocumentoToDocumentos_2021100739"/>
  </xsl:template>

  <!-- This rule represents a for-each transform: "Documento" to "documentos".  -->
  <xsl:template match="Documento"  mode="localDocumentoToDocumentos_2021100739">
    <documentos>
      <integrante>
        <!-- a simple data mapping: "Integrante/idHost"(int) to "idHost"(decimal) -->
        <xsl:if test="Integrante/idHost">
          <xsl:element name="idHost">
            <xsl:value-of select="Integrante/idHost"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "Integrante/Apellido"(string) to "apellido"(string) -->
        <xsl:if test="Integrante/Apellido">
          <xsl:element name="apellido">
            <xsl:value-of select="Integrante/Apellido"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "Integrante/Nombre"(string) to "nombre"(string) -->
        <xsl:if test="Integrante/Nombre">
          <xsl:element name="nombre">
            <xsl:value-of select="Integrante/Nombre"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "Integrante/TipoIntegrante"(string) to "tipoIntegrante"(string) -->
        <xsl:if test="Integrante/TipoIntegrante">
          <xsl:element name="tipoIntegrante">
            <xsl:value-of select="Integrante/TipoIntegrante"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "Integrante/SemaforoIndividual"(string) to "semaforoIndividual"(string) -->
        <xsl:if test="Integrante/SemaforoIndividual">
          <xsl:element name="semaforoIndividual">
            <xsl:value-of select="Integrante/SemaforoIndividual"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "Integrante/ResponsableImpositivo"(boolean) to "responsableImpositivo"(boolean) -->
        <xsl:if test="Integrante/ResponsableImpositivo">
          <xsl:element name="responsableImpositivo">
            <xsl:value-of select="Integrante/ResponsableImpositivo"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "Integrante/Edad"(int) to "edad"(int) -->
        <xsl:if test="Integrante/Edad">
          <xsl:element name="edad">
            <xsl:value-of select="Integrante/Edad"/>
          </xsl:element>
        </xsl:if>
        <!-- a simple data mapping: "Integrante/EstadoCivil"(string) to "estadoCivil"(string) -->
        <xsl:if test="Integrante/EstadoCivil">
          <xsl:element name="estadoCivil">
            <xsl:value-of select="Integrante/EstadoCivil"/>
          </xsl:element>
        </xsl:if>
        <particularidades>
          <!-- a simple data mapping: "Descripcion"(string) to "descripcion"(string) -->
          <xsl:if test="Descripcion">
            <xsl:element name="descripcion">
              <xsl:value-of select="Descripcion"/>
            </xsl:element>
          </xsl:if>
        </particularidades>
      </integrante>
      <!-- a simple data mapping: "DescripcionExtendida"(string) to "descripcionExtendida"(string) -->
      <xsl:if test="DescripcionExtendida">
        <descripcionExtendida>
          <xsl:value-of select="DescripcionExtendida"/>
        </descripcionExtendida>
      </xsl:if>
      <!-- a simple data mapping: "Regla"(string) to "regla"(string) -->
      <xsl:if test="Regla">
        <regla>
          <xsl:value-of select="Regla"/>
        </regla>
      </xsl:if>
      <!-- a simple data mapping: "Descripcion"(string) to "descripcion"(string) -->
      <xsl:if test="Descripcion">
        <descripcion>
          <xsl:value-of select="Descripcion"/>
        </descripcion>
      </xsl:if>
      <!-- a simple data mapping: "NombreDocumento"(string) to "nombreDocumento"(string) -->
      <xsl:if test="NombreDocumento">
        <nombreDocumento>
          <xsl:value-of select="NombreDocumento"/>
        </nombreDocumento>
      </xsl:if>
      <!-- a simple data mapping: "IDDocumento"(int) to "idDocumento"(int) -->
      <xsl:if test="IDDocumento">
        <idDocumento>
          <xsl:value-of select="IDDocumento"/>
        </idDocumento>
      </xsl:if>
      <!-- a simple data mapping: "Obligatoriedad"(string) to "obligatoriedad"(string) -->
      <xsl:if test="Obligatoriedad">
        <obligatoriedad>
          <xsl:value-of select="Obligatoriedad"/>
        </obligatoriedad>
      </xsl:if>
      <!-- a simple data mapping: "Agrupacion"(int) to "agrupacion"(int) -->
      <xsl:if test="Agrupacion">
        <agrupacion>
          <xsl:value-of select="Agrupacion"/>
        </agrupacion>
      </xsl:if>
      <!-- a simple data mapping: "definicionCondicional"(string) to "definicionCondicional"(string) -->
      <xsl:if test="definicionCondicional">
        <definicionCondicional>
          <xsl:value-of select="definicionCondicional"/>
        </definicionCondicional>
      </xsl:if>
      <!-- a simple data mapping: "Observaciones"(string) to "observaciones"(string) -->
      <xsl:if test="Observaciones">
        <observaciones>
          <xsl:value-of select="Observaciones"/>
        </observaciones>
      </xsl:if>
      <!-- a simple data mapping: "Mensaje"(string) to "mensaje"(string) -->
      <xsl:if test="Mensaje">
        <mensaje>
          <xsl:value-of select="Mensaje"/>
        </mensaje>
      </xsl:if>
      <!-- a simple data mapping: "EtapaProceso"(int) to "etapaProceso"(string) -->
      <xsl:if test="EtapaProceso">
        <etapaProceso>
          <xsl:value-of select="EtapaProceso"/>
        </etapaProceso>
      </xsl:if>
      <!-- a simple data mapping: "Interno"(boolean) to "interno"(boolean) -->
      <xsl:if test="Interno">
        <interno>
          <xsl:value-of select="Interno"/>
        </interno>
      </xsl:if>
    </documentos>
  </xsl:template>

  <!-- *****************    Utility Templates    ******************  -->
  <!-- copy the namespace declarations from the source to the target -->
  <xsl:template name="copyNamespaceDeclarations">
    <xsl:param name="root"/>
    <xsl:for-each select="$root/namespace::*[not(name() = '')]">
      <xsl:copy/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
