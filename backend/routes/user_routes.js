const expreess = require('express');
const controller = require("../controllers/user_controller")
const authentication = require("../middleware/authentication")
const router = expreess.Router();
router.get('/', (req, res) => {
    res.send('user routes');
})
router.get('/users', controller.getUsers)
router.get('/users/:id', controller.getUserById)
router.post('/users', controller.createUser)
router.put('/users/:id', controller.updateUser)
router.delete('/users/:id', controller.deleteUser)
router.get('/login', authentication.authenticate, controller.login)
router.get('/saved', authentication.authenticate, controller.savedNews)

module.exports = router