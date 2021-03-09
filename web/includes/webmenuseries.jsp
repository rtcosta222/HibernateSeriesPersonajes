<%-- 
    Document   : webmenudepartamentos
    Created on : 19-ene-2021, 19:32:02
    Author     : lscar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="#">
            <img src="imagenes/cineIcon.jpg" width="auto" height="40" alt="Caracol Cinematográfica">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="webseries.jsp" stryleClass="nav_link"><b>Home</b><span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="webanadirpersonaje.jsp" stryleClass="nav_link">Nuevo personaje<span class="sr-only">(current)</span></a>
                </li>                        
                <li class="nav-item">
                    <a class="nav-link" href="webmodificarpersonaje.jsp" stryleClass="nav_link">Modificar personajes<span class="sr-only">(current)</span></a>
                </li>                        
                <li class="nav-item">
                    <a class="nav-link" href="webanadircoche.jsp" stryleClass="nav_link">Series<span class="sr-only">(current)</span></a>
                </li>                        
            </ul>
            <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>            
</header>

