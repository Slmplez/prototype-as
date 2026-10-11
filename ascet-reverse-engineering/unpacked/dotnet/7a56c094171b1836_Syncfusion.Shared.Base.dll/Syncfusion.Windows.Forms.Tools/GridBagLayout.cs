using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.GridBagLayout.bmp")]
[ToolboxItemFilter("System.Windows.Forms")]
[Description("Represents the layout manager that arranges control in grid with different size in rows and columns.")]
[ProvideProperty("Constraints", typeof(Control))]
public class GridBagLayout : LayoutManager
{
	public const int MaxGridSize = 512;

	public const int MinSize = 1;

	protected static int PreferredSize = 1;

	protected static int MinimumSize = 2;

	private Hashtable controlsMap;

	protected Hashtable noFillSizes;

	private GridBagLayoutInfo layoutInfo;

	public int[] columnWidths;

	public int[] rowHeights;

	public double[] columnWeights;

	public double[] rowWeights;

	public GridBagLayout()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(GridBagLayout));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		controlsMap = new Hashtable();
		noFillSizes = new Hashtable();
	}

	public GridBagLayout(IContainer container)
		: this()
	{
		container?.Add(this);
	}

	public GridBagLayout(Control container)
		: this()
	{
		base.ContainerControl = container;
	}

	protected override Size GetStaticPreferredSize(Control control)
	{
		if (preferredSizes[control] == null)
		{
			if (noFillSizes[control] != null)
			{
				return (Size)noFillSizes[control];
			}
			Size size = control.Size;
			GridBagConstraints constraintsRef = GetConstraintsRef(control);
			if (constraintsRef.IpadX > 0)
			{
				size.Width -= constraintsRef.IpadX;
			}
			if (constraintsRef.IpadY > 0)
			{
				size.Height -= constraintsRef.IpadY;
			}
			return size;
		}
		return (Size)preferredSizes[control];
	}

	protected override Size GetStaticMinimumSize(Control control)
	{
		if (minimumSizes[control] == null)
		{
			if (noFillSizes[control] != null)
			{
				return (Size)noFillSizes[control];
			}
			Size size = control.Size;
			GridBagConstraints constraintsRef = GetConstraintsRef(control);
			if (constraintsRef.IpadX > 0)
			{
				size.Width -= constraintsRef.IpadX;
			}
			if (constraintsRef.IpadY > 0)
			{
				size.Height -= constraintsRef.IpadY;
			}
			return size;
		}
		return (Size)minimumSizes[control];
	}

	public override void ResetPreferredSize(Control control)
	{
		if (noFillSizes[control] != null)
		{
			MessageBox.Show("Cannot Reset preferred size when the control has a FillType other than FilleMode.None set.");
		}
		else
		{
			preferredSizes[control] = null;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool ShouldSerializePreferredSize(Control control)
	{
		if (!base.ShouldSerializePreferredSize(control))
		{
			return noFillSizes[control] != null;
		}
		return true;
	}

	public override void ResetMinimumSize(Control control)
	{
		if (noFillSizes[control] != null)
		{
			MessageBox.Show("Cannot Reset minimum size when the control has a FillType other than FillMode.None set.");
		}
		else
		{
			minimumSizes[control] = null;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool ShouldSerializeMinimumSize(Control control)
	{
		if (!base.ShouldSerializeMinimumSize(control))
		{
			return noFillSizes[control] != null;
		}
		return true;
	}

	public void SetConstraints(Control control, GridBagConstraints value)
	{
		if (value == null)
		{
			controlsMap.Remove(control);
			base.RemoveLayoutComponent(control);
			return;
		}
		GridBagConstraints gridBagConstraints = controlsMap[control] as GridBagConstraints;
		if (gridBagConstraints != null)
		{
			gridBagConstraints.PropertyChanged -= OnConstraintsChanged;
		}
		UpdateNoFillSizes(control, value);
		UpdatePreferredSizeForPadding(control, value);
		GridBagConstraints gridBagConstraints2 = value.Clone() as GridBagConstraints;
		controlsMap[control] = gridBagConstraints2;
		base.AddLayoutComponent(control, value);
		gridBagConstraints2.PropertyChanged += OnConstraintsChanged;
		if (base.ContainerControl != null)
		{
			base.ContainerControl.PerformLayout();
		}
	}

	private void OnConstraintsChanged(object sender, EventArgs e)
	{
		LayoutContainer();
	}

	protected bool ShouldSerializeConstraints(Control control)
	{
		if (GetConstraintsRef(control) == GridBagConstraints.Default())
		{
			return false;
		}
		return true;
	}

	protected void ResetConstraints(Control control)
	{
		SetConstraints(control, GridBagConstraints.Default());
	}

	private void UpdatePreferredSizeForPadding(Control control, GridBagConstraints newConstraints)
	{
		if (base.DesignMode && noFillSizes[control] != null)
		{
			Size size = (Size)noFillSizes[control];
			Size size2 = size;
			GridBagConstraints gridBagConstraints = (GridBagConstraints)controlsMap[control];
			if (gridBagConstraints == null)
			{
				gridBagConstraints = GridBagConstraints.Default();
			}
			if (gridBagConstraints.IpadX != newConstraints.IpadX)
			{
				size2.Width -= newConstraints.IpadX - gridBagConstraints.IpadX;
			}
			if (gridBagConstraints.IpadY != newConstraints.IpadY)
			{
				size2.Height -= newConstraints.IpadY - gridBagConstraints.IpadY;
			}
			if (size2 != size)
			{
				noFillSizes[control] = size2;
			}
		}
	}

	private void UpdateNoFillSizes(Control control, GridBagConstraints newConstraints)
	{
		if (!base.DesignMode)
		{
			return;
		}
		GridBagConstraints gridBagConstraints = (GridBagConstraints)controlsMap[control];
		if (newConstraints != null && newConstraints.Fill != FillType.None && (gridBagConstraints == null || gridBagConstraints.Fill == FillType.None))
		{
			noFillSizes[control] = control.Size;
		}
		else if ((newConstraints == null || newConstraints.Fill == FillType.None) && gridBagConstraints != null && gridBagConstraints.Fill != FillType.None && noFillSizes[control] != null)
		{
			control.SuspendLayout();
			base.ContainerControl.SuspendLayout();
			if (preferredSizes[control] == noFillSizes[control])
			{
				preferredSizes[control] = null;
			}
			if (minimumSizes[control] == noFillSizes[control])
			{
				minimumSizes[control] = null;
			}
			control.Size = (Size)noFillSizes[control];
			base.ContainerControl.ResumeLayout(performLayout: false);
			control.ResumeLayout(performLayout: false);
			noFillSizes[control] = null;
		}
	}

	public override void SetPreferredSize(Control control, Size value)
	{
		base.SetPreferredSize(control, value);
		if (base.DesignMode)
		{
			GridBagConstraints constraintsRef = GetConstraintsRef(control);
			if (constraintsRef != null && constraintsRef.Fill != FillType.None)
			{
				noFillSizes[control] = value;
			}
		}
	}

	[Localizable(true)]
	[Category("Layout Manager")]
	public GridBagConstraints GetConstraints(Control control)
	{
		return GetConstraintsRef(control);
	}

	public GridBagConstraints GetConstraintsRef(Control control)
	{
		GridBagConstraints gridBagConstraints = (GridBagConstraints)controlsMap[control];
		if (gridBagConstraints == null)
		{
			SetConstraints(control, GridBagConstraints.Default());
			gridBagConstraints = (GridBagConstraints)controlsMap[control];
		}
		return gridBagConstraints;
	}

	public Point GetLayoutOrigin()
	{
		Point result = new Point(0, 0);
		if (layoutInfo != null)
		{
			result.X = layoutInfo.startX;
			result.Y = layoutInfo.startY;
		}
		return result;
	}

	[CLSCompliant(false)]
	public int[][] GetLayoutDimensions()
	{
		if (layoutInfo == null)
		{
			return new int[2][];
		}
		int[][] array = new int[2][]
		{
			new int[layoutInfo.columns],
			new int[layoutInfo.rows]
		};
		Array.Copy(layoutInfo.minWidth, array[0], layoutInfo.columns);
		Array.Copy(layoutInfo.minHeight, array[1], layoutInfo.rows);
		return array;
	}

	[CLSCompliant(false)]
	public double[][] GetLayoutWeights()
	{
		if (layoutInfo == null)
		{
			return new double[2][];
		}
		double[][] array = new double[2][]
		{
			new double[layoutInfo.columns],
			new double[layoutInfo.rows]
		};
		Array.Copy(layoutInfo.weightX, array[0], layoutInfo.columns);
		Array.Copy(layoutInfo.weightY, array[1], layoutInfo.rows);
		return array;
	}

	public Point GetLocation(int x, int y)
	{
		Point result = new Point(0, 0);
		if (layoutInfo == null)
		{
			return result;
		}
		int num = layoutInfo.startX;
		int i;
		for (i = 0; i < layoutInfo.columns; i++)
		{
			num += layoutInfo.minWidth[i];
			if (num > x)
			{
				break;
			}
		}
		result.X = i;
		num = layoutInfo.startY;
		for (i = 0; i < layoutInfo.rows; i++)
		{
			num += layoutInfo.minHeight[i];
			if (num > y)
			{
				break;
			}
		}
		result.Y = i;
		return result;
	}

	public override void AddLayoutComponent(Control control, object constraints)
	{
		if (constraints is GridBagConstraints)
		{
			SetConstraints(control, (GridBagConstraints)constraints);
		}
		else if (constraints != null)
		{
			throw new ArgumentException("Invalid GridBag constraints. Constraints must be of type GridBagConstraints");
		}
	}

	protected override void OnControlAdded(object sender, ControlEventArgs e)
	{
		Control control = e.Control;
		if (!controlsMap.Contains(control))
		{
			SetConstraints(control, GridBagConstraints.Default());
		}
		base.OnControlAdded(sender, e);
	}

	public override void RemoveLayoutComponent(Control control)
	{
		SetConstraints(control, null);
	}

	public override Size PreferredLayoutSize()
	{
		GridBagLayoutInfo info = GetLayoutInfo(PreferredSize);
		return GetMinSize(info);
	}

	public override Size MinimumLayoutSize()
	{
		GridBagLayoutInfo info = GetLayoutInfo(1);
		return GetMinSize(info);
	}

	protected override void ResetLayoutInfo()
	{
		base.ResetLayoutInfo();
		noFillSizes.Clear();
	}

	public override void LayoutContainer()
	{
		if (IsInit() && !initializing)
		{
			base.ContainerControl.SuspendLayout();
			LayoutGridBag();
			base.ContainerControl.ResumeLayout(performLayout: false);
		}
	}

	[DocumentationExclude]
	protected GridBagLayoutInfo GetLayoutInfo(int sizeflag)
	{
		Monitor.Enter(this);
		GridBagLayoutInfo gridBagLayoutInfo = new GridBagLayoutInfo();
		gridBagLayoutInfo.columns = (gridBagLayoutInfo.rows = 0);
		int num2;
		int num = (num2 = -1);
		int[] array = new int[512];
		int[] array2 = new int[512];
		IList controls = GetControls();
		int j;
		for (int i = 0; i < controls.Count; i++)
		{
			Control control = controls[i] as Control;
			if (!IsVisible(control))
			{
				continue;
			}
			GridBagConstraints constraintsRef = GetConstraintsRef(control);
			if (constraintsRef.IsEmpty)
			{
				continue;
			}
			int num3 = constraintsRef.gridPosX;
			int num4 = constraintsRef.gridPosY;
			int num5 = constraintsRef.cellSpanX;
			if (num5 <= 0)
			{
				num5 = 1;
			}
			int num6 = constraintsRef.cellSpanY;
			if (num6 <= 0)
			{
				num6 = 1;
			}
			if (num3 < 0 && num4 < 0)
			{
				if (num >= 0)
				{
					num4 = num;
				}
				else if (num2 >= 0)
				{
					num3 = num2;
				}
				else
				{
					num4 = 0;
				}
			}
			int num7;
			int num8;
			if (num3 < 0)
			{
				num7 = 0;
				for (j = num4; j < num4 + num6; j++)
				{
					num7 = Math.Max(num7, array[j]);
				}
				num3 = num7 - num3 - 1;
				if (num3 < 0)
				{
					num3 = 0;
				}
			}
			else if (num4 < 0)
			{
				num8 = 0;
				for (j = num3; j < num3 + num5; j++)
				{
					num8 = Math.Max(num8, array2[j]);
				}
				num4 = num8 - num4 - 1;
				if (num4 < 0)
				{
					num4 = 0;
				}
			}
			num7 = num3 + num5;
			while (gridBagLayoutInfo.columns < num7)
			{
				gridBagLayoutInfo.columns++;
			}
			num8 = num4 + num6;
			while (gridBagLayoutInfo.rows < num8)
			{
				gridBagLayoutInfo.rows++;
			}
			for (j = num3; j < num3 + num5; j++)
			{
				array2[j] = num8;
			}
			for (j = num4; j < num4 + num6; j++)
			{
				array[j] = num7;
			}
			Size size = ((sizeflag != PreferredSize) ? GetMinimumSize(control) : GetPreferredSize(control));
			constraintsRef.minWidth = size.Width;
			constraintsRef.minHeight = size.Height;
			if (constraintsRef.cellSpanY == 0 && constraintsRef.cellSpanX == 0)
			{
				num = (num2 = -1);
			}
			if (constraintsRef.cellSpanY == 0 && num < 0)
			{
				num2 = num3 + num5;
			}
			else if (constraintsRef.cellSpanX == 0 && num2 < 0)
			{
				num = num4 + num6;
			}
		}
		if (columnWidths != null && gridBagLayoutInfo.columns < columnWidths.Length)
		{
			gridBagLayoutInfo.columns = columnWidths.Length;
		}
		if (rowHeights != null && gridBagLayoutInfo.rows < rowHeights.Length)
		{
			gridBagLayoutInfo.rows = rowHeights.Length;
		}
		num = (num2 = -1);
		array = new int[512];
		array2 = new int[512];
		for (int i = 0; i < controls.Count; i++)
		{
			Control control = controls[i] as Control;
			if (!IsVisible(control))
			{
				continue;
			}
			GridBagConstraints constraintsRef = GetConstraintsRef(control);
			if (constraintsRef.IsEmpty)
			{
				continue;
			}
			int num3 = constraintsRef.gridPosX;
			int num4 = constraintsRef.gridPosY;
			int num5 = constraintsRef.cellSpanX;
			int num6 = constraintsRef.cellSpanY;
			if (num3 < 0 && num4 < 0)
			{
				if (num >= 0)
				{
					num4 = num;
				}
				else if (num2 >= 0)
				{
					num3 = num2;
				}
				else
				{
					num4 = 0;
				}
			}
			int num7;
			int num8;
			if (num3 < 0)
			{
				if (num6 <= 0)
				{
					num6 += gridBagLayoutInfo.rows - num4;
					if (num6 < 1)
					{
						num6 = 1;
					}
				}
				num7 = 0;
				for (j = num4; j < num4 + num6; j++)
				{
					num7 = Math.Max(num7, array[j]);
				}
				num3 = num7 - num3 - 1;
				if (num3 < 0)
				{
					num3 = 0;
				}
			}
			else if (num4 < 0)
			{
				if (num5 <= 0)
				{
					num5 += gridBagLayoutInfo.columns - num3;
					if (num5 < 1)
					{
						num5 = 1;
					}
				}
				num8 = 0;
				for (j = num3; j < num3 + num5; j++)
				{
					num8 = Math.Max(num8, array2[j]);
				}
				num4 = num8 - num4 - 1;
				if (num4 < 0)
				{
					num4 = 0;
				}
			}
			if (num5 <= 0)
			{
				num5 += gridBagLayoutInfo.columns - num3;
				if (num5 < 1)
				{
					num5 = 1;
				}
			}
			if (num6 <= 0)
			{
				num6 += gridBagLayoutInfo.rows - num4;
				if (num6 < 1)
				{
					num6 = 1;
				}
			}
			num7 = num3 + num5;
			num8 = num4 + num6;
			for (j = num3; j < num3 + num5; j++)
			{
				array2[j] = num8;
			}
			for (j = num4; j < num4 + num6; j++)
			{
				array[j] = num7;
			}
			if (constraintsRef.cellSpanY == 0 && constraintsRef.cellSpanX == 0)
			{
				num = (num2 = -1);
			}
			if (constraintsRef.cellSpanY == 0 && num < 0)
			{
				num2 = num3 + num5;
			}
			else if (constraintsRef.cellSpanX == 0 && num2 < 0)
			{
				num = num4 + num6;
			}
			constraintsRef.tempCurPosX = num3;
			constraintsRef.tempCurPosY = num4;
			constraintsRef.tempCellSpanX = num5;
			constraintsRef.tempCellSpanY = num6;
		}
		if (columnWidths != null)
		{
			Array.Copy(columnWidths, gridBagLayoutInfo.minWidth, columnWidths.Length);
		}
		if (rowHeights != null)
		{
			Array.Copy(rowHeights, gridBagLayoutInfo.minHeight, rowHeights.Length);
		}
		if (columnWeights != null)
		{
			Array.Copy(columnWeights, gridBagLayoutInfo.weightX, columnWeights.Length);
		}
		if (rowWeights != null)
		{
			Array.Copy(rowWeights, gridBagLayoutInfo.weightY, rowWeights.Length);
		}
		int num9 = int.MaxValue;
		j = 1;
		while (j != int.MaxValue)
		{
			for (int i = 0; i < controls.Count; i++)
			{
				Control control = controls[i] as Control;
				if (!IsVisible(control))
				{
					continue;
				}
				GridBagConstraints constraintsRef = GetConstraintsRef(control);
				if (constraintsRef.IsEmpty)
				{
					continue;
				}
				if (constraintsRef.tempCellSpanX == j)
				{
					int num7 = constraintsRef.tempCurPosX + constraintsRef.tempCellSpanX;
					double num10 = constraintsRef.weightX;
					for (int k = constraintsRef.tempCurPosX; k < num7; k++)
					{
						num10 -= gridBagLayoutInfo.weightX[k];
					}
					if (num10 > 0.0)
					{
						double num11 = 0.0;
						int k;
						for (k = constraintsRef.tempCurPosX; k < num7; k++)
						{
							num11 += gridBagLayoutInfo.weightX[k];
						}
						k = constraintsRef.tempCurPosX;
						while (num11 > 0.0 && k < num7)
						{
							double num12 = gridBagLayoutInfo.weightX[k];
							double num13 = num12 * num10 / num11;
							gridBagLayoutInfo.weightX[k] += num13;
							num10 -= num13;
							num11 -= num12;
							k++;
						}
						gridBagLayoutInfo.weightX[num7 - 1] += num10;
					}
					int num14 = constraintsRef.minWidth + constraintsRef.ipadX + constraintsRef.Insets.Left + constraintsRef.Insets.Right;
					for (int k = constraintsRef.tempCurPosX; k < num7; k++)
					{
						num14 -= gridBagLayoutInfo.minWidth[k];
					}
					if (num14 > 0)
					{
						double num11 = 0.0;
						int k;
						for (k = constraintsRef.tempCurPosX; k < num7; k++)
						{
							num11 += gridBagLayoutInfo.weightX[k];
						}
						k = constraintsRef.tempCurPosX;
						while (num11 > 0.0 && k < num7)
						{
							double num15 = gridBagLayoutInfo.weightX[k];
							int num16 = (int)(num15 * (double)num14 / num11);
							gridBagLayoutInfo.minWidth[k] += num16;
							num14 -= num16;
							num11 -= num15;
							k++;
						}
						gridBagLayoutInfo.minWidth[num7 - 1] += num14;
					}
				}
				else if (constraintsRef.tempCellSpanX > j && constraintsRef.tempCellSpanX < num9)
				{
					num9 = constraintsRef.tempCellSpanX;
				}
				if (constraintsRef.tempCellSpanY == j)
				{
					int num8 = constraintsRef.tempCurPosY + constraintsRef.tempCellSpanY;
					double num10 = constraintsRef.weightY;
					for (int k = constraintsRef.tempCurPosY; k < num8; k++)
					{
						num10 -= gridBagLayoutInfo.weightY[k];
					}
					if (num10 > 0.0)
					{
						double num11 = 0.0;
						int k;
						for (k = constraintsRef.tempCurPosY; k < num8; k++)
						{
							num11 += gridBagLayoutInfo.weightY[k];
						}
						k = constraintsRef.tempCurPosY;
						while (num11 > 0.0 && k < num8)
						{
							double num17 = gridBagLayoutInfo.weightY[k];
							double num18 = num17 * num10 / num11;
							gridBagLayoutInfo.weightY[k] += num18;
							num10 -= num18;
							num11 -= num17;
							k++;
						}
						gridBagLayoutInfo.weightY[num8 - 1] += num10;
					}
					int num14 = constraintsRef.minHeight + constraintsRef.ipadY + constraintsRef.Insets.Top + constraintsRef.Insets.Bottom;
					for (int k = constraintsRef.tempCurPosY; k < num8; k++)
					{
						num14 -= gridBagLayoutInfo.minHeight[k];
					}
					if (num14 > 0)
					{
						double num11 = 0.0;
						int k;
						for (k = constraintsRef.tempCurPosY; k < num8; k++)
						{
							num11 += gridBagLayoutInfo.weightY[k];
						}
						k = constraintsRef.tempCurPosY;
						while (num11 > 0.0 && k < num8)
						{
							double num19 = gridBagLayoutInfo.weightY[k];
							int num20 = (int)(num19 * (double)num14 / num11);
							gridBagLayoutInfo.minHeight[k] += num20;
							num14 -= num20;
							num11 -= num19;
							k++;
						}
						gridBagLayoutInfo.minHeight[num8 - 1] += num14;
					}
				}
				else if (constraintsRef.tempCellSpanY > j && constraintsRef.tempCellSpanY < num9)
				{
					num9 = constraintsRef.tempCellSpanY;
				}
			}
			j = num9;
			num9 = int.MaxValue;
		}
		Monitor.Exit(this);
		return gridBagLayoutInfo;
	}

	[DocumentationExclude]
	protected void AdjustForGravity(GridBagConstraints constraints, ref Rectangle r)
	{
		r.X += constraints.Insets.Left;
		r.Width -= constraints.Insets.Left + constraints.Insets.Right;
		r.Y += constraints.Insets.Top;
		r.Height -= constraints.Insets.Top + constraints.Insets.Bottom;
		int num = 0;
		if (constraints.fill != FillType.Horizontal && constraints.fill != FillType.Both && r.Width > constraints.minWidth + constraints.ipadX)
		{
			num = r.Width - (constraints.minWidth + constraints.ipadX);
			r.Width = constraints.minWidth + constraints.ipadX;
		}
		int num2 = 0;
		if (constraints.fill != FillType.Vertical && constraints.fill != FillType.Both && r.Height > constraints.minHeight + constraints.ipadY)
		{
			num2 = r.Height - (constraints.minHeight + constraints.ipadY);
			r.Height = constraints.minHeight + constraints.ipadY;
		}
		switch (constraints.anchor)
		{
		case AnchorTypes.Center:
			r.X += num / 2;
			r.Y += num2 / 2;
			break;
		case AnchorTypes.North:
			r.X += num / 2;
			break;
		case AnchorTypes.NorthEast:
			r.X += num;
			break;
		case AnchorTypes.East:
			r.X += num;
			r.Y += num2 / 2;
			break;
		case AnchorTypes.SouthEast:
			r.X += num;
			r.Y += num2;
			break;
		case AnchorTypes.South:
			r.X += num / 2;
			r.Y += num2;
			break;
		case AnchorTypes.SouthWest:
			r.Y += num2;
			break;
		case AnchorTypes.West:
			r.Y += num2 / 2;
			break;
		default:
			throw new ArgumentException("Illegal GridBag Anchor value");
		case AnchorTypes.NorthWest:
			break;
		}
	}

	protected Size GetMinSize(GridBagLayoutInfo info)
	{
		Size result = default(Size);
		int num = 0;
		for (int i = 0; i < info.columns; i++)
		{
			num += info.minWidth[i];
		}
		result.Width = num;
		num = 0;
		for (int i = 0; i < info.rows; i++)
		{
			num += info.minHeight[i];
		}
		result.Height = num;
		return result;
	}

	[DocumentationExclude]
	protected void LayoutGridBag()
	{
		if (!IsInit())
		{
			return;
		}
		Rectangle r = default(Rectangle);
		IList controls = GetControls();
		if (controls.Count == 0 && (columnWidths == null || columnWidths.Length == 0) && (rowHeights == null || rowHeights.Length == 0))
		{
			return;
		}
		Monitor.Enter(this);
		Rectangle bounds = GetBounds();
		GridBagLayoutInfo gridBagLayoutInfo = GetLayoutInfo(PreferredSize);
		Size minSize = GetMinSize(gridBagLayoutInfo);
		if (bounds.Width < minSize.Width || bounds.Height < minSize.Height)
		{
			gridBagLayoutInfo = GetLayoutInfo(1);
			minSize = GetMinSize(gridBagLayoutInfo);
		}
		layoutInfo = gridBagLayoutInfo;
		r.Width = minSize.Width;
		r.Height = minSize.Height;
		int num = bounds.Width - r.Width;
		if (num != 0)
		{
			double num2 = 0.0;
			for (int i = 0; i < gridBagLayoutInfo.columns; i++)
			{
				num2 += gridBagLayoutInfo.weightX[i];
			}
			if (num2 > 0.0)
			{
				int num3 = 0;
				for (int i = 0; i < gridBagLayoutInfo.columns; i++)
				{
					int num4 = (int)((double)gridBagLayoutInfo.minWidth[i] + (double)num * gridBagLayoutInfo.weightX[i] / num2);
					if (num4 < 0)
					{
						num4 = 0;
					}
					gridBagLayoutInfo.minWidth[i] = num4;
					num3 += num4;
				}
				num = bounds.Width - num3;
			}
		}
		int num5 = bounds.Height - r.Height;
		if (num5 != 0)
		{
			double num2 = 0.0;
			for (int i = 0; i < gridBagLayoutInfo.rows; i++)
			{
				num2 += gridBagLayoutInfo.weightY[i];
			}
			if (num2 > 0.0)
			{
				int num6 = 0;
				for (int i = 0; i < gridBagLayoutInfo.rows; i++)
				{
					int num7 = (int)((double)gridBagLayoutInfo.minHeight[i] + (double)num5 * gridBagLayoutInfo.weightY[i] / num2);
					if (num7 < 0)
					{
						num7 = 0;
					}
					gridBagLayoutInfo.minHeight[i] = num7;
					num6 += num7;
				}
				num5 = bounds.Height - num6;
			}
		}
		gridBagLayoutInfo.startX = num / 2;
		gridBagLayoutInfo.startY = num5 / 2;
		for (int j = 0; j < controls.Count; j++)
		{
			Control control = controls[j] as Control;
			if (!IsVisible(control))
			{
				continue;
			}
			GridBagConstraints constraintsRef = GetConstraintsRef(control);
			if (constraintsRef.IsEmpty)
			{
				continue;
			}
			r.X = gridBagLayoutInfo.startX;
			for (int i = 0; i < constraintsRef.tempCurPosX; i++)
			{
				r.X += gridBagLayoutInfo.minWidth[i];
			}
			r.Y = gridBagLayoutInfo.startY;
			for (int i = 0; i < constraintsRef.tempCurPosY; i++)
			{
				r.Y += gridBagLayoutInfo.minHeight[i];
			}
			r.Width = 0;
			for (int i = constraintsRef.tempCurPosX; i < constraintsRef.tempCurPosX + constraintsRef.tempCellSpanX; i++)
			{
				r.Width += gridBagLayoutInfo.minWidth[i];
			}
			r.Height = 0;
			for (int i = constraintsRef.tempCurPosY; i < constraintsRef.tempCurPosY + constraintsRef.tempCellSpanY; i++)
			{
				r.Height += gridBagLayoutInfo.minHeight[i];
			}
			AdjustForGravity(constraintsRef, ref r);
			if (r.Width <= 0 || r.Height <= 0)
			{
				control.Bounds = new Rectangle(0, 0, 0, 0);
				continue;
			}
			r = new Rectangle(bounds.Left + r.X, bounds.Top + r.Y, r.Width, r.Height);
			ControlBounds childControlBounds = GetChildControlBounds(control);
			if (childControlBounds.Location.X != r.X || childControlBounds.Location.Y != r.Y || childControlBounds.Width != r.Width || childControlBounds.Height != r.Height)
			{
				childControlBounds.Bounds = new Rectangle(r.X, r.Y, r.Width, r.Height);
			}
		}
		Monitor.Exit(this);
	}
}
