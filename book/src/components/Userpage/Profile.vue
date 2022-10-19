<template>
  <div>
    <div>
      <el-card>
        <el-descriptions class="margin-top" title="简介" :column="2" border>
          <template slot="extra">
            <el-button type="primary" size="small" @click="editProfile"
              >edit</el-button
            >
          </template>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-picture-outline"></i>
              headimage
            </template>
            <img class="img" src="http://localhost:9090/static/headImg/1.jpg" />
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-user"></i>
              username
            </template>
            <el-input
              :placeholder="this.username"
              v-model="input"
              readonly=""
            ></el-input>
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-s-custom"></i>
              city
            </template>
            <el-input
              :placeholder="this.city"
              v-model="input"
              readonly=""
            ></el-input>
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-odometer">address</i>
            </template>
            <el-input
              :placeholder="this.address"
              v-model="input"
              readonly=""
            ></el-input>
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
            <el-input
              :placeholder="this.email"
              v-model="input"
              readonly=""
            ></el-input>
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-mobile-phone"></i>
              Tel
            </template>
            <el-input
              :placeholder="this.mobilePhoneNumber"
              v-model="input"
              readonly=""
            ></el-input>
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-location-outline"></i>
              cartype
            </template>
            <el-input
              :placeholder="this.cartype"
              v-model="input"
              readonly=""
            ></el-input>
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-office-building"></i>
              card Number
            </template>
            <el-input
              :placeholder="this.cardNum"
              v-model="input"
              readonly=""
            ></el-input>
          </el-descriptions-item>

          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-basketball"></i>
              money
            </template>
            <el-input
              :placeholder="this.money"
              v-model="input"
              readonly=""
            ></el-input>
          </el-descriptions-item>
        </el-descriptions>
      </el-card>
    </div>
  </div>
</template>

<script>
export default {
  name: "Info",
  methods: {
    editProfile(){
      this.$refs.input.readOnly = "false";
    }
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
       input: '',
    };
  },
};
</script>

<style  scoped>
.img {
  width: 80px;
  height: 80px;
}
</style>
