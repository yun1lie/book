<template>
  <div>
    <TheNav></TheNav>
    <div class="co">
      <h1>Book Name</h1>
      <div class="coo">
        <img :src="this.bookImage" />
        <div class="info">
          <p>Author&nbsp;&nbsp;&nbsp;&nbsp;{{ this.author }}</p>
          <p>Press&nbsp;&nbsp;&nbsp;&nbsp;{{ this.bookConcern }}</p>
          <p>Price&nbsp;&nbsp;&nbsp;&nbsp;{{ this.bookPrice }}</p>
          <p>ISBN:&nbsp;&nbsp;&nbsp;&nbsp;{{ this.bookNum }}</p>
        </div>
        <div class="cart">
          <el-button type="danger" round icon="el-icon-goods" @click="add">Add cart</el-button>
        </div>
      </div>
      <h2>Content validity</h2>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ books.infBook }}</p>
      <h2>Author Profile</h2>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ books.infAuthor }}</p>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import TheNav from "@/components/TheNav/TheNav.vue";
export default {
  components: { TheNav },
  methods: {
    add() {
      var cart = {
        userid: JSON.parse(sessionStorage.getItem("customer")).userId,
        productName: this.bookId,
      };
      
      axios({ url: "/api/addCart", method: "POST", data: cart }).then((data) =>
        console.log(data.data)
      );
      this.$alert('<strong>Add <i>commodity</i> Successful</strong>', 'Add cart', {
          dangerouslyUseHTMLString: true
        });
    },
  },
  data() {
    return {
      books: {},
    };
  },
  created() {
    this.bookId = this.$route.query.bookId;
    this.bookImage = this.$route.query.bookImage;
    this.bookName = this.$route.query.bookName;
    this.author = this.$route.query.author;
    this.bookNum = this.$route.query.bookNum;
    this.bookConcern = this.$route.query.bookconcern;
    this.publishTime = this.$route.query.publishTime;
    this.bookPrice = this.$route.query.bookprice;
    // this.infbook = this.$route.query.infBook;
    // this.infauthor = this.$route.query.infAuthor;
    var book = {
      author: "",
      bookConcern: "",
      bookId: this.bookId,
      bookImage: "",
      bookName: "",
      bookNum: "",
      bookPrice: "",
      infAuthor: "",
      infBook: "",
      publishTime: "",
    };
    axios({
      url: "/api/findBook",
      method: "post",
      data: book,
    }).then((data) => {
      console.log(data.data);
      this.books = data.data[0];
    });
  },
};
</script>

<style scpoed>
.co {
  background-color: rgb(246, 247, 241);
  display: flex;
  width: 90%;
  max-width: 1100px;
  margin: auto;
  flex-direction: column;
  height: auto;
}
.co h1 {
  font-size: 26px;
  word-wrap: break-word;
  font-weight: bold;
  color: #494949;
  line-height: 1.1;
}
.co img {
  max-width: 150px;
  max-height: 250px;
  margin-bottom: 10px;
  border-width: 0;
  vertical-align: middle;
  border: 0;
}
.co .info {
  font-size:120%;
  margin-left: 3%;
  max-width: 333px;
}
.coo {
  display: flex;
}
.coo .info {
  display: flex;
  flex-direction: column;
}
.cart{
  margin: auto;
}
</style>
