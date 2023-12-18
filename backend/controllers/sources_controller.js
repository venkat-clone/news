const db = require('../models');
const Source = db.sources;

module.exports = {
    sources: async (req, res, next) => {
        try {
            res.send(await Source.findAll({}));
        } catch (e) {
            next(e);
        }
    },
    createSource: async (req, res, next) => {
        try {
            res.send(await Source.create(req.body));
        } catch (e) {
            next(e);
        }
    }
};