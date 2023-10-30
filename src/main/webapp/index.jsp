<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.1/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.1/dist/sweetalert2.min.js"></script>
    <title>Encuesta</title>
</head>

<body>
<div class="container-">
    <div class="row mt-5">
        <div class="col-4 pt-5">
            <div class="container text-center">
                <img class="iconos-svg" src="assets/svg/store-svgrepo-com.svg" alt="Icono tiendita">
                <small>Tienditas disponibles</small>
                <div class="container">
                    <select class="form-select form-select-sm w-50 mt-2 mx-auto" aria-label="Default select example">
                        <option value="1">Tiendita "La esquina"</option>
                        <option value="2">TIenda Mari</option>
                        <option value="3">TIenda Roja</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="col-4">
            <div class="container-fluid text-center">
                <h4 class="mt-5 mb-5">Sistema Integral de Encuestas de Tienditas</h4>
            </div>
        </div>
        <div class="col-4 pt-5">
            <div class="container text-center">
                <img class="iconos-svg" src="assets/svg/arrival-svgrepo-com.svg" alt="">
                <small>Encuesta</small>
                <div class="container text-center">
                    <select class="form-select form-select-sm w-25 mt-2 mx-auto" aria-label="Default select example">
                        <option value="4">2023</option>
                        <option value="5">2022</option>
                        <option value="6">2021</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container mt-4 mb-5">
    <div class="container mt-4">
        <table class="table table-bordered">
            <thead>
            <tr class="text-center table-dark borde-derecho">
                <th scope="col" id="thprincipal">Característica</th>
                <th scope="col" class="text-danger">Mala</th>
                <th scope="col" class="text-warning">Regular</th>
                <th scope="col" class="text-success">Buena</th>
                <th scope="col" class="text-primary">Muy buena</th>
                <th scope="col" class="text-info">Excelente</th>
            </tr>
            </thead>
            <tbody class="text-center">
            <tr class="funcionalidad-row borde-derecho">
                <td scope="row" class="bordes-tabla"><img src="assets/img/Funcionalidad.png" class="iconos" alt="">Funcionalidad</td>
                <td><input type="radio" name="funcionalidad" value="mala"></td>
                <td><input type="radio" name="funcionalidad" value="regular"></td>
                <td><input type="radio" name="funcionalidad" value="buena"></td>
                <td><input type="radio" name="funcionalidad" value="muybuena"></td>
                <td><input type="radio" name="funcionalidad" value="excelente"></td>
            </tr>

            <tr class="confiabilidad-row borde-derecho">
                <td scope="row" class="bordes-tabla"><img src="assets/img/Confiabilidad.png" class="iconos" alt="">Confiabilidad</td>
                <td><input type="radio" name="confiabilidad" value="mala"></td>
                <td><input type="radio" name="confiabilidad" value="regular"></td>
                <td><input type="radio" name="confiabilidad" value="buena"></td>
                <td><input type="radio" name="confiabilidad" value="muybuena"></td>
                <td><input type="radio" name="confiabilidad" value="excelente"></td>
            </tr>

            <tr class="usabilidad-row borde-derecho">
                <td scope="row" class="bordes-tabla"><img src="assets/img/Usabilidad.png" class="iconos" alt="">Usabilidad</td>
                <td><input type="radio" name="usabilidad" value="mala"></td>
                <td><input type="radio" name="usabilidad" value="regular"></td>
                <td><input type="radio" name="usabilidad" value="buena"></td>
                <td><input type="radio" name="usabilidad" value="muybuena"></td>
                <td><input type="radio" name="usabilidad" value="excelente"></td>
            </tr>

            <tr class="rendimiento-row borde-derecho">
                <td scope="row" class="bordes-tabla"><img src="assets/img/Rendimiento.png" class="iconos" alt="">Rendimiento</td>
                <td><input type="radio" name="rendimiento" value="mala"></td>
                <td><input type="radio" name="rendimiento" value="regular"></td>
                <td><input type="radio" name="rendimiento" value="buena"></td>
                <td><input type="radio" name="rendimiento" value="muybuena"></td>
                <td><input type="radio" name="rendimiento" value="excelente"></td>
            </tr>

            <tr class="mantenimiento-row borde-derecho">
                <td scope="row" class="bordes-tabla"><img src="assets/img/Mantenimiento.png" class="iconos" alt="">Mantenimiento</td>
                <td><input type="radio" name="mantenimiento" value="mala"></td>
                <td><input type="radio" name="mantenimiento" value="regular"></td>
                <td><input type="radio" name="mantenimiento" value="buena"></td>
                <td><input type="radio" name="mantenimiento" value="muybuena"></td>
                <td><input type="radio" name="mantenimiento" value="excelente"></td>
            </tr>

            <tr class="portabilidad-row borde-derecho">
                <td scope="row" class="bordes-tabla"><img src="assets/img/Portabilidad.png" class="iconos" alt="">Portabilidad</td>
                <td><input type="radio" name="portabilidad" value="mala"></td>
                <td><input type="radio" name="portabilidad" value="regular"></td>
                <td><input type="radio" name="portabilidad" value="buena"></td>
                <td><input type="radio" name="portabilidad" value="muybuena"></td>
                <td><input type="radio" name="portabilidad" value="excelente"></td>
            </tr>

            <tr class="seguridad-row borde-derecho">
                <td scope="row" class="bordes-tabla"><img src="/assets/img/Seguridad.png" class="iconos" alt="">Seguridad</td>
                <td><input type="radio" name="seguridad" value="mala"></td>
                <td><input type="radio" name="seguridad" value="regular"></td>
                <td><input type="radio" name="seguridad" value="buena"></td>
                <td><input type="radio" name="seguridad" value="muybuena"></td>
                <td><input type="radio" name="seguridad" value="excelente"></td>
            </tr>

            <tr class="compatibilidad-row borde-bajo1 borde-derecho">
                <td scope="row" class="bordes-tabla borde-bajo"><img src="assets/img/Compatibilidad.png" class="iconos" alt="">Compatibilidad</td>
                <td><input type="radio" name="compatibilidad" value="mala"></td>
                <td><input type="radio" name="compatibilidad" value="regular"></td>
                <td><input type="radio" name="compatibilidad" value="buena"></td>
                <td><input type="radio" name="compatibilidad" value="muybuena"></td>
                <td><input type="radio" name="compatibilidad" value="excelente"></td>
            </tr>
            <tr class="compatibilidad-row borde-bajo1 table-dark" style="border-left: 2px">
                <td colspan="5" style="text-align: right;">
                <span>
                    Promedio:
                </span>
                </td>
                <td class="bg-white text-dark" id="promedio"></td>
            </tr>
            </tbody>
        </table>

    </div>
    <div class="container-fluid backutez" style="background-color: #002E60; height: 100px; border-radius: 10px;">
        <div class="container p-4 mt-5">
        <div class="row row-cols-4 text-center mt-2">
            <div class="col">
                <button type="button" class="btn btn-primary" onclick="guardarEncuesta()">Guardar <i data-feather="save"></i></button>
            </div>
            <div class="col">
                <button type="button" class="btn btn-warning" onclick="cancelarAccion()">Cancelar <i data-feather="x-octagon"></i></button>
            </div>
            <div class="col">
                <button type="button" class="btn btn-danger" onclick="limpiarFormulario()">Limpiar <i data-feather="trash"></i></button>
            </div>
            <div class="col">
                <button type="button" class="btn btn-success" onclick="mostrarResumen()">Resumen <i data-feather="file-text"></i></button>
            </div>
        </div>
        </div>
    </div>
