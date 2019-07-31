<?php

    include('bdd.php');
    if(!empty($_POST['btn']))
    {
        $pseudo = htmlspecialchars($_POST['pseudo']);
        $msg = htmlspecialchars($_POST['msg']);
        if(!empty($pseudo) AND !empty($msg))
        {
            $requete_msg = $bdd -> prepare('INSERT INTO chat(pseudo, msg, dateA, dateH) VALUES(?, ?, NOW(), NOW())');
            $requete_msg -> execute(array($pseudo, $msg));
        }   
        else
        {
            $error = 'Veuillez remplir tous les champs !';
        }
    }
?>
<!DOCTYPE html>
<html>
<head>
	<title>Chat</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css.css">
</head>
<body>
<div class="chat">
    <table align="center">
        <tr>
            <td>
                <?php 

                    if(isset($_POST['btnAncien']))
                    {
                        $requete_ancien = $bdd -> query('SELECT * FROM chat ORDER BY id DESC LIMIT 10, 15 ') -> fetchAll();
                        $requete_ancien = array_reverse($requete_ancien);
                        foreach($requete_ancien as $ancien)
                        {
                            echo '<p><i>Le'.$ancien['dateA'].' à '.$ancien['dateH'].'</i> <b>'.$ancien['pseudo'].'</b> : '.$ancien['msg'].'</p>';
                        }
                    }
                    if(isset($_POST['btnCache']))
                    {

                    }

                ?>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <form method="POST">
                    <input type="submit" name="btnAncien" value="Afficher les 15 derniers messages .">
                    <input type="submit" name="btnCache" value="Cacher les 15 derniers messages .">
                </form>
            </td>
        </tr>
                <tr>
                    <td>
                    <?php

                        $tous_les_msg = $bdd -> query('SELECT * FROM chat ORDER BY id DESC LIMIT 0, 10') -> fetchAll();
                        $tous_les_msg = array_reverse($tous_les_msg);
                        foreach($tous_les_msg as $message)
                        {
                            $messageA = new DateTime($message['dateA']);
                            $dateAA = $messageA->format('d/m/Y');
                            echo '<p><i>Le '.$dateAA.' à '.$message['dateH'].'</i> <b>'.$message['pseudo'].'</b> : '.$message['msg'].'</p>';
                        }

                    ?>
                    </td>
                </tr>
            </table>




        <form method="POST">
            <table align="center">
                <tr>
                    <td>
                        <label for="pseudo"><p>Votre pseudo :</p></label>
                    </td>
                    <td>
                        <input type="text" id="pseudo" name="pseudo" placeholder="Votre pseudo" value="<?php if(isset($pseudo)){ echo $pseudo; } ?>">
                    </td>
                </tr>

                <tr>
                    <td>
                    <label for="msg"> <p>Votre message : </p></label>
                    </td>
                    <td>
                        <textarea name="msg" id="msg" placeholder="Votre message"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                    
                    </td>
                    <td align="center">
                        <input type="submit" name="btn" value="Envoyer">
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <?php if(isset($error)){ echo '<p style="color: red;">'.$error.'</p>'; } ?>
                    </td>
                </tr>
            </table>
        </form>
</div>
</body>
</html>