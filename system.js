const System = require('systemic');
const { join } = require('path');

module.exports = () => new System({ name: 'systemic_jest27' })
	.bootstrap(join(__dirname, 'components'));
