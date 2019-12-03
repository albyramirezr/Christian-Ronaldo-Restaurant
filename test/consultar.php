<?php include('./header.php'); require('models.php'); ?>

<div class="container">
    <h2>Buscar producto</h2>
    <form action="" method="GET">
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label for="actu-codigo">Código del producto</label>
                    <input class="form-control" type="text" name="prod_codigo" id="prod_codigo">
                </div>
                <div class="form-group">
                    <input class="btn btn-success" name="consulpr" value="Buscar" type="submit">
                </div>
            </div>
            </form>
            <div class="col-md-8">
                <?php
                    if(isset($_GET['consulpr'])){
                        $prod_code = $_GET['prod_codigo'];
                        $buscar_prod = "SELECT * FROM productos WHERE codigo_producto='$prod_code'";
                        $prod_encontrado = $conn->query($buscar_prod);
                        if($prod_encontrado->num_rows <= 0){
                            echo 'Producto no encontrado o código inválido';
                        }else{
                            while($lista=$prod_encontrado->fetch_assoc()){
                                echo '
                                <form action="" method="post">
                                    <div class="d-flex justify-content-around updateForm flex-wrap">
                                        <div class="form-group">
                                            <label for="procode">Código</label>
                                            <input class="form-control" type="text" value='.$lista['codigo_producto'].' name="actu-codigo" id="actu-codigo" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="prodesc">Descripción</label>
                                            <input class="form-control actualizable" type="text" value='.$lista['descripcion_producto'].' name="actu-desc" id="actu-desc" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="prod_desc">Precio</label>
                                            <input class="form-control actualizable" type="text" value='.$lista['precio_producto'].' name="actu-precio" id="actu-precio" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="prod_desc">Stock Actual</label>
                                            <input class="form-control actualizable" type="text" value='.$lista['stock_actual_producto'].' name="actu-stockac" id="actu-stockac" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="prod_desc">Stock Mínimo</label>
                                            <input class="form-control actualizable" type="text" value='.$lista['stock_minimo_producto'].' name="actu-stockmin" id="actu-stockmin" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="prod_desc">Stock Máximo</label>
                                            <input class="form-control actualizable" type="text" value='.$lista['stock_maximo_producto'].' name="actu-stockmax" id="actu-stockmax" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="prod_desc">Código de usuario</label>
                                            <input class="form-control actualizable" type="text" value='.$lista['codigo_usuario'].' name="actu-uscode" id="actu-uscode" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="prod_desc">Fecha de registro</label>
                                            <input class="form-control" type="text" value='.$lista['fecha_registro_producto'].' name="actu-fe" id="actu-fe" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="prod_desc">Status</label>
                                            <input class="form-control actualizable" type="text" value='.$lista['status_producto'].' name="actu-status" id="actu-status" readonly>
                                        </div>
                                        <div class="form-group">
                                            <input class="btn btn-warning" id="editar" type="button" onclick="edit(this.form)" value="Editar">
                                            <input class="btn btn-primary aceptar" id="aceptar" type="submit" name="upPr" value="Aceptar" disabled>
                                            <input class="btn btn-danger aceptar" id="delete" type="submit" name="delete" value="Eliminar">
                                        </div>
                                    </div>
                                    
                                </form>
                            ';
                            if(isset($_POST['upPr'])){
                                $codactu = $_POST['actu-codigo'];
                                $descactu = $_POST['actu-desc'];
                                $precioactu = $_POST['actu-precio'];
                                $stockacactu = $_POST['actu-stockac'];
                                $stockminactu = $_POST['actu-stockmin'];
                                $stockmaxactu = $_POST['actu-stockmax'];
                                $uscodeactu = $_POST['actu-uscode'];
                                $fechaactu = $_POST['actu-fe'];
                                $statusactu = $_POST['actu-status'];
                        
                                $actu = new Consulta($conn,'productos');
                                $actu->update($codactu,$descactu,$precioactu,$stockacactu,$stockminactu,$stockmaxactu,$uscodeactu,$fechaactu,$statusactu);
                                echo'
                                <script>
                                    
                                    setTimeout(()=>{window.location="consultar.php"},200);
                                    alert("Actualizado correactamente");
                                </script>';
                            }
                            if(isset($_POST['delete'])){
                                $codigo = $_POST['actu-codigo'];
                                $delSQL = "DELETE FROM productos WHERE codigo_producto='$codigo'";
                                $delResult = $conn->query($delSQL);
                                echo'
                            <script>
                                setTimeout(()=>{window.location="consultar.php"},100);
                            </script>';
                            }
                            }
                        }
                    }
                ?>
            </div>
        </div>
    <button class="btn btn-info" onclick="listado()">Listado Completo</button>
    <div id="listado" class="d-none">
        <table>
            <tr>
                <th>Codigo Producto</th>
                <th>Descripción</th>
                <th>Precio</th>
                <th>Stock Actual</th>
                <th>Stock minimo</th>
                <th>Stock Maximo</th>
                <th>Codigo Usuario</th>
                <th>Fecha Registro</th>
                <th>Status</th>
            </tr>
            <?php
                $prods = new Consulta($conn,'productos');
                $resultado = $prods->read();
                if($resultado->num_rows >0){
                    // echo 'hello';
                    while($row = $resultado->fetch_assoc()){
                        echo'
                            <tr>
                                <td>'.$row['codigo_producto'].'</td>
                                <td>'.$row['descripcion_producto'].'</td>
                                <td>'.$row['precio_producto'].'</td>
                                <td>'.$row['stock_actual_producto'].'</td>
                                <td>'.$row['stock_minimo_producto'].'</td>
                                <td>'.$row['stock_maximo_producto'].'</td>
                                <td>'.$row['codigo_usuario'].'</td>
                                <td>'.$row['fecha_registro_producto'].'</td>
                                <td>'.$row['status_producto'].'</td>
                            </tr>
                        ';
                    }

                }
            ?>
        </table>
    </div>
</div>


</body>

</html>