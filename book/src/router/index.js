import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter);

import login from "@/components/Login/login.vue";
import register from "@/components/Login/register.vue";

const router = new VueRouter({
    routes: [{
            path: "/",
            component: () =>
                import ("@/components/Home.vue"),
        },
        {
            path: "/login",
            component: login,
        },
        {
            path: "/register",
            component: register,
        },
    ],
});

export default router;