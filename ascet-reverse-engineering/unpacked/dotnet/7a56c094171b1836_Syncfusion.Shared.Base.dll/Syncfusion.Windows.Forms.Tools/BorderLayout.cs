using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.BorderLayout.bmp")]
[ProvideProperty("Position", typeof(Control))]
[ToolboxItemFilter("System.Windows.Forms")]
[Description("Represents the layout manager that lays out the children along the borders and at the center, very similar to the Windows Form's control docking behavior.")]
public class BorderLayout : LayoutManager
{
	private int vGap;

	private int hGap;

	private Hashtable positionVsControls = new Hashtable();

	[Category("Appearance")]
	[Description("Gets or sets the vertical spacing between the layout border and the components.")]
	public int VGap
	{
		get
		{
			return vGap;
		}
		set
		{
			if (vGap != value)
			{
				vGap = value;
				if (base.ContainerControl != null)
				{
					base.ContainerControl.PerformLayout();
				}
				MakeDirty();
			}
		}
	}

	[Description("Gets or sets the horizontal spacing between the layout border and the components.")]
	[Category("Appearance")]
	public int HGap
	{
		get
		{
			return hGap;
		}
		set
		{
			if (hGap != value)
			{
				hGap = value;
				if (base.ContainerControl != null)
				{
					base.ContainerControl.PerformLayout();
				}
				MakeDirty();
			}
		}
	}

