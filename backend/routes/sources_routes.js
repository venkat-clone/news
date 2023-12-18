const expreess = require('express');
const router = expreess.Router();
const controller = require("../controllers/sources_controller");
router.get('/', (req, res) => {
    res.send('sources routes');
});

router.get('/list', controller.sources);
router.post('/create', controller.createSource);


module.exports = router;