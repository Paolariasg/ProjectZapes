<template>
    <NavBar>
        <template v-slot:prueba>
            <CardsPromocion />
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
import CardsPromocion from '../components/CardsPromocion.vue';


export default defineComponent({
    name: 'PruebaView',

    components: {
        NavBar,
        FooTer,
        CardsPromocion
    },
});
</script>