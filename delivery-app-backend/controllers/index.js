const controller = {};
const beauty_array_converter = require("../utils/beauty_array_converter");

controller.getCustomerInfo = (req, res) => {
  req.getConnection((err, conn) => {
    conn.query('SELECT * FROM subscription WHERE phoneNumber=' + req.params.phoneNumber, (err, customer) => {
     if (err) {
        res.status(500).json(err);
     }
     if(customer.length > 0){
        res.status(200).json(customer);
     }else{
        res.status(403).json("Belirtilen telefona ait kayıt bulunamamıştır.");
     }
    });
  });
};

controller.getSubscriptionOrders = (req, res) => {
    req.getConnection((err, conn) => {
      conn.query("SELECT * FROM orders WHERE subscriptionId='" + req.params.subscriptionId + "'", (err, orders) => {
       if (err) {
          res.status(500).json(err);
       }
       if(orders.length > 0){
          orders.forEach(order => {
            order.products = beauty_array_converter.convert(order.products);
          });
          res.status(200).json(orders);
       }else{
          res.status(403).json("Belirtilen telefona ait kayıt bulunamamıştır.");
       }
      });
    });
  };


module.exports = controller;