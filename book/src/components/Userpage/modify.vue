<template>
  <div class="modify">
    <div>
      <div class="userillustrate">Edit your profile</div>
      <div class="userheadimg">
        <div class="userimg">
          <img :src="this.customer.headImage" class="user-img" />
        </div>
        <p @click="avatar">
          <span class="userheadimgtext">Modify avatar</span>
        </p>
      </div>
      <div>
        <span style=" margin-left: 13%">User Name:</span>
        <input
          style="width: 60%; margin-left: 2%; margin-bottom: 2%"
          placeholder="username"
          v-model="customer.userName"
        />
      </div>
      <div>
        <el-card>
          <el-descriptions
            class="margin-top"
            title="profile"
            :column="2"
            border
          >
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-s-custom"></i>
                city
              </template>
              <input placeholder="city" v-model="customer.city" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-odometer">address</i>
              </template>
              <input placeholder="address" v-model="customer.address" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label"> postcode </template>
              <input placeholder="postcode" v-model="customer.postCode" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-message"></i>
                Email
              </template>
              <input placeholder="email" v-model="customer.email" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-mobile-phone"></i>
                Tel
              </template>
              <input placeholder="mobilePhoneNumber" v-model="customer.tel" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-location-outline"></i>
                cardtype
              </template>
              <input placeholder="cardtype" v-model="customer.cardType" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-office-building"></i>
                card Number
              </template>
              <input placeholder="card" v-model="customer.cardNum" />
            </el-descriptions-item>

            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-basketball"></i>
                money
              </template>
              {{ customer.amount }}
            </el-descriptions-item>
          </el-descriptions>
        </el-card>
        <div class="butt">
          <div class="butt1">
            <el-button
              type="primary"
              icon="el-icon-refresh"
              class="submit"
              @click="Save"
              >Save</el-button
            >
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  created() {
    this.customer = JSON.parse(sessionStorage.customer);
  },
  methods: {
    avatar() {
      var a = (Math.round(Math.random() * 10) % 5) + 1;
      var cu = this.customer;
      cu.headImage = "http://localhost:9090/static/headImg/" + a + ".png";
      console.log(cu);
      axios({
        url: "/api/updateCustomer",
        method: "post",
        data: cu,
      }).then((data) => {
        if (data.data == 1) {
          alert("edit sucessful!");
          location.reload();
        } else if (data.data == 0) {
          alert("some where wrong");
        } else {
          alert("unknown error");
        }
      });
    },
    Save() {
      if (
        this.customer.userName == "" ||
        this.customer.city == "" ||
        this.customer.address == "" ||
        this.customer.postcode == "" ||
        this.customer.cardNum == "" ||
        this.customer.cardType == "" ||
        this.customer.email == "" ||
        this.customer.tel == ""
      ) {
        alert("Need to fill in completely");
      } else {
        axios({
          url: "/api/updateCustomer",
          method: "post",
          data: this.customer,
        }).then((data) => {
          if (data.data == 1) {
            alert("edit sucessful!");
          } else if (data.data == 0) {
            alert("some where wrong");
          } else {
            alert("unknown error");
          }
        });
      }
    },
  },
  data() {
    return {
      customer: {
        userId: "",
        userName: "",
        headImage: "",
        userPwd: "",
        city: "",
        address: "",
        postCode: "",
        cardNum: "",
        cardType: "",
        grade: "",
        amount: "",
        tel: "",
        email: "",
        freeze: "",
      },
    };
  },
};
</script>

<style scoped>
.userillustrate {
  width: 100%;
  padding: 0 30px;
  line-height: 50px;
  border-bottom: 1px solid #ebebeb;
  font-size: 16px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
}
.userheadimg {
  position: relative;
  text-align: center;
  width: 120px;
  margin: 0 auto 23px;
}

.user-img {
  width: 100%;
  height: 100%;
  border-radius: 50%;
  border: 1px solid #ebebeb;
  vertical-align: top;
}

.userheadimgtext {
  cursor: pointer;
  color: #00c3ff;
  font-size: 12px;
}
.butt {
  margin-top: 3%;
  margin-bottom: 3%;
  width: 100%;
}

.butt1 {
  margin: 0 auto;
  width: 50px;
}

input{
  outline-style: none ;
    border: 1px solid #ccc; 
    border-radius: 3px;
    padding: 13px 14px;
    width: 300px;
    font-size: 14px;
    font-weight: 700;
    font-family: "Microsoft soft";
}
input:focus{
    border-color: #66afe9;
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
}
</style>
