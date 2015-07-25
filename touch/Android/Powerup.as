package
{
	import flash.display.Sprite;
	
	public final class Powerup extends Sprite
	{
		public var outerRightPanel:Sprite = new Sprite()
		public var outerLeftPanel:Sprite = new Sprite()
		public var innerRightPanel:Sprite = new Sprite()
		public var innerLeftPanel:Sprite = new Sprite()
		public var centerSphere:Sprite = new Sprite()
		public function Powerup(color:int)
		{
			outerRightPanel.graphics.beginFill(color)
			outerRightPanel.graphics.moveTo(0,25)
			outerRightPanel.graphics.lineTo(0,30)
			outerRightPanel.graphics.cubicCurveTo(15,30,30,15,30,0)
			outerRightPanel.graphics.cubicCurveTo(30,-15,15,-30,0,-30)
			outerRightPanel.graphics.lineTo(0,-25)
			outerRightPanel.graphics.cubicCurveTo(25 / 2,-25,25,-25 / 2,25,0)
			outerRightPanel.graphics.cubicCurveTo(25,25 / 2,25 / 2,25,0,25)
			outerRightPanel.graphics.endFill()
			outerLeftPanel.graphics.beginFill(color)
			outerLeftPanel.graphics.moveTo(0,25)
			outerLeftPanel.graphics.lineTo(0,30)
			outerLeftPanel.graphics.cubicCurveTo(15,30,30,15,30,0)
			outerLeftPanel.graphics.cubicCurveTo(30,-15,15,-30,0,-30)
			outerLeftPanel.graphics.lineTo(0,-25)
			outerLeftPanel.graphics.cubicCurveTo(25 / 2,-25,25,-25 / 2,25,0)
			outerLeftPanel.graphics.cubicCurveTo(25,25 / 2,25 / 2,25,0,25)
			outerLeftPanel.graphics.endFill()
			outerLeftPanel.rotationY = 180
			innerRightPanel.graphics.beginFill(color)
			innerRightPanel.graphics.moveTo(0,15)
			innerRightPanel.graphics.lineTo(0,20)
			innerRightPanel.graphics.cubicCurveTo(10,20,20,10,20,0)
			innerRightPanel.graphics.cubicCurveTo(20,-10,10,-20,0,-20)
			innerRightPanel.graphics.lineTo(0,-15)
			innerRightPanel.graphics.cubicCurveTo(15 / 2,-15,15,-15 / 2,15,0)
			innerRightPanel.graphics.cubicCurveTo(15,15 / 2,15 / 2,15,0,15)
			innerRightPanel.graphics.endFill()
			innerLeftPanel.graphics.beginFill(color)
			innerLeftPanel.graphics.moveTo(0,15)
			innerLeftPanel.graphics.lineTo(0,20)
			innerLeftPanel.graphics.cubicCurveTo(10,20,20,10,20,0)
			innerLeftPanel.graphics.cubicCurveTo(20,-10,10,-20,0,-20)
			innerLeftPanel.graphics.lineTo(0,-15)
			innerLeftPanel.graphics.cubicCurveTo(15 / 2,-15,15,-15 / 2,15,0)
			innerLeftPanel.graphics.cubicCurveTo(15,15 / 2,15 / 2,15,0,15)
			innerLeftPanel.graphics.endFill()
			innerLeftPanel.rotationY = 180
			centerSphere.graphics.beginFill(color)
			centerSphere.graphics.drawCircle(0,0,10)
			centerSphere.graphics.endFill()
			addChild(outerLeftPanel)
			addChild(innerLeftPanel)
			addChild(centerSphere)
			addChild(innerRightPanel)
			addChild(outerRightPanel)
		}
	}
}
