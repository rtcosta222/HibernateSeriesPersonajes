<%-- 
    Document   : webmenuseries
    Created on : 05-mar-2021, 18:01:16
    Author     : lscar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="controller" class="controllers.ControllerSeries" scope="request"/>

<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="includes/webhead.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Series - Hibernate: a use case.</title>
    </head>
    <body>
        <jsp:include page="includes/webmenuseries.jsp"/>
        <section>
            <main role="main" class="container">
                <div class="starter-template">
                    <h1>TV Shows 4U</h1><br/>
                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                <th>Imagen</th>
                                <th>Nombre</th>
                                <th>Anyo</th>
                                <th>Puntuación (IMDb)</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%=controller.getSeries()%>
                        </tbody>
                    </table>
                </div>
            </main><!-- /.container -->            
        </section>
        <jsp:include page="includes/webfooter.jsp"/>
    </body>
</html>
