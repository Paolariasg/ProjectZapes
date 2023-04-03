<template>
    <NavBar>
      <template v-slot:main>
        <HelloWorld />
      </template>
      <template v-slot:registro>
        <RegisTro />
      </template>
      <template v-slot:footer>
        <FooTer />
      </template>
    </NavBar>
  </template>
  
  <script>
  import { defineComponent } from 'vue';
  
  // Components
  import NavBar from '../components/NavBar.vue';
  import FooTer from '../components/FooTer.vue';
  import RegisTro from '../components/RegisTro.vue';
  
  
  export default defineComponent({
    name: 'RegistroView',
  
    components: {
      NavBar,
      FooTer,
      RegisTro
    },
  });
  </script>