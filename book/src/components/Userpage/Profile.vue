<template>
  <div>
    <div>
      <el-card>
        <el-descriptions class="margin-top" title="简介" :column="2" border>
          <template slot="extra">
            <!-- <el-button type="primary" size="small" @click="editProfile"
              >edit</el-button
            > -->
          </template>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-picture-outline"></i>
              headimage
            </template>
            <img class="img" :src="this.customer.headImage" />
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-user"></i>
              username
            </template>
            {{ this.customer.userName }}
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-s-custom"></i>
              city
            </template>
            {{ customer.city }}
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-odometer">address</i>
            </template>
            {{ customer.address }}
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label"> postcode </template>
            <!-- <el-tag size="small"></el-tag> -->
            {{ customer.postCode }}
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-message"></i>
              Email
            </template>
            {{ customer.email }}
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-mobile-phone"></i>
              Tel
            </template>
            {{ customer.tel }}
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-location-outline"></i>
              cardtype
            </template>
            {{ customer.cardType }}
          </el-descriptions-item>
          <el-descriptions-item>
            <template slot="label">
              <i class="el-icon-office-building"></i>
              card Number
            </template>
            {{ customer.cardNum }}
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
    </div>
  </div>
</template>

<script>
export default {
  created() {
    this.customer = JSON.parse(sessionStorage.customer);
  },

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
