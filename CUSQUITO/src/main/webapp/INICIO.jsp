<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Estilos CSS personalizados -->
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reserva de Hoteles</title>
    <!-- Incluye los archivos CSS de Bootstrap 5 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    <!-- Agrega tu propio archivo CSS personalizado aquí si es necesario -->
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Reglas de CSS personalizado para las imágenes */
        .custom-image {
            width: 100%;
            height: auto;
             }
    </style>
</head>
<body>
    <!-- Barra de navegación fija en la parte superior -->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Reserva de Hoteles</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Habitaciones</a>
                </li>
                <li class="nav-item">
                    <a href="reservas.jsp" class="btn btn-primary">Reservas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contacto</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

    <!-- Encabezado principal -->
    <header class="bg-primary text-white py-5">
        <div class="container text-center">
            <h1 class="display-4">Encuentra el hotel perfecto</h1>
            <p class="lead">Reserva tu estancia en los mejores hoteles alrededor del mundo con nosotros.</p>
            <a href="#" class="btn btn-light btn-lg">Explora Hoteles</a>
        </div>
    </header>

   <!-- Sección de Destacados -->
<section class="py-5">
    <div class="container">
        <h2 class="mb-4">Hoteles Destacados</h2>
        <div class="row">
            <!-- Hotel 1 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card">
    				<img src="IMAGENES/hotel.jpeg" class="card-img-top img-fluid" alt="Hotel 1">
    <div class="card-body">
        <h5 class="card-title">Hotel de Lujo</h5>
        <p class="card-text">Disfruta de una experiencia inolvidable en nuestro hotel de lujo.</p>
        <!-- Botón para Ver Detalles -->
        <a href="reservas.jsp?hotel=hotel1.jpg&nombre=Hotel+de+Lujo" class="btn btn-primary">Ver Detalles</a>
        
    </div>
</div>
            </div>
            <!-- Hotel 2 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card">
                    <img src="IMAGENES/playa.jpg" class="card-img-top img-fluid" alt="Hotel 2">
                    <div class="card-body">
                        <h5 class="card-title">Hotel de Playa</h5>
                        <p class="card-text">Relájate en nuestro hotel frente a la playa y disfruta del sol y la arena.</p>
                        <a href="reservas.jsp?IMAGENES=playa.jpg&nombre=Hotel+de+Playa" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>
            <!-- Hotel 3 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card">
                    <img src="IMAGENES/ciudad.jpg" class="card-img-top img-fluid"  alt="Hotel 3">
                    <div class="card-body">
                        <h5 class="card-title">Hotel en la Ciudad</h5>
                        <p class="card-text">Descubre la emoción de la ciudad en nuestro hotel céntrico.</p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Sección de Hoteles Adicionales 1 -->
<section class="py-5 overflow-auto">
    <div class="container">
        <h2 class="mb-4">Más Opciones de Hoteles 1</h2>
        <div class="row">
            <!-- Hotel 4 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card">
                    <img src="hotel4.jpg" class="card-img-top" alt="Hotel 4">
                    <div class="card-body">
                        <h5 class="card-title">Hotel Familiar</h5>
                        <p class="card-text">Un lugar perfecto para vacaciones en familia.</p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>
            <!-- Hotel 5 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card">
                    <img src="hotel5.jpg" class="card-img-top" alt="Hotel 5">
                    <div class="card-body">
                        <h5 class="card-title">Hotel con Piscina</h5>
                        <p class="card-text">Relájate y refréscate en nuestra piscina de lujo.</p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>
            <!-- Hotel 6 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card">
                    <img src="hotel6.jpg" class="card-img-top" alt="Hotel 6">
                    <div class="card-body">
                        <h5 class="card-title">Hotel de Montaña</h5>
                        <p class="card-text">Escápate a las montañas y disfruta de la naturaleza.</p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- Sección de Hoteles Adicionales 2 -->
<section class="py-5 overflow-auto">
    <div class="container">
        <h2 class="mb-4">Más Opciones de Hoteles 2</h2>
        <div class="row">
            <!-- Hotel 7 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card">
                    <img src="hotel7.jpg" class="card-img-top" alt="Hotel 7">
                    <div class="card-body">
                        <h5 class="card-title">Hotel de Negocios</h5>
                        <p class="card-text">Perfecto para viajes de negocios y conferencias.</p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>
            <!-- Hotel 8 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card">
                    <img src="hotel8.jpg" class="card-img-top" alt="Hotel 8">
                    <div class="card-body">
                        <h5 class="card-title">Hotel Romántico</h5>
                        <p class="card-text">Celebra momentos especiales en nuestro hotel romántico.</p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>
            <!-- Hotel 9 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card">
                    <img src="hotel9.jpg" class="card-img-top" alt="Hotel 9">
                    <div class="card-body">
                        <h5 class="card-title">Hotel Histórico</h5>
                        <p class="card-text">Sumérgete en la historia en nuestro hotel histórico.</p>
                        <a href="#" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



    <!-- Pie de página -->
    <footer class="bg-dark text-white py-4">
        <div class="container text-center">
            <p>&copy; 2023 Reserva de Hoteles. Todos los derechos reservados.</p>
        </div>
    </footer>

    <!-- Incluye los archivos JavaScript de Bootstrap (jQuery y Popper.js) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
    
    
</body>
</html>






