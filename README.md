# Step - CA

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/step-ca.svg)](https://hub.docker.com/r/jitesoft/step-ca)
[![Back project](https://img.shields.io/badge/Open%20Collective-Tip%20the%20devs!-blue.svg)](https://opencollective.com/jitesoft-open-source)

This docker image contains [smallsteps](https://smallstep.com/) [Step Certificates](https://github.com/smallstep/certificates) (step-ca) certificate authority.  

## Tags

All images are built from source for ARM64, ARMv7 and AMD64.  
The tags are based on latest version at build time (0.14.5-rc.4 as of writing this document) 
which makes the tags change more often than this README.    
`latest` always refers to the latest version.


### Docker Hub

* `jitesoft/step-ca`
    * `latest`, `x.x.x`

### Gitlab

* `registry.gitlab.com/jitesoft/dockerfiles/step-ca`
  * `latest`, `x.x.x`
  
## Dockerfile

Dockerfile can be found at [GitLab](https://gitlab.com/jitesoft/dockerfiles/step-ca) or [GitHub](https://github.com/jitesoft/docker-step-ca).

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

## Licenses

Files in this repository are released under the [MIT license](https://gitlab.com/jitesoft/dockerfiles/step-ca/-/blob/master/LICENSE).  
Step certificates is released under the [Apache License 2.0](https://github.com/smallstep/certificates/blob/master/LICENSE).
