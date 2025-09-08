let deferredPrompt;
window.installPromptAvailable = false;

window.addEventListener('beforeinstallprompt', (e) => {
  e.preventDefault();
  deferredPrompt = e;
  window.installPromptAvailable = true;
});

window.installPWA = async () => {
  if (deferredPrompt) {
    deferredPrompt.prompt();
    const { outcome } = await deferredPrompt.userChoice;
    deferredPrompt = null;
    window.installPromptAvailable = false;
    return outcome;
  }
  return "unavailable";
};
