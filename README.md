Question 4:
  In this question we need to get the wave form in accordance with the question. When we observe the question it satisfies the MOD 3 counter from 00,01,10 and then clear is triggered. The one problem with the alone MOD 3 counter is that it will not get extended to extra half clock cycle to get that we add a d flip flop in order to get the waveform X.
  Then we use this X waveform and pass it through another d flip flop in order to get the Y waveform.
  In this circuit we use 2 t flip flops for the counter and two d flip flops as to extend.
  T flip flops are rising edge
  First D flip flop for the X waveform is high level triggered.
  For the second D flip flop for Y waveform we use falling edge triggered.
  The logisim and vivado file are uploaded. In the vivado file we can get the actual waveform.
