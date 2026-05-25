height:120px;
object-fit:cover;
border-radius:15px;
}

button{
background:#5a3e1b;
color:white;
border:none;
padding:12px 25px;
font-size:20px;
border-radius:15px;
margin-top:10px;
cursor:pointer;
}

button:hover{
background:#7a5529;
}

.city{
margin:20px;
padding:20px;
background:#eee;
border-radius:20px;
min-height:200px;
font-size:22px;
}

</style>
</head>

<body>

<header>
🏰 لعبة بناء المدينة القديمة
</header>

<div class="stats">

<div class="box">
💰 الذهب:
<span id="gold">500</span>
</div>

<div class="box">
👥 السكان:
<span id="people">0</span>
</div>

<div class="box">
🛡️ الجيش:
<span id="army">0</span>
</div>

<div class="box">
👮 الشرطة:
<span id="police">0</span>
</div>

</div>

<div class="game">

<div class="build">
<img src="https://cdn-icons-png.flaticon.com/512/619/619153.png">

<h2>🏠 بيت</h2>

<p>السعر: 100</p>

<button onclick="buildHouse()">
بناء
</button>

</div>

<div class="build">
<img src="https://cdn-icons-png.flaticon.com/512/3081/3081559.png">

<h2>🏪 محل</h2>

<p>السعر: 150</p>

<button onclick="buildShop()">
بناء
</button>

</div>

<div class="build">
<img src="https://cdn-icons-png.flaticon.com/512/4320/4320337.png">

<h2>👮 مركز شرطة</h2>

<p>السعر: 200</p>

<button onclick="buildPolice()">
بناء
</button>

</div>

<div class="build">
<img src="https://cdn-icons-png.flaticon.com/512/484/484167.png">

<h2>🛡️ معسكر جيش</h2>

<p>السعر: 300</p>

<button onclick="buildArmy()">
بناء
</button>

</div>

</div>

<div class="city" id="city">

🏜️ المدينة فارغة

</div>

<script>

let gold = 500;

let people = 0;

let army = 0;

let police = 0;

function update(){

document.getElementById("gold").innerHTML = gold;

document.getElementById("people").innerHTML = people;

document.getElementById("army").innerHTML = army;

document.getElementById("police").innerHTML = police;

}

function buildHouse(){

if(gold < 100){

alert("❌ الذهب غير كافي");

return;

}

gold -= 100;

people += 5;

update();

document.getElementById("city").innerHTML +=
"<br>🏠 تم بناء بيت";

}

function buildShop(){

if(gold < 150){

alert("❌ الذهب غير كافي");

return;

}

gold -= 150;

gold += 50;

update();

document.getElementById("city").innerHTML +=
"<br>🏪 تم بناء محل";

}

function buildPolice(){

if(gold < 200){

alert("❌ الذهب غير كافي");

return;

}

gold -= 200;

police += 10;

update();

document.getElementById("city").innerHTML +=
"<br>👮 تم بناء مركز شرطة";

}

function buildArmy(){

if(gold < 300){

alert("❌ الذهب غير كافي");

return;

}

gold -= 300;

army += 20;

update();

document.getElementById("city").innerHTML +=
"<br>🛡️ تم بناء معسكر جيش";

}

setInterval(function(){

gold += 10;

update();

},5000);

</script>

</body>
</html>
