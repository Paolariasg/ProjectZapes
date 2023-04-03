<template>
  <!-- Imagenes principales Body -->

  <div class="flex_imagenes d-flex justify-space-between mt-5">
    <div class="carta_uno">
      <div>
        <v-hover v-slot="{ isHovering, props }">
          <v-card v-bind="props">
            <v-img cover
              src="https://images.pexels.com/photos/15817796/pexels-photo-15817796.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
              <v-expand-transition>
                <div v-if="isHovering" class="d-flex transition-fast-in-fast-out  v-card--reveal text-h2 fondo_imagenes"
                  style="height: 100%;">

                  <v-btn variant="outlined" v-for="(item, index) in rutasm" :key="index"
                    class="boton_hov pb-15 text-white" @click="url(item.ruta)">
                    <p class="pBoton"> mujer</p>
                  </v-btn>
                </div>
              </v-expand-transition>
            </v-img>


          </v-card>
        </v-hover>
      </div>
    </div>

    <div class="carta_dos">
      <div>
        <v-hover v-slot="{ isHovering, props }">
          <v-card class="mx-auto" color="grey-lighten-4" max-width="600" v-bind="props">
            <v-img cover
              src="https://images.pexels.com/photos/2897531/pexels-photo-2897531.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
              <v-expand-transition>
                <div v-if="isHovering" class="d-flex transition-fast-in-fast-out  v-card--reveal text-h2 fondo_imagenes"
                  style="height: 100%;">

                  <v-btn variant="outlined" v-for="(item, index) in rutash" :key="index"
                    class="boton_hov pb-15 text-white" @click="url(item.ruta)">
                    <p class="pBoton"> hombre</p>
                  </v-btn>
                </div>
              </v-expand-transition>
            </v-img>


          </v-card>
        </v-hover>
      </div>
    </div>

    <div class="carta_tres">
      <div>
        <v-hover v-slot="{ isHovering, props }">
          <v-card class="mx-auto" color="grey-lighten-4" max-width="600" v-bind="props">
            <v-img cover
              src="https://images.pexels.com/photos/1103828/pexels-photo-1103828.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
              <v-expand-transition>
                <div v-if="isHovering" class="d-flex transition-fast-in-fast-out  v-card--reveal text-h2 fondo_imagenes"
                  style="height: 100%;">

                  <v-btn variant="outlined" v-for="(item, index) in rutasp" :key="index"
                    class="boton_hov pb-15 text-white" @click="url(item.ruta)">
                    <p class="pBoton"> promoción</p>
                  </v-btn>
                </div>
              </v-expand-transition>
            </v-img>

          </v-card>
        </v-hover>
      </div>
    </div>


  </div>

  <!-- Titulo -->
  <h1 class="d-flex justify-center py-7 color-boton-fin">COLECCIÓN DE EDICIÓN LIMITADA</h1>


  <!-- Cartas -->
  <v-row>
    <v-col cols="4" v-for="producto in productos" :key="producto.idProductos">
      <div class="movImgr oror2">
        <v-card width="300" color="#f5f5f5" height="540">
          <v-img class="align-end text-white" height="350" :src="producto.imagen" cover></v-img>
          <h4 class="textos">{{ producto.titulo }} </h4>
          <v-card-text>
            <strong>Descripción: </strong>{{ producto.descripcion }} 
            <br>
            <strong>Precio: $ </strong>{{ producto.precio }}
          </v-card-text>
          <v-card-actions>
            <v-btn color="#D9A034"> Comprar </v-btn>
          </v-card-actions>
        </v-card>
      </div>
    </v-col>
  </v-row>

  <!-- boton Ver todo -->
  <v-btn variant="text" v-for="(item, index) in rutasb" :key="index" class="boton-rana py-8" @click="url(item.ruta)">
    <span class="texto-boton">
      {{ item.nombre }}
    </span>
  </v-btn>
</template>

<style>
.oror2 {
    margin-left: 17%;
    width: 300px;
}
</style>

<script>
import axios from 'axios';

export default {
  name: 'VBtn',
  data: () => ({
    productos: [],
    drawer: false,
    rutasb: [
      { nombre: 'ver todo', ruta: '/todo' },
    ],
    rutasm: [
      { nombre: 'mujer', ruta: '/mujer' },
    ],
    rutash: [
      { nombre: 'hombre', ruta: '/hombre' },
    ],
    rutasp: [
      { nombre: 'hombre', ruta: '/promocion' },
    ]

  }),
  mounted() {
    axios.get('http://localhost:3000/productos?limit=6&offset=7').then((response) => {
      this.productos = response.data
    })
  },
  methods: {
    url(ruta) {
      this.$router.push(ruta)
    }
  },

}

</script>

<style>
/* Efecto hover en imagenes */
.movImg:hover {
  transform: translateY(3px);
  transition: all .1s;
  box-shadow: 0px 0px 7px 1px #a3a3a3;
  cursor: pointer;
}

/* Estilos Logo */
.hidden-sm-and-down {
  border-radius: 0px;
  margin-right: 0.5%;
  color: white;
  cursor: pointer;
}

/* imagenes grandes */
.fondo_imagenes {
  /* background: #d2ff3dc2; */
  background: #209132
    /*  */
  ;
}

.v-card--reveal {
  align-items: center;
  bottom: 0;
  justify-content: center;
  opacity: .9;
  position: absolute;
  width: 100%;
}

.boton_hov {
  border: solid 3px;
}

.carta_uno {
  width: 500px;
}

.carta_dos {
  width: 500px;
}

.carta_tres {
  width: 500px;
}

.pBoton {
  padding: 15px;
  font-size: 27px;
  margin-bottom: 30px;
  width: 200px;
}

/* Hover botones de la barra de navegación */
.botones:hover {
  border-bottom: solid 2px #e89d20;
  border-radius: 0px;
}

/* boton Ver todo */
.boton-rana {
  font-size: 20px;
  margin: 55px;
  margin-left: 43%;
  width: 200px;
  border-bottom: solid 2px #e89d20;
}

.texto-boton {
  margin-top: -15px;
}

.color-boton-fin {
  color: #e86720;
  text-shadow: 1px 1px 3px #4c8f78;
}</style>