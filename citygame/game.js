const config = {
type: Phaser.AUTO,
width: window.innerWidth,
height: window.innerHeight,
backgroundColor: '#7ec850',

parent: 'game',

scene:{
create:create
}
};

new Phaser.Game(config);

let gold = 1000;
let tileSize = 64;

function create(){

const mapSize = 30;

for(let y=0;y<mapSize;y++){

for(let x=0;x<mapSize;x++){

let tile = this.add.rectangle(
x*tileSize,
y*tileSize,
tileSize-2,
tileSize-2,
0x6dbf4b
);

tile.setOrigin(0);

tile.setStrokeStyle(1,0x000000);

tile.setInteractive();

tile.on('pointerdown',()=>{

if(gold >= 100){

gold -= 100;

this.add.rectangle(
x*tileSize+8,
y*tileSize+8,
48,
48,
0xc58b45
).setOrigin(0);

goldText.setText("💰 "+gold);

}

});

}

}

let goldText = this.add.text(
20,
20,
"💰 "+gold,
{
fontSize:'32px',
color:'#ffffff',
backgroundColor:'#000'
}
);

goldText.setScrollFactor(0);

this.cameras.main.setBounds(
0,
0,
mapSize*tileSize,
mapSize*tileSize
);

this.input.on('pointermove',(pointer)=>{

if(pointer.isDown){

this.cameras.main.scrollX -=
(pointer.x - pointer.prevPosition.x);

this.cameras.main.scrollY -=
(pointer.y - pointer.prevPosition.y);

}

});

}
