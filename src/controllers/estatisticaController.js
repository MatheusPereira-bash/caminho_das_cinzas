var estatisticaModel = require("../models/estatisticaModel");

function obterEstatistica(req, res) {
    var idUsuario = req.params.idUsuario;

    estatisticaModel.obterEstatistica(idUsuario)
        .then(resultado => {
            if(resultado.length > 0) {
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhuma Estatística Encontrada!");
            }
        })
        .catch(erro => {
            console.error("Erro ao buscar estatísticas:", erro);
            res.status(500).json(erro);
        });
}

module.exports = {
    obterEstatistica
}