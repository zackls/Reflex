package
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.BlendMode;
	import flash.events.MouseEvent;
	import flash.events.TouchEvent;
	import flash.events.Event;
	import flash.events.StageOrientationEvent;
	import flash.display.StageOrientation
	import flash.text.TextFormat;
	import flash.text.TextField;
	import flash.ui.Multitouch
	import flash.ui.MultitouchInputMode
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.net.SharedObject;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import flash.utils.getDefinitionByName
	import fl.motion.Color
	import flash.geom.ColorTransform;
	
	public final class Main extends MovieClip
	{
		private static var backgroundMusic:Sound = new reflexMusic()
		var musicChannel:SoundChannel = new SoundChannel()
		var musicTransform:SoundTransform = new SoundTransform()
		var savedData:SharedObject = SharedObject.getLocal("Reflex")
		var currentAttempt:int
		var totalDistanceTraveled:int
		var distanceTraveled:int
		var totalCoins:int
		var currentCoins:int
		var deadCubes:int
		var currentRacerLevel:int
		var currentRocketsLevel:int
		var currentBulletsLevel:int
		var currentTeleportLevel:int
		var currentShieldLevel:int
		var currentAgilityLevel:int
		var currentPowerup:String
		var totalExp:int
		var maxDistance:int
		var maxCoins:int
		var maxCubes:int
		var coinFreq:int
		var powerupFreq:int
		var achievements:Array
		var menuTutorial:Boolean
		var gameTutorial:Boolean
		var musicVolume:Number
		var backgroundClr:String
		var gameOrientation:String
		var invertAxes:Boolean
		var cube:Sprite
		var This:Sprite = this as Sprite
		var bg:Sprite = new Sprite()
		public function Main()
		{
			initial()
		}
		public function initial():void
		{
			if (savedData.data.currentAttempt == undefined)
			{
				resetStats(false)
			}
			loadData()
			musicTransform.volume = 3 * musicVolume / 100
			musicChannel = backgroundMusic.play(0,9999999)
			musicChannel.soundTransform = musicTransform
			if (!This.contains(bg))
			{
				This.addChild(bg)
			}
			bg.graphics.clear()
			if (backgroundClr == "Black")
			{
				bg.graphics.beginFill(0x000000)
			}
			else
			{
				bg.graphics.beginFill(0xFFFFFF)
			}
			bg.graphics.drawRect(-200,-200,1040,1360)
			bg.graphics.endFill()
			startMenu()
		}
		public function startMenu():void
		{
			Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT
			cube = new Sprite()
			var placeHolder:Sprite
			var sideArray:Array = []
			var timer:int = 0
			var i:int
			var j:int
			
			//variables
			var front:Sprite = new Sprite()
			var top:Sprite = new Sprite()
			var left:Sprite = new Sprite()
			var bottom:Sprite = new Sprite()
			var right:Sprite = new Sprite()
			var back:Sprite = new Sprite()
			var frontBG:Sprite = new Sprite()
			var topBG:Sprite = new Sprite()
			var leftBG:Sprite = new Sprite()
			var bottomBG:Sprite = new Sprite()
			var rightBG:Sprite = new Sprite()
			var backBG:Sprite= new Sprite()
			var frontBottomRegBox:Sprite = new Sprite()
			var topBottomRegBox:Sprite = new Sprite()
			var leftBottomRegBox:Sprite = new Sprite()
			var bottomBottomRegBox:Sprite = new Sprite()
			var rightBottomRegBox:Sprite = new Sprite()
			var backBottomRegBox:Sprite = new Sprite()
			var frontTopRegBox:Sprite = new Sprite()
			var topTopRegBox:Sprite = new Sprite()
			var leftTopRegBox:Sprite = new Sprite()
			var bottomTopRegBox:Sprite = new Sprite()
			var rightTopRegBox:Sprite = new Sprite()
			var backTopRegBox:Sprite = new Sprite()
			var frontRightRegBox:Sprite = new Sprite()
			var topRightRegBox:Sprite = new Sprite()
			var leftRightRegBox:Sprite = new Sprite()
			var bottomRightRegBox:Sprite = new Sprite()
			var rightRightRegBox:Sprite = new Sprite()
			var backRightRegBox:Sprite = new Sprite()
			var frontLeftRegBox:Sprite = new Sprite()
			var topLeftRegBox:Sprite = new Sprite()
			var leftLeftRegBox:Sprite = new Sprite()
			var bottomLeftRegBox:Sprite = new Sprite()
			var rightLeftRegBox:Sprite = new Sprite()
			var backLeftRegBox:Sprite = new Sprite()
			var smlTextFormat:TextFormat = new TextFormat()
			var medTextFormat:TextFormat = new TextFormat()
			var lrgTextFormat:TextFormat = new TextFormat()
			smlTextFormat.font = "Arial"
			smlTextFormat.size = 12
			smlTextFormat.align = "center"
			medTextFormat.font = "Arial"
			medTextFormat.size = 20
			medTextFormat.align = "center"
			lrgTextFormat.font = "Arial"
			lrgTextFormat.size = 30
			lrgTextFormat.align = "center"
			var currentSide:Sprite = front
			cube.addChild(back)
			cube.addChild(left)
			cube.addChild(top)
			cube.addChild(right)
			cube.addChild(bottom)
			cube.addChild(front)
			sideArray.push(backBG)
			sideArray.push(leftBG)
			sideArray.push(topBG)
			sideArray.push(rightBG)
			sideArray.push(bottomBG)
			sideArray.push(frontBG)
			
			//front
			var frontCover:Sprite = new titleArt()
			frontCover.y = -110
			var versionText:TextField = createTextField(smlTextFormat,"Android",30,-90)
			var startText:TextField = createTextField(lrgTextFormat,"Start",-50,5,100,40)
			var startButton:Sprite = new Sprite()
			var attemptText:TextField = createTextField(smlTextFormat,"Attempt: " + currentAttempt,-50,-5,100,30)
			startButton.y = 120
			startButton.addChild(startText)
			startButton.addChild(attemptText)
			startButton.graphics.beginFill(0x000000)
			startButton.graphics.drawRect(-60,-7,120,60)
			startButton.graphics.endFill()
			startButton.graphics.beginFill(0xBBBBBB)
			startButton.graphics.drawRect(-50,-2,100,50)
			startButton.graphics.endFill()
			startButton.addEventListener(TouchEvent.TOUCH_BEGIN,startGame)
			front.addChild(frontBG)
			frontBG.addChild(frontCover)
			frontBG.addChild(versionText)
			frontBG.addChild(startButton)
			frontBG.addChild(frontBottomRegBox)
			frontBG.addChild(frontTopRegBox)
			frontBG.addChild(frontRightRegBox)
			frontBG.addChild(frontLeftRegBox)
			frontBottomRegBox.graphics.beginFill(0xFF0000,0)
			frontBottomRegBox.graphics.drawRect(-2,230,4,20)
			frontBottomRegBox.graphics.endFill()
			frontTopRegBox.graphics.beginFill(0x00FF00,0)
			frontTopRegBox.graphics.drawRect(-2,-250,4,20)
			frontTopRegBox.graphics.endFill()
			frontRightRegBox.graphics.beginFill(0x0000FF,0)
			frontRightRegBox.graphics.drawRect(230,-2,20,4)
			frontRightRegBox.graphics.endFill()
			frontLeftRegBox.graphics.beginFill(0x000000,0)
			frontLeftRegBox.graphics.drawRect(-250,-2,20,4)
			frontLeftRegBox.graphics.endFill()
			front.graphics.beginFill(0xBBBBBB)
			front.graphics.drawRect(-240,-240,480,480)
			front.graphics.endFill()
			var tutorialTimer:int = 0
			var frontTutorialContainer:Sprite = new Sprite()
			frontTutorialContainer.graphics.beginFill(0x000000,0)
			frontTutorialContainer.graphics.drawRect(-240,-500,1000,1000)
			frontTutorialContainer.graphics.endFill()
			var frontTutorialText:TextField = createTextField(medTextFormat,"Hey! You look new!\nLet me teach you the basics. Drag over there\nto visit the options screen.",-200,0,400)
			var tutorialArrow:Sprite = new Arrow()
			tutorialArrow.y = 65
			tutorialArrow.width = 480
			frontTutorialContainer.addChild(tutorialArrow)
			frontTutorialContainer.addChild(frontTutorialText)
			//left
			var optionsText:TextField = createTextField(lrgTextFormat,"Options",-150,-225,300,50)
			var tutorialContainer:Sprite = new Sprite()
			var tutorialTitle:TextField = createTextField(medTextFormat,"Ingame Tutorial",-125,-175,250,50)
			var tutorialText:TextField = createTextField(smlTextFormat,"I would seriously recommend the tutorial for\nfirst-timers. Press to toggle.",-125,-152,250,60)
			tutorialContainer.addChild(tutorialTitle)
			tutorialContainer.addChild(tutorialText)
			if (!gameTutorial)
			{
				tutorialContainer.alpha = 0.5
			}
			tutorialContainer.addEventListener(TouchEvent.TOUCH_BEGIN,switchTutorial)
			function switchTutorial(e:TouchEvent):void
			{
				gameTutorial = !gameTutorial
				if (gameTutorial)
				{
					tutorialContainer.alpha = 1
				}
				else
				{
					tutorialContainer.alpha = 0.5
				}
			}
			var backgroundTitle:TextField = createTextField(medTextFormat,"Background Color",-125,-105,250,60)
			var whiteFormat:TextFormat = new TextFormat("Arial",16,0xFFFFFF)
			whiteFormat.align = "center"
			var blackFormat:TextFormat = new TextFormat("Arial",16,0x000000)
			blackFormat.align = "center"
			var whiteText:TextField = createTextField(whiteFormat,"White",-40 + 75,-75,80,40)
			var blackText:TextField = createTextField(blackFormat,"Black",-40 - 75,-75,80,40)
			whiteText.addEventListener(TouchEvent.TOUCH_BEGIN,swapBackgroundColors)
			blackText.addEventListener(TouchEvent.TOUCH_BEGIN,swapBackgroundColors)
			function swapBackgroundColors(e:TouchEvent):void
			{
				if (e.currentTarget == whiteText && backgroundClr != "White")
				{
					whiteText.alpha = 1
					blackText.alpha = 0.5
					backgroundClr = "White"
					bg.graphics.clear()
					bg.graphics.beginFill(0xFFFFFF)
					bg.graphics.drawRect(-200,-200,1040,1360)
					bg.graphics.endFill()
				}
				if (e.currentTarget == blackText && backgroundClr != "Black")
				{
					whiteText.alpha = 0.5
					blackText.alpha = 1
					backgroundClr = "Black"
					bg.graphics.clear()
					bg.graphics.beginFill(0x000000)
					bg.graphics.drawRect(-200,-200,1040,1360)
					bg.graphics.endFill()
				}
			}
			if (backgroundClr == "White")
			{
				blackText.alpha = 0.5
			}
			if (backgroundClr == "Black")
			{
				whiteText.alpha = 0.5
			}
			var musicTitle:TextField = createTextField(medTextFormat,"Music Volume",-125,-35,250)
			var musicBar:Sprite = new Sprite()
			musicBar.graphics.beginFill(0x000000,0)
			musicBar.graphics.drawRect(-175,-40,250,80)
			musicBar.graphics.beginFill(0x000000,1)
			musicBar.graphics.drawRoundRectComplex(-155,-5,310,10,5,5,5,5)
			musicBar.graphics.endFill()
			musicBar.y = -2
			musicBar.alpha = musicVolume / 100
			var musicButton:Sprite = new Sprite()
			musicButton.graphics.beginFill(0xDDDDDD,1)
			musicButton.graphics.drawCircle(0,0,4)
			musicButton.graphics.endFill()
			musicButton.y = -2
			musicButton.x = musicVolume * 3 - 150
			musicBar.addEventListener(TouchEvent.TOUCH_MOVE,changeMusicVolume)
			function changeMusicVolume(e:TouchEvent):void
			{
				if (gameOrientation == "vertical")
				{
					if (musicButton.x <= 150 && musicButton.x >= -150)
					{
						musicButton.x = e.stageX - 320
					}
				}
				else if (gameOrientation == "horizontal")
				{
					if (musicButton.x <= 150 && musicButton.x >= -150)
					{
						musicButton.x = e.stageY - 480
					}
				}
				if (musicButton.x > 150)
				{
					musicButton.x = 150
				}
				if (musicButton.x < -150)
				{
					musicButton.x = -150
				}
				musicBar.alpha = (musicButton.x + 150) / 300
				musicVolume = (musicButton.x + 150) / 3
				musicTransform.volume = 3 * musicVolume / 100
				musicChannel.soundTransform = musicTransform
			}
			var orientationTitle:TextField = createTextField(medTextFormat,"Orientation",-125,35,250,60)
			var horizontalText:TextField = createTextField(blackFormat,"Horizontal",-80 + 75,65,160,40)
			var verticalText:TextField = createTextField(blackFormat,"Vertical",-80 - 75,65,160,40)
			horizontalText.addEventListener(TouchEvent.TOUCH_BEGIN,changeOrientation)
			verticalText.addEventListener(TouchEvent.TOUCH_BEGIN,changeOrientation)
			function changeOrientation(e:TouchEvent):void
			{
				if (e.currentTarget == horizontalText && gameOrientation != "horizontal")
				{
					horizontalText.alpha = 1
					verticalText.alpha = 0.5
					gameOrientation = "horizontal"
					This.rotationZ = 90
					This.x = 800
					This.y = 160
				}
				if (e.currentTarget == verticalText && gameOrientation != "vertical")
				{
					horizontalText.alpha = 0.5
					verticalText.alpha = 1
					gameOrientation = "vertical"
					This.rotationZ = 0
					This.x = 0
					This.y = 0
				}
			}
			if (gameOrientation == "vertical")
			{
				horizontalText.alpha = 0.5
				This.rotationZ = 0
				This.x = 0
				This.y = 0
			}
			if (gameOrientation == "horizontal")
			{
				verticalText.alpha = 0.5
				This.rotationZ = 90
				This.x = 800
				This.y = 160
			}
			var invertContainer:Sprite = new Sprite()
			var invertTitle:TextField = createTextField(medTextFormat,"Invert Axes",-125,105,250,50)
			var invertText:TextField = createTextField(smlTextFormat,"More realistic to actually flying\na plane.",-125,128,250,60)
			invertContainer.addChild(invertTitle)
			invertContainer.addChild(invertText)
			invertContainer.addEventListener(TouchEvent.TOUCH_BEGIN,switchInvert)
			function switchInvert(e:TouchEvent):void
			{
				invertAxes = !invertAxes
				if (invertAxes)
				{
					invertContainer.alpha = 1
				}
				else
				{
					invertContainer.alpha = 0.5
				}
			}
			if (invertAxes)
			{
				invertContainer.alpha = 1
			}
			else
			{
				invertContainer.alpha = 0.5
			}
			leftBG.addChild(backgroundTitle)
			leftBG.addChild(whiteText)
			leftBG.addChild(blackText)
			leftBG.addChild(orientationTitle)
			leftBG.addChild(horizontalText)
			leftBG.addChild(verticalText)
			leftBG.addChild(musicTitle)
			leftBG.addChild(musicBar)
			leftBG.addChild(musicButton)
			leftBG.addChild(tutorialContainer)
			leftBG.addChild(invertContainer)
			leftBG.addChild(optionsText)
			leftBG.addChild(leftBottomRegBox)
			leftBG.addChild(leftTopRegBox)
			leftBG.addChild(leftRightRegBox)
			leftBG.addChild(leftLeftRegBox)
			leftBottomRegBox.graphics.beginFill(0xFF0000,0)
			leftBottomRegBox.graphics.drawRect(-2,230,4,20)
			leftBottomRegBox.graphics.endFill()
			leftTopRegBox.graphics.beginFill(0x00FF00,0)
			leftTopRegBox.graphics.drawRect(-2,-250,4,20)
			leftTopRegBox.graphics.endFill()
			leftRightRegBox.graphics.beginFill(0x0000FF,0)
			leftRightRegBox.graphics.drawRect(230,-2,20,4)
			leftRightRegBox.graphics.endFill()
			leftLeftRegBox.graphics.beginFill(0x000000,0)
			leftLeftRegBox.graphics.drawRect(-250,-2,20,4)
			leftLeftRegBox.graphics.endFill()
			left.graphics.beginFill(0xAAAAAA)
			left.graphics.drawRect(-240,-240,480,480)
			left.graphics.endFill()
			var leftTutorialContainer:Sprite = new Sprite()
			leftTutorialContainer.graphics.beginFill(0x000000,0)
			leftTutorialContainer.graphics.drawRect(-500,-500,1000,1000)
			leftTutorialContainer.graphics.endFill()
			var leftTutorialFormat:TextFormat = new TextFormat("Arial",16,0xFFFFFF)
			leftTutorialFormat.align = "center"
			var leftTutorialText:TextField = createTextField(leftTutorialFormat,"That's how you work the menu,\ncheck out the other pages by just\nrotating the cube. The credits are to\nthe left, upgrades are up, achievements are\ndown, and the start menu is to the right.\nI'll see you when you start the game!",-200,-370,400,400)
			leftTutorialContainer.addChild(leftTutorialText)
			leftTutorialContainer.addEventListener(TouchEvent.TOUCH_BEGIN,clearTutorial)
			//top
			var upgradesText:TextField = createTextField(lrgTextFormat,"Upgrades",-150,-225,300,40)
			var boundaryBox:Sprite = new Sprite()
			boundaryBox.graphics.beginFill(0x333333,1)
			boundaryBox.graphics.drawRect(-220,-180,440,400)
			boundaryBox.graphics.endFill()
			var upgradesScreen:Sprite = new Sprite()
			var coinTextFormat:TextFormat = new TextFormat()
			coinTextFormat.size = 20
			coinTextFormat.font = "Arial"
			coinTextFormat.align = "right"
			var coinText:TextField = createTextField(coinTextFormat,"",-30,-205,250,26)
			var entryColor:Sprite
			var animationTimer:int = 100
			var entryTitles:Array = ["Agility","Bullets","Rockets","Shield","Teleport","Coins","Powerups"]
			var entryDescriptions:Array = ["Slightly improve your ship's response \ntime.","Improve bullet damage and increase \npowerup duration.","Shoot faster, smarter, and deadlier \nrockets.","Increase shield stability and decrease \nsize.","Teleport further.","Slightly increase the frequency coins\nappear.","Slightly increase the frequency\npowerups appear."]
			var entryLevels:Array = [currentAgilityLevel,currentBulletsLevel,currentRocketsLevel,currentShieldLevel,currentTeleportLevel,coinFreq,powerupFreq]
			var entryRequirements:Array = [[2,4,6,8],[2,4,6,8],[3,5,7,9],[3,5,7,9],[4,6,8,10],[2,4],[2,4]]
			var maxEntryLevels:Array = [5,5,5,5,5,3,3]
			var equipButtons:Array = []
			var entryButtons:Array = []
			var numEntries:int = entryTitles.length
			for (i = 0; i < numEntries; i++)
			{
				var newEntry:Sprite = new Sprite()
				var entryTitleFormat:TextFormat = new TextFormat("Arial",20,0,true)
				entryTitleFormat.align = "left"
				var entryTitle:TextField = createTextField(entryTitleFormat,entryTitles[i],-210,-60)
				var entryDescriptionFormat:TextFormat = new TextFormat("Arial",14)
				entryDescriptionFormat.align = "left"
				var entryDescription:TextField = createTextField(entryDescriptionFormat,entryDescriptions[i],-210,-30,250)
				var entryRequirementsFormat:TextFormat = new TextFormat("Arial",12)
				entryRequirementsFormat.align = "right"
				var entryRequirement:TextField = createTextField(entryRequirementsFormat,"Req. level " + entryRequirements[i][entryLevels[i] - 1] + " racer.",-40,-55)
				var entryLevelFormat:TextFormat = new TextFormat("Arial",14)
				entryLevelFormat.align = "center"
				var entryLevel:TextField = createTextField(entryLevelFormat,"Current Level: " + entryLevels[i],70,-55,150)
				entryColor = new Sprite()
				entryColor.graphics.beginFill(0x000000)
				entryColor.graphics.drawRect(-61.5,-6.5,123,13)
				entryColor.graphics.beginFill(getColor(entryLevels[i],entryTitles[i]))
				entryColor.graphics.drawRect(-60,-5,120,10)
				entryColor.graphics.endFill()
				entryColor.x = 145
				entryColor.y = -25
				var entryCost:TextField = createTextField(entryLevelFormat,"-" + getCost(entryLevels[i],entryTitles[i]) + " Coins-",70,-15,150)
				var upgradeButton:Sprite = new Sprite()
				upgradeButton.graphics.beginFill(0x000000)
				upgradeButton.graphics.drawRect(-41.5,-16.5,83,33)
				upgradeButton.graphics.beginFill(0xBBBBBB)
				upgradeButton.graphics.drawRect(-40,-15,80,30)
				upgradeButton.graphics.endFill()
				upgradeButton.x = 145
				upgradeButton.y = 27
				var upgradeTextFormat:TextFormat = new TextFormat("Arial",18,0x000000,true)
				upgradeTextFormat.align = "center"
				var upgradeText:TextField = createTextField(upgradeTextFormat,"Upgrade",-50,-14,100,36)
				upgradeButton.addChild(upgradeText)
				entryButtons.push(upgradeButton)
				var equipButton:Sprite = new Sprite()
				if (entryTitles[i] == "Bullets" || entryTitles[i] == "Rockets" || entryTitles[i] == "Teleport" || entryTitles[i] == "Shield")
				{
					equipButton.graphics.beginFill(0x000000)
					equipButton.graphics.drawRect(-41.5,-16.5,83,33)
					equipButton.graphics.beginFill(0xBBBBBB)
					equipButton.graphics.drawRect(-40,-15,80,30)
					equipButton.graphics.endFill()
					equipButton.x = 0
					equipButton.y = 27
					var equipText:TextField = createTextField(upgradeTextFormat,"Equip",-50,-14,100,36)
					equipButton.addChild(equipText)
				}
				equipButtons.push(equipButton)
				newEntry.graphics.beginFill(0x999999,1)
				newEntry.graphics.drawRect(-(220 - 2),-(125 / 2 - 1.5),(440 - 150 - 2),(125 - 3))
				newEntry.graphics.drawRect((440 - 150 + 2 - 220),-(125 / 2 - 1.5),(150 - 4),(125 - 3))
				newEntry.graphics.endFill()
				newEntry.y = (i - (numEntries - 1) / 2) * 125
				newEntry.addChild(upgradeButton)
				newEntry.addChild(entryColor)
				newEntry.addChild(entryTitle)
				newEntry.addChild(entryDescription)
				newEntry.addChild(entryLevel)
				newEntry.addChild(entryRequirement)
				newEntry.addChild(entryCost)
				newEntry.addChild(equipButton)
				//only add children here
				upgradesScreen.addChild(newEntry)
			}
			upgradesScreen.addEventListener(Event.ENTER_FRAME,checkItems)
			upgradesScreen.addEventListener(TouchEvent.TOUCH_BEGIN,upgradeEquipItem)
			function checkItems(e:Event):void
			{
				animationTimer++
				coinText.text = "Coins: " + currentCoins
				for (i = 0; i < entryButtons.length; i++)
				{
					if (entryLevels[i] == maxEntryLevels[i])
					{
						entryButtons[i].parent.getChildAt(5).text = ""
						entryButtons[i].parent.getChildAt(6).text = ""
					}
					if (entryTitles[i] == currentPowerup)
					{
						equipButtons[i].alpha = 0.3
					}
					else
					{
						equipButtons[i].alpha = 1
					}
					if (entryButtons[i].transform.colorTransform.redMultiplier < 1 && animationTimer <= 30)
					{
						var c:Color = new Color()
						c.setTint(0xFFFFFF,11.5 / (animationTimer + 10) - 0.15)
						entryButtons[i].transform.colorTransform = c
					}
					else if (entryButtons[i].transform.colorTransform.redMultiplier < 1 && animationTimer > 30)
					{
						entryButtons[i].transform.colorTransform = new ColorTransform()
					}
					if (getCost(entryLevels[i],entryTitles[i]) > currentCoins || currentRacerLevel < entryRequirements[i][entryLevels[i] - 1] || entryLevels[i] >= maxEntryLevels[i])
					{
						entryButtons[i].alpha = 0.3
					}
					else
					{
						entryButtons[i].alpha = 1
					}
					
				}
			}
			function upgradeEquipItem(e:TouchEvent):void
			{
				for (i = 0; i < entryButtons.length; i++)
				{
					if ((gameOrientation == "vertical" && equipButtons[i].hitTestPoint(e.stageX,e.stageY) && equipButtons[i].alpha == 1) || (gameOrientation == "horizontal" && equipButtons[i].hitTestPoint(e.stageY - 160,-e.stageX + 800) && equipButtons[i].alpha == 1))
					{
						currentPowerup = entryTitles[i]
					}
					if ((gameOrientation == "vertical" && entryButtons[i].hitTestPoint(e.stageX,e.stageY) && entryButtons[i].alpha == 1) || (gameOrientation == "horizontal" && entryButtons[i].hitTestPoint(e.stageY - 160,-e.stageX + 800) && entryButtons[i].alpha == 1))
					{
						animationTimer = 0
						currentCoins -= getCost(entryLevels[i],entryTitles[i])
						entryLevels[i]++
						if (i == 0)
						{
							currentAgilityLevel = entryLevels[i]
						}
						else if (i == 1)
						{
							currentBulletsLevel = entryLevels[i]
						}
						else if (i == 2)
						{
							currentRocketsLevel = entryLevels[i]
						}
						else if (i == 3)
						{
							currentShieldLevel = entryLevels[i]
						}
						else if (i == 4)
						{
							currentTeleportLevel = entryLevels[i]
						}
						else if (i == 5)
						{
							coinFreq = entryLevels[i]
						}
						else if (i == 6)
						{
							powerupFreq = entryLevels[i]
						}
						entryButtons[i].parent.getChildAt(4).text = "Current Level: " + entryLevels[i]
						entryButtons[i].parent.getChildAt(5).text = "Req. level " + entryRequirements[i][entryLevels[i] - 1] + " racer."
						entryButtons[i].parent.getChildAt(6).text = "-" + getCost(entryLevels[i],entryTitles[i]) + " Coins-"
						entryColor = new Sprite()
						entryColor.graphics.beginFill(0x000000)
						entryColor.graphics.drawRect(-61.5,-6.5,123,13)
						entryColor.graphics.beginFill(getColor(entryLevels[i],entryTitles[i]))
						entryColor.graphics.drawRect(-60,-5,120,10)
						entryColor.graphics.endFill()
						entryColor.x = 145
						entryColor.y = -25
						entryButtons[i].parent.addChild(entryColor)
						entryButtons[i].parent.swapChildren(entryButtons[i].parent.getChildAt(entryButtons[i].parent.numChildren - 1),entryButtons[i].parent.getChildAt(1))
						entryButtons[i].parent.removeChild(entryButtons[i].parent.getChildAt(entryButtons[i].parent.numChildren - 1))
						var c:Color = new Color()
						c.setTint(0xFFFFFF,1)
						entryButtons[i].transform.colorTransform = c
					}
				}
			}
			var beginningY:Number = 0
			upgradesScreen.y = -180 + numEntries * 125
			upgradesScreen.graphics.beginFill(0x000000,1)
			upgradesScreen.graphics.drawRect(-220,-numEntries * 125 / 2,440,numEntries * 125)
			upgradesScreen.graphics.endFill()
			upgradesScreen.addEventListener(TouchEvent.TOUCH_BEGIN,initialScroll)
			upgradesScreen.addEventListener(Event.ENTER_FRAME,checkBoundary)
			upgradesScreen.cacheAsBitmap = true
			boundaryBox.cacheAsBitmap = true
			upgradesScreen.mask = boundaryBox
			var velocity:Number = 0
			var dy:Number = 0
			function checkBoundary(e:Event):void
			{
				if (velocity > 0 || velocity < 0)
				{
					velocity /= 1.05
				}
				if (upgradesScreen.y < -upgradesScreen.height / 2 + 220)
				{
					velocity = 0
					dy = 0
					upgradesScreen.y = -upgradesScreen.height / 2 + 220
				}
				else if (upgradesScreen.y > upgradesScreen.height / 2 - 180)
				{
					velocity = 0
					dy = 0
					upgradesScreen.y = upgradesScreen.height / 2 - 180
				}
				else
				{
					upgradesScreen.y += velocity
				}
			}
			topBG.addChild(upgradesScreen)
			topBG.addChild(boundaryBox)
			topBG.addChild(upgradesText)
			topBG.addChild(coinText)
			topBG.addChild(topBottomRegBox)
			topBG.addChild(topTopRegBox)
			topBG.addChild(topRightRegBox)
			topBG.addChild(topLeftRegBox)
			topBottomRegBox.graphics.beginFill(0xFF0000,0)
			topBottomRegBox.graphics.drawRect(-2,230,4,20)
			topBottomRegBox.graphics.endFill()
			topTopRegBox.graphics.beginFill(0x00FF00,0)
			topTopRegBox.graphics.drawRect(-2,-250,4,20)
			topTopRegBox.graphics.endFill()
			topRightRegBox.graphics.beginFill(0x0000FF,0)
			topRightRegBox.graphics.drawRect(230,-2,20,4)
			topRightRegBox.graphics.endFill()
			topLeftRegBox.graphics.beginFill(0x000000,0)
			topLeftRegBox.graphics.drawRect(-250,-2,20,4)
			topLeftRegBox.graphics.endFill()
			top.graphics.beginFill(0xBBBBBB - 0x2A2A2A)
			top.graphics.drawRect(-240,-240,480,480)
			top.graphics.endFill()
			//back
			var creditTitle:TextField = createTextField(lrgTextFormat,"About",-50,-225)
			var creditsFormat:TextFormat = new TextFormat("Arial",16)
			creditsFormat.align = "center"
			var creditsText:TextField = createTextField(creditsFormat,"My name is Zack, and I'm a high school student in\nGeorgia. I program in my spare time as a hobby, and\nI truly love the art involved in code. Reflex is my\nthird and most successful attempt at a game, and I\nbegan working on it quite a long time ago, but it\nwasn't until I attended GHP, an honors program in\nGeorgia, did I really get work done. I alone\nprogrammed this game, but recieved immense help\nfrom my friends in the form of feedback and support.\nI would like to extend thanks to my friend, Bardia,\nwho composed the music and helped make the\ngame what it is. Thank you for taking time to play my\ngame, and long live GHP :)",-230,-150,460,350)
			backBG.addChild(creditsText)
			backBG.addChild(creditTitle)
			backBG.addChild(backBottomRegBox)
			backBG.addChild(backTopRegBox)
			backBG.addChild(backRightRegBox)
			backBG.addChild(backLeftRegBox)
			backBottomRegBox.graphics.beginFill(0xFF0000,0)
			backBottomRegBox.graphics.drawRect(-2,230,4,20)
			backBottomRegBox.graphics.endFill()
			backTopRegBox.graphics.beginFill(0x00FF00,0)
			backTopRegBox.graphics.drawRect(-2,-250,4,20)
			backTopRegBox.graphics.endFill()
			backRightRegBox.graphics.beginFill(0x0000FF,0)
			backRightRegBox.graphics.drawRect(230,-2,20,4)
			backRightRegBox.graphics.endFill()
			backLeftRegBox.graphics.beginFill(0x000000,0)
			backLeftRegBox.graphics.drawRect(-250,-2,20,4)
			backLeftRegBox.graphics.endFill()
			back.graphics.beginFill(0xBBBBBB)
			back.graphics.drawRect(-240,-240,480,480)
			back.graphics.endFill()
			//right
			var highscoresText:TextField = createTextField(lrgTextFormat,"Highscores",-150,-225,300,40)
			var maxDistanceText:TextField = createTextField(medTextFormat,"Furthest Distance Traveled: " + maxDistance,-225,-150,450)
			var avgDistance:TextField = createTextField(medTextFormat,"Average Distance per Attempt: " + Math.round(totalDistanceTraveled / (currentAttempt - 1)),-225,-120,450)
			var maxCoinsText:TextField = createTextField(medTextFormat,"Most Coins Collected: " + maxCoins,-225,-75,450)
			var avgCoins:TextField = createTextField(medTextFormat,"Average Coins per Attempt: " + Math.round(totalCoins / (currentAttempt - 1)),-225,-45,450)
			var maxCubesText:TextField = createTextField(medTextFormat,"Most Cubes Killed: " + maxCubes,-225,0,450)
			var avgCubes:TextField = createTextField(medTextFormat,"Average Cubes Killed per Attempt: " + Math.round(deadCubes / (currentAttempt - 1)),-225,30,450)
			if (currentAttempt == 1)
			{
				avgDistance.text = "Average Distance per Attempt: 0"
				avgCoins.text = "Average Coins per Attempt: 0"
				avgCubes.text = "Average Cubes Killed per Attempt: 0"
			}
			var resetText:TextField = createTextField(smlTextFormat,"Be absolutely certain you want to reset\n your profile before pressing this.",-225,80,450,50)
			var resetButton:Sprite = new Sprite()
			resetButton.y = 130
			var resetField:TextField = createTextField(medTextFormat,"RESET",-150,-16,300,40)
			resetButton.graphics.beginFill(0x000000)
			resetButton.graphics.drawRect(-35,-15,70,30)
			resetButton.graphics.beginFill(0xFFFFFF)
			resetButton.graphics.drawRect(-33,-13,66,26)
			resetButton.graphics.endFill()
			resetButton.addChild(resetField)
			resetButton.addEventListener(TouchEvent.TOUCH_BEGIN,resetGame)
			rightBG.addChild(resetButton)
			rightBG.addChild(highscoresText)
			rightBG.addChild(maxDistanceText)
			rightBG.addChild(maxCoinsText)
			rightBG.addChild(maxCubesText)
			rightBG.addChild(avgDistance)
			rightBG.addChild(avgCoins)
			rightBG.addChild(avgCubes)
			rightBG.addChild(resetText)
			rightBG.addChild(rightBottomRegBox)
			rightBG.addChild(rightTopRegBox)
			rightBG.addChild(rightRightRegBox)
			rightBG.addChild(rightLeftRegBox)
			rightBottomRegBox.graphics.beginFill(0xFF0000,0)
			rightBottomRegBox.graphics.drawRect(-2,230,4,20)
			rightBottomRegBox.graphics.endFill()
			rightTopRegBox.graphics.beginFill(0x00FF00,0)
			rightTopRegBox.graphics.drawRect(-2,-250,4,20)
			rightTopRegBox.graphics.endFill()
			rightRightRegBox.graphics.beginFill(0x0000FF,0)
			rightRightRegBox.graphics.drawRect(230,-2,20,4)
			rightRightRegBox.graphics.endFill()
			rightLeftRegBox.graphics.beginFill(0x000000,0)
			rightLeftRegBox.graphics.drawRect(-250,-2,20,4)
			rightLeftRegBox.graphics.endFill()
			right.graphics.beginFill(0xAAAAAA)
			right.graphics.drawRect(-240,-240,480,480)
			right.graphics.endFill()
			//bottom
			var numAchievements:int = achievements.length / 6
			var completedAchievements:TextField = createTextField(coinTextFormat,"0 / " + numAchievements,-30,-207,250,26)
			var achievementsText:TextField = createTextField(lrgTextFormat,"Achievements",-150,-225,300)
			var achievementBackground:Sprite = new Sprite()
			achievementBackground.y = -400 + numAchievements * 50
			achievementBackground.graphics.beginFill(0x000000,1)
			achievementBackground.graphics.drawRect(-220,-numAchievements * 50 / 2,440,numAchievements * 50)
			var maskBox:Sprite = new Sprite()
			maskBox.graphics.beginFill(0xFFFFFF,1)
			maskBox.graphics.drawRect(-220,-180,440,400)
			maskBox.graphics.endFill()
			achievementBackground.cacheAsBitmap = true
			maskBox.cacheAsBitmap = true
			achievementBackground.mask = maskBox
			var achievementInstances:Array = []
			for (i = 0; i < numAchievements; i++)
			{
				var newAchievement:Sprite = new Sprite()
				newAchievement.graphics.beginFill(0x999999,1)
				newAchievement.graphics.drawRect(-(220 - 2),-(50 / 2 - 1.5),(440 - 80 - 2),(50 - 3))
				newAchievement.graphics.drawRect((440 - 80 + 2 - 220),-(50 / 2 - 1.5),(80 - 4),(50 - 3))
				newAchievement.graphics.endFill()
				newAchievement.y = (i - (numAchievements - 1) / 2) * 50
				achievementInstances.push(newAchievement)
				var rewardText:TextField = createTextField(smlTextFormat,"Reward:",130,-23)
				var bountyText:TextField = createTextField(medTextFormat,achievements[i * 6 + 2],130,-10)
				var achievementTitleFormat:TextFormat = new TextFormat("Arial",18,0,true)
				achievementTitleFormat.align = "left"
				var achievementTitle:TextField = createTextField(achievementTitleFormat,achievements[i * 6 + 3],-215,-25,300)
				var descriptionFormat:TextFormat = new TextFormat("Arial",14)
				descriptionFormat.align = "left"
				var descriptionText:TextField = createTextField(descriptionFormat,achievements[i * 6 + 4],-210,0,400)
				var progressFormat:TextFormat = new TextFormat("Arial",12)
				progressFormat.align = "right"
				var progressText:TextField = createTextField(progressFormat,"",-160,-20,300)
				if (achievements[i * 6] != "other")
				{
					progressText.text = This[achievements[i * 6]] + " / " + achievements[i * 6 + 1]
				}
				else
				{
					progressText.text = "0 / " + achievements[i * 6 + 1]
				}
				newAchievement.addChild(bountyText)
				newAchievement.addChild(rewardText)
				newAchievement.addChild(achievementTitle)
				newAchievement.addChild(descriptionText)
				newAchievement.addChild(progressText)
				//only add children here
				achievementBackground.addChild(newAchievement)
			}
			achievementBackground.addEventListener(Event.ENTER_FRAME,checkAchievements)
			achievementBackground.addEventListener(TouchEvent.TOUCH_BEGIN,initialScroll)
			var numCompleted:int = 0
			function checkAchievements(e:Event):void
			{
				numCompleted = 0
				for (i = 0; i < achievementInstances.length; i++)
				{
					if (achievements[i * 6 + 5])
					{
						achievementInstances[i].getChildAt(4).text = achievements[i * 6 + 1] + " / " + achievements[i * 6 + 1]
						numCompleted++
						if (achievements[i * 6] == "other")
						{
							if (achievements[i * 6 + 3] == "Slacker")
							{
								achievementInstances[i].getChildAt(3).text = "Learn how to do the least amount of work possible."
							}
							else if (achievements[i * 6 + 3] == "Worth it")
							{
								achievementInstances[i].getChildAt(3).text = "Sacrifice yourself to get a coin."
							}
							else if (achievements[i * 6 + 3] == "Inbetween the Lines")
							{
								achievementInstances[i].getChildAt(3).text = "Get extremely lucky and fly through some cracks."
							}
							else if (achievements[i * 6 + 3] == "Invincible")
							{
								achievementInstances[i].getChildAt(3).text = "Destroy an invincible cube with a shield."
							}
						}
						for (j = 0; j < achievementInstances[i].numChildren; j++)
						{
							achievementInstances[i].getChildAt(j).alpha = 0.4
						}
					}
				}
				completedAchievements.text = numCompleted + " / " + numAchievements
				if (velocity > 0 || velocity < 0)
				{
					velocity /= 1.05
				}
				if (achievementBackground.y < -achievementBackground.height / 2 + 250)
				{
					velocity = 0
					dy = 0
					achievementBackground.y = -achievementBackground.height / 2 + 250
				}
				else if (achievementBackground.y > achievementBackground.height / 2 - 210)
				{
					velocity = 0
					dy = 0
					achievementBackground.y = achievementBackground.height / 2 - 210
				}
				else
				{
					achievementBackground.y += velocity
				}
			}
			bottomBG.addChild(completedAchievements)
			bottomBG.addChild(achievementBackground)
			bottomBG.addChild(achievementsText)
			bottomBG.addChild(maskBox)
			bottomBG.addChild(bottomBottomRegBox)
			bottomBG.addChild(bottomTopRegBox)
			bottomBG.addChild(bottomRightRegBox)
			bottomBG.addChild(bottomLeftRegBox)
			bottomBottomRegBox.graphics.beginFill(0xFF0000,0)
			bottomBottomRegBox.graphics.drawRect(-2,230,4,20)
			bottomBottomRegBox.graphics.endFill()
			bottomTopRegBox.graphics.beginFill(0x00FF00,0)
			bottomTopRegBox.graphics.drawRect(-2,-250,4,20)
			bottomTopRegBox.graphics.endFill()
			bottomRightRegBox.graphics.beginFill(0x0000FF,0)
			bottomRightRegBox.graphics.drawRect(230,-2,20,4)
			bottomRightRegBox.graphics.endFill()
			bottomLeftRegBox.graphics.beginFill(0x000000,0)
			bottomLeftRegBox.graphics.drawRect(-250,-2,20,4)
			bottomLeftRegBox.graphics.endFill()
			bottom.graphics.beginFill(0xBBBBBB - 0x2A2A2A)
			bottom.graphics.drawRect(-240,-240,480,480)
			bottom.graphics.endFill()
			
			front.z = -260
			back.z = 260
			left.rotationY = 90
			top.rotationX = -90
			right.rotationY = -90
			bottom.rotationX = 90
			back.rotationY = 180
			left.x = -260
			top.y = -260
			right.x = 260
			bottom.y = 260
			right.addEventListener(TouchEvent.TOUCH_OVER,rotateRightControl)
			left.addEventListener(TouchEvent.TOUCH_OVER,rotateLeftControl)
			top.addEventListener(TouchEvent.TOUCH_OVER,rotateUpControl)
			bottom.addEventListener(TouchEvent.TOUCH_OVER,rotateDownControl)
			function initialScroll(e:TouchEvent):void
			{
				velocity = 0
				dy = 0
				if (gameOrientation == "horizontal")
				{
					beginningY = -e.stageX - 480 - e.currentTarget.y
				}
				else if (gameOrientation == "vertical")
				{
					beginningY = e.stageY - 480 - e.currentTarget.y
				}
				e.currentTarget.removeEventListener(TouchEvent.TOUCH_BEGIN,initialScroll)
				e.currentTarget.addEventListener(TouchEvent.TOUCH_END,endScroll)
				e.currentTarget.addEventListener(TouchEvent.TOUCH_MOVE,pleaseScroll)
			}
			function pleaseScroll(e:TouchEvent):void
			{
				if (gameOrientation == "horizontal")
				{
					if (e.currentTarget.y >= -e.currentTarget.height / 2 && e.currentTarget.y <= e.currentTarget.height / 2)
					{
						dy = (-e.stageX - 480 - beginningY) - e.currentTarget.y
						e.currentTarget.y = -e.stageX - 480 - beginningY
					}
				}
				else if (gameOrientation == "vertical")
				{
					if (e.currentTarget.y >= -e.currentTarget.height / 2 && e.currentTarget.y <= e.currentTarget.height / 2)
					{
						dy = (e.stageY - 480 - beginningY) - e.currentTarget.y
						e.currentTarget.y = e.stageY - 480 - beginningY
					}
				}
			}
			function endScroll(e:TouchEvent):void
			{
				velocity = dy
				e.currentTarget.addEventListener(TouchEvent.TOUCH_BEGIN,initialScroll)
				e.currentTarget.removeEventListener(TouchEvent.TOUCH_END,endScroll)
				e.currentTarget.removeEventListener(TouchEvent.TOUCH_MOVE,pleaseScroll)
			}
			var currentShell:Sprite = new Sprite()
			currentShell.addChild(cube)
			addChild(currentShell)
			var previousShell:Sprite = new Sprite()
			currentShell.x = 320
			currentShell.y = 480
			currentShell.z = 200
			var outerTextFormat:TextFormat = new TextFormat("Arial",20,0x000000)
			outerTextFormat.align = "center"
			var topSideText:TextField = createTextField(outerTextFormat,"Upgrades",-100,-360,200,30)
			var leftSideText:TextField = createTextField(outerTextFormat,"Options",-360,100,200,30)
			var bottomSideText:TextField = createTextField(outerTextFormat,"Achievements",-100,330,200,30)
			var rightSideText:TextField = createTextField(outerTextFormat,"Highscores",360,-100,200,30)
			leftSideText.rotationZ = -90
			rightSideText.rotationZ = 90
			currentShell.addChild(topSideText)
			currentShell.addChild(leftSideText)
			currentShell.addChild(bottomSideText)
			currentShell.addChild(rightSideText)
			if (menuTutorial)
			{
				addEventListener(Event.ENTER_FRAME,tutoriate)
				front.addChild(frontTutorialContainer)
			}
			function rotateRightControl(e:TouchEvent):void
			{
				removeListeners()
				e.currentTarget.addEventListener(Event.ENTER_FRAME,rotate)
				timer = 0.
				function rotate(e:Event):void
				{
					timer++
					currentShell.rotationY += 90 / 832.5 * (50 - Math.pow(timer / 2 - 5,2))
					if (timer == 1)
					{
						e.currentTarget.addChild(sideArray[cube.getChildIndex(e.currentTarget as Sprite)])
						currentShell.removeChild(topSideText)
						currentShell.removeChild(leftSideText)
						currentShell.removeChild(bottomSideText)
						currentShell.removeChild(rightSideText)
					}
					if (timer == 2)
					{
						if (!sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 2).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 1)))
						{
							if (sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 2).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 4)))
							{
								sideArray[cube.getChildIndex(e.currentTarget as Sprite)].rotationZ -= 90
							}
							else if (sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 2).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 2)))
							{
								sideArray[cube.getChildIndex(e.currentTarget as Sprite)].rotationZ += 180
							}
							else if (sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 2).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 3)))
							{
								sideArray[cube.getChildIndex(e.currentTarget as Sprite)].rotationZ += 90
							}
						}
					}
					if (timer == 5)
					{
						placeHolder = sideArray[cube.getChildIndex(e.currentTarget as Sprite)]
						sideArray[cube.getChildIndex(e.currentTarget as Sprite)] = sideArray[cube.getChildIndex(currentSide)]
						sideArray[cube.getChildIndex(currentSide)] = placeHolder
						cube.swapChildren(e.currentTarget as Sprite,currentSide)
						placeHolder = sideArray[cube.getChildIndex(currentSide)]
						sideArray[cube.getChildIndex(currentSide)] = sideArray[4]
						sideArray[4] = placeHolder
						cube.swapChildren(currentSide,cube.getChildAt(4))
						var outerTextFormat:TextFormat = new TextFormat("Arial",20,0x000000)
					}
					if (timer == 15)
					{
						currentSide.removeChildAt(0)
					}
					if (timer >= 20)
					{
						currentShell.rotationY = 90
						removeChild(currentShell)
						previousShell = currentShell
						currentShell = new Sprite()
						currentShell.addChild(previousShell)
						previousShell.x = 0
						previousShell.y = 0
						previousShell.z = 0
						addChild(currentShell)
						currentShell.x = 320
						currentShell.y = 480
						currentShell.z = 200
						var currentI:int = 0
						currentShell.addChild(topSideText)
						currentShell.addChild(leftSideText)
						currentShell.addChild(bottomSideText)
						currentShell.addChild(rightSideText)
						for (i = sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 4; i < sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren; i++)
						{
							for (j = 0; j < cube.numChildren; j++)
							{
								if (sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(i).hitTestObject(cube.getChildAt(j)) && cube.getChildAt(j) != e.currentTarget as Sprite)
								{
									if (currentI == 0)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateDownControl)
										bottomSideText.text = returnText(cube.getChildAt(j))
									}
									else if (currentI == 1)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateUpControl)
										topSideText.text = returnText(cube.getChildAt(j))
									}
									else if (currentI == 2)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateRightControl)
										rightSideText.text = returnText(cube.getChildAt(j))
									}
									else if (currentI == 3)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateLeftControl)
										leftSideText.text = returnText(cube.getChildAt(j))
									}
								}
							}
							currentI++
						}
						currentSide = sideArray[cube.getChildIndex(e.currentTarget as Sprite)].parent
						e.currentTarget.removeEventListener(Event.ENTER_FRAME,rotate)
					}
				}
			}
			function rotateLeftControl(e:TouchEvent):void
			{
				removeListeners()
				e.currentTarget.addEventListener(Event.ENTER_FRAME,rotate)
				timer = 0
				function rotate(e:Event):void
				{
					timer++
					currentShell.rotationY -= 90 / 832.5 * (50 - Math.pow(timer / 2 - 5,2))
					if (timer == 1)
					{
						e.currentTarget.addChild(sideArray[cube.getChildIndex(e.currentTarget as Sprite)])
						currentShell.removeChild(topSideText)
						currentShell.removeChild(leftSideText)
						currentShell.removeChild(bottomSideText)
						currentShell.removeChild(rightSideText)
					}
					if (timer == 2)
					{
						if (!sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 1).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 2)))
						{
							if (sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 1).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 3)))
							{
								sideArray[cube.getChildIndex(e.currentTarget as Sprite)].rotationZ -= 90
							}
							else if (sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 1).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 1)))
							{
								sideArray[cube.getChildIndex(e.currentTarget as Sprite)].rotationZ += 180
							}
							else if (sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 1).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 4)))
							{
								sideArray[cube.getChildIndex(e.currentTarget as Sprite)].rotationZ += 90
							}
						}
					}
					if (timer == 5)
					{
						if (menuTutorial)
						{
							left.addChild(leftTutorialContainer)
						}
						placeHolder = sideArray[cube.getChildIndex(e.currentTarget as Sprite)]
						sideArray[cube.getChildIndex(e.currentTarget as Sprite)] = sideArray[cube.getChildIndex(currentSide)]
						sideArray[cube.getChildIndex(currentSide)] = placeHolder
						cube.swapChildren(e.currentTarget as Sprite,currentSide)
						placeHolder = sideArray[cube.getChildIndex(currentSide)]
						sideArray[cube.getChildIndex(currentSide)] = sideArray[4]
						sideArray[4] = placeHolder
						cube.swapChildren(currentSide,cube.getChildAt(4))
					}
					if (timer == 15)
					{
						if (menuTutorial)
						{
							front.removeChild(frontTutorialContainer)
						}
						currentSide.removeChildAt(0)
					}
					if (timer >= 20)
					{
						currentShell.rotationY = -90
						removeChild(currentShell)
						previousShell = currentShell
						currentShell = new Sprite()
						currentShell.addChild(previousShell)
						previousShell.x = 0
						previousShell.y = 0
						previousShell.z = 0
						addChild(currentShell)
						currentShell.x = 320
						currentShell.y = 480
						currentShell.z = 200
						var currentI:int = 0
						currentShell.addChild(topSideText)
						currentShell.addChild(leftSideText)
						currentShell.addChild(bottomSideText)
						currentShell.addChild(rightSideText)
						for (i = sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 4; i < sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren; i++)
						{
							for (j = 0; j < cube.numChildren; j++)
							{
								if (sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(i).hitTestObject(cube.getChildAt(j)) && cube.getChildAt(j) != e.currentTarget as Sprite)
								{
									if (currentI == 0)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateDownControl)
										bottomSideText.text = returnText(cube.getChildAt(j))
									}
									else if (currentI == 1)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateUpControl)
										topSideText.text = returnText(cube.getChildAt(j))
									}
									else if (currentI == 2)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateRightControl)
										rightSideText.text = returnText(cube.getChildAt(j))
									}
									else if (currentI == 3)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateLeftControl)
										leftSideText.text = returnText(cube.getChildAt(j))
									}
								}
							}
							currentI++
						}
						currentSide = sideArray[cube.getChildIndex(e.currentTarget as Sprite)].parent
						e.currentTarget.removeEventListener(Event.ENTER_FRAME,rotate)
					}
				}
			}
			function rotateUpControl(e:TouchEvent):void
			{
				removeListeners()
				e.currentTarget.addEventListener(Event.ENTER_FRAME,rotate)
				timer = 0
				var startingRotation:Number = cube.rotationX
				function rotate(e:Event):void
				{
					timer++
					currentShell.rotationX += 90 / 832.5 * (50 - Math.pow(timer / 2 - 5,2))
					if (timer == 1)
					{
						e.currentTarget.addChild(sideArray[cube.getChildIndex(e.currentTarget as Sprite)])
						currentShell.removeChild(topSideText)
						currentShell.removeChild(leftSideText)
						currentShell.removeChild(bottomSideText)
						currentShell.removeChild(rightSideText)
					}
					if (timer == 2)
					{
						if (!sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 3).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 4)))
						{
							if (sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 3).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 1)))
							{
								sideArray[cube.getChildIndex(e.currentTarget as Sprite)].rotationZ += 90
								//left
							}
							else if (sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 3).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 3)))
							{
								sideArray[cube.getChildIndex(e.currentTarget as Sprite)].rotationZ += 180
								//top
							}
							else if (sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 3).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 2)))
							{
								sideArray[cube.getChildIndex(e.currentTarget as Sprite)].rotationZ -= 90
								//right
							}
						}
					}
					if (timer == 5)
					{
						placeHolder = sideArray[cube.getChildIndex(e.currentTarget as Sprite)]
						sideArray[cube.getChildIndex(e.currentTarget as Sprite)] = sideArray[cube.getChildIndex(currentSide)]
						sideArray[cube.getChildIndex(currentSide)] = placeHolder
						cube.swapChildren(e.currentTarget as Sprite,currentSide)
						placeHolder = sideArray[cube.getChildIndex(currentSide)]
						sideArray[cube.getChildIndex(currentSide)] = sideArray[4]
						sideArray[4] = placeHolder
						cube.swapChildren(currentSide,cube.getChildAt(4))
					}
					if (timer == 15)
					{
						currentSide.removeChildAt(0)
					}
					if (timer >= 20)
					{
						currentShell.rotationX = 90
						removeChild(currentShell)
						previousShell = currentShell
						currentShell = new Sprite()
						currentShell.addChild(previousShell)
						previousShell.x = 0
						previousShell.y = 0
						previousShell.z = 0
						addChild(currentShell)
						currentShell.x = 320
						currentShell.y = 480
						currentShell.z = 200
						var currentI:int = 0
						currentShell.addChild(topSideText)
						currentShell.addChild(leftSideText)
						currentShell.addChild(bottomSideText)
						currentShell.addChild(rightSideText)
						for (i = sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 4; i < sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren; i++)
						{
							for (j = 0; j < cube.numChildren; j++)
							{
								if (sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(i).hitTestObject(cube.getChildAt(j)) && cube.getChildAt(j) != e.currentTarget as Sprite)
								{
									if (currentI == 0)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateDownControl)
										bottomSideText.text = returnText(cube.getChildAt(j))
									}
									else if (currentI == 1)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateUpControl)
										topSideText.text = returnText(cube.getChildAt(j))
									}
									else if (currentI == 2)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateRightControl)
										rightSideText.text = returnText(cube.getChildAt(j))
									}
									else if (currentI == 3)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateLeftControl)
										leftSideText.text = returnText(cube.getChildAt(j))
									}
								}
							}
							currentI++
						}
						currentSide = sideArray[cube.getChildIndex(e.currentTarget as Sprite)].parent
						e.currentTarget.removeEventListener(Event.ENTER_FRAME,rotate)
					}
				}
			}
			function rotateDownControl(e:TouchEvent):void
			{
				removeListeners()
				e.currentTarget.addEventListener(Event.ENTER_FRAME,rotate)
				timer = 0
				function rotate(e:Event):void
				{
					timer++
					currentShell.rotationX -= 90 / 832.5 * (50 - Math.pow(timer / 2 - 5,2))
					if (timer == 1)
					{
						e.currentTarget.addChild(sideArray[cube.getChildIndex(e.currentTarget as Sprite)])
						currentShell.removeChild(topSideText)
						currentShell.removeChild(leftSideText)
						currentShell.removeChild(bottomSideText)
						currentShell.removeChild(rightSideText)
					}
					if (timer == 2)
					{
						if (!sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 4).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 3)))
						{
							if (sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 4).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 2)))
							{
								sideArray[cube.getChildIndex(e.currentTarget as Sprite)].rotationZ += 90
							}
							else if (sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 4).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 4)))
							{
								sideArray[cube.getChildIndex(e.currentTarget as Sprite)].rotationZ += 180
							}
							else if (sideArray[cube.getChildIndex(currentSide)].getChildAt(sideArray[cube.getChildIndex(currentSide)].numChildren - 4).hitTestObject(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 1)))
							{
								sideArray[cube.getChildIndex(e.currentTarget as Sprite)].rotationZ -= 90
							}
						}
					}
					if (timer == 5)
					{
						placeHolder = sideArray[cube.getChildIndex(e.currentTarget as Sprite)]
						sideArray[cube.getChildIndex(e.currentTarget as Sprite)] = sideArray[cube.getChildIndex(currentSide)]
						sideArray[cube.getChildIndex(currentSide)] = placeHolder
						cube.swapChildren(e.currentTarget as Sprite,currentSide)
						placeHolder = sideArray[cube.getChildIndex(currentSide)]
						sideArray[cube.getChildIndex(currentSide)] = sideArray[4]
						sideArray[4] = placeHolder
						cube.swapChildren(currentSide,cube.getChildAt(4))
						e.currentTarget.addChild(sideArray[cube.getChildIndex(e.currentTarget as Sprite)])
					}
					if (timer == 15)
					{
						currentSide.removeChildAt(0)
					}
					if (timer >= 20)
					{
						currentShell.rotationX = -90
						removeChild(currentShell)
						previousShell = currentShell
						currentShell = new Sprite()
						currentShell.addChild(previousShell)
						previousShell.x = 0
						previousShell.y = 0
						previousShell.z = 0
						addChild(currentShell)
						currentShell.x = 320
						currentShell.y = 480
						currentShell.z = 200
						var currentI:int = 0
						currentShell.addChild(topSideText)
						currentShell.addChild(leftSideText)
						currentShell.addChild(bottomSideText)
						currentShell.addChild(rightSideText)
						for (i = sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren - 4; i < sideArray[cube.getChildIndex(e.currentTarget as Sprite)].numChildren; i++)
						{
							for (j = 0; j < cube.numChildren; j++)
							{
								if (sideArray[cube.getChildIndex(e.currentTarget as Sprite)].getChildAt(i).hitTestObject(cube.getChildAt(j)) && cube.getChildAt(j) != e.currentTarget as Sprite)
								{
									if (currentI == 0)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateDownControl)
										bottomSideText.text = returnText(cube.getChildAt(j))
									}
									else if (currentI == 1)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateUpControl)
										topSideText.text = returnText(cube.getChildAt(j))
									}
									else if (currentI == 2)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateRightControl)
										rightSideText.text = returnText(cube.getChildAt(j))
									}
									else if (currentI == 3)
									{
										cube.getChildAt(j).addEventListener(TouchEvent.TOUCH_OVER,rotateLeftControl)
										leftSideText.text = returnText(cube.getChildAt(j))
									}
								}
							}
							currentI++
						}
						currentSide = sideArray[cube.getChildIndex(e.currentTarget as Sprite)].parent
						e.currentTarget.removeEventListener(Event.ENTER_FRAME,rotate)
					}
				}
			}
			function removeListeners():void
			{
				saveData()
				for (i = 0; i < cube.numChildren; i++)
				{
					cube.getChildAt(i).removeEventListener(TouchEvent.TOUCH_OVER,rotateRightControl)
					cube.getChildAt(i).removeEventListener(TouchEvent.TOUCH_OVER,rotateLeftControl)
					cube.getChildAt(i).removeEventListener(TouchEvent.TOUCH_OVER,rotateUpControl)
					cube.getChildAt(i).removeEventListener(TouchEvent.TOUCH_OVER,rotateDownControl)
				}
			}
			function startGame(e:TouchEvent):void
			{
				achievementBackground.removeEventListener(Event.ENTER_FRAME,checkAchievements)
				achievementBackground.removeEventListener(TouchEvent.TOUCH_BEGIN,initialScroll)
				upgradesScreen.removeEventListener(Event.ENTER_FRAME,checkItems)
				upgradesScreen.removeEventListener(TouchEvent.TOUCH_BEGIN,upgradeEquipItem)
				upgradesScreen.removeEventListener(TouchEvent.TOUCH_BEGIN,initialScroll)
				upgradesScreen.removeEventListener(Event.ENTER_FRAME,checkBoundary)
				e.currentTarget.removeEventListener(TouchEvent.TOUCH_BEGIN,startGame)
				resetButton.removeEventListener(TouchEvent.TOUCH_BEGIN,resetGame)
				tutorialContainer.removeEventListener(TouchEvent.TOUCH_BEGIN,switchTutorial)
				musicBar.removeEventListener(TouchEvent.TOUCH_MOVE,changeMusicVolume)
				whiteText.removeEventListener(TouchEvent.TOUCH_BEGIN,swapBackgroundColors)
				blackText.removeEventListener(TouchEvent.TOUCH_BEGIN,swapBackgroundColors)
				horizontalText.removeEventListener(TouchEvent.TOUCH_BEGIN,changeOrientation)
				verticalText.removeEventListener(TouchEvent.TOUCH_BEGIN,changeOrientation)
				removeListeners()
				var client:Sprite
				if (gameTutorial)
				{
					currentPowerup = "Bullets"
				}
				if (currentPowerup == "Bullets")
				{
					client = new Client(die,currentPowerup,currentBulletsLevel,currentAgilityLevel,totalExp,currentRacerLevel,achievements,gameTutorial,totalCoins,coinFreq,powerupFreq,createTextField,deadCubes,backgroundClr,currentAttempt,gameOrientation,invertAxes)
				}
				else if (currentPowerup == "Rockets")
				{
					client = new Client(die,currentPowerup,currentRocketsLevel,currentAgilityLevel,totalExp,currentRacerLevel,achievements,gameTutorial,totalCoins,coinFreq,powerupFreq,createTextField,deadCubes,backgroundClr,currentAttempt,gameOrientation,invertAxes)
				}
				else if (currentPowerup == "Shield")
				{
					client = new Client(die,currentPowerup,currentShieldLevel,currentAgilityLevel,totalExp,currentRacerLevel,achievements,gameTutorial,totalCoins,coinFreq,powerupFreq,createTextField,deadCubes,backgroundClr,currentAttempt,gameOrientation,invertAxes)
				}
				else if (currentPowerup == "Teleport")
				{
					client = new Client(die,currentPowerup,currentTeleportLevel,currentAgilityLevel,totalExp,currentRacerLevel,achievements,gameTutorial,totalCoins,coinFreq,powerupFreq,createTextField,deadCubes,backgroundClr,currentAttempt,gameOrientation,invertAxes)
				}
				currentShell.removeChild(topSideText)
				currentShell.removeChild(leftSideText)
				currentShell.removeChild(bottomSideText)
				currentShell.removeChild(rightSideText)
				gameTutorial = false
				This.addChild(client)
				var detPointX:Number = Math.random() * 50 - 25
				var detPointY:Number = Math.random() * 50 - 25
				var detPointZ:Number = Math.random() * 50 - 25
				addEventListener(Event.ENTER_FRAME,fadeSides)
				function fadeSides(e:Event):void
				{
					for (var i:int = 0; i < cube.numChildren; i++)
					{
						if (cube.getChildAt(i).alpha > 0)
						{
							cube.getChildAt(i).alpha -= 0.07
							cube.getChildAt(i).x *= 1.1
							cube.getChildAt(i).y *= 1.1
							cube.getChildAt(i).rotationX += Math.acos((detPointX - cube.getChildAt(i).x) / Math.sqrt(Math.pow(detPointX - cube.getChildAt(i).x,2) + Math.pow(detPointY - cube.getChildAt(i).y,2) + Math.pow(detPointZ - cube.getChildAt(i).z,2)))
							cube.getChildAt(i).rotationY += Math.acos((detPointY - cube.getChildAt(i).y) / Math.sqrt(Math.pow(detPointX - cube.getChildAt(i).x,2) + Math.pow(detPointY - cube.getChildAt(i).y,2) + Math.pow(detPointZ - cube.getChildAt(i).z,2)))
							cube.getChildAt(i).rotationY += Math.acos((detPointZ - cube.getChildAt(i).z) / Math.sqrt(Math.pow(detPointX - cube.getChildAt(i).x,2) + Math.pow(detPointY - cube.getChildAt(i).y,2) + Math.pow(detPointZ - cube.getChildAt(i).z,2)))
						}
						else
						{
							currentShell.removeChild(currentShell.getChildAt(0))
							removeEventListener(Event.ENTER_FRAME,fadeSides)
							break
						}
					}
				}
			}
			function resetGame(e:TouchEvent):void
			{
				achievementBackground.removeEventListener(Event.ENTER_FRAME,checkAchievements)
				achievementBackground.removeEventListener(TouchEvent.TOUCH_BEGIN,initialScroll)
				upgradesScreen.removeEventListener(Event.ENTER_FRAME,checkItems)
				upgradesScreen.removeEventListener(TouchEvent.TOUCH_BEGIN,upgradeEquipItem)
				upgradesScreen.removeEventListener(TouchEvent.TOUCH_BEGIN,initialScroll)
				upgradesScreen.removeEventListener(Event.ENTER_FRAME,checkBoundary)
				e.currentTarget.removeEventListener(TouchEvent.TOUCH_BEGIN,resetGame)
				startButton.removeEventListener(TouchEvent.TOUCH_BEGIN,startGame)
				tutorialContainer.removeEventListener(TouchEvent.TOUCH_BEGIN,switchTutorial)
				musicBar.removeEventListener(TouchEvent.TOUCH_MOVE,changeMusicVolume)
				whiteText.removeEventListener(TouchEvent.TOUCH_BEGIN,swapBackgroundColors)
				blackText.removeEventListener(TouchEvent.TOUCH_BEGIN,swapBackgroundColors)
				horizontalText.removeEventListener(TouchEvent.TOUCH_BEGIN,changeOrientation)
				verticalText.removeEventListener(TouchEvent.TOUCH_BEGIN,changeOrientation)
				removeListeners()
				currentShell.removeChild(currentShell.getChildAt(0))
				resetStats(true)
			}
			function tutoriate(e:Event)
			{
				tutorialTimer++
				if (tutorialTimer % 40 > 20)
				{
					frontTutorialContainer.alpha += 1 / 20
					leftTutorialContainer.alpha += 1 / 20
				}
				else if (tutorialTimer % 40 == 20)
				{
					frontTutorialContainer.alpha = 0
					leftTutorialContainer.alpha = 0
				}
				else if (tutorialTimer % 40 < 20 && tutorialTimer % 40 != 0)
				{
					frontTutorialContainer.alpha -= 1 / 20
					leftTutorialContainer.alpha -= 1 / 20
				}
				else if (tutorialTimer % 40 == 0)
				{
					frontTutorialContainer.alpha = 1
					leftTutorialContainer.alpha = 1
				}
			}
			function clearTutorial(e:TouchEvent):void
			{
				removeEventListener(Event.ENTER_FRAME,tutoriate)
				left.removeChild(leftTutorialContainer)
				menuTutorial = false
			}
			function returnText(face:Sprite):String
			{
				if (face == front)
				{
					return "Main"
				}
				else if (face == back)
				{
					return "Credits"
				}
				else if (face == right)
				{
					return "Highscores"
				}
				else if (face == left)
				{
					return "Options"
				}
				else if (face == top)
				{
					return "Upgrades"
				}
				else if (face == bottom)
				{
					return "Achievements"
				}
				return ""
			}
		}
		public function die(client:Sprite,distance:int,coins:int,totalCubes:int,exp:int,level:int,nextLevelExp:int,finishedAchievements:Array):void
		{
			if (distance > maxDistance)
			{
				maxDistance = distance
			}
			if (coins > maxCoins)
			{
				maxCoins = coins
			}
			if (totalCubes > maxCubes)
			{
				maxCubes = totalCubes
			}
			currentAttempt++
			totalDistanceTraveled += distance
			distanceTraveled = distance
			totalCoins += coins
			currentCoins += coins
			deadCubes += totalCubes
			totalExp = exp
			var timer:int = 0
			var i:int
			var blackBG:Sprite = new Sprite()
			blackBG.graphics.beginFill(0x000000,1)
			blackBG.graphics.drawRect(-200,-200,1040,1360)
			blackBG.graphics.endFill()
			blackBG.alpha = 0
			var titleFormat:TextFormat = new TextFormat()
			titleFormat.font = "Arial"
			titleFormat.size = 30
			titleFormat.align = "center"
			titleFormat.color = 0xFFFFFF
			var textFormat:TextFormat = new TextFormat()
			textFormat.font = "Arial"
			textFormat.size = 18
			textFormat.align = "center"
			textFormat.color = 0xFFFFFF
			var titleText:TextField = createTextField(titleFormat,"Attempt " + currentAttempt + ":",170,40,300)
			var distanceText:TextField = createTextField(textFormat,"Distance Traveled: " + distance,170,100,300)
			var coinText:TextField = createTextField(textFormat,"Coins Collected: " + coins,170,140,300)
			var cubeText:TextField = createTextField(textFormat,"Cubes Slaughtered: " + totalCubes,170,180,300)
			var levelText:TextField = createTextField(textFormat,"Level Ups: " + (level - currentRacerLevel),170,220,300)
			var totalTitleText:TextField = createTextField(titleFormat,"Totals:",170,340,300)
			var totalDistanceText:TextField = createTextField(textFormat,"Distance Traveled: " + totalDistanceTraveled,170,400,300)
			var totalCoinText:TextField = createTextField(textFormat,"Coins Collected: " + totalCoins,170,440,300)
			var totalCubeText:TextField = createTextField(textFormat,"Cubes Slaughtered: " + deadCubes,170,480,300)
			var totalLevelText:TextField = createTextField(textFormat,"Current Level: " + level,170,520,300)
			var progressText:TextField = createTextField(textFormat,"",20,560,600)
			if (level == 10)
			{
				progressText.text = "Progress Until Next Level: You've reached the max level!"
			}
			else
			{
				progressText.text = "Progress Until Next Level: " + Math.floor(100 * exp / nextLevelExp) + "%"
			}
			var achievementTitle:TextField = createTextField(titleFormat,"Achievements",170,640,300)
			if (gameOrientation == "horizontal")
			{
				titleText.x = -10
				titleText.y = 200
				distanceText.x = -10
				distanceText.y = 260
				coinText.x = -10
				coinText.y = 300
				cubeText.x = -10
				cubeText.y = 340
				levelText.x = -10
				levelText.y = 380
				totalTitleText.x = 330
				totalTitleText.y = 200
				totalDistanceText.x = 330
				totalDistanceText.y = 260
				totalCoinText.x = 330
				totalCoinText.y = 300
				totalCubeText.x = 330
				totalCubeText.y = 340
				totalLevelText.x = 330
				totalLevelText.y = 380
				progressText.y = 450
				achievementTitle.y = 530
			}
			for (i = 0; i < finishedAchievements.length / 2; i++)
			{
				var achievementFormat:TextFormat = new TextFormat("Arial",15,0xFFFFFF)
				achievementFormat.align = "center"
				var achievementText:TextField
				if (gameOrientation == "vertical")
				{
					achievementText = createTextField(achievementFormat,finishedAchievements[i * 2] + " - " + finishedAchievements[i * 2 + 1],170 + Math.pow(-1,i) * 120,685 + 16 * i + Math.pow(-1,i) * 8,300)
				}
				else
				{
					achievementText = createTextField(achievementFormat,finishedAchievements[i * 2] + " - " + finishedAchievements[i * 2 + 1],170 + Math.pow(-1,i) * 120,575 + 16 * i + Math.pow(-1,i) * 8,300)
				}
				if (i == finishedAchievements.length / 2 - 1 && !(finishedAchievements.length / 4 is int))
				{
					achievementText.x = 170
				}
				blackBG.addChild(achievementText)
			}
			currentRacerLevel = level
			blackBG.addChild(titleText)
			blackBG.addChild(distanceText)
			blackBG.addChild(coinText)
			blackBG.addChild(cubeText)
			blackBG.addChild(levelText)
			blackBG.addChild(totalTitleText)
			blackBG.addChild(totalDistanceText)
			blackBG.addChild(totalCoinText)
			blackBG.addChild(totalCubeText)
			blackBG.addChild(totalLevelText)
			blackBG.addChild(progressText)
			blackBG.addChild(achievementTitle)
			addChild(blackBG)
			client.addEventListener(Event.ENTER_FRAME,fadeOut)
			saveData()
			savedData.flush()
			function fadeOut(e:Event):void
			{
				blackBG.alpha = timer / 90
				timer++
				if (timer > 90)
				{
					client.removeEventListener(Event.ENTER_FRAME,fadeOut)
					if (This.contains(client))
					{
						This.removeChild(client)
					}
					blackBG.addEventListener(TouchEvent.TOUCH_END,reset)
				}
			}
		}
		public function reset(e:TouchEvent):void
		{
			while (This.numChildren > 1)
			{
				This.removeChildAt(1)
			}
			e.currentTarget.removeEventListener(TouchEvent.TOUCH_END,reset)
			startMenu()
		}
		public function resetStats(newMenu:Boolean):void
		{
			currentAttempt = 1
			totalDistanceTraveled = 0
			distanceTraveled = 0
			totalCoins = 0
			currentCoins = 0
			deadCubes = 0
			currentRacerLevel = 1
			currentRocketsLevel = 1
			currentBulletsLevel = 1
			currentTeleportLevel = 1
			currentShieldLevel = 1
			currentAgilityLevel = 1
			currentPowerup = "Bullets"
			totalExp = 0
			maxDistance = 0
			maxCoins = 0
			maxCubes = 0
			coinFreq = 1
			powerupFreq = 1
			musicVolume = 100
			backgroundClr = "Black"
			gameOrientation = "vertical"
			achievements = ["deadCubes",1,10,"Beginner's Luck","Mercilessly destroy your first cube.",false,
							"totalCoins",1,10,"Scrapper","Collect a coin, hope it was heads-up.",false,
							"distanceTraveled",25000,15,"Baby Steps","They're so cute the first time they travel 25,000 pixels.",false,
							"currentRacerLevel",2,15,"Movin' up in the World","Level 2 is where all the ladies are at.",false,
							"deadCubes",100,25,"The Usual Suspect","Strike down 100 cubes in cold blood.",false,
							"totalCoins",200,25,"Pay it Inward","Fail to reciprocate 200 coins.",false,
							"distanceTraveled",100000,40,"Run Forrest","I may not be a smart man, but I traveled 100,000 pixels.",false,
							"deadCubes",500,50,"Bloodthirsty","Widow at least 500 cube wives.",false,
							"totalCoins",750,50,"Greed is a Sin","Confess to stealing at least 750 coins (or don't).",false,
							"distanceTraveled",500000,90,"Is Something Behind Me?","Sharks don't look back either.",false,
							"currentRacerLevel",5,100,"Five-O","This level has my favorite cube color :D",false,
							"deadCubes",1000,100,"Cubicicde","Killing them is easier than avoiding them.",false,
							"totalCoins",1500,100,"Don't Even Need a Reservation","If you've got money there's no need to pay.",false,
							"distanceTraveled",1000000,200,"Go Outside","Earn a million of something more real.",false,
							"currentRacerLevel",10,250,"Professional or Persistent","You've tasted the rainbow.",false,
							"other",1,5,"Learn","Finish the tutorial (so hard isn't it).",false,
							"currentAttempt",100,50,"Dead-ication","Cats don't even have this many lives.",false,
							"other",1,20,"Worth it","This is a secret achievement.",false,
							"other",1,25,"Slacker","This is a secret achievement.",false,
							"other",1,100,"Invincible","This is a secret achievement.",false]
			menuTutorial = true
			gameTutorial = true
			invertAxes = false
			saveData()
			if (newMenu)
			{
				startMenu()
			}
		}
		public function loadData():void
		{
			currentAttempt = savedData.data.currentAttempt
			totalDistanceTraveled = savedData.data.totalDistanceTraveled
			distanceTraveled = savedData.data.distanceTraveled
			totalCoins = savedData.data.totalCoins
			currentCoins = savedData.data.currentCoins
			deadCubes = savedData.data.deadCubes
			currentRacerLevel = savedData.data.currentRacerLevel
			currentRocketsLevel = savedData.data.currentRocketsLevel
			currentBulletsLevel = savedData.data.currentBulletsLevel
			currentTeleportLevel = savedData.data.currentTeleportLevel
			currentShieldLevel = savedData.data.currentShieldLevel
			currentAgilityLevel = savedData.data.currentAgilityLevel
			currentPowerup = savedData.data.currentPowerup
			totalExp = savedData.data.totalExp
			maxDistance = savedData.data.maxDistance
			maxCoins = savedData.data.maxCoins
			maxCubes = savedData.data.maxCubes
			coinFreq = savedData.data.coinFreq
			powerupFreq = savedData.data.powerupFreq
			achievements = savedData.data.achievements
			menuTutorial = savedData.data.menuTutorial
			gameTutorial = savedData.data.gameTutorial
			musicVolume = savedData.data.musicVolume
			backgroundClr = savedData.data.backgroundClr
			gameOrientation = savedData.data.gameOrientation
			invertAxes = savedData.data.invertAxes
		}
		public function saveData():void
		{
			savedData.data.currentAttempt = currentAttempt
			savedData.data.totalDistanceTraveled = totalDistanceTraveled
			savedData.data.distanceTraveled = distanceTraveled
			savedData.data.totalCoins = totalCoins
			savedData.data.currentCoins = currentCoins
			savedData.data.deadCubes = deadCubes
			savedData.data.currentRacerLevel = currentRacerLevel
			savedData.data.currentRocketsLevel = currentRocketsLevel
			savedData.data.currentBulletsLevel = currentBulletsLevel
			savedData.data.currentTeleportLevel = currentTeleportLevel
			savedData.data.currentShieldLevel = currentShieldLevel
			savedData.data.currentAgilityLevel = currentAgilityLevel
			savedData.data.currentPowerup = currentPowerup
			savedData.data.totalExp = totalExp
			savedData.data.maxDistance = maxDistance
			savedData.data.maxCoins = maxCoins
			savedData.data.maxCubes = maxCubes
			savedData.data.coinFreq = coinFreq
			savedData.data.powerupFreq = powerupFreq
			savedData.data.achievements = achievements
			savedData.data.menuTutorial = menuTutorial
			savedData.data.gameTutorial = gameTutorial
			savedData.data.musicVolume = musicVolume
			savedData.data.backgroundClr = backgroundClr
			savedData.data.gameOrientation = gameOrientation
			savedData.data.invertAxes = invertAxes
		}
		public static function createTextField(format:TextFormat,txt:String,X:Number,Y:Number,wdth:Number = 100,hght:Number = 100):TextField
		{
			var field:TextField = new TextField()
			field.defaultTextFormat = format
			field.text = txt
			field.width = wdth
			field.height = hght
			field.x = X
			field.y = Y
			field.selectable = false
			return field
		}
		public static function getColor(level:int,type:String):int
		{
			if (type == "Coins")
			{
				if (level == 1)
				{
					return 0x7F4617
				}
				else if (level == 2)
				{
					return 0xA09C98
				}
				else if (level == 3)
				{
					return 0xADA112
				}
			}
			else if (type == "Powerups")
			{
				if (level == 1)
				{
					return 0x0000CC
				}
				else if (level == 2)
				{
					return 0x00CC00
				}
				else if (level == 3)
				{
					return 0xCC0000
				}
			}
			if (level == 1)
			{
				return 0xFFFFFF
			}
			else if (level == 5)
			{
				return 0x333333
			}
			else if (type == "Agility")
			{
				if (level == 2)
				{
					return 0x6666BB
				}
				else if (level == 3)
				{
					return 0x66BB66
				}
				else if (level == 4)
				{
					return 0xBB6666
				}
			}
			else
			{
				if (level == 2)
				{
					return 0x8888BB
				}
				else if (level == 3)
				{
					return 0x88BB88
				}
				else if (level == 4)
				{
					return 0xBB8888
				}
			}
			return 0xFFFFFF
		}
		public static function getCost(level:int,type:String):int
		{
			if (type == "Agility" || type == "Bullets")
			{
				return 25 * level + 25
			}
			else if (type == "Teleport")
			{
				return 50 * level + 50
			}
			else if (type == "Coins")
			{
				return 20 * level + 20
			}
			else if (type == "Powerups")
			{
				return 20 * level + 20
			}
			return 30 * level + 30
		}
	}
}