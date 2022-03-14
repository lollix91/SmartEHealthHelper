<?php

$mysqli = new mysqli("sql.lorenzodelauretis.it","lorenzod23806","","lorenzod23806");

if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}





define('API_ACCESS_KEY','AAAAH4rrBus:APA91bE2gEitY-4Nr2rPv483FhTuCcciwRGiMCXtmXYecKEZ05xtBJmyDhp8M1XzOk6PBYr8IL6MC4jIztRM0Xn_8tkj_9faNiDn7Ft1Lb7w_QEgf06v-VBUXfL7QBO--zYlQiXo8GHQ');
 $fcmUrl = 'https://fcm.googleapis.com/fcm/send';
 $token='e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8';

    $notification = [
            'title' =>'title',
            'body' => 'body of message.',
            'icon' =>'myIcon', 
            'sound' => 'mySound'
        ];
        $extraNotificationData = ["message" => $notification,"moredata" =>'dd'];

        $fcmNotification = [
            //'registration_ids' => $tokenList, //multple token array
            'to'        => $token, //single token
            'notification' => $notification,
            'data' => $extraNotificationData
        ];

        $headers = [
            'Authorization: key=' . API_ACCESS_KEY,
            'Content-Type: application/json'
        ];


        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,$fcmUrl);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fcmNotification));
        $result = curl_exec($ch);
        curl_close($ch);


        echo $result;


?>