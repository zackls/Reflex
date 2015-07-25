package
{
	import flash.display.Sprite
	
	public final class Coin extends Sprite
	{
		var front:Sprite = new Sprite()
		var back:Sprite = new Sprite()
		var edge:Sprite = new Sprite()
		public function Coin(color:int)
		{
			var i:int
			front.graphics.beginFill(color)
			front.graphics.drawCircle(0,0,25)
			front.graphics.endFill()
			back.graphics.beginFill(color)
			back.graphics.drawCircle(0,0,25)
			back.graphics.endFill()
			front.z = -3
			back.z = 3
			for (i = 0; i < 18; i++)
			{
				var panel:Sprite = new Sprite()
				panel.graphics.beginFill(color + Math.pow(-1,i) * 0x101010)
				panel.graphics.drawRect(-3,-50 * Math.PI / 36,6,50 * Math.PI / 18)
				panel.graphics.endFill()
				panel.rotationY = 90
				panel.x = 25 * Math.cos(i * Math.PI / 9)
				panel.y = 25 * Math.sin(i * Math.PI / 9)
				panel.rotationX = -i * 20
				edge.addChild(panel)
			}
			addChild(back)
			addChild(edge)
			addChild(front)
		}
	}
}
