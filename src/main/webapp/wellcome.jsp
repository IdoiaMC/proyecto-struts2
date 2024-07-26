<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <title><s:text name="hello.message"/></title>
  <s:head/>
  <sx:head/>
</head>

<body>

    <h1>Resumen de factura: </h1>
    <p>Concepto: <s:property value="invoiceBean.subject"/></p>
    <p>Fecha desde: <s:property value="invoiceBean.dateFrom"/></p>
    <p>Fecha hasta: <s:property value="invoiceBean.dateTo"/></p>
    <p>Importe: <fmt:formatNumber value="${invoiceBean.amount}" pattern="#,##0.00"/> (IVA incluido)</p>
</body>
</html>