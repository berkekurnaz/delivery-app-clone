<template>
  <div>
    <div v-if="orders.length > 0" class="table-responsive">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th scope="col">orderId</th>
            <th scope="col">paymentMethod</th>
            <th scope="col">deliveryDate</th>
            <th scope="col">totalAmount</th>
            <th scope="col">status</th>
            <th scope="col">products</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="order in orders" :key="order.orderId">
            <th scope="row">{{ order.orderId }}</th>
            <td>{{ order.paymentMethod }}</td>
            <td>{{ order.deliveryDate }}</td>
            <td>{{ order.totalAmount }}</td>
            <td>{{ order.status }}</td>
            <td>
              <button class="btn btn-outline-info btn-sm" @click="showProducts(order.orderId)">See Products</button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    <div v-else>
      <p>No orders for this subscription.</p>
    </div>

    <!-- Products Modal -->
    <div id="myModal" class="modal">
      <div class="modal-content">
        <span class="close" @click="closeProducts">&times;</span>
            <h3>Products</h3>
            <hr>
            <ul>
                <li v-for="item in this.products.products" :key="item.product">{{ item.product }} - (quantity) {{ item.quantity }}</li>
            </ul>
      </div>
    </div>

  </div>
</template>

<script>
export default {
  name: "OrderTable",
  props: ["orders"],
  data() {
    return {
      products: []
    };
  },
  methods: {
      showProducts(orderId){
          document.getElementById("myModal").style.display = "block";
          this.products = this.orders.find(x => x.orderId == orderId);
      },
      closeProducts(){
          document.getElementById("myModal").style.display = "none";
      }
  }
};
</script>

<style scoped>
.modal {
  display: none;
  position: fixed; 
  z-index: 1; 
  padding-top: 100px; 
  left: 0;
  top: 0;
  width: 100%;
  height: 100%; 
  overflow: auto; 
  background-color: rgb(0,0,0); 
  background-color: rgba(0,0,0,0.4); 
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 10px;
  border: 1px solid #888;
  width: 60%;
}

/* The Close Button */
.close {
    position: absolute;
    right: 20px;
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
