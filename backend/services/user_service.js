const db = require('../models/index.js');
const User = db.user;
const News = db.news;
const admin = require('firebase-admin');
module.exports = {
    getUsers: async () => {
        return await User.findAll({
            include: [
                {
                    model: News,
                    attributes: ["id", "title", "description", "link", "image", "publishedAt"],
                    through: {
                        attributes: [],
                    },
                },
            ],
        });
    },
    getUserById: async (id) => {
        return await User.findByPk(id);
    },
    createUser: async (user) => {
        return await User.create(user);
    },
    updateUser: async (id, user) => {
        return await User.update(user, { where: { id: id } });
    },
    deleteUser: async (id) => {
        return await User.destroy({ where: { id: id } });
    },
    login: async (uid) => {
        const user = await User.findOne({ where: { uid: uid } });
        if (user) {
            return user;
        }
        const firebaseUser = await admin.auth().getUser(uid);
        return await User.create({ uid: uid, email: firebaseUser.email })
    },
    savedNews: async (uid) => {
        const user = await User.findOne({ where: { uid: uid } });
        if (!user) {
            throw new Error("User not found");
        }
        const userSavedNews = await user.getNews();
        return userSavedNews.map((news) => {
            return {
                ...news.dataValues,
                saved: true,
            }
        });
    }

}

