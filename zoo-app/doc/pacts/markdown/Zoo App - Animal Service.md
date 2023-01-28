### A pact between Zoo App and Animal Service

#### Requests from Zoo App to Animal Service

* [A request for an alligator](#a_request_for_an_alligator_given_there_is_an_alligator_named_Mary) given there is an alligator named Mary

* [A request for an alligator](#a_request_for_an_alligator_given_there_is_not_an_alligator_named_Mary) given there is not an alligator named Mary

* [A request for an alligator](#a_request_for_an_alligator_given_an_error_occurs_retrieving_an_alligator) given an error occurs retrieving an alligator

* [A request for an seahawk](#a_request_for_an_seahawk_given_there_is_an_seahawk_named_Geno) given there is an seahawk named Geno

#### Interactions

<a name="a_request_for_an_alligator_given_there_is_an_alligator_named_Mary"></a>
Given **there is an alligator named Mary**, upon receiving **a request for an alligator** from Zoo App, with
```json
{
  "method": "get",
  "path": "/alligators/Mary",
  "headers": {
    "Accept": "application/json"
  }
}
```
Animal Service will respond with:
```json
{
  "status": 200,
  "headers": {
    "Content-Type": "application/json;charset=utf-8"
  },
  "body": {
    "name": "Mary"
  }
}
```
<a name="a_request_for_an_alligator_given_there_is_not_an_alligator_named_Mary"></a>
Given **there is not an alligator named Mary**, upon receiving **a request for an alligator** from Zoo App, with
```json
{
  "method": "get",
  "path": "/alligators/Mary",
  "headers": {
    "Accept": "application/json"
  }
}
```
Animal Service will respond with:
```json
{
  "status": 404
}
```
<a name="a_request_for_an_alligator_given_an_error_occurs_retrieving_an_alligator"></a>
Given **an error occurs retrieving an alligator**, upon receiving **a request for an alligator** from Zoo App, with
```json
{
  "method": "get",
  "path": "/alligators/Mary",
  "headers": {
    "Accept": "application/json"
  }
}
```
Animal Service will respond with:
```json
{
  "status": 500,
  "headers": {
    "Content-Type": "application/json;charset=utf-8"
  },
  "body": {
    "error": "Argh!!!"
  }
}
```
<a name="a_request_for_an_seahawk_given_there_is_an_seahawk_named_Geno"></a>
Given **there is an seahawk named Geno**, upon receiving **a request for an seahawk** from Zoo App, with
```json
{
  "method": "get",
  "path": "/seahawks/Geno",
  "headers": {
    "Accept": "application/json"
  }
}
```
Animal Service will respond with:
```json
{
  "status": 200,
  "headers": {
    "Content-Type": "application/json;charset=utf-8"
  },
  "body": {
    "name": "Geno"
  }
}
```
