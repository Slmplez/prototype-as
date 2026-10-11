using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridBordersInfo : GridStyleInfoSubObject
{
	private static GridBordersInfo defaultBorders;

	public static GridBordersInfo Default
	{
		get
		{
			if (defaultBorders == null)
			{
				defaultBorders = new GridBordersInfo();
				defaultBorders.Top = new GridBorder(GridBorderStyle.Standard, SystemColors.WindowFrame, GridBorderWeight.Thin);
				defaultBorders.Left = new GridBorder(GridBorderStyle.Standard, SystemColors.WindowFrame, GridBorderWeight.Thin);
				defaultBorders.Bottom = new GridBorder(GridBorderStyle.Standard, SystemColors.WindowFrame, GridBorderWeight.Thin);
				defaultBorders.Right = new GridBorder(GridBorderStyle.Standard, SystemColors.WindowFrame, GridBorderWeight.Thin);
			}
			return defaultBorders;
		}
	}

	[Browsable(false)]
	public GridBorder All
	{
		[DebuggerStepThrough]
		set
		{
			SetValue(GridBordersInfoStore.TopProperty, value);
			SetValue(GridBordersInfoStore.LeftProperty, value);
			SetValue(GridBordersInfoStore.BottomProperty, value);
			SetValue(GridBordersInfoStore.RightProperty, value);
		}
	}

	public GridBorder this[GridBorderSide side]
	{
		[DebuggerStepThrough]
		get
		{
			return side switch
			{
				GridBorderSide.Top => Top, 
				GridBorderSide.Left => Left, 
				GridBorderSide.Right => Right, 
				GridBorderSide.Bottom => Bottom, 
				_ => throw new ArgumentException("Unknown value", "side"), 
			};
		}
		[DebuggerStepThrough]
		set
		{
			switch (side)
			{
			case GridBorderSide.Top:
				Top = value;
				break;
			case GridBorderSide.Left:
				Left = value;
				break;
			case GridBorderSide.Right:
				Right = value;
				break;
			case GridBorderSide.Bottom:
				Bottom = value;
				break;
			default:
				throw new ArgumentException("Unknown value", "side");
			}
		}
	}

	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	[Description("The top border")]
	[NotifyParentProperty(true)]
	public GridBorder Top
	{
		[DebuggerStepThrough]
		get
		{
			return (GridBorder)GetValue(GridBordersInfoStore.TopProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridBordersInfoStore.TopProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasTop
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridBordersInfoStore.TopProperty);
		}
	}

	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	[Description("The left border")]
	[NotifyParentProperty(true)]
	public GridBorder Left
	{
		[DebuggerStepThrough]
		get
		{
			return (GridBorder)GetValue(GridBordersInfoStore.LeftProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridBordersInfoStore.LeftProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasLeft
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridBordersInfoStore.LeftProperty);
		}
	}

	[Description("The bottom border")]
	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public GridBorder Bottom
	{
		[DebuggerStepThrough]
		get
		{
			return (GridBorder)GetValue(GridBordersInfoStore.BottomProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridBordersInfoStore.BottomProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasBottom => HasValue(GridBordersInfoStore.BottomProperty);

	[SRCategory("StyleCategoryAppearance")]
	[Browsable(true)]
	[Description("The right border")]
	[NotifyParentProperty(true)]
	public GridBorder Right
	{
		[DebuggerStepThrough]
		get
		{
			return (GridBorder)GetValue(GridBordersInfoStore.RightProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridBordersInfoStore.RightProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasRight
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridBordersInfoStore.RightProperty);
		}
	}

	internal static object CreateObject(StyleInfoSubObjectIdentity identity, object store)
	{
		if (store != null)
		{
			return new GridBordersInfo(identity, store as GridBordersInfoStore);
		}
		return new GridBordersInfo(identity);
	}

	[DebuggerStepThrough]
	public GridBordersInfo()
		: base(new GridBordersInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridBordersInfo(StyleInfoSubObjectIdentity identity)
		: base(identity, new GridBordersInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridBordersInfo(StyleInfoSubObjectIdentity identity, GridBordersInfoStore store)
		: base(identity, store)
	{
	}

	[DebuggerStepThrough]
	public override IStyleInfoSubObject MakeCopy(StyleInfoBase newOwner, StyleInfoProperty sip)
	{
		return new GridBordersInfo(newOwner.CreateSubObjectIdentity(sip), (GridBordersInfoStore)base.Store.Clone());
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		return Default;
	}

	[DebuggerStepThrough]
	public void ResetAll()
	{
		ResetValue(GridBordersInfoStore.TopProperty);
		ResetValue(GridBordersInfoStore.LeftProperty);
		ResetValue(GridBordersInfoStore.BottomProperty);
		ResetValue(GridBordersInfoStore.RightProperty);
	}

	[DebuggerStepThrough]
	public void ResetTop()
	{
		ResetValue(GridBordersInfoStore.TopProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTop()
	{
		return HasValue(GridBordersInfoStore.TopProperty);
	}

	[DebuggerStepThrough]
	public void ResetLeft()
	{
		ResetValue(GridBordersInfoStore.LeftProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeLeft()
	{
		return HasValue(GridBordersInfoStore.LeftProperty);
	}

	[DebuggerStepThrough]
	public void ResetBottom()
	{
		ResetValue(GridBordersInfoStore.BottomProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBottom()
	{
		return HasValue(GridBordersInfoStore.BottomProperty);
	}

	[DebuggerStepThrough]
	public void ResetRight()
	{
		ResetValue(GridBordersInfoStore.RightProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeRight()
	{
		return HasValue(GridBordersInfoStore.RightProperty);
	}
}
