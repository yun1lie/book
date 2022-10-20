<template>
  <div class="modify">
    <div>
      <div class="userillustrate">Edit your profile</div>
      <div class="userheadimg">
        <div class="userimg">
          <img
            src="https://img-static.mihoyo.com/avatar/avatar1.png"
            class="user-img"
          />
        </div>
        <p><span class="userheadimgtext">修改头像</span></p>
      </div>
      <div>
        <input
          style="width: 60%; margin-left: 20%; margin-bottom: 2%"
          placeholder="username"
          v-model="this.customer.userName"
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
              <input placeholder="city" v-model="this.customer.city" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-odometer">address</i>
              </template>
              <input placeholder="address" v-model="this.customer.address" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label"> postcode </template>
              <input placeholder="postcode" v-model="this.customer.postCode" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-message"></i>
                Email
              </template>
              <input placeholder="email" v-model="this.customer.email" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-mobile-phone"></i>
                Tel
              </template>
              <input
                placeholder="mobilePhoneNumber"
                v-model="this.customer.tel"
              />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-location-outline"></i>
                cardtype
              </template>
              <input placeholder="cardtype" v-model="this.customer.cardType" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-office-building"></i>
                card Number
              </template>
              <input placeholder="card" v-model="this.customer.cardNum" />
            </el-descriptions-item>

            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-basketball"></i>
                money
              </template>
              {{ this.customer.amount }}
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
export default {
  created() {
    this.customer = JSON.parse(sessionStorage.customer);
    console.log(this.customer);
    console.log("aaaaaaaaaaaaaa");
  },
  methods: {
    Save() {},
  },
  data() {
    return {
      input: "",
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
</style>
