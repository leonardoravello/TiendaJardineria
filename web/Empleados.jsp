<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Empleados Bio-Tienda</title>
        <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
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
                    <div class="container px-4">
                        <div class="card mt-4">
                            <div class="card-header">
                                <h1>Empleados</h1>
                            </div>
                            <div class="card-body">
                                <form action="EmpleadoController?menuempleado=Empleado" method="POST">
                                    <div class="row">
                                        <div class="form-group col-2">
                                            <label class="mb-2">DNI:</label>
                                            <input type="text" value="${empleado.getDni()}" name="txtDni" class="form-control" maxlength="8">
                                        </div>
                                        <div class="form-group col-10">
                                            <label class="mb-2">Nombres:</label>
                                            <input type="text" value="${empleado.getNombres()}" name="txtNombres" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row mt-4">
                                        <div class="form-group col-6">
                                            <label class="mb-2">Usuario:</label>
                                            <input type="text" value="${empleado.getUser()}" name="txtUsuario" class="form-control">
                                        </div>
                                        <div class="form-group col-6">
                                            <label class="mb-2">Email:</label>
                                            <input type="email" value="${empleado.getEmail()}" name="txtEmail" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row mt-4">
                                        <div class="form-group col-6">
                                            <label class="mb-2">Teléfono:</label>
                                            <input type="text" value="${empleado.getTelefono()}" name="txtTelefono" class="form-control" maxlength="9">
                                        </div>
                                        <div class="form-group col-6">
                                            <label class="mb-2">Estado:</label>
                                            <input type="tex" value="${empleado.getEstado()}" name="txtEstado" class="form-control" maxlength="1">
                                        </div>
                                    </div>
                                    <div class="row mt-4 ">
                                        <div class="col-6 d-grid gap-2 col-6mx-auto">
                                            <button type="submit" name="accion" value="Agregar" class ="btn btn-success mb-4 ">
                                                <i class="fas fa-plus-square"></i> Agregar Empleado
                                            </button> 
                                        </div>
                                        <div class="col-6 d-grid gap-2 col-6mx-auto">
                                            <button type="submit" name="accion" value="Actualizar" class ="btn btn-success mb-4 ">
                                                <i class="fas fa-plus-square"></i> Actualizar Empleado
                                            </button> 
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="row text-center mt-5">
                            <form action="EmpleadoController?menuempleado=Empleado" method="POST">
                                <button type="submit" name="accion" value="Listar" class ="btn btn-success mb-4 ">
                                    <i class="fas fa-plus-square"></i> Listar Empleados
                                </button> 
                            </form>
                        </div>
                        <table class="mt-5 table text-center">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>DNI</th>
                                    <th>Nombres</th>
                                    <th>Usuario</th>
                                    <th>Email</th>
                                    <th>Teléfono</th>
                                    <th>Estado</th>
                                    <th colspan="2">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="em" items="${empleados}">
                                    <tr>
                                        <td>${em.getId()}</td>
                                        <td>${em.getDni()}</td>
                                        <td>${em.getNombres()}</td>
                                        <td>${em.getUser()}</td>
                                        <td>${em.getEmail()}</td>
                                        <td>${em.getTelefono()}</td>
                                        <td>${em.getEstado()}</td>
                                        <td><a type="submit" class ="btn btn-warning" href="EmpleadoController?menuempleado=Empleado&accion=Editar&id=${em.getId()}">
                                                <i class="fas fa-edit"></i> Editar
                                            </a></td>
                                        <td><a type="submit" class ="btn btn-danger" href="EmpleadoController?menuempleado=Empleado&accion=Eliminar&id=${em.getId()}">
                                                <i class="fas fa-trash-alt"></i> Eliminar
                                            </a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
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
