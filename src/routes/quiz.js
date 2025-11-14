var express = require("express");
var router = express.Router();

var quizController = require("../controllers/quizController");

router.get("/:idQuiz/questoes", function(req, res) {
    quizController.listarQuestoes(req, res);
});

router.post("/:idQuiz/registrarTentativa", function (req, res) {
    quizController.registrarTentativa(req, res);
});

module.exports = router;