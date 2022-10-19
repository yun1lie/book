<template>
  <div class="recharge">
    <div>
      <el-card class="box-card">
        <ul class="msg-box">
          <li>
            <h4>I want to recharge</h4>
          </li>
          <li>
            <h4 style="margin-bottom: 15px">Recharge amount</h4>
            <el-radio-group v-model="amountVal" @change="amountChange">
              <el-radio border :label="'' + 100">$100</el-radio>
              <el-radio border :label="'' + 500">$500</el-radio>
              <el-radio border :label="'' + 1000">$1000</el-radio>
              <el-radio border :label="'' + 2000">$2000</el-radio>
              <el-radio border :label="'' + 5000">$5000</el-radio>
              <el-radio border :label="''">custom</el-radio>
            </el-radio-group>
          </li>

          <li>
            <h4 style="margin-bottom: 15px">Recharging method</h4>
            <el-radio-group
              v-model="rechargeParams.paymentType"
              @change="paymentTypeChange"
            >
              <el-radio border :label="'' + 0">Royal Bank of Canada</el-radio>
              <el-radio border :label="'' + 1">PayPal</el-radio>
            </el-radio-group>
          </li>

          <li>
            <h4 style="margin-bottom: 15px">Recharge amount</h4>
            <!-- <img src="{:url('qrcode',['text'=>$text])}" /> -->
            <el-input
              :disabled="disabled"
              clearable
              v-model="rechargeParams.totalAmt"
              placeholder="Please enter the amount"
              style="width: 150px"
            ></el-input>
          </li>
        </ul>
        <div style="text-align: center; margin-top: 30px">
          <el-button type="primary" @click="surePay">Confirm payment</el-button>
        </div>
      </el-card>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data() {
    return {
      amountVal: "",
      disabled: false,
      //充值参数
      rechargeParams: {
        totalAmt: "", //金额
        paymentType: "0",
      },
      code: "",
    };
  },

  methods: {
    //充值金额
    amountChange(val) {
      this.rechargeParams.totalAmt = val;
      if (val == "") {
        this.disabled = false;
      } else {
        this.disabled = true;
      }
    },

    //支付方式

    paymentTypeChange(val) {
      this.rechargeParams.paymentType = val;
    },

    //确认支付

    surePay() {
      if (this.rechargeParams.totalAmt == "") {
        this.$message.warning("Please enter the amount");
        return;
      }

      console.log(this.rechargeParams);
      var payInfo = {
        userId: JSON.parse(sessionStorage.getItem("customer")).userId,
        amount: this.rechargeParams.totalAmt,
      };
      axios({
        url: "/api/recharge",
        method: "post",
        data: payInfo,
      }).then((res) => {
        var result = res.result;
        console.log(res.data);
        if (res.data === 1) {
          if (this.rechargeParams.paymentType == "0") {
            this.$message.success("Royal Bank of Canada");
            this.wechatPay(result);
          } else if (this.rechargeParams.paymentType == "1") {
            this.$message.success("PayPal");
          }
        } else {
          this.$message.success("recharge failed");
        }
      });
    },

    //微信支付

    wechatPay(result) {
      console.log("result " + result);

      // sessionStorage.qrurl = result.qrurl;
      // console.log("qrurl " + result.qrur);
      // sessionStorage.amt = this.rechargeParams.totalAmt;
      // this.$router.push({ path: "/code" });
    },
  },
  // },
};
</script>

<style scoped>
/* 信息列表样式 */
.msg-box > li {
  list-style: none;
  border-bottom: 1px solid #c5c5c5;
  padding: 20px 10px;
}
</style>