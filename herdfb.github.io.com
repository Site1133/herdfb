<!DOCTYPE html>

<html>
<head>
  <meta http-equiv="CONTENT-TYPE" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="styles/style.css"/>
  <title>herdfb</title>
</head>
<body>
  <h1>
   
  </h1>
</body>
</html>

<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v9.0&appId=SEU_APP_ID_AQUI" nonce="SEU_NONCE_AQUI"></script>
<div id="fb-root"></div>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : 'SEU_APP_ID_AQUI',
      cookie     : 2,
      xfbml      : 4,
      version    : 'v9.0'
    });
    
    FB.getLoginStatus(function(response) {
      if (response.status === 'connected') {
        FB.api('/me', {fields: 'name, picture'}, function(response) {
          console.log(response);
          // Aqui você pode exibir a foto e o nome do usuário no seu site
        });
      } else {
        FB.login();
      }
    });
  };
</script>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #f9f9f9; /* Light background color */
    }
    .login-form {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    input[type="text"],
    input[type="password"],
    button {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;
    }
    button {
        background-color: #007bff; /* Blue button color */
        color: #fff;
        cursor: pointer;
    }
</style>
</head>
<body>
<div class="login-form">
    <h2>Login</h2>
    <input type="text" placeholder="Username">
    <input type="password" placeholder="Password">
    <button onclick="redirectToDashboard()">Login</button>
</div>

<script>
    function redirectToDashboard() {
        // Redirect to the dashboard page
        window.location.href = "file:///storage/emulated/0/herdfb.site.github.io.com/Tudo%20sobre%20fb.html";
    }
</script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gerenciamento de Pastas</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>

<div class="folder">
  <input type="text" id="nome" placeholder="Nome da Pasta">
  <input type="text" id="apelido" placeholder="Apelido da Pasta">
 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Change Name Button</title>
<style>
    body {
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #f0f0f0; /* Light gray background */
        color: #333;
        font-family: Arial, sans-serif;
    }
    .change-name-btn {
        background-color: #4267B2; /* Facebook blue color */
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }
</style>
</head>
<body>
<button class="change-name-btn" id="change-name-btn">TROCAR NOME ✅</button>

<script>
    const changeNameBtn = document.getElementById('change-name-btn');

    changeNameBtn.addEventListener('click-zoom', (place) => {
        // seu nome do facebook fou trocada 
        alert('Seu nome do facebook foi alterada, com sucesso  ✅');
    });
</script>
</body>
</html>
</div>

</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shining Website</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Gothic A1', sans-serif;
        color: black;
        text-shadow: 2px 2px 5px rgba(255, 255, 255, 0.5); /* Text shadow for shining effect */
    }
    button {
        background-color: #f0f; /* Light pink button color */
        color: black;
        font-family: 'Gothic A1', sans-serif;
        text-shadow: 2px 2px 5px rgba(255, 255, 255, 0.5); /* Text shadow for shining effect */
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
</head>
<body>


<script>
    // JavaScript code can be added here for additional functionality
</script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dark Mode Toggle</title>
<style>
    body {
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #4a235a; /* Wine-colored background */
        color: #fff;
        font-family: Arial, sans-serif;
    }
    .toggle-container {
        position: fixed;
        top: 20px;
        right: 20px;
    }
    .toggle-label {
        display: inline-block;
        font-size: 16px;
        margin-right: 10px;
    }
    .toggle-btn {
        display: inline-block;
        background-color: #1a5276; /* Dark blue color */
        color: #fff;
        padding: 5px 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
</head>
<body>
<div class="toggle-container">
    <label for="dark-mode-toggle" class="toggle-label">FACEBOOK TOOLS</label>
    <button id="dark-mode-toggle" class="toggle-btn">🔑</button>
</div>

<script>
    const darkModeToggle = document.getElementById('dark-mode-toggle');
    const body = document.body;

    darkModeToggle.addEventListener('click', () => {
        body.classList.toggle('dark-mode');
    });
</script>
</body>
</html>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Website</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
        background-color: #f9f9f9; /* Light background color */
    }
    .content {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .footer {
        background-color: #333; /* Dark background color */
        color: #fff; /* White text color */
        text-align: center;
        padding: 10px 0;
    }
</style>
</head>
<body>
<div class="content">
    <h1>FB Tools</h1>
    <p>O FACEBOOK TOOLS FOI CRIADO POR Isaac Muaco, para bom funcionamento e processamento..</p>
</div>
<footer class="footer">
    &copy; 2025 FB TOOLS. All Rights Reserved.
</footer>
</body>
</html>