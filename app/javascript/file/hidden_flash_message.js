document.addEventListener('DOMContentLoaded', function() {
  const alerts = document.querySelectorAll('.alert');
  console.log(alerts)
  
  alerts.forEach(alert => {
    setTimeout(() => {
      alert.classList.add('hidden');
    }, 3000);
  });
});