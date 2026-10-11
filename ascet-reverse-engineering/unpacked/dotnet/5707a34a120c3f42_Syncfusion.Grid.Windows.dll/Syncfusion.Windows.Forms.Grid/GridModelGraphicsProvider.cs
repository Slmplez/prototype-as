using System.Drawing;
using Syncfusion.ComponentModel;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridModelGraphicsProvider : Disposable, IGraphicsProvider
{
	private GridModel model;

	private Graphics g;

	private DisplayDCGraphicsProvider dgp;

	private bool ownedGraphics;

	public Graphics Graphics
	{
		get
		{
			if (g == null)
			{
				GridControlBase gridControlBase = model.ActiveGridView;
				if (gridControlBase != null)
				{
					gridControlBase = gridControlBase.GetGridWindow();
				}
				if (gridControlBase != null && gridControlBase.IsHandleCreated)
				{
					g = gridControlBase.CreateGraphics();
					ownedGraphics = true;
					OnPrepareGraphics(new GraphicsEventArgs(g));
				}
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

	public GridModelGraphicsProvider(GridModel model)
	{
		this.model = model;
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
		if (model != null)
		{
			model.DoPrepareGraphics(e.Graphics);
		}
		if (this.PrepareGraphics != null)
		{
			this.PrepareGraphics(this, e);
		}
	}
}
