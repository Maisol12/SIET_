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
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <title>Encuesta</title>
    <style>
        input[type="radio"] {
            appearance: none;
            -webkit-appearance: none;
            width: 23px;
            height: 23px;
            border: 2px solid #000;
            border-radius: 50%;
            margin-right: 5px;
        }

        input[type="radio"]:checked {
            background-color: #000; /* Este color es cuando el radio está seleccionado */
            border-color: #000; /* Este color es el borde del radio cuando está seleccionado */
        }

        input[type="radio"][value="mala"]:checked {
            background-color: red;
            border-color: red;
        }

        input[type="radio"][value="regular"]:checked {
            background-color: orange;
            border-color: orange;
        }

        input[type="radio"][value="buena"]:checked {
            background-color: gold;
            border-color: gold;
        }

        input[type="radio"][value="muybuena"]:checked {
            background-color: green;
            border-color: green;
        }

        input[type="radio"][value="excelente"]:checked {
            background-color: blue;
            border-color: blue;
        }

        /* Agrega más reglas CSS para otras calificaciones según sea necesario */

        /* Asegúrate de ajustar el estilo de los checkboxes si los tienes también */
        input[type="checkbox"] {
            /* Tu estilo para los checkboxes aquí */
        }
    </style>


</head>

<body>
<div class="container-fluid bg-success-subtle" >
    <div class="row">
        <div class="col-4 pt-5">
            <div class="container text-center">
                <img class="iconos-svg" src="assets/svg/store-svgrepo-com.svg" alt="Icono tiendita">
                <small>Tienditas disponibles</small>
                <div class="container">
                    <select class="form-select form-select-sm w-50 mx-auto" aria-label="Default select example" id="select1">
                        <option selected value="0" disabled>Selecciona una tiendita</option>
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
                    <select class="form-select form-select-sm w-50 mx-auto" aria-label="Default select example" id="select2">
                        <option selected value="0" disabled>Seleccionar encuesta</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container mt-4 mb-5" id="encuestaContainer" style="display: none">
    <div class="container mt-4">
        <table class="table table-bordered">
            <thead>
            <tr class="text-center table-dark borde-derecho">
                <th scope="col" id="thprincipal">Característica</th>
                <th scope="col" class="text-danger">Mala</th>
                <th scope="col" style="color: darkorange">Regular</th>
                <th scope="col" style="color: gold">Buena</th>
                <th scope="col" class="text-success">Muy buena</th>
                <th scope="col" class="text-primary">Excelente</th>
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
    var selectedId = "";
    var selectedId2 = "";
    $(document).ready(function () {
        cargarTiendas();
        function cargarTiendas() {
            // Hacer solicitud GET al servidor para obtener tiendas
            $.get("http://localhost:3000/mostrar-tiendas")
                .done(function (tiendas) {
                    // Llenar el menú desplegable con las tiendas
                    var select = $("#select1");
                    console.log(select)
                    select.empty();
                    select.append('<option selected value="0" disabled>Selecciona una tienda</option>');

                    if (tiendas && tiendas.tiendas && Array.isArray(tiendas.tiendas)) {
                        tiendas.tiendas.forEach(function (tienda) {
                            var option = $("<option>").attr("value", tienda.id).text(tienda.nameTienda);
                            select.append(option);
                        });
                    } else {
                        console.error('Error: Expected an array of tiendas, but received:', tiendas);
                    }

                    // Obtener el ID de la tienda seleccionada al cambiar la opción
                    select.change(function () {
                        selectedId = $(this).val();
                        console.log(selectedId);
                    });
                })
                .fail(function (error) {
                    console.error('Error loading tiendas:', error);
                });
        }


    });

        function cargarEncuestas() {
            // Hacer solicitud GET al servidor para obtener encuestas
            $.get("http://localhost:3000/mostrar-encuestas")
                .done(function (encuestas) {
                    // Llenar el menú desplegable con las encuestas
                    var select = $("#select2");
                    console.log(select)
                    select.empty();
                    select.append('<option selected value="0" disabled>Selecciona una encuesta</option>');

                    if (encuestas && encuestas.encuestas && Array.isArray(encuestas.encuestas)) {
                        encuestas.encuestas.forEach(function (encuesta) {
                            var option = $("<option>").attr("value", encuesta.id).text(encuesta.nameSurvey);
                            select.append(option);
                        });
                    } else {
                        console.error('Error: Expected an array of encuestas, but received:', encuestas);
                    }

                    // Obtener el ID de la encuesta seleccionada al cambiar la opción
                    select.change(function () {
                        selectedId2 = $(this).val();
                        $("#idEncuesta").val(selectedId2);
                        console.log(selectedId2);
                    });
                })
                .fail(function (error) {
                    console.error('Error loading encuestas:', error);
                });
        }

        // Cargar encuestas al cargar la página
        cargarEncuestas();




        function mostrarEncuesta() {
            console.log("Mostrando/ocultando la encuesta...");
            var encuestaContainer = document.getElementById("encuestaContainer");

            var select1 = document.getElementById("select1");
            var select2 = document.getElementById("select2");

            if (select1.value !== "0" && select2.value !== "0") {
                encuestaContainer.style.display = "block";
            } else {
                encuestaContainer.style.display = "none";
            }
        }

        document.addEventListener("DOMContentLoaded", function () {
            // Obten los elementos select
            var select1 = document.getElementById("select1");
            var select2 = document.getElementById("select2");

            // Agrega un evento de cambio a los elementos select
            select1.addEventListener("change", mostrarEncuesta);
            select2.addEventListener("change", mostrarEncuesta);

            mostrarEncuesta();
        });

        document.addEventListener("DOMContentLoaded", mostrarEncuesta);


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
                    tdElement.style.backgroundColor = 'gold';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'blue';
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
                    tdElement.style.backgroundColor = 'gold';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'blue';
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
                    tdElement.style.backgroundColor = 'gold';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'blue';
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
                    tdElement.style.backgroundColor = 'gold';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'blue';
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
                    tdElement.style.backgroundColor = 'gold';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'blue';
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
                    tdElement.style.backgroundColor = 'gold';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'blue';
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
                    tdElement.style.backgroundColor = 'gold';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'blue';
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
                    tdElement.style.backgroundColor = 'gold';
                } else if (selectedValue === 'muybuena') {
                    tdElement.style.backgroundColor = 'green';
                } else if (selectedValue === 'excelente') {
                    tdElement.style.backgroundColor = 'blue';
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

        const encuestaData = {
            idTienda: selectedId,
            idEncuesta: selectedId2,
            respuestas: [
                { idQuestion: 1, answerValue: obtenerValorSeleccionado(funcionalidadRadios) },
                { idQuestion: 2, answerValue: obtenerValorSeleccionado(confiabilidadRadios) },
                { idQuestion: 3, answerValue: obtenerValorSeleccionado(usabilidadRadios) },
                { idQuestion: 4, answerValue: obtenerValorSeleccionado(rendimientoRadios) },
                { idQuestion: 5, answerValue: obtenerValorSeleccionado(mantenimientoRadios) },
                { idQuestion: 6, answerValue: obtenerValorSeleccionado(portabilidadRadios) },
                { idQuestion: 7, answerValue: obtenerValorSeleccionado(seguridadRadios) },
                { idQuestion: 8, answerValue: obtenerValorSeleccionado(compatibilidadRadios) }
            ]
        };
        console.log(encuestaData);

        // Realiza la solicitud POST al servidor
        $.ajax({
            type: 'POST',
            url: 'http://localhost:3000/guardar-respuestas',
            contentType: 'application/json',
            data: JSON.stringify(encuestaData),
            success: function (response) {
                console.log(response);
                if (response.success) {
                    Swal.fire('Encuesta guardada', '', 'success');
                } else {
                    console.log(response);
                    Swal.fire('Error al guardar la encuesta', '', 'error');
                }
            },
            error: function () {
                Swal.fire('Error al comunicarse con el servidor', '', 'error');
            }
        });
    }

    // Función para obtener el valor seleccionado de un grupo de radio buttons usando valores numéricos
    function obtenerValorSeleccionado(radios) {
        const radioSeleccionado = Array.from(radios).find(radio => radio.checked);
        return radioSeleccionado ? valoresNumericos[radioSeleccionado.value] : null;
    }


    // Mapeo de respuestas de cadena a valores numéricos
    const valoresNumericos = {
        "mala": 0,
        "regular": 25,
        "buena": 50,
        "muybuena": 75,
        "excelente": 100
    };


    // Función para obtener el valor seleccionado de un grupo de radio buttons
    function obtenerValorSeleccionado(radios) {
        const radioSeleccionado = Array.from(radios).find(radio => radio.checked);
        return radioSeleccionado ? radioSeleccionado.value : null;
    }


    function limpiarFormulario() {
        console.log('Limpiando formulario...');

        Swal.fire({
            title: 'Limpiar formulario',
            text: '¿Estás seguro de que deseas limpiar el formulario?',
            icon: 'question',
            showCancelButton: true,
            confirmButtonText: 'Sí, limpiar',
            cancelButtonText: 'No, volver atrás'
        }).then((result) => {
            console.log('Resultado de Swal:', result);

            if (result.isConfirmed) {
                // Recargar la página
                location.reload();

                // O, si prefieres redirigir a una URL específica
                // window.location.href = "tu_otra_pagina.html";

                Swal.fire('Formulario limpiado', '', 'info');
            }
        });
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
                const radios = document.querySelectorAll('input[type="radio"]');

                // Desmarcar todos los radios
                radios.forEach(radio => {
                    radio.checked = false;
                });

                // Restaurar el color de fondo de todas las celdas td
                const tds = document.querySelectorAll('td');
                tds.forEach(td => {
                    td.style.backgroundColor = '';
                });

                const promedioElement = document.getElementById('promedio');
                promedioElement.textContent = '';

                // Lógica para cancelar la acción
                Swal.fire('Acción cancelada', '', 'info');
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