const db = require('../models');
const News = db.news;
const User = db.user;
const newsService = require('../services/news_service');
module.exports = {
    getNews: async (req, res, next) => {
        try {
            res.send(await newsService.getNews(req.id));
        } catch (e) {
            next(e);
        }
    },
    getNewsById: async (req, res, next) => {
        try {
            res.send(await News.findById(req.params.id));
        } catch (e) {
            next(e);
        }
    },
    createNews: async (req, res, next) => {
        try {
            res.send(await News.create(req.body));
        } catch (e) {
            next(e);
        }
    },
    updateNews: async (req, res, next) => {
        try {
            res.send(await News.findByIdAndUpdate(req.params.id, req.body));
        } catch (e) {
            next(e);
        }
    },
    deleteNews: async (req, res, next) => {
        try {
            res.send(await News.findByIdAndDelete(req.params.id));
        } catch (e) {
            next(e);
        }
    },
    feactNews: async (req, res, next) => {
        try {
            res.send(await newsService.feachNewsData());
        } catch (e) {
            next(e);
        }
    },
    saveNews: async (req, res, next) => {
        try {
            const news = await News.findByPk(req.params.id);
            if (!news) {
                throw new Error("News not found");
            }
            const user = await User.findByPk(1);
            if (!user) {
                throw new Error("User not found");
            }
            const result = await user.addNews(news);

            res.send({ "success": true });
        } catch (e) {
            next(e);
        }
    },
    unSave: async (req, res, next) => {
        try {
            const news = await News.findByPk(req.params.id);
            if (!news) {
                throw new Error("News not found");
            }
            const user = await User.findByPk(1);
            if (!user) {
                throw new Error("User not found");
            }

            const result = await user.removeNews(news);

            res.send({ "success": true });
        } catch (e) {
            next(e);
        }
    },
    queryNews: async (req, res, next) => {
        try {

            res.send(await newsService.queryNews(req.body, req.id));
        } catch (e) {
            next(e);
        }
    }

}