<?php 
 
// Database configuration    
define('DB_HOST', 'localhost'); 
define('DB_USERNAME', 'root'); 
define('DB_PASSWORD', ''); 
define('DB_NAME', 'event_maker_db'); 
 
// Google API configuration 
define('GOOGLE_CLIENT_ID', '920425212352-pqlngqr7ami8tmuqok1tmkh019ln4th2.apps.googleusercontent.com'); 
define('GOOGLE_CLIENT_SECRET', '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'); 
define('GOOGLE_OAUTH_SCOPE', 'https://www.googleapis.com/auth/calendar'); 
define('REDIRECT_URI', 'http://localhost/EventMaker/google_calendar_event_sync.php'); 
 
// Start session 
if(!session_id()) session_start(); 
 
// Google OAuth URL 
$googleOauthURL = 'https://accounts.google.com/o/oauth2/auth?scope=' . urlencode(GOOGLE_OAUTH_SCOPE) . '&redirect_uri=' . REDIRECT_URI . '&response_type=code&client_id=' . GOOGLE_CLIENT_ID . '&access_type=offline'; 
 
?>