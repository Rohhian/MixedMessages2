let adjectives = [];
let nouns = [];
let verbs = [];
let who = [];
let aKey = "";
let messageBox = document.getElementById('message');
let messageBox2 = document.getElementById('weather3');
let messageBox3 = document.getElementById('weather4');
let messageBox4 = document.getElementById('weather2');
let messageBox5 = document.getElementById('weather');


async function sendNewWord(theTable, theWord) {
    let thePackage = [theTable, theWord];
    const response = await fetch('http://localhost/MixedMessages2/sendNewWord.php', {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify(thePackage)
    });
    document.getElementById("errorMessage").innerHTML = await response.json();
    bringData();
}


function bringData() {

    async function loadData() {
        const responses = await Promise.all([fetch('http://localhost/MixedMessages2/getAdjectives.php'),
            fetch('http://localhost/MixedMessages2/getNouns.php'),
            fetch('http://localhost/MixedMessages2/getVerbs.php'),
            fetch('http://localhost/MixedMessages2/getWho.php'),
            fetch('http://localhost/MixedMessages2/getApiKey.php')]);
        return await Promise.all(responses.map(result => result.json()));
    }

    loadData().then((data) => {
        adjectives = data[0];
        nouns = data[1];
        verbs = data[2];
        who = data[3];
        aKey = data[4];
    }).then(bringCurrentWeather).then(calcRandAndShow)

}


function calcRandAndShow() {
    let n = Math.floor(Math.random() * nouns.length);
    let v = Math.floor(Math.random() * verbs.length);
    let a = Math.floor(Math.random() * adjectives.length);
    let n1 = Math.floor(Math.random() * nouns.length);
    while (n1 === n) {
        n1 = Math.floor(Math.random() * nouns.length);
    }
    let a1 = Math.floor(Math.random() * adjectives.length);
    while (a1 === a) {
        a1 = Math.floor(Math.random() * adjectives.length);
    }
    let w = Math.floor(Math.random() * who.length);
    messageBox.classList.add('active-animation');
    messageBox.innerHTML = `${who[w]} ${adjectives[a]} ${nouns[n]} is ${verbs[v]} the ${adjectives[a1]} ${nouns[n1]}`;
}


