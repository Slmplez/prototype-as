using System.Drawing;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Drawing;

public class GraphicsEventArgs : SyncfusionEventArgs
{
	private Graphics graphics;

	[DocumentationExclude]
	public new static readonly GraphicsEventArgs Empty = new GraphicsEventArgs();

	public Graphics Graphics => graphics;

	public GraphicsEventArgs(Graphics graphics)
	{
		this.graphics = graphics;
	}

	public GraphicsEventArgs()
	{
	}
}
