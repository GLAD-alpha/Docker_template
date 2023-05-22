# 도커파일 템플릿 입니다 pull or clone ONLY

# Tech leader 외에는 이 repository에 push 하지 않습니다!
# 처음 프로젝트 repository를 생성하는 경우

새로운 프로젝트 시작할 때 그대로 clone 해와서 폴더 이름만 프로젝트에 맞게 바꾸면 편리합니다.
zip-file 만 다운로드 받아서 직접 서버에 넣어도 상관없습니다.

clone으로 가져온 경우, git remote가 자동으로 docker_template로 잡히므로
나중에 다른 프로젝트 레포지토리에 push 하려고 하면 먼저 git cache를 초기화해야합니다.

1. git remote remove origin 으로 remote 지우고
2. git rm -r --cached . 으로 캐시를 지우고

3. git remote add origin 프로젝트_git_주소
4. git add .

.gitignore에 의해서 config 와 container run 명령어, README 는 누락됩니다

5. git commit -m " 커밋 메시지 "
6. git push origin 트리이름(master)

container 생성을 위한 config, run 파일은 리더가 README.md에 작성하여 팀원들이 참조 할 수 있게 해주세요.
README.md 같은 md 파일들은 일단 github에서 직접 작성합니다.

# 이미 있는 프로젝트를 archieve하는 경우

개발환경에 대해 Dockerfile, config, container run 명령어를 정리합니다.
코드는 code 폴더로 두고 이외 데이터 config 와 container run은 README.md에 정리합니다.
코드와 데이터에 대한 설명도 가급적이면 ipynb로 정리해서 code아래 첨부합니다.

1. git remote add origin 프로젝트_git_주소
2. git add .

.gitignore에 의해서 config 와 container run 명령어, README 는 누락됩니다

3. git commit -m " 커밋 메시지 "
4. git push origin 트리이름(master)

이후 다음에 누군가 해당 프로젝트를 수정하여 업데이트 할 때 바뀌지 않았으면 하는 부분들은 .gitignore에 작성하여 따로 git에 직접 upload 합니다

