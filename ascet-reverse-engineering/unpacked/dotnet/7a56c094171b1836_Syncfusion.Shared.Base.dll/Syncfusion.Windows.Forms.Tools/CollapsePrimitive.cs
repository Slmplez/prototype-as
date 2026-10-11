using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[DesignTimeVisible(false)]
public class CollapsePrimitive : Primitive
{
	private bool m_bIsCollapse;

	private Image m_collapseImage;

	private Image m_expandeImage;

	[DefaultValue(null)]
	[Description("Image for collapsed primitive.")]
	[Category("Appearance")]
	public Image CollapseImage
	{
		get
		{
			return m_collapseImage;
		}
		set
		{
			if (value != m_collapseImage)
			{
				m_collapseImage = value;
				OnCollapseImageChanged();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(null)]
	[Description("Image for expanded primitive.")]
	public Image ExpandImage
	{
		get
		{
			return m_expandeImage;
		}
		set
		{
			if (value != m_expandeImage)
			{
				m_expandeImage = value;
				OnExpandImageChanged();
			}
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Indicate that primitive is collapse.")]
	public bool Collapsed
	{
		get
		{
			return m_bIsCollapse;
		}
		set
		{
			if (value != m_bIsCollapse)
			{
				m_bIsCollapse = value;
				OnCollapsedChanged();
			}
		}
	}

	public event EventHandler CollapsedChanged;

	public event EventHandler CollpaseImageChanged;

	public event EventHandler ExpandImageChanged;

	public CollapsePrimitive(Size size, int position, GradientPanelExt owner)
		: base(size, position, owner)
	{
	}

	public CollapsePrimitive(GradientPanelExt owner)
		: this(Primitive.c_primitiveSize, 0, owner)
	{
	}

	public CollapsePrimitive()
		: this(Primitive.c_primitiveSize, 0, null)
	{
	}

	public void SetCollapseState(bool collapse)
	{
		m_bIsCollapse = collapse;
	}

	protected override void DrawBackground(Graphics g)
	{
		base.DrawBackground(g);
		Rectangle bounds = base.Bounds;
		g.SmoothingMode = SmoothingMode.None;
		Pen pen = new Pen(base.BorderColor);
		int x = bounds.Left + bounds.Width / 2;
		int y = bounds.Top + bounds.Height / 2;
		int num = 2;
		if (Collapsed)
		{
			if (CollapseImage == null)
			{
				Point pt = new Point(bounds.Left + num, y);
				Point pt2 = new Point(bounds.Right - num, y);
				g.DrawLine(pen, pt, pt2);
				pt = new Point(x, bounds.Top + num);
				pt2 = new Point(x, bounds.Bottom - num);
				g.DrawLine(pen, pt, pt2);
			}
			else
			{
				g.DrawImage(CollapseImage, base.ClientRect);
			}
		}
		else if (ExpandImage == null)
		{
			Point pt = new Point(bounds.Left + num, y);
			Point pt2 = new Point(bounds.Right - num, y);
			g.DrawLine(pen, pt, pt2);
		}
		else
		{
			g.DrawImage(ExpandImage, base.ClientRect);
		}
	}

	public override object Clone()
	{
		CollapsePrimitive collapsePrimitive = new CollapsePrimitive(base.Size, base.Position, base.OwnerControl);
		collapsePrimitive.Alignment = base.Alignment;
		collapsePrimitive.BackColor = base.BackColor;
		collapsePrimitive.BorderColor = base.BorderColor;
		collapsePrimitive.PrimitiveBorderStyle = base.PrimitiveBorderStyle;
		collapsePrimitive.Bounds = base.Bounds;
		collapsePrimitive.Selected = base.Selected;
		collapsePrimitive.Visible = base.Visible;
		collapsePrimitive.Collapsed = Collapsed;
		collapsePrimitive.CollapseImage = CollapseImage;
		collapsePrimitive.ExpandImage = ExpandImage;
		collapsePrimitive.OwnerControl = base.OwnerControl;
		return collapsePrimitive;
	}

	private void RaiseCollapseImageChanged()
	{
		if (this.CollapsedChanged != null)
		{
			this.CollpaseImageChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseExpandImageChanged()
	{
		if (this.ExpandImageChanged != null)
		{
			this.ExpandImageChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseCollapsedChanged()
	{
		if (this.CollapsedChanged != null)
		{
			this.CollapsedChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnCollapseImageChanged()
	{
		if (base.OwnerControl != null)
		{
			base.OwnerControl.Invalidate(base.Bounds);
		}
		RaiseCollapseImageChanged();
	}

	protected virtual void OnExpandImageChanged()
	{
		if (base.OwnerControl != null)
		{
			base.OwnerControl.Invalidate(base.Bounds);
		}
		RaiseExpandImageChanged();
	}

	protected virtual void OnCollapsedChanged()
	{
		if (base.OwnerControl != null)
		{
			if (Collapsed)
			{
				base.OwnerControl.CollapseAlignment = base.Alignment;
				base.OwnerControl.Collapse();
			}
			else
			{
				base.OwnerControl.CollapseAlignment = base.Alignment;
				base.OwnerControl.Expand();
			}
		}
		RaiseCollapsedChanged();
	}

	protected override void OnMouseDown(MouseEventArgs args)
	{
		base.OnMouseDown(args);
		Collapsed = !Collapsed;
	}
}
