
const userService = require("../services/user_service");

module.exports = {
    getUsers: async (req, res, next) => {
        try {
            res.send(await userService.getUsers());
        } catch (e) {
            next(e);
        }
    },
    getUserById: async (req, res, next) => {
        try {
            res.send(await userService.getUserById(req.params.id));
        } catch (e) {
            next(e);
        }
    },
    createUser: async (req, res, next) => {
        try {
            if (req.body === undefined) {
                throw new Error("Request body is required");
            }
            res.send(await userService.createUser(req.body));
        } catch (e) {
            next(e);
        }
    },
    updateUser: async (req, res, next) => {
        try {
            res.send(await userService.updateUser(req.params.id, req.body));
        } catch (e) {
            next(e);
        }
    },
    deleteUser: async (req, res, next) => {
        try {
            res.send(await userService.deleteUser(req.params.id));
        } catch (e) {
            next(e);
        }
    },
    login: async (req, res, next) => {
        try {
            res.send(await userService.login(req.id));
        } catch (e) {
            next(e);
        }

    },
    savedNews: async (req, res, next) => {
        try {
            res.send(await userService.savedNews(req.id));
        } catch (e) {
            next(e);
        }
    }
};