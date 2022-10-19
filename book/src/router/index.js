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
    //子路由乱七八糟的,不会写
    // {
    //   path: "",
    //   name: "userpage",
    // //   component: userpage,
    //   children: [
    //     {
    //       path: "/userpage",
    //       // component: r => require.ensure([], () => r(require('@/views/Index')), 'index')
    //       component: () => import("@/components/person/userpage.vue"),
    //     },
    //     {
    //       path: "/newsuser/personal/:id",
    //       component: (r) =>
    //         require.ensure(
    //           [],
    //           () => r(require("@/views/person/Personal")),
    //           "personal"
    //         ),
    //       meta: {
    //         requireLogin: true,
    //       },
    //       children: [
    //         // {
    //           // path: '/personal/info/:id',
    //         //   path: "/newsuser/personal/info/:id",
    //         //   name: "info",
    //         //   component: (r) =>
    //         //     require.ensure(
    //         //       [],
    //         //       () => r(require("@/views/person/Info")),
    //         //       "info"
    //         //     ),
    //         // },
    //         // {
    //         // //   path: "/newsuser/personal/myarticle/:id",
    //         // //   name: "myarticle",
    //         // //   component: (r) =>
    //         // //     require.ensure(
    //         // //       [],
    //         // //       () => r(require("@/views/person/MyArticle")),
    //         // //       "myarticle"
    //         // //     ),
    //         // },
    //         // {
    //         //   path: "/newsuser/personal/mycollect/:id",
    //         //   name: "mycollect",
    //         //   component: (r) =>
    //         //     require.ensure(
    //         //       [],
    //         //       () => r(require("@/views/person/MyCollect")),
    //         //       "mycollect"
    //         //     ),
    //         // },
    //         // {
    //         //   path: "/newsuser/personal/myfan/:id",
    //         //   name: "myfan",
    //         //   component: (r) =>
    //         //     require.ensure(
    //         //       [],
    //         //       () => r(require("@/views/person/MyFanAndFollow")),
    //         //       "myfan"
    //         //     ),
    //         // },
    //         // {
    //         //   path: "/newsuser/personal/myfollow/:id",
    //         //   name: "myfollow",
    //         //   component: (r) =>
    //         //     require.ensure(
    //         //       [],
    //         //       () => r(require("@/views/person/MyFanAndFollow")),
    //         //       "myfollow"
    //         //     ),
    //         // },
    //       ],
    //     },
    //   ],
    // },
  ],
});

export default router;
