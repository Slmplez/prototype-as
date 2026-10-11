using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;

namespace Syncfusion.Windows.Forms.Tools;

[DefaultProperty("BoolValue")]
[Description("Advanced CheckBox with customizable border, background and supports advanced DataBinding.")]
[ToolboxItem(true)]
[Designer(typeof(CheckBoxAdvDesigner), typeof(IDesigner))]
[ToolboxBitmap(typeof(CheckBoxAdv), "ToolboxIcons.CheckBoxAdv.bmp")]
[DefaultEvent("CheckStateChanged")]
public class CheckBoxAdv : CheckRadioBase, ISupportInitialize
{
	private const float InternalRectangleBorderAngle = 55f;

	private const float InternalRectangleAngle = 50f;

	private bool breadOnly;

	private bool autoCheck = true;

	private CheckState mcheckState;

	private bool tristate;

	private int indeterminateInt = -1;

	private string strIndeterminateString = "Indeterminate";

	private CheckBoxAdvStyle style;

	private Office2007Theme colorScheme;

	private Blend internalNormalRectBlend;

	private Blend internalSelectedRectBlend;

	private Point[] tickPositions;

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Indicates the read only mode of the CheckBox.")]
	public bool ReadOnlyMode
	{
		get
		{
			return breadOnly;
		}
		set
		{
			breadOnly = value;
		}
	}

	[Description("Gets or sets an advanced appearance for the checkBoxAdv.")]
	[Category("Appearance")]
	[DefaultValue(CheckBoxAdvStyle.Default)]
	public CheckBoxAdvStyle Style
	{
		get
		{
			return style;
		}
		set
		{
			if (style != value)
			{
				style = value;
				OnStyleChanged();
			}
		}
	}

	[DefaultValue(Office2007Theme.Blue)]
	[Category("Appearance")]
	[Description("Gets or sets office 2007 color scheme.")]
	public Office2007Theme Office2007ColorScheme
	{
		get
		{
			return colorScheme;
		}
		set
		{
			if (colorScheme != value)
			{
				colorScheme = value;
				OnStyleChanged();
			}
		}
	}

	[Category("Appearance")]
	[Description("Causes CheckBox to automatically change state when clicked.")]
	[DefaultValue(true)]
	public bool AutoCheck
	{
		get
		{
			return autoCheck;
		}
		set
		{
			autoCheck = value;
			Invalidate();
		}
	}

