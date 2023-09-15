<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mantenimiento de Tarjetas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css" rel="stylesheet">
    
    <style>
        .modal-header {
            color: #fff;
            background: #428bca;
            display: flex;
            justify-content: center;
        }
    
        .help-block {
            color: red;
        }
    
        .form-group.has-error .form-control-label {
            color: red;
        }
    
        .form-group.has-error .form-control {
            border: 1px solid red;
            box-shadow: 0 0 0 0.2rem rgba(250, 16, 0, 0.18);
        }
    </style>
    
</head>
<body>
    <div class="container">
        <h1 class="mt-5 text-center">Listado de Tarjetas</h1>
    
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Nueva Tarjeta</button>
    
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Nueva Tarjeta</h1>
                    </div>
                    <div class="modal-body">
    
                        <form id="FormularioTarjeta" method="post" action="ServletTarjeta?accion=grabar">
                            <div class="form-group">
                                <label for="num_tarj" class="form-label">Número de Tarjeta</label>
                                <input type="text" class="form-control" name="num_tarj">
                            </div>
    
                            <div class="form-group">
                                <label for="fecha_cadu_tarj" class="form-label">Fecha de Caducidad</label>
                                <input type="text" class="form-control" name="fecha_cadu_tarj">
                            </div>
    
                            <div class="form-group">
                                <label for="nomb_clie" class="form-label">Nombre del Cliente</label>
                                <input type="text" class="form-control" name="nomb_clie">
                            </div>
    
                            <div class="form-group">
                                <label for="pat_clie" class="form-label">Apellido Paterno</label>
                                <input type="text" class="form-control" name="pat_clie">
                            </div>
    
                            <div class="form-group">
                                <label for="mat_clie" class="form-label">Apellido Materno</label>
                                <input type="text" class="form-control" name="mat_clie">
                            </div>
    
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">Grabar</button>
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            </div>
    
                        </form>
    
                    </div>
                </div>
            </div>
        </div>
    
        <div class="mt-3">
            <table id="TableTarjeta" class="table table-striped" style="width: 100%">
                <thead>
                    <tr>
                        <th>Número de Tarjeta</th>
                        <th>Fecha de Caducidad</th>
                        <th>Nombre del Cliente</th>
                        <th>Apellido Paterno</th>
                        <th>Apellido Materno</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${tarjetas}" var="row">
                        <tr>
                            <td>${row.numeroTarjeta}</td>
                            <td>${row.fechaCaducidad}</td>
                            <td>${row.nombreCliente}</td>
                            <td>${row.paternoCliente}</td>
                            <td>${row.maternoCliente}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    
    
</body>

<!-- Libreria principal -->
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!-- Libreria JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!-- Libreria js de la tabla -->
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
<!-- Libreria para validar -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>

<script>
    new DataTable('#TableTarjeta');
</script>

<script type="text/javascript">
    $(document).ready(function() {
        $('#FormularioTarjeta').bootstrapValidator({
            fields: {
                num_tarj: {
                    validators: {
                        notEmpty: {
                            message: 'Campo de número de tarjeta es obligatorio'
                        }
                    }
                },
                fecha_cadu_tarj: {
                    validators: {
                        notEmpty: {
                            message: 'Campo de fecha de caducidad es obligatorio'
                        }
                    }
                },
                nomb_clie: {
                    validators: {
                        notEmpty: {
                            message: 'Campo de nombre del cliente es obligatorio'
                        }
                    }
                },
                pat_clie: {
                    validators: {
                        notEmpty: {
                            message: 'Campo de apellido paterno es obligatorio'
                        }
                    }
                },
                mat_clie: {
                    validators: {
                        notEmpty: {
                            message: 'Campo de apellido materno es obligatorio'
                        }
                    }
                }
            }
        });
    });
</script>

</html>
