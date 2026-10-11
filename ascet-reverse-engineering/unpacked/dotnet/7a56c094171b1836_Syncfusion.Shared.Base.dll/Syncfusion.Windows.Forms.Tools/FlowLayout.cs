using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Represents the layout manager that does a left to right or top to bottom layout.")]
[ProvideProperty("Constraints", typeof(Control))]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.FlowLayout.bmp")]
[ToolboxItemFilter("System.Windows.Forms")]
public class FlowLayout : LayoutManager
{
	private const int DefaultGap = 5;

	private bool reverseRows;

	private FlowAlignment alignment;

	private int hGap;

	private int vGap;

	private bool autoHeight;

	private FlowLayoutMode layoutMode;

	private Hashtable controlsMap;

	protected Hashtable noFillSizes;

	private bool layoutForDeterminingPreferredSize;

	private Size lastKnownPreferredSize = Size.Empty;

	private int recurseCount;

	[DefaultValue(FlowAlignment.Center)]
	[Description("Specifies the alignment of layout components in the direction of flow.")]
	[Category("Behavior")]
	[Localizable(true)]
	public FlowAlignment Alignment
	{
		get
		{
			return alignment;
		}
		set
		{
			if (alignment != value)
			{
				alignment = value;
				if (base.ContainerControl != null)
				{
					base.ContainerControl.PerformLayout();
				}
				MakeDirty();
			}
		}
	}

	[Localizable(true)]
	[DefaultValue(FlowLayoutMode.Horizontal)]
	[Description("Specifies the layout mode.")]
	[Category("Behavior")]
	public FlowLayoutMode LayoutMode
	{
		get
		{
			return layoutMode;
		}
		set
		{
			if (layoutMode != value)
			{
				layoutMode = value;
				if (base.ContainerControl != null)
				{
					base.ContainerControl.PerformLayout();
				}
			}
		}
	}

	[Localizable(true)]
	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Lays out rows in opposite direction (right to left or bottom to top).")]
	public bool ReverseRows
	{
		get
		{
			return reverseRows;
		}
		set
		{
			if (reverseRows != value)
			{
				reverseRows = value;
				if (base.ContainerControl != null)
				{
					base.ContainerControl.PerformLayout();
				}
				MakeDirty();
			}
		}
	}

