# 🎮 Tutorial: Instalando e Rodando Jogos com UMU Launcher + Proton (Ex: DODI / Hydra)

## ✅ Pré-requisitos (faça apenas uma vez):

1. **Instale o UMU Launcher:**
   ```bash
   sudo pacman -S umu-launcher
   ```

2. **Instale Proton-GE:**
   - Baixe uma versão em: https://github.com/GloriousEggroll/proton-ge-custom/releases  
     (ex: `GE-Proton8-28.tar.gz`)
   - Extraia para o local correto:
     ```bash
     mkdir -p ~/.steam/steam/compatibilitytools.d
     tar -xf GE-Proton8-28.tar.gz -C ~/.steam/steam/compatibilitytools.d/
     ```

---

## 🛠️ Instalando um Jogo com Instalador (como DODI ou Hydra)

### 1. Crie uma pasta para o jogo e defina o prefixo:
```bash
mkdir -p ~/Games/sims2-umu
export WINEPREFIX=~/Games/sims2-umu
```

### 2. Execute o instalador com o Proton usando UMU:
```bash
PROTONPATH=~/.steam/steam/compatibilitytools.d/GE-Proton8-28
umu-run ~/Downloads/The\ Sims\ 2\ Legacy\ Collection\ \[DODI\ Repack\]/Setup.exe
```

- **Obs:** mesmo que o instalador mostre "C:\Program Files", o jogo será instalado virtualmente dentro da pasta `drive_c` do prefixo definido (`~/Games/sims2-umu/drive_c/...`).

---

## 🚀 Rodando o jogo após a instalação

### 1. Descubra o caminho do `.exe` do jogo

Neste caso, foi instalado em:
```bash
~/Games/sims2-umu/drive_c/Program\ Files\ \(x86\)/DODI-Repacks/The\ Sims\ 2\ Legacy\ Collection/The\ Sims\ 2\ Launcher.exe
```

### 2. Execute com UMU:
```bash
WINEPREFIX=~/Games/sims2-umu \
PROTONPATH=~/.steam/steam/compatibilitytools.d/GE-Proton8-28 \
umu-run ~/Games/sims2-umu/drive_c/Program\ Files\ \(x86\)/DODI-Repacks/The\ Sims\ 2\ Legacy\ Collection/The\ Sims\ 2\ Launcher.exe
```

---

## 🔁 Checklist para outros jogos:

- 🗂️ Crie uma pasta nova para o jogo
- 🧪 Defina `WINEPREFIX` apontando pra essa pasta
- 🧰 Certifique-se de que o Proton está extraído corretamente
- 📦 Rode o instalador com `umu-run`
- 🎯 Encontre o executável instalado
- 🚀 Rode o `.exe` com `umu-run` também

---

## 💡 Dica bônus

Quer criar um atalho? Crie um `.sh` com esse conteúdo:
```bash
#!/bin/bash
WINEPREFIX=~/Games/sims2-umu \
PROTONPATH=~/.steam/steam/compatibilitytools.d/GE-Proton8-28 \
umu-run ~/Games/sims2-umu/drive_c/Program\ Files\ \(x86\)/DODI-Repacks/The\ Sims\ 2\ Legacy\ Collection/The\ Sims\ 2\ Launcher.exe
```
Dê permissão:
```bash
chmod +x ~/Games/sims2-umu/start_sims2.sh
```

Agora é só executar o script:
```bash
~/Games/sims2-umu/start_sims2.sh
```
