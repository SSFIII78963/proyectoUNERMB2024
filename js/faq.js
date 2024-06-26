function toggleCaja(idCaja) {
      var caja = document.getElementById(idCaja);
      if (caja.style.display === 'block') {
        caja.style.display = 'none';
      } else {
        caja.style.display = 'block';
      }
    }