<template>
  <div class="recharge">
    <div>
      <el-card class="box-card">
        <ul class="msg-box">
          <li>
            <h4>我要充值</h4>
          </li>
          <li>
            <h4 style="margin-bottom: 15px">充值金额</h4>
            <el-radio-group v-model="amountVal" @change="amountChange">
              <el-radio border :label="'' + 100">充值100</el-radio>
              <el-radio border :label="'' + 500">充值500</el-radio>
              <el-radio border :label="'' + 1000">充值1000</el-radio>
              <el-radio border :label="'' + 2000">充值2000</el-radio>
              <el-radio border :label="'' + 5000">充值5000</el-radio>
              <el-radio border :label="''">自定义</el-radio>
            </el-radio-group>
          </li>

          <li>
            <h4 style="margin-bottom: 15px">充值方式</h4>
            <el-radio-group
              v-model="rechargeParams.paymentType"
              @change="paymentTypeChange"
            >
              <el-radio border :label="'' + 0">微信</el-radio>
              <el-radio border :label="'' + 1">支付宝</el-radio>
            </el-radio-group>
          </li>

          <li>
            <h4 style="margin-bottom: 15px">充值金额</h4>
            <!-- <img src="{:url('qrcode',['text'=>$text])}" /> -->
            <el-input
              :disabled="disabled"
              clearable
              v-model="rechargeParams.totalAmt"
              placeholder="请输入金额"
              style="width: 150px"
            ></el-input>
          </li>
        </ul>
        <div style="text-align: center; margin-top: 30px">
          <el-button type="primary" @click="surePay">确认支付</el-button>
        </div>
      </el-card>
    </div>
  </div>
</template>

<script>
// import { post } from "@/api/api";
export default {
  data() {
    return {
      amountVal: "",
      disabled: false,
      //充值参数
      rechargeParams: {
        totalAmt: "", //金额
        paymentType: "0", //支付方式[0:微信,1:支付宝,2:余额,3:活动]
        // transType: "0", //交易类型[0:充值,1:消费]
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
        this.$message.warning("请输入金额");
        return;
      }
      // this.$router.push({path: '/code'});

      post("weixin/createOrderInfo", this.rechargeParams).then((res) => {
        var result = res.result;
        if (res.code === 20000) {
          // 支付方式跳转

          if (this.rechargeParams.paymentType == "0") {
            this.$message.success("微信支付");
            this.wechatPay(result);
          } else if (this.rechargeParams.paymentType == "1") {
            this.$message.success("支付宝支付");
            const payDiv = document.getElementById("payDiv");
            if (payDiv) {
              document.body.removeChild(payDiv);
            }
            const div = document.createElement("div");
            div.id = "payDiv";
            div.innerHTML = result;
            document.body.appendChild(div);
            document.getElementById("payDiv").getElementsByTagName("form")[0].submit();
          }
        }
      });
    },

    //微信支付

    wechatPay(result) {
      // if (result) {

      // const orderParams = JSON.parse(result);
      console.log("result " + result);
      //   sessionStorage.qrurl = orderParams.qrurl;
      
      sessionStorage.qrurl = result.qrurl;
      console.log("qrurl " + result.qrur);
      sessionStorage.amt = this.rechargeParams.totalAmt;
      // sessionStorage.amt = result.totalAmt;
      // sessionStorage.returnUrl = orderParams.returnUrl;
      // sessionStorage.order_id = orderParams.order_id;
      this.$router.push({ path: "/code" });
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