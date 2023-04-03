<template>
    <v-row>
        <v-col cols="3" v-for="(item, index) in items" :key="index">
            <div class="movImgr oror">
                <v-card width="300" color="#f5f5f5" height="540">
                    <v-img class="align-end text-white" height="350" :src="item.image" cover></v-img>
                    <h4 class="textos"> {{ item.name }}</h4>
                    <v-card-text>
                        <strong>Categoria:</strong> {{ item.category }}
                        <br>
                        <strong>Precio: $</strong>{{ item.price }}
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
.textos {
    /* font-size: 1px; */
    padding: 10px;
    width: 100%;
    text-align: center;
}

.movImgr:hover {
    transform: translateY(3px);
    transition: all .1s;
    box-shadow: 0px 0px 7px 1px #a3a3a3;
    cursor: pointer;
}

.oror {
    margin-top: 5%;
    margin-bottom: 5%;
    margin-left: 10%;
    width: 300px;
}
</style>

<script>
export default {
    data: () => ({
        show: false,
        items: []
    }),
    methods: {
        fetchData() {
            fetch('https://ecommercebackend.fundamentos-29.repl.co/').then(response => response.json()).then(data => {
                this.items = data;
            })
                .catch(error => console.log(error));
        }
        
    },
    created() {
        this.fetchData();
    }
}
</script>