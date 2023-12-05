<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="mx.edu.utez.siet.DatabaseManager" %>


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
                    <select class="form-select form-select-sm w-50 mt-2 mx-auto" aria-label="Default select example" id="idTiendita">
                        <!-- Opciones de tiendas se cargarán dinámicamente -->
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
                    <select class="form-select form-select-sm w-25 mt-2 mx-auto" aria-label="Default select example" id="idEncuesta">
                        <!-- Opciones de encuestas se cargarán dinámicamente -->
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
                <th scope="col" id="thprincipal"><img src="assets/img/pito.png" style="width: 40px; height: 40px" alt="">Características</th>
                <th scope="col" class="text-danger">Mala</th>
                <th scope="col" class="text-warning">Regular</th>
                <th scope="col" class="" style="color: gold">Buena</th>
                <th scope="col" class="muybuena" style="color: green">Muy buena</th>
                <th scope="col" class="" style="color: blue">Excelente</th>
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
                    tdElement.style.backgroundColor = 'darkorange';
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

            compatibilidadRadios.forEach(radio => {
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

    function guardarEncuesta() {
        const idTienda = obtenerIdTienda();
        const idEncuesta = obtenerIdEncuesta();

        // Verificar si se ha seleccionado una tienda y una encuesta
        if (!idTienda || !idEncuesta) {
            console.error('Por favor, seleccione una tienda y una encuesta.');
            return;
        }

        const respuestas = {
            funcionalidad: obtenerValorRadio('funcionalidad').toString(),
            confiabilidad: obtenerValorRadio('confiabilidad').toString(),
            usabilidad: obtenerValorRadio('usabilidad').toString(),
            rendimiento: obtenerValorRadio('rendimiento').toString(),
            mantenimiento: obtenerValorRadio('mantenimiento').toString(),
            portabilidad: obtenerValorRadio('portabilidad').toString(),
            seguridad: obtenerValorRadio('seguridad').toString(),
            compatibilidad: obtenerValorRadio('compatibilidad').toString(),
        };

        // Verificar que respuestas tenga valores válidos
        if (!verificarRespuestas(respuestas)) {
            console.error('Respuestas no válidas:', respuestas);
            return;
        }

        console.log('Respuestas:', respuestas);

        const promedio = calcularPromedio(respuestas);

        // Guardar también el nombre de la tienda y la encuesta
        const nombreTienda = obtenerNombreTienda();
        const nombreEncuesta = obtenerNombreEncuesta();

        const resultados = {
            idTienda,
            idEncuesta,
            nombreTienda,
            nombreEncuesta,
            respuestas,
            promedio,
        };

        console.log('Resultados:', resultados); // Agrega esta línea para verificar resultados

        guardarResultados(idTienda, idEncuesta, respuestas);
    }

    function verificarRespuestas(respuestas) {
        for (const key in respuestas) {
            if (respuestas.hasOwnProperty(key)) {
                if (respuestas[key] === undefined || respuestas[key] === null) {
                    return false;
                }
            }
        }
        return true;
    }





    function obtenerIdTienda() {
        const selectTiendas = document.querySelector('#idTiendita');
        return selectTiendas.value;
    }

    function obtenerIdEncuesta() {
        const selectEncuestas = document.querySelector('.form-select.w-25');
        return selectEncuestas.value;
    }

    function obtenerNombreTienda() {
        const selectTiendas = document.querySelector('.form-select');
        return selectTiendas.options[selectTiendas.selectedIndex].textContent;
    }

    function obtenerNombreEncuesta() {
        const selectEncuestas = document.querySelector('#idEncuesta');
        return selectEncuestas.options[selectEncuestas.selectedIndex].textContent;
    }


    function obtenerValorRadio(name) {
        const radios = document.querySelectorAll(`input[name="${name}"]:checked`);
        return radios.length > 0 ? parseFloat(radios[0].value) : 0;
    }



    function calcularPromedio(respuestas) {
        const valores = {
            "mala": 0,
            "regular": 25,
            "buena": 50,
            "muybuena": 75,
            "excelente": 100
        };

        let total = 0;
        let totalRespuestas = 0;

        if (respuestas && typeof respuestas === 'object') {
            for (const key in respuestas) {
                if (respuestas.hasOwnProperty(key)) {
                    const valorRespuesta = valores[respuestas[key]];
                    if (valorRespuesta !== undefined) {
                        total += parseFloat(valorRespuesta);
                        totalRespuestas++;
                    } else {
                        console.warn('Respuesta no válida:', respuestas[key]);
                    }
                }
            }
        } else {
            console.error('Respuestas no válidas:', respuestas);
            return 0;
        }

        const promedio = totalRespuestas > 0 ? (total / totalRespuestas).toFixed(2) : 0;

        return promedio;
    }









    function guardarResultados(idTienda, idEncuesta, respuestas) {
        const query = `
            INSERT INTO answers (idTienda, idEncuesta, idQuestion, answerValue)
            VALUES (?, ?, ?, ?)
        `;

        const promedio = calcularPromedio(respuestas);
        const valuesToInsert = [];

        // Verificar que respuestas sea un objeto antes de intentar iterar sobre sus entradas
        if (respuestas && typeof respuestas === 'object') {
            for (const [idQuestion, respuesta] of Object.entries(respuestas)) {
                const answerValue = convertirRespuesta(respuesta);
                valuesToInsert.push([idTienda, idEncuesta, idQuestion, answerValue !== undefined ? answerValue : 0]);
            }
        } else {
            console.error('Respuestas no válidas:', respuestas);
            return; // O manejar el error de alguna manera apropiada
        }

        connection.query(query, valuesToInsert, (err, results, fields) => {
            if (err) {
                console.error('Error al insertar en la base de datos:', err);
                return;
            }
            console.log('Resultados guardados en la base de datos:', results);
            console.log('Promedio:', promedio);
        });
    }


    // Función para convertir la respuesta según la escala
    function convertirRespuesta(respuesta) {
        const valores = {
            "mala": 0,
            "regular": 25,
            "buena": 50,
            "muybuena": 75,
            "excelente": 100
        };
        return valores[respuesta] !== undefined ? valores[respuesta] : 0;
    }



    function cargarTiendas() {
        console.log('Cargando tiendas...');

        fetch('http://localhost:3000/obtener-tiendas', {
            method: 'GET',
            mode: 'cors',
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error(`Error de red: ${response.status}`);
                }
                return response.json();
            })
            .then(tiendas => {
                console.log('Datos de tiendas:', tiendas);

                const selectTiendas = document.querySelector('.form-select');
                selectTiendas.innerHTML = '';

                tiendas.forEach(tienda => {
                    console.log('Datos de la tienda actual:', tienda);

                    const option = document.createElement('option');
                    option.value = tienda.idShop;
                    option.textContent = tienda.nameShop;
                    selectTiendas.appendChild(option);
                });

                console.log('Opciones de tiendas cargadas:', selectTiendas.innerHTML);

                console.log('Número de opciones:', selectTiendas.options.length);
            })
            .catch(error => console.error('Error al obtener tiendas:', error));
    }
    cargarTiendas();

    function cargarEncuestas() {
        console.log('Cargando encuestas...');
        fetch('http://localhost:3000/obtener-encuestas')
            .then(response => response.json())
            .then(encuestas => {
                const selectEncuestas = document.querySelector('#idEncuesta');
                selectEncuestas.innerHTML = '';
                encuestas.forEach(encuesta => {
                    const option = document.createElement('option');
                    option.value = encuesta.idSurvey;
                    option.textContent = encuesta.nameSurvey;
                    selectEncuestas.appendChild(option);
                });
                console.log('Encuestas cargadas correctamente');
            })
            .catch(error => console.error('Error al obtener encuestas:', error));
    }

    cargarEncuestas();



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
                location.reload();

                Swal.fire('Formulario limpiado', '', 'info');
            }
        });
    }

    function cancelarAccion() {
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
                location.reload();
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