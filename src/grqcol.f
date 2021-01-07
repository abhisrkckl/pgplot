C*GRQCOL -- inquire color capability
C+
      SUBROUTINE GRQCOL (CI1, CI2)
      INTEGER  CI1, CI2
C
C Query the range of color indices available on the current device.
C
C Argument:
C  CI1    (output) : the minimum available color index. This will be
C                    either 0 if the device can write in the
C                    background color, or 1 if not.
C  CI2    (output) : the maximum available color index. This will be
C                    1 if the device has no color capability, or a
C                    larger number (e.g., 3, 7, 15, 255).
C--
C 31-May-1989 - new routine [TJP].
C  1-Sep-1994 - avoid driver call [TJP].
C-----------------------------------------------------------------------
      INCLUDE 'grpckg1.inc'
C
C Error if no workstation is open.
C
      IF (GRCIDE.LT.1) THEN
          CI1 = 0
          CI2 = 0
      ELSE
          CI1 = GRMNCI(GRCIDE)
          CI2 = GRMXCI(GRCIDE)
      END IF
C
      END
