# お仕事用AWS CLIv2 Dockerイメージ

## 実行方法
引数でアクセスキーを渡して実行する

```
docker run -it --rm -e AWS_ACCESS_KEY_ID=xxx -e AWS_SECRET_ACCESS_KEY=xxx -e AWS_DEFAULT_REGION=ap-northeast-1 bigmuramura/awscliv2 zsh
```

https://infraya.work/posts/awscliv2_dockerfile/
