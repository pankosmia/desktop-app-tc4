const { contextBridge, ipcRenderer } = require('electron')
contextBridge.exposeInMainWorld('electronAPI', {
  setCanClose: (canClose) => ipcRenderer.send('setCanClose', canClose)
})