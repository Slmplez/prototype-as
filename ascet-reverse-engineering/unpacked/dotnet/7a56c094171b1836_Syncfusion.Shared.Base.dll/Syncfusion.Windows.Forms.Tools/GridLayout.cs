using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.GridLayout.bmp")]
[ProvideProperty("ParticipateInLayout", typeof(Control))]
[Description("Represents the layout manager that lays out the child components as a grid consisting of rows and columns.")]
[ToolboxItemFilter("System.Windows.Forms")]
public class GridLayout : LayoutManager
{
	private const int DefaultGap = 0;

	private int rows;

	private int columns;

	private int hGap;

	private int vGap;

	[Description("Specifies the number of rows in the grid.")]
	[Category("Appearance")]
	public int Rows
	{
		get
		{
			if (rows == 0 && columns == 0)
			{
				rows = 1;
			}
			return rows;
		}
		set
		{
			if (rows != value)
			{
				if (value < 0)
				{
					value = 0;
				}
				rows = value;
				if (base.ContainerControl != null)
				{
					base.ContainerControl.PerformLayout();
				}
				MakeDirty();
			}
		}
	}

	[Category("Appearance")]
	[Description("Specifies the number of columns in the grid.")]
	public int Columns
	{
		get
		{
			return columns;
		}
		set
		{
			if (columns != value)
			{
				if (value < 0)
				{
					value = 0;
				}
				columns = value;
				_ = Rows;
				if (base.ContainerControl != null)
				{
					base.ContainerControl.PerformLayout();
				}
				MakeDirty();
			}
		}
	}

	[DefaultValue(0)]
	[Category("Appearance")]
	[Description("Specifies the horizontal spacing between the layout border and the components.")]
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

	[Category("Appearance")]
	[Description("Specifies the vertical spacing between the layout border and the components.")]
	[DefaultValue(0)]
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

	public GridLayout()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(GridLayout));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		rows = 1;
		columns = 0;
		hGap = 0;
		vGap = 0;
	}

	public GridLayout(IContainer container)
		: this()
	{
		container?.Add(this);
	}

	public GridLayout(Control container)
		: this()
	{
		base.ContainerControl = container;
	}

	public GridLayout(Control container, int rows, int columns)
		: this(container)
	{
		this.rows = rows;
		this.columns = columns;
	}

	public GridLayout(Control container, int rows, int columns, int hGap, int vGap)
		: this(container, rows, columns)
	{
		this.hGap = hGap;
		this.vGap = vGap;
	}

	[Category("Layout Manager")]
	[Localizable(true)]
	public bool GetParticipateInLayout(Control control)
	{
		if (base.LayoutControls.IndexOf(control) != -1)
		{
			return true;
		}
		return false;
	}

	public void SetParticipateInLayout(Control control, bool value)
	{
		if (value)
		{
			AddLayoutComponent(control, null);
		}
		else
		{
			RemoveLayoutComponent(control);
		}
	}

	protected override void OnControlAdded(object sender, ControlEventArgs e)
	{
		if (!base.LoadingDocument && !initializing)
		{
			SetParticipateInLayout(e.Control, value: true);
		}
		base.OnControlAdded(sender, e);
	}

	protected override void OnContainerControlChanged(EventArgs e)
	{
		base.OnContainerControlChanged(e);
		if (base.ContainerControl == null || base.LoadingDocument)
		{
			return;
		}
		foreach (Control control in base.ContainerControl.Controls)
		{
			SetParticipateInLayout(control, value: true);
		}
	}

	[Browsable(false)]
	public override Size GetPreferredSize(Control control)
	{
		return base.GetPreferredSize(control);
	}

	[Browsable(false)]
	public override Size GetMinimumSize(Control control)
	{
		return base.GetMinimumSize(control);
	}

	protected override void ResetLayoutInfo()
	{
		base.ResetLayoutInfo();
		rows = 1;
		columns = 0;
	}

	public override Size PreferredLayoutSize()
	{
		IList controls = GetControls();
		int count = controls.Count;
		int num = Rows;
		int num2 = Columns;
		if (num > 0)
		{
			num2 = (count + num - 1) / num;
		}
		else
		{
			num = (count + num2 - 1) / num2;
		}
		int num3 = 0;
		int num4 = 0;
		for (int i = 0; i < count; i++)
		{
			Control control = controls[i] as Control;
			Size preferredSize = GetPreferredSize(control);
			if (num3 < preferredSize.Width)
			{
				num3 = preferredSize.Width;
			}
			if (num4 < preferredSize.Height)
			{
				num4 = preferredSize.Height;
			}
		}
		return new Size(AdjustWidthForMargins(num2 * num3 + (num2 - 1) * HGap), AdjustHeightForMargins(num * num4 + (num - 1) * VGap));
	}

	public override Size MinimumLayoutSize()
	{
		IList controls = GetControls();
		int count = controls.Count;
		int num = Rows;
		int num2 = Columns;
		if (num > 0)
		{
			num2 = (count + num - 1) / num;
		}
		else
		{
			num = (count + num2 - 1) / num2;
		}
		int num3 = 0;
		int num4 = 0;
		for (int i = 0; i < count; i++)
		{
			Control control = controls[i] as Control;
			Size minimumSize = GetMinimumSize(control);
			if (num3 < minimumSize.Width)
			{
				num3 = minimumSize.Width;
			}
			if (num4 < minimumSize.Height)
			{
				num4 = minimumSize.Height;
			}
		}
		return new Size(num2 * num3 + (num2 - 1) * HGap + base.HorzNearMargin + base.HorzFarMargin, num * num4 + (num - 1) * VGap + base.TopMargin + base.BottomMargin);
	}

	public override void LayoutContainer()
	{
		if (!IsInit())
		{
			return;
		}
		Monitor.Enter(this);
		base.ContainerControl.SuspendLayout();
		Rectangle bounds = GetBounds();
		IList controls = GetControls();
		int count = controls.Count;
		int num = Rows;
		int num2 = Columns;
		if (count == 0)
		{
			return;
		}
		if (num > 0)
		{
			num2 = (count + num - 1) / num;
		}
		else
		{
			num = (count + num2 - 1) / num2;
		}
		int width = bounds.Width;
		int height = bounds.Height;
		width -= (num2 - 1) * hGap;
		int num3 = width % num2;
		width /= num2;
		height -= (num - 1) * vGap;
		int num4 = height % num;
		height /= num;
		int num5 = bounds.Left + (int)Math.Ceiling((float)num3 / 2f);
		int num6 = bounds.Top + (int)Math.Ceiling((float)num4 / 2f);
		int num7 = 0;
		int num8 = 0;
		while (num7 < num2)
		{
			int num9 = 0;
			int num10 = 0;
			while (num9 < num)
			{
				int num11 = num9 * num2 + num7;
				if (num11 < count)
				{
					ControlBounds childControlBounds = GetChildControlBounds((Control)controls[num11]);
					childControlBounds.Bounds = new Rectangle(num5 + num8, num6 + num10, width, height);
				}
				num9++;
				num10 += height + vGap;
			}
			num7++;
			num8 += width + hGap;
		}
		base.ContainerControl.ResumeLayout(performLayout: false);
		Monitor.Exit(this);
	}
}
