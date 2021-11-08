const { defaults } = require('jest-config');

module.exports = {
	testEnvironment: 'node',
	moduleFileExtensions: [...defaults.moduleFileExtensions, 'js'],
	testPathIgnorePatterns: ['dist', 'config'],
};
