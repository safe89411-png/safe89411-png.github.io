const config = {
type: Phaser.AUTO,
width: window.innerWidth,
height: window.innerHeight,
parent: 'game',

scene: {
preload: preload,
create: create,
update: update
}
};

const game = new Phaser.Game(config);

let money = 500;

function preload(){

this.load.image(
'ground',
'https://labs.phaser.io/assets/tilemaps/tiles/gridtiles.png'
);

this.load.image(
'house',
'https://labs.phaser.io/assets/sprites/block.png'
);

}

function create(){

this.add.text(20,20,
'💰 الذهب: ' + money,
{
fontSize:'30px',
color:'#ffffff'
}
).setScrollFactor(0).setName('moneyText');

for(let x=0; x<20; x++){

for(let y=0; y<20; y++){

this.add.image(
x*64,
y*64,
'ground'
).setOrigin(0);

}

}

this.input.on('pointerdown', (pointer)=>{

if(money >= 100){

money -= 100;

this.add.image(
pointer.worldX,
pointer.worldY,
'house'
).setDisplaySize(60,60);

this.children.getByName('moneyText')
.setText('💰 الذهب: ' + money);

}

});

this.cameras.main.setBounds(
0,
0,
2000,
2000
);

this.input.keyboard.on('keydown-W', ()=>{
this.cameras.main.scrollY -= 50;
});

this.input.keyboard.on('keydown-S', ()=>{
this.cameras.main.scrollY += 50;
});

this.input.keyboard.on('keydown-A', ()=>{
this.cameras.main.scrollX -= 50;
});

this.input.keyboard.on('keydown-D', ()=>{
this.cameras.main.scrollX += 50;
});

}

function update(){}
