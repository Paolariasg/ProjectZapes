<template>
  <NavBar>
    <template v-slot:main>
      <HelloWorld />
    </template>
    <template v-slot:inicio>
      <IniCio />
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
import IniCio from '../components/IniCio.vue';


export default defineComponent({
  name: 'HomeView',

  components: {
    NavBar,
    FooTer,
    IniCio
  },
});
</script>
