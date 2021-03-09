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
                    <div class="container">
                        <h1>Nuevo personaje</h1>
                        <form method="post" style="width:300px">
                            <div class="form-group">
                                <label>Nombre: </label>
                                <input type="text" name="cjnomp" class="form-control" required/>
                            </div>
                            <div class="form-group">
                                <label>Imagen: </label>
                                <input type="text" name="cjimgp" class="form-control" required/>
                            </div>
                            <div class="form-group">
                                <label>Serie: </label>
                                <select name="cjselserie">
                                    <%=controller.getOptionsSeries()%>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-warning">Insertar personaje</button>
                            <button type="clear" class="btn btn-warning">Limpiar</button>
                        </form>
                    </div>
                    
                    <%  String z_nom = request.getParameter("cjnomp");
                        if(z_nom != null) {
                            String z_img = request.getParameter("cjimgp");
                            String ui = request.getParameter("cjselserie");
                            int z_idserie = Integer.parseInt(ui);
                            controller.insertarPersonaje(z_nom, z_img, z_idserie);
                        }
                    %>
                </div>
            </main><!-- /.container -->            
        </section>
        <jsp:include page="includes/webfooter.jsp"/>
    </body>
</html>
