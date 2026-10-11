#define TRACE
using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Diagnostics;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Core.Licensing;
using Syncfusion.Windows.Forms.Localization;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.AutoLabel.bmp")]
[Designer(typeof(AutoLabelDesigner), typeof(IDesigner))]
public class AutoLabel : Label
{
	private const int DEF_WITH_BORDERS = 6;

	private const int DEF_WITHOUT_BORDERS = 3;

	private Control labeledControl;

	private AutoLabelPosition position = AutoLabelPosition.Left;

	private int gap = 4;

	private int dx;

	private int dy;

	private bool settingPos;

	private static Hashtable htAutoLabelsByControl = new Hashtable();

	internal static Hashtable AutoLabelMap => htAutoLabelsByControl;

	[DefaultValue(true)]
	public override bool AutoSize
	{
		get
		{
			return base.AutoSize;
		}
		set
		{
			base.AutoSize = value;
		}
	}

	[DefaultValue(null)]
	[Description("Specifies the control that is being labeled.")]
	[Category("Layout Information")]
	public Control LabeledControl
	{
		get
		{
			return labeledControl;
		}
		set
		{
			if (labeledControl == value)
			{
				return;
			}
			if (value is AutoLabel)
			{
				if (base.DesignMode)
				{
					MessageBox.Show("Cannot Label an AutoLabel.", "AutoLabel error");
				}
				return;
			}
			if (value != null && AutoLabelMap.Contains(value))
			{
				if (base.DesignMode)
				{
					MessageBox.Show("Cannot set LabeledControl: " + value.Text + ", since it's already associated with an AutoLabel", "AutoLabel error");
				}
				return;
			}
			OnDetachLabeledControl(labeledControl);
			Control oldValue = labeledControl;
			labeledControl = value;
			OnAttachLabeledControl(value);
			UpdatePosition();
			OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "LabeledControl", oldValue, value));
		}
	}

	[Category("Layout Information")]
	[Description("Specifies the relative position of the control and the AutoLabel.")]
	[DefaultValue(AutoLabelPosition.Left)]
	public AutoLabelPosition Position
	{
		get
		{
			return position;
		}
		set
		{
			if (position != value)
			{
				AutoLabelPosition autoLabelPosition = position;
				position = value;
				UpdatePosition();
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Position", autoLabelPosition, value));
			}
		}
	}

	[SRCategory("CatLayout")]
	[Browsable(false)]
	[SRDescription("LabelPreferredHeightDescr")]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override int PreferredHeight
	{
		get
		{
			Size size = MesureText(Text, Font);
			if (BorderStyle != BorderStyle.None)
			{
				return size.Height + 6;
			}
			return size.Height + 3;
		}
	}

	[DefaultValue(4)]
	[Description("Specifies the horizontal and vertical gap to use when computing the relative position.")]
	[Category("Layout Information")]
	public int Gap
	{
		get
		{
			return gap;
		}
		set
		{
			if (gap != value)
			{
				int num = gap;
				gap = value;
				UpdatePosition();
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Gap", num, value));
			}
		}
	}

	[Category("Layout Information")]
	[DefaultValue(0)]
	[Description("The effective horizontal distance between the left of the AutoLabel and its labeled control.")]
	public int DX
	{
		get
		{
			if (LabeledControl == null)
			{
				return 0;
			}
			if (Position == AutoLabelPosition.Custom)
			{
				return dx;
			}
			if (RightToLeft == RightToLeft.Yes)
			{
				return LabeledControl.Right - base.Right;
			}
			return base.Bounds.X - LabeledControl.Bounds.X;
		}
		set
		{
			if (dx != value)
			{
				int num = dx;
				dx = value;
				UpdatePosition();
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "DX", num, value));
			}
		}
	}

	[DefaultValue(0)]
	[Description("The effective vertical distance between the top of the AutoLabel and its labeled control.")]
	[Category("Layout Information")]
	public int DY
	{
		get
		{
			if (LabeledControl == null)
			{
				return 0;
			}
			if (Position == AutoLabelPosition.Custom)
			{
				return dy;
			}
			return base.Bounds.Y - LabeledControl.Bounds.Y;
		}
		set
		{
			if (dy != value)
			{
				int num = dy;
				dy = value;
				UpdatePosition();
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "DY", num, value));
			}
		}
	}

	[Description("Event raised when the Gap and Position properties of this control changes.")]
	public event SyncfusionPropertyChangedEventHandler PropertyChanged;

	public AutoLabel()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(AutoLabel));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		AutoSize = true;
	}

	protected virtual void OnPropertyChanged(SyncfusionPropertyChangedEventArgs e)
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, e);
		}
	}

	protected override void OnLocationChanged(EventArgs e)
	{
		base.OnLocationChanged(e);
		UpdatePosition();
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		UpdatePosition();
	}

	protected override void OnParentRightToLeftChanged(EventArgs e)
	{
		base.OnParentRightToLeftChanged(e);
		UpdatePosition();
		if (base.Parent != null && base.Parent.RightToLeft != RightToLeft)
		{
			Trace.WriteLine("AutoLable: " + base.Name + " has a RightToLeft value different from its parent's. This will cause problems while using a FlowLayout on the parent control.");
		}
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
		UpdatePosition();
		if (base.Parent != null && base.Parent.RightToLeft != RightToLeft)
		{
			Trace.WriteLine("AutoLabel: " + base.Name + " has a RightToLeft value different from its parent's. This will cause problems while using a FlowLayout on the parent control.");
		}
	}

	protected internal virtual void UpdatePosition()
	{
		if (LabeledControl != null && LabeledControl.Parent == base.Parent && !settingPos)
		{
			settingPos = true;
			if (Position == AutoLabelPosition.Custom)
			{
				int num = ((RightToLeft == RightToLeft.Yes) ? (LabeledControl.Right - DX - base.Width) : (LabeledControl.Location.X + DX));
				int num2 = LabeledControl.Location.Y + DY;
				base.Location = new Point(num, num2);
			}
			else if (Position == AutoLabelPosition.Left)
			{
				int num3 = LabeledControl.Location.Y + (LabeledControl.Height - base.Height) / 2;
				int num4 = ((RightToLeft == RightToLeft.Yes) ? (LabeledControl.Bounds.Right + gap) : (LabeledControl.Location.X - gap - base.Width));
				base.Location = new Point(num4, num3);
			}
			else
			{
				int num5 = LabeledControl.Location.X;
				int num6 = LabeledControl.Location.Y - gap - base.Height;
				base.Location = new Point(num5, num6);
			}
			settingPos = false;
		}
	}

	protected virtual void OnAttachLabeledControl(Control labeledControl)
	{
		if (labeledControl != null)
		{
			AutoLabelMap[labeledControl] = this;
			labeledControl.LocationChanged += LabeledControl_LocationChanged;
			labeledControl.SizeChanged += LabeledControl_SizeChanged;
		}
	}

	protected virtual void OnDetachLabeledControl(Control labeledControl)
	{
		if (labeledControl != null)
		{
			AutoLabelMap.Remove(labeledControl);
			labeledControl.LocationChanged -= LabeledControl_LocationChanged;
			labeledControl.SizeChanged -= LabeledControl_SizeChanged;
		}
	}

	private void LabeledControl_SizeChanged(object sender, EventArgs e)
	{
		if (RightToLeft == RightToLeft.Yes)
		{
			UpdatePosition();
		}
	}

	private void LabeledControl_LocationChanged(object sender, EventArgs e)
	{
		UpdatePosition();
	}

	private bool ShouldAllowBoundsChange()
	{
		if (Position == AutoLabelPosition.Custom)
		{
			return true;
		}
		return false;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			LabeledControl = null;
		}
		base.Dispose(disposing);
	}

	private Size MesureText(string text, Font font)
	{
		if (text == null)
		{
			throw new ArgumentNullException("text");
		}
		if (font == null)
		{
			throw new ArgumentNullException("font");
		}
		SizeF sizeF;
		using (Graphics graphics = CreateGraphics())
		{
			StringFormat genericDefault = StringFormat.GenericDefault;
			genericDefault.FormatFlags |= StringFormatFlags.MeasureTrailingSpaces;
			sizeF = graphics.MeasureString(text, font, int.MaxValue, genericDefault);
		}
		return sizeF.ToSize();
	}
}
