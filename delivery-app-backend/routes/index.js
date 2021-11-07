const router = require('express').Router();

const indexController = require('../controllers/index');

router.get('/getCustomerInfo/:phoneNumber', indexController.getCustomerInfo);
router.post('/getSubscriptionOrders/:subscriptionId', indexController.getSubscriptionOrders);

module.exports = router;