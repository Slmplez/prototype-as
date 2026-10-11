using System.Drawing;

namespace Syncfusion.Drawing;

public interface IGraphicsProvider
{
	Graphics Graphics { get; }

	event GraphicsEventHandler PrepareGraphics;
}
