var express = require("express");
var router = express.Router();
var estatisticaController = require("../controllers/estatisticaController");

router.get("/:idUsuario", (req, res) => {
    estatisticaController.obterEstatistica(req, res);
});

module.exports = router;