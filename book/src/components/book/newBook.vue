<template>
  <div class="newBook">
    <TheNav></TheNav>
    <div class="book-cards">
      <div class="book-header"><h3>&nbsp;&nbsp;&nbsp;&nbsp;New Book</h3></div>
      <div class="book-cont">
        <div class="book-card" v-for="i in this.bookList" :key="i.bookId">
          <router-link
            :to="{
              name: 'details',
              query: {
                bookImage: i.bookImage,
                bookName: i.bookName,
                author: i.author,
                bookNum: i.bookNum,
                bookconcern: i.bookConcern,
                publishtime: i.publishTime,
                bookprice: i.bookPrice,
                infbook: i.infbook,
                infauthor: i.infauthor
              },
            }"
          >
            <img :src="i.bookImage" alt="" />
            <p>{{ i.bookName }}</p>
            <p>{{ i.author }}</p>
            <div style="display: none">{{i.bookNum}}{{i.bookConcern}}{{i.publishTime}}{{i.bookPrice}}{{i.infbook}}{{i.infauthor}}</div>
          </router-link>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import TheNav from "@/components/TheNav/TheNav.vue";
import axios from "axios";
export default {
  created() {
    axios({ url: "/api/findAllBook", method: "get" }).then((data) => {
      console.log(data.data);
      this.bookList = data.data;
    });
  },
  data() {
    return {
      bookList: [],
    };
  },
  components: { TheNav },
};
</script>

<style scpoed>
.book-cards {
  background-color: rgb(246, 247, 241);
  height: auto;
  display: flex;
  width: 90%;
  max-width: 1100px;
  margin: auto;
  flex-direction: column;
}
.book-cards .book-header {
  width: 100%;
  height: 65px;
}
.book-cards .book-cont {
  width: 100%;
  height: auto;
  display: flex;
  flex-wrap: wrap;
}

.book-cont .book-card {
  padding: 3.75%;
  width: 12.5%;
  font-size: 12px;
}
.book-cards .book-cont img {
  width: 100%;
}
a {
  color: black;
  text-decoration: none;
}
</style>
