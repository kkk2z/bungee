# 使用する基本イメージ
FROM openjdk:17-jdk-alpine

# 作業ディレクトリの作成
WORKDIR /app

# BungeeCordのダウンロード
RUN wget https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar -O BungeeCord.jar

# コンテナ起動時のコマンド
CMD ["java", "-jar", "BungeeCord.jar", "nogui"]
