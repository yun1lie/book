<template>
  <div>
    <div v-if="!isMobile" class="cart-web">
      <div class="cart-contain">
        <div class="cart-table-container">
          <div class="cart-filter-bar">
            <span class="switch-cart"
              >Shopping Cart(whole{{ cartTotalCount }})</span
            >
          </div>
          <div class="cart-list-content">
            <el-table
              ref="cartTable"
              :data="cartList"
              v-loading="loading"
              size="mini"
              style="width: 95%; margin: 0 auto"
              v-on:selection-change="handleSelectionChange"
            >
              <el-table-column
                type="selection"
                align="center"
                width="50"
              ></el-table-column>
              <el-table-column label="Book pictures" width="180">
                <template slot-scope="scope">
                  <el-image
                    :src="scope.row.image"
                    style="width: 120px; height: 120px"
                  >
                    <div slot="placeholder" class="image-slot">
                      Loading<span class="dot">...</span>
                    </div>
                    <div slot="error" class="image-slot">
                      <el-image
                        style="width: 120px; height: 120px"
                        src="https://cube.elemecdn.com/e/fd/0fc7d20532fdaf769a25683617711png.png"
                      ></el-image>
                    </div>
                  </el-image>
                </template>
              </el-table-column>
              <el-table-column
                label="Book name"
                prop="productName"
              ></el-table-column>
              <el-table-column
                label="Unit Price"
                prop="price"
              ></el-table-column>
              <el-table-column label="quantity" width="220">
                <template slot-scope="scope">
                  <el-input-number
                    setp="1"
                    :min="1"
                    v-model="scope.row.num"
                    plain
                    v-on:change="calTotalPrice()"
                  ></el-input-number>
                </template>
              </el-table-column>
              <el-table-column label="amount of money">
                <template slot-scope="scope">
                  <span>{{ scope.row.num * scope.row.price }}</span>
                </template>
              </el-table-column>
              <el-table-column label="operation" fixed="right" align="center">
                <template slot-scope="scope">
                  <el-button
                    size="medium"
                    type="danger"
                    v-on:click="delGood(scope.row.id)"
                    >delete</el-button
                  >
                </template>
              </el-table-column>
            </el-table>
          </div>
          <div class="cart-filter-bar-bottom">
            <div class="bar-bottom-left">
              <span class="all-check">
                <div>
                  <el-checkbox
                    class="all-check-checkbox"
                    v-model="isAllChecked"
                    v-on:change="checkAll"
                    >Select All</el-checkbox
                  >
                </div>
              </span>
              <span class="all-del" v-show="isAllChecked">
                <el-button type="danger" size="small" v-on:click="delAll"
                  >delete</el-button
                >
              </span>
            </div>
            <div class="cart-sum">
              <span class="pay-text">Selected items</span>
              <span class="total-text">total:</span>
              <span class="total-symbol">{{ cartTotalPrice }}</span>
              <div
                v-if="selectionData.length > 0"
                class="pay-btn-active"
                @click="buy"
              >
                Buy
              </div>
              <div v-else class="pay-btn-inactive">Buy</div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- ???????????????   -->
    <div v-else class="cart-phone">
      <!-- header  
		  ???????????????  
		  ??????????????????   -->

      <div v-if="cartList.length !== 0">
        <div class="cart-box">
          <div
            v-for="(item, index) in cartList"
            :key="index"
            class="cart-list-item"
          >
            <div class="cart-item-info">
              <div class="cart-item-left">
                <div class="left-check" v-on:click="checkCurrent(item)">
                  <div class="checkbox">
                    <div v-if="item.checked" class="selected-check"></div>
                    <div v-else></div>
                  </div>
                </div>
                <el-image :src="item.image">
                  <div slot="placeholder" class="image-slot">
                    Loading<span class="dot">...</span>
                  </div>
                  <div slot="error" class="image-slot">
                    <el-image
                      fit="contain"
                      style="height: 100px"
                      src="https://cube.elemecdn.com/e/fd/0fc7d20532fdaf769a25683617711png.png"
                    ></el-image>
                  </div>
                </el-image>
              </div>
              <div class="cart-item-right">
                <div class="cart-item-info-content">
                  <div class="goods-name">
                    {{ item.productName }}
                  </div>

                  <div class="numbers">
                    <div class="price">Price:{{ item.price * item.num }}</div>
                  </div>
                </div>
                <div class="cart-item-opera">
                  <el-input-number
                    setp="1"
                    :min="1"
                    v-model="item.num"
                    plain
                    v-on:change="calTotalPrice()"
                  ></el-input-number>
                </div>
              </div>
            </div>

            <div class="del-btn" v-on:click="delGood(item.id)">
              <span class="fa fa-trash-o"></span>
            </div>
          </div>
        </div>
        <!-- ?????? -->
        <div class="bottom-all">
          <div class="left">
            <div class="left-check">
              <el-checkbox
                class="all-check-checkbox"
                v-model="isAllChecked"
                v-on:change="checkAll"
                >Select All</el-checkbox
              >
            </div>
            <div class="del-text" v-show="isAllChecked" v-on:click="delAll">
              delete
            </div>
          </div>
          <div class="rights">
            total:
            <span class="total-pay-count">{{ cartTotalPrice }}</span>
          </div>
          <div v-if="selectionData.length > 0" class="settlement-active">
            Buy
          </div>
          <div v-else class="settlement-inactive">Buy</div>
        </div>
      </div>
      <!-- ??????????????????????????? -->
      <div class="cart-no-data" v-if="cartList.length == 0">
        <div>no data</div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "shopCart",
  data() {
    return {
      //????????????
      selectionData: [],
      // ???????????????
      cartList: [],
      // ??????
      loading: false,
      // ???????????????
      cartTotalCount: 0,
      // ??????????????????
      cartTotalPrice: 0.0,
      // ??????????????????
      isMobile: false,
      // ????????????
      isAllChecked: false,
    };
  },
  created() {
    this.customer = JSON.parse(sessionStorage.getItem("customer"));
    //???????????????????????????????????????
    axios({
      url: "/api/getCart",
      method: "post",
      data: JSON.parse(sessionStorage.getItem("customer")),
    }).then((data) => {
      console.log("aaa", data.data);
      this.cartInfo = data.data;
      this.cartList = data.data;
    });
    let _this = this;
    // ???????????????
    _this.initData();
    console.log("bba", _this);
  },
  mounted() {
    let _this = this;
    // ?????????
    _this.resizeLayout();
    window.onresize = function () {
      _this.resizeLayout();
    };
  },
  components: {},
  methods: {
    min1() {
      alert("aaaaaaa");
      console.log("ccccccccccccccccc");
    },
    buy() {
      if (this.customer.amount < this.cartTotalPrice) {
        alert("Insufficient balance, please recharge");
      } else {
        this.customer.amount = this.customer.amount - this.cartTotalPrice;
        axios({
          url: "/api/emptyCart",
          method: "post",
          data: this.customer,
        }).then((data) => {
          console.log("cart", data.data);
          if (data.data == 1) {
            axios({
              url: "/api/updateCustomer",
              method: "post",
              data: this.customer,
            }).then((data) => {
              console.log("customer", data.data);

              if (data.data == 1) {
                alert("buy sucessful!");
                location.reload();
              }
            });
          }
        });
      }
    },
    // ??????????????????
    checkCurrent(item) {
      let _this = this;
      // ???????????????????????????
      if (item.checked) {
        // ???????????????????????????
        _this.selectionData.forEach((sItem, sIndex) => {
          if (sItem.id === item.id) {
            _this.selectionData.splice(sIndex, 1);
          }
        });
        // ??????????????????false
        _this.cartList.forEach((cItem, cIndex) => {
          if (cItem.id === item.id) {
            _this.cartList[cIndex]["checked"] = false;
          }
        });
      } else {
        // ??????????????????????????????
        // ??????????????????true
        _this.cartList.forEach((cItem, cIndex) => {
          if (cItem.id === item.id) {
            _this.cartList[cIndex]["checked"] = true;
          }
        });
        // ???????????????????????????
        _this.selectionData.push(item);
      }
      // ????????????????????????????????? ????????????false
      if (_this.selectionData.length <= 0) {
        _this.isAllChecked = false;
      }
      // ??????????????????????????????????????????????????????????????? ????????????true
      if (_this.selectionData.length === _this.cartList.length) {
        _this.isAllChecked = true;
      }
      // ??????????????????????????????
      _this.calTotalPrice();
    },
    //???????????????
    resizeLayout() {
      // ????????????
      let width =
        document.documentElement.offsetWidth || document.body.offsetWidth;
      let height =
        document.documentElement.clientHeight || document.body.clientHeight;
      let _this = this;
      if (width > 700) {
        _this.isMobile = false;
      } else {
        _this.isMobile = true;
      }
    },

    // ???????????????
    initData() {
      let _this = this;
      _this.getList();
    },

    // ?????????????????????
    getList() {
      let _this = this;
      _this.cartList = this.cartInfo;
      console.log(_this);

      // [
      //   {
      //     id: "2142423",
      //     image: "",
      //     productName: "????????????1",
      //     // ??????
      //     price: 12,
      //     // ????????????
      //     num: 1,
      //     // ??????api??????????????????????????????checked?????????????????????????????????
      //     // ???????????????????????? ??????????????????????????????
      //     checked: false,
      //   },
      //   {
      //     id: "2142423424",
      //     image: "",
      //     productName: "????????????2",
      //     price: 32,
      //     num: 2,
      //     checked: false,
      //   },
      // ];
    },

    // ????????????????????????
    calTotalPrice() {
      let _this = this;
      _this.cartTotalPrice = 0;
      _this.cartTotalCount = 0;
      // ??????????????????
      if (_this.selectionData.length > 0) {
        _this.selectionData.forEach((item) => {
          _this.cartTotalPrice += item.num * item.price;
          _this.cartTotalCount += item.num;
        });
      }
    },
    // ??????????????????
    handleSelectionChange(data) {
      let _this = this;
      _this.selectionData = data;
      // ??????????????????????????????
      _this.cartList.forEach((good) => {
        if (_this.selectionData.length > 0) {
          // ????????????????????????????????? ???checked???true
          _this.selectionData.forEach((selectedItem) => {
            if (selectedItem.id === good.id) {
              good.checked = true;
            } else {
              good.checked = false;
            }
          });
        } else {
          // ??????????????????????????????????????????checked????????????false
          good.checked = false;
        }
      });
      let cartTotalChecked = _this.selectionData.length;
      if (_this.cartList.length === cartTotalChecked) {
        _this.isAllChecked = true;
      } else {
        _this.isAllChecked = false;
      }
      _this.calTotalPrice();
    },
    // 	????????????
    delAll() {
      let _this = this;
      _this
        .$confirm("Are you sure you want to delete all products?", "Tips", {
          confirmButtonText: "determine",
          cancelButtonText: "cancel",
          type: "warning",
        })
        .then(function () {
          // ????????????????????????
          _this.cartList = [];
          _this.isAllChecked = false;
          // ?????????????????????????????????????????????
          //   _this.getList();
        })
        .catch((e) => {});
    },
    // ????????????
    delGood(id) {
      let _this = this;
      if (!id) {
        _this.$message.error("Product error, please refresh and try again");
        return;
      }
      _this
        .$confirm("Are you sure you want to delete this product?", "Tips", {
          confirmButtonText: "determine",
          cancelButtonText: "cancel",
          type: "warning",
        })
        .then(function () {
          let goodIndex = 0;
          _this.cartList.forEach((item, index) => {
            if (item.id === id) {
              goodIndex = index;
            }
          });
          _this.cartList.splice(goodIndex, 1);
          //   _this.getList();
        })
        .catch((e) => {
          console.log(e);
        });
    },
    // ??????
    checkAll() {
      let _this = this;
      // ????????????
      if (_this.isAllChecked) {
        _this.getList();
        // ??????????????????????????????????????????
        _this.selectionData = JSON.parse(JSON.stringify(_this.cartList));
        _this.cartList.forEach((cItem, cIndex) => {
          _this.cartList[cIndex]["checked"] = true;
        });
        if (_this.$refs.cartTable) {
          _this.$refs.cartTable.clearSelection();
          // el table????????????
          _this.$refs.cartTable.toggleAllSelection();
        }
      } else {
        _this.cartList.forEach((cItem, cIndex) => {
          _this.cartList[cIndex]["checked"] = false;
        });
        _this.selectionData = [];
        if (_this.$refs.cartTable) {
          // el table????????????
          _this.$refs.cartTable.clearSelection();
        }
      }
      _this.calTotalPrice();
    },
  },
};
</script>

