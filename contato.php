<?php
$conexao = mysqli_connect("localhost", "root", "Tuziniz", "softwear");

if (!$conexao) {
    die("Erro ao conectar no banco.");
}

$nome     = $_POST["nome"];
$email    = $_POST["email"];
$ddd      = $_POST["ddd"];
$numero   = $_POST["numero"];
$mensagem = $_POST["mensagem"];

$sql = "INSERT INTO contatos (nome, email, ddd, numero, mensagem)
        VALUES ('$nome', '$email', '$ddd', '$numero', '$mensagem')";

if (mysqli_query($conexao, $sql)) {
    echo "Mensagem enviada com sucesso!";
} else {
    echo "Erro ao enviar a mensagem.";
}


mysqli_close($conexao);
?>

<br><br>
<a href="Html/contato.html">Voltar</a>
