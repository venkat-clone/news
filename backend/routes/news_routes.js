const expreess = require('express');
const controller = require("../controllers/news_controller")
const authentication = require("../middleware/authentication")
const router = expreess.Router();
router.get('/', (req, res) => {
    res.send('news routes');
})
router.get('/list', authentication.authenticate, controller.getNews)
router.get('/news/:id', controller.getNewsById)
router.post('/news', controller.createNews)
router.put('/news/:id', controller.updateNews)
router.delete('/news/:id', controller.deleteNews)
router.get('/update_db', controller.feactNews)
router.get('/save/:id', controller.saveNews)
router.get('/unsave/:id', controller.unSave)
router.get('/search', controller.queryNews)

module.exports = router