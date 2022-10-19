<template>
  <div class="userPage">
    <div class="PersonTop">
      <div class="PersonTop_img">
        <img src="http://localhost:9090/static/headImg/1.jpg" />
      </div>
      <div class="PersonTop_text">
        <div class="user_text">
          <div class="user_name">
            <span>{{ customer.userName }} </span>
            <img :src="customer.grade" alt="" />
          </div>
          <div class="userID">userid:{{ customer.userId }}</div>
        </div>
        <div class="userEdit">
          <el-button class="el-icon-edit" type="primary" size="medium" plain 
            >编辑</el-button
          >
        </div>
      </div>
    </div>
    <div class="person_body">
      <div class="person_body_left">
        <el-card class="box-card" :body-style="{ padding: '0px' }">
          <div slot="header" class="clearfix">
            <span class="person_body_list" style="border-bottom: none"
              >Personal Center</span
            >
          </div>
          <el-menu
            router
            active-text-color="#00c3ff"
            class="el-menu-vertical-demo"
          >
            <el-menu-item index="info" :route="{ name: 'Profile', params: '' }">
              <i class="el-icon-user"></i>
              <span slot="title">Profile</span>
            </el-menu-item>
            <el-menu-item index="cart" :route="{ name: 'cart', params: '' }">
              <i class="el-icon-edit-outline"></i>
              <span slot="title">View Cart</span>
            </el-menu-item>
            <el-menu-item
              index="orders"
              :route="{ name: 'orders', params: '' }"
            >
              <i class="el-icon-document"></i>
              <span slot="title">Submitted Orders</span>
            </el-menu-item>
            <el-menu-item
              index="modify"
              :route="{ name: 'modify', params: $route.params.id }"
            >
              <i class="el-icon-tableware"></i>
              <span slot="title">Modify personal info</span>
            </el-menu-item>
            <el-menu-item
              index="recharge"
              :route="{ name: 'recharge', params: $route.params.id }"
            >
              <i class="el-icon-circle-plus-outline"></i>
              <span slot="title">Account recharge</span>
            </el-menu-item>
            <el-menu-item>
              <i class="el-icon-back"></i>
              <span slot="title"
                ><router-link class="span1" to="/">
                  Back to Home</router-link
                ></span
              >
            </el-menu-item>
          </el-menu>
        </el-card>
      </div>
      <div class="person_body_right">
        <router-view></router-view>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  created() {
    this.customer = JSON.parse(sessionStorage.getItem("customer"));
    axios({
      url: "/api/selectCustomer",
      method: "post",
      data: this.customer,
    }).then((data) => {
      this.customer = data.data[0];

    });
  },

  data() {
    return {
      customer: {
        userId: "",
        userName: "",
        headImage: "",
        userPwd: "",
        city: null,
        address: null,
        postCode: null,
        cardNum: null,
        cardType: null,
        grade: null,
        amount: null,
        tel: null,
        email: null,
        freeze: null,
      },
    };
  },
};
</script>

<style scoped>
.userPage {
  height: 1000px;
  background-color: rgb(247, 248, 252);
}
.me-video-player {
  background-color: transparent;
  width: 100%;
  height: 100%;
  object-fit: fill;
  display: block;
  position: fixed;
  left: 0;
  z-index: 0;
  top: 0;
}
.PersonTop {
  width: 80%;
  height: 140px;
  padding-top: 20px;
  background-color: white;
  margin-top: 30px;
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  display: flex;
  border-radius: 5px;
}

.PersonTop_img {
  width: 118px;
  height: 118px;
  background-color: rgb(255, 255, 255);
  margin-right: 24px;
  margin-left: 20px;
  overflow: hidden;
  border-radius: 20px;
}

.PersonTop_img img {
  width: 100%;
  height: 100%;
  border-radius: 50%;
  border: 1px solid #ebebeb;
  vertical-align: top;
}

.PersonTop_text {
  height: 120px;
  width: 80%;
  margin: auto;
  display: flex;
}

.user_text {
  width: 100%;
  height: 100%;
  line-height: 30px;
}

.user_text .userID {
  font-size: 12px;
  color: #ccc;
}

.user_name {
  font-size: 16px;
  line-height: 21px;
  font-weight: 600;
  font-family: -apple-system, BlinkMacSystemFont, "Helvetica Neue", Helvetica,
    Segoe UI, Arial, Roboto, "PingFang SC", "miui", "Hiragino Sans GB",
    "Microsoft Yahei", sans-serif;
}
.user_name img {
  margin-left: 10px;
  height: 16px;
  -ms-flex-negative: 0;
  flex-shrink: 0;
  border-style: none;
}
.user-v {
  margin-bottom: -5px;
}
.user-v-img {
  width: 15px;
  height: 15px;
}
.user-v-font {
  font-size: 15px;
  color: #00c3ff;
}

.span1 {
  text-decoration: none;
  font-size: 16px;
  color: #999;
}

.el-menu-item > span {
  font-size: 16px;
  color: #999;
}

/*下面部分样式*/
.person_body {
  width: 80%;
  margin-top: 210px;
  display: flex;
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  border-radius: 5px;
}

.person_body_left {
  width: 20%;
  height: 600px;
  border-radius: 5px;
  margin-right: 3%;
  text-align: center;
}

.el-menu-item {
  margin-top: 22px;
}

.person_body_right {
  width: 80%;
  /* height: 500px; */
  border-radius: 5px;
  background-color: white;
}

.box-card {
  height: 600px;
}

/*ui样式*/
.el-button {
  width: 84px;
}
</style>
