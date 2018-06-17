var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
    res.render('contact');
});

router.post('/', function (req, res, next) {
    if (req.body) {
        res.render('contact', {'resultMessage': 'Message sent!'});
    } else {
        res.render('contact', {'resultMessage': 'Failed! Please fill out all the fields.'});
    }
});

module.exports = router;
