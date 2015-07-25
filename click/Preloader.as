package
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.text.TextFormat;
	import flash.text.TextField;
	import flash.utils.getDefinitionByName
	import flash.display.LoaderInfo;
	import flash.display.Loader;
	import flash.net.URLRequest;
	import flash.system.Security;
	
	public final class Preloader extends MovieClip
	{
		public function Preloader()
		{
			var This:MovieClip = this as MovieClip
			var dx:Number = 0
			var previousData:Number = 0
			var total:Number = This.root.loaderInfo.bytesTotal;
			var loaded:Number = This.root.loaderInfo.bytesLoaded;
			var loadingCube:Sprite = new Sprite()
			var front:Sprite = new Sprite()
			var back:Sprite = new Sprite()
			var left:Sprite = new Sprite()
			var right:Sprite = new Sprite()
			var top:Sprite = new Sprite()
			var bottom:Sprite = new Sprite()
			var textContainer:Sprite = new Sprite()
			var bg:Sprite = new Sprite()
			bg.graphics.beginFill(0x000000)
			bg.graphics.drawRect(-200,-200,1040,1360)
			bg.graphics.endFill()
			var loadingFormat:TextFormat = new TextFormat("Cambria",20,0xFFFFFF)
			loadingFormat.align = "center"
			var faceTextFormat:TextFormat = new TextFormat("Cambria",80,0x000000,true)
			faceTextFormat.align = "center"
			var continueText:TextField = createTextField(loadingFormat,"Click anywhere to continue.",320 - 200,600,400)
			var loadingText:TextField = createTextField(loadingFormat,"Loading.",320 - 100,70,200)
			front.graphics.beginFill(0xFFFFFF)
			front.graphics.drawRect(-100,-100,200,200)
			front.graphics.endFill()
			back.graphics.beginFill(0xFFFFFF)
			back.graphics.drawRect(-100,-100,200,200)
			back.graphics.endFill()
			left.graphics.beginFill(0xFFFFFF)
			left.graphics.drawRect(-100,-100,200,200)
			left.graphics.endFill()
			right.graphics.beginFill(0xFFFFFF)
			right.graphics.drawRect(-100,-100,200,200)
			right.graphics.endFill()
			top.graphics.beginFill(0xFFFFFF)
			top.graphics.drawRect(-100,-100,200,200)
			top.graphics.endFill()
			bottom.graphics.beginFill(0xFFFFFF)
			bottom.graphics.drawRect(-100,-100,200,200)
			bottom.graphics.endFill()
			front.z = -200
			back.z = 200
			left.rotationY = 90
			right.rotationY = -90
			back.rotationY = 180
			left.x = -200
			right.x = 200
			top.rotationX = 90
			bottom.rotationX = 90
			top.y = -200
			bottom.y = 200
			loadingCube.x = 320
			loadingCube.y = 350
			loadingCube.addChild(left)
			loadingCube.addChild(back)
			loadingCube.addChild(right)
			loadingCube.addChild(front)
			loadingCube.addChild(top)
			loadingCube.addChild(bottom)
			addChild(bg)
			addChild(loadingText)
			addChild(loadingCube)
			addChild(textContainer)
			textContainer.x = 320
			textContainer.y = 350
			textContainer.addChild(createTextField(faceTextFormat,"0",-80,-55,160,100))
			textContainer.getChildAt(0).z = -200
			addEventListener(Event.ENTER_FRAME,preloader)
			var currentText:int = 0
			var finished:Boolean = false
			var timer:int = 0
			function preloader(e:Event):void
			{
				//100 * dx = change in percent between every frame
				//1 / dx = estimated amount of frames to load the game
				//ideally we want 10 faces of the cube to pass, 3600 / 4 = 900 degrees
				//900 / (1 / dx) = degrees per frame to achieve 10 faces
				//900 * dx = degrees per frame
				dx = (This.stage.loaderInfo.bytesLoaded - loaded) / total
				if (dx > 0.01 || (dx == 0 && This.stage.loaderInfo.bytesLoaded == This.stage.loaderInfo.bytesTotal))
				{
					dx = 0.01
				}
				loaded = This.stage.loaderInfo.bytesLoaded;
				loadingCube.rotationY += 900 * dx
				textContainer.rotationY += 900 * dx
				if (textContainer.rotationY > 20 + 90 * currentText && textContainer.numChildren == 1 && textContainer.rotationY < 70 + 90 * currentText)
				{
					if (currentText < 10)
					{
						textContainer.addChild(createTextField(faceTextFormat,(currentText * 10 + 10).toString(),0,-55,160,100))
						if (currentText / 2 is int)
						{
							textContainer.getChildAt(1).x = 200 * Math.pow(-1,currentText / 2)
							textContainer.getChildAt(1).z = 80 * Math.pow(-1,currentText / 2 + 1)
						}
						else
						{
							textContainer.getChildAt(1).x = 80 * Math.pow(-1,(currentText - 1) / 2)
							textContainer.getChildAt(1).z = 200 * Math.pow(-1,(currentText - 1) / 2)
						}
						textContainer.getChildAt(1).rotationY = -90 * (currentText + 1)
					}
				}
				if (textContainer.rotationY > 70 + 90 * currentText && (textContainer.getChildAt(0) as TextField).text == (currentText * 10).toString())
				{
					textContainer.removeChildAt(0)
					currentText++
				}
				if (loadingCube.rotationY >= 900)
				{
					finished = true
					loadingCube.rotationY = 900
					textContainer.rotationY = 900
				}
				if (This.stage.loaderInfo.bytesLoaded == This.stage.loaderInfo.bytesTotal && finished)
				{
					addChild(continueText)
					removeEventListener(Event.ENTER_FRAME,preloader)
					This.addEventListener(MouseEvent.CLICK,pauseForTouch)
					This.addEventListener(Event.ENTER_FRAME,fluxContinue)
				}
			}
			function pauseForTouch(e:MouseEvent):void
			{
				This.removeEventListener(MouseEvent.CLICK,pauseForTouch)
				This.removeEventListener(Event.ENTER_FRAME,fluxContinue)
				removeChild(loadingText)
				removeChild(continueText)
				removeChild(loadingCube)
				removeChild(textContainer)
				removeChild(bg)
				gotoAndStop(2)
			}
			function fluxContinue(e:Event):void
			{
				timer++
				if (timer % 40 > 20)
				{
					continueText.alpha += 1 / 20
				}
				else if (timer % 40 == 20)
				{
					continueText.alpha = 0
				}
				else if (timer % 40 < 20 && timer % 40 != 0)
				{
					continueText.alpha -= 1 / 20
				}
				else if (timer % 40 == 0)
				{
					continueText.alpha = 1
				}
			}
		}
		public function createTextField(format:TextFormat,txt:String,X:Number,Y:Number,wdth:Number = 100,hght:Number = 100):TextField
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
	}
}
