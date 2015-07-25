package
{
	import flash.display.Sprite
	import flash.events.Event;
	
	public final class Cube extends Sprite
	{
		public var front:Sprite = new Sprite()
		public var side:Sprite = new Sprite()
		public var cap:Sprite = new Sprite()
		public var health:int
		public var cubeColor:int
		public function Cube(color:int,health:Number)
		{
			this.health = health
			this.cubeColor = color
			addChild(side)
			addChild(cap)
			addChild(front)
			front.graphics.beginFill(0x000000)
			front.graphics.drawRect(-50.5,-50.5,101,101)
			front.graphics.endFill()
			side.graphics.beginFill(0x000000)
			side.graphics.drawRect(-50.5,-50.5,101,101)
			side.graphics.endFill()
			cap.graphics.beginFill(0x000000)
			cap.graphics.drawRect(-50.5,-50.5,101,101)
			cap.graphics.endFill()
			front.graphics.beginFill(cubeColor)
			front.graphics.drawRect(-48,-48,96,96)
			front.graphics.endFill()
			side.graphics.beginFill(cubeColor - 0x111111)
			side.graphics.drawRect(-48,-48,96,96)
			side.graphics.endFill()
			cap.graphics.beginFill(cubeColor - 0x2A2A2A)
			cap.graphics.drawRect(-48,-48,96,96)
			cap.graphics.endFill()
			front.z = -50
			side.rotationY = 90
			cap.rotationX = 90
			side.x = -50
			cap.y = -50
		}
		public function die(This:Sprite,world:Sprite,sides:Array,sideOwners:Array):Boolean
		{
			var back:Sprite = new Sprite()
			var side2:Sprite = new Sprite()
			var cap2:Sprite = new Sprite()
			back.graphics.beginFill(0x000000)
			back.graphics.drawRect(-50.5,-50.5,101,101)
			back.graphics.endFill()
			side2.graphics.beginFill(0x000000)
			side2.graphics.drawRect(-50.5,-50.5,101,101)
			side2.graphics.endFill()
			cap2.graphics.beginFill(0x000000)
			cap2.graphics.drawRect(-50.5,-50.5,101,101)
			cap2.graphics.endFill()
			back.graphics.beginFill(cubeColor)
			back.graphics.drawRect(-48,-48,96,96)
			back.graphics.endFill()
			side2.graphics.beginFill(cubeColor - 0x111111)
			side2.graphics.drawRect(-48,-48,96,96)
			side2.graphics.endFill()
			cap2.graphics.beginFill(cubeColor - 0x2A2A2A)
			cap2.graphics.drawRect(-48,-48,96,96)
			cap2.graphics.endFill()
			back.z = 50
			side2.rotationY = 90
			cap2.rotationX = 90
			side2.x = -side.x
			cap2.y = -cap.y
			if (This.contains(cap))
			{
				This.removeChild(cap)
			}
			if (This.contains(side))
			{
				This.removeChild(side)
			}
			world.addChild(back)
			world.addChild(cap2)
			world.addChild(side2)
			world.addChild(cap)
			world.addChild(side)
			world.addChild(front)
			back.x += This.x
			back.y += This.y
			back.z += This.z
			cap.x += This.x
			cap.y += This.y
			cap.z += This.z
			side.x += This.x
			side.y += This.y
			side.z += This.z
			cap2.x += This.x
			cap2.y += This.y
			cap2.z += This.z
			side2.x += This.x
			side2.y += This.y
			side2.z += This.z
			front.x += This.x
			front.y += This.y
			front.z += This.z
			sides.push(back)
			sides.push(cap)
			sides.push(side)
			sides.push(cap2)
			sides.push(side2)
			sides.push(front)
			for (var i:int = 0; i < 6; i++)
			{
				sideOwners.push({ownr:This,detPointX:Math.random() * 20 - 10,detPointY:Math.random() * 20 - 10,detPointZ:Math.random() * 20 - 10})
			}
			if (health > 100)
			{
				return true
			}
			return false
		}
	}
}
