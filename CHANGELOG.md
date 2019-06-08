# Change Log
All notable changes to this project will be documented in this file.

See [DocuSign Support Center](https://support.docusign.com/en/releasenotes/) for Product Release Notes.

## [2.0.0] - eSignature API v19.1.02 - 2019-06-08
### BREAKING
* Moved ApiClient and ApiException under Client folder
### Removed
* empty test placeholder files
### Changed
* updated existing test cases to use JWT instead of the legacy auth (still not fully working yet)
### Added
* OAuth models under Client/Auth folder
* new dependency for OAuth support (firebase/php-jwt)
* OAuthTests.php for OAuth support test
### Fixed
* A bug with that could cause the *moveEnvelopes* method call to return a response without a *Content-Type* header. (DCM-2871)

## [1.0.2] - Updates Json gem dependency from 1.8 to 2.1 - 2018-10-22

## [1.0.1] - Updated JWT version requirement - 2018-10-22
