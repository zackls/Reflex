package 
{
	import flash.display.*;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.events.TouchEvent;
	import flash.events.MouseEvent;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.filters.GlowFilter;
	import flash.geom.Matrix;
	import flash.filters.BlurFilter;

	public final class Client extends Sprite
	{
		public var worldVelocity:Number;
		public var racerAgility:Number;
		private var medTextFormat:TextFormat = new TextFormat();
		private var This:Object = this;
		private var killedCubes:int = 0;
		private var deadCubes:int;
		private var totalCoins:int;
		private var distanceTraveled:int = 0;
		private var beginningCoins:int;
		private var currentRacerLevel:int;
		private var textClr:int
		private var currentAttempt:int
		public function Client(dieRoot:Function,powerupType:String,powerupLevel:int,agilityLevel:int,exp:int,currentRacerLevel:int,achievements:Array,tutorial:Boolean,totalCoins:int,coinFreq:int,powerupFreq:int,createTextField:Function,deadCubes:int,backgroundClr:String,currentAttempt:int)
		{
			if (backgroundClr == "Black")
			{
				textClr = 0xFFFFFF
			}
			else if (backgroundClr == "White")
			{
				textClr = 0x000000
			}
			medTextFormat.color = textClr
			var coinColor:int;
			var powerupColor:int;
			if (coinFreq == 1)
			{
				coinColor = 0x7F4617;
			}
			else if (coinFreq == 2)
			{
				coinColor = 0xA09C98;
			}
			else if (coinFreq == 3)
			{
				coinColor = 0xADA112;
			}
			if (powerupFreq == 1)
			{
				powerupColor = 0x0000CC;
			}
			else if (powerupFreq == 2)
			{
				powerupColor = 0x00CC00;
			}
			else if (powerupFreq == 3)
			{
				powerupColor = 0xCC0000;
			}
			This.currentAttempt = currentAttempt
			This.deadCubes = deadCubes;
			This.beginningCoins = totalCoins;
			This.totalCoins = totalCoins;
			var i:int;
			var j:int;
			var k:int;
			racerAgility = 5 + 2 * agilityLevel;
			worldVelocity = 48 + currentRacerLevel * 3;
			medTextFormat.font = "Calibri";
			medTextFormat.size = 24;
			var smokeColor:int;
			if (currentRacerLevel == 1 || currentRacerLevel == 2)
			{
				smokeColor = 0xCCCCCC;
			}
			else if (currentRacerLevel == 3 || currentRacerLevel == 4)
			{
				smokeColor = 0xAAAAAA;
			}
			else if (currentRacerLevel == 5 || currentRacerLevel == 6)
			{
				smokeColor = 0x888888;
			}
			else if (currentRacerLevel == 7 || currentRacerLevel == 8)
			{
				smokeColor = 0x666666;
			}
			else if (currentRacerLevel == 9 || currentRacerLevel == 10)
			{
				smokeColor = 0x333333;
			}
			var expBar:Sprite = new Sprite();
			expBar.graphics.beginFill(selectColor(currentRacerLevel + 1),1);
			expBar.graphics.drawRect(0,0,2,650);
			expBar.graphics.endFill();
			expBar.x = 10;
			expBar.y = 25;
			var min:Number;
			var startingXPosition:Number;
			var startingYPosition:Number;
			var cubes:Array = [];
			var coins:Array = [];
			var powerups:Array = [];
			var particles:Array = [];
			var sides:Array = []
			var sideOwners:Array = []
			var particleVelocities:Array = [];
			var particleAges:Array = [];
			var levelUpTimer:int = 0;
			var levelUpText:TextField = new TextField();
			levelUpText.text = "Level Up!";
			var finishedAchievements:Array = [];
			var achievementText:TextField;
			var achievementFormat:TextFormat = new TextFormat("Cambria",26,0xAAAAAA,true);
			achievementFormat.align = "center";
			var powerup:Boolean = false;
			var powerupTimer:int = 0;
			var teleportTimer:int = 0;
			var bulletTimer:int = 0;
			var shieldTimer:int = 0;
			var shielded:Boolean = false;
			var bullets = [];
			var numRockets:int = 0;
			var rockets:Array = [];
			var currentRacerLevel:int;
			var rocketTargets:Array = [];
			var world:Sprite = new Sprite();
			var stars:Sprite = new Sprite()
			for (i = 0; i < 35; i++)
			{
				var star:Sprite = new Sprite()
				star.graphics.beginFill(0xFFFFFF)
				star.graphics.drawCircle(0,0,(Math.random() * 3 + 10) / 8)
				star.graphics.endFill()
				star.x = (640 * 12 * Math.random() / 5 - 320)
				star.y = (700 * 12 * Math.random() / 5 - 350)
				star.z = (Math.random() * 1000 + 1000) / 8
				var randomBlur:Number = Math.random() * Math.random() * 3
				star.filters = [new BlurFilter(randomBlur,randomBlur)]
				stars.addChild(star)
			}
			stars.z = 250
			stars.x = 320
			stars.y = 350
			var racer:Sprite = new Racer(world,powerupType,powerupLevel,agilityLevel);
			var racerInstance:Object = racer as Object;
			var teleportSphereFront:Sprite = new Sprite();
			var teleportSphereBack:Sprite = new Sprite();
			var previousRotation:Number = 0;
			var stabilityCounter:int = 0;
			var coinCounter:int = 0;
			teleportSphereBack.graphics.beginFill(racerInstance.powerupColor - 0x333333,0.3);
			teleportSphereBack.graphics.drawCircle(0,0,75);
			teleportSphereBack.graphics.endFill();
			teleportSphereBack.x = 320;
			teleportSphereBack.y = 350;
			var matrix:Matrix = new Matrix();
			matrix.createGradientBox(100,100,0,-25,-75);
			teleportSphereFront.graphics.beginGradientFill(GradientType.RADIAL,[0xFFFFFF,racerInstance.powerupColor - 0x333333],[0,0.3],[0,255],matrix);
			teleportSphereFront.graphics.drawCircle(0,0,75);
			teleportSphereFront.graphics.endFill();
			teleportSphereFront.x = 320;
			teleportSphereFront.y = 350;
			teleportSphereFront.width = 0;
			teleportSphereFront.height = 0;
			teleportSphereBack.width = 0;
			teleportSphereBack.height = 0;
			var smokeContainer:Sprite = new Sprite();
			var particleContainer:Sprite = new Sprite();
			var distanceText:TextField = createTextField(medTextFormat,"",50,15,150);
			var coinText:TextField = createTextField(medTextFormat,"",565,15);
			var randomMissingPositionI:int;
			var randomMissingPositionJ:int;
			var coinIcon:Sprite = new Coin(coinColor);
			coinIcon.x = 550;
			coinIcon.y = 30;
			coinIcon.scaleX = 0.5;
			coinIcon.scaleY = 0.5;
			coinIcon.scaleZ = 0.5;
			particleContainer.addChild(racer);
			particleContainer.addChild(coinIcon);
			particleContainer.addChild(coinText);
			particleContainer.addChild(distanceText);
			var racerSensor:Sprite = new rotationIcon();
			racerSensor.x = 320;
			racerSensor.y = 525;
			racerSensor.graphics.beginFill(0x000000,0);
			racerSensor.graphics.drawCircle(0,0,1000);
			racerSensor.graphics.endFill();
			if (backgroundClr == "Black")
			{
				addChild(stars)
			}
			addChild(world);
			addChild(teleportSphereBack);
			addChild(particleContainer);
			addChild(teleportSphereFront);
			addChild(smokeContainer);
			addChild(racerSensor);
			addChild(expBar);
			racer.x = 320;
			racer.y = 350;
			world.x = 320;
			world.y = 350;
			smokeContainer.x = 320;
			smokeContainer.y = 350;
			var tutorialFormat:TextFormat = new TextFormat("Cambria",20,textClr);
			tutorialFormat.align = "center";
			var textFields:Array = [];
			var firstField:TextField = createTextField(tutorialFormat,"Hello there!",0,0,300);
			var secondField:TextField = createTextField(tutorialFormat,"To move your ship, simply hover\naround that icon down there.\nTry it out!",0,0,300);
			var thirdField:TextField = createTextField(tutorialFormat,"Good!",0,0,300);
			var fourthField:TextField = createTextField(tutorialFormat,"Your goal is get as far\nas possible.",0,0,300);
			var fifthField:TextField = createTextField(tutorialFormat,"Without hitting any cubes.",0,0,300);
			var sixthField:TextField = createTextField(tutorialFormat,"Your distance will appear\nto the upper left.",0,0,300);
			var seventhField:TextField = createTextField(tutorialFormat,"Your coins will appear\nto the upper right.",0,0,300);
			var eighthField:TextField = createTextField(tutorialFormat,"Spend them on upgrades.",0,0,300);
			var ninthField:TextField = createTextField(tutorialFormat,"Your experience will appear\nto a bar on the left.",0,0,300);
			var tenthField:TextField = createTextField(tutorialFormat,"Level up, and the\n game gets harder.",0,0,300);
			var eleventhField:TextField = createTextField(tutorialFormat,"Use powerups by clicking anywhere\non the screen. Try it out!",0,0,350);
			var twelfthField:TextField = createTextField(tutorialFormat,"Good!",0,0,300);
			var thirteenthField:TextField = createTextField(tutorialFormat,"Use powerups to shoot bullets,\nlaunch rockets, teleport\nor cover yourself with a shield.",0,0,350,300);
			var fourteenthField:TextField = createTextField(tutorialFormat,"The type of powerup used\ndepends on the one you\nequip from the upgrades menu.",0,0,350,300);
			var fifteenthField:TextField = createTextField(tutorialFormat,"If you want to see the\ntutorial again.",0,0,300);
			var sixteenthField:TextField = createTextField(tutorialFormat,"Turn it on from the options\nscreen.",0,0,300);
			var seventeenthField:TextField = createTextField(tutorialFormat,"GOOD LUCK!",0,0,300);
			var firstCheck:Boolean = false;
			var firstCheckTime:int;
			var secondCheck:Boolean = false;
			var secondCheckTime:int;
			var timer:int = 0;
			var rotations:int = 0;
			var startingCoins:int = 0;
			var newCube:Sprite;
			var newCoin:Sprite;
			var newPowerup:Sprite;
			var newParticle:Sprite;
			var randomIndexI:int;
			var randomIndexJ:int;
			var racerXVelocity:Number;
			var racerYVelocity:Number;
			var targetRotationX:Number = 0;
			var targetRotationZ:Number = 0;
			var previousFrameRotation:Number = 0;
			var localPattern:Function = patternA
			var currentPattern:Function;
			var possiblePatterns:Array = [patternA];
			if (currentRacerLevel > 1)
			{
				possiblePatterns.push(patternB);
			}
			if (currentRacerLevel > 2)
			{
				possiblePatterns.push(patternC);
			}
			if (currentRacerLevel > 4)
			{
				possiblePatterns.push(patternD);
			}
			if (currentRacerLevel > 6)
			{
				possiblePatterns.push(patternE);
			}
			if (currentRacerLevel > 9)
			{
				possiblePatterns.push(patternF);
			}
			var permXPos:Number;
			var permYPos:Number;
			var racerRightTail:Point = new Point(0,0)
			var racerLeftTail:Point = new Point(0,0)
			var shootingBullets:Boolean = false
			var teleporting:Boolean = false
			var shielding:Boolean = false
			var fadingShield:Boolean = false
			var levelingUp:Boolean = false
			addEventListener(Event.ENTER_FRAME,moveWorld);
			racerSensor.addEventListener(MouseEvent.MOUSE_OVER,initialTouch);
			function initialTouch(e:MouseEvent):void
			{
				e.currentTarget.removeEventListener(MouseEvent.MOUSE_OVER,initialTouch);
				stage.addEventListener(MouseEvent.MOUSE_MOVE,moveRacer);
				e.currentTarget.addEventListener(MouseEvent.MOUSE_OUT,finalTouch);
			}
			function finalTouch(e:MouseEvent):void
			{
				e.currentTarget.addEventListener(MouseEvent.MOUSE_OVER,initialTouch);
				stage.removeEventListener(MouseEvent.MOUSE_MOVE,moveRacer);
				e.currentTarget.removeEventListener(MouseEvent.MOUSE_OUT,finalTouch);
				if (! firstCheck && timer > 60)
				{
					firstCheck = true;
					firstCheckTime = timer;
				}
			}
			function moveRacer(e:MouseEvent):void
			{
				if (Math.sqrt(Math.pow(e.stageY - racerSensor.y,2) + Math.pow(e.stageX - racerSensor.x,2)) <= 150)
				{
					targetRotationX =  -  4 / 3 * Math.sqrt(Math.pow(e.stageY - racerSensor.y,2) + Math.pow(e.stageX - racerSensor.x,2)) / 30;
				}
				targetRotationZ = 180 / Math.PI * Math.atan2(e.stageY - racerSensor.y,e.stageX - racerSensor.x) + 90;
			}
			function moveWorld(e:Event):void
			{
				if (timer / 6 is int)
				{
					stars.x = Math.pow(Math.E,-Math.pow(world.x / 2000,2) - 1) * world.x / 8
					stars.y = Math.pow(Math.E,-Math.pow(world.y / 2000,2) - 1) * world.y / 8
				}
				This.currentRacerLevel = currentRacerLevel;
				totalCoins = This.totalCoins
				This.deadCubes = deadCubes
				previousRotation = racer.rotationZ;
				if (tutorial)
				{
					tutoriate();
				}
				else
				{
					distanceTraveled +=  Math.round(worldVelocity);
					exp +=  Math.round(Math.sqrt(worldVelocity));
					checkAchievements();
					startingCoins = This.totalCoins;
					if (timer == (rotations + 1) * 1050 + 20)
					{
						rotations++;
					}
					if (timer == rotations * 1050 + 20)
					{
						selectPattern();
					}
					if (timer < 1020 + rotations * 1050 && timer >= 20)
					{
						currentPattern();
					}
				}
				coinText.text = (This.totalCoins - beginningCoins).toString();
				distanceText.text = distanceTraveled.toFixed();
				if (distanceTraveled > 1000000)
				{
					distanceText.text = distanceTraveled.toExponential(5);
				}
				if (previousFrameRotation + 180 < targetRotationZ)
				{
					racer.rotationZ +=  360;
				}
				else if (previousFrameRotation - 180 > targetRotationZ)
				{
					racer.rotationZ -=  360;
				}
				racer.rotationZ +=  (targetRotationZ - racer.rotationZ) * Math.sqrt(racerAgility) / 10;
				racer.rotationX +=  (targetRotationX - racer.rotationX) * Math.sqrt(racerAgility) / 10;
				previousFrameRotation = racer.rotationZ;
				racerXVelocity = -100 * Math.sin(racer.rotationX * Math.PI / 180) * Math.sin(racer.rotationZ * Math.PI / 180);
				racerYVelocity = 100 * Math.sin(racer.rotationX * Math.PI / 180) * Math.cos(racer.rotationZ * Math.PI / 180);
				world.x -=  racerXVelocity;
				world.y -=  racerYVelocity;
				world.z -=  worldVelocity;
				smokeContainer.z = world.z;
				powerupAnimation();
				rotateExtras();
				handleParticles();
				assessWorldItems();
				racerTrails();
				handleExp();
				timer++;
				shootBullets()
				teleport()
				shield()
				fadeShield()
				levelUp()
			}
			function selectPattern():void
			{
				var randomIndex:int = Math.round(Math.random() * 10 - 0.5);
				if (possiblePatterns.length != 1)
				{
					while (randomIndex == possiblePatterns.lastIndexOf(currentPattern) || randomIndex >= possiblePatterns.length)
					{
						randomIndex = Math.round(Math.random() * 10 - 0.5);
					}
				}
				else
				{
					randomIndex = 0;
				}
				currentPattern = possiblePatterns[randomIndex];
			}
			function patternA():void
			{
				for (i = 0; i < Math.round((Math.random() + 1) * Math.random() * 1.2); i++)
				{
					newCube = new Cube(selectColor(currentRacerLevel),100);
					newCube.alpha = 0;
					newCube.z = world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10);
					newCube.x = Math.round(Math.random() * 8 - (world.x - 320) / 100) * 100 - 400;
					newCube.y = Math.round(Math.random() * 8 - (world.y - 350) / 100) * 100 - 400;
					if (checkDistance(newCube,Coin,world))
					{
						world.addChild(newCube);
						cubes.push(newCube);
					}
				}
				if (Math.random() > 0.98 - coinFreq / 100)
				{
					newCoin = new Coin(coinColor);
					newCoin.z = world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10);
					newCoin.x = Math.round(Math.random() * 6 - (world.x - 320) / 100) * 100 - 300;
					newCoin.y = Math.round(Math.random() * 6 - (world.y - 350) / 100) * 100 - 300;
					if (checkDistance(newCoin,Cube,world))
					{
						world.addChild(newCoin);
						coins.push(newCoin);
					}
				}
				else if (Math.random() > 0.998 - powerupFreq / 1000)
				{
					newPowerup = new Powerup(powerupColor);
					newPowerup.z = world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10);
					newPowerup.x = Math.round(Math.random() * 6 - (world.x - 320) / 100) * 100 - 300;
					newPowerup.y = Math.round(Math.random() * 6 - (world.y - 350) / 100) * 100 - 300;
					if (checkDistance(newPowerup,Cube,world))
					{
						world.addChild(newPowerup);
						powerups.push(newPowerup);
					}
				}
			}
			function patternB():void
			{
				if ((timer + 5) / 10 is int && Math.random() > 0.75 - coinFreq / 50)
				{
					for (i = 0; i < 2; i++)
					{
						for (j = 0; j < 2; j++)
						{
							createCube(i * 200 - 100 - Math.round((world.x - 320) / 100) * 100,j * 200 - 100 - Math.round((world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),100,world,cubes,selectColor(currentRacerLevel));
						}
					}
					if (Math.random() > 0.915 - powerupFreq / 10)
					{
						createPowerup(-Math.round((world.x - 320) / 100) * 100,-Math.round((world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),world,powerups,powerupColor);
					}
					else
					{
						createCoin(-Math.round((world.x - 320) / 100) * 100,-Math.round((world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),world,coins,coinColor);
					}
				}
				if (timer / 10 is int && Math.random() < 0.33)
				{
					for (i = 0; i < 2; i++)
					{
						for (j = 0; j < 2; j++)
						{
							createCube(i * 400 - 200 - Math.round((world.x - 320) / 100) * 100,j * 400 - 200 - Math.round((world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),100,world,cubes,selectColor(currentRacerLevel));
						}
					}
				}
				else if (timer / 10 is int && Math.random() < 0.7)
				{
					for (i = 0; i < 3; i++)
					{
						for (j = 0; j < 3; j++)
						{
							if (j != 1 || i != 1)
							{
								createCube(i * 200 - 200 - Math.round((world.x - 320) / 100) * 100 + 100 * (Math.round(Math.random() * 2) - 1) * (Math.round(Math.random() * 2) - 1),j * 200 - 200 - Math.round((world.y - 350) / 100) * 100 + 100 * (Math.round(Math.random() * 2) - 1) * (Math.round(Math.random() * 2) - 1),world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),100,world,cubes,selectColor(currentRacerLevel));
							}
						}
					}
				}
				if (timer / 10 is int && Math.random() > 0.5)
				{
					createCube(-Math.round((world.x - 320) / 100) * 100,-Math.round((world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),100,world,cubes,selectColor(currentRacerLevel));
					if (Math.random() > 0.9 - powerupFreq / 50 - coinFreq / 50)
					{
						for (i = 0; i < 2; i++)
						{
							for (j = 0; j < 2; j++)
							{
								if (Math.random() > 0.915 - powerupFreq / 10)
								{
									createPowerup(i * 200 - 100 - Math.round((world.x - 320) / 100) * 100,j * 200 - 100 - Math.round((world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),world,powerups,powerupColor);
								}
								else
								{
									createCoin(i * 200 - 100 - Math.round((world.x - 320) / 100) * 100,j * 200 - 100 - Math.round((world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),world,coins,coinColor);
								}
							}
						}
					}
				}
			}
			function patternC():void
			{
				if ((timer + 20) / 40 is int)
				{
					randomMissingPositionI = Math.round(Math.random() * 3 - 1.5);
					randomMissingPositionJ = Math.round(Math.random() * 3 - 1.5);
					createCube(randomMissingPositionI * 125 - Math.round((world.x - 320) / 100) * 100,randomMissingPositionJ * 125 - Math.round((world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),100,world,cubes,selectColor(currentRacerLevel));
				}
				if (timer / 40 is int)
				{
					for (i = -3; i < 4; i++)
					{
						for (j = -3; j < 4; j++)
						{
							if (i != randomMissingPositionI && j != randomMissingPositionJ)
							{
								createCube(i * 125 - Math.round((world.x - 320) / 100) * 100,j * 125 - Math.round((world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),100,world,cubes,selectColor(currentRacerLevel));
							}
							else
							{
								if (Math.random() > 0.75 && (i != randomMissingPositionI || j != randomMissingPositionJ))
								{
									createCube(i * 125 - Math.round((world.x - 320) / 100) * 100,j * 125 - Math.round((world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),100,world,cubes,selectColor(currentRacerLevel));
								}
								else if (Math.random() > 0.95 - powerupFreq / 50)
								{
									createPowerup(i * 125 - Math.round((world.x - 320) / 100) * 100,j * 125 - Math.round((world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),world,powerups,powerupColor);
								}
								else if (Math.random() > 0.85 - coinFreq / 25)
								{
									createCoin(i * 125 - Math.round((world.x - 320) / 100) * 100,j * 125 - Math.round((world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),world,coins,coinColor);
								}
							}
						}
					}
				}
			}
			function patternD():void
			{
				if (timer / 8 is int)
				{
					if (timer - rotations * 1050 <= 40)
					{
						permXPos = Math.round((world.x - 320) / 100) * 100;
						permYPos = Math.round((world.y - 350) / 100) * 100;
					}
					for (i = 0; i < 4; i++)
					{
						for (j = 0; j < 4; j++)
						{
							if ((i < 1 || (j < 1 || j > 2)) && (i > 2 || (j < 1 || j > 2)) || (j < 1 || (i < 1 || i > 2)) && (j > 2 || (i < 1 || i > 2)))
							{
								createCube(i * 120 - 180 - permXPos,j * 120 - 180 - permYPos,world.z + worldVelocity * 2 * timer + 750,100000,world,cubes,selectColor(currentRacerLevel));
							}
						}
					}
				}
				if (timer / 32 is int)
				{
					if (Math.random() > 0.75)
					{
						createCube(-permXPos,-permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),100,world,cubes,selectColor(currentRacerLevel));
					}
					else if (Math.random() > 0.65)
					{
						if (Math.random() > 0.5)
						{
							createCube(60 - permXPos,-permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),100,world,cubes,selectColor(currentRacerLevel));
							createCube(-60 - permXPos,-permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),100,world,cubes,selectColor(currentRacerLevel));
						}
						else
						{
							createCube(-permXPos,60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),100,world,cubes,selectColor(currentRacerLevel));
							createCube(-permXPos,-60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),100,world,cubes,selectColor(currentRacerLevel));
						}
					}
					else if (Math.random() > 0.5)
					{
						createCube(Math.pow(-1,Math.round(Math.random() * 2)) * 60 - permXPos,60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),100,world,cubes,selectColor(currentRacerLevel));
						createCube(Math.pow(-1,Math.round(Math.random() * 2)) * 60 - permXPos,-60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),100,world,cubes,selectColor(currentRacerLevel));
					}
					else if (Math.random() > 0.5)
					{
						var randomMissingIndex:int = Math.round(Math.random() * 3);
						if (randomMissingIndex != 0)
						{
							createCube(60 - permXPos,60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),100,world,cubes,selectColor(currentRacerLevel));
						}
						if (randomMissingIndex != 1)
						{
							createCube(60 - permXPos,-60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),100,world,cubes,selectColor(currentRacerLevel));
						}
						if (randomMissingIndex != 2)
						{
							createCube(-60 - permXPos,60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),100,world,cubes,selectColor(currentRacerLevel));
						}
						if (randomMissingIndex != 3)
						{
							createCube(-60 - permXPos,-60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),100,world,cubes,selectColor(currentRacerLevel));
						}
						if (Math.random() > 0.3 - coinFreq / 25)
						{
							if (randomMissingIndex == 0)
							{
								createCoin(60 - permXPos,60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,coins,coinColor);
							}
							if (randomMissingIndex == 1)
							{
								createCoin(60 - permXPos,-60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,coins,coinColor);
							}
							if (randomMissingIndex == 2)
							{
								createCoin(-60 - permXPos,60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,coins,coinColor);
							}
							if (randomMissingIndex == 3)
							{
								createCoin(-60 - permXPos,-60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,coins,coinColor);
							}
						}
						else if (Math.random() > 0.3 - powerupFreq / 100)
						{
							if (randomMissingIndex == 0)
							{
								createPowerup(60 - permXPos,60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,powerups,powerupColor);
							}
							if (randomMissingIndex == 1)
							{
								createPowerup(60 - permXPos,-60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,powerups,powerupColor);
							}
							if (randomMissingIndex == 2)
							{
								createPowerup(-60 - permXPos,60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,powerups,powerupColor);
							}
							if (randomMissingIndex == 3)
							{
								createPowerup(-60 - permXPos,-60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,powerups,powerupColor);
							}
						}
					}
					else if (Math.random() > 0.4 - coinFreq / 50)
					{
						createCoin(Math.pow(-1,Math.round(Math.random() * 2)) * 60 - permXPos,Math.pow(-1,Math.round(Math.random() * 2)) * 60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,coins,coinColor);
					}
					else if (Math.random() > 0.2 - powerupFreq / 200)
					{
						createPowerup(Math.pow(-1,Math.round(Math.random() * 2)) * 60 - permXPos,Math.pow(-1,Math.round(Math.random() * 2)) * 60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,powerups,powerupColor);
					}
					else if (Math.random() > 0.2 + coinFreq / 50)
					{
						createCoin(60 - permXPos,Math.pow(-1,Math.round(Math.random() * 2)) * 60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,coins,coinColor);
						createCoin(-60 - permXPos,Math.pow(-1,Math.round(Math.random() * 2)) * 60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,coins,coinColor);
					}
					else
					{
						createCoin(60 - permXPos,60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,coins,coinColor);
						createCoin(-60 - permXPos,60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,coins,coinColor);
						createCoin(60 - permXPos,-60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,coins,coinColor);
						createCoin(-60 - permXPos,-60 - permYPos,world.z + worldVelocity * 2 * timer + 30 * (worldVelocity + 5),world,coins,coinColor);
					}
				}
			}
			function patternE():void
			{
				if (timer / 2 is int)
				{
					var randomIndexI:int = Math.round(Math.random() * 8 - 4);
					var randomIndexJ:int = Math.round(Math.random() * 8 - 4);
					if (Math.random() > 0.4)
					{
						for (i = 0; i <= 1; i++)
						{
							for (j = 0; j <= 1; j++)
							{
								for (k = 0; k <= 1; k++)
								{
									createCube(Math.round(randomIndexI + i - 0.5 - (world.x - 320) / 100) * 100,Math.round(randomIndexJ + j - 0.5 - (world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10) + (k - 0.5) * 100,150,world,cubes,selectColor(currentRacerLevel))
								}
							}
						}
					}
					else if (Math.random() > 0.2)
					{
						createCube(Math.round(randomIndexI - (world.x - 320) / 100) * 100,Math.round(randomIndexJ - (world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),150,world,cubes,selectColor(currentRacerLevel))
					}
					else if (Math.random() > 0.5 - coinFreq / 20)
					{
						createCoin(Math.round(randomIndexI - (world.x - 320) / 100) * 100,Math.round(randomIndexJ - (world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),world,coins,coinColor)
					}
					else if (Math.random() > 0.6 - powerupFreq / 20)
					{
						createPowerup(Math.round(randomIndexI - (world.x - 320) / 100) * 100,Math.round(randomIndexJ - (world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10),world,powerups,powerupColor)
					}
					else
					{
						for (i = 0; i <= 1; i++)
						{
							for (j = 0; j <= 1; j++)
							{
								for (k = 0; k <= 1; k++)
								{
									createCoin(Math.round(randomIndexI + i - 0.5 - (world.x - 320) / 100) * 100,Math.round(randomIndexJ + j - 0.5 - (world.y - 350) / 100) * 100,world.z + worldVelocity * 2 * timer + 20 * (worldVelocity + 10) + (k - 0.5) * 100,world,coins,coinColor)
								}
							}
						}
					}
				}
			}
			function patternF():void
			{
				if (timer / 60 is int)
				{
					var randomIndex:int = Math.round(Math.random() * 10 - 0.5);
					while (randomIndex == possiblePatterns.lastIndexOf(localPattern) || randomIndex >= possiblePatterns.length || randomIndex == possiblePatterns.lastIndexOf(patternF))
					{
						randomIndex = Math.round(Math.random() * 10 - 0.5);
					}
					localPattern = possiblePatterns[randomIndex]
				}
				localPattern()
			}
			function rotateExtras():void
			{
				var coinObject:Object = coinIcon as Object;
				coinObject.rotationY +=  5;
				if (coinObject.rotationY < -90 || coinObject.rotationY > 90)
				{
					coinObject.setChildIndex(coinObject.front,0);
					coinObject.setChildIndex(coinObject.back,2);
				}
				else if (coinObject.rotationY > -90 && coinObject.rotationY < 90)
				{
					coinObject.setChildIndex(coinObject.back,0);
					coinObject.setChildIndex(coinObject.front,2);
				}
				for (i = 0; i < coins.length; i++)
				{
					coins[i].rotationY +=  5;
					if (coins[i].rotationY < -90 || coins[i].rotationY > 90)
					{
						coins[i].setChildIndex(coins[i].front,0);
						coins[i].setChildIndex(coins[i].back,2);
					}
					else if (coins[i].rotationY > -90 && coins[i].rotationY < 90)
					{
						coins[i].setChildIndex(coins[i].back,0);
						coins[i].setChildIndex(coins[i].front,2);
					}
				}
				for (i = 0; i < powerups.length; i++)
				{
					powerups[i].innerLeftPanel.rotationY +=  5;
					powerups[i].innerRightPanel.rotationY +=  5;
					powerups[i].outerLeftPanel.rotationY -=  5;
					powerups[i].outerRightPanel.rotationY -=  5;
					if (powerups[i].innerRightPanel.rotationY < -90 || powerups[i].innerRightPanel.rotationY > 90)
					{
						powerups[i].setChildIndex(powerups[i].outerLeftPanel,0);
						powerups[i].setChildIndex(powerups[i].innerLeftPanel,1);
						powerups[i].setChildIndex(powerups[i].innerRightPanel,3);
						powerups[i].setChildIndex(powerups[i].outerRightPanel,4);
					}
					else if (powerups[i].innerRightPanel.rotationY > -90 && powerups[i].innerRightPanel.rotationY < 90)
					{
						powerups[i].setChildIndex(powerups[i].outerRightPanel,0);
						powerups[i].setChildIndex(powerups[i].innerRightPanel,1);
						powerups[i].setChildIndex(powerups[i].innerLeftPanel,3);
						powerups[i].setChildIndex(powerups[i].outerLeftPanel,4);
					}
				}
			}
			function takeCoin():void
			{
				for (k = 0; k < 6; k++)
				{
					var particleVelocity:Number = 30 + Math.random() * 20;
					newParticle = new Sprite();
					newParticle.graphics.beginFill(coinColor + (0xFFFFFF - coinColor) * Math.pow(-1,Math.round(Math.random())));
					newParticle.graphics.drawCircle(0,0,3);
					newParticle.graphics.endFill();
					newParticle.x = Math.random() * 30 - 15 + 320;
					newParticle.y = Math.random() * 30 - 15 + 350;
					newParticle.z = particleVelocity;
					newParticle.rotationX = Math.atan2(newParticle.z,newParticle.y - 350) * 180 / Math.PI + 90;
					newParticle.rotationY = Math.atan2(newParticle.z,newParticle.x - 320) * 180 / Math.PI + 90;
					particles.push(newParticle);
					particleAges.push(0);
					particleVelocities.push(particleVelocity);
					particleContainer.addChild(newParticle);
				}
				exp +=  75;
				This.totalCoins++;
			}
			function handleParticles():void
			{
				for (i = 0; i < particles.length; i++)
				{
					particleAges[i]++;
					particles[i].z +=   -  particleVelocities[i] - particles[i].z / (40 - particleAges[i]);
					particles[i].x += particleVelocities[i] * Math.cos(particles[i].rotationY) + (coinIcon.x - particles[i].x) / (40 - particleAges[i]);
					particles[i].y += particleVelocities[i] * Math.sin(particles[i].rotationX) + (coinIcon.y - particles[i].y) / (40 - particleAges[i]);
					for (j = 0; j < particleContainer.numChildren; j++)
					{
						if (particles[i].z < particleContainer.getChildAt(j).z && particleContainer.getChildIndex(particles[i]) < particleContainer.getChildIndex(particleContainer.getChildAt(j)))
						{
							particleContainer.swapChildren(particles[i],particleContainer.getChildAt(j));
						}
					}
					if (particleAges[i] < 20)
					{
						particles[i].alpha /=  1.1;
					}
					else if (particleAges[i] >= 20)
					{
						particles[i].alpha *=  1.1;
					}
					if (particles[i].hitTestObject(coinIcon) || particleAges[i] >= 40)
					{
						particleContainer.removeChild(particles[i]);
						particles.splice(i,1);
						particleVelocities.splice(i,1);
						particleAges.splice(i,1);
					}
					particleVelocities[i] = 3.5 * Math.sqrt(particleVelocities[i]);
				}
			}
			function assessWorldItems():void
			{
				racerInstance = racer as Object;
				var cubeInstance:Object;
				for (i = 0; i < textFields.length; i++)
				{
					if (textFields[i].alpha < 1 && world.z + textFields[i].z > -200)
					{
						textFields[i].alpha +=  0.2;
					}
					if (world.z + textFields[i].z < -200)
					{
						textFields[i].alpha -=  0.2;
					}
					if (textFields[i].alpha <= 0)
					{
						world.removeChild(textFields[i]);
						textFields.splice(textFields.lastIndexOf(textFields[i]),1);
						i--;
					}
				}
				for (i = 0; i < bullets.length; i++)
				{
					for (j = 0; j < world.numChildren; j++)
					{
						if (world.getChildAt(j) is Cube)
						{
							if (bullets[i].hitTestObject(world.getChildAt(j)) && (bullets[i].z < world.getChildAt(j).z + 50 || bullets[i].z > world.getChildAt(j).z - 50))
							{
								cubeInstance = world.getChildAt(j) as Object;
								if (cubeInstance.health > 0)
								{
									cubeInstance.health -= 20 +  powerupLevel * (Math.random() * 5 + 10) * 1.5;
									cubeInstance.front.graphics.lineStyle(3,0x000000,1);
									startingXPosition = (Math.round(Math.random()) * 2 - 1) * 50;
									startingYPosition = (Math.round(Math.random()) * 2 - 1) * 50;
									if (Math.random() > 0.5)
									{
										startingXPosition = Math.random() * 100 - 50;
									}
									else
									{
										startingYPosition = Math.random() * 100 - 50;
									}
									cubeInstance.front.graphics.moveTo(startingXPosition,startingYPosition);
									cubeInstance.front.graphics.lineTo(startingXPosition * (Math.random() / 8 + 0.875),startingYPosition * (Math.random() / 8 + 0.875));
									cubeInstance.front.graphics.lineTo(startingXPosition * (Math.random() / 6 + 0.833),startingYPosition * (Math.random() / 6 + 0.833));
									cubeInstance.front.graphics.lineTo(startingXPosition * (Math.random() / 4 + 0.75),startingYPosition * (Math.random() / 4 + 0.75));
									cubeInstance.front.graphics.lineTo(startingXPosition * (Math.random() / 3 + 0.666),startingYPosition * (Math.random() / 3 + 0.666));
									cubeInstance.front.graphics.lineTo(startingXPosition * (Math.random() / 2 + 0.5),startingYPosition * (Math.random() / 2 + 0.5));
									bullets[i].x -=  3000;
								}
							}
						}
						else if (world.getChildAt(j) is Coin)
						{
							if (bullets[i].hitTestObject(world.getChildAt(j)) && (bullets[i].z < world.getChildAt(j).z + 20 || bullets[i].z > world.getChildAt(j).z - 20))
							{
								takeCoin();
								coins.splice(coins.lastIndexOf(world.getChildAt(j)),1)
								world.removeChildAt(j)
								j--
								bullets[i].x -=  5000;
							}
						}
					}
					var recoil:Number = Math.random() * Math.PI / 72 - Math.PI / 144;
					bullets[i].x +=  150 * Math.sin(Math.PI / 18 + recoil) * Math.sin(bullets[i].rotationZ * Math.PI / 180);
					bullets[i].y +=  -150 * Math.sin(Math.PI / 18 + recoil) * Math.cos(bullets[i].rotationZ * Math.PI / 180);
					bullets[i].z += worldVelocity + 200 * Math.cos((bullets[i].rotationX - 90) * Math.PI / 180);
					if (bullets[i].z + world.z > 3000)
					{
						world.removeChild(bullets[i]);
						bullets.splice(i,1);
						i--;
					}
				}
				for (i = 0; i < rockets.length; i++)
				{
					rockets[i].z +=  worldVelocity;
					if (rockets[i].z + world.z > 2000)
					{
						world.removeChild(rockets[i]);
						rockets.splice(i,1);
						rocketTargets.splice(i,1);
						i--;
					}
					if (!(rocketTargets[i] is Sprite) && rockets[i] is Sprite)
					{
						min = 100000000000000000;
						var candidates:Array = [];
						var candidateValues:Array = [];
						for (j = 0; j < world.numChildren; j++)
						{
							var modifiedDistance:Number;
							if (world.getChildAt(j) is Cube || world.getChildAt(j) is Coin)
							{
								candidateValues.push(Math.sqrt(Math.pow(Math.sin(Math.PI + Math.atan2(rockets[i].y - world.getChildAt(j).y,rockets[i].z - world.getChildAt(j).z)),2) + Math.pow(Math.sin(Math.PI + Math.atan2(rockets[i].x - world.getChildAt(j).x,rockets[i].z - world.getChildAt(j).z)),2)));
								candidates.push(world.getChildAt(j));
							}
						}
						for (j = 0; j < candidateValues.length; j++)
						{
							if (candidateValues[j] < min)
							{
								rocketTargets[i] = candidates[j];
								min = candidateValues[j];
							}
						}
						rockets[i].rotationX = 0;
						rockets[i].rotationY = 0;
						rockets[i].rotationZ +=  4;
						rockets[i].x +=  (15 + powerupLevel / 2) * Math.sin(rockets[i].rotationY);
						rockets[i].y +=  (15 + powerupLevel / 2) * Math.sin(rockets[i].rotationX);
						rockets[i].z += Math.abs((15 + powerupLevel / 2) * Math.cos(rockets[i].rotationY) * Math.cos(rockets[i].rotationX));
					}
					else if (rockets[i] is Sprite && rocketTargets[i] is Sprite)
					{
						rockets[i].rotationX = Math.atan2(rocketTargets[i].y - rockets[i].y,rocketTargets[i].z - rockets[i].z) * 180 / Math.PI;
						rockets[i].rotationY =  -  Math.atan2(rocketTargets[i].x - rockets[i].x,rocketTargets[i].z - rockets[i].z) * 180 / Math.PI;
						rockets[i].rotationZ +=  4;
						rockets[i].x +=  (15 + powerupLevel / 2) * Math.sin(rockets[i].rotationY);
						rockets[i].y +=  (15 + powerupLevel / 2) * Math.sin(rockets[i].rotationX);
						rockets[i].z += Math.abs((15 + powerupLevel / 2) * Math.cos(rockets[i].rotationY) * Math.cos(rockets[i].rotationX));
						for (j = 0; j < world.numChildren; j++)
						{
							if (world.getChildAt(j) is Coin || world.getChildAt(j) is Cube)
							{
								if (rockets[i].hitTestObject(world.getChildAt(j)) && rockets[i].z + 40 > world.getChildAt(j).z && rockets[i].z - 40 < world.getChildAt(j).z)
								{
									for (k = 0; k < world.numChildren; k++)
									{
										if (Math.sqrt(Math.pow(rockets[i].x - world.getChildAt(k).x,2) + Math.pow(rockets[i].y - world.getChildAt(k).y,2) + Math.pow(rockets[i].z - world.getChildAt(k).z,2)) < 700)
										{
											if (world.getChildAt(k) is Cube)
											{
												cubeInstance = world.getChildAt(k) as Object;
												if (cubeInstance.health > 0)
												{
													cubeInstance.health -= (Math.random() / 8 + Math.sqrt(powerupLevel + 1) + 1) * 8500 / Math.sqrt(2 * Math.pow(rockets[i].x - world.getChildAt(k).x,2) + 2 * Math.pow(rockets[i].y - world.getChildAt(k).y,2) + Math.pow(rockets[i].z - world.getChildAt(k).z,2) / 4 + 1000);
													cubeInstance.front.graphics.lineStyle(3,0x000000,1);
													startingXPosition = (Math.round(Math.random()) * 2 - 1) * 50;
													startingYPosition = (Math.round(Math.random()) * 2 - 1) * 50;
													if (Math.random() > 0.5)
													{
														startingXPosition = Math.random() * 100 - 50;
													}
													else
													{
														startingYPosition = Math.random() * 100 - 50;
													}
													cubeInstance.front.graphics.moveTo(startingXPosition,startingYPosition);
													cubeInstance.front.graphics.lineTo(startingXPosition * (Math.random() / 8 + 0.875),startingYPosition * (Math.random() / 8 + 0.875));
													cubeInstance.front.graphics.lineTo(startingXPosition * (Math.random() / 6 + 0.833),startingYPosition * (Math.random() / 6 + 0.833));
													cubeInstance.front.graphics.lineTo(startingXPosition * (Math.random() / 4 + 0.75),startingYPosition * (Math.random() / 4 + 0.75));
													cubeInstance.front.graphics.lineTo(startingXPosition * (Math.random() / 3 + 0.666),startingYPosition * (Math.random() / 3 + 0.666));
													cubeInstance.front.graphics.lineTo(startingXPosition * (Math.random() / 2 + 0.5),startingYPosition * (Math.random() / 2 + 0.5));
												}
											}
											else if (world.getChildAt(k) is Coin)
											{
												world.getChildAt(k).y -=  5000;
												takeCoin();
											}
										}
									}
									world.removeChild(rockets[i]);
									rockets.splice(i,1);
									rocketTargets.splice(i,1);
									break;
								}
							}
						}
					}
				}
				for (i = 0; i < powerups.length; i++)
				{
					var powerupInstance:Object = (powerups[i] as Object);
					if ((powerupInstance.hitTestObject(racerInstance.registrationBoxFront) && powerupInstance.z + world.z < 30 + racerInstance.registrationBoxFront.z)||(powerupInstance.hitTestObject(racerInstance.registrationBoxFront) && powerupInstance.z + world.z < 30))
					{
						takePowerup();
						powerupInstance.z = -200;
					}
					if (world.z + powerupInstance.z < -300)
					{
						world.removeChild(powerupInstance as Sprite);
						powerups.splice(powerups.lastIndexOf(powerupInstance),1);
						powerupInstance = null;
						i--;
					}
				}
				for (i = 0; i < coins.length; i++)
				{
					var coinInstance:Object = (coins[i] as Object);
					if ((coinInstance.hitTestObject(racerInstance.registrationBoxFront) && coinInstance.z + world.z < 30 + racerInstance.registrationBoxFront.z)||(coinInstance.hitTestObject(racerInstance.registrationBoxFront) && coinInstance.z + world.z < 30))
					{
						takeCoin();
						coinInstance.z = -200;
					}
					if (world.z + coinInstance.z < -300)
					{
						world.removeChild(coinInstance as Sprite);
						coins.splice(coins.lastIndexOf(coinInstance),1);
						cubeInstance = null;
						i--;
					}
				}
				for (i = 0; i < cubes.length; i++)
				{
					cubeInstance = (cubes[i] as Object);
					if (cubeInstance.alpha < 1 && world.z + cubeInstance.z > -200)
					{
						cubeInstance.alpha +=  1;
					}
					if (cubeInstance.health <= 0 && i != 0)
					{
						exp +=  75;
						killedCubes++;
						deadCubes++;
						world.removeChild(cubeInstance as Sprite)
						cubeInstance.die(cubeInstance,world,sides,sideOwners);
						cubes.splice(cubes.lastIndexOf(cubeInstance),1);
						i--
					}
					if ((cubeInstance.hitTestObject(racerInstance.registrationBoxFront) && cubeInstance.z + world.z > -50 + racerInstance.registrationBoxFront.z && cubeInstance.z + world.z < 50 + racerInstance.registrationBoxFront.z)||(cubeInstance.hitTestObject(racerInstance.registrationBoxFront) && cubeInstance.z + world.z > -50 && cubeInstance.z + world.z < 50))
					{
						die(cubeInstance);
						break;
					}
					if (world.z + cubeInstance.z < -200)
					{
						cubeInstance.alpha -=  1;
					}
					if (cubeInstance.alpha <= 0 && world.contains(cubeInstance as Sprite))
					{
						world.removeChild(cubeInstance as Sprite);
						cubes.splice(cubes.lastIndexOf(cubeInstance),1);
						cubeInstance = null;
						i--;
					}
					else if (world.contains(cubeInstance as Sprite))
					{
						if (cubeInstance.x >  -  world.x + 320)
						{
							cubeInstance.side.x = -50;
						}
						else if (cubeInstance.x < -world.x + 320)
						{
							cubeInstance.side.x = 50;
						}
						if (cubeInstance.x > -world.x - (cubeInstance.width / 2) + 320 && cubeInstance.x < -world.x + (cubeInstance.width / 2) + 320 && cubeInstance.contains(cubeInstance.side))
						{
							cubeInstance.removeChild(cubeInstance.side);
						}
						else if ((cubeInstance.x < -world.x - (cubeInstance.width / 2) + 320 || cubeInstance.x > -world.x + (cubeInstance.width / 2) + 320) && !cubeInstance.contains(cubeInstance.side))
						{
							cubeInstance.addChild(cubeInstance.side);
						}
						if (cubeInstance.y >  -  world.y + 350)
						{
							cubeInstance.cap.y = -50;
						}
						else if (cubeInstance.y < -world.y + 350)
						{
							cubeInstance.cap.y = 50;
						}
						if (cubeInstance.y > -world.y - (cubeInstance.height / 2) + 350 && cubeInstance.y < -world.y + (cubeInstance.height / 2) + 350 && cubeInstance.contains(cubeInstance.cap))
						{
							cubeInstance.removeChild(cubeInstance.cap);
						}
						else if ((cubeInstance.y < -world.y - (cubeInstance.height / 2) + 350 || cubeInstance.y > -world.y + (cubeInstance.height / 2) + 350) && !cubeInstance.contains(cubeInstance.cap))
						{
							cubeInstance.addChild(cubeInstance.cap);
						}
						if (Math.abs(cubeInstance.y - world.y) > Math.abs(cubeInstance.x - world.x))
						{
							cubeInstance.setChildIndex(cubeInstance.front,cubeInstance.numChildren - 1);
							if (cubeInstance.contains(cubeInstance.side))
							{
								cubeInstance.setChildIndex(cubeInstance.side,1);
							}
							if (cubeInstance.contains(cubeInstance.cap))
							{
								cubeInstance.setChildIndex(cubeInstance.cap,0);
							}
						}
						else if (Math.abs(cubeInstance.y - world.y) < Math.abs(cubeInstance.x - world.x))
						{
							cubeInstance.setChildIndex(cubeInstance.front,cubeInstance.numChildren - 1);
							if (cubeInstance.contains(cubeInstance.cap))
							{
								cubeInstance.setChildIndex(cubeInstance.cap,1);
							}
							if (cubeInstance.contains(cubeInstance.side))
							{
								cubeInstance.setChildIndex(cubeInstance.side,0);
							}
						}
					}
				}
				for (i = 0; i < sides.length; i++)
				{
					if (sides[i].alpha > 0)
					{
						sides[i].alpha -= 0.07
						sides[i].x = (-sideOwners[i].ownr.x + sides[i].x) * 1.1 + sideOwners[i].ownr.x
						sides[i].y = (-sideOwners[i].ownr.y + sides[i].y) * 1.1 + sideOwners[i].ownr.y
						sides[i].z = (-sideOwners[i].ownr.z + sides[i].z) * 1.1 + sideOwners[i].ownr.z
						sides[i].rotationX += Math.acos((sideOwners[i].detPointX - sides[i].x) / Math.sqrt(Math.pow(sideOwners[i].detPointX - sides[i].x,2) + Math.pow(sideOwners[i].detPointY - sides[i].y,2) + Math.pow(sideOwners[i].detPointZ - sides[i].z,2)))
						sides[i].rotationY += Math.acos((sideOwners[i].detPointY - sides[i].y) / Math.sqrt(Math.pow(sideOwners[i].detPointX - sides[i].x,2) + Math.pow(sideOwners[i].detPointY - sides[i].y,2) + Math.pow(sideOwners[i].detPointZ - sides[i].z,2)))
					}
					else
					{
						if (world.contains(sides[i]))
						{
							world.removeChild(sides[i])
						}
						sides.splice(i,1)
						sideOwners.splice(i,1)
					}
				}
				for (i = 0; i < world.numChildren; i++)
				{
					for (j = 0; j < world.numChildren; j++)
					{
						if ((world.getChildAt(i).z < world.getChildAt(j).z && i < j) || (world.getChildAt(i).z == world.getChildAt(j).z && Math.sqrt(Math.pow(world.getChildAt(i).x + world.x - 320,2) + Math.pow(world.getChildAt(i).y + world.y - 350,2)) < Math.sqrt(Math.pow(world.getChildAt(j).x + world.x - 320,2) + Math.pow(world.getChildAt(j).y + world.y - 350,2)) && i < j))
						{
							world.swapChildren(world.getChildAt(i),world.getChildAt(j));
						}
					}
				}
			}
			function racerTrails():void
			{
				racerRightTail.x = 200 / 2 * Math.cos((racer.rotationZ + 20) * Math.PI / 180);
				racerRightTail.y = 200 / 2 * Math.sin((racer.rotationZ + 20) * Math.PI / 180);
				racerLeftTail.x = -200 / 2 * Math.cos((racer.rotationZ - 20) * Math.PI / 180);
				racerLeftTail.y = -200 / 2 * Math.sin((racer.rotationZ - 20) * Math.PI / 180)
				var smoke1:Sprite = new Sprite();
				var smoke2:Sprite = new Sprite();
				smoke1.graphics.beginFill(smokeColor,0.8);
				smoke1.graphics.drawCircle(0,0,8);
				smoke1.graphics.endFill();
				smoke2.graphics.beginFill(smokeColor,0.8);
				smoke2.graphics.drawCircle(0,0,8);
				smoke2.graphics.endFill();
				smokeContainer.addChild(smoke1);
				smokeContainer.addChild(smoke2);
				smoke1.x = racerRightTail.x * 0.75;
				smoke1.y = racerRightTail.y * 0.75;
				smoke2.x = racerLeftTail.x * 0.75;
				smoke2.y = racerLeftTail.y * 0.75;
				smoke1.z = smokeContainer.z + worldVelocity * 2 * timer;
				smoke2.z = smokeContainer.z + worldVelocity * 2 * timer;
				for (i = 0; i < smokeContainer.numChildren; i++)
				{
					if (smokeContainer.getChildAt(i).z + smokeContainer.z < -500)
					{
						smokeContainer.removeChild(smokeContainer.getChildAt(i));
					}
				}
				for (i = 0; i < rockets.length; i++)
				{
					smoke1 = new Sprite();
					smoke1.graphics.beginFill((racer as Object).powerupColor,0.8);
					smoke1.graphics.drawCircle(0,0,8);
					smoke1.graphics.endFill();
					smokeContainer.addChild(smoke1);
					smoke1.x = rockets[i].x + world.x - 320;
					smoke1.y = rockets[i].y + world.y - 350;
					smoke1.z = rockets[i].z;
				}
			}
			function takePowerup():void
			{
				if (! powerup)
				{
					if (tutorial)
					{
						powerup = true;
						racerSensor.addEventListener(MouseEvent.MOUSE_DOWN,finishSecondCheck);
					}
					else
					{
						if (powerupType == "Rockets")
						{
							numRockets = 6;
							racerInstance = racer as Object;
							racerInstance.drawRockets();
						}
						powerup = true;
						racerSensor.addEventListener(MouseEvent.MOUSE_DOWN,usePowerup);
						if (powerupType == "Shield")
						{
							racerSensor.removeEventListener(MouseEvent.MOUSE_DOWN,usePowerup);
							shielding = true
							shielded = true;
						}
					}
				}
			}
			function usePowerup(e:MouseEvent):void
			{
				racerSensor.removeEventListener(MouseEvent.MOUSE_DOWN,usePowerup);
				if (powerupType == "Bullets")
				{
					shootingBullets = true
				}
				else if (powerupType == "Rockets")
				{
					racerSensor.addEventListener(MouseEvent.MOUSE_DOWN,usePowerup);
					shootRocket();
				}
				else if (powerupType == "Teleport")
				{
					teleporting = true
				}
			}
			function powerupAnimation():void
			{
				if (powerup)
				{
					powerupTimer++;
					var powerupFilter:GlowFilter = new GlowFilter(0x000066 + (0xFFFFFF - 0x000066) * (powerupTimer % 20) / 20,1,100 / Math.pow(powerupTimer,2) + 7,100 / Math.pow(powerupTimer,2) + 7);
					racer.filters = [powerupFilter];
				}
				else
				{
					racer.filters = [];
					powerupTimer = 0;
				}
			}
			function shootBullets():void
			{
				if (shootingBullets)
				{
					bulletTimer++;
					racerInstance = racer as Object;
					racerInstance.rightBarrelFlash.alpha -=  0.3;
					racerInstance.leftBarrelFlash.alpha -=  0.3;
					if (bulletTimer < 250 + powerupLevel * 30)
					{
						if (bulletTimer / 2 is int)
						{
							var newBullet:Sprite = new Sprite();
							newBullet.graphics.lineStyle(2,(racer as Object).powerupColor * 3 / 4);
							newBullet.graphics.lineTo(0,200);
							if (bulletTimer / 4 is int)
							{
								newBullet.x = 40 * Math.cos(racer.rotationZ * Math.PI / 180) - world.x + 320;
								newBullet.y = 40 * Math.sin(racer.rotationZ * Math.PI / 180) - world.y + 350;
								newBullet.z = 60 + world.z + worldVelocity * 2 * timer;
								newBullet.rotationX = 100;
								newBullet.rotationZ = racer.rotationZ;
								racerInstance.rightBarrelFlash.alpha = 1;
							}
							else if ((bulletTimer + 2) / 4 is int)
							{
								newBullet.x = -40 * Math.cos(racer.rotationZ * Math.PI / 180) - world.x + 320;
								newBullet.y = -40 * Math.sin(racer.rotationZ * Math.PI / 180) - world.y + 350;
								newBullet.z = 60 + world.z + worldVelocity * 2 * timer;
								newBullet.rotationX = 100;
								newBullet.rotationZ = racer.rotationZ;
								racerInstance.leftBarrelFlash.alpha = 1;
							}
							bullets.push(newBullet);
							world.addChild(newBullet);
						}
					}
					else
					{
						racerInstance.rightBarrelFlash.alpha = 0;
						racerInstance.leftBarrelFlash.alpha = 0;
						bulletTimer = 0;
						shootingBullets = false
						powerup = false;
					}
				}
			}
			function shootRocket():void
			{
				var newRocket:Sprite = racer["rocket" + numRockets];
				racer.removeChild(newRocket);
				world.addChild(newRocket);
				newRocket.x =  -  world.x + 320;
				newRocket.y =  -  world.y + 350;
				newRocket.z =  -  world.z;
				if (numRockets / 2 is int)
				{
					newRocket.x -= 37 * Math.cos((racer.rotationZ - 20) * Math.PI / 180);
					newRocket.y -= 37 * Math.sin((racer.rotationZ - 20) * Math.PI / 180);
				}
				else
				{
					newRocket.x -= 37 * Math.cos((racer.rotationZ + 200) * Math.PI / 180);
					newRocket.y -= 37 * Math.sin((racer.rotationZ + 200) * Math.PI / 180);
				}
				rockets.push(newRocket);
				rocketTargets.push(null);
				numRockets--;
				if (numRockets == 0)
				{
					racerSensor.removeEventListener(MouseEvent.MOUSE_DOWN,usePowerup);
					powerup = false;
				}
			}
			function teleport():void
			{
				if (teleporting)
				{
					racerInstance = racer as Object;
					if (teleportTimer < 25)
					{
						if (teleportTimer < 20)
						{
							teleportSphereFront.width += 150 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 5,2));
							teleportSphereFront.height += 150 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 5,2));
							teleportSphereBack.width += 150 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 5,2));
							teleportSphereBack.height += 150 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 5,2));
							racerInstance.leftTopFlap.rotationX -= 15 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 5,2));
							racerInstance.rightTopFlap.rotationX -= 15 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 5,2));
							racerInstance.leftBottomFlap.rotationX += 15 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 5,2));
							racerInstance.rightBottomFlap.rotationX += 15 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 5,2));
						}
					}
					else if (teleportTimer == 25)
					{
						world.z -= (100 * powerupLevel + 100) * worldVelocity;
						for (i = 0; i < 100 + 100 * powerupLevel; i++)
						{
							timer++;
							if (timer == (rotations + 1) * 1050 + 20)
							{
								rotations++;
							}
							if (timer == rotations * 1050 + 20)
							{
								selectPattern();
							}
							if (currentPattern != patternD)
							{
								world.x -= -100 * Math.sin(racer.rotationX * Math.PI / 180) * Math.sin(racer.rotationZ * Math.PI / 180);
								world.y -= 100 * Math.sin(racer.rotationX * Math.PI / 180) * Math.cos(racer.rotationZ * Math.PI / 180);
							}
						}
						permXPos = Math.round((world.x - 320) / 100) * 100;
						permYPos = Math.round((world.y - 350) / 100) * 100;
						exp += Math.round((Math.sqrt(worldVelocity) * 100 * powerupLevel + 100) / 4);
						distanceTraveled += (100 * powerupLevel + 100) * worldVelocity;
						teleportSphereFront.width = 150;
						teleportSphereFront.height = 150;
						teleportSphereBack.width = 150;
						teleportSphereBack.height = 150;
						racerInstance.leftTopFlap.rotationX = 70;
						racerInstance.rightTopFlap.rotationX = 70;
						racerInstance.leftBottomFlap.rotationX = 100;
						racerInstance.rightBottomFlap.rotationX = 100;
					}
					else if (teleportTimer > 25 && teleportTimer < 50)
					{
						if (teleportTimer >= 30)
						{
							teleportSphereFront.width -= 150 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 20,2));
							teleportSphereFront.height -= 150 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 20,2));
							teleportSphereBack.width -= 150 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 20,2));
							teleportSphereBack.height -= 150 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 20,2));
							racerInstance.leftTopFlap.rotationX += 15 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 20,2));
							racerInstance.rightTopFlap.rotationX += 15 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 20,2));
							racerInstance.leftBottomFlap.rotationX -= 15 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 20,2));
							racerInstance.rightBottomFlap.rotationX -= 15 / 832.5 * (50 - Math.pow(teleportTimer / 2 - 20,2));
						}
					}
					else if (teleportTimer == 50)
					{
						teleporting = false
						teleportTimer = 0;
						powerup = false;
						teleportSphereFront.width = 0;
						teleportSphereFront.height = 0;
						teleportSphereBack.width = 0;
						teleportSphereBack.height = 0;
						racerInstance.leftTopFlap.rotationX = 85;
						racerInstance.rightTopFlap.rotationX = 85;
						racerInstance.leftBottomFlap.rotationX = 85;
						racerInstance.rightBottomFlap.rotationX = 85;
					}
					teleportTimer++;
				}
			}
			function shield():void
			{
				if (shielding)
				{
					racerInstance = racer as Object;
					shieldTimer++;
					if (shielded && shieldTimer > powerupLevel + 3 && Math.random() > 0.5 + powerupLevel / 10)
					{
						shielded = false;
						shieldTimer = 0;
					}
					else if (!shielded && shieldTimer > 5 - powerupLevel)
					{
						if (Math.random() > 0.5 - powerupLevel / 10)
						{
							shielded = true;
							shieldTimer = 0;
						}
					}
					if (shielded)
					{
						teleportSphereFront.width = 160 - 7 * powerupLevel;
						teleportSphereFront.height = 160 - 7 * powerupLevel;
						teleportSphereBack.width = 160 - 7 * powerupLevel;
						teleportSphereBack.height = 160 - 7 * powerupLevel;
						racerInstance.registrationBoxBackStorage = racerInstance.registrationBoxBack;
						racerInstance.registrationBoxBack = teleportSphereBack;
					}
					else
					{
						racerInstance.registrationBoxBack = racerInstance.registrationBoxBackStorage;
						teleportSphereFront.width = 0;
						teleportSphereFront.height = 0;
						teleportSphereBack.width = 0;
						teleportSphereBack.height = 0;
					}
				}
			}
			function fadeShield()
			{
				if (fadingShield)
				{
					shieldTimer++;
					teleportSphereFront.width +=  15 / (shieldTimer + 5);
					teleportSphereFront.height +=  15 / (shieldTimer + 5);
					teleportSphereBack.width +=  15 / (shieldTimer + 5);
					teleportSphereBack.height +=  15 / (shieldTimer + 5);
					teleportSphereFront.alpha -=  0.1;
					teleportSphereBack.alpha -=  0.1;
					if (shieldTimer > 10)
					{
						fadingShield = false
						shieldTimer = 0;
						teleportSphereFront.width = 0;
						teleportSphereFront.height = 0;
						teleportSphereBack.width = 0;
						teleportSphereBack.height = 0;
						teleportSphereFront.alpha = 1;
						teleportSphereBack.alpha = 1;
						powerup = false;
					}
				}
			}
			function checkAchievements():void
			{
				for (i = 0; i < achievements.length / 6; i++)
				{
					if (achievements[i * 6] != "other")
					{
						if (This[achievements[i * 6]] >= achievements[i * 6 + 1] && ! achievements[i * 6 + 5])
						{
							achievementText = createTextField(achievementFormat,achievements[i * 6 + 3], -  world.x + 320 - 150 - 50 + Math.random() * 100, -  world.y + 350 - 120 - 50 + Math.random() * 100,300);
							This.totalCoins +=  achievements[i * 6 + 2];
							achievements[i * 6 + 5] = true;
							achievementText.z = world.z + worldVelocity * 2 * timer + 750;
							world.addChild(achievementText);
							textFields.push(achievementText);
							finishedAchievements.push(achievements[i * 6 + 3]);
							finishedAchievements.push(achievements[i * 6 + 2]);
							achievementText.filters = [new GlowFilter(0xFFFFFF,1,3,3)];
						}
					}
					if (currentPattern == patternB && achievements[i * 6 + 3] == "Slacker" && !achievements[i * 6 + 5])
					{
						if (Math.abs(racer.rotationX) > 6 && Math.abs(racer.rotationZ - previousRotation) < 7)
						{
							stabilityCounter++;
						}
						else
						{
							stabilityCounter = 0;
						}
						if (stabilityCounter > 92)
						{
							achievementText = createTextField(achievementFormat,achievements[i * 6 + 3], -  world.x + 320 - 150 - 50 + Math.random() * 100, -  world.y + 350 - 120 - 50 + Math.random() * 100,300);
							This.totalCoins +=  achievements[i * 6 + 2];
							achievements[i * 6 + 5] = true;
							achievementText.z = world.z + worldVelocity * 2 * timer + 750;
							world.addChild(achievementText);
							textFields.push(achievementText);
							finishedAchievements.push(achievements[i * 6 + 3]);
							finishedAchievements.push(achievements[i * 6 + 2]);
							achievementText.filters = [new GlowFilter(0xFFFFFF,1,3,3)];
						}
					}
					if (achievements[i * 6 + 3] == "Worth it" && ! achievements[i * 6 + 5])
					{
						if (startingCoins != This.totalCoins)
						{
							coinCounter = 6;
						}
						coinCounter--;
					}
				}
			}
			function handleExp():void
			{
				if (currentRacerLevel != 10)
				{
					if (exp > nextLevelExp(currentRacerLevel))
					{
						exp -=  nextLevelExp(currentRacerLevel);
						currentRacerLevel++;
						levelingUp = true
						var newPatternText:TextField = createTextField(tutorialFormat,"New Pattern Unlocked!", -  world.x + 320 - 150, -  world.y + 350 - 120,300);
						newPatternText.z = world.z + worldVelocity * 2 * timer + 750;
						newPatternText.filters = [new GlowFilter(0xFFFFFF,1,3,3)];
						expBar.graphics.clear()
						expBar.graphics.beginFill(selectColor(currentRacerLevel + 1),1);
						expBar.graphics.drawRect(0,0,2,650);
						expBar.graphics.endFill();
						if (currentRacerLevel == 2)
						{
							world.addChild(newPatternText);
							textFields.push(newPatternText);
							possiblePatterns.push(patternB);
						}
						else if (currentRacerLevel == 3)
						{
							world.addChild(newPatternText);
							textFields.push(newPatternText);
							possiblePatterns.push(patternC);
						}
						else if (currentRacerLevel == 5)
						{
							world.addChild(newPatternText);
							textFields.push(newPatternText);
							possiblePatterns.push(patternD);
						}
						else if (currentRacerLevel == 7)
						{
							world.addChild(newPatternText);
							textFields.push(newPatternText);
							possiblePatterns.push(patternE);
						}
						else if (currentRacerLevel == 10)
						{
							world.addChild(newPatternText);
							textFields.push(newPatternText);
							possiblePatterns.push(patternF);
						}
					}
					expBar.height = 650 * exp / nextLevelExp(currentRacerLevel);
				}
				else
				{
					expBar.height = 650;
				}
			}
			function levelUp():void
			{
				if (levelingUp)
				{
					var levelUpFormat:TextFormat = new TextFormat();
					levelUpFormat.font = "Calibri";
					levelUpFormat.align = "center";
					levelUpFormat.color = selectColor(currentRacerLevel);
					levelUpText.setTextFormat(levelUpFormat);
					particleContainer.addChild(levelUpText);
					levelUpText.x = 320 - levelUpText.width / 2;
					levelUpText.y = 400;
					levelUpText.z -=  worldVelocity;
					levelUpTimer++;
					var levelUpFilter:GlowFilter = new GlowFilter(selectColor(currentRacerLevel),1,600 / Math.pow(levelUpTimer,1.1) - 8,300 / Math.pow(levelUpTimer,1.1) - 8,10 / Math.sqrt(levelUpTimer) + 1);
					racer.filters = [levelUpFilter];
					if (levelUpTimer > 30)
					{
						levelingUp = false
						particleContainer.removeChild(levelUpText);
						levelUpText.z = 0;
						racer.filters = [];
					}
				}
			}
			function tutoriate():void
			{
				if (timer == 30)
				{
					firstField.x =  -  world.x + 320 - 150;
					firstField.y =  -  world.y + 350 - 120;
					firstField.z = world.z + worldVelocity * 2 * timer + 750;
					world.addChild(firstField);
					textFields.push(firstField);
				}
				if (timer == 60)
				{
					secondField.z = world.z + worldVelocity * 2 * timer + 750;
					secondField.x =  -  world.x + 320 - 150;
					secondField.y =  -  world.y + 350 - 120;
					world.addChild(secondField);
					textFields.push(secondField);
				}
				if (! firstCheck)
				{
					secondField.z += Math.floor(worldVelocity - 3 * worldVelocity / (timer - 59));
				}
				else
				{
					if (timer == firstCheckTime + 10)
					{
						thirdField.z = world.z + worldVelocity * 2 * timer + 750;
						thirdField.x =  -  world.x + 320 - 150;
						thirdField.y =  -  world.y + 350 - 120;
						world.addChild(thirdField);
						textFields.push(thirdField);
					}
					fourthField.z +=  worldVelocity * 2 / 3;
					fifthField.z +=  worldVelocity * 2 / 3;
					sixthField.z +=  worldVelocity * 2 / 3;
					seventhField.z +=  worldVelocity * 2 / 3;
					eighthField.z +=  worldVelocity * 2 / 3;
					ninthField.z +=  worldVelocity * 2 / 3;
					tenthField.z +=  worldVelocity * 2 / 3;
					if (timer == firstCheckTime + 40)
					{
						fourthField.z = world.z + worldVelocity * 2 * timer + 750;
						fourthField.x =  -  world.x + 320 - 150;
						fourthField.y =  -  world.y + 350 - 120;
						world.addChild(fourthField);
						textFields.push(fourthField);
					}
					if (timer == firstCheckTime + 90)
					{
						fifthField.z = world.z + worldVelocity * 2 * timer + 750;
						fifthField.x =  -  world.x + 320 - 150;
						fifthField.y =  -  world.y + 350 - 120;
						world.addChild(fifthField);
						textFields.push(fifthField);
					}
					if (timer == firstCheckTime + 150)
					{
						sixthField.z = world.z + worldVelocity * 2 * timer + 750;
						sixthField.x =  -  world.x + 320 - 150;
						sixthField.y =  -  world.y + 350 - 120;
						world.addChild(sixthField);
						textFields.push(sixthField);
					}
					if (timer == firstCheckTime + 210)
					{
						seventhField.z = world.z + worldVelocity * 2 * timer + 750;
						seventhField.x =  -  world.x + 320 - 150;
						seventhField.y =  -  world.y + 350 - 120;
						world.addChild(seventhField);
						textFields.push(seventhField);
					}
					if (timer == firstCheckTime + 270)
					{
						eighthField.z = world.z + worldVelocity * 2 * timer + 750;
						eighthField.x =  -  world.x + 320 - 150;
						eighthField.y =  -  world.y + 350 - 120;
						world.addChild(eighthField);
						textFields.push(eighthField);
					}
					if (timer == firstCheckTime + 330)
					{
						ninthField.z = world.z + worldVelocity * 2 * timer + 750;
						ninthField.x =  -  world.x + 320 - 150;
						ninthField.y =  -  world.y + 350 - 120;
						world.addChild(ninthField);
						textFields.push(ninthField);
					}
					if (timer == firstCheckTime + 390)
					{
						tenthField.z = world.z + worldVelocity * 2 * timer + 750;
						tenthField.x =  -  world.x + 320 - 150;
						tenthField.y =  -  world.y + 350 - 120;
						world.addChild(tenthField);
						textFields.push(tenthField);
					}
					if (timer == firstCheckTime + 450)
					{
						eleventhField.z = world.z + worldVelocity * 2 * timer + 750;
						eleventhField.x =  -  world.x + 320 - 150;
						eleventhField.y =  -  world.y + 350 - 120;
						world.addChild(eleventhField);
						textFields.push(eleventhField);
						takePowerup();
					}
					if (! secondCheck)
					{
						eleventhField.z += Math.floor(worldVelocity - 3 * worldVelocity / (timer - 449 - firstCheckTime));
					}
					else
					{
						thirteenthField.z +=  worldVelocity * 6 / 7;
						fourteenthField.z +=  worldVelocity * 6 / 7;
						fifteenthField.z +=  worldVelocity * 2 / 3;
						sixteenthField.z +=  worldVelocity * 2 / 3;
						if (timer == secondCheckTime + 10)
						{
							twelfthField.z = world.z + worldVelocity * 2 * timer + 750;
							twelfthField.x =  -  world.x + 320 - 150;
							twelfthField.y =  -  world.y + 350 - 120;
							world.addChild(twelfthField);
							textFields.push(twelfthField);
						}
						if (timer == secondCheckTime + 50)
						{
							thirteenthField.z = world.z + worldVelocity * 2 * timer + 750;
							thirteenthField.x =  -  world.x + 320 - 150;
							thirteenthField.y =  -  world.y + 350 - 120;
							world.addChild(thirteenthField);
							textFields.push(thirteenthField);
						}
						if (timer == secondCheckTime + 200)
						{
							fourteenthField.z = world.z + worldVelocity * 2 * timer + 750;
							fourteenthField.x =  -  world.x + 320 - 150;
							fourteenthField.y =  -  world.y + 350 - 120;
							world.addChild(fourteenthField);
							textFields.push(fourteenthField);
						}
						if (timer == secondCheckTime + 350)
						{
							fifteenthField.z = world.z + worldVelocity * 2 * timer + 750;
							fifteenthField.x =  -  world.x + 320 - 150;
							fifteenthField.y =  -  world.y + 350 - 120;
							world.addChild(fifteenthField);
							textFields.push(fifteenthField);
						}
						if (timer == secondCheckTime + 410)
						{
							sixteenthField.z = world.z + worldVelocity * 2 * timer + 750;
							sixteenthField.x =  -  world.x + 320 - 150;
							sixteenthField.y =  -  world.y + 350 - 120;
							world.addChild(sixteenthField);
							textFields.push(sixteenthField);
						}
						if (timer == secondCheckTime + 470)
						{
							seventeenthField.z = world.z + worldVelocity * 2 * timer + 750;
							seventeenthField.x =  -  world.x + 320 - 150;
							seventeenthField.y =  -  world.y + 350 - 120;
							world.addChild(seventeenthField);
							textFields.push(seventeenthField);
						}
						if (timer == secondCheckTime + 550)
						{
							timer = 0;
							tutorial = false;
							world.x = 0;
							world.y = 0;
							world.z = 0;
							while (smokeContainer.numChildren > 0)
							{
								smokeContainer.removeChildAt(0);
							}
							for (i = 0; i < achievements.length / 6; i++)
							{
								if (achievements[i * 6 + 3] == "Learn" && ! achievements[i * 6 + 5])
								{
									achievementText = createTextField(achievementFormat,achievements[i * 6 + 3], -  world.x + 320 - 150 - 50 + Math.random() * 100, -  world.y + 350 - 120 - 50 + Math.random() * 100,300);
									This.totalCoins +=  achievements[i * 6 + 2];
									achievements[i * 6 + 5] = true;
									achievementText.z = world.z + worldVelocity * 2 * timer + 750;
									world.addChild(achievementText);
									textFields.push(achievementText);
									finishedAchievements.push(achievements[i * 6 + 3]);
									finishedAchievements.push(achievements[i * 6 + 2]);
									achievementText.filters = [new GlowFilter(0xFFFFFF,1,3,3)];
								}
							}
						}
					}
				}
			}
			function finishSecondCheck(e:MouseEvent):void
			{
				secondCheck = true;
				secondCheckTime = timer;
				powerup = false;
				racerSensor.removeEventListener(MouseEvent.MOUSE_DOWN,finishSecondCheck);
			}
			function die(killerCube:Sprite):void
			{
				if (! shielded)
				{
					var redFilter:GlowFilter = new GlowFilter(0xFF0000,1,30,30);
					killerCube.filters = [redFilter];
					removeEventListener(Event.ENTER_FRAME,moveWorld);
					addEventListener(Event.ENTER_FRAME,endGame);
					racerSensor.removeEventListener(MouseEvent.MOUSE_OVER,initialTouch);
					stage.removeEventListener(MouseEvent.MOUSE_MOVE,moveRacer);
					racerSensor.removeEventListener(MouseEvent.MOUSE_OUT,finalTouch);
					racerSensor.removeEventListener(MouseEvent.MOUSE_DOWN,usePowerup);
					racer.removeEventListener(Event.ENTER_FRAME,levelUp);
					if (coinCounter >= 0)
					{
						for (i = 0; i < achievements.length / 6; i++)
						{
							if (achievements[i * 6 + 3] == "Worth it" && ! achievements[i * 6 + 5])
							{
								achievementText = createTextField(achievementFormat,achievements[i * 6 + 3], -  world.x + 320 - 150 - 50 + Math.random() * 100, -  world.y + 350 - 120 - 50 + Math.random() * 100,300);
								This.totalCoins +=  achievements[i * 6 + 2];
								achievements[i * 6 + 5] = true;
								achievementText.z = world.z + worldVelocity * 2 * timer + 750;
								world.addChild(achievementText);
								textFields.push(achievementText);
								finishedAchievements.push(achievements[i * 6 + 3]);
								finishedAchievements.push(achievements[i * 6 + 2]);
								achievementText.filters = [new GlowFilter(0xFFFFFF,1,3,3)];
							}
						}
					}
					dieRoot(This,distanceTraveled,This.totalCoins - beginningCoins,killedCubes,exp,currentRacerLevel,nextLevelExp(currentRacerLevel),finishedAchievements);
				}
				else
				{
					var cubeInstance:Object = killerCube as Object;
					cubes.splice(cubes.lastIndexOf(killerCube),1);
					if (cubeInstance.die(killerCube,world,sides,sideOwners))
					{
						for (i = 0; i < achievements.length / 6; i++)
						{
							if (achievements[i * 6 + 3] == "Invincible" && ! achievements[i * 6 + 5])
							{
								achievementText = createTextField(achievementFormat,achievements[i * 6 + 3], -  world.x + 320 - 150 - 50 + Math.random() * 100, -  world.y + 350 - 120 - 50 + Math.random() * 100,300);
								This.totalCoins +=  achievements[i * 6 + 2];
								achievements[i * 6 + 5] = true;
								achievementText.z = world.z + worldVelocity * 2 * timer + 750;
								world.addChild(achievementText);
								textFields.push(achievementText);
								finishedAchievements.push(achievements[i * 6 + 3]);
								finishedAchievements.push(achievements[i * 6 + 2]);
								achievementText.filters = [new GlowFilter(0xFFFFFF,1,3,3)];
							}
						}
					}
					shielded = false;
					shielding = false
					fadingShield = true
					racerInstance.registrationBoxBack = racerInstance.registrationBoxBackStorage;
					exp +=  2500;
					shieldTimer = 0;
				}
			}
			function endGame(e:Event):void
			{
				if (This.parent == null)
				{
					removeEventListener(Event.ENTER_FRAME,endGame)
				}
				rotateExtras();
				handleParticles();
			}
		}
		public static function checkDistance(object:Sprite, toAvoid:Class, world:Sprite):Boolean
		{
			for (var k:int = 0; k < world.numChildren; k++)
			{
				if (Math.sqrt(Math.pow(object.x - world.getChildAt(k).x,2) + Math.pow(object.y - world.getChildAt(k).y,2) + Math.pow(object.z - world.getChildAt(k).z,2)) < 100 && world.getChildAt(k) is toAvoid)
				{
					return false;
				}
			}
			return true;
		}
		public static function nextLevelExp(level:int):int
		{
			if (level == 1)
			{
				return 20000;
			}
			if (level == 2)
			{
				return 50000;
			}
			if (level == 3)
			{
				return 90000;
			}
			if (level == 4)
			{
				return 140000;
			}
			if (level == 5)
			{
				return 200000;
			}
			if (level == 6)
			{
				return 270000;
			}
			if (level == 7)
			{
				return 350000;
			}
			if (level == 8)
			{
				return 440000;
			}
			if (level == 9)
			{
				return 540000;
			}
			return 0;
		}
		public static function selectColor(level:int):int
		{
			if (level == 1)
			{
				return 0xDDDDDD;
			}
			else if (level == 2)
			{
				return 0x9494D6;
			}
			else if (level == 3)
			{
				return 0x7BD4DB;
			}
			else if (level == 4)
			{
				return 0x35AF75;
			}
			else if (level == 5)
			{
				return 0x80DB7B;
			}
			else if (level == 6)
			{
				return 0xEEF264;
			}
			else if (level == 7)
			{
				return 0xF7B759;
			}
			else if (level == 8)
			{
				return 0xBF4040;
			}
			else if (level == 9)
			{
				return 0xA32E7F;
			}
			else if (level == 10)
			{
				var randomInt:int = Math.round(Math.random() * 9 + 0.5);
				if (randomInt == 1)
				{
					return 0x2A2A2A;
				}
				else if (randomInt == 2)
				{
					return 0x9494D6;
				}
				else if (randomInt == 3)
				{
					return 0x7BD4DB;
				}
				else if (randomInt == 4)
				{
					return 0x35AF75;
				}
				else if (randomInt == 5)
				{
					return 0x80DB7B;
				}
				else if (randomInt == 6)
				{
					return 0xEEF264;
				}
				else if (randomInt == 7)
				{
					return 0xF7B759;
				}
				else if (randomInt == 8)
				{
					return 0xBF4040;
				}
				else if (randomInt == 9)
				{
					return 0xA32E7F;
				}
			}
			return 0x2A2A2A;
		}
		public static function createCoin(xPos:Number,yPos:Number,zPos:Number,world:Sprite,container:Array,color:int):void
		{
			var newCoin:Sprite = new Coin(color);
			world.addChild(newCoin);
			newCoin.z = zPos;
			newCoin.x = xPos;
			newCoin.y = yPos;
			container.push(newCoin);
		}
		public static function createPowerup(xPos:Number,yPos:Number,zPos:Number,world:Sprite,container:Array,color:int):void
		{
			var newPowerup:Sprite = new Powerup(color);
			world.addChild(newPowerup);
			newPowerup.z = zPos;
			newPowerup.x = xPos;
			newPowerup.y = yPos;
			container.push(newPowerup);
		}
		public static function createCube(xPos:Number,yPos:Number,zPos:Number,health:int,world:Sprite,container:Array,color:int):void
		{
			var newCube:Sprite = new Cube(color,health);
			newCube.alpha = 0;
			world.addChild(newCube);
			newCube.z = zPos;
			newCube.x = xPos;
			newCube.y = yPos;
			container.push(newCube);
		}
	}
}