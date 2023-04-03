<template>
    <NavBar>
      <template v-slot:main>
        <HelloWorld />
      </template>
      <template v-slot:registro>
        <LoginCom />
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
  import LoginCom from '../components/LoginCom.vue';
  
  
  export default defineComponent({
    name: 'LoginView',
  
    components: {
      NavBar,
      FooTer,
      LoginCom
    },
  });
  </script>