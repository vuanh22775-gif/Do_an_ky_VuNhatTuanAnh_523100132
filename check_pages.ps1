try {
    $word = New-Object -ComObject Word.Application
    $word.Visible = $false
    $doc = $word.Documents.Open('C:\Users\ADMIN\Downloads\Bao_Cao_Do_An_Ky_VuNhatTuanAnh_523100132.docx')
    $pages = $doc.ComputeStatistics(2) # 2 is wdStatisticPages
    $words = $doc.ComputeStatistics(0) # 0 is wdStatisticWords
    Write-Host "EXACT WORD STATS: Pages = $pages, Words = $words"
    $doc.Close([ref]$false)
    $word.Quit()
} catch {
    Write-Host "Error: $_"
}
