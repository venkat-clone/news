const expreess = require('express');
const newsRoutes = require("./news_routes")
const userRoutes = require("./user_routes")
const sourcesRoutes = require("./sources_routes")
const router = expreess.Router();

router.use("/news", newsRoutes)
router.use("/user", userRoutes)
router.use("/sources", sourcesRoutes)


module.exports = router