
var path = require('path'),
    models = require('../libs/models');

function generate(model, args, ajgenesis, cb) {
    models.completeModel(model);
    
    var includesdir = path.join('build', 'includes');
    
    ajgenesis.createDirectory('build');
    ajgenesis.createDirectory(includesdir);

    ajgenesis.fileTransform(path.join(__dirname, '..', 'templates', 'header.inc.php.tpl'), path.join('build', 'includes', 'header.inc.php'), model);
    ajgenesis.fileTransform(path.join(__dirname, '..', 'templates', 'footer.inc.php.tpl'), path.join('build', 'includes', 'footer.inc.php'), model);
    
    cb(null, null);
}

module.exports = function (model, args, ajgenesis, cb) {
    var source = path.resolve(path.join(__dirname, '..', '..', 'site'));    
    ajgenesis.copyDirectory(source, 'build', function(err, result) {
        if (err) {
            cb(err, null);
            return;
        }
        
        generate(model, args, ajgenesis, cb);
    });
}
