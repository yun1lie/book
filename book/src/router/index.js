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
      path: "/newBook",
      component: () => import("@/components/book/newBook.vue"),
    },
    {
      path: "/login",
      component: () => import("@/components/Login/login.vue"),
    },
    {
      path: "/userPage",
      component: () => import("@/components/Userpage/userpage.vue"),
      children: [
        {
          name: "Profile",
          path: "/Profile",
          component: () => import("@/components/Userpage/Profile.vue"),
        },
        {
          name: "cart",
          path: "/cart",
          component: () => import("@/components/Userpage/cart.vue"),
        },
        {
          name: "orders",
          path: "/orders",
          component: () => import("@/components/Userpage/orders.vue"),
        },
        {
          name: "modify",
          path: "/modify",
          component: () => import("@/components/Userpage/modify.vue"),
        },
        {
          name: "recharge",
          path: "/recharge",
          component: () => import("@/components/Userpage/recharge.vue"),
        },
      ],
    },
  ],
});

export default router;
