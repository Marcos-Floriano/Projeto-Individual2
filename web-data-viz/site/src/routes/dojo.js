var express = require("express");
var router = express.Router();

var dojoController = require("../controllers/DojoController");

router.get("/", function (req, res) {
    dojoController.testar(req, res);
});

router.get("/listar", function (req, res) {
    dojoController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de dojoController.js
router.post("/cadastrarRespostaSim", function (req, res) {
    dojoController.cadastrarRespostaSim(req, res);
});

router.post("/cadastrarRespostaNao", function (req, res) {
    dojoController.cadastrarRespostaNao(req, res);
});

router.post("/autenticar", function (req, res) {
    dojoController.entrar(req, res);
});

module.exports = router;