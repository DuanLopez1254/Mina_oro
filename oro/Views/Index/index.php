
<span class="ir-arriba icon-arrow-up2">Arriba</span>

<div class="lok pt-5 pb-5">
<div class="container text-center pt-5 pb-2">
<div class="fd">
<h2 class=" " style="font-family: 'Lexend Deca', sans-serif;">Bienvenido a la mina de oro de flin y glen </h2>
</div>
<br>
</div>
</div>
</div>

</center>
</div>
  
<div class="col-md-10">
<br>
<center><p class="display-4" >Ruta 1</p></center>
</div>
</div>
<br>
<table class="table">
    <thead>
    <th></th>
        <th>Cuadrante</th>
        <th>Porcentaje</th>
        <th>Opciones</th>
    </thead>
    <tbody>
    <?php foreach(parent::all() as $ruta):  ?>
        <tr>
        <td></td>
            <td><?= $ruta->Cuadrante ?></td>
            <td><?= $ruta->Porcentaje ?>%</td>
            <td><form  action="?controller=index&method=update" method="POST" >
                <input type="hidden" name="Id" value="<?= $ruta->Id ?>">
                <input type="hidden" name="Id_esta" value="2">
                <button type="submit" class="btn btn-success col-md-6">Explorado</button>
            </form></td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>
</div>

<div class="col-md-10">
<br>
<center><p class="display-4" >Ruta 2</p></center>
</div>
</div>
<br>
<table class="table">
    <thead>
    <th></th>
        <th>Cuadrante</th>
        <th>Porcentaje</th>
        <th>Opciones</th>
    </thead>
    <tbody>
    <?php foreach(parent::alls() as $ruta):  ?>
        <tr>
        <td></td>
            <td><?= $ruta->Cuadrante ?></td>
            <td><?= $ruta->Porcentaje ?>%</td>
            <td><form  action="?controller=index&method=update" method="POST" >
                <input type="hidden" name="Id" value="<?= $ruta->Id ?>">
                <input type="hidden" name="Id_esta" value="2">
                <button type="submit" class="btn btn-success col-md-6">Explorado</button>
            </form></td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>
</div>






  

