<template>
  <NavBar>
    <template v-slot:main>
      <HelloWorld />
    </template>
    <template v-slot:mujer>
      <CardsMujer />
    </template>
    <template v-slot:footer>
      <FooTer />
    </template>
  </NavBar>
</template>
 
  
  <script>
  import { defineComponent } from 'vue';
  
  // Components
  import CardsMujer from '../components/CardsMujer.vue'
  import FooTer from '../components/FooTer.vue';
  import NavBar from '../components/NavBar.vue';
  
  
  export default defineComponent({
    name: 'MujerView',
  
    components: {
    CardsMujer,
    FooTer,
    NavBar
    },
  });
  </script>