</div>



<script>
    const funcionalidadRadios = document.querySelectorAll('.funcionalidad-row input[name="funcionalidad"]');
    funcionalidadRadios.forEach(radio => {
        radio.addEventListener('click', function() {
            const selectedValue = this.value;
            const tdElement = this.parentNode;

            funcionalidadRadios.forEach(radio => {
                radio.parentNode.style.backgroundColor = '';
            });

            if (this.checked) {
                if (selectedValue === 'mala') {
                    tdElement.style.backgroundColor = 'red';
                } else if (selectedValue === 'regular') {
                    tdElement.style.backgroundColor = 'orange';
                } else if (selectedValue === 'buena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'blue';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'aqua';
                }
            }
        });
    });

    const confiabilidadRadios = document.querySelectorAll('.confiabilidad-row input[name="confiabilidad"]');
    confiabilidadRadios.forEach(radio => {
        radio.addEventListener('click', function() {
            const selectedValue = this.value;
            const tdElement = this.parentNode;
            confiabilidadRadios.forEach(radio => {
                radio.parentNode.style.backgroundColor = '';
            });

            if (this.checked) {
                if (selectedValue === 'mala') {
                    tdElement.style.backgroundColor = 'red';
                } else if (selectedValue === 'regular') {
                    tdElement.style.backgroundColor = 'orange';
                } else if (selectedValue === 'buena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'blue';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'aqua';
                }
            }
        });
    });

    const usabilidadRadios = document.querySelectorAll('.usabilidad-row input[name="usabilidad"]');
    usabilidadRadios.forEach(radio => {
        radio.addEventListener('click', function() {
            const selectedValue = this.value;
            const tdElement = this.parentNode;

            usabilidadRadios.forEach(radio => {
                radio.parentNode.style.backgroundColor = '';
            });

            if (this.checked) {
                if (selectedValue === 'mala') {
                    tdElement.style.backgroundColor = 'red';
                } else if (selectedValue === 'regular') {
                    tdElement.style.backgroundColor = 'orange';
                } else if (selectedValue === 'buena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'blue';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'aqua';
                }
            }
        });
    });

    const rendimientoRadios = document.querySelectorAll('.rendimiento-row input[name="rendimiento"]');
    rendimientoRadios.forEach(radio => {
        radio.addEventListener('click', function() {
            const selectedValue = this.value;
            const tdElement = this.parentNode;

            rendimientoRadios.forEach(radio => {
                radio.parentNode.style.backgroundColor = '';
            });

            if (this.checked) {
                if (selectedValue === 'mala') {
                    tdElement.style.backgroundColor = 'red';
                } else if (selectedValue === 'regular') {
                    tdElement.style.backgroundColor = 'orange';
                } else if (selectedValue === 'buena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'blue';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'aqua';
                }
            }
        });
    });

    const mantenimientoRadios = document.querySelectorAll('.mantenimiento-row input[name="mantenimiento"]');
    mantenimientoRadios.forEach(radio => {
        radio.addEventListener('click', function() {
            const selectedValue = this.value;
            const tdElement = this.parentNode;

            mantenimientoRadios.forEach(radio => {
                radio.parentNode.style.backgroundColor = '';
            });

            if (this.checked) {
                if (selectedValue === 'mala') {
                    tdElement.style.backgroundColor = 'red';
                } else if (selectedValue === 'regular') {
                    tdElement.style.backgroundColor = 'orange';
                } else if (selectedValue === 'buena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'blue';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'aqua';
                }
            }
        });
    });

    const portabilidadRadios = document.querySelectorAll('.portabilidad-row input[name="portabilidad"]');
    portabilidadRadios.forEach(radio => {
        radio.addEventListener('click', function() {
            const selectedValue = this.value;
            const tdElement = this.parentNode;

            // Restaurar el color de fondo de todas las celdas td
            portabilidadRadios.forEach(radio => {
                radio.parentNode.style.backgroundColor = '';
            });

            if (this.checked) {
                if (selectedValue === 'mala') {
                    tdElement.style.backgroundColor = 'red';
                } else if (selectedValue === 'regular') {
                    tdElement.style.backgroundColor = 'orange';
                } else if (selectedValue === 'buena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'blue';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'aqua';
                }
            }
        });
    });

    const seguridadRadios = document.querySelectorAll('.seguridad-row input[name="seguridad"]');
    seguridadRadios.forEach(radio => {
        radio.addEventListener('click', function() {
            const selectedValue = this.value;
            const tdElement = this.parentNode;

            // Restaurar el color de fondo de todas las celdas td
            seguridadRadios.forEach(radio => {
                radio.parentNode.style.backgroundColor = '';
            });

            if (this.checked) {
                if (selectedValue === 'mala') {
                    tdElement.style.backgroundColor = 'red';
                } else if (selectedValue === 'regular') {
                    tdElement.style.backgroundColor = 'orange';
                } else if (selectedValue === 'buena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'blue';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'aqua';
                }
            }
        });
    });

    const compatibilidadRadios = document.querySelectorAll('.compatibilidad-row input[name="compatibilidad"]');
    compatibilidadRadios.forEach(radio => {
        radio.addEventListener('click', function() {
            const selectedValue = this.value;
            const tdElement = this.parentNode;

            // Restaurar el color de fondo de todas las celdas td
            compatibilidadRadios.forEach(radio => {
                radio.parentNode.style.backgroundColor = '';
            });

            // Cambiar el color de fondo de la celda td solo si se selecciona una opción
            if (this.checked) {
                if (selectedValue === 'mala') {
                    tdElement.style.backgroundColor = 'red';
                } else if (selectedValue === 'regular') {
                    tdElement.style.backgroundColor = 'orange';
                } else if (selectedValue === 'buena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'blue';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'aqua';
                }
            }
        });
    });

    const radios = document.querySelectorAll('input[type="radio"]');
    const promedioElement = document.getElementById('promedio');

    const valores = {
        "mala": 0,
        "regular": 25,
        "buena": 50,
        "muybuena": 75,
        "excelente": 100
    };

    radios.forEach(radio => {
        radio.addEventListener('change', () => {
            let total = 0;
            radios.forEach(radio => {
                if (radio.checked) {
                    total += valores[radio.value];
                }
            });

            const promedio = (total / 8).toFixed(2);
            promedioElement.textContent = promedio;
        });
    });

    function guardarEncuesta() {
        const funcionalidadRadios = document.querySelectorAll('.funcionalidad-row input[name="funcionalidad"]');
        const confiabilidadRadios = document.querySelectorAll('.confiabilidad-row input[name="confiabilidad"]');
        const usabilidadRadios = document.querySelectorAll('.usabilidad-row input[name="usabilidad"]');
        const rendimientoRadios = document.querySelectorAll('.rendimiento-row input[name="rendimiento"]');
        const mantenimientoRadios = document.querySelectorAll('.mantenimiento-row input[name="mantenimiento"]');
        const portabilidadRadios = document.querySelectorAll('.portabilidad-row input[name="portabilidad"]');
        const seguridadRadios = document.querySelectorAll('.seguridad-row input[name="seguridad"]');
        const compatibilidadRadios = document.querySelectorAll('.compatibilidad-row input[name="compatibilidad"]');

        // Función para verificar si todos los radios están seleccionados
        function todosRadiosSeleccionados(radios) {
            return Array.from(radios).every(radio => radio.checked);
        }

        if (
            todosRadiosSeleccionados(funcionalidadRadios) &&
            todosRadiosSeleccionados(confiabilidadRadios) &&
            todosRadiosSeleccionados(usabilidadRadios) &&
            todosRadiosSeleccionados(rendimientoRadios) &&
            todosRadiosSeleccionados(mantenimientoRadios) &&
            todosRadiosSeleccionados(portabilidadRadios) &&
            todosRadiosSeleccionados(seguridadRadios) &&
            todosRadiosSeleccionados(compatibilidadRadios)
        ) {
            Swal.fire({
                title: 'Guardar encuesta',
                text: '¿Estás seguro de que deseas guardar la encuesta?',
                icon: 'question',
                showCancelButton: true,
                confirmButtonText: 'Sí, guardar',
                cancelButtonText: 'Cancelar'
            }).then((result) => {
                if (result.isConfirmed) {
                    // Lógica para guardar la encuesta
                    Swal.fire('Encuesta guardada', '', 'success');
                }
            });
        } else {
            Swal.fire('Por favor, selecciona todas las respuestas antes de guardar', '', 'error');
        }
    }




    function cancelarAccion() {
        Swal.fire({
            title: 'Cancelar acción',
            text: '¿Estás seguro de que deseas cancelar la acción?',
            icon: 'question',
            showCancelButton: true,
            confirmButtonText: 'Sí, cancelar',
            cancelButtonText: 'No, volver atrás'
        }).then((result) => {
            if (result.isConfirmed) {
                // Lógica para cancelar la acción
                Swal.fire('Acción cancelada', '', 'info');
            }
        });
    }

    function limpiarFormulario() {
        Swal.fire({
            title: 'Limpiar formulario',
            text: '¿Estás seguro de que deseas limpiar el formulario?',
            icon: 'question',
            showCancelButton: true,
            confirmButtonText: 'Sí, limpiar',
            cancelButtonText: 'No, volver atrás'
        }).then((result) => {
            if (result.isConfirmed) {
                // Lógica para limpiar el formulario
                Swal.fire('Formulario limpiado', '', 'info');
            }
        });
    }

    function mostrarResumen() {
        Swal.fire({
            title: 'Mostrar resumen',
            text: '¿Estás seguro de que deseas ver el resumen?',
            icon: 'question',
            showCancelButton: true,
            confirmButtonText: 'Sí, ver resumen',
            cancelButtonText: 'Cancelar'
        }).then((result) => {
            if (result.isConfirmed) {
                // Lógica para mostrar el resumen
                Swal.fire('Resumen mostrado', '', 'success');
            }
        });
    }

</script>


<script src="assets/feather.js"></script>
<script src="assets/bootstrap.bundle.min.js"></script>
<script>
    feather.replace();
</script>

</body>

</html>
