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
       <el-input style="width:60%;margin-left:20%;margin-bottom: 2%;" :placeholder="this.username" v-model="input" clearable>
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
              {{ city }}
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-odometer">address</i>
              </template>
              {{ address }}
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label"> postcode </template>
              <el-tag size="small">{{ postcode }}</el-tag>
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-message"></i>
                Email
              </template>
              {{ email }}
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-mobile-phone"></i>
                Tel
              </template>
              {{ mobilePhoneNumber }}
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-location-outline"></i>
                cartype
              </template>
              {{ cartype }}
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label">
                <i class="el-icon-office-building"></i>
                card Number
              </template>
              {{ cardNum }}
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
</style>
