const scopedImport = require('./lib/scoped-import');
const config= require('./lib/config');

(async function() {

  await scopedImport.sync({
    rootDir: config.dataDir,
    source : 'elements'
    ,force : true
  });

  process.exit();
})();