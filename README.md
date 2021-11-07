# Delivery App Clone
This repository created for educational purposes. <br/>
I use node.js, express.js and mysql in backend side and I use vue.js in frontend side.

## Installation
- 1-) Open delivery-app-backend folder and run ``` npm install ``` .
- 2-) Update delivery-app-backend-config/config.js for your custom mysql informations.
- 3-) After, run the delivery-app-backend app with ``` npm start ``` command.
- 4-) Open delivery-app-frontend folder and run ``` npm install ``` .
- 5-) After that step, run the delivery-app-frontend app with ``` npm run dev ``` command.

## Endpoints
Route| Http Verb | Parameters | Descriptipn
:--- | :---: | :---: | :---:
/api/getCustomerInfo/:phoneNumber | `GET` | Phone Number | Get All Subscriptions By Phone Number
/api/getSubscriptionOrders/:subscriptionId | `POST` | subscription Id | Get All Orders By Subscription Id

- Main Route: http://localhost:3000

## Sample Images
[![Image01](https://raw.githubusercontent.com/berkekurnaz/delivery-app-clone/master/images/img01.png)]()
[![Image01](https://raw.githubusercontent.com/berkekurnaz/delivery-app-clone/master/images/img02.png)]()

## Developer
Berke Kurnaz