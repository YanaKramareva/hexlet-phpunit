install:
	composer install

console:
	composer exec --verbose psysh

lint:
	composer exec --verbose phpcs -- --standard=PSR12 src tests

lint-fix:
	composer exec --verbose phpcbf -- --standard=PSR12 src tests

test:
	composer exec --verbose phpunit tests

validate:
	composer validate

test-coverage:
	composer exec --verbose phpunit tests -- --coverage-clover build/logs/clover.xml