<style>
/* ?????????web??? */
.cart-web {
  width: 100%;
  height: auto;
  background: #e8e2e0;
}

/* ?????????????????? */
.cart-phone {
  width: 100%;
  height: calc(100vh - 135px);
  background: #e8e2e0;
}

/* ??????????????? */
.cart-header {
  width: 100%;
  height: 58px;
  padding: 11px 0;
  background-color: #fff;
  display: flex;
  justify-content: center;
}

.cart-header .cart-header-contain {
  width: 80%;
  display: flex;
  align-items: center;
}

/* ??????????????? */
.cart-header .cart-header-contain .cart-title {
  font-size: 18px;
  font-weight: 500;
}

.cart-contain {
  width: 100%;
  height: auto;
  display: flex;
  justify-content: center;
  align-items: center;
}

.cart-table-container {
  width: 100%;
  padding: 10px 30px;
  background: #fff;
  min-height: calc(100vh - 130px);
  position: relative;
}

.cart-filter-bar {
  width: 100%;
  display: flex;
  justify-content: space-between;
}

.cart-filter-bar .switch-cart {
  overflow: hidden;
  color: #000;
  font-size: 18px;
  font-weight: 600;
  height: 72px;
  line-height: 72px;
}

.cart-filter-bar .cart-sum {
  font-size: 14px;
  display: flex;
  align-items: center;
}

