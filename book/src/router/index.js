import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter);


const router = new VueRouter({
  routes: [
    {
      path: "/",
      component: () => import("@/components/Home.vue"),
    },
    {
      path: "/login",
      component: () => import("@/components/Login/login.vue"),
    },
  ],
});

export default router;
