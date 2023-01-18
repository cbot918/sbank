
ENV_PATH="./build"
ENV_QUERIES="./query"
ENV_SCHEMA="./schema"

sqlc1(){
  BASE="sqlc-temp"

  mkdir $BASE
  mkdir $BASE/query
  mkdir $BASE/schema
  mkdir $BASE/build
  
  echo '
version: "1"
packages:
  - name: "db"
    path: "./build/"
    queries: "./query/"
    schema: "./schema/"
    engine: "postgresql"
    emit_json_tags: true
    emit_prepared_queries: false
    emit_interface: false
    emit_exact_table_names: false  
' >> $BASE/sqlc.yaml


  echo "把檔案放入$BASE資料夾"
}


# sqlc2(){
  
# }