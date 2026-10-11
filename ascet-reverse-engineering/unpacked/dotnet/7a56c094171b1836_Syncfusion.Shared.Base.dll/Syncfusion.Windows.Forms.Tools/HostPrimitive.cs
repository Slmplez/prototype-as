using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[DesignTimeVisible(false)]
public class HostPrimitive : Primitive
{
	private Control m_hostControl;

	[DefaultValue(null)]
	[Description("The control which displaying inside the primitive.")]
	[Category("Behavior")]
	public Control HostControl
	{
		get
		{
			return m_hostControl;
		}
		set
		{
			if (value != m_hostControl)
			{
				OnHostControlBeforeChanged();
				m_hostControl = value;
				OnHostControlChanged();
			}
		}
	}

	public event EventHandler HostControlChanged;

	public HostPrimitive(Control control, Size size, GradientPanelExt owner)
		: base(size, owner)
	{
		if (control != null)
		{
			HostControl = control;
			HostControl.Parent = base.OwnerControl;
		}
		base.PrimitiveBorderStyle = PrimitiveBorderStyle.None;
	}

	public HostPrimitive(Control control, GradientPanelExt owner)
		: this(control, Primitive.c_primitiveSize, owner)
	{
	}

	public HostPrimitive(GradientPanelExt owner)
		: this(null, Primitive.c_primitiveSize, owner)
	{
	}

	public HostPrimitive()
		: this(null, Primitive.c_primitiveSize, null)
	{
	}

	private void RefreshHostControlLoyaut()
	{
		if (base.OwnerControl != null && HostControl != null)
		{
			if (!base.OwnerControl.Controls.Contains(HostControl))
			{
				base.OwnerControl.Controls.Add(HostControl);
			}
			HostControl.Location = new Point(base.Bounds.Location.X, base.Bounds.Location.Y);
			HostControl.Size = new Size(base.Bounds.Size.Width, base.Bounds.Size.Height);
		}
	}

	public bool IsContainControl(Control control)
	{
		bool result = false;
		if (control != null)
		{
			result = base.Bounds.IntersectsWith(control.Bounds);
		}
		return result;
	}

	protected override void OnSizeChanged()
	{
		base.OnSizeChanged();
		RefreshHostControlLoyaut();
	}

	protected override void OnBoundsChanged()
	{
		base.OnBoundsChanged();
		RefreshHostControlLoyaut();
	}

	public override object Clone()
	{
		HostPrimitive hostPrimitive = new HostPrimitive(HostControl, base.Size, base.OwnerControl);
		hostPrimitive.Alignment = base.Alignment;
		hostPrimitive.BackColor = base.BackColor;
		hostPrimitive.BorderColor = base.BorderColor;
		hostPrimitive.PrimitiveBorderStyle = base.PrimitiveBorderStyle;
		hostPrimitive.Bounds = base.Bounds;
		hostPrimitive.Selected = base.Selected;
		hostPrimitive.Visible = base.Visible;
		hostPrimitive.Position = base.Position;
		hostPrimitive.HostControl = HostControl;
		hostPrimitive.Site = Site;
		return hostPrimitive;
	}

	protected override void OnVisibleChanged()
	{
		base.OnVisibleChanged();
		if (HostControl != null)
		{
			HostControl.Visible = (base.Visible ? true : false);
		}
	}

	private void RaiseHostControlChanged()
	{
		if (this.HostControlChanged != null)
		{
			this.HostControlChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnHostControlChanged()
	{
		RefreshHostControlLoyaut();
		RaiseHostControlChanged();
	}

	private void OnHostControlBeforeChanged()
	{
		if (HostControl != null && base.OwnerControl != null)
		{
			base.OwnerControl.Controls.Remove(HostControl);
		}
	}
}