	[Description("Specifies the horizontal spacing between the layout border and the components.")]
	[DefaultValue(5)]
	[Localizable(true)]
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
				int num = hGap;
				hGap = value;
				if (base.ContainerControl != null)
				{
					base.ContainerControl.PerformLayout();
				}
				MakeDirty();
				OnGapChanged(this.HGapChanged, new ValueChangedEventArgs(num, value));
			}
		}
	}

	[Description("Specifies if the container's height should be enforced to the minimum when in horizontal alignment mode.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool AutoHeight
	{
		get
		{
			return autoHeight;
		}
		set
		{
			if (autoHeight != value)
			{
				autoHeight = value;
				if (base.ContainerControl != null)
				{
					base.ContainerControl.PerformLayout();
				}
				MakeDirty();
			}
		}
	}

	[Description("Specifies the vertical spacing between the layout border and the components.")]
	[DefaultValue(5)]
	[Localizable(true)]
	[Category("Appearance")]
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
				int num = vGap;
				vGap = value;
				if (base.ContainerControl != null)
				{
					base.ContainerControl.PerformLayout();
				}
				MakeDirty();
				OnGapChanged(this.VGapChanged, new ValueChangedEventArgs(num, value));
			}
		}
	}

	[Description("Occurs when HGap property  is changed.")]
	public event ValueChangedEventHandler HGapChanged;

	[Description("Occurs when VGap property  is changed.")]
	public event ValueChangedEventHandler VGapChanged;

	public FlowLayout()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(FlowLayout));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		layoutMode = FlowLayoutMode.Horizontal;
		alignment = FlowAlignment.Center;
		hGap = 5;
		vGap = 5;
		controlsMap = new Hashtable();
		noFillSizes = new Hashtable();
	}

	public FlowLayout(IContainer container)
		: this()
	{
		container?.Add(this);
	}

	public FlowLayout(Control container)
		: this()
	{
		base.ContainerControl = container;
	}

	public FlowLayout(Control container, FlowLayoutMode layoutMode, FlowAlignment align)
		: this(container)
	{
		this.layoutMode = layoutMode;
		alignment = align;
	}

	public FlowLayout(Control container, FlowLayoutMode layoutMode, FlowAlignment align, int hGap, int vGap)
		: this(container, layoutMode, align)
	{
		this.hGap = hGap;
		this.vGap = vGap;
	}

	protected override Size GetStaticPreferredSize(Control control)
	{
		Size empty = Size.Empty;
		bool flag = preferredSizes.Contains(control);
		if (!flag && AutoLabel.AutoLabelMap.Contains(control))
		{
			Size staticPreferredSize = base.GetStaticPreferredSize(control);
			AutoLabel autoLabel = AutoLabel.AutoLabelMap[control] as AutoLabel;
			if (autoLabel.Position == AutoLabelPosition.Top)
			{
				staticPreferredSize.Height += autoLabel.Height;
			}
			else
			{
				staticPreferredSize.Width += autoLabel.Width;
			}
			SetPreferredSize(control, staticPreferredSize);
			flag = true;
		}
		empty = (flag ? ((Size)preferredSizes[control]) : ((noFillSizes[control] == null) ? control.Size : ((Size)noFillSizes[control])));
		if (Alignment == FlowAlignment.ChildConstraints)
		{
			FlowLayoutConstraints constraintsRef = GetConstraintsRef(control);
			if (constraintsRef.VAlign != VertFlowAlign.Justify)
			{
				empty.Height = control.Size.Height;
			}
			if (constraintsRef.HAlign != HorzFlowAlign.Justify)
			{
				empty.Width = control.Size.Width;
			}
		}
		return empty;
	}

	protected override Size GetStaticMinimumSize(Control control)
	{
		Size empty = Size.Empty;
		bool flag = minimumSizes.Contains(control);
		if (!flag && AutoLabel.AutoLabelMap.Contains(control))
		{
			Size staticMinimumSize = base.GetStaticMinimumSize(control);
			AutoLabel autoLabel = AutoLabel.AutoLabelMap[control] as AutoLabel;
			if (autoLabel.Position == AutoLabelPosition.Top)
			{
				staticMinimumSize.Height += autoLabel.Height;
			}
			else
			{
				staticMinimumSize.Width += autoLabel.Width;
			}
			SetMinimumSize(control, staticMinimumSize);
			flag = true;
		}
		empty = (flag ? ((Size)minimumSizes[control]) : ((noFillSizes[control] == null) ? control.Size : ((Size)noFillSizes[control])));
		if (Alignment == FlowAlignment.ChildConstraints)
		{
			if (LayoutMode == FlowLayoutMode.Vertical)
			{
				FlowLayoutConstraints constraintsRef = GetConstraintsRef(control);
				if (constraintsRef.VAlign != VertFlowAlign.Justify)
				{
					empty.Height = control.Size.Height;
				}
			}
			else if (LayoutMode == FlowLayoutMode.Horizontal)
			{
				FlowLayoutConstraints constraintsRef2 = GetConstraintsRef(control);
				if (constraintsRef2.HAlign != HorzFlowAlign.Justify)
				{
					empty.Width = control.Size.Width;
				}
			}
		}
		return empty;
	}

	public void SetConstraints(Control control, FlowLayoutConstraints value)
	{
		if (value == null)
		{
			controlsMap.Remove(control);
			base.RemoveLayoutComponent(control);
			return;
		}
		UpdateNoFillSizes(control, value);
		controlsMap[control] = value.Clone();
		base.AddLayoutComponent(control, value);
		if (base.ContainerControl != null)
		{
			base.ContainerControl.PerformLayout();
		}
	}

	[Obsolete("This method will be removed in a future version. Use the SetConstraints method instead. Please check the class reference for more information.")]
	public void SetParticipateInLayout(Control control, bool value)
	{
		FlowLayoutConstraints constraintsRef = GetConstraintsRef(control);
		constraintsRef.Active = value;
	}

	[Localizable(true)]
	[Category("Appearance")]
	[Obsolete("This method will be removed in a future version. Use the GetConstraintsRef method instead. Please check the class reference for more information.")]
	public bool GetParticipateInLayout(Control control)
	{
		FlowLayoutConstraints constraintsRef = GetConstraintsRef(control);
		return constraintsRef.Active;
	}

	public FlowLayoutConstraints GetConstraintsRef(Control control)
	{
		FlowLayoutConstraints flowLayoutConstraints = (FlowLayoutConstraints)controlsMap[control];
		if (flowLayoutConstraints == null)
		{
			SetConstraints(control, FlowLayoutConstraints.Default());
			flowLayoutConstraints = (FlowLayoutConstraints)controlsMap[control];
		}
		return flowLayoutConstraints;
	}

	[Category("Layout Manager")]
	[Localizable(true)]
	public FlowLayoutConstraints GetConstraints(Control control)
	{
		return (FlowLayoutConstraints)GetConstraintsRef(control).Clone();
	}

	protected bool ShouldSerializeConstraints(Control control)
	{
		if (GetConstraintsRef(control) == FlowLayoutConstraints.Default())
		{
			return false;
		}
		return true;
	}

	protected void ResetConstraints(Control control)
	{
		SetConstraints(control, FlowLayoutConstraints.Default());
	}

	public override void SetPreferredSize(Control control, Size value)
	{
		base.SetPreferredSize(control, value);
		if (base.DesignMode)
		{
			FlowLayoutConstraints constraintsRef = GetConstraintsRef(control);
			if (constraintsRef != null && constraintsRef.HAlign == HorzFlowAlign.Justify)
			{
				noFillSizes[control] = value;
			}
		}
	}

	protected override void ResetLayoutInfo()
	{
		base.ResetLayoutInfo();
		noFillSizes.Clear();
	}

	public override void ResetPreferredSize(Control control)
	{
		if (noFillSizes[control] != null)
		{
			MessageBox.Show("Cannot reset preferred size when the control's HAlign or VAlign is set to Justify.");
		}
		else
		{
			preferredSizes.Remove(control);
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
			MessageBox.Show("Cannot reset minimum size when the control has a FillType other than FilleMode.None set.");
		}
		else
		{
			minimumSizes.Remove(control);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public override bool ShouldSerializeMinimumSize(Control control)
	{
		if (!base.ShouldSerializeMinimumSize(control))
		{
			return noFillSizes[control] != null;
		}
		return true;
	}

	protected override void OnContainerControlChanged(EventArgs e)
	{
		base.OnContainerControlChanged(e);
		if (base.ContainerControl == null)
		{
			return;
		}
		foreach (Control control in base.ContainerControl.Controls)
		{
			if (!controlsMap.Contains(control))
			{
				SetConstraints(control, FlowLayoutConstraints.Default());
			}
		}
	}

	protected override void OnControlAdded(object sender, ControlEventArgs e)
	{
		Control control = e.Control;
		if (!controlsMap.Contains(control))
		{
			SetConstraints(control, FlowLayoutConstraints.Default());
		}
		base.OnControlAdded(sender, e);
	}

	public override void RemoveLayoutComponent(Control childControl)
	{
		SetConstraints(childControl, null);
	}

	private void UpdateNoFillSizes(Control control, FlowLayoutConstraints newConstraints)
	{
		if (!base.DesignMode)
		{
			return;
		}
		FlowLayoutConstraints flowLayoutConstraints = (FlowLayoutConstraints)controlsMap[control];
		bool flag = false;
		bool flag2 = false;
		if (newConstraints != null && (newConstraints.HAlign == HorzFlowAlign.Justify || newConstraints.ProportionalColWidth) && (flowLayoutConstraints == null || (flowLayoutConstraints.HAlign != HorzFlowAlign.Justify && !flowLayoutConstraints.ProportionalColWidth)))
		{
			flag = true;
		}
		if (!flag && newConstraints != null && (newConstraints.VAlign == VertFlowAlign.Justify || newConstraints.ProportionalRowHeight) && (flowLayoutConstraints == null || (flowLayoutConstraints.VAlign != VertFlowAlign.Justify && !flowLayoutConstraints.ProportionalRowHeight)))
		{
			flag = true;
		}
		if ((newConstraints == null || (newConstraints.HAlign != HorzFlowAlign.Justify && !newConstraints.ProportionalColWidth)) && flowLayoutConstraints != null && (flowLayoutConstraints.HAlign == HorzFlowAlign.Justify || flowLayoutConstraints.ProportionalColWidth) && noFillSizes[control] != null)
		{
			flag2 = true;
		}
		if (!flag2 && (newConstraints == null || (newConstraints.VAlign != VertFlowAlign.Justify && !newConstraints.ProportionalRowHeight)) && flowLayoutConstraints != null && (flowLayoutConstraints.VAlign == VertFlowAlign.Justify || flowLayoutConstraints.ProportionalRowHeight) && noFillSizes[control] != null)
		{
			flag2 = true;
		}
		if (flag)
		{
			noFillSizes[control] = control.Size;
		}
		else if (flag2)
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

	public override Size PreferredLayoutSize()
	{
		layoutForDeterminingPreferredSize = true;
		LayoutContainer();
		layoutForDeterminingPreferredSize = false;
		return lastKnownPreferredSize;
	}

	public override Size MinimumLayoutSize()
	{
		Size result = new Size(0, 0);
		IList controls = GetControls();
		int count = controls.Count;
		for (int i = 0; i < count; i++)
		{
			Control control = controls[i] as Control;
			if (!IsVisible(control))
			{
				continue;
			}
			Size minimumSize = GetMinimumSize(control);
			if (LayoutMode == FlowLayoutMode.Horizontal)
			{
				result.Height = Math.Max(result.Height, minimumSize.Height);
				if (i > 0)
				{
					result.Width += hGap;
				}
				result.Width += minimumSize.Width;
			}
			else
			{
				result.Width = Math.Max(result.Width, minimumSize.Width);
				if (i > 0)
				{
					result.Height += vGap;
				}
				result.Height += minimumSize.Height;
			}
		}
		result.Width += base.HorzNearMargin + base.HorzFarMargin;
		result.Height += base.TopMargin + base.BottomMargin;
		return result;
	}

	[DocumentationExclude]
	protected virtual void MoveComponentsHorizontal(int x, int y, int maxWidth, int deltaWidth, int height, int rowStart, int rowEnd, Hashtable prefSizes, Hashtable deltaWidths)
	{
		Monitor.Enter(this);
		int num = x;
		Rectangle bounds = GetBounds();
		IList controls = GetControls();
		switch (alignment)
		{
		case FlowAlignment.Center:
			x += deltaWidth / 2;
			break;
		case FlowAlignment.Far:
			x += deltaWidth;
			break;
		}
		ArrayList arrayList = new ArrayList();
		ArrayList arrayList2 = new ArrayList();
		ArrayList arrayList3 = new ArrayList();
		ArrayList arrayList4 = new ArrayList();
		bool flag = false;
		bool flag2 = false;
		int num2 = 0;
		int num3 = 0;
		HorzFlowAlign horzFlowAlign = HorzFlowAlign.Left;
		for (int i = rowStart; i < rowEnd; i++)
		{
			Control control = controls[i] as Control;
			if (control is AutoLabel && !ShouldLayoutAutoLabel(control as AutoLabel))
			{
				continue;
			}
			FlowLayoutConstraints constraintsRef = GetConstraintsRef(control);
			if (!IsVisible(control) || !constraintsRef.Active)
			{
				continue;
			}
			Size prefSize = (Size)prefSizes[control];
			ControlBounds childControlBounds = GetChildControlBounds(control, prefSize);
			AutoLabel autoLabel = null;
			AutoLabelAndControl autoLabelAndControl = null;
			if (alignment != FlowAlignment.ChildConstraints)
			{
				autoLabel = GetAutoLabel(control);
				autoLabelAndControl = ((autoLabel == null) ? new AutoLabelAndControl(childControlBounds) : new AutoLabelAndControl(GetChildControlBounds(autoLabel, autoLabel.Size), autoLabel.Position, autoLabel.DX, autoLabel.DY, childControlBounds));
				autoLabelAndControl.BeginUpdate();
				autoLabelAndControl.Location = new Point(bounds.Left + x, bounds.Top + y + (height - autoLabelAndControl.Height) / 2);
				autoLabelAndControl.Width = prefSize.Width;
				autoLabelAndControl.Height = prefSize.Height;
				autoLabelAndControl.EndUpdate();
				x += hGap + autoLabelAndControl.Width;
				continue;
			}
			HorzFlowAlign horzFlowAlign2 = constraintsRef.HAlign;
			if (horzFlowAlign2 == HorzFlowAlign.Justify)
			{
				arrayList4.Add(control);
				horzFlowAlign2 = horzFlowAlign;
				switch (horzFlowAlign)
				{
				case HorzFlowAlign.Center:
					flag = true;
					break;
				case HorzFlowAlign.Right:
					flag2 = true;
					break;
				}
			}
			switch (horzFlowAlign2)
			{
			case HorzFlowAlign.Center:
				arrayList2.Add(control);
				autoLabel = GetAutoLabel(control);
				autoLabelAndControl = ((autoLabel == null) ? new AutoLabelAndControl(childControlBounds) : new AutoLabelAndControl(GetChildControlBounds(autoLabel, autoLabel.Size), autoLabel.Position, autoLabel.DX, autoLabel.DY, childControlBounds));
				num2 += autoLabelAndControl.Width;
				horzFlowAlign = HorzFlowAlign.Center;
				break;
			case HorzFlowAlign.Left:
				arrayList.Add(control);
				horzFlowAlign = HorzFlowAlign.Left;
				break;
			case HorzFlowAlign.Right:
				arrayList3.Add(control);
				autoLabel = GetAutoLabel(control);
				autoLabelAndControl = ((autoLabel == null) ? new AutoLabelAndControl(childControlBounds) : new AutoLabelAndControl(GetChildControlBounds(autoLabel, autoLabel.Size), autoLabel.Position, autoLabel.DX, autoLabel.DY, childControlBounds));
				num3 += autoLabelAndControl.Width;
				horzFlowAlign = HorzFlowAlign.Right;
				break;
			}
		}
		num2 += arrayList2.Count * hGap;
		num3 += arrayList3.Count * hGap;
		if (alignment == FlowAlignment.ChildConstraints)
		{
			int count = arrayList4.Count;
			AlignComponentsHorizontal(bounds, ref x, y, deltaWidth, height, arrayList, arrayList4, count, prefSizes, deltaWidths);
			if (arrayList2.Count > 0)
			{
				if (!flag)
				{
					int num4 = num + (bounds.Width - num2) / 2;
					if (num4 > x)
					{
						deltaWidth -= num4 - x;
						x = num4;
					}
				}
				AlignComponentsHorizontal(bounds, ref x, y, deltaWidth, height, arrayList2, arrayList4, count, prefSizes, deltaWidths);
			}
			if (!flag2)
			{
				x = num + maxWidth - num3 + hGap;
			}
			AlignComponentsHorizontal(bounds, ref x, y, deltaWidth, height, arrayList3, arrayList4, count, prefSizes, deltaWidths);
		}
		Monitor.Exit(this);
	}

	private void AlignComponentsHorizontal(Rectangle containerBounds, ref int x, int y, int deltaWidth, int height, ArrayList list, ArrayList justifiedControlsList, int justifiedControlsCount, Hashtable prefSizes, Hashtable deltaWidths)
	{
		int num = 0;
		if (deltaWidth < 0)
		{
			foreach (Control item in list)
			{
				if (justifiedControlsList.Contains(item))
				{
					num += (int)deltaWidths[item];
				}
			}
		}
		foreach (Control item2 in list)
		{
			FlowLayoutConstraints constraintsRef = GetConstraintsRef(item2);
			bool flag = constraintsRef.HAlign == HorzFlowAlign.Justify;
			Size prefSize = (Size)prefSizes[item2];
			ControlBounds childControlBounds = GetChildControlBounds(item2, prefSize);
			AutoLabel autoLabel = GetAutoLabel(item2);
			AutoLabelAndControl autoLabelAndControl = null;
			autoLabelAndControl = ((autoLabel == null) ? new AutoLabelAndControl(childControlBounds) : new AutoLabelAndControl(GetChildControlBounds(autoLabel, autoLabel.Size), autoLabel.Position, autoLabel.DX, autoLabel.DY, childControlBounds));
			int num2 = containerBounds.Top + y;
			if (height > autoLabelAndControl.Height)
			{
				switch (constraintsRef.VAlign)
				{
				case VertFlowAlign.Center:
					num2 += (height - autoLabelAndControl.Height) / 2;
					break;
				case VertFlowAlign.Bottom:
					num2 = num2 + height - autoLabelAndControl.Height;
					break;
				}
			}
			autoLabelAndControl.BeginUpdate();
			autoLabelAndControl.Location = new Point(containerBounds.Left + x, num2);
			if (alignment == FlowAlignment.ChildConstraints && flag)
			{
				if (deltaWidth >= 0)
				{
					autoLabelAndControl.Width += deltaWidth / justifiedControlsCount;
				}
				else if ((int)deltaWidths[item2] != 0)
				{
					autoLabelAndControl.Width += deltaWidth * (int)deltaWidths[item2] / num;
				}
			}
			if (constraintsRef.VAlign == VertFlowAlign.Justify)
			{
				autoLabelAndControl.Height = height;
			}
			autoLabelAndControl.EndUpdate();
			x += hGap + autoLabelAndControl.Width;
		}
	}

	[DocumentationExclude]
	protected virtual void MoveComponentsVertical(int x, int y, int width, int deltaHeight, int maxHeight, int rowStart, int rowEnd, Hashtable prefSizes, Hashtable deltaHeights)
	{
		Monitor.Enter(this);
		int num = y;
		Rectangle bounds = GetBounds();
		IList controls = GetControls();
		switch (alignment)
		{
		case FlowAlignment.Center:
			y += deltaHeight / 2;
			break;
		case FlowAlignment.Far:
			y += deltaHeight;
			break;
		}
		ArrayList arrayList = new ArrayList();
		ArrayList arrayList2 = new ArrayList();
		ArrayList arrayList3 = new ArrayList();
		ArrayList arrayList4 = new ArrayList();
		bool flag = false;
		bool flag2 = false;
		int num2 = 0;
		int num3 = 0;
		VertFlowAlign vertFlowAlign = VertFlowAlign.Top;
		for (int i = rowStart; i < rowEnd; i++)
		{
			Control control = controls[i] as Control;
			if (control is AutoLabel && !ShouldLayoutAutoLabel(control as AutoLabel))
			{
				continue;
			}
			FlowLayoutConstraints constraintsRef = GetConstraintsRef(control);
			if (!IsVisible(control) || !constraintsRef.Active)
			{
				continue;
			}
			Size prefSize = (Size)prefSizes[control];
			ControlBounds childControlBounds = GetChildControlBounds(control, prefSize);
			AutoLabel autoLabel = null;
			AutoLabelAndControl autoLabelAndControl = null;
			if (alignment != FlowAlignment.ChildConstraints)
			{
				autoLabel = GetAutoLabel(control);
				autoLabelAndControl = ((autoLabel == null) ? new AutoLabelAndControl(childControlBounds) : new AutoLabelAndControl(GetChildControlBounds(autoLabel, autoLabel.Size), autoLabel.Position, autoLabel.DX, autoLabel.DY, childControlBounds));
				autoLabelAndControl.BeginUpdate();
				autoLabelAndControl.Location = new Point(bounds.Left + x + (width - autoLabelAndControl.Width) / 2, bounds.Top + y);
				autoLabelAndControl.Width = prefSize.Width;
				autoLabelAndControl.Height = prefSize.Height;
				autoLabelAndControl.EndUpdate();
				y += vGap + autoLabelAndControl.Height;
				continue;
			}
			VertFlowAlign vertFlowAlign2 = constraintsRef.VAlign;
			if (vertFlowAlign2 == VertFlowAlign.Justify)
			{
				arrayList4.Add(control);
				vertFlowAlign2 = vertFlowAlign;
				switch (vertFlowAlign)
				{
				case VertFlowAlign.Center:
					flag = true;
					break;
				case VertFlowAlign.Bottom:
					flag2 = true;
					break;
				}
			}
			switch (vertFlowAlign2)
			{
			case VertFlowAlign.Center:
				arrayList2.Add(control);
				autoLabel = GetAutoLabel(control);
				autoLabelAndControl = ((autoLabel == null) ? new AutoLabelAndControl(childControlBounds) : new AutoLabelAndControl(GetChildControlBounds(autoLabel, autoLabel.Size), autoLabel.Position, autoLabel.DX, autoLabel.DY, childControlBounds));
				num2 += autoLabelAndControl.Height;
				vertFlowAlign = VertFlowAlign.Center;
				break;
			case VertFlowAlign.Top:
				arrayList.Add(control);
				vertFlowAlign = VertFlowAlign.Top;
				break;
			case VertFlowAlign.Bottom:
				arrayList3.Add(control);
				autoLabel = GetAutoLabel(control);
				autoLabelAndControl = ((autoLabel == null) ? new AutoLabelAndControl(childControlBounds) : new AutoLabelAndControl(GetChildControlBounds(autoLabel, autoLabel.Size), autoLabel.Position, autoLabel.DX, autoLabel.DY, childControlBounds));
				num3 += autoLabelAndControl.Height;
				vertFlowAlign = VertFlowAlign.Bottom;
				break;
			}
		}
		num2 += arrayList2.Count * vGap;
		num3 += arrayList3.Count * vGap;
		if (alignment == FlowAlignment.ChildConstraints)
		{
			int count = arrayList4.Count;
			AlignComponentsVertical(bounds, x, ref y, deltaHeight, width, arrayList, arrayList4, count, prefSizes, deltaHeights);
			if (arrayList2.Count > 0)
			{
				if (!flag)
				{
					int num4 = num + (bounds.Height - num2) / 2;
					if (num4 > y)
					{
						deltaHeight -= num4 - y;
						y = num4;
					}
				}
				AlignComponentsVertical(bounds, x, ref y, deltaHeight, width, arrayList2, arrayList4, count, prefSizes, deltaHeights);
			}
			if (!flag2)
			{
				y = num + maxHeight - num3 + vGap;
			}
			AlignComponentsVertical(bounds, x, ref y, deltaHeight, width, arrayList3, arrayList4, count, prefSizes, deltaHeights);
		}
		Monitor.Exit(this);
	}

	private void AlignComponentsVertical(Rectangle containerBounds, int x, ref int y, int deltaHeight, int width, ArrayList list, ArrayList justifiedControlsList, int justifiedControlsCount, Hashtable prefSizes, Hashtable deltaHeights)
	{
		int num = 0;
		if (deltaHeight < 0)
		{
			foreach (Control item in list)
			{
				if (justifiedControlsList.Contains(item))
				{
					num += (int)deltaHeights[item];
				}
			}
		}
		foreach (Control item2 in list)
		{
			FlowLayoutConstraints constraintsRef = GetConstraintsRef(item2);
			bool flag = constraintsRef.VAlign == VertFlowAlign.Justify;
			Size prefSize = (Size)prefSizes[item2];
			ControlBounds childControlBounds = GetChildControlBounds(item2, prefSize);
			AutoLabel autoLabel = GetAutoLabel(item2);
			AutoLabelAndControl autoLabelAndControl = null;
			autoLabelAndControl = ((autoLabel == null) ? new AutoLabelAndControl(childControlBounds) : new AutoLabelAndControl(GetChildControlBounds(autoLabel, autoLabel.Size), autoLabel.Position, autoLabel.DX, autoLabel.DY, childControlBounds));
			int num2 = containerBounds.Left + x;
			if (width > autoLabelAndControl.Width)
			{
				switch (constraintsRef.HAlign)
				{
				case HorzFlowAlign.Center:
					num2 += (width - autoLabelAndControl.Width) / 2;
					break;
				case HorzFlowAlign.Right:
					num2 = num2 + width - autoLabelAndControl.Width;
					break;
				}
			}
			autoLabelAndControl.BeginUpdate();
			autoLabelAndControl.Location = new Point(num2, containerBounds.Top + y);
			if (alignment == FlowAlignment.ChildConstraints && flag)
			{
				if (deltaHeight >= 0)
				{
					autoLabelAndControl.Height += deltaHeight / justifiedControlsCount;
				}
				else if ((int)deltaHeights[item2] != 0)
				{
					autoLabelAndControl.Height += deltaHeight * (int)deltaHeights[item2] / num;
				}
			}
			if (constraintsRef.HAlign == HorzFlowAlign.Justify)
			{
				autoLabelAndControl.Width = width;
			}
			autoLabelAndControl.EndUpdate();
			y += vGap + autoLabelAndControl.Height;
		}
	}

	[DocumentationExclude]
	public virtual void LayoutContainerHorizontal()
	{
		Monitor.Enter(this);
		recurseCount++;
		if (recurseCount > 2)
		{
			recurseCount--;
			return;
		}
		Rectangle bounds = GetBounds();
		IList controls = GetControls();
		int width = bounds.Width;
		int count = controls.Count;
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		int num4 = 0;
		int num5 = 0;
		ArrayList arrayList = new ArrayList();
		ArrayList arrayList2 = new ArrayList();
		ArrayList arrayList3 = new ArrayList();
		ArrayList arrayList4 = new ArrayList();
		bool flag = false;
		bool flag2 = false;
		Hashtable hashtable = new Hashtable();
		Hashtable hashtable2 = new Hashtable();
		for (int i = 0; i < count; i++)
		{
			Control control = controls[i] as Control;
			if (control is AutoLabel && !ShouldLayoutAutoLabel(control as AutoLabel))
			{
				continue;
			}
			FlowLayoutConstraints constraintsRef = GetConstraintsRef(control);
			if (!IsVisible(control) || !constraintsRef.Active)
			{
				continue;
			}
			Size preferredSize = GetPreferredSize(control);
			Size minimumSize = GetMinimumSize(control);
			hashtable[control] = preferredSize;
			hashtable2[control] = preferredSize.Width - minimumSize.Width;
			ControlBounds childControlBounds = GetChildControlBounds(control, preferredSize);
			ControlBounds childControlBounds2 = GetChildControlBounds(control, minimumSize);
			AutoLabel autoLabel = GetAutoLabel(control);
			AutoLabelAndControl autoLabelAndControl = null;
			AutoLabelAndControl autoLabelAndControl2 = null;
			autoLabelAndControl = ((autoLabel == null) ? new AutoLabelAndControl(childControlBounds) : new AutoLabelAndControl(GetChildControlBounds(autoLabel, autoLabel.Size), autoLabel.Position, autoLabel.DX, autoLabel.DY, childControlBounds));
			autoLabelAndControl2 = ((autoLabel == null) ? new AutoLabelAndControl(childControlBounds2) : new AutoLabelAndControl(GetChildControlBounds(autoLabel, autoLabel.Size), autoLabel.Position, autoLabel.DX, autoLabel.DY, childControlBounds2));
			preferredSize = new Size(autoLabelAndControl.Width, autoLabelAndControl.Height);
			minimumSize = new Size(autoLabelAndControl2.Width, autoLabelAndControl2.Height);
			if (alignment == FlowAlignment.ChildConstraints && constraintsRef.HAlign == HorzFlowAlign.Justify)
			{
				num3 += preferredSize.Width - minimumSize.Width;
			}
			if (num == 0 || (num + preferredSize.Width - num3 <= width - hGap && !constraintsRef.NewLine))
			{
				if (num > 0)
				{
					num += hGap;
				}
				num += preferredSize.Width;
				num4 = Math.Max(num4, preferredSize.Height);
				if (constraintsRef.ProportionalRowHeight)
				{
					flag = true;
				}
				continue;
			}
			arrayList.Add(num4);
			arrayList2.Add(num);
			arrayList3.Add(num5);
			arrayList4.Add(flag);
			flag2 = flag2 || flag;
			flag = false;
			num = preferredSize.Width;
			num3 = 0;
			num2 += vGap + num4;
			num4 = preferredSize.Height;
			num5 = i;
			if (constraintsRef.ProportionalRowHeight)
			{
				flag = true;
			}
		}
		arrayList.Add(num4);
		arrayList2.Add(num);
		arrayList3.Add(num5);
		arrayList4.Add(flag);
		flag2 = flag2 || flag;
		if (!layoutForDeterminingPreferredSize)
		{
			if (flag2)
			{
				int usedHeight = GetUsedHeight(arrayList);
				int num6 = bounds.Height - usedHeight;
				int num7 = 0;
				for (int j = 0; j < arrayList4.Count; j++)
				{
					if ((bool)arrayList4[j])
					{
						num7 += (int)arrayList[j];
					}
				}
				for (int k = 0; k < arrayList4.Count; k++)
				{
					if ((bool)arrayList4[k])
					{
						int num8 = (int)arrayList[k];
						arrayList[k] = num8 + num8 * num6 / num7;
					}
				}
			}
			num2 = 0;
			if (ReverseRows)
			{
				num2 = bounds.Height;
			}
			for (int l = 0; l < arrayList.Count; l++)
			{
				int num9 = (int)arrayList[l];
				int num10 = (int)arrayList2[l];
				int num11 = -1;
				num11 = ((l + 1 != arrayList.Count) ? ((int)arrayList3[l + 1]) : count);
				int num12 = 0;
				num12 = ((!ReverseRows) ? num2 : (num2 - num9));
				if (width > 0)
				{
					MoveComponentsHorizontal(0, num12, width, width - num10, num9, (int)arrayList3[l], num11, hashtable, hashtable2);
				}
				num2 = ((!ReverseRows) ? (num2 + (vGap + num9)) : (num2 - (vGap + num9)));
			}
			if (autoHeight && base.CustomLayoutBounds == Rectangle.Empty)
			{
				int usedHeight2 = GetUsedHeight(arrayList);
				if (bounds.Height != usedHeight2)
				{
					int height = AdjustHeightForMargins(usedHeight2);
					base.ContainerControl.SuspendLayout();
					base.ContainerControl.Height = height;
					base.ContainerControl.ResumeLayout(performLayout: false);
					LayoutContainerHorizontal();
				}
			}
		}
		else
		{
			int usedHeight3 = GetUsedHeight(arrayList);
			lastKnownPreferredSize = new Size(AdjustWidthForMargins(bounds.Width), AdjustHeightForMargins(usedHeight3));
		}
		recurseCount--;
		Monitor.Exit(this);
	}

	private int GetUsedHeight(ArrayList rowHeights)
	{
		int num = 0;
		foreach (int rowHeight in rowHeights)
		{
			num += rowHeight;
		}
		return num + vGap * (rowHeights.Count - 1);
	}

	private int GetUsedWidth(ArrayList rowWidths)
	{
		int num = 0;
		foreach (int rowWidth in rowWidths)
		{
			num += rowWidth;
		}
		return num + hGap * (rowWidths.Count - 1);
	}

	[DocumentationExclude]
	public virtual void LayoutContainerVertical()
	{
		Monitor.Enter(this);
		recurseCount++;
		if (recurseCount > 2)
		{
			recurseCount--;
			return;
		}
		Rectangle bounds = GetBounds();
		IList controls = GetControls();
		int height = bounds.Height;
		int count = controls.Count;
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		int num4 = 0;
		int num5 = 0;
		ArrayList arrayList = new ArrayList();
		ArrayList arrayList2 = new ArrayList();
		ArrayList arrayList3 = new ArrayList();
		ArrayList arrayList4 = new ArrayList();
		bool flag = false;
		bool flag2 = false;
		Hashtable hashtable = new Hashtable();
		Hashtable hashtable2 = new Hashtable();
		for (int i = 0; i < count; i++)
		{
			Control control = controls[i] as Control;
			if (control is AutoLabel && !ShouldLayoutAutoLabel(control as AutoLabel))
			{
				continue;
			}
			FlowLayoutConstraints constraintsRef = GetConstraintsRef(control);
			if (!IsVisible(control) || !constraintsRef.Active)
			{
				continue;
			}
			Size preferredSize = GetPreferredSize(control);
			Size minimumSize = GetMinimumSize(control);
			hashtable[control] = preferredSize;
			hashtable2[control] = preferredSize.Height - minimumSize.Height;
			ControlBounds childControlBounds = GetChildControlBounds(control, preferredSize);
			ControlBounds childControlBounds2 = GetChildControlBounds(control, minimumSize);
			AutoLabel autoLabel = GetAutoLabel(control);
			AutoLabelAndControl autoLabelAndControl = null;
			AutoLabelAndControl autoLabelAndControl2 = null;
			autoLabelAndControl = ((autoLabel == null) ? new AutoLabelAndControl(childControlBounds) : new AutoLabelAndControl(GetChildControlBounds(autoLabel, autoLabel.Size), autoLabel.Position, autoLabel.DX, autoLabel.DY, childControlBounds));
			autoLabelAndControl2 = ((autoLabel == null) ? new AutoLabelAndControl(childControlBounds2) : new AutoLabelAndControl(GetChildControlBounds(autoLabel, autoLabel.Size), autoLabel.Position, autoLabel.DX, autoLabel.DY, childControlBounds2));
			preferredSize = new Size(autoLabelAndControl.Width, autoLabelAndControl.Height);
			minimumSize = new Size(autoLabelAndControl2.Width, autoLabelAndControl2.Height);
			if (alignment == FlowAlignment.ChildConstraints && constraintsRef.VAlign == VertFlowAlign.Justify)
			{
				num3 += preferredSize.Height - minimumSize.Height;
			}
			if (num2 == 0 || (num2 + preferredSize.Height - num3 <= height - vGap && !constraintsRef.NewLine))
			{
				if (num2 > 0)
				{
					num2 += vGap;
				}
				num2 += preferredSize.Height;
				num4 = Math.Max(num4, preferredSize.Width);
				if (constraintsRef.ProportionalColWidth)
				{
					flag = true;
				}
				continue;
			}
			arrayList.Add(num4);
			arrayList2.Add(num2);
			arrayList3.Add(num5);
			arrayList4.Add(flag);
			flag2 = flag2 || flag;
			flag = false;
			num2 = preferredSize.Height;
			num3 = 0;
			num += hGap + num4;
			num4 = preferredSize.Width;
			num5 = i;
			if (constraintsRef.ProportionalColWidth)
			{
				flag = true;
			}
		}
		arrayList.Add(num4);
		arrayList2.Add(num2);
		arrayList3.Add(num5);
		arrayList4.Add(flag);
		flag2 = flag2 || flag;
		if (!layoutForDeterminingPreferredSize)
		{
			if (flag2)
			{
				int usedWidth = GetUsedWidth(arrayList);
				int num6 = bounds.Width - usedWidth;
				int num7 = 0;
				for (int j = 0; j < arrayList4.Count; j++)
				{
					if ((bool)arrayList4[j])
					{
						num7 += (int)arrayList[j];
					}
				}
				for (int k = 0; k < arrayList4.Count; k++)
				{
					if ((bool)arrayList4[k])
					{
						int num8 = (int)arrayList[k];
						arrayList[k] = num8 + num8 * num6 / num7;
					}
				}
			}
			num = 0;
			if (ReverseRows)
			{
				num = bounds.Width;
			}
			for (int l = 0; l < arrayList.Count; l++)
			{
				int num9 = (int)arrayList[l];
				int num10 = (int)arrayList2[l];
				int num11 = -1;
				num11 = ((l + 1 != arrayList.Count) ? ((int)arrayList3[l + 1]) : count);
				int num12 = 0;
				num12 = ((!ReverseRows) ? num : (num - num9));
				MoveComponentsVertical(num12, 0, num9, height - num10, height, (int)arrayList3[l], num11, hashtable, hashtable2);
				num = ((!ReverseRows) ? (num + (hGap + num9)) : (num - (hGap + num9)));
			}
		}
		else
		{
			int usedWidth2 = GetUsedWidth(arrayList);
			lastKnownPreferredSize = new Size(AdjustWidthForMargins(usedWidth2), AdjustHeightForMargins(bounds.Height));
		}
		recurseCount--;
		Monitor.Exit(this);
	}

	public override void LayoutContainer()
	{
		if (IsInit() && !initializing)
		{
			Size size = base.ContainerControl.Size;
			base.ContainerControl.SuspendLayout();
			if (layoutMode == FlowLayoutMode.Vertical)
			{
				LayoutContainerVertical();
			}
			else
			{
				LayoutContainerHorizontal();
			}
			base.ContainerControl.ResumeLayout(performLayout: false);
			if (base.ContainerControl.Size != size && base.ContainerControl.Parent != null && base.ContainerControl.Parent.IsHandleCreated)
			{
				base.ContainerControl.Parent.BeginInvoke(new MethodInvoker(base.ContainerControl.Parent.PerformLayout));
			}
		}
	}

	protected void OnGapChanged(ValueChangedEventHandler gapChangedHandler, ValueChangedEventArgs args)
	{
		gapChangedHandler?.Invoke(this, args);
	}
}
