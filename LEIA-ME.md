# 📋 Ata IA

Seu registrador de reuniões com IA — **sem bot entrando na chamada**.

Grava o seu microfone (você) e o áudio do sistema (as outras pessoas), transcreve
durante a reunião e, ao encerrar, entrega a **ata pronta**: resumo, decisões,
ações combinadas (com responsável e prazo) e pendências.

Também transcreve **arquivos de áudio prontos** — aquele audiozão de WhatsApp
do cliente vira resumo estruturado em um clique.

Família do Ditado IA e do Captura IA: mesma chave Groq, mesma atualização pela nuvem.

## Como usar

**Reunião ao vivo** (Zoom, Meet, Teams, telefone no viva-voz, presencial):
1. Pressione **Ctrl+Shift+R** (ou bandeja → "▶ Iniciar reunião")
2. Converse normalmente — a janelinha verde mostra que está gravando
3. Ao final: **Ctrl+Shift+R** de novo (ou botão "⏹ Encerrar e gerar ata")
4. Em instantes: ata + transcrição completa na tela, tudo salvo no Histórico

**Arquivo pronto** (áudio de WhatsApp, gravação do celular):
1. Bandeja → "📁 Transcrever arquivo de áudio..."
2. Escolha o arquivo (.mp3, .m4a, .ogg/.opus, .wav etc., até 24MB)
3. Receba transcrição + resumo estruturado

## Instalação

1. Extraia este zip numa pasta fixa (ex.: `C:\AtaIA`) — nunca rode de dentro do zip
2. Duplo clique em **`instalar.bat`**
3. Cole sua chave do Groq (a mesma dos outros apps): https://console.groq.com/keys

## Privacidade

- O áudio NÃO é gravado em disco — é transcrito em blocos e descartado
- Transcrições e atas ficam SOMENTE no seu computador (`%APPDATA%\AtaIA\reunioes`)
- Dica de elegância profissional: avise os participantes que uma IA está anotando 😉

## Problemas?

Log em `%APPDATA%\AtaIA\app.log` — mande as últimas linhas pro Bob.
