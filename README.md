# GITHUB jenkins action parametrized

[![Travis][travis-image]][travis-url]
![License][license-image]
![Issues][issues-image]

## USAGE

### GitHub Actions

#### Inputs

##### `jenkins`

**Required** url  Parameter. Default `"https://toniflorithomar.cat"`.
**Required** user Parameter. Default `"test"`.
**Required** token Parameter. Default `"test"`.
**Required** job Parameter. Default `"/job/test"`.
**OPTIONAL** parameters Parameter. Default `"test1&test2&test3"`. (Use & separator)

#### Example usage11

```bash
name: JENKINS ACTION
on: push
jobs:
  curl:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: jenkins
      uses: enflo/jenkins-action@master
      with:
        url: {{ URL }}
        user: {{ Jenkins User ID }}
        token: {{ Jenkins User Token ID }}
        job: {{ jenkins Job path }} `example /job/test`
        parameters: {{ jenkins parameters for parametrized jobs }}

```

## Improvements

- [ ] Make it possible to use GITHUB_* vars


[travis-image]: https://travis-ci.com/enflo/jenkins-action-parametrized.svg?branch=master
[travis-url]: https://travis-ci.com/enflo/jenkins-action-parametrized
[license-image]: https://img.shields.io/static/v1?label=licence&message=MIT&color=Green
[issues-image]: https://img.shields.io/github/issues/enflo/jenkins-action-parametrized