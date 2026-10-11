using System.Drawing;

namespace Syncfusion.Drawing;

public class GraphicsAutoMirrorY : GraphicsAutoAfineTransfrom
{
	public GraphicsAutoMirrorY(Graphics gph, float fOffsetX, float fOffsetY)
		: base(gph, 1f, -1f, fOffsetX, fOffsetY)
	{
	}

	public GraphicsAutoMirrorY(Graphics gph, float fOffsetY)
		: this(gph, 0f, fOffsetY)
	{
	}
}
