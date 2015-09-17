<?php
    if(!isset($form_academica) || !isset($exp_laboral) || !isset($informatica) 
            || !isset($form_complementaria) || !isset($idiomas)){
        exit("<h3>No se ha podido cargar la informacion de curriculum</h3>");
    }
?>
<link rel="stylesheet" href="<?=base_url('public/js/jquery.mask.js')?>">
<div class="contenido">
    <h2 class="form-title">Editar curriculum</h2>
    <form action="<?=base_url('Curriculum/Actualizar')?>">

    <div id="formacion_academica" class="field"><!-- FORMACION ACADEMICA -->
        <div class="group-title">
            <h4>1. Formacion academica</h4>
        </div>
        <?php
             foreach ($form_academica->result() as $row){
                echo "<div class='group-body'>
                        <div class='form-inline'>
                            <div class='form-group'>
                                <label>Nombre de la titulación</label><br>
                                <div class='input-group'>
                                    <div class='titulo'></div>
                                        <div class='input-group-btn'>
                                        <button id='btnAgregarTitulo' onclick='agregarTitulo()' type='button' class='btn btn-warning btn-sm'>Agregar</button>
                                    </div>
                                </div>
                            </div>
                            <div class='form-group'>
                                <label>Año de comienzo</label><br>
                                <input style='width:auto;'class='form-control fecha' type='text' name='comienzo_formacion[]' >
                            </div>
                            <div class='form-group'>
                                <label>Año de finalización</label><br>
                                <input style='width:auto;' class='form-control fecha' type='text' name='finalizacion_formacion[]' >
                            </div><br>
                        </div>  
                    </div>";
            }
        ?>
    </form>
</div>