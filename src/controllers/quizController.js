var quizModel = require("../models/quizModel");

function listarQuestoes(req, res){
    var idQuiz = req.params.idQuiz;

    quizModel.listarQuestoes(idQuiz)
        .then(json => res.status(200).json(json))
        .catch(erro => {
            console.log("Erro: ", erro);
            res.status(500).json(erro);
        });
}

function registrarTentativa(req, res) {
    var idUsuario = req.body.idUsuario;
    var idQuiz = req.params.idQuiz;
    var pontuacao = req.body.pontuacao;
    var acertos = req.body.acertos;
    var erros = req.body.erros;

    quizModel.registrarTentativa(idUsuario, idQuiz, pontuacao, acertos, erros)
        .then(() => res.status(200).send("OK"))
        .catch(erro => res.status(500).json(erro));
}

module.exports = {
    listarQuestoes,
    registrarTentativa
};