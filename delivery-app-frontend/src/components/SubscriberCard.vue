<template>
  <div class="card">
    <div class="card-body">
      <h4>
        {{ subscription.fullname }} - {{ subscription.phoneNumber }} -
        <small>{{ subscription.subscriptionId }}</small>
      </h4>
      <p>
        {{ subscription.locationName }} - {{ subscription.subCityName }} -
        {{ subscription.address }}
      </p>
      <br />
      <OrderTable :orders="orders" />
    </div>
  </div>
</template>

<script>
import OrderTable from "./OrderTable.vue";

export default {
  name: "SubscriberCard",
  props: ["subscription"],
  data() {
    return {
     orders: []
    };
  },
  components: {
    OrderTable,
  },
  mounted(){
        var request_url = process.env.ROOT_API + "/getSubscriptionOrders/" + this.subscription.subscriptionId;
        fetch(request_url, {
            method: "POST"
        })
          .then((response) => response.json())
          .then((data) => {
            if (typeof data == "string") {
              this.orders = [];
            } else {
              this.orders = data;
            }
          });
  }
};
</script>

<style scoped>
.card {
  margin-top: 10px;
  margin-bottom: 10px;
}
</style>