.cart-sum .total-symbol {
  font-weight: 400;
  margin-right: 12px;
  font-size: 24px;
  color: #ff5000;
}

/* ??????????????????????????? */
.cart-sum .pay-btn-active {
  width: 74px;
  height: 42px;
  line-height: 42px;
  color: #fff;
  background: #ff5000;
  border-radius: 21px;
  text-align: center;
  cursor: pointer;
  text-decoration: none;
  font-size: 16px;
}

/* ?????????????????????????????? */
.cart-sum .pay-btn-inactive {
  width: 74px;
  height: 42px;
  line-height: 42px;
  color: #fff;
  background: #a3a3a3;
  border-radius: 21px;
  text-align: center;
  cursor: not-allowed;
  text-decoration: none;
  font-size: 16px;
}

.inactive-btn {
  background: #aaa !important;
  color: #fff;
  cursor: not-allowed !important;
}

.cart-list-content {
  max-height: 100vh;
  padding-bottom: 72px;
  overflow-y: auto;
}

/* ?????????????????? */
.cart-filter-bar-bottom {
  width: 95%;
  display: flex;
  justify-content: space-between;
  position: absolute;
  bottom: 0;
  background: #fff;
  z-index: 999;
}

.cart-filter-bar-bottom .bar-bottom-left {
  display: flex;
  justify-content: center;
  align-items: center;
}

