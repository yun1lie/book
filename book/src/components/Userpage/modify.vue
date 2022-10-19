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
        <el-input
          style="width: 60%; margin-left: 20%; margin-bottom: 2%"
          :placeholder="this.username"
          v-model="edit.username"
          clearable
        >
          <template slot="prepend">Username:</template>
        </el-input>
      </div>
      <div>
        <el-card>
          <el-descriptions class="margin-top" title="简介" :column="2" border>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-s-custom"></i>
                city
              </template>
              <el-input  :placeholder="this.city" v-model="edit.city" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-odometer">address</i>
              </template>
              <el-input  :placeholder="this.address" v-model="edit.address" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label"> postcode </template>
               <el-input  :placeholder="this.postcode" v-model="edit.postcode" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-message"></i>
                Email
              </template>
              <el-input  :placeholder="this.email" v-model="edit.email" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-mobile-phone"></i>
                Tel
              </template>
              <el-input  :placeholder="this.mobilePhoneNumber" v-model="edit.mobilePhoneNumber" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-location-outline"></i>
                cartype
              </template>
              <el-input  :placeholder="this.cartype" v-model="edit.cartype" />
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-office-building"></i>
                card Number
              </template>
              <el-input  :placeholder="this.card" v-model="edit.card" />
            </el-descriptions-item>

            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-basketball"></i>
                money
              </template>
              {{ money }}
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
  methods: {
    editProfile() {
      let a = document.getElementsByClassName("readinput");
      console.log(a);
      for (var i = 0; i < a.length; i++) {
        a[i].setAttribute("readOnly", false);
        a[i].readOnly = false;
        console.log(a[i].readOnly);
        console.log(a[i]);
      }
    },
  },
  data() {
    return {
      edit: {
        username: "",
        address:"",
        email: "",
        mobilePhoneNumber: "",
        cartype: "",
        createDate: "",
        city: "",
        postcode: "",
        cardNum: "",
        money: "",
      },
      avatar: String,
      username: String,
      address: Number,
      email: String,
      mobilePhoneNumber: String,
      cartype: String,
      createDate: Number,
      city: String,
      postcode: String,
      cardNum: String,
      money: String,
      design: String,
      input: "",
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
