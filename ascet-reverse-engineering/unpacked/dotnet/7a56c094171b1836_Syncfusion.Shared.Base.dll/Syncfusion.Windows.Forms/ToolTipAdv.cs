using System;
using System.ComponentModel;
using System.Drawing;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
[DocumentationExclude]
public class ToolTipAdv : PopupControlContainer
{
	private bool m_bInheritHostCursor = true;

	private int restrictWidth;

	private Label label;

	private GradientPanel gradientPanel;

	private Control ctrlHost;

	private Container components;

	[Browsable(true)]
	public new string Text
	{
		get
		{
			return Regex.Replace(base.Text, "&", "&&");
		}
		set
		{
			if (base.Text != value)
			{
				base.Text = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Lets you set the background color, gradient, etc.")]
	[Category("Appearance")]
	public BrushInfo BackgroundColor
	{
		get
		{
			return gradientPanel.BackgroundColor;
		}
		set
		{
			gradientPanel.BackgroundColor = value;
		}
	}

	[DefaultValue(ButtonBorderStyle.Solid)]
	[Category("Appearance")]
	[Description("Indicates the 2D border style.")]
	public ButtonBorderStyle BorderSingle
	{
		get
		{
			return gradientPanel.BorderSingle;
		}
		set
		{
			gradientPanel.BorderSingle = value;
		}
	}

	[Category("Appearance")]
	[Description("Indicates the style of the 3D border.")]
	public Border3DStyle Border3DStyle
	{
		get
		{
			return gradientPanel.Border3DStyle;
		}
		set
		{
			gradientPanel.Border3DStyle = value;
		}
	}

	[DefaultValue(BorderStyle.Fixed3D)]
	public new BorderStyle BorderStyle
	{
		get
		{
			return gradientPanel.BorderStyle;
		}
		set
		{
			gradientPanel.BorderStyle = value;
			UpdateSize();
		}
	}

	[Description("Gets or sets the maximum width of the tooltip control. It wraps text that flows beyond the restricted width.To allow text to flow in a single line, set restricted width to zero.")]
	public int RestrictWidth
	{
		get
		{
			return restrictWidth;
		}
		set
		{
			if (restrictWidth != value)
			{
				restrictWidth = value;
				UpdateSize();
			}
		}
	}

	[Description("Indicates if cursor of host control is used.")]
	[Category("Appearance")]
	[DefaultValue(true)]
	public bool InheritHostCursor
	{
		get
		{
			return m_bInheritHostCursor;
		}
		set
		{
			m_bInheritHostCursor = value;
		}
	}

	[Category("Popup")]
	[DefaultValue(true)]
	[Description("Specifies whether or not to ignore all keys.")]
	public new bool IgnoreKeys
	{
		get
		{
			return base.IgnoreKeys;
		}
		set
		{
			base.IgnoreKeys = value;
		}
	}

	[Description("Specifies whether the ToolTipAdv control will be visible.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public new bool Visible
	{
		get
		{
			return base.Visible;
		}
		set
		{
			base.Visible = value;
		}
	}

	public ToolTipAdv(Control host)
	{
		InitializeComponent();
		base.BorderStyle = BorderStyle.None;
		base.Controls.Add(gradientPanel);
		gradientPanel.Controls.Add(label);
		ctrlHost = host;
		IgnoreKeys = true;
		label.MouseDown += Label_MouseDown;
		label.MouseUp += Label_MouseUp;
		label.MouseMove += Label_MouseMove;
		label.MouseLeave += Label_MouseLeave;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (components != null)
			{
				components.Dispose();
			}
			if (gradientPanel != null)
			{
				gradientPanel.Dispose();
				gradientPanel = null;
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.label = new System.Windows.Forms.Label();
		this.gradientPanel = new Syncfusion.Windows.Forms.Tools.GradientPanel();
		this.label.BackColor = System.Drawing.Color.Transparent;
		this.label.Dock = System.Windows.Forms.DockStyle.Fill;
		this.label.Location = new System.Drawing.Point(17, 17);
		this.label.Name = "label";
		this.label.TabIndex = 0;
		this.label.Text = "0";
		this.label.TextChanged += new System.EventHandler(label_TextChanged);
		this.label.UseCompatibleTextRendering = false;
		this.label.Margin = System.Windows.Forms.Padding.Empty;
		this.gradientPanel.BorderColor = System.Drawing.Color.Black;
		this.gradientPanel.Dock = System.Windows.Forms.DockStyle.Fill;
		this.gradientPanel.Location = new System.Drawing.Point(31, 42);
		this.gradientPanel.Name = "gradientPanel";
		this.gradientPanel.Size = new System.Drawing.Size(224, 80);
		this.gradientPanel.TabIndex = 0;
		base.Size = new System.Drawing.Size(392, 112);
		base.ForeColorChanged += new System.EventHandler(ToolTipAdv_ForeColorChanged);
		base.TextChanged += new System.EventHandler(ToolTipAdv_TextChanged);
		base.FontChanged += new System.EventHandler(ToolTipAdv_FontChanged);
		base.BackgroundImageChanged += new System.EventHandler(ToolTipAdv_BackgroundImageChanged);
		base.BackColorChanged += new System.EventHandler(ToolTipAdv_BackColorChanged);
	}

	protected virtual void ResetBackgroundColor()
	{
		BackgroundColor = BrushInfo.Empty;
	}

	protected virtual bool ShouldSerializeBackgroundColor()
	{
		return gradientPanel.BackgroundColor != BrushInfo.Empty;
	}

	protected virtual void ResetBorder3DStyle()
	{
		Border3DStyle = Border3DStyle.Sunken;
	}

	protected virtual bool ShouldSerializeBorder3DStyle()
	{
		return gradientPanel.Border3DStyle != Border3DStyle.Sunken;
	}

	protected virtual void ResetRestrictWidth()
	{
		RestrictWidth = 0;
	}

	protected virtual bool ShouldSerializeRestrictWidth()
	{
		return restrictWidth > 0;
	}

	protected override void OnBeforePopup(CancelEventArgs args)
	{
		if (ctrlHost != null)
		{
			base.ParentControl = FindFormHelper.FindForm(ctrlHost);
			if (base.ParentControl == null)
			{
				base.ParentControl = ctrlHost;
			}
			if (InheritHostCursor)
			{
				Cursor = ctrlHost.Cursor;
			}
		}
		base.OnBeforePopup(args);
	}

	protected virtual void UpdateSize()
	{
		int num = 0;
		if (BorderStyle == BorderStyle.FixedSingle)
		{
			num = 1;
		}
		else if (BorderStyle == BorderStyle.Fixed3D)
		{
			num = 2;
		}
		label.AutoSize = false;
		label.AutoSize = true;
		Size size = label.Size;
		size.Height += 2 * num + label.Margin.Vertical;
		size.Width += 2 * num + label.Margin.Horizontal;
		base.Size = size;
	}

	private void ToolTipAdv_TextChanged(object sender, EventArgs e)
	{
		label.Text = Text;
	}

	private void ToolTipAdv_FontChanged(object sender, EventArgs e)
	{
		label.Font = Font;
		UpdateSize();
	}

	private void ToolTipAdv_ForeColorChanged(object sender, EventArgs e)
	{
		label.ForeColor = ForeColor;
	}

	private void label_TextChanged(object sender, EventArgs e)
	{
		UpdateSize();
	}

	private void ToolTipAdv_BackgroundImageChanged(object sender, EventArgs e)
	{
		gradientPanel.BackgroundImage = BackgroundImage;
	}

	private void ToolTipAdv_BackColorChanged(object sender, EventArgs e)
	{
		gradientPanel.BackColor = BackColor;
	}

	private void Label_MouseDown(object sender, MouseEventArgs e)
	{
		Point point = ctrlHost.PointToClient(label.PointToScreen(new Point(e.X, e.Y)));
		if (e.Button == MouseButtons.Left)
		{
			if (e.Clicks == 2)
			{
				NativeMethods.SendMessage(ctrlHost.Handle, 515, (IntPtr)1, (IntPtr)NativeMethods.MAKELPARAM(point.X, point.Y));
			}
			else
			{
				NativeMethods.SendMessage(ctrlHost.Handle, 513, (IntPtr)1, (IntPtr)NativeMethods.MAKELPARAM(point.X, point.Y));
			}
		}
		else if (e.Button == MouseButtons.Right)
		{
			HidePopup();
			NativeMethods.SendMessage(ctrlHost.Handle, 516, (IntPtr)2, (IntPtr)NativeMethods.MAKELPARAM(point.X, point.Y));
		}
		else
		{
			HidePopup();
		}
	}

	private void Label_MouseUp(object sender, MouseEventArgs e)
	{
		Point point = ctrlHost.PointToClient(label.PointToScreen(new Point(e.X, e.Y)));
		if (e.Button == MouseButtons.Left)
		{
			NativeMethods.SendMessage(ctrlHost.Handle, 514, (IntPtr)1, (IntPtr)NativeMethods.MAKELPARAM(point.X, point.Y));
		}
		else if (e.Button == MouseButtons.Right)
		{
			NativeMethods.SendMessage(ctrlHost.Handle, 517, (IntPtr)2, (IntPtr)NativeMethods.MAKELPARAM(point.X, point.Y));
		}
	}

	private void Label_MouseMove(object sender, MouseEventArgs e)
	{
		Point pt = label.PointToScreen(new Point(e.X, e.Y));
		if (!ctrlHost.RectangleToScreen(ctrlHost.ClientRectangle).Contains(pt))
		{
			HidePopup(PopupCloseType.Deactivated);
		}
	}

	private void Label_MouseLeave(object sender, EventArgs e)
	{
		if (!label.RectangleToScreen(label.ClientRectangle).Contains(Cursor.Position))
		{
			HidePopup(PopupCloseType.Deactivated);
		}
	}
}
