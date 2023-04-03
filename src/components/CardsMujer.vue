<template>
    <v-row>
        <v-col cols="3" v-for="producto in productos" :key="producto.idProductos">
            <div class="movImgr oror">
                <v-card width="300" color="#f5f5f5" height="540">
                    <v-img class="align-end text-white" height="350" :src="producto.imagen" cover></v-img>
                    <h4 class="textos">{{ producto.titulo }} </h4>
                    <v-card-text  class="descrip">
                        <strong>Descripción:</strong> {{ producto.descripcion }}
                    <br>
                        <strong>Precio: $</strong> {{ producto.precio }}
                    </v-card-text>
                    <v-card-actions>
                        <v-btn color="#D9A034"> Comprar </v-btn>
                    </v-card-actions>
                </v-card>
            </div>
        </v-col>
    </v-row>
</template>

<style>
    .descrip {
        
    }
</style>

<script>
import axios from 'axios';

export default {
    data() {
        return {
            productos: []
        };
    },
    mounted() {
        axios.get('http://localhost:3000/productos?limit=10').then((response) => {
            this.productos = response.data
        })

    }

};

</script>