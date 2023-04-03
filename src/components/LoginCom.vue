<template >
    <v-img src="../assets/fondo-acuarela-pintada-mano-forma-cielo-nubes.jpg" cover>
        <div class="contenedorLogin">
            <h2>Iniciar sesión</h2>
            <form @submit.prevent="login()">
                <div>
                    <v-text-field v-model="correo" id="email" type="email" label="Email">
                    </v-text-field>
                </div>
                <div>
                    <v-text-field v-model="password" id="password" type="password" label="Contraseña:"></v-text-field>
                </div>
                <div class="text-center text-white mt-5">
                    <v-btn x-large color="#e89d20" dark type="submit" >
                        Ingresar
                    </v-btn>
                </div>

                <div class="text-center text-white mt-5">
                    <v-btn x-large color="#b6b6b6" dark type="submit" @click="registrar()">
                        Registrarse
                    </v-btn>

                </div>
            </form>
            <br>
            <p>{{ mensaje }}</p>
            <!-- <p>{{resultados}}</p> -->
        </div>
    </v-img>
</template>

<style>
.contenedorLogin {
    padding: 2%;
    margin-top: 10%;
    margin-left: 35%;
    width: 30%;
    background-color: rgb(234, 234, 234);
    text-align: center;
    box-shadow: 0px 0px 10px 1px #636363;
    border-radius: 20px;
}

h2 {
    font-size: 30px;
    margin-bottom: 5%;
}
</style>



<script>
import axios from 'axios';

export default {
    data() {
        return {
            correo: '',
            password: '',
            mensaje: '',
            // resultados:{}
        };
    },
    methods: {
        registrar() {
            this.$router.push('/registro')
        },
        login() {
            if (!this.correo || !this.password) {
                alert('Correo electrónico y contraseña son requeridos')
                return
            }
            axios.post('http://localhost:3000/sesion', {
                correo: this.correo,
                password: this.password,
                method: 'POST',
            }).then(response => {
                alert(this.mensaje = response.data.message);
                this.$router.push('/')
            })
                .catch(error => {
                    console.log(error);
                    this.mensaje = 'Correo electrónico o contraseña incorrectos';
                })
            },        
    }
}

</script>
