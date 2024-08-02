```javascript
const trocarNomeBtn = document.getElementById('trocarNome');
const nomePastaInput = document.getElementById('nomePasta');
const apelidoPastaInput = document.getElementById('apelidoPasta');
const nomeUsuarioSpan = document.getElementById('nomeUsuario');
const apelidoUsuarioSpan = document.getElementById('apelidoUsuario');

trocarNomeBtn.addEventListener('click', function() {
  const novoNome = nomePastaInput.value;
  const novoApelido = apelidoPastaInput.value;

  nomeUsuarioSpan.textContent = novoNome;
  apelidoUsuarioSpan.textContent = novoApelido;
});

