<%-- 
    Document   : web01plantilla
    Created on : 19-ene-2021, 19:20:50
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
                    <h1>Personajes por serie</h1>
                <%  String ui = request.getParameter("perserie");
                    if(ui != null) {
                        int idseriepers = Integer.parseInt(ui);
                %>      <button type='button' class='btn btn-warning'>
                            <a href='webseries.jsp'>Volver</a>    
                        </button>
                        <table class="table-dark table-bordered" >
                            <thead>
                                <tr>
                                    <th>Personaje</th>
                                    <th>Imagen</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%=controller.getPersonajes(idseriepers)%>
                            </tbody>
                        </table>
                <%  }
                %>
                </div>
            </main><!-- /.container -->            
        </section>
        <jsp:include page="includes/webfooter.jsp"/>
    </body>
</html>
