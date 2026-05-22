const { contextBridge, ipcRenderer } = require('electron')
contextBridge.exposeInMainWorld('electronAPI', {
  setCanClose: (canClose) => ipcRenderer.send('setCanClose', canClose)
})
contextBridge.exposeInMainWorld("api", {
  generatePdf: (uuid) => ipcRenderer.invoke("generate-pdf", uuid),
});