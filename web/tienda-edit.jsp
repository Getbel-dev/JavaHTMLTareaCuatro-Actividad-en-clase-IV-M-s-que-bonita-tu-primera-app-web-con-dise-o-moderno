<%-- 
    Document   : tienda-edit
    Created on : Oct 12, 2026, 7:26:30 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit-Product</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-B/GM4XqrwHnWXNOWMbloTmrYXZg10cakYGmpfsR/bbzQ6JAJI4ihuyADKLnBgrCe" crossorigin="anonymous">
        <script type="module" src="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-1a/pXj49ZQ1aHEmrJ+gMw1otqoVsYwlEnlD8mIfY2TV03r20Y0CN7uqx1tQogjPL" crossorigin="anonymous"></script>
    </head>


    <body>


        <nav class="navbar md:navbar-expand bg-1">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">WebApp estilos-cloth</a>
                <button class="btn-icon navbar-toggler" type="button" data-bs-toggle="drawer" data-bs-target="#navbarDrawer" aria-controls="navbarDrawer" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon" aria-hidden="true"></span>
                </button>
                <dialog class="drawer drawer-end" tabindex="-1" id="navbarDrawer" aria-labelledby="navbarDrawerLabel">
                    <div class="drawer-header">
                        <h5 class="drawer-title" id="navbarDrawerLabel">Menu</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="drawer" aria-label="Close"></button>
                    </div>
                    <div class="drawer-body mb-2 md:mb-0">
                        <ul class="nav navbar-nav me-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item">
                                <button class="nav-link text-start btn-text w-100" type="button" data-bs-toggle="menu" aria-expanded="false">
                                    Tienda
                                </button>
                                <div class="menu">
                                    <a class="menu-item" href="ServletTienda">Ver productos disponibles</a>
                                    <a class="menu-item active" href="tienda-edit.jsp">Agregar un nuevo producto</a>
                                    <hr class="menu-divider">
                                    <a class="menu-item" href="#">Something else here</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                            </li>


                            <li class="nav-item mt-3 mt-md-0 ms-md-2">
                                <a class="btn btn-outline-danger btn-sm w-100 text-center fw-medium shadow-sm" href="loginServlet">
                                    Cerrar Sesión
                                </a>
                            </li>
                        </ul>

                    </div>
                </dialog>
            </div>
        </nav>






        <div class="container">

            <div class="card">

                <div class="card-body">

                    <form method="POST" action="ServletTienda">

                        <div class="form-floating mb-4">
                            <label for="txtname">Nombre Producto</label>
                            <input name="txtname" type="text" class="form-control" id="txtname" placeholder="pantalon,Medias ect..">

                        </div>
                        <div class="form-floating mb-4">
                            <label for="txtprice">Precio</label>
                            <input name="txtprice" type="number" step="0.01" class="form-control" id="txtprice" placeholder="$00.00">
                            <label for="txtprice">Precio</label>
                        </div>
                        <div class="form-floating mb-4">
                            <label for="txtstock">Stock</label>
                            <input name="txtstock" type="number" class="form-control" id="txtstock" placeholder="Cantidad de produtos disponibles">

                        </div>
                        <button class="btn-solid theme-primary">Save</button>
                    </form>
                </div>
            </div>
        </div> 
    </body>
</html>
