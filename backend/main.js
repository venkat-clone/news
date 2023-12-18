const express = require('express')
const app = express();
const Sequelize = require('sequelize');
const createError = require('http-errors')
const logger = require('morgan');

const handleSequelizeError = require('./utils/error-handler');

const PORT = process.env.PORT || 3000
const cors = require('cors');

const routes = require('./routes/index');
app.use(express.json());
app.use(logger('dev'));
app.use(cors());
var admin = require("firebase-admin");

var serviceAccount = require("./news-serviceAccountKey.json");

admin.initializeApp({
    credential: admin.credential.cert(serviceAccount)
});

app.use('/api', routes);


app.use(function (req, res, next) {
    next(createError(404))
});
app.use((err, req, res, next) => {
    if (err instanceof Sequelize.ValidationError) {
        handleSequelizeError(err, next);
    } else {
        next(err);
    }
})
app.use((err, req, res, next) => {

    res.statusCode = err.statusCode || 500
    console.debug(err)
    console.log(err.message)
    res.send({
        success: false,
        message: err.message || 'Server error'
    })
});

app.listen(PORT, () => {
    console.log('listening on port ' + PORT);
})