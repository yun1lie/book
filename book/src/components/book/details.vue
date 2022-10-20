<template>
  <div>
    <TheNav></TheNav>
    <div class="co">
      <h1>book name</h1>
      <div class="coo">
        <img src="@/assets/logo.png" alt="" />
        <div class="info">
          <p>author{{}}</p>
          <p>press{{}}</p>
          <p>price{{}}</p>
          <p>ISBN{{}}</p>
        </div>
      </div>
      <h2>content validity</h2>
      <p></p>
      <h2>Author Profile</h2>
      <p></p>
    </div>
  </div>
</template>

<script>
import TheNav from "@/components/TheNav/TheNav.vue";
export default {
  components: { TheNav },
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
  height: 1000px;
}
.co h1 {
  font-size: 26px;
  word-wrap: break-word;
  font-weight: bold;
  color: #494949;
  line-height: 1.1;
}
.co img {
  max-width: 135px;
  max-height: 200px;
  margin-bottom: 10px;
  border-width: 0;
  vertical-align: middle;
  border: 0;
}
.co .info {
  max-width: 333px;
}
.coo {
  display: flex;
}
.coo .info {
  display: flex;
  flex-direction: column;
}
</style>