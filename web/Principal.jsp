<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Bio-Tienda</title>
        <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
        <link rel="stylesheet" href="css/bootstrap.min.v4.6.0.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
              integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <link rel="stylesheet" href="css/sweetalert2.min.css">
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous">
        </script>
    </head>

    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-success">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="Principal.jsp"><i class="fas fa-tree"></i> Bio-Tienda</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                    class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false"> ${usuario.getNombres()} <i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li>
                            <hr class="dropdown-divider" />
                        </li>
                        <form action="Validate" method="POST">
                            <li><button class="dropdown-item" name="accion" value="Salir" >Cerrar Sesión</button></li>
                        </form>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu bg-success">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Centro</div>
                            <a class="nav-link" href="Principal.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Lista de Productos
                            </a>
                            <div class="sb-sidenav-menu-heading">Mantenimiento</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                               data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fab fa-product-hunt"></i></div>
                                Productos
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                                 data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="ProductoController?menuproducto=Producto&accion=Listar">Ver Productos</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                               data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-people-carry"></i></div>
                                Empleados
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingOne"
                                 data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="EmpleadoController?menuempleado=Empleado&accion=Listar">Ver Empleados</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                               data-bs-target="#collapsePages1" aria-expanded="false" aria-controls="collapsePages1">
                                <div class="sb-nav-link-icon"><i class="fas fa-users"></i></div>
                                Clientes
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages1" aria-labelledby="headingOne"
                                 data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="ClienteController?menucliente=Cliente&accion=Listar">Ver Clientes</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                               data-bs-target="#collapsePages2" aria-expanded="false" aria-controls="collapsePages2">
                                <div class="sb-nav-link-icon"><i class="fas fa-folder-plus"></i></div>
                                Ventas
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages2" aria-labelledby="headingOne"
                                 data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="VentaController?menuventa=NuevaVenta&accion=BuscarCliente">Nueva Venta</a>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer bg-success">
                        <div class="small">Conectado como:</div>
                        ${usuario.getNombres()}
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="text-center mt-5">Bienvenido a Bio-Tienda ${usuario.getNombres()}</h1> 
                        <main>
                            <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 my-4 mx-auto text-center">
                                <h1 class="display-4 mt-4">Lista de Productos</h1>
                                <p class="lead">Selecciona uno de nuestros productos y accede a un descuento</p>
                            </div>
                            <div class="container" id="lista-productos">
                                <div class="card-deck mb-3 text-center">
                                    <div class="card mb-4 shadow-sm">
                                        <div class="card-header">
                                            <h4 class="my-0 font-weight-bold">Huerto Madera 3 Niveles </h4>
                                        </div>
                                        <div class="card-body">
                                            <img src="img/prod01.jpg" class="card-img-top">
                                            <h1 class="card-title pricing-card-title precio">S/. <span class="">189.90</span></h1>

                                            <ul class="list-unstyled mt-3 mb-4">
                                                <li></li>
                                                <li>ERGO</li>
                                                <li>Código: 8727007</li>
                                            </ul>
                                            <a href="RegistrarVenta.jsp" class="btn btn-block btn-success agregar-carrito" data-id="1">Comprar</a>
                                        </div>
                                    </div>
                                    <div class="card mb-4 shadow-sm">
                                        <div class="card-header">
                                            <h4 class="my-0 font-weight-bold">Maceta Redonda Ratan</h4>
                                        </div>
                                        <div class="card-body">
                                            <img src="img/prod02.jpg" class="card-img-top">
                                            <h1 class="card-title pricing-card-title precio">S/. <span class="">10.90</span></h1>

                                            <ul class="list-unstyled mt-3 mb-4">
                                                <li></li>
                                                <li>ReyPlast</li>
                                                <li>Código: 4042506</li>
                                            </ul>
                                            <a href="RegistrarVenta.jsp" class="btn btn-block btn-success agregar-carrito" data-id="2">Comprar</a>
                                        </div>
                                    </div>
                                    <div class="card mb-4 shadow-sm">
                                        <div class="card-header">
                                            <h4 class="my-0 font-weight-bold">Macetero Mimbre Beige</h4>
                                        </div>
                                        <div class="card-body">
                                            <img src="img/prod03.jpg" class="card-img-top">
                                            <h1 class="card-title pricing-card-title precio">S/. <span class="">18.90</span></h1>

                                            <ul class="list-unstyled mt-3 mb-4">
                                                <li></li>
                                                <li>PolinPlast</li>
                                                <li>Código: 3948951</li>
                                            </ul>
                                            <a href="RegistrarVenta.jsp" class="btn btn-block btn-success agregar-carrito" data-id="3">Comprar</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-deck mb-3 text-center">
                                    <div class="card mb-4 shadow-sm">
                                        <div class="card-header">
                                            <h4 class="my-0 font-weight-bold">Herramientas de Jardín </h4>
                                        </div>
                                        <div class="card-body">
                                            <img src="img/prod04.jpg" class="card-img-top">
                                            <h1 class="card-title pricing-card-title precio">S/. <span class="">14.90</span></h1>

                                            <ul class="list-unstyled mt-3 mb-4">
                                                <li></li>
                                                <li>ERGO</li>
                                                <li>Código: 1571931</li>
                                            </ul>
                                            <a href="" class="btn btn-block btn-success agregar-carrito" data-id="4">Comprar</a>
                                        </div>
                                    </div>
                                    <div class="card mb-4 shadow-sm">
                                        <div class="card-header">
                                            <h4 class="my-0 font-weight-bold">Set 2 Tijeras para Podar</h4>
                                        </div>
                                        <div class="card-body">
                                            <img src="img/prod05.jpg" class="card-img-top">
                                            <h1 class="card-title pricing-card-title precio">S/. <span class="">32.90</span></h1>
                                            <ul class="list-unstyled mt-3 mb-4">
                                                <li></li>
                                                <li>ERGO</li>
                                                <li>Código: 1571850</li>
                                            </ul>
                                            <a href="RegistrarVenta.jsp" class="btn btn-block btn-success agregar-carrito" data-id="5">Comprar</a>
                                        </div>
                                    </div>
                                    <div class="card mb-4 shadow-sm">
                                        <div class="card-header">
                                            <h4 class="my-0 font-weight-bold">Podadora de Altura</h4>
                                        </div>
                                        <div class="card-body">
                                            <img src="img/prod06.jpg" class="card-img-top">
                                            <h1 class="card-title pricing-card-title precio">S/. <span class="">44.90</span></h1>

                                            <ul class="list-unstyled mt-3 mb-4">
                                                <li></li>
                                                <li>ERGO</li>
                                                <li>Código: 1571923</li>
                                            </ul>
                                            <a href="RegistrarVenta.jsp" class="btn btn-block btn-success agregar-carrito" data-id="6">Comprar</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-deck mb-3 text-center">
                                    <div class="card mb-4 shadow-sm">
                                        <div class="card-header">
                                            <h4 class="my-0 font-weight-bold">Palmera Chamaedorea</h4>
                                        </div>
                                        <div class="card-body">
                                            <img src="img/prod07.jpg" class="card-img-top">
                                            <h1 class="card-title pricing-card-title precio">S/. <span class="">69.90</span></h1>

                                            <ul class="list-unstyled mt-3 mb-4">
                                                <li></li>
                                                <li>4 Estaciones</li>
                                                <li>Código: 380466</li>
                                            </ul>
                                            <a href="RegistrarVenta.jsp" class="btn btn-block btn-success agregar-carrito" data-id="7">Comprar</a>
                                        </div>
                                    </div>
                                    <div class="card mb-4 shadow-sm">
                                        <div class="card-header">
                                            <h4 class="my-0 font-weight-bold">Bouganvillea Enana</h4>
                                        </div>
                                        <div class="card-body">
                                            <img src="img/prod08.jpg" class="card-img-top">
                                            <h1 class="card-title pricing-card-title precio">S/. <span class="">11.90</span></h1>

                                            <ul class="list-unstyled mt-3 mb-4">
                                                <li></li>
                                                <li>4 Estaciones</li>
                                                <li>Código: 423807</li>
                                            </ul>
                                            <a href="RegistrarVenta.jsp" class="btn btn-block btn-success agregar-carrito" data-id="8">Comprar</a>
                                        </div>
                                    </div>
                                    <div class="card mb-4 shadow-sm">
                                        <div class="card-header">
                                            <h4 class="my-0 font-weight-bold">Crotons Mix</h4>
                                        </div>
                                        <div class="card-body">
                                            <img src="img/prod09.jpg" class="card-img-top">
                                            <h1 class="card-title pricing-card-title precio">S/. <span class="">14.90</span></h1>

                                            <ul class="list-unstyled mt-3 mb-4">
                                                <li></li>
                                                <li>4 Estaciones</li>
                                                <li>Código: 1185306</li>
                                            </ul>
                                            <a href="RegistrarVenta.jsp" class="btn btn-block btn-success agregar-carrito" data-id="9">Comprar</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Bio-Tienda</div>
                            <div> 
                                <a style="text-decoration: none; color: #000000" href="#">Política de Privacidad</a>
                                &middot;
                                <a style="text-decoration: none; color: #000000" href="#">Términos &amp; Condiciones</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
        </script>
        <script src="js/scripts.js"></script>
    </body>

</html>
