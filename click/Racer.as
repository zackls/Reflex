package
{
	import flash.display.Sprite
	import flash.display.Shape
	import flash.display.GradientType
	import flash.geom.Matrix;
	
	public final class Racer extends Sprite
	{
		var leftPanel:Sprite = new Sprite()
		var rightPanel:Sprite = new Sprite()
		var backPanel:Sprite = new Sprite()
		var registrationBoxBack:Sprite = new Sprite()
		var registrationBoxFront:Sprite = new Sprite()
		var registrationBoxBackStorage:Sprite = new Sprite()
		var rightBarrelFlash:Shape = new Shape()
		var leftBarrelFlash:Shape = new Shape()
		var panel:Sprite
		var i:int
		var j:int
		var rack1:Sprite = new Sprite()
		var rack2:Sprite = new Sprite()
		var rocket1:Sprite = new Sprite()
		var rocket2:Sprite = new Sprite()
		var rocket3:Sprite = new Sprite()
		var rocket4:Sprite = new Sprite()
		var rocket5:Sprite = new Sprite()
		var rocket6:Sprite = new Sprite()
		var rightTopFlap:Sprite = new Sprite()
		var leftTopFlap:Sprite = new Sprite()
		var rightBottomFlap:Sprite = new Sprite()
		var leftBottomFlap:Sprite = new Sprite()
		public var powerupColor:int
		public var agilityColor:int
		public function Racer(world:Sprite,powerupType:String,powerupLevel:int,agilityLevel:int)
		{
			if (powerupLevel == 1)
			{
				powerupColor = 0xFFFFFF
			}
			else if (powerupLevel == 2)
			{
				powerupColor = 0x8888BB
			}
			else if (powerupLevel == 3)
			{
				powerupColor = 0x88BB88
			}
			else if (powerupLevel == 4)
			{
				powerupColor = 0xBB8888
			}
			else if (powerupLevel == 5)
			{
				powerupColor = 0x333333
			}
			if (agilityLevel == 1)
			{
				agilityColor = 0xFFFFFF
			}
			else if (agilityLevel == 2)
			{
				agilityColor = 0x6666BB
			}
			else if (agilityLevel == 3)
			{
				agilityColor = 0x66BB66
			}
			else if (agilityLevel == 4)
			{
				agilityColor = 0xBB6666
			}
			else if (agilityLevel == 5)
			{
				agilityColor = 0x333333
			}
			registrationBoxBack.graphics.beginFill(0x000000,0)
			registrationBoxBack.graphics.drawTriangles(Vector.<Number>([-90,30,0,-25,0,15,90,30,0,-25,0,15]))
			registrationBoxBack.graphics.endFill()
			registrationBoxFront.graphics.beginFill(0x000000,0)
			registrationBoxFront.graphics.drawRect(-6,3,12,6)
			registrationBoxFront.graphics.endFill()
			registrationBoxFront.z = -130
			registrationBoxFront.y = -20
			leftPanel.graphics.beginFill(0x000000)
			leftPanel.graphics.drawTriangles(Vector.<Number>([0,0,0,-150,100,0]))
			leftPanel.graphics.beginFill(0xAAAAAA)
			leftPanel.graphics.drawTriangles(Vector.<Number>([2,-2,2,-144,96,-2]))
			leftPanel.graphics.beginFill(0x000000)
			leftPanel.graphics.drawTriangles(Vector.<Number>([10,-10,10,-120,60,-10]))
			leftPanel.graphics.beginFill(agilityColor)
			leftPanel.graphics.drawTriangles(Vector.<Number>([8,-8,8,-115,55,-8]))
			leftPanel.graphics.endFill()
			rightPanel.graphics.beginFill(0x000000)
			rightPanel.graphics.drawTriangles(Vector.<Number>([0,0,0,-150,-100,0]))
			rightPanel.graphics.beginFill(0xAAAAAA)
			rightPanel.graphics.drawTriangles(Vector.<Number>([-2,-2,-2,-144,-96,-2]))
			rightPanel.graphics.beginFill(0x000000)
			rightPanel.graphics.drawTriangles(Vector.<Number>([-10,-10,-10,-120,-60,-10]))
			rightPanel.graphics.beginFill(agilityColor)
			rightPanel.graphics.drawTriangles(Vector.<Number>([-8,-8,-8,-115,-55,-8]))
			rightPanel.graphics.endFill()
			leftPanel.rotationZ = 20
			rightPanel.rotationZ = -20
			leftPanel.rotationX = 85
			rightPanel.rotationX = 85
			backPanel.graphics.beginFill(0x000000)
			backPanel.graphics.drawTriangles(Vector.<Number>([0,0,-34.2,0,34.2,0,0,-26,0,26]),Vector.<int>([0,1,3,0,2,3,0,1,4,1,2,4]))
			backPanel.graphics.beginFill(0xAAAAAA)
			backPanel.graphics.drawTriangles(Vector.<Number>([0,0,-32,0,32,0,0,-24,0,24]),Vector.<int>([0,1,3,0,2,3,0,1,4,1,2,4]))
			backPanel.graphics.endFill()
			if (powerupType == "Bullets")
			{
				var leftBarrel:Sprite = new Sprite()
				var rightBarrel:Sprite = new Sprite()
				var matrix:Matrix = new Matrix()
				matrix.createGradientBox(150,150,0,-75,-75)
				rightBarrelFlash.graphics.beginGradientFill(GradientType.RADIAL,[0xFFFFFF,0xFFFFFF],[1,0],[0,255],matrix)
				rightBarrelFlash.graphics.drawCircle(0,0,75)
				rightBarrelFlash.graphics.endFill()
				leftBarrelFlash.graphics.beginGradientFill(GradientType.RADIAL,[0xFFFFFF,0xFFFFFF],[1,0],[0,255],matrix)
				leftBarrelFlash.graphics.drawCircle(0,0,75)
				leftBarrelFlash.graphics.endFill()
				rightBarrelFlash.x = 40
				leftBarrelFlash.x = -40
				rightBarrelFlash.alpha = 0
				leftBarrelFlash.alpha = 0
				for (i = 0; i < 12; i++)
				{
					panel = new Sprite()
					panel.graphics.beginFill(powerupColor / 2 * (1 + Math.pow(-1,i)))
					panel.graphics.drawRect(-30,-16 * Math.PI / 24,60,16 * Math.PI / 12)
					panel.graphics.endFill()
					panel.rotationY = 90
					panel.x = 8 * Math.cos(i * Math.PI / 6)
					panel.y = 8 * Math.sin(i * Math.PI / 6)
					panel.z = -30
					panel.rotationX = -i * 30
					leftBarrel.addChild(panel)
					panel = new Sprite()
					panel.graphics.beginFill(powerupColor / 2 * (1 + Math.pow(-1,i)))
					panel.graphics.drawRect(-30,-16 * Math.PI / 24,60,16 * Math.PI / 12)
					panel.graphics.endFill()
					panel.rotationY = 90
					panel.x = 8 * Math.cos(i * Math.PI / 6)
					panel.y = 8 * Math.sin(i * Math.PI / 6)
					panel.z = -30
					panel.rotationX = -i * 30
					rightBarrel.addChild(panel)
				}
				panel = new Sprite()
				panel.graphics.beginFill(0x000000)
				panel.graphics.drawCircle(0,0,9)
				panel.graphics.beginFill(powerupColor)
				panel.graphics.drawCircle(0,0,7.5)
				panel.graphics.endFill()
				leftBarrel.rotationX = -5
				leftBarrel.rotationY = -5
				leftBarrel.addChild(panel)
				leftBarrel.x = -40
				panel = new Sprite()
				panel.graphics.beginFill(0x000000)
				panel.graphics.drawCircle(0,0,9)
				panel.graphics.beginFill(powerupColor)
				panel.graphics.drawCircle(0,0,7.5)
				panel.graphics.endFill()
				rightBarrel.rotationX = -5
				rightBarrel.rotationY = 5
				rightBarrel.addChild(panel)
				rightBarrel.x = 40
				addChild(leftPanel)
				addChild(rightPanel)
				addChild(rightBarrelFlash)
				addChild(leftBarrelFlash)
				addChild(backPanel)
				addChild(leftBarrel)
				addChild(rightBarrel)
			}
			else if (powerupType == "Rockets")
			{
				for (i = 0; i < 2; i++)
				{
					var currentRack:Sprite = this["rack" + (i + 1)]
					panel = new Sprite()
					panel.graphics.beginFill(0x333333)
					panel.graphics.drawRect(-8.5,0,17,50)
					panel.rotationX = -90
					panel.y = 4
					currentRack.addChild(panel)
					panel = new Sprite()
					panel.graphics.beginFill(0x333333)
					panel.graphics.drawRect(-4,0,8,50)
					panel.rotationX = -90
					panel.rotationZ = 90
					panel.x = -8.5
					currentRack.addChild(panel)
					panel = new Sprite()
					panel.graphics.beginFill(0x333333)
					panel.graphics.drawRect(-4,0,8,50)
					panel.rotationX = -90
					panel.rotationZ = 90
					panel.x = 8.5
					currentRack.addChild(panel)
					currentRack.addChild(panel)
					if (i == 0)
					{
						currentRack.x = 48
						currentRack.rotationZ = 20
						currentRack.rotationX = -5
					}
					else if (i == 1)
					{
						currentRack.x = -48
						currentRack.rotationZ = -20
						currentRack.rotationX = -5
					}
					currentRack.y = 22
					addChild(currentRack)
				}
				addChild(leftPanel)
				addChild(rightPanel)
				addChild(backPanel)
			}
			else if (powerupType == "Teleport")
			{
				leftTopFlap.graphics.beginFill(0x000000)
				leftTopFlap.graphics.drawTriangles(Vector.<Number>([10,-10,10,-120,60,-10]))
				leftTopFlap.graphics.beginFill(powerupColor)
				leftTopFlap.graphics.drawTriangles(Vector.<Number>([8,-8,8,-115,55,-8]))
				leftTopFlap.graphics.endFill()
				leftBottomFlap.graphics.beginFill(0x000000)
				leftBottomFlap.graphics.drawTriangles(Vector.<Number>([10,-10,10,-120,60,-10]))
				leftBottomFlap.graphics.beginFill(powerupColor)
				leftBottomFlap.graphics.drawTriangles(Vector.<Number>([8,-8,8,-115,55,-8]))
				leftBottomFlap.graphics.endFill()
				rightTopFlap.graphics.beginFill(0x000000)
				rightTopFlap.graphics.drawTriangles(Vector.<Number>([-10,-10,-10,-120,-60,-10]))
				rightTopFlap.graphics.beginFill(powerupColor)
				rightTopFlap.graphics.drawTriangles(Vector.<Number>([-8,-8,-8,-115,-55,-8]))
				rightTopFlap.graphics.endFill()
				rightBottomFlap.graphics.beginFill(0x000000)
				rightBottomFlap.graphics.drawTriangles(Vector.<Number>([-10,-10,-10,-120,-60,-10]))
				rightBottomFlap.graphics.beginFill(powerupColor)
				rightBottomFlap.graphics.drawTriangles(Vector.<Number>([-8,-8,-8,-115,-55,-8]))
				rightBottomFlap.graphics.endFill()
				leftTopFlap.y += 10
				leftBottomFlap.y += 14
				rightTopFlap.y += 10
				rightBottomFlap.y += 14
				leftTopFlap.x += 30
				leftBottomFlap.x += 30
				rightTopFlap.x -= 30
				rightBottomFlap.x -= 30
				leftTopFlap.rotationZ = 20
				leftBottomFlap.rotationZ = 20
				rightTopFlap.rotationZ = -20
				rightBottomFlap.rotationZ = -20
				leftTopFlap.rotationX = 85
				leftBottomFlap.rotationX = 85
				rightTopFlap.rotationX = 85
				rightBottomFlap.rotationX = 85
				addChild(leftBottomFlap)
				addChild(leftPanel)
				addChild(leftTopFlap)
				addChild(rightBottomFlap)
				addChild(rightPanel)
				addChild(rightTopFlap)
				addChild(backPanel)
			}
			else if (powerupType == "Shield")
			{
				var topHoop:Sprite = new Sprite()
				for (i = 80; i < 200; i += 20)
				{
					panel = new Sprite()
					panel.x = 40 * Math.cos(i * Math.PI / 180)
					panel.y = 40 * Math.sin(i * Math.PI / 180)
					panel.graphics.beginFill(powerupColor / 2 * (1 + Math.pow(-1,i / 20)))
					panel.graphics.drawRect(-Math.PI * 80 / 36,-Math.PI * 80 / 18,Math.PI * 80 / 18,Math.PI * 80 / 9)
					panel.graphics.endFill()
					panel.rotationX = 90
					panel.rotationZ = i + 90
					topHoop.addChild(panel)
					panel = new Sprite()
					panel.x = 40 * Math.cos(i * Math.PI / 180)
					panel.y = 40 * Math.sin(i * Math.PI / 180)
					panel.graphics.beginFill(powerupColor / 2 * (1 + Math.pow(-1,i / 20)))
					panel.graphics.drawRect(-Math.PI * 80 / 36,-Math.PI * 80 / 96,Math.PI * 80 / 18,Math.PI * 80 / 48)
					panel.graphics.endFill()
					panel.rotationZ = i + 90
					topHoop.addChild(panel)
				}
				for (j = 60; j > -20; j -= 20)
				{
					panel = new Sprite()
					panel.x = 40 * Math.cos(j * Math.PI / 180)
					panel.y = 40 * Math.sin(j * Math.PI / 180)
					panel.graphics.beginFill(powerupColor / 2 * (1 + Math.pow(-1,j / 20)))
					panel.graphics.drawRect(-Math.PI * 80 / 36,-Math.PI * 80 / 18,Math.PI * 80 / 18,Math.PI * 80 / 9)
					panel.graphics.endFill()
					panel.rotationX = 90
					panel.rotationZ = j + 90
					topHoop.addChild(panel)
					panel = new Sprite()
					panel.x = 40 * Math.cos(j * Math.PI / 180)
					panel.y = 40 * Math.sin(j * Math.PI / 180)
					panel.graphics.beginFill(powerupColor / 2 * (1 + Math.pow(-1,j / 20)))
					panel.graphics.drawRect(-Math.PI * 80 / 36,-Math.PI * 80 / 96,Math.PI * 80 / 18,Math.PI * 80 / 48)
					panel.graphics.endFill()
					panel.rotationZ = j + 90
					topHoop.addChild(panel)
				}
				topHoop.rotationZ += 180
				var bottomHoop:Sprite = new Sprite()
				for (i = -80; i >= -160; i -= 20)
				{
					panel = new Sprite()
					panel.x = 40 * Math.cos(i * Math.PI / 180)
					panel.y = 40 * Math.sin(i * Math.PI / 180)
					panel.graphics.beginFill(powerupColor / 2 * (1 + Math.pow(-1,i / 20)))
					panel.graphics.drawRect(-Math.PI * 80 / 36,-Math.PI * 80 / 18,Math.PI * 80 / 18,Math.PI * 80 / 9)
					panel.graphics.endFill()
					panel.rotationX = 90
					panel.rotationZ = i + 90
					bottomHoop.addChild(panel)
					panel = new Sprite()
					panel.x = 40 * Math.cos(i * Math.PI / 180)
					panel.y = 40 * Math.sin(i * Math.PI / 180)
					panel.graphics.beginFill(powerupColor / 2 * (1 + Math.pow(-1,i / 20)))
					panel.graphics.drawRect(-Math.PI * 80 / 36,-Math.PI * 80 / 96,Math.PI * 80 / 18,Math.PI * 80 / 48)
					panel.graphics.endFill()
					panel.rotationZ = i + 90
					bottomHoop.addChild(panel)
				}
				for (j = -60; j <= -20; j += 20)
				{
					panel = new Sprite()
					panel.x = 40 * Math.cos(j * Math.PI / 180)
					panel.y = 40 * Math.sin(j * Math.PI / 180)
					panel.graphics.beginFill(powerupColor / 2 * (1 + Math.pow(-1,j / 20)))
					panel.graphics.drawRect(-Math.PI * 80 / 36,-Math.PI * 80 / 18,Math.PI * 80 / 18,Math.PI * 80 / 9)
					panel.graphics.endFill()
					panel.rotationX = 90
					panel.rotationZ = j + 90
					bottomHoop.addChild(panel)
					panel = new Sprite()
					panel.x = 40 * Math.cos(j * Math.PI / 180)
					panel.y = 40 * Math.sin(j * Math.PI / 180)
					panel.graphics.beginFill(powerupColor / 2 * (1 + Math.pow(-1,j / 20)))
					panel.graphics.drawRect(-Math.PI * 80 / 36,-Math.PI * 80 / 96,Math.PI * 80 / 18,Math.PI * 80 / 48)
					panel.graphics.endFill()
					panel.rotationZ = j + 90
					bottomHoop.addChild(panel)
				}
				bottomHoop.rotationZ = 180
				topHoop.z = -30
				bottomHoop.z = -30
				addChild(bottomHoop)
				addChild(leftPanel)
				addChild(rightPanel)
				addChild(topHoop)
				addChild(backPanel)
			}
			addChild(registrationBoxBack)
			addChild(registrationBoxFront)
			this.scaleX = 0.7
			this.scaleY = 0.7
		}
		public function drawRockets():void
		{
			removeChild(leftPanel)
			removeChild(rightPanel)
			removeChild(backPanel)
			for (i = 0; i < 6; i++)
			{
				this["rocket" + (i + 1)] = new Sprite()
				var currentRocket:Sprite = this["rocket" + (i + 1)]
				for (j = 0; j < 12; j++)
				{
					panel = new Sprite()
					if (j / 3 is int)
					{
						panel.graphics.beginFill(powerupColor)
					}
					else
					{
						panel.graphics.beginFill(0x999999)
					}
					panel.graphics.drawRect(-25,-8 * Math.PI / 24,50,8 * Math.PI / 12)
					panel.graphics.endFill()
					panel.rotationY = 90
					panel.x = 4 * Math.cos(j * Math.PI / 6)
					panel.y = 4 * Math.sin(j * Math.PI / 6)
					panel.z = -25
					panel.rotationX = -j * 30
					currentRocket.addChild(panel)
				}
				for (j = 0; j < 4; j++)
				{
					panel = new Sprite()
					panel.graphics.beginFill(0x000000)
					panel.graphics.drawTriangles(Vector.<Number>([0,0,0,45,4,0]))
					panel.graphics.endFill()
					panel.rotationX = -90
					panel.x = 4 * Math.cos(j * Math.PI / 2 + 5 * Math.PI / 4)
					panel.y = 4 * Math.sin(j * Math.PI / 2 + 5 * Math.PI / 4)
					panel.rotationZ = j * 90 + 135
					currentRocket.addChild(panel)
				}
				if (i == 0)
				{
					currentRocket.x = 40
					currentRocket.y = 19
					currentRocket.rotationY = 5
				}
				else if (i == 1)
				{
					currentRocket.x = -40
					currentRocket.y = 19
					currentRocket.rotationY = -5
				}
				else if (i == 2)
				{
					currentRocket.x = 48
					currentRocket.y = 22
					currentRocket.rotationX = -1.25
					currentRocket.rotationY = 2.5
				}
				else if (i == 3)
				{
					currentRocket.x = -48
					currentRocket.y = 22
					currentRocket.rotationX = -1.25
					currentRocket.rotationY = -2.5
				}
				else if (i == 4)
				{
					currentRocket.x = 56
					currentRocket.y = 25
					currentRocket.rotationX = -2.5
					currentRocket.rotationY = 5
				}
				else if (i == 5)
				{
					currentRocket.x = -56
					currentRocket.y = 25
					currentRocket.rotationX = -2.5
					currentRocket.rotationY = -5
				}
				panel = new Sprite()
				panel.graphics.beginFill(0x000000)
				panel.graphics.drawCircle(0,0,4)
				panel.graphics.endFill()
				currentRocket.addChild(panel)
				panel = new Sprite()
				panel.graphics.beginFill(powerupColor)
				panel.graphics.drawCircle(0,0,3)
				panel.graphics.endFill()
				currentRocket.addChild(panel)
				addChild(currentRocket)
			}
			addChild(leftPanel)
			addChild(rightPanel)
			addChild(backPanel)
		}
	}
}
