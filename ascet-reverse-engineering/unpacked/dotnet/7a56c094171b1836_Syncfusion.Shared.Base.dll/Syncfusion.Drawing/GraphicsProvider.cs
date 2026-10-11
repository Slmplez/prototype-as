using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Drawing;

public class GraphicsProvider : Disposable, IGraphicsProvider
{
	private Graphics g;

	private Control control;

	private DisplayDCGraphicsProvider dgp;

	private bool ownedGraphics;

	public Graphics Graphics
	{
		get
		{
			if (g == null && control != null && control.IsHandleCreated)
			{
				g = control.CreateGraphics();
				ownedGraphics = true;
				OnPrepareGraphics(new GraphicsEventArgs(g));
			}
			if (g == null)
			{
				if (dgp == null)
				{
					dgp = DisplayDCGraphicsProvider.Singleton;
					OnPrepareGraphics(new GraphicsEventArgs(g));
				}
				return dgp.Graphics;
			}
			return g;
		}
	}

	public event GraphicsEventHandler PrepareGraphics;

	public GraphicsProvider(Graphics g)
	{
		this.g = g;
		ownedGraphics = false;
	}

	public GraphicsProvider(Control control)
	{
		this.control = control;
		ownedGraphics = false;
	}

	public GraphicsProvider()
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (ownedGraphics && g != null)
			{
				g.Dispose();
				g = null;
			}
			dgp = null;
		}
		base.Dispose(disposing);
	}

	protected virtual void OnPrepareGraphics(GraphicsEventArgs e)
	{
		if (this.PrepareGraphics != null)
		{
			this.PrepareGraphics(this, e);
		}
	}
}