/* ?????? */
.cart-filter-bar-bottom .all-check {
  overflow: hidden;
  color: #000;
  height: 72px;
  line-height: 72px;
  font-size: 12px;
}

.cart-filter-bar-bottom .all-check .all-check-checkbox {
  margin-right: 10px;
}

/* ???????????? */
.cart-filter-bar-bottom .all-del {
  margin-left: 20px;
}

.cart-filter-bar-bottom .cart-sum {
  font-size: 14px;
  display: flex;
  align-items: center;
}

.cart-sum .pay-text {
  margin: 0 12px;
}

.cart-sum .total-text {
  margin: 0 0 0 12px;
}

.cart-box {
  padding: 10px 0;
}

.cart-list-item {
  position: relative;
  border-radius: 8px;
  overflow: hidden;
  border: 0;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  margin: 20px;
  background-color: #fff;
  padding: 8px 0;
}

.cart-list-item .cart-item-info {
  display: flex;
  align-items: center;
  padding: 0 0 0 15px;
}

.cart-list-item .cart-item-left {
  width: 100px;
  display: flex;
  flex-direction: row;
  align-items: center;
}

.cart-list-item .left-check {
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 8%;
}

/* ?????????????????? */
.cart-list-item .left-check .checkbox {
  width: 14px;
  height: 14px;
  border-radius: 50%;
  background: #fff;
  border: 1px solid #b9b9b9;
  display: flex;
  align-items: center;
  justify-content: center;
}

