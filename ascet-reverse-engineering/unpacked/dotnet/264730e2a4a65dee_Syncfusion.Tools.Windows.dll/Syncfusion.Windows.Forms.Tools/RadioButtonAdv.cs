using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(RadioButtonAdv), "ToolboxIcons.RadioButtonAdv.bmp")]
[DefaultEvent("CheckChanged")]
[DefaultProperty("BoolValue")]
[Designer(typeof(RadioButtonAdvDesigner), typeof(IDesigner))]
[ToolboxItem(true)]
[Description("Advanced Radio Button with customizable border, background and supports advanced DataBinding")]
public class RadioButtonAdv : CheckRadioBase, ISupportInitialize
{
	private bool mbchecked;

	private bool braiseEventOnClick = true;

	private RadioButtonAdvStyle mstyle;

	private Office2007Theme mcolorScheme;

	private Office2007Colors moffice2007ColorTable;

	private Blend mnormalInternalRectBlend;

	private Blend mselectedInternalRectBlend;

	private Blend mnormalInternalRectBorderBlend;

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Indicates whether RadioButtonAdv is checked.")]
	public bool Checked
	{
		get
		{
			return mbchecked;
		}
		set
		{
			bool flag = mbchecked;
			mbchecked = value;
			if (mbchecked)
			{
				Control control = base.Parent;
				if (control != null)
				{
					foreach (Control control2 in control.Controls)
					{
						if (control2 is RadioButtonAdv && control2 != this)
						{
							((RadioButtonAdv)control2).Checked = false;
						}
					}
				}
			}
			Invalidate();
			if (!mbinitializing)
			{
				if (flag != mbchecked)
				{
					OnCheckChanged(EventArgs.Empty);
				}
				OnGroupCheckChanged(EventArgs.Empty);
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	[Description("Specifies whether the OnClick event should be fired")]
	public bool RaiseEventOnClick
	{
		get
		{
			return braiseEventOnClick;
		}
		set
		{
			braiseEventOnClick = value;
		}
	}

	[DefaultValue(RadioButtonAdvStyle.Default)]
	[Description("Gets or sets an advanced appearance for the radioButtonAdv.")]
	[Category("Appearance")]
	public RadioButtonAdvStyle Style
	{
		get
		{
			return mstyle;
		}
		set
		{
			if (mstyle != value)
			{
				mstyle = value;
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
			return mcolorScheme;
		}
		set
		{
			if (mcolorScheme != value)
			{
				mcolorScheme = value;
				OnStyleChanged();
			}
		}
	}

	[Category("DataBinding")]
	[Description("Gets or Sets checked RadioButtonAdv in current container according to TabIndex.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(true)]
	public int IntValue
	{
		get
		{
			int result = 0;
			if (!mbinitializing)
			{
				Control control = base.Parent;
				if (control != null)
				{
					ArrayList lstTabInexes = new ArrayList();
					FillAndSort(control, lstTabInexes);
					result = GetCheck(lstTabInexes);
				}
			}
			return result;
		}
		set
		{
			Control control = base.Parent;
			if (control != null)
			{
				ArrayList lstTabInexes = new ArrayList();
				FillAndSort(control, lstTabInexes);
				SetCheck(lstTabInexes, value);
			}
		}
	}

	internal Office2007Colors Office2007ColorTable => (moffice2007ColorTable == null) ? Office2007Colors.Default : moffice2007ColorTable;

	[Description("Occurs when the Checked property changes.")]
	public event EventHandler CheckChanged;

	[Description("Occurs when the Checked property of RadioButtonAdv in group changes.")]
	public event EventHandler GroupCheckChanged;

	public RadioButtonAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(RadioButtonAdv));
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

	protected virtual void OnCheckChanged(EventArgs e)
	{
		if (this.CheckChanged != null)
		{
			this.CheckChanged(this, e);
		}
	}

	protected virtual void OnGroupCheckChanged(EventArgs e)
	{
		if (this.GroupCheckChanged != null)
		{
			this.GroupCheckChanged(this, e);
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (!mbinitializing)
		{
			base.OnPaint(e);
			DrawRadioBox(e.Graphics);
		}
	}

	protected override void OnClick(EventArgs e)
	{
		if (base.Enabled && !Checked)
		{
			Checked = !Checked;
		}
		if (braiseEventOnClick)
		{
			base.OnClick(e);
		}
	}

	protected override bool ProcessMnemonic(char charCode)
	{
		bool result = false;
		if (base.CanSelect && Control.IsMnemonic(charCode, Text))
		{
			if (!Checked)
			{
				Checked = true;
			}
			Invalidate(invalidateChildren: true);
			result = true;
		}
		return result;
	}

	protected override void OnParentChanged(EventArgs e)
	{
		Checked = Checked;
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		if (base.IsHandleCreated)
		{
			RecalculatePositions();
		}
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		base.OnKeyDown(e);
		if (e.KeyCode == Keys.Space || e.KeyCode == Keys.Return)
		{
			mmouseDown = true;
			Invalidate();
		}
	}

	protected override void OnKeyUp(KeyEventArgs e)
	{
		base.OnKeyUp(e);
		if (e.KeyCode == Keys.Space || e.KeyCode == Keys.Return)
		{
			if (mmouseDown && !Checked)
			{
				Checked = true;
			}
			mmouseDown = false;
			Invalidate();
		}
	}

	protected override void OnLeave(EventArgs e)
	{
		mmouseDown = false;
		base.OnLeave(e);
	}

	private void Init()
	{
		mnormalInternalRectBlend = new Blend();
		mnormalInternalRectBlend.Positions = new float[4] { 0f, 0.3f, 0.3f, 1f };
		mnormalInternalRectBlend.Factors = new float[4] { 0f, 0.4f, 0.45f, 1f };
		mselectedInternalRectBlend = new Blend();
		mselectedInternalRectBlend.Positions = new float[4] { 0f, 0.8f, 0.8f, 1f };
		mselectedInternalRectBlend.Factors = new float[4] { 0f, 0.65f, 0.9f, 1f };
		mnormalInternalRectBorderBlend = new Blend();
		mnormalInternalRectBorderBlend.Positions = new float[4] { 0f, 0.62f, 0.63f, 1f };
		mnormalInternalRectBorderBlend.Factors = new float[4] { 0f, 0.3f, 0.65f, 1f };
	}

	private void DrawRadioBox(Graphics g)
	{
		if (mimageCheckBox)
		{
			Image image = null;
			if (mmouseOver && Checked)
			{
				image = mmouseOverCheckedImage;
				if (image == null)
				{
					image = mcheckedImage;
				}
			}
			if (mmouseOver && !Checked)
			{
				image = mmouseOverUncheckedImage;
				if (image == null)
				{
					image = muncheckedImage;
				}
			}
			if (!mmouseOver && Checked)
			{
				image = mcheckedImage;
			}
			if (!mmouseOver && !Checked)
			{
				image = muncheckedImage;
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
			tcd.DrawThemeBackground(g, 2, stateID, mrectBox);
		}
		else if (Style == RadioButtonAdvStyle.Office2007)
		{
			SmoothingMode smoothingMode = g.SmoothingMode;
			g.SmoothingMode = SmoothingMode.AntiAlias;
			DrawOffice2007Style(g);
			g.SmoothingMode = smoothingMode;
		}
		else
		{
			ButtonState buttonState = ButtonState.Normal;
			if (Checked)
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
			ControlPaint.DrawRadioButton(g, mrectBox, buttonState);
		}
	}

	private void DrawOffice2007Style(Graphics g)
	{
		if (!base.Enabled)
		{
			FillBackGround(g, Office2007ColorTable.RadioButtonAdvNormalBackColor);
			if (Checked)
			{
				DrawDisabledCheckMark(g);
			}
			DrawDisabledBackGround(g);
			DrawBorder(g, Color.FromArgb(150, Office2007ColorTable.RadioButtonAdvNormalBorderColor));
		}
		else if (mmouseDown)
		{
			FillBackGround(g, Office2007ColorTable.RadioButtonAdvPushedBackColor);
			if (Checked)
			{
				DrawPushedCheckMark(g);
			}
			else
			{
				DrawPushedBackGround(g);
			}
			DrawBorder(g, Office2007ColorTable.RadioButtonAdvPushedBorderColor);
		}
		else if (mmouseOver)
		{
			FillBackGround(g, Office2007ColorTable.RadioButtonAdvSelectedBackColor);
			if (Checked)
			{
				DrawSelectedCheckMark(g);
			}
			else
			{
				DrawSelectedBackGround(g);
			}
			DrawBorder(g, Office2007ColorTable.RadioButtonAdvSelectedBorderColor);
		}
		else
		{
			FillBackGround(g, Office2007ColorTable.RadioButtonAdvNormalBackColor);
			if (Checked)
			{
				DrawNormalCheckMark(g);
			}
			else
			{
				DrawNormalBackGround(g);
			}
			DrawBorder(g, Office2007ColorTable.RadioButtonAdvNormalBorderColor);
		}
	}

	private void FillBackGround(Graphics g, Color backColor)
	{
		Rectangle rect = mrectBox;
		rect.Inflate(-1, -1);
		using Brush brush = new SolidBrush(backColor);
		g.FillEllipse(brush, rect);
	}

	private void DrawDisabledBackGround(Graphics g)
	{
		Rectangle rect = mrectBox;
		rect.Inflate(-3, -3);
		using LinearGradientBrush brush = new LinearGradientBrush(rect, Color.FromArgb(175, Office2007ColorTable.RadioButtonAdvNormalInternalBorderColor), Color.FromArgb(55, Office2007ColorTable.RadioButtonAdvNormalInternalBorderColor), 60f);
		using Pen pen = new Pen(brush);
		g.DrawEllipse(pen, rect);
	}

	private void DrawNormalBackGround(Graphics g)
	{
		Rectangle rect = mrectBox;
		rect.Inflate(-3, -3);
		using (LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Color.FromArgb(225, Office2007ColorTable.RadioButtonAdvNormalInternalBorderColor), SystemColors.Window, 50f))
		{
			linearGradientBrush.Blend = mnormalInternalRectBlend;
			g.FillEllipse(linearGradientBrush, rect);
		}
		using LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(rect, Office2007ColorTable.RadioButtonAdvNormalInternalBorderColor, Office2007ColorTable.RadioButtonAdvNormalBackColor, 60f);
		linearGradientBrush2.Blend = mnormalInternalRectBorderBlend;
		using Pen pen = new Pen(linearGradientBrush2);
		g.DrawEllipse(pen, rect);
	}

	private void DrawSelectedBackGround(Graphics g)
	{
		Rectangle rect = mrectBox;
		rect.Inflate(-3, -3);
		using (LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Color.FromArgb(150, Office2007ColorTable.RadioButtonAdvSelectedInternalBorderColor), SystemColors.Window, 50f))
		{
			linearGradientBrush.Blend = mselectedInternalRectBlend;
			g.FillEllipse(linearGradientBrush, rect);
		}
		using LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(rect, Office2007ColorTable.RadioButtonAdvSelectedInternalBorderColor, Color.FromArgb(225, Office2007ColorTable.RadioButtonAdvSelectedBackColor), 60f);
		linearGradientBrush2.Blend = mnormalInternalRectBorderBlend;
		using Pen pen = new Pen(linearGradientBrush2);
		g.DrawEllipse(pen, rect);
	}

	private void DrawPushedBackGround(Graphics g)
	{
		Rectangle rect = mrectBox;
		rect.Inflate(-3, -3);
		using (LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Color.FromArgb(150, Office2007ColorTable.RadioButtonAdvPushedInternalBorderColor), SystemColors.Window, 50f))
		{
			linearGradientBrush.Blend = mselectedInternalRectBlend;
			g.FillEllipse(linearGradientBrush, rect);
		}
		using LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(rect, Office2007ColorTable.RadioButtonAdvPushedInternalBorderColor, Color.FromArgb(225, Office2007ColorTable.RadioButtonAdvPushedBackColor), 60f);
		linearGradientBrush2.Blend = mnormalInternalRectBorderBlend;
		using Pen pen = new Pen(linearGradientBrush2);
		g.DrawEllipse(pen, rect);
	}

	private void DrawNormalCheckMark(Graphics g)
	{
		Rectangle rect = mrectBox;
		rect.Inflate(-3, -3);
		using (Pen pen = new Pen(Office2007ColorTable.RadioButtonAdvNormalInternalBorderColor))
		{
			g.DrawEllipse(pen, rect);
		}
		rect.Inflate(-1, -1);
		using (GraphicsPath path = GetCheckMarkPath(rect))
		{
			using PathGradientBrush pathGradientBrush = new PathGradientBrush(path);
			pathGradientBrush.CenterColor = Office2007ColorTable.RadioButtonAdvSelectedBackColor;
			pathGradientBrush.CenterPoint = new PointF((float)rect.X + 1f, rect.Y);
			pathGradientBrush.SurroundColors = new Color[1] { Office2007ColorTable.RadioButtonAdvCheckMarkNormalBottomColor };
			g.FillPath(pathGradientBrush, path);
		}
		using GraphicsPath path2 = GetCheckMarkBorderPath(rect);
		using Pen pen2 = new Pen(Office2007ColorTable.RadioButtonAdvCheckMarkBorderColor);
		g.DrawPath(pen2, path2);
	}

	private void DrawDisabledCheckMark(Graphics g)
	{
		Rectangle rect = mrectBox;
		rect.Inflate(-3, -3);
		using LinearGradientBrush brush = new LinearGradientBrush(rect, Color.FromArgb(175, Office2007ColorTable.RadioButtonAdvNormalInternalBorderColor), Color.FromArgb(55, Office2007ColorTable.RadioButtonAdvNormalInternalBorderColor), 60f);
		using (GraphicsPath path = GetCheckMarkPath(rect))
		{
			g.FillPath(brush, path);
		}
		using Pen pen = new Pen(brush);
		g.DrawEllipse(pen, rect);
		rect.Inflate(-1, -1);
		using GraphicsPath path2 = GetCheckMarkBorderPath(rect);
		g.DrawPath(pen, path2);
	}

	private void DrawSelectedCheckMark(Graphics g)
	{
		Rectangle rect = mrectBox;
		rect.Inflate(-3, -3);
		using (Pen pen = new Pen(Office2007ColorTable.RadioButtonAdvSelectedInternalBorderColor))
		{
			g.DrawEllipse(pen, rect);
		}
		rect.Inflate(-1, -1);
		using (GraphicsPath path = GetCheckMarkPath(rect))
		{
			using PathGradientBrush pathGradientBrush = new PathGradientBrush(path);
			pathGradientBrush.CenterColor = Color.White;
			pathGradientBrush.CenterPoint = new PointF((float)rect.X + 1f, (float)rect.Y + 1f);
			pathGradientBrush.SurroundColors = new Color[1] { Office2007ColorTable.RadioButtonAdvCheckMarkSelectedBottomColor };
			g.FillPath(pathGradientBrush, path);
		}
		using GraphicsPath path2 = GetCheckMarkBorderPath(rect);
		using Pen pen2 = new Pen(Office2007ColorTable.RadioButtonAdvCheckMarkBorderColor);
		g.DrawPath(pen2, path2);
	}

	private void DrawPushedCheckMark(Graphics g)
	{
		Rectangle rect = mrectBox;
		rect.Inflate(-3, -3);
		using (Pen pen = new Pen(Color.FromArgb(200, Office2007ColorTable.RadioButtonAdvPushedInternalBorderColor)))
		{
			g.DrawEllipse(pen, rect);
		}
		rect.Inflate(-1, -1);
		using (GraphicsPath path = GetCheckMarkPath(rect))
		{
			using PathGradientBrush pathGradientBrush = new PathGradientBrush(path);
			pathGradientBrush.CenterColor = Office2007ColorTable.RadioButtonAdvSelectedBackColor;
			pathGradientBrush.CenterPoint = new PointF((float)rect.X + 1f, rect.Y);
			pathGradientBrush.SurroundColors = new Color[1] { Office2007ColorTable.RadioButtonAdvCheckMarkPushedBottomColor };
			g.FillPath(pathGradientBrush, path);
		}
		using GraphicsPath path2 = GetCheckMarkBorderPath(rect);
		using Pen pen2 = new Pen(Office2007ColorTable.RadioButtonAdvCheckMarkBorderColor);
		g.DrawPath(pen2, path2);
	}

	private void DrawBorder(Graphics g, Color borderColor)
	{
		Rectangle rect = mrectBox;
		rect.Inflate(-1, -1);
		using Pen pen = new Pen(borderColor);
		g.DrawEllipse(pen, rect);
	}

	private GraphicsPath GetCheckMarkPath(Rectangle rect)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddEllipse(rect);
		graphicsPath.CloseFigure();
		return graphicsPath;
	}

	private GraphicsPath GetCheckMarkBorderPath(Rectangle rect)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(new Point(rect.Left + 1, rect.Top), new Point(rect.Right - 1, rect.Top));
		graphicsPath.AddLine(new Point(rect.Right - 1, rect.Top), new Point(rect.Right - 1, rect.Top + 1));
		graphicsPath.AddLine(new Point(rect.Right - 1, rect.Top + 1), new Point(rect.Right, rect.Top + 1));
		graphicsPath.AddLine(new Point(rect.Right, rect.Top + 1), new Point(rect.Right, rect.Bottom - 1));
		graphicsPath.AddLine(new Point(rect.Right, rect.Bottom - 1), new Point(rect.Right - 1, rect.Bottom));
		graphicsPath.AddLine(new Point(rect.Right - 1, rect.Bottom - 1), new Point(rect.Right - 1, rect.Bottom));
		graphicsPath.AddLine(new Point(rect.Right - 1, rect.Bottom), new Point(rect.Left + 1, rect.Bottom));
		graphicsPath.AddLine(new Point(rect.Left + 1, rect.Bottom), new Point(rect.Left + 1, rect.Bottom - 1));
		graphicsPath.AddLine(new Point(rect.Left + 1, rect.Bottom - 1), new Point(rect.Left, rect.Bottom - 1));
		graphicsPath.AddLine(new Point(rect.Left, rect.Bottom - 1), new Point(rect.Left, rect.Top + 1));
		graphicsPath.AddLine(new Point(rect.Left, rect.Top + 1), new Point(rect.Left + 1, rect.Top + 1));
		graphicsPath.AddLine(new Point(rect.Left + 1, rect.Top + 1), new Point(rect.Left + 1, rect.Top));
		return graphicsPath;
	}

	private void OnStyleChanged()
	{
		moffice2007ColorTable = Office2007Colors.GetColorTable(mcolorScheme);
		Invalidate();
	}

	private int DetermineState()
	{
		int num = 1;
		if (!base.Enabled)
		{
			if (mbchecked)
			{
				return 8;
			}
			return 4;
		}
		if (mmouseOver && mmouseDown)
		{
			if (mbchecked)
			{
				return 7;
			}
			return 3;
		}
		if (mmouseDown)
		{
			if (mbchecked)
			{
				return 5;
			}
			return 1;
		}
		if (mmouseOver)
		{
			if (mbchecked)
			{
				return 6;
			}
			return 2;
		}
		if (mbchecked)
		{
			return 5;
		}
		return 1;
	}

	private void FillAndSort(Control ctrlParent, ArrayList lstTabInexes)
	{
		foreach (Control control in ctrlParent.Controls)
		{
			if (control is RadioButtonAdv ctrl)
			{
				lstTabInexes.Add(new RBInfo(control.TabIndex, ctrl));
			}
		}
		lstTabInexes.Sort();
	}

	private void SetCheck(ArrayList lstTabInexes, int value)
	{
		int num = 0;
		for (int i = 0; i < lstTabInexes.Count; i++)
		{
			RBInfo rBInfo = lstTabInexes[i] as RBInfo;
			RadioButtonAdv control = rBInfo.Control;
			if (control.Enabled)
			{
				num++;
			}
			if (num == value)
			{
				control.Checked = true;
				break;
			}
		}
	}

	private int GetCheck(ArrayList lstTabInexes)
	{
		bool flag = false;
		int num = 0;
		for (int i = 0; i < lstTabInexes.Count; i++)
		{
			RBInfo rBInfo = lstTabInexes[i] as RBInfo;
			RadioButtonAdv control = rBInfo.Control;
			if (control.Enabled)
			{
				num++;
			}
			if (control.Checked)
			{
				flag = true;
				break;
			}
		}
		if (!flag)
		{
			num = 0;
		}
		return num;
	}
}
