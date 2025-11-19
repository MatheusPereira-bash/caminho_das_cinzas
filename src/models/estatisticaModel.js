var database = require("../database/config");

function obterEstatistica(idUsuario) {
    var instrucao = `
        SELECT
            id_tentativa AS tentativa,
            pontuacao,
            acertos,
            erros,
            DATE_FORMAT(data_tentativa, '%d/%m %H:%i') AS momento
        FROM tentativa_quiz
        WHERE id_usuario = ${idUsuario}
        ORDER BY id_tentativa ASC;
    `;

    return database.executar(instrucao);
}

module.exports = {
    obterEstatistica
}