FROM python:2.7

ARG COVERAGE
ARG SONARQUBE
ARG SONARQUBE_TOKEN
ARG SONARQUBE_GITHUB_TOKEN

ENV CI true
ENV TRAVIS true
ARG TRAVIS_BRANCH
ARG TRAVIS_JOB_NUMBER
ARG TRAVIS_PULL_REQUEST 
ARG TRAVIS_JOB_ID
ARG TRAVIS_TAG
ARG TRAVIS_REPO_SLUG
ARG TRAVIS_COMMIT

#COPY git-src /home/user/git-src
#COPY sonar/ /home/user/.sonar
#USER root
#RUN chown -R user:user /home/user/git-src /home/user/.sonar
#USER user

#WORKDIR /home/user/git-src
#RUN mkdir build

#WORKDIR build
#RUN ${SONARQUBE:+build-wrapper-linux-x86-64 --out-dir bw-output} make VERBOSE=1 -j2
#RUN make test
#RUN make install DESTDIR=${PWD}
#  if [ ${CC} = clang ]; then \
#    $HOME/.local/bin/codecov -F ${CC} --gcov-exec "llvm-cov gcov"; \
#  else \
#    $HOME/.local/bin/codecov -F ${CC}; \
#  fi; \
#fi && cd -
#RUN cd .. && if [ ${SONARQUBE} ]; then \
#  [ ${COVERAGE} ] || find . -type f -name '*.gcno' -exec gcov -pb  {} +; \
#  sonar-scanner \
#    -Dsonar.projectKey=${TRAVIS_REPO_SLUG##*/} \
#    -Dsonar.projectName=${TRAVIS_REPO_SLUG#*/} \
#    -Dsonar.projectVersion=${TRAVIS_COMMIT} \
#    -Dsonar.branch=/${TRAVIS_BRANCH} \
#   -Dsonar.links.homepage=http://github.com/${TRAVIS_REPO_SLUG} \
#    -Dsonar.links.ci=https://travis-ci.org/${TRAVIS_REPO_SLUG} \
#    -Dsonar.links.scm=https://github.com/${TRAVIS_REPO_SLUG} \
#    -Dsonar.links.issue=https://github.com/${TRAVIS_REPO_SLUG}/issues \
#    -Dsonar.sources=. \
#    -Dsonar.host.url=https://sonarqube.com \
#    -Dsonar.cfamily.gcov.reportsPath=. \
#    -Dsonar.organization=${TRAVIS_REPO_SLUG%%/*}-github \
#    $([ ${TRAVIS_PULL_REQUEST} != false ] && echo \
#       -Dsonar.analysis.mode=preview \
#       -Dsonar.github.pullRequest=${TRAVIS_PULL_REQUEST} \
#       -Dsonar.github.repository=${TRAVIS_REPO_SLUG} \
#       -Dsonar.github.oauth=${SONARQUBE_GITHUB_TOKEN}) \
#    -Dsonar.login=${SONARQUBE_TOKEN}; \
#fi && cd -
#ENV SONARQUBE_TOKEN ""
#USER root
#RUN make install
#USER user
#WORKDIR /home/user
COPY . /python-ci
