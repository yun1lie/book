<template>
  <div class="container">
    <!-- Nav -->
    <nav class="main-nav">
      <img
        src="@/assets/pic/bookIcon.jpeg"
        alt="Microsoft"
        class="logo"
        style="width: 60px; height: 60px"
      />

      <ul class="main-menu">
        <li>
          <router-link to="/"><a>Home</a></router-link>
        </li>
        <li><a href="#">New Books</a></li>
        <li><a href="#">Best selling books</a></li>
        <li><a href="#">Recommended Books</a></li>
        <li><a href="#">Search books</a></li>
        <li><a href="#">Book classification</a></li>
      </ul>

      <ul class="right-menu" v-if="this.customer == null">
        <router-link to="/login"
          ><li><a>Sign in</a></li></router-link
        >
      </ul>
      <ul class="right-menu" v-if="this.customer != null">
        <router-link to="/"
          ><li>
            <a>{{ this.customer.userName }}</a>
          </li></router-link
        >
        <router-link to="/"
          ><li>
            <a>Logout</a>
          </li></router-link
        >
      </ul>
    </nav>
  </div>
</template>

<script>
export default {
  name: "BookTheNav",
  created() {
    this.customer = JSON.parse(sessionStorage.getItem("customer"));
  },

  data() {
    return {};
  },

  mounted() {},

  methods: {},
};
</script>

<style scoped>
.container {
  width: 90%;
  max-width: 1100px;
  margin: auto;
  background-color: white;
}
a {
  color: #262626;
  text-decoration: none;
}

ul {
  list-style: none;
}
/* Nav */
.main-nav {
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 60px;
  padding: 20px 0;
  font-size: 13px;
}

.main-nav .logo {
  width: 110px;
}

.main-nav ul {
  display: flex;
}

.main-nav ul li {
  padding: 0 10px;
}

.main-nav ul li a {
  padding-bottom: 2px;
}

.main-nav ul li a:hover {
  border-bottom: 2px solid #262626;
}

.main-nav ul.main-menu {
  flex: 1;
  margin-left: 20px;
}
</style>
