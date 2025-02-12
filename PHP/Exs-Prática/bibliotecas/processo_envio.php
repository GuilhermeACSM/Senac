<?php
require './PHPmailer/Exception.php';
require './PHPmailer/OAuth.php';
require './PHPmailer/PHPMailer.php';
require './PHPmailer/POP3.php';
require './PHPmailer/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class Mensagem {
    private $para = null;
    private $assunto = null;
    private $mensagem = null;
    public $status = array('codigo_status' => null, 'descricao_status' => '');

    public function __set($atributo, $valor) {
        $this->$atributo = $valor;
    }

    public function __get($atributo) {
        return $this-> $atributo;
    }

    public function mensagemValida(){
        if (empty($this->para) || empty($this->assunto) || empty($this->mensagem)) {
            return false;
        }
            return true;
    }
}
//echo '<br/>';
$mensagem = new Mensagem();

$mensagem-> __set('para', $_POST['para']);
$mensagem-> __set('assunto', $_POST['assunto']);
$mensagem-> __set('mensagem', $_POST['mensagem']);

//print_r($mensagem);
//echo '<br/>';

if(!$mensagem-> mensagemValida()){
    //echo 'Mensagem é Válida!';
    header('Location: index.php');
} else{

$mail = new PHPMailer(true);
try {
        //Server settings
        $mail->SMTPDebug = 2; //poderia colocar 2 para aparecer o debug passo a passo                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = 'zguilhermegn@gmail.com';                     //SMTP username
        $mail->Password   = 'hqxd vlkj vgwr euvk';                               //SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         //Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
        $mail->Port       = 587;                                    //TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

        //Recipients
        $mail->setFrom('zguilhermegn@gmail.com', 'Ei! Brownie');
        $mail->addAddress($mensagem->__get('para'));     //Add a recipient
        //$mail->addReplyTo('info@example.com', 'Information');
        //$mail->addCC('cc@example.com');
        //$mail->addBCC('bcc@example.com');

        //Attachments
        //$mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
        //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name

        //Content
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->Subject = $mensagem->__get('assunto');
        $mail->Body    = $mensagem->__get('mensagem');
        $mail->AltBody = 'É necessário utilizar um client que suporte HTML para ter acesso total ao conteúdo desta mensagem!';

        $mail->send();

        $mensagem->status['codigo_status'] = 1;
        $mensagem->status['descricao_status'] = 'E-mail enviado com sucesso!';
        
} catch (Exception $e) {

        $mensagem->status['codigo_status'] = 2;
        $mensagem->status['descricao_status'] = 'Não foi possivel enviar este e-mail! Contate o Administrador! Detalhes do erro: ' . $mail->ErrorInfo;
}
}



?>