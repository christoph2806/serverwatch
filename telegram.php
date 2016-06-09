<?php

function telegram($message) {

	curl_setopt_array(
		$ch = curl_init(), 
		array(
			CURLOPT_SAFE_UPLOAD => true,
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_URL => "https://api.telegram.org/bot232869845:AAFJLlu5JvOiS6hulCbIUZKdnJcgfNHN3KA/sendMessage",
			CURLOPT_POSTFIELDS => array(
				"chat_id" => "-134831751",
				"text" => $message,
				)
			)
		);
	curl_exec($ch);
	curl_close($ch);                    
	}

telegram($argv[1]);
					 
?>