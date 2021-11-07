const express = require('express')
const morgan = require('morgan')
const mysql = require('mysql')
const myConnection = require('express-myconnection');

const cors = require('cors')

const myConfig = require("./config/config");

const app = express();

app.use(cors())

const indexRoutes = require('./routes/index');

app.set('port', process.env.PORT || 3000);

app.use(morgan('dev'));
app.use(myConnection(mysql, {
  host: myConfig.db.host,
  user: myConfig.db.user,
  password: myConfig.db.password,
  port: myConfig.db.port,
  database: myConfig.db.database_name
}, 'single'));
app.use(express.urlencoded({extended: false}));

app.use('/api', indexRoutes);

app.listen(app.get('port'), () => {
  console.log(`server on port ${app.get('port')}`);
});