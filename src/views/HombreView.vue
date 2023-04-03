<template>
  <NavBar>
    <template v-slot:main>
      <HelloWorld />
    </template>
    <template v-slot:hombre>
      <CarsHom />
    </template>
    <template v-slot:footer>
      <FooTer />
    </template>
  </NavBar>
</template>
  
  <script>
  import { defineComponent } from 'vue';
  
  // Components
  import CarsHom from '../components/CardsHom.vue'
  import FooTer from '../components/FooTer.vue';
  import NavBar from '../components/NavBar.vue';
  
  
  export default defineComponent({
    name: 'HombreView',
  
    components: {
    CarsHom,
    FooTer,
    NavBar
    },
  });
  </script>