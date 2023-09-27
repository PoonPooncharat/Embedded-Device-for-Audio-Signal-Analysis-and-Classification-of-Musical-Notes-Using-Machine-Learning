# Embedded Device for Audio Signal Analysis and Classification of Musical Notes Using Machine Learning Blog Post

**Pooncharat Wongkom, Manopas Tanetsakunvatana.**

---

In music practice, musicians can’t know that the song they play is correct,like in the note 100 percent or not. So we built a tool that can help them score the playing.For some people who want to play the song they like but can’t transcribe or find the note.This tool can be helped by listening to the song or music to transcribe it ,and convert audio to music notes.
We use Fast fourier transform (FFT) to screen the sound out to any frequency. By converting input sound from analog to digital, using Analog-to-digital converter (ADC).And the results are displayed with LCD and Web-based Dashboard.

# การทำงานในช่วงที่ผ่านมา
## การทดลองในช่วงเดือนกรกฎาคม - สิงหาคม
### การทดลอง
1. ทำการทำลองวัดสัญญาณคลื่นเสียง
2. ทำวงจรรวมสัญญาณ 2 คลื่นความถี่ และใช้ FFT ในการจำแนกความถี่
3. เขียนโปรแกรมจำลองการรวมคลื่น sine wave และจำแนกความถี่ ด้วย Python และ Matlab
4. ทดลองนำอุปกรณ์ เช่น ไมค์โครโฟน มารับค่าสัญญาณ input แล้วจึงนำสัญญาณเหล่านั้นมาแปลงคลื่นความถี่ผ่าน Analog-to-digital converter (ADC)จากนั้นจึงนำสัญญาณเหล่านั้นมาจำแนกความถี่ผ่าน FFT
5. ทดลองการใช้ ESP32 ในการสร้าง input sinewave และใช้ ESP32 เป็น ADC ในการแปลงสัญญาณคลื่นเสียง

### สิ่งที่ได้ศึกษา
1. ข้อดีและข้อเสียของไมโครโฟนแต่ละประเภท
2. การใช้งาน ESP32 ในการรับสัญญาณเสียงและใช้แทน ADC
3. การเขียน Github page โดยใช้ HTML, CSS และ JavaScript

รวมถึงได้ทำ Github page โดยใช้ภาษา HTML, CSS และ JavaScript

## การทดลองในช่วงเดือนกันยายน

### สิ่งที่ได้แก้ไข

1. ทำการเปลี่ยนวิธีการเขียน Github page จากการใช้ HTML, CSS และ JavaScript แล้วได้เปลี่ยนมาใช้ Markdown ในการเขียนเป็นหลัก






---

