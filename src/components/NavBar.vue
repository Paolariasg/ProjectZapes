<template>
  <div class="color-barra d-flex">
    <div class="circulo"><v-icon icon="mdi-check-circle"></v-icon></div>
    <div>
      <h4>ENVIOS GRATIS </h4>
    </div>
    <div>
      <p class="ml-1 text-white">por compras superiores a 50.000</p>
    </div>
  </div>
  <!-- Barra de navegación -->
  <v-app id="inspire">
    <v-app-bar class="px-5" color="#f5f5f5" density="compact">

      <!-- Logo -->
      <a href="http://localhost:8080/">
        <v-avatar class="hidden-sm-and-down" size="45">
          <v-img src="../assets/logoColor.png" alt="rana"></v-img>
        </v-avatar></a>

      <v-spacer></v-spacer>

      <!-- Boton de la barra de navegación -->
      <v-btn v-for="(item, index) in rutas" :key="index" class="boton1 botones" @click="url(item.ruta)">
        <span>{{ item.nombre }}</span>
      </v-btn>
      <v-btn v-for="(item, index) in promo" :key="index" class="text-green botones2" @click="url(item.ruta)">
        <span>{{ item.nombre }}</span>
      </v-btn>
      <v-spacer></v-spacer>

      <!-- Login -->
      <v-menu>
        <template v-slot:activator="{ props }">
          <v-btn icon v-bind="props">
            <v-icon><v-img src="../assets/user.png"></v-img></v-icon>
          </v-btn>
        </template>

        <v-list>
          <v-list-item v-for="(item, index) in items" :key="index" class="boton1 botones" @click="url(item.ruta)">
            <v-list-item-title>{{ item.nombre }}</v-list-item-title>
          </v-list-item>
        </v-list>
      </v-menu>

      <v-btn class="ml-2 " icon @click="show = !show">
        <v-icon><v-img src="../assets/anadir-al-carrito.png"></v-img></v-icon>
      </v-btn>

    </v-app-bar>
    <!-- Fin de la barra de navegación -->

    <!-- Cuerpo de la pagina -->
    <v-main>
      <!-- Carrito de compras -->
      <v-expand-transition class="carta_carrito">
        <div v-show="show">
          <v-divider></v-divider>
          <v-card-text>
            Aca deberían ir los productos agregados al carro
          </v-card-text>
        </div>
      </v-expand-transition>

    </v-main>
    <container class="bg">

      <!-- Fin cuerpo de la pagina -->
      <slot name="prueba"></slot>
      <slot name="registro"></slot>
      <slot name="inicio"></slot>
      <slot name="todo"></slot>
      <slot name="mujer"></slot>
      <slot name="hombre"></slot>
    </container>
    <!-- Pie de pagina -->
  </v-app>
  <slot name="footer"></slot>
</template>

<style>
.bg {
  background-color: #fffef4;
}

.carta_carrito {
  z-index: 50;
  position: absolute;
  overflow-y: hidden;
  margin-left: 79%;
  background-color: #6dcb36;
  height: 550px;
  width: 300px;
}

.botones2:hover {
  border-bottom: solid 2px #6dcb36;
  border-radius: 0px;
}


.color-barra {
  background-color: #209132;
  padding: 2px;
}

.circulo {
  margin-left: 35%;
  color: #e89d20;
  font-size: 13px;
}

h4 {
  color: #e89d20;
}
</style>

<script>

export default {
  name: 'VBtn',
  data: () => ({
    show: false,
    drawer: false,
    rutas: [
      { nombre: 'inicio', ruta: '/' },
      { nombre: 'todo', ruta: '/todo' },
      { nombre: 'hombre', ruta: '/hombre' },
      { nombre: 'mujer', ruta: '/mujer' },
    ],
    items: [
      { nombre: 'Login', ruta: '/login' },
      { nombre: 'Sing Up', ruta: '/registro' },

    ],
    promo: [
      { nombre: 'promoción', ruta: '/promocion' },
    ],

  }),

  methods: {
    url(ruta) {
      this.$router.push(ruta)
    }
  },

}

</script>