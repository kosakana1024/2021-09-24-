<?php

// DB接続
$dbn ='mysql:dbname=kanikeiziban;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

try {
    $pdo = new PDO($dbn, $user, $pwd);
}   catch (PDOException $e) {
    echo json_encode(["db error" => "{$e->getMessage()}"]);
    exit();
}



// SQL作成&実行
$sql = 'SELECT * FROM keiziban_table ORDER BY created_at ASC';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

if ($status == false) {
    $error = $stmt->errorInfo();
    exit('sqlError:'.$error[2]);
}   else {
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    $output = "";
    foreach ($result as $record) {
        $output .= "
            <tr>
                <td>{$record["named"]}</td>
                <td>{$record["contents"]}</td>
                <td>{$record["created_at"]}</td>
            </tr>
        ";
    }
}



?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>簡易掲示板</title>
</head>

<body>
    <fieldset>
        <legend>簡易掲示板（一覧画面）</legend>
        <a href="keiziban_input.php">入力画面</a>
        <table>
        <thead>
        <tr>
            <th>名前</th>
            <th>投稿内容</th>
            <th>投稿時間<?php echo $loop['created_at']?></th>
        </tr>
        </thead>
        <tbody>
            <!-- ここに<tr> <td>named</td> <td>contents/td> <td>created_at</td> <tr>の形でデータが入る -->
            <?= $output ?>
        </tbody>
        </table>
    </fieldset>
</body>
</html>