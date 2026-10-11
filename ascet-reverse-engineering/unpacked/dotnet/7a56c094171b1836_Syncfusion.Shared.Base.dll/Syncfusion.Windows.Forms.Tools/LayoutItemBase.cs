using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public abstract class LayoutItemBase : IProvideLayoutInformation
{
	internal LayoutItemPlaceHolderControl placeHolderControl;

	private LayoutManager _layoutManager;

	protected bool boundsChangingFromOutsideFramework;

	[DocumentationExclude]
	protected internal LayoutManager LayoutManager
	{
		set
		{
			_layoutManager = value;
		}
	}

	public abstract Size PreferredSize { get; }

	public abstract Size MinimumSize { get; }

	public bool Visible
	{
		get
		{
			return placeHolderControl.Visible;
		}
		set
		{
			placeHolderControl.Visible = value;
		}
	}

	public Rectangle Bounds
	{
		get
		{
			return placeHolderControl.Bounds;
		}
		set
		{
			if (placeHolderControl.Bounds != value)
			{
				placeHolderControl.Bounds = value;
				boundsChangingFromOutsideFramework = true;
			}
		}
	}

	public event EventHandler BoundsChanged;

	protected LayoutItemBase()
	{
		placeHolderControl = new LayoutItemPlaceHolderControl(this);
		placeHolderControl.SizeChanged += Control_BoundsChanged;
		placeHolderControl.LocationChanged += Control_BoundsChanged;
	}

	[DocumentationExclude]
	public void Control_BoundsChanged(object sender, EventArgs e)
	{
		OnBoundsChanged();
		if (boundsChangingFromOutsideFramework && _layoutManager != null && _layoutManager.ContainerControl != null)
		{
			_layoutManager.ContainerControl.PerformLayout();
		}
		boundsChangingFromOutsideFramework = false;
	}

	protected virtual void OnBoundsChanged()
	{
		if (this.BoundsChanged != null)
		{
			this.BoundsChanged(this, EventArgs.Empty);
		}
	}

	public static implicit operator Control(LayoutItemBase lm)
	{
		return lm.placeHolderControl;
	}

	public Control ToControl()
	{
		return placeHolderControl;
	}
}
