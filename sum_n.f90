program sum_n                                   ! 程式開始，程式名稱為 sum_n
  implicit none                                 ! 關閉隱含型別，所有變數都必須明確宣告
  integer(kind=8) :: n, i, total                ! 宣告 64 位元整數：n 為上限、i 為迴圈計數、total 為累加和

  write(*,'(A)', advance='no') 'Enter N: '      ! 輸出提示文字，且不換行，讓使用者在同一行輸入
  read(*,*) n                                   ! 從鍵盤讀入使用者輸入的 N

  if (n < 1) then                               ! 檢查 N 是否小於 1（不合法的輸入）
    write(*,'(A)') 'N must be a positive integer.' ! 輸出錯誤訊息，提示 N 必須為正整數
    stop                                        ! 結束程式執行
  end if                                        ! 結束 if 判斷區塊

  total = 0                                     ! 將累加和初始化為 0
  do i = 1, n                                   ! 迴圈：i 從 1 跑到 n
    total = total + i                           ! 每次把目前的 i 加進累加和
  end do                                        ! 結束 do 迴圈

  write(*,'(A,I0,A,I0)') 'Sum of 1 to ', n, ' = ', total ! 依格式輸出結果：文字、N、文字、總和
end program sum_n                               ! 程式結束
