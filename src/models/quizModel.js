var database = require("../database/config");

// Aqui eu listo todas as questões
function listarQuestoes(idQuiz) {
    var sql = `
        SELECT
            id_questao,
            enunciado,
            imagem,
            opcao1,
            opcao2,
            opcao3,
            alternativa_correta
        FROM questao
        WHERE id_quiz = ${idQuiz}
        ORDER BY id_questao;
    `;

    // Isso é um JSON - a estrutura dele, os dados são montados automaticamente pelo banco
    return database.executar(sql).then(resultado => {
        return resultado.map(q => ({
            id_questao: q.id_questao,
            enunciado: q.enunciado,
            imagem: q.imagem,
            alternatives: [q.opcao1, q.opcao2, q.opcao3],
            alternativa_correta: q.alternativa_correta
        }));
    });
}

// Aqui eu registro a tentativa quando o quiz é finalizado
function registrarTentativa(idUsuario, idQuiz, pontuacao, acertos, erros){
    var sql = `
        INSERT INTO tentativa_quiz (id_usuario, id_quiz, pontuacao, acertos, erros, data_tentativa)
        VALUES (${idUsuario}, ${idQuiz}, ${pontuacao}, ${acertos}, ${erros}, NOW());
    `;
    return database.executar(sql);
}

module.exports = {
    listarQuestoes,
    registrarTentativa
};