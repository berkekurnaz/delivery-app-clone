<template>
  <div>
    <h1 class="text-center">Search Page</h1>
    <hr />
    <div>
      <center>
        <input
          v-model="phoneNumber"
          type="text"
          class="form-control customInput"
          placeholder="Phone Number..."
        />
        <button @click="findData" class="btn btn-info customButton">
          Search
        </button>
      </center>
    </div>

    <SubscriberCard
      v-for="subscription in subscriptions"
      :key="subscription.subscriptionId"
      v-bind:subscription="subscription"
    />
  </div>
</template>

<script>
import SubscriberCard from "./SubscriberCard.vue";

export default {
  name: "SearchPage",
  data() {
    return {
      phoneNumber: "5332858530",
      subscriptions: [],
    };
  },
  components: {
    SubscriberCard,
  },
  methods: {
    findData() {
      if (this.phoneNumber.length > 3) {
        var request_url = process.env.ROOT_API +"/getCustomerInfo/" + this.phoneNumber;
        fetch(request_url)
          .then((response) => response.json())
          .then((data) => {
            if (typeof data == "string") {
              this.subscriptions = [];
            } else {
              this.subscriptions = data;
            }
          });
      }
    },
  },
};
</script>

<style scoped>
.customInput {
  width: 300px;
  border-radius: 0;
}
.customButton {
  margin-top: 10px;
  margin-bottom: 10px;
  width: 100px;
  border-radius: 0;
}
</style>
