var msg = new SpeechSynthesisUtterance();
var voices = window.speechSynthesis.getVoices();
msg.voice = voices[46]; // รูปแบบของเสียงซึ่งบางรูปแบบอาจไม่มีในภาษาที่เราต้องการสะกดมันก็จะพูดไม่ได้
msg.voiceURI = 'native'; //ตัวนี้บอกว่ามันจะใช้ตัวสังเคาะห์ภายใน (แปลว่าอะไรไม่รู้แต่มันจะสามารถใช้ได้โดยไม่มีการเชื่อมต่อเน็ตก็ตาม)
msg.volume = 1; // 0 ถึง1 เป็นระดับความดัง
msg.rate = 1; // 0.1 ถึง 10 อัตราเร็วของการพูด
msg.pitch = 0; //0 ถึง 2 // ลักษณะระดับเสียงสูงต่ำ
msg.text = 'สวัสดีครับ นี่คือระบบคัดกรองโรคเบื้องต้นอัตโนมัติ คุณชื่ออะไรครับ'; // ข้อความที่จะให้พูด
msg.lang = 'th-TH'; // ภาษา
speechSynthesis.speak(msg); // สั่งให้พูด