/* ???????????????????????? */
.cart-list-item .left-check .checkbox .selected-check {
  width: 10px;
  height: 10px;
  border-radius: 50%;
  background: red;
}

.cart-item-right {
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  padding: 10px;
}

.cart-item-opera {
  display: flex;
  align-items: center;
}

/* ???????????? */
.del-btn {
  position: absolute;
  right: 10px;
  bottom: 10px;
  font-size: 17px;
  color: red;
}
.cart-item-right .cart-item-info-content {
  margin-right: 20px;
  width: 70px;
}

.cart-item-right .goods-name {
  width: 100%;
  font-size: 15px;
  color: #333333;
  margin-top: 3px;
  text-align: left;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}

.cart-item-right .numbers {
  width: 100%;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  margin-top: 10px;
}

.cart-item-right .numbers .price {
  font-size: 14px;
  line-height: 25px;
  color: #ff0000;
}

.bottom-all {
  height: 50px;
  width: 100%;
  padding: 0 2%;
  align-items: center;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  position: fixed;
  bottom: 0;
  left: 0;
  background-color: #fdfdfd;
  z-index: 11;
  border-top: 1px solid #f8f8f8;
}

.bottom-all .left {
  float: left;
  width: 28vw;
  font-size: 14px;
  position: relative;
}

.bottom-all .left .text {
  position: absolute;
  left: 35px;
  top: 50%;
  transform: translateY(-52%);
  color: #333333;
}

.bottom-all .del-text {
  color: red;
  position: absolute;
  left: 80px;
  top: 47%;
  transform: translateY(-52%);
}

.bottom-all .left-check {
  padding-left: 8px;
  flex-shrink: 0;
  height: 50px;
  margin-right: 8px;
  align-items: center;
  position: relative;
  display: flex;
}

.bottom-all .rights {
  width: 40vw;
  line-height: 50px;
  font-size: 16px;
  text-align: center;
  display: flex;
  align-items: center;
  justify-content: flex-end;
}

.bottom-all .settlement-inactive {
  padding: 0 4px;
  border-radius: 16px;
  width: 18vw;
  height: 35px;
  line-height: 35px;
  color: #ffffff;
  font-size: 17px;
  text-align: center;
  margin-right: 20px;
  cursor: not-allowed;
  background-color: #a3a3a3;
}

.bottom-all .settlement-active {
  padding: 0 4px;
  border-radius: 16px;
  width: 18vw;
  height: 35px;
  line-height: 35px;
  color: #ffffff;
  font-size: 17px;
  text-align: center;
  margin-right: 20px;
  background-color: #ff5000;
}

/* ???????????????????????? */
.cart-no-data {
  text-align: center;
}

.total-pay-count {
  font-size: 24px;
  color: #ff5000;
}

@media (max-width: 700px) {
  /* ?????? */
  .el-message-box {
    width: 300px !important;
  }

  /* el-input-number?????? */
  .el-input-number {
    width: 100px !important;
    line-height: 28px !important;
  }
  .el-input-number .el-input__inner {
    padding-left: 0 !important;
    padding-right: 0 !important;
  }
  .el-input__inner {
    height: 30px !important;
  }
  .el-input-number__decrease,
  .el-input-number__increase {
    width: 20px !important;
  }
}
</style>
