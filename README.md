# Shopify_Theme_Deploy_Docker
This code can build docker image witch is created to Deploy Shopify Theme.
It can also be used when you simply want to prepare a Docker container with ThemeKit installed.
When deploying, ThemeKit is used, and config.yml is a configuration file used by ThemeKit, so it is recommended to check ThemeKit specifications as well.
https://shopify.dev/tools/theme-kit/getting-started


このソースコードを使えば、Shopifyのテーマデプロイを行うためのDocker imageを作成できます。
単純に Theme Kit のインストールされたDockerコンテナを用意したいときにも使用できます。
デプロイ時には、ThemeKitを使用しており、config.ymlはThemeKitで使用される設定ファイルのためThemeKitの仕様も確認することをオススメします。
https://shopify.dev/tools/theme-kit/getting-started


## HOW TO USE
 It is intended to be used with AWS CodePipeline.
 
 1. Clone this code!
 2. Build a Docker Image from this code.  (Docker build)
 3. Push the Docker Image to AWS ECR.
 4. Create an AWS CodeBuild Project.
 5. Select the ECR where you pushed the image in the AWS CodeBuild project.
 6. Register buildspec in your CodeBuild project using buildspec.example.yml as a reference.
 7. Set the environment variables that will be used when building to CodeBuild.
 8. Create am AWS CodePipeline Pipeline.
 9. Register the Github branch where you are developing the theme as the pipeline source, and register the CodeBuild project you just created in Build.
 
 
 
 AWS CodePipelineで使用されることを想定しています。
 
 1. このコードをクローンします。
 2. 通常の手順でDocker Imageの作成を行います。 Docker build コマンドで大丈夫です。
 3. 作成されたDocker Imageを AWS ECRに push します。
 4. AWS CodeBuildで 新規プロジェクトを作成します。
 5. 先ほど push したECR上のイメージを使用するように、CodeBuildのプロジェクトを設定します。
 6. CodeBuildのプロジェクトに、buildspecを登録します。buildspec.example.ymlを参考にしてください。
 7. CodeBuildのプロジェクトにビルド時に使用する環境変数を設定します。
 8. 新規にAWS CodePipelineのパイプラインを作成します。
 9. パイプラインのソースにテーマ開発を行なっているGithubのブランチなどをお好みで登録し、Buildに先ほど作成したCodeBuildのプロジェクトを登録してください。


## Environment variables
Describe how the environmental variables are described.
These are variables that are used in config.yml, and you should either register the environment variables when you use this code, or put the values in config.yml instead of the environment variables.


環境変数の説明をします。
これらはconfig.ymlで使用する変数であり、このコードを使用する際には環境変数を登録するか、環境変数の代わりにconfig.ymlに値を入れておく必要があります。

| Variable name             | description                                                |
| ------------------ | --------------------------------------------------- |
| DEV_STORE_PASSWORD | Shopify Admin API's password.                       |
| DEV_THEME_ID       | Theme ID of the deployment destination.             |
| DEV_STORE_NAME     | Your Shopify store name.  like "hoge.myshopify.com" |
