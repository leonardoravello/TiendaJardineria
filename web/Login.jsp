<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Bio-Tienda</title>
        <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/estilo_login.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <br>
    <body>
        <div class="container">
            <div class="cuadro">
                <div class="row">
                    <div class="col-6 ">
                        <div class="imagen">
                            <img src="img/maceta.png ">
                        </div>
                    </div>
                    <div class="col-6">
                        <h3 class="titulo ">
                            <span class="linea ">Iniciar Sesión</span>
                        </h3>
                        <br>
                        <form action="Validate" method="POST" class="row g-3 needs-validation" novalidate>
                            <div class="col-12 mb-2 mt-2 ">
                                <input type="text" name ="txtuser" class="form-control" placeholder="Ingresar usuario"
                                       required>
                            </div>
                            <div class="col-12 mb-2 ">
                                <input type="password" name ="txtpass" class="form-control" placeholder="Ingresar contraseña" required>
                            </div>
                            <div class="col-12 mb-2">
                                <!-- <input class="btn btn-success mb-4 " type="submit" name="accion" value="Ingresar"> -->  
                                <button type="submit" name="accion" value="Ingresar" class ="btn btn-success mb-4 ">
                                    <i class="fas fa-user"></i> Iniciar Sesión
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>
