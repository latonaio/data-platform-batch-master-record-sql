# data-platform-batch-master-record-sql
data-platform-batch-master-record-sql は、データ連携基盤において、ロットマスタデータを維持管理するSQLテーブルを作成するためのレポジトリです。

## 前提条件
data-platform-batch-master-record-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview  

## sql の設定ファイル
data-platform-batch-master-record-sql には、sql の設定ファイルとして以下の sql ファイルが含まれています。

* data-platform-batch-master-record-sql-batch-data.sql（データ連携基盤 ロットマスタ - ロットデータ）

## MySQL のセットアップ / Kubernetes の設定 / SQL テーブルの作成方法
MySQL のセットアップ / Kubernetes の設定 / 具体的な SQL テーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
