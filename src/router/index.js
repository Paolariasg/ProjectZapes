import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import HombreView from '../views/HombreView.vue'
import MujerView from '../views/MujerView.vue'
import TodoView from '../views/TodoView.vue'
import RegistroView from '../views/RegistroView.vue'
import LoginView from '../views/LoginView.vue'
import PromocionView from '../views/PromocionView.vue'

const routes = [
  {
    path: '/',
    name: 'inicio',
    component: HomeView
  },
  {
    path: '/todo',
    name: 'todo',
    component: TodoView
  },
  {
    path: '/hombre',
    name: 'hombre',
    component: HombreView
  },
  {
    path: '/mujer',
    name: 'mujer',
    component: MujerView
  },
  {
    path: '/login',
    name: 'login',
    component: LoginView
  },
  {
    path: '/registro',
    name: 'registro',
    component: RegistroView
  },
  {
    path: '/promocion',
    name: 'promocion',
    component: PromocionView
  }

]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