	public BorderLayout()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(BorderLayout));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
	}

	public BorderLayout(IContainer container)
		: this()
	{
		container?.Add(this);
	}

	public BorderLayout(Control container)
		: this()
	{
		base.ContainerControl = container;
	}

	public BorderLayout(Control container, int vGap, int hGap)
		: this()
	{
		base.ContainerControl = container;
		this.vGap = vGap;
		this.hGap = hGap;
	}

	public void SetPosition(Control control, BorderPosition position)
	{
		if (position == BorderPosition.None)
		{
			RemoveLayoutComponent(control);
		}
		else
		{
			AddLayoutComponent(control, position);
		}
	}

	private bool ShouldSerializePosition(Control control)
	{
		if (GetPositionFromControl(control) != BorderPosition.None)
		{
			return true;
		}
		return false;
	}

	private void ResetPosition(Control control)
	{
		SetPosition(control, BorderPosition.None);
	}

	public override void RemoveLayoutComponent(Control childControl)
	{
		BorderPosition positionFromControl = GetPositionFromControl(childControl);
		if (positionFromControl != BorderPosition.None)
		{
			positionVsControls.Remove(positionFromControl);
		}
		if (preferredSizes[childControl] != null)
		{
			Size size = (Size)preferredSizes[childControl];
			childControl.Size = size;
			preferredSizes.Remove(childControl);
		}
		base.RemoveLayoutComponent(childControl);
	}

	public override void AddLayoutComponent(Control childControl, object constraints)
	{
		if (constraints == null || typeof(BorderPosition) != constraints.GetType())
		{
			throw new ArgumentException("Constraints should be of the BorderPosition when calling AddLayoutComponent", "constraints");
		}
		BorderPosition borderPosition = (BorderPosition)constraints;
		BorderPosition positionFromControl = GetPositionFromControl(childControl);
		if (positionFromControl != borderPosition)
		{
			if (base.ContainerControl != null)
			{
				base.ContainerControl.SuspendLayout();
			}
			RemoveLayoutComponent(childControl);
			if (borderPosition != BorderPosition.None)
			{
				positionVsControls[borderPosition] = childControl;
			}
			base.AddLayoutComponent(childControl, constraints);
			if (base.ContainerControl != null)
			{
				base.ContainerControl.ResumeLayout(performLayout: false);
				base.ContainerControl.PerformLayout(childControl, "Bounds");
			}
		}
	}

	[Category("Layout Manager")]
	public BorderPosition GetPosition(Control control)
	{
		return GetPositionFromControl(control);
	}

	private BorderPosition GetPositionFromControl(Control control)
	{
		object obj = null;
		foreach (object key in positionVsControls.Keys)
		{
			if (positionVsControls[key] == control)
			{
				obj = key;
				break;
			}
		}
		if (obj != null)
		{
			return (BorderPosition)obj;
		}
		return BorderPosition.None;
	}

	private Control GetControlFromPosition(BorderPosition direction)
	{
		object obj = positionVsControls[direction];
		if (obj != null)
		{
			return obj as Control;
		}
		return null;
	}

	[Browsable(false)]
	public override Size GetPreferredSize(Control control)
	{
		return base.GetPreferredSize(control);
	}

	protected override Size GetStaticPreferredSize(Control control)
	{
		Size staticPreferredSize = base.GetStaticPreferredSize(control);
		BorderPosition positionFromControl = GetPositionFromControl(control);
		Size size = staticPreferredSize;
		switch (positionFromControl)
		{
		case BorderPosition.East:
		case BorderPosition.West:
			size.Width = control.Size.Width;
			goto default;
		case BorderPosition.North:
		case BorderPosition.South:
			size.Height = control.Size.Height;
			goto default;
		default:
			if (size != staticPreferredSize)
			{
				SetPreferredSize(control, size);
			}
			break;
		case BorderPosition.None:
			break;
		}
		return size;
	}

	[Browsable(false)]
	public override Size GetMinimumSize(Control control)
	{
		return base.GetMinimumSize(control);
	}

	public override Size PreferredLayoutSize()
	{
		Size prefSizeNorth = Size.Empty;
		Size prefSizeSouth = Size.Empty;
		Size prefSizeWest = Size.Empty;
		Size prefSizeEast = Size.Empty;
		Size prefSizeCenter = Size.Empty;
		LookupPreferredSizes(ref prefSizeNorth, ref prefSizeSouth, ref prefSizeWest, ref prefSizeEast, ref prefSizeCenter);
		int width = CalcMax(prefSizeNorth.Width, prefSizeSouth.Width, prefSizeWest.Width + prefSizeEast.Width + prefSizeCenter.Width);
		int height = prefSizeNorth.Height + prefSizeSouth.Height + CalcMax(prefSizeWest.Height, prefSizeCenter.Height, prefSizeEast.Height);
		return new Size(width, height);
	}

	private int CalcMax(params int[] values)
	{
		int num = 0;
		foreach (int num2 in values)
		{
			if (num < num2)
			{
				num = num2;
			}
		}
		return num;
	}

	private void LookupPreferredSizes(ref Size prefSizeNorth, ref Size prefSizeSouth, ref Size prefSizeWest, ref Size prefSizeEast, ref Size prefSizeCenter)
	{
		Control control = null;
		if ((control = GetControlFromPosition(BorderPosition.North)) != null)
		{
			prefSizeNorth = GetPreferredSize(control);
		}
		if ((control = GetControlFromPosition(BorderPosition.South)) != null)
		{
			prefSizeSouth = GetPreferredSize(control);
		}
		if ((control = GetControlFromPosition(BorderPosition.West)) != null)
		{
			prefSizeWest = GetPreferredSize(control);
		}
		if ((control = GetControlFromPosition(BorderPosition.East)) != null)
		{
			prefSizeEast = GetPreferredSize(control);
		}
		if ((control = GetControlFromPosition(BorderPosition.Center)) != null)
		{
			prefSizeCenter = GetPreferredSize(control);
		}
	}

	public override Size MinimumLayoutSize()
	{
		return PreferredLayoutSize();
	}

	public override void LayoutContainer()
	{
		if (IsInit())
		{
			Monitor.Enter(this);
			base.ContainerControl.SuspendLayout();
			Rectangle bounds = GetBounds();
			Size prefSizeNorth = Size.Empty;
			Size prefSizeSouth = Size.Empty;
			Size prefSizeWest = Size.Empty;
			Size prefSizeEast = Size.Empty;
			Size prefSizeCenter = Size.Empty;
			LookupPreferredSizes(ref prefSizeNorth, ref prefSizeSouth, ref prefSizeWest, ref prefSizeEast, ref prefSizeCenter);
			Size empty = Size.Empty;
			Size empty2 = Size.Empty;
			Size empty3 = Size.Empty;
			Size empty4 = Size.Empty;
			Size empty5 = Size.Empty;
			if (!prefSizeNorth.IsEmpty)
			{
				empty.Height = prefSizeNorth.Height;
				empty.Width = bounds.Width;
			}
			if (!prefSizeSouth.IsEmpty)
			{
				empty2.Height = prefSizeSouth.Height;
				empty2.Width = bounds.Width;
			}
			int height = Math.Max(0, bounds.Height - (empty.Height + empty2.Height));
			if (!prefSizeEast.IsEmpty)
			{
				empty4.Width = prefSizeEast.Width;
				empty4.Height = height;
			}
			if (!prefSizeWest.IsEmpty)
			{
				empty3.Width = prefSizeWest.Width;
				empty3.Height = height;
			}
			int width = Math.Max(0, bounds.Width - (empty4.Width + empty3.Width));
			empty5.Width = width;
			empty5.Height = height;
			int num = CalcMax(empty3.Height, empty5.Height, empty4.Height);
			int num2 = 2 * vGap;
			int num3 = ((num >= num2) ? num2 : num);
			if (empty3.Height != 0)
			{
				empty3.Height -= num3;
			}
			if (empty4.Height != 0)
			{
				empty4.Height -= num3;
			}
			if (empty5.Height != 0)
			{
				empty5.Height -= num3;
			}
			num = CalcMax(empty3.Height, empty5.Height, empty4.Height);
			int num4 = 2 * hGap;
			int num5 = ((empty5.Width >= num4) ? num4 : empty5.Width);
			if (empty5.Width != 0)
			{
				empty5.Width -= num5;
			}
			int x = bounds.X;
			int num6 = x + empty3.Width + num5 / 2;
			int x2 = num6 + empty5.Width + num5 / 2;
			int y = bounds.Y;
			int num7 = y + empty.Height + num3 / 2;
			int y2 = num7 + num + num3 / 2;
			Rectangle bounds2 = new Rectangle(new Point(x, y), empty);
			Rectangle bounds3 = new Rectangle(new Point(x, y2), empty2);
			Rectangle bounds4 = new Rectangle(new Point(x, num7), empty3);
			Rectangle bounds5 = new Rectangle(new Point(x2, num7), empty4);
			Rectangle bounds6 = new Rectangle(new Point(num6, num7), empty5);
			Control control = null;
			if ((control = GetControlFromPosition(BorderPosition.North)) != null)
			{
				control.Bounds = bounds2;
			}
			if ((control = GetControlFromPosition(BorderPosition.South)) != null)
			{
				control.Bounds = bounds3;
			}
			if ((control = GetControlFromPosition(BorderPosition.West)) != null)
			{
				control.Bounds = bounds4;
			}
			if ((control = GetControlFromPosition(BorderPosition.East)) != null)
			{
				control.Bounds = bounds5;
			}
			if ((control = GetControlFromPosition(BorderPosition.Center)) != null)
			{
				control.Bounds = bounds6;
			}
			base.ContainerControl.ResumeLayout(performLayout: false);
			Monitor.Exit(this);
		}
	}
}
