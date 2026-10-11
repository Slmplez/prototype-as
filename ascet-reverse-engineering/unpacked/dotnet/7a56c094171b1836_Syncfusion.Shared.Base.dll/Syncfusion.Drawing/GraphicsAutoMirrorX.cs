using System.Drawing;

namespace Syncfusion.Drawing;

public class GraphicsAutoMirrorX : GraphicsAutoAfineTransfrom
{
	public GraphicsAutoMirrorX(Graphics gph, float fOffsetX, float fOffsetY)
		: base(gph, -1f, 1f, fOffsetX, fOffsetY)
	{
	}

	public GraphicsAutoMirrorX(Graphics gph, float fOffsetX)
		: this(gph, fOffsetX, 0f)
	{
	}
}
