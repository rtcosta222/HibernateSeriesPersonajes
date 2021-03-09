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
                    <h1>Personajes y Series</h1>
                    <form method="post" style="width:300px">
                        <div class="form-group">
                            <label>Seleccione una serie:</label><br>
                            <select id="idcjselserie" name="cjselserie">
                                <%=controller.getOptionsSeries()%>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Seleccione un personaje:</label><br>
                            <select id="idcjselpersonaje" name="cjselpersonaje">
                                <%=controller.getOptionsPersonajes()%>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-warning">Guardar cambios</button>
                    </form>      
                </div>
            </main><!-- /.container -->            
        </section>
        <jsp:include page="includes/webfooter.jsp"/>
        
        <script>
            $(document).ready(function () {
                $("#idcjselpersonaje").change(function({
                    var e = document.getElementById("idcjselpersonaje");
                    var result = e.options[e.selectedIndex].value;
                }));
            });
        </script>
        <% 
            String var = "<script>document.writeln(result)</script>";
            if(var != null) {
        %>      <h1><%=var%></h1>
        <%  }
        %>
    </body>
</html>
