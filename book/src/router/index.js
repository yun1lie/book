import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter);


const router = new VueRouter({
    routes: [{
            path: "/",
            component: () =>
                import ("@/components/Home.vue"),
        },
        {
            path: "/login",
            component: () =>
                import ("@/components/Login/login.vue"),
        },
        {
            path: "/userpage",
            component: () =>
                import ("@/components/person/userpage.vue"),
        },
        //子路由乱七八糟的,不会写

    ],
});

export default router;