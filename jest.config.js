module.exports = {
	globals: {
		'ts-jest': {
			tsConfig: 'tsconfig.json'
		}
	},
	moduleFileExtensions: [
		'ts',
		'js'
	],
	transform: {
    "^.+\\.tsx?$": "ts-jest"
	},
	testMatch: [
		'**/test/**/*.spec.(ts|js)'
	],
	testEnvironment: 'node'
};
