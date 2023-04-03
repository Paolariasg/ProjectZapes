<template>
  <footer>
    <div class="hola">

      <div class="fle">
        <div class="bloque1">
          <a href="http://localhost:8080/todo"> <p class="texto1">Todo</p> </a>
          <a href="http://localhost:8080/hombre"><p class="texto1">Hombre</p></a>
          <a href="http://localhost:8080/mujer"><p class="texto1">Mujer</p></a>
        </div>
        <div class="bloque2">
          <p class="texto2">Preguntas frecuentes</p>
          <p class="texto2">Envíos y devoluciones</p>
          <p class="texto2">Métodos de pago </p>
        </div>

        <div class="bloqueText d-flex justify-end">
          <v-text-field variant="underlined" label="Ingresa tu email aquí">
          </v-text-field>
          <v-btn variant="outlined ma-4">
            Suscribirme
          </v-btn >
        </div>
      </div>


    </div>

    <div class="texto d-flex justify-end">
      <p>© 2023 Creado por Zapes</p>
    </div>


  </footer>
</template>
  
<style>
.bloqueText{
  width: 30%;
  margin-left: 28%;
  justify-content:flex-end
}

.fle {
  background-color: rgba(0, 0, 255, 0);
  display: flex;
}

.hola {
  color: #fdfdfd;
  padding-top: 2%;
  width: 100%;
  height: 130px;
  background-color: #1f1f1f;
  font-size: 13px;
}

.texto {
  padding: 0.5%;
  padding-left: 30px;
  width: 100%;
  background-color: #e89d20;
  box-shadow: 0px 10px 20px 10px rgba(0, 0, 0, 0.332);
}

.bloque1 {
  margin-left: 10%;
}

.texto1 {
  margin: 5px;
}

.texto1:hover {
  border-bottom: solid 1px #e89d20;
}


.bloque2 {
  width: 170px;
  margin-left: 5%;
}

.texto2 {
  margin: 5px;
}

a{
  text-decoration: none;
  color: white;
  }

</style>