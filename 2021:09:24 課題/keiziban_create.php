<?php
// var_dump($_POST);
// exit();
// POSTデータ確認
if(
    !isset($_POST['named']) || $_POST['named'] =='' ||
    !isset($_POST['contents']) || $_POST['contents'] =='' ||
    !isset($_POST['created_at']) || $_POST['created_at'] ==''
){
    exit('ParamError');
}

$name = $_POST['named'];
$contents = $_POST['contents'];
$created_at = $_POST['created_at'];


// DB接続
$dbn ='mysql:dbname=kanikeiziban;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// DB接続
try {
    $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
    echo json_encode(["db error" => "{$e->getMessage()}"]);
    exit();
}


// SQL作成&実行
$sql = 'INSERT INTO keiziban_table (id, named, contents, created_at, updated_at) VALUES (NULL, :named, :contents, now(), now())';
$stmt = $pdo->prepare($sql);

// バインド変数を設定
$stmt->bindValue(':named', $named, PDO::PARAM_STR);
$stmt->bindValue(':contents', $contents, PDO::PARAM_STR);

// SQL実行（実行に失敗すると$statusにfalseが返ってくる）
$status = $stmt->execute();

if($status==false){
    $error = $stmt->errorInto();
    exit('sqlError:' . $error[2]);
} else {
    header('Location:keiziban_input.php');
}