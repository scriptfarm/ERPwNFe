<?xml version="1.0" encoding="UTF-8"?>
HTTP/1.1 200 OK
Server: GlassFish Server Open Source Edition  4.1 
Server: grizzly/2.3.15
Content-Type: text/xml;charset=utf-8
Date: Tue, 21 Oct 2014 18:46:01 GMT
Transfer-Encoding: chunked

<?xml version='1.0' encoding='UTF-8'?><!-- Published by JAX-WS RI (http://jax-ws.java.net). RI's version is Metro/2.3.1-b419 (branches/2.3.1.x-7937; 2014-08-04T08:11:03+0000) JAXWS-RI/2.2.10-b140803.1500 JAXWS-API/2.2.11 JAXB-RI/2.2.10-b140802.1033 JAXB-API/2.2.12-b140109.1041 svn-revision#unknown. --><!-- Generated by JAX-WS RI (http://jax-ws.java.net). RI's version is Metro/2.3.1-b419 (branches/2.3.1.x-7937; 2014-08-04T08:11:03+0000) JAXWS-RI/2.2.10-b140803.1500 JAXWS-API/2.2.11 JAXB-RI/2.2.10-b140802.1033 JAXB-API/2.2.12-b140109.1041 svn-revision#unknown. --><definitions xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:wsp="http://www.w3.org/ns/ws-policy" xmlns:wsp1_2="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:tns="http://www.portalfiscal.inf.br/nfe/wsdl/NfeConsulta2" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.xmlsoap.org/wsdl/" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NfeConsulta2" name="NfeConsulta2">
<types>
<xsd:schema>
<xsd:import namespace="http://www.portalfiscal.inf.br/nfe/wsdl/NfeConsulta2" schemaLocation="https://homologacao.nfe.ms.gov.br:443/homologacao/services2/NfeConsulta2?xsd=1"/>
</xsd:schema>
</types>
<message name="nfeConsultaNF2">
<part name="nfeDadosMsg" element="tns:nfeDadosMsg"/>
<part name="nfeCabecMsg" element="tns:nfeCabecMsg"/>
</message>
<message name="nfeConsultaNF2Response">
<part name="nfeConsultaNF2Result" element="tns:nfeConsultaNF2Result"/>
<part name="nfeCabecMsg" element="tns:nfeCabecMsg"/>
</message>
<portType name="NfeConsulta2Soap">
<operation name="nfeConsultaNF2" parameterOrder="nfeDadosMsg nfeCabecMsg">
<input wsam:Action="http://www.portalfiscal.inf.br/nfe/wsdl/NfeConsulta2/nfeConsultaNF2" message="tns:nfeConsultaNF2"/>
<output wsam:Action="http://www.portalfiscal.inf.br/nfe/wsdl/NfeConsulta2/NfeConsulta2Soap/nfeConsultaNF2Response" message="tns:nfeConsultaNF2Response"/>
</operation>
</portType>
<binding name="nfeConsulta2Soap12Binding" type="tns:NfeConsulta2Soap">
<soap12:binding transport="http://schemas.xmlsoap.org/soap/http" style="document"/>
<operation name="nfeConsultaNF2">
<soap12:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/NfeConsulta2/nfeConsultaNF2"/>
<input>
<soap12:body use="literal" parts="nfeDadosMsg"/>
<soap12:header message="tns:nfeConsultaNF2" part="nfeCabecMsg" use="literal"/>
</input>
<output>
<soap12:body use="literal" parts="nfeConsultaNF2Result"/>
<soap12:header message="tns:nfeConsultaNF2Response" part="nfeCabecMsg" use="literal"/>
</output>
</operation>
</binding>
<service name="NfeConsulta2">
<port name="nfeConsulta2Soap12" binding="tns:nfeConsulta2Soap12Binding">
<soap12:address location="https://homologacao.nfe.ms.gov.br:443/homologacao/services2/NfeConsulta2"/>
</port>
</service>
</definitions>