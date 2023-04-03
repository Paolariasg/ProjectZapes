<template>
  <NavBar>
    <template v-slot:main>
      <HelloWorld />
    </template>
    <template v-slot:todo>
      <CardsTodo />
    </template>
    <template v-slot:footer>
      <FooTer />
    </template>
  </NavBar>
</template>
 
  <script>
  import { defineComponent } from 'vue';
  
  // Components
  import CardsTodo from '../components/CardsTodo.vue'
  import FooTer from '../components/FooTer.vue';
  import NavBar from '../components/NavBar.vue';
  
  
  export default defineComponent({
    name: 'TodoView',
  
    components: {
    CardsTodo,
    FooTer,
    NavBar
    },
  });
  </script>