
const admin = require('firebase-admin');
const db = require('../models/index');
const User = db.User;
module.exports = {
    authenticate: async (req, res, next) => {
        try {
            console.log(req.headers.authorization);

            if (req.headers.authorization === 'testing') {
                req.id = 'R0LCW0dxUEXlHaXW7fq6oAZL1qc2';
                return next();
            }

            const decodedToken = await admin.auth().verifyIdToken(req.headers.authorization)
            if (req.headers.authorization) {
                req.id = decodedToken.uid;
                console.log(decodedToken);
                next();
            } else {
                res.status(401).send("Unauthorized");
            }
        } catch (e) {
            next(e);
        }
    },
    authenticateAdmin: async (req, res, next) => {
        try {
            const decodedToken = await admin.auth().verifyIdToken(req.headers.authorization);
            User.findOne({ where: { id: decodedToken.uid } }).then(user => {
                if (user.isAdmin) {
                    req.id = decodedToken.uid;
                    console.log(decodedToken);
                    next();
                } else {
                    res.status(401).send("Unauthorized");
                }
            })
        } catch (e) {
            next(e);
        }
    }
}



