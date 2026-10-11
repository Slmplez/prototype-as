using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.StatusStrip)]
[Designer(typeof(TrackBarItemDesigner))]
public class TrackBarItem : ToolStripControlHost
{
	public TrackBarEx TrackBarExControl => base.Control as TrackBarEx;

	[DefaultValue(true)]
	public bool Transparent
	{
		get
		{
			return TrackBarExControl.Transparent;
		}
		set
		{
			TrackBarExControl.Transparent = value;
		}
	}

	[Category("Behavior")]
	[Description("Value of TrackBar position.")]
	public int Value
	{
		get
		{
			return TrackBarExControl.Value;
		}
		set
		{
			TrackBarExControl.Value = value;
		}
	}

	[Description("Minimum value of TrackBar.")]
	[DefaultValue(0)]
	[Category("Behavior")]
	public int Minimum
	{
		get
		{
			return TrackBarExControl.Minimum;
		}
		set
		{
			TrackBarExControl.Minimum = value;
		}
	}

	[Description("Maximum value of TrackBar.")]
	[Category("Behavior")]
	public int Maximum
	{
		get
		{
			return TrackBarExControl.Maximum;
		}
		set
		{
			TrackBarExControl.Maximum = value;
		}
	}

	[DefaultValue(typeof(Orientation), "Horizontal")]
	[Description("Specify the orientation of TrackBarEx control.")]
	[Category("Behavior")]
	public Orientation Orientation
	{
		get
		{
			return TrackBarExControl.Orientation;
		}
		set
		{
			TrackBarExControl.Orientation = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			base.BackColor = value;
		}
	}

	[Description("Occurs when the Value property of a track bar changes, either by movement of the scroll box or by manipulation in code.")]
	public event EventHandler ValueChanged
	{
		add
		{
			TrackBarExControl.ValueChanged += value;
		}
		remove
		{
			TrackBarExControl.ValueChanged -= value;
		}
	}

	[Description("Occurs when either a mouse or keyboard action moves the scroll box.")]
	public event EventHandler Scroll
	{
		add
		{
			TrackBarExControl.Scroll += value;
		}
		remove
		{
			TrackBarExControl.Scroll -= value;
		}
	}

	public TrackBarItem()
		: base(CreateControlInstance())
	{
	}

	private static Control CreateControlInstance()
	{
		TrackBarEx trackBarEx = new TrackBarEx();
		trackBarEx.Transparent = true;
		return trackBarEx;
	}

	private bool ShouldSerializeValue()
	{
		return Value > Minimum;
	}

	protected override void SetBounds(Rectangle bounds)
	{
		base.SetBounds(bounds);
		if (base.Control != null)
		{
			base.Control.Invalidate();
		}
	}
}
