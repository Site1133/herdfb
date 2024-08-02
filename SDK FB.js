```javascript
window.fbAsyncInit = function() {
  FB.init({
    appId      : 'sua-app-id-do-facebook',
    cookie     : true,
    xfbml      : true,
    version    : 'v11.0'
  });

  FB.getLoginStatus(function(response) {
    if (response.status === 'connected') {
      // Usuário está conectado ao Facebook
      console.log('Usuário conectado');
      // Aqui você pode chamar uma função para direcionar as fotos e dados do usuário para o seu site
    } else {
      // Usuário não está conectado ao Facebook
      console.log('Usuário não conectado');
    }
  });

  document.getElementById('loginBtn').addEventListener('click', function() {
    FB.login(function(response) {
      if (response.authResponse) {
        // Usuário autorizou o login
        console.log('Usuário autorizou login');
        // Aqui você pode chamar uma função para direcionar as fotos e dados do usuário para o seu site
      } else {
        // Usuário cancelou o login
        console.log('Usuário cancelou login');
      }
    });
  });
};