	[Description("Gets or Sets the checked state of the CheckBox.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool Checked
	{
		get
		{
			return CheckState != CheckState.Unchecked;
		}
		set
		{
			if (value != Checked)
			{
				CheckState = (value ? CheckState.Checked : CheckState.Unchecked);
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(CheckState.Unchecked)]
	[Description("Gets or Sets the check state of the CheckBox.")]
	public CheckState CheckState
	{
		get
		{
			return mcheckState;
		}
		set
		{
			if (value == CheckState.Indeterminate)
			{
				buttonState = ButtonState.All;
			}
			if (value == CheckState.Checked)
			{
				buttonState = ButtonState.Checked;
			}
			if (value == CheckState.Unchecked && base.Enabled)
			{
				buttonState = ButtonState.Normal;
			}
			if (mcheckState != value)
			{
				mcheckState = value;
				Invalidate(invalidateChildren: true);
				OnCheckedChanged(new CheckedChangedEventArgs(CheckedChangedEventArgs.SourceType.Programmatic));
			}
		}
	}

	[DefaultValue(false)]
	[Description("Determines if undetermined state can be accessed through clicking.")]
	[Category("Behavior")]
	public bool Tristate
	{
		get
		{
			return tristate;
		}
		set
		{
			tristate = value;
			Invalidate();
		}
	}

	[DefaultValue(null)]
	[Category("StateImages")]
	[Description("The image used to draw the checkbox when indeterminate and mouse not over.")]
	public Image IndeterminateImage
	{
		get
		{
			return mindeterminateImage;
		}
		set
		{
			if (mindeterminateImage != value)
			{
				mindeterminateImage = value;
			}
		}
	}

	[Description("Gets or sets the image used to draw the checkbox when  indeterminate and mouse over.")]
	[DefaultValue(null)]
	[Category("StateImages")]
	public Image MouseOverIndetermImage
	{
		get
		{
			return mmouseOverIndetermImage;
		}
		set
		{
			if (mmouseOverIndetermImage != value)
			{
				mmouseOverIndetermImage = value;
			}
		}
	}

	[DefaultValue(-1)]
	[Description("Gets or sets the integer value used when indeterminate.")]
	[Category("DataBinding")]
	public int IndeterminateInt
	{
		get
		{
			return indeterminateInt;
		}
		set
		{
			indeterminateInt = value;
		}
	}

	[Category("DataBinding")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Gets or sets the int value.")]
	public int IntValue
	{
		get
		{
			int result = 0;
			switch (mcheckState)
			{
			case CheckState.Checked:
				result = base.CheckedInt;
				break;
			case CheckState.Unchecked:
				result = base.UncheckedInt;
				break;
			case CheckState.Indeterminate:
				result = IndeterminateInt;
				break;
			}
			return result;
		}
		set
		{
			if (value == base.CheckedInt)
			{
				CheckState = CheckState.Checked;
			}
			if (value == base.UncheckedInt)
			{
				CheckState = CheckState.Unchecked;
			}
			if (value == IndeterminateInt)
			{
				CheckState = CheckState.Indeterminate;
			}
			Invalidate(invalidateChildren: true);
		}
	}

	[Category("DataBinding")]
	[DefaultValue("Indeterminate")]
	[Description("Gets or sets the indeterminate string.")]
	public string IndeterminateString
	{
		get
		{
			return strIndeterminateString;
		}
		set
		{
			strIndeterminateString = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Gets or sets the string value.")]
	[Category("DataBinding")]
	public string StringValue
	{
		get
		{
			if (mcheckState == CheckState.Indeterminate)
			{
				return strIndeterminateString;
			}
			return string.Empty;
		}
		set
		{
			if (value == strIndeterminateString)
			{
				CheckState = CheckState.Indeterminate;
			}
			Invalidate(invalidateChildren: true);
		}
	}

	[Category("DataBinding")]
	[DefaultValue(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Gets or sets a value indicating CheckState.")]
	public bool BoolValue
	{
		get
		{
			return mcheckState == CheckState.Checked;
		}
		set
		{
			if (BoolValue != value)
			{
				CheckState = (value ? CheckState.Checked : CheckState.Unchecked);
				Invalidate(invalidateChildren: true);
			}
		}
	}

	protected Office2007Colors Office2007ColorTable => Office2007Colors.GetColorTable(Office2007ColorScheme);

	[Description("Occurs when the CheckState property changes.")]
	public event EventHandler CheckStateChanged;

	[Description("Occurs when the CheckState property changes.")]
	public event CheckedChangedEventHandler CheckedChanged;

	[Description("Occurs when the BoolValue property changes.")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public event EventHandler BoolValueChanged
	{
		add
		{
			CheckStateChanged += value;
		}
		remove
		{
			CheckStateChanged -= value;
		}
	}

	public CheckBoxAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(CheckBoxAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		Init();
	}

	public void BeginInit()
	{
		mbinitializing = true;
	}

	public void EndInit()
	{
		mbinitializing = false;
		RecalculatePositions();
		Invalidate();
	}

	protected virtual void OnCheckStateChanged(EventArgs e)
	{
		if (this.CheckStateChanged != null)
		{
			this.CheckStateChanged(this, e);
		}
	}

	protected virtual void OnCheckedChanged(CheckedChangedEventArgs e)
	{
		OnCheckStateChanged(e);
		if (this.CheckedChanged != null)
		{
			this.CheckedChanged(this, e);
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (!mbinitializing)
		{
			base.OnPaint(e);
			DrawCheckBox(e.Graphics);
		}
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		base.OnKeyDown(e);
		if (e.KeyData == Keys.Space && autoCheck)
		{
			ToggleCheckState(CheckedChangedEventArgs.SourceType.Keyboard);
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (!breadOnly)
		{
			base.OnMouseUp(e);
			if (autoCheck && e.Button == MouseButtons.Left)
			{
				ToggleCheckState(CheckedChangedEventArgs.SourceType.Mouse);
			}
		}
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		if (!breadOnly)
		{
			base.OnMouseEnter(e);
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (!breadOnly)
		{
			base.OnMouseDown(e);
		}
	}

	protected override void OnClick(EventArgs e)
	{
		if (base.Enabled)
		{
			base.OnClick(e);
		}
	}

	protected override void OnEnabledChanged(EventArgs e)
	{
		if (base.Enabled)
		{
			if (mcheckState == CheckState.Unchecked)
			{
				buttonState = ButtonState.Normal;
			}
			if (mcheckState == CheckState.Checked)
			{
				buttonState = ButtonState.Checked;
			}
			if (mcheckState == CheckState.Indeterminate)
			{
				buttonState = ButtonState.All;
			}
		}
		else
		{
			buttonState = ButtonState.Inactive;
			if (CheckState == CheckState.Checked)
			{
				buttonState |= ButtonState.Checked;
			}
		}
		base.OnEnabledChanged(e);
	}

	protected override bool ProcessMnemonic(char charCode)
	{
		bool result = false;
		if (!breadOnly && base.CanSelect && Control.IsMnemonic(charCode, Text))
		{
			if (CheckState == CheckState.Checked)
			{
				CheckState = CheckState.Unchecked;
			}
			else
			{
				CheckState = CheckState.Checked;
			}
			result = true;
		}
		return result;
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		if (base.IsHandleCreated)
		{
			RecalculatePositions();
		}
	}

	private void Init()
	{
		internalNormalRectBlend = new Blend();
		internalNormalRectBlend.Positions = new float[4] { 0f, 0.35f, 0.35f, 1f };
		internalNormalRectBlend.Factors = new float[4] { 0f, 0.4f, 0.45f, 1f };
		internalSelectedRectBlend = new Blend();
		internalSelectedRectBlend.Positions = new float[4] { 0f, 0.6f, 0.6f, 1f };
		internalSelectedRectBlend.Factors = new float[4] { 0f, 0.6f, 0.65f, 1f };
	}

	private void DrawCheckBox(Graphics g)
	{
		if (mimageCheckBox)
		{
			Image image = null;
			if (mmouseOver && CheckState == CheckState.Checked)
			{
				image = mmouseOverCheckedImage;
				if (image == null)
				{
					image = mcheckedImage;
				}
			}
			if (mmouseOver && CheckState == CheckState.Unchecked)
			{
				image = mmouseOverUncheckedImage;
				if (image == null)
				{
					image = muncheckedImage;
				}
			}
			if (mmouseOver && CheckState == CheckState.Indeterminate)
			{
				image = mmouseOverIndetermImage;
				if (image == null)
				{
					image = mindeterminateImage;
				}
			}
			if (!mmouseOver && CheckState == CheckState.Checked)
			{
				image = mcheckedImage;
			}
			if (!mmouseOver && CheckState == CheckState.Unchecked)
			{
				image = muncheckedImage;
			}
			if (!mmouseOver && CheckState == CheckState.Indeterminate)
			{
				image = mindeterminateImage;
			}
			if (!base.Enabled)
			{
				image = base.DisabledImage;
			}
			if (image != null)
			{
				if (mstretchImage)
				{
					g.DrawImage(image, GetSpecificRectangle(base.ImageCheckBoxSize), 0, 0, image.Width, image.Height, GraphicsUnit.Pixel);
				}
				else
				{
					g.DrawImage(image, GetSpecificRectangle(base.ImageCheckBoxSize), 0, 0, GetRectBoxWidth(), GetRectBoxHeight(), GraphicsUnit.Pixel);
				}
			}
		}
		else if (XPThemes.IsThemedOS && XPThemes.IsAppThemed && XPThemes.IsThemeActive && ThemesEnabled)
		{
			int stateID = DetermineState();
			tcd.DrawThemeBackground(g, 3, stateID, mrectBox);
		}
		else if (Style == CheckBoxAdvStyle.Office2007)
		{
			DrawOffice2007Style(g);
		}
		else
		{
			ButtonState buttonState = ButtonState.Normal;
			if (CheckState != CheckState.Unchecked)
			{
				buttonState |= ButtonState.Checked;
			}
			if (!base.Enabled)
			{
				buttonState |= ButtonState.Inactive;
			}
			if (mmouseDown)
			{
				buttonState |= ButtonState.Pushed;
			}
			if (CheckState == CheckState.Indeterminate)
			{
				buttonState = ButtonState.All;
				ControlPaint.DrawMixedCheckBox(g, mrectBox, buttonState);
			}
			else
			{
				ControlPaint.DrawCheckBox(g, mrectBox, buttonState);
			}
		}
	}

	private void DrawOffice2007Style(Graphics g)
	{
		if (!base.Enabled)
		{
			DrawDisabledBackground(g);
			if (CheckState == CheckState.Checked)
			{
				DrawTick(g, Office2007ColorTable.CheckBoxAdvDisabledTickColor);
			}
			DrawBorders(g, Office2007ColorTable.CheckBoxAdvDisabledBorderColor, Office2007ColorTable.CheckBoxAdvDisabledBackColor);
		}
		else if (mmouseDown)
		{
			DrawPushedBackground(g);
			if (CheckState == CheckState.Checked)
			{
				DrawTick(g, Office2007ColorTable.CheckBoxAdvPushedTickColor);
			}
			DrawBorders(g, Office2007ColorTable.CheckBoxAdvPushedBorderColor, Office2007ColorTable.CheckBoxAdvPushedInternalBorderColor);
		}
		else if (mmouseOver)
		{
			DrawSelectedBackground(g);
			if (CheckState == CheckState.Indeterminate)
			{
				DrawIndeterminateRectangle(g);
			}
			else if (CheckState == CheckState.Checked)
			{
				DrawTick(g, Office2007ColorTable.CheckBoxAdvSelectedTickColor);
			}
			DrawBorders(g, Office2007ColorTable.CheckBoxAdvSelectedBorderColor, Office2007ColorTable.CheckBoxAdvSelectedInternalBorderColor);
		}
		else
		{
			DrawNormalBackground(g);
			if (CheckState == CheckState.Indeterminate)
			{
				DrawIndeterminateRectangle(g);
			}
			else if (CheckState == CheckState.Checked)
			{
				DrawTick(g, Office2007ColorTable.CheckBoxAdvNormalTickColor);
			}
			DrawBorders(g, Office2007ColorTable.CheckBoxAdvNormalBorderColor, Office2007ColorTable.CheckBoxAdvNormalInternalBorderColor);
		}
	}

	private void DrawBorders(Graphics g, Color color1, Color color2)
	{
		Rectangle rect = new Rectangle(mrectBox.X, mrectBox.Y, mrectBox.Width - 1, mrectBox.Height - 1);
		using (Pen pen = new Pen(color1))
		{
			g.DrawRectangle(pen, rect);
		}
		rect.Inflate(-1, -1);
		using Pen pen2 = new Pen(color2);
		g.DrawRectangle(pen2, rect);
	}

	private void DrawNormalBackground(Graphics g)
	{
		using (Brush brush = new SolidBrush(Office2007ColorTable.CheckBoxAdvNormalBackColor))
		{
			g.FillRectangle(brush, mrectBox);
		}
		Rectangle rect = new Rectangle(mrectBox.X, mrectBox.Y, mrectBox.Width - 1, mrectBox.Height - 1);
		rect.Inflate(-1, -1);
		using (LinearGradientBrush brush2 = new LinearGradientBrush(rect, Office2007ColorTable.CheckBoxAdvNormalInternalRectangleBorderColor, Color.FromArgb(20, Office2007ColorTable.CheckBoxAdvNormalInternalRectangleBorderColor), 55f))
		{
			using Pen pen = new Pen(brush2);
			rect.Inflate(-1, -1);
			g.DrawRectangle(pen, rect);
		}
		rect = new Rectangle(rect.X + 1, rect.Y + 1, rect.Width - 1, rect.Height - 1);
		using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Office2007ColorTable.CheckBoxAdvNormalInternalRectangleColor, SystemColors.Window, 50f);
		linearGradientBrush.Blend = internalNormalRectBlend;
		g.FillRectangle(linearGradientBrush, rect);
	}

	private void DrawSelectedBackground(Graphics g)
	{
		using (Brush brush = new SolidBrush(Office2007ColorTable.CheckBoxAdvSelectedBackColor))
		{
			g.FillRectangle(brush, mrectBox);
		}
		Rectangle rect = new Rectangle(mrectBox.X, mrectBox.Y, mrectBox.Width - 1, mrectBox.Height - 1);
		rect.Inflate(-1, -1);
		using (LinearGradientBrush brush2 = new LinearGradientBrush(rect, Office2007ColorTable.CheckBoxAdvSelectedInternalRectangleBorderColor, Color.FromArgb(50, Office2007ColorTable.CheckBoxAdvSelectedInternalRectangleBorderColor), 55f))
		{
			using Pen pen = new Pen(brush2);
			rect.Inflate(-1, -1);
			g.DrawRectangle(pen, rect);
		}
		rect = new Rectangle(rect.X + 1, rect.Y + 1, rect.Width - 1, rect.Height - 1);
		using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Office2007ColorTable.CheckBoxAdvSelectedInternalRectangleColor, SystemColors.Window, 50f);
		linearGradientBrush.Blend = internalSelectedRectBlend;
		g.FillRectangle(linearGradientBrush, rect);
	}

	private void DrawPushedBackground(Graphics g)
	{
		using (Brush brush = new SolidBrush(Office2007ColorTable.CheckBoxAdvPushedBackColor))
		{
			g.FillRectangle(brush, mrectBox);
		}
		Rectangle rect = new Rectangle(mrectBox.X, mrectBox.Y, mrectBox.Width - 1, mrectBox.Height - 1);
		rect.Inflate(-1, -1);
		using (LinearGradientBrush brush2 = new LinearGradientBrush(rect, Office2007ColorTable.CheckBoxAdvPushedInternalRectangleBorderColor, Color.FromArgb(50, Office2007ColorTable.CheckBoxAdvPushedInternalRectangleBorderColor), 55f))
		{
			using Pen pen = new Pen(brush2);
			rect.Inflate(-1, -1);
			g.DrawRectangle(pen, rect);
		}
		rect = new Rectangle(rect.X + 1, rect.Y + 1, rect.Width - 1, rect.Height - 1);
		using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Office2007ColorTable.CheckBoxAdvPushedInternalRectangleColor, SystemColors.Window, 50f);
		linearGradientBrush.Blend = internalSelectedRectBlend;
		g.FillRectangle(linearGradientBrush, rect);
	}

	private void DrawDisabledBackground(Graphics g)
	{
		Rectangle rect = mrectBox;
		using (Brush brush = new SolidBrush(Office2007ColorTable.CheckBoxAdvDisabledBackColor))
		{
			g.FillRectangle(brush, rect);
		}
		rect.Inflate(-2, -2);
		using LinearGradientBrush brush2 = new LinearGradientBrush(rect, Office2007ColorTable.CheckBoxAdvDisabledInternalBorderColor, Office2007ColorTable.CheckBoxAdvDisabledBackColor, 50f);
		using Pen pen = new Pen(brush2);
		rect = new Rectangle(rect.X, rect.Y, rect.Width - 1, rect.Height - 1);
		g.DrawRectangle(pen, rect);
	}

	private void DrawTick(Graphics g, Color tickColor)
	{
		tickPositions = new Point[3]
		{
			new Point(mrectBox.X + 3, mrectBox.Y + 6),
			new Point(mrectBox.X + 5, mrectBox.Y + 9),
			new Point(mrectBox.X + 9, mrectBox.Y + 2)
		};
		g.SmoothingMode = SmoothingMode.AntiAlias;
		using (Pen pen = new Pen(SystemColors.Window, 4f))
		{
			using Pen pen2 = new Pen(tickColor, 2f);
			g.DrawLines(pen, tickPositions);
			g.DrawLines(pen2, tickPositions);
		}
		g.SmoothingMode = SmoothingMode.Default;
	}

	private void DrawIndeterminateRectangle(Graphics g)
	{
		Rectangle rect = mrectBox;
		rect.Inflate(-4, -4);
		using Brush brush = new SolidBrush(Office2007ColorTable.CheckBoxAdvIndeterminateRectangleColor);
		g.FillRectangle(brush, rect);
	}

	private int DetermineState()
	{
		int result = 1;
		if (!base.Enabled)
		{
			switch (mcheckState)
			{
			case CheckState.Unchecked:
				result = 4;
				break;
			case CheckState.Checked:
				result = 8;
				break;
			case CheckState.Indeterminate:
				result = 12;
				break;
			}
		}
		else if (mmouseOver && mmouseDown)
		{
			switch (mcheckState)
			{
			case CheckState.Unchecked:
				result = 3;
				break;
			case CheckState.Checked:
				result = 7;
				break;
			case CheckState.Indeterminate:
				result = 11;
				break;
			}
		}
		else if (mmouseDown)
		{
			switch (mcheckState)
			{
			case CheckState.Unchecked:
				result = 1;
				break;
			case CheckState.Checked:
				result = 5;
				break;
			case CheckState.Indeterminate:
				result = 9;
				break;
			}
		}
		else if (mmouseOver)
		{
			switch (mcheckState)
			{
			case CheckState.Unchecked:
				result = 2;
				break;
			case CheckState.Checked:
				result = 6;
				break;
			case CheckState.Indeterminate:
				result = 10;
				break;
			}
		}
		else
		{
			switch (mcheckState)
			{
			case CheckState.Unchecked:
				result = 1;
				break;
			case CheckState.Checked:
				result = 5;
				break;
			case CheckState.Indeterminate:
				result = 9;
				break;
			}
		}
		return result;
	}

	private void OnStyleChanged()
	{
		Invalidate();
	}

	private void ToggleCheckState(CheckedChangedEventArgs.SourceType source)
	{
		if (breadOnly || !base.Enabled)
		{
			return;
		}
		switch (mcheckState)
		{
		case CheckState.Checked:
			if (Tristate)
			{
				mcheckState = CheckState.Indeterminate;
			}
			else
			{
				mcheckState = CheckState.Unchecked;
			}
			break;
		case CheckState.Unchecked:
			mcheckState = CheckState.Checked;
			break;
		case CheckState.Indeterminate:
			mcheckState = CheckState.Unchecked;
			break;
		}
		Invalidate(invalidateChildren: true);
		OnCheckedChanged(new CheckedChangedEventArgs(source));
	}
}