async function bringCurrentWeather() {
    const response = await fetch('https://api.openweathermap.org/data/2.5/weather?id=588409&units=metric&appid=' + aKey);
    const data = await response.json();
    let cardinal = getCardinalDirection(data.wind.deg);
    const response2 = await fetch('https://api.openweathermap.org/data/2.5/weather?id=3553478&units=metric&appid=' + aKey);
    const data2 = await response2.json();
    let cardinal2 = getCardinalDirection(data2.wind.deg);
    const response3 = await fetch('https://api.openweathermap.org/data/2.5/weather?id=794965&units=metric&appid=' + aKey);
    const data3 = await response3.json();
    let cardinal3 = getCardinalDirection(data3.wind.deg);
    const response4 = await fetch('https://api.openweathermap.org/data/2.5/weather?id=588157&units=metric&appid=' + aKey);
    const data4 = await response4.json();
    let cardinal4 = getCardinalDirection(data4.wind.deg);
    messageBox2.innerHTML = `<h3>Ilm hetkel<br>${new Date(data.dt * 1000).toLocaleString("et-EE", {
        dateStyle: "long",
        timeStyle: "short"
    })}</h3>Asukoht: ${data.name}<br>(<strong>Kesklinn</strong>)<br><br>${data.weather[0].description}<br>Pilvisus:  ${data.clouds.all}%<br><br>P&auml;ike t&otilde;useb:  ${new Date(data.sys.sunrise * 1000).toLocaleString("et-EE", {timeStyle: "short"})}<br>P&auml;ike loojub:  ${new Date(data.sys.sunset * 1000).toLocaleString("et-EE", {timeStyle: "short"})}<br><br>Temperatuur:  ${data.main.temp}&#8451<br>Tundub nagu:  ${data.main.feels_like}&#8451<br>Niiskus:  ${data.main.humidity}%<br><br>Tuule kiirus:  ${data.wind.speed} m/s<br>Tuule suund:  ${cardinal}`;
    messageBox3.innerHTML = `<h3>Ilm hetkel<br>${new Date(data2.dt * 1000).toLocaleString("et-EE", {
        timeZone: "Cuba",
        dateStyle: "long",
        timeStyle: "short"
    })}</h3>Asukoht: Cuba<br>(<strong>${data2.name}</strong>)<br><br>${data2.weather[0].description}<br>Pilvisus:  ${data2.clouds.all}%<br><br>P&auml;ike t&otilde;useb:  ${new Date(data2.sys.sunrise * 1000).toLocaleString("et-EE", {
        timeZone: "Cuba",
        timeStyle: "short"
    })}<br>P&auml;ike loojub:  ${new Date(data2.sys.sunset * 1000).toLocaleString("et-EE", {
        timeZone: "Cuba",
        timeStyle: "short"
    })}<br><br>Temperatuur:  ${data2.main.temp}&#8451<br>Tundub nagu:  ${data2.main.feels_like}&#8451<br>Niiskus:  ${data2.main.humidity}%<br><br>Tuule kiirus:  ${data2.wind.speed} m/s<br>Tuule suund:  ${cardinal2}`;
    messageBox4.innerHTML = `<h3>Ilm hetkel<br>${new Date(data3.dt * 1000).toLocaleString("et-EE", {
        dateStyle: "long",
        timeStyle: "short"
    })}</h3>Asukoht: ${data3.name}<br>(<strong>Mustam&auml;e</strong>)<br><br>${data3.weather[0].description}<br>Pilvisus:  ${data3.clouds.all}%<br><br>P&auml;ike t&otilde;useb:  ${new Date(data3.sys.sunrise * 1000).toLocaleString("et-EE", {timeStyle: "short"})}<br>P&auml;ike loojub:  ${new Date(data3.sys.sunset * 1000).toLocaleString("et-EE", {timeStyle: "short"})}<br><br>Temperatuur:  ${data3.main.temp}&#8451<br>Tundub nagu:  ${data3.main.feels_like}&#8451<br>Niiskus:  ${data3.main.humidity}%<br><br>Tuule kiirus:  ${data3.wind.speed} m/s<br>Tuule suund:  ${cardinal3}`;
    messageBox5.innerHTML = `<h3>Ilm hetkel<br>${new Date(data4.dt * 1000).toLocaleString("et-EE", {
        dateStyle: "long",
        timeStyle: "short"
    })}</h3>Asukoht: ${data4.name}<br>(<strong>Turba</strong>)<br><br>${data4.weather[0].description}<br>Pilvisus:  ${data4.clouds.all}%<br><br>P&auml;ike t&otilde;useb:  ${new Date(data4.sys.sunrise * 1000).toLocaleString("et-EE", {timeStyle: "short"})}<br>P&auml;ike loojub:  ${new Date(data4.sys.sunset * 1000).toLocaleString("et-EE", {timeStyle: "short"})}<br><br>Temperatuur:  ${data4.main.temp}&#8451<br>Tundub nagu:  ${data4.main.feels_like}&#8451<br>Niiskus:  ${data4.main.humidity}%<br><br>Tuule kiirus:  ${data4.wind.speed} m/s<br>Tuule suund:  ${cardinal4}`;
}

function getCardinalDirection(angle) {
    const directions = ['P&#245;hjast', 'Kirdest', 'Idast', 'Kagust', 'L&otilde;unast', 'Edelast', 'L&auml;&auml;nest', 'Loodest'];
    return directions[Math.round(angle / 45) % 8];
}


bringData();
setInterval(calcRandAndShow, 5000);
setInterval(bringCurrentWeather, 10000);
