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
            <input
              :placeholder="this.username"
              v-model="input"
              readonly=""
              class="readinput"
            />
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-s-custom"></i>
              city
            </template>
            <input
              :placeholder="this.city"
              v-model="input"
              readonly=""
              class="readinput"
            />
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-odometer">address</i>
            </template>
            <input
              :placeholder="this.address"
              v-model="input"
              readonly=""
              class="readinput"
            />
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
            <input
              :placeholder="this.email"
              v-model="input"
              readonly=""
              class="readinput"
            />
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-mobile-phone"></i>
              Tel
            </template>
            <input
              :placeholder="this.mobilePhoneNumber"
              v-model="input"
              readonly=""
              class="readinput"
            />
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-location-outline"></i>
              cartype
            </template>
            <input
              :placeholder="this.cartype"
              v-model="input"
              readonly=""
              class="readinput"
            />
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-office-building"></i>
              card Number
            </template>
            <input
              :placeholder="this.cardNum"
              v-model="input"
              readonly=""
              class="readinput"
            />
          </el-descriptions-item>

          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-basketball"></i>
              money
            </template>
            <input
              :placeholder="this.money"
              v-model="input"
              readonly=""
              class="readinput"
            />
          </el-descriptions-item>
        </el-descriptions>
      </el-card>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    editProfile() {
      let a = document.getElementsByClassName("readinput");
      for (var i = 0; i < a.length; i++) {
        a[i].setAttribute("readOnly", false);
        a[i].readOnly = false;
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

<style  scoped>
.img {
  width: 80px;
  height: 80px;
}
</style>
