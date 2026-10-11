using System;
using System.ComponentModel;
using System.Drawing;
using System.Resources;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ColorDlgAdv : Office2007Form
{
	public struct HSL
	{
		public int H;

		public int S;

		public int L;

		public HSL(int h, int s, int l)
		{
			H = h;
			S = s;
			L = l;
		}
	}

	private TabControlAdv tabControl1;

	private HexagonColorControl hexagonColorControl1;

	private TabPageAdv standard;

	private TabPageAdv custom;

	private ButtonAdv buttonAdv1;

	private ButtonAdv buttonAdv2;

	private AutoLabel autoLabel1;

	private AutoLabel autoLabel2;

	private ColorPickerUIAdv m_colorPicker;

	private Color m_color = Color.Empty;

	private GradientColorControl gradientColorControl1;

	private AutoLabel autoLabel3;

	private AutoLabel autoLabel4;

	private AutoLabel autoLabel5;

	private AutoLabel autoLabel6;

	private ComboBoxAdv comboBox1;

	private NumericUpDownExt numericUpDown1;

	private NumericUpDownExt numericUpDown2;

	private NumericUpDownExt numericUpDown3;

	private AutoLabel autoLabel7;

	private GradientBar gradientBar1;

	private IContainer components;

	private bool m_bShouldChangeSelection = true;

	private double decreaseMultX;

	private double decreaseMultY;

	private double decreaseMultLum;

	private double increaseMultX;

	private double increaseMultY;

	private double increaseMultLum;

	public Color Color => m_color;

	public ColorDlgAdv(ColorPickerUIAdv colorPicker)
	{
		SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		InitializeComponent();
		m_colorPicker = colorPicker;
		if (m_colorPicker.UseOffice2007Style)
		{
			SetOffice2007Style();
		}
		LocalizeComponent();
	}

	private void LocalizeComponent()
	{
		standard.Text = SR.GetString("ColorEditorStandardTab");
		custom.Text = SR.GetString("ColorEditorCustomTab");
		autoLabel7.Text = SR.GetString("ColorEditorBlueLabel");
		autoLabel6.Text = SR.GetString("ColorEditorGreenLabel");
		autoLabel5.Text = SR.GetString("ColorEditorRedLabel");
		autoLabel4.Text = SR.GetString("ColorEditorColorModelLabel");
		autoLabel3.Text = SR.GetString("ColorEditorColorsLabel");
		buttonAdv1.Text = SR.GetString("ColorEditorOKButton");
		buttonAdv2.Text = SR.GetString("ColorEditorCancelButton");
		autoLabel1.Text = SR.GetString("ColorEditorNewLabel");
		autoLabel2.Text = SR.GetString("ColorEditorCurrentLabel");
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		Graphics graphics = e.Graphics;
		Rectangle rect = new Rectangle(buttonAdv1.Location.X + 10, autoLabel1.Location.Y + 20, 50, 40);
		if (m_colorPicker.SelectedItem != null)
		{
			graphics.FillRectangle(new SolidBrush(Color), new Rectangle(rect.Location, new Size(rect.Width, rect.Height / 2)));
			graphics.FillRectangle(new SolidBrush(m_colorPicker.SelectedItem.Color), new Rectangle(new Point(rect.X, rect.Y + 20), new Size(rect.Width, rect.Height / 2)));
		}
		else
		{
			graphics.FillRectangle(new SolidBrush(Color), rect);
		}
		graphics.DrawRectangle(new Pen(Color.FromArgb(99, 101, 99)), rect);
	}

	private void InitializeComponent()
	{
		new System.Resources.ResourceManager(typeof(Syncfusion.Windows.Forms.Tools.ColorDlgAdv));
		this.tabControl1 = new Syncfusion.Windows.Forms.Tools.TabControlAdv();
		this.standard = new Syncfusion.Windows.Forms.Tools.TabPageAdv();
		this.hexagonColorControl1 = new Syncfusion.Windows.Forms.Tools.HexagonColorControl();
		this.custom = new Syncfusion.Windows.Forms.Tools.TabPageAdv();
		this.gradientBar1 = new Syncfusion.Windows.Forms.Tools.GradientBar();
		this.autoLabel7 = new Syncfusion.Windows.Forms.Tools.AutoLabel();
		this.numericUpDown3 = new Syncfusion.Windows.Forms.Tools.NumericUpDownExt();
		this.numericUpDown2 = new Syncfusion.Windows.Forms.Tools.NumericUpDownExt();
		this.numericUpDown1 = new Syncfusion.Windows.Forms.Tools.NumericUpDownExt();
		this.comboBox1 = new Syncfusion.Windows.Forms.Tools.ComboBoxAdv();
		this.autoLabel6 = new Syncfusion.Windows.Forms.Tools.AutoLabel();
		this.autoLabel5 = new Syncfusion.Windows.Forms.Tools.AutoLabel();
		this.autoLabel4 = new Syncfusion.Windows.Forms.Tools.AutoLabel();
		this.autoLabel3 = new Syncfusion.Windows.Forms.Tools.AutoLabel();
		this.gradientColorControl1 = new Syncfusion.Windows.Forms.Tools.GradientColorControl();
		this.buttonAdv1 = new Syncfusion.Windows.Forms.ButtonAdv();
		this.buttonAdv2 = new Syncfusion.Windows.Forms.ButtonAdv();
		this.autoLabel1 = new Syncfusion.Windows.Forms.Tools.AutoLabel();
		this.autoLabel2 = new Syncfusion.Windows.Forms.Tools.AutoLabel();
		((System.ComponentModel.ISupportInitialize)this.tabControl1).BeginInit();
		this.tabControl1.SuspendLayout();
		this.standard.SuspendLayout();
		this.custom.SuspendLayout();
		((System.ComponentModel.ISupportInitialize)this.numericUpDown3).BeginInit();
		((System.ComponentModel.ISupportInitialize)this.numericUpDown2).BeginInit();
		((System.ComponentModel.ISupportInitialize)this.numericUpDown1).BeginInit();
		((System.ComponentModel.ISupportInitialize)this.comboBox1).BeginInit();
		base.SuspendLayout();
		this.tabControl1.ActiveTabFont = new System.Drawing.Font("Microsoft Sans Serif", 8.25f);
		this.tabControl1.Controls.Add(this.standard);
		this.tabControl1.Controls.Add(this.custom);
		this.tabControl1.Location = new System.Drawing.Point(8, 8);
		this.tabControl1.Name = "tabControl1";
		this.tabControl1.Size = new System.Drawing.Size(264, 312);
		this.tabControl1.TabGap = 10;
		this.tabControl1.TabIndex = 0;
		this.tabControl1.SelectedIndexChanged += new System.EventHandler(TabControl1_SelectedIndexChanged);
		this.standard.Controls.Add(this.hexagonColorControl1);
		this.standard.Location = new System.Drawing.Point(1, 32);
		this.standard.IsTransparent = true;
		this.standard.Name = "Standard";
		this.standard.Size = new System.Drawing.Size(261, 278);
		this.standard.TabIndex = 1;
		this.standard.Text = "Standard";
		this.standard.ThemesEnabled = false;
		this.hexagonColorControl1.BackColor = System.Drawing.Color.FromArgb(255, 251, 255);
		this.hexagonColorControl1.Dock = System.Windows.Forms.DockStyle.Fill;
		this.hexagonColorControl1.Location = new System.Drawing.Point(0, 0);
		this.hexagonColorControl1.Name = "hexagonColorControl1";
		this.hexagonColorControl1.SelectedColor = System.Drawing.Color.Empty;
		this.hexagonColorControl1.Size = new System.Drawing.Size(261, 278);
		this.hexagonColorControl1.TabIndex = 0;
		this.hexagonColorControl1.Picked += new System.EventHandler(HexagonColorControl1_Picked);
		this.custom.Controls.Add(this.gradientBar1);
		this.custom.Controls.Add(this.autoLabel7);
		this.custom.Controls.Add(this.numericUpDown3);
		this.custom.Controls.Add(this.numericUpDown2);
		this.custom.Controls.Add(this.numericUpDown1);
		this.custom.Controls.Add(this.comboBox1);
		this.custom.Controls.Add(this.autoLabel6);
		this.custom.Controls.Add(this.autoLabel5);
		this.custom.Controls.Add(this.autoLabel4);
		this.custom.Controls.Add(this.autoLabel3);
		this.custom.Controls.Add(this.gradientColorControl1);
		this.custom.Location = new System.Drawing.Point(1, 32);
		this.custom.Name = "Custom";
		this.custom.Size = new System.Drawing.Size(261, 278);
		this.custom.TabFont = new System.Drawing.Font("Microsoft Sans Serif", 8.25f);
		this.custom.TabIndex = 1;
		this.custom.Text = "Custom";
		this.custom.ThemesEnabled = false;
		this.gradientBar1.Location = new System.Drawing.Point(224, 24);
		this.gradientBar1.MaxValue = 255;
		this.gradientBar1.MiddleColor = System.Drawing.Color.Gray;
		this.gradientBar1.Name = "gradientBar1";
		this.gradientBar1.Position = 142;
		this.gradientBar1.Size = new System.Drawing.Size(20, 150);
		this.gradientBar1.TabIndex = 12;
		this.gradientBar1.PositionChanged += new System.EventHandler(GradientBar1_PositionChanged);
		this.autoLabel7.DX = 0;
		this.autoLabel7.DY = 0;
		this.autoLabel7.Location = new System.Drawing.Point(16, 256);
		this.autoLabel7.Name = "autoLabel7";
		this.autoLabel7.Size = new System.Drawing.Size(33, 16);
		this.autoLabel7.TabIndex = 11;
		this.autoLabel7.Text = "Blue";
		this.numericUpDown3.Location = new System.Drawing.Point(104, 256);
		this.numericUpDown3.Maximum = new decimal(new int[4] { 255, 0, 0, 0 });
		this.numericUpDown3.Name = "numericUpDown3";
		this.numericUpDown3.Size = new System.Drawing.Size(72, 20);
		this.numericUpDown3.TabIndex = 10;
		this.numericUpDown3.ValueChanged += new System.EventHandler(NumericUpDown1_ValueChanged);
		this.numericUpDown2.Location = new System.Drawing.Point(104, 232);
		this.numericUpDown2.Maximum = new decimal(new int[4] { 255, 0, 0, 0 });
		this.numericUpDown2.Name = "numericUpDown2";
		this.numericUpDown2.Size = new System.Drawing.Size(72, 20);
		this.numericUpDown2.TabIndex = 9;
		this.numericUpDown2.ValueChanged += new System.EventHandler(NumericUpDown1_ValueChanged);
		this.numericUpDown1.Location = new System.Drawing.Point(104, 208);
		this.numericUpDown1.Maximum = new decimal(new int[4] { 255, 0, 0, 0 });
		this.numericUpDown1.Name = "numericUpDown1";
		this.numericUpDown1.Size = new System.Drawing.Size(72, 20);
		this.numericUpDown1.TabIndex = 8;
		this.numericUpDown1.ValueChanged += new System.EventHandler(NumericUpDown1_ValueChanged);
		this.comboBox1.AllowNewText = false;
		this.comboBox1.IgnoreThemeBackground = true;
		this.comboBox1.Items.AddRange(new object[2] { "RGB", "HSL" });
		this.comboBox1.Location = new System.Drawing.Point(104, 184);
		this.comboBox1.Name = "comboBox1";
		this.comboBox1.Size = new System.Drawing.Size(72, 21);
		this.comboBox1.SuppressDropDownEvent = false;
		this.comboBox1.TabIndex = 7;
		this.comboBox1.Text = "RGB";
		this.comboBox1.SelectedIndexChanged += new System.EventHandler(ComboBox1_SelectedIndexChanged);
		this.autoLabel6.DX = 0;
		this.autoLabel6.DY = 0;
		this.autoLabel6.Location = new System.Drawing.Point(16, 232);
		this.autoLabel6.Name = "autoLabel6";
		this.autoLabel6.Size = new System.Drawing.Size(42, 16);
		this.autoLabel6.TabIndex = 5;
		this.autoLabel6.Text = "Green";
		this.autoLabel5.DX = 0;
		this.autoLabel5.DY = 0;
		this.autoLabel5.Location = new System.Drawing.Point(16, 208);
		this.autoLabel5.Name = "autoLabel5";
		this.autoLabel5.Size = new System.Drawing.Size(31, 16);
		this.autoLabel5.TabIndex = 4;
		this.autoLabel5.Text = "Red";
		this.autoLabel4.DX = 0;
		this.autoLabel4.DY = 0;
		this.autoLabel4.Location = new System.Drawing.Point(16, 184);
		this.autoLabel4.Name = "autoLabel4";
		this.autoLabel4.Size = new System.Drawing.Size(71, 16);
		this.autoLabel4.TabIndex = 2;
		this.autoLabel4.Text = "Color model";
		this.autoLabel3.DX = 0;
		this.autoLabel3.DY = 0;
		this.autoLabel3.Location = new System.Drawing.Point(8, 8);
		this.autoLabel3.Name = "autoLabel3";
		this.autoLabel3.Size = new System.Drawing.Size(43, 16);
		this.autoLabel3.TabIndex = 1;
		this.autoLabel3.Text = "Colors";
		this.gradientColorControl1.HStep = 7;
		this.gradientColorControl1.Location = new System.Drawing.Point(8, 24);
		this.gradientColorControl1.Name = "gradientColorControl1";
		this.gradientColorControl1.SelectedColor = System.Drawing.Color.Empty;
		this.gradientColorControl1.SelectedPoint = new System.Drawing.Point(0, 0);
		this.gradientColorControl1.Size = new System.Drawing.Size(210, 150);
		this.gradientColorControl1.TabIndex = 0;
		this.gradientColorControl1.VStep = 9;
		this.gradientColorControl1.Picked += new System.EventHandler(GradientColorControl1_Picked);
		this.buttonAdv1.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Classic;
		this.buttonAdv1.ComboEditBackColor = System.Drawing.Color.Empty;
		this.buttonAdv1.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.buttonAdv1.IsMouseDown = false;
		this.buttonAdv1.Location = new System.Drawing.Point(280, 8);
		this.buttonAdv1.Name = "buttonAdv1";
		this.buttonAdv1.TabIndex = 1;
		this.buttonAdv1.Text = "OK";
		this.buttonAdv1.UseVisualStyle = true;
		this.buttonAdv1.Click += new System.EventHandler(ButtonAdv1_Click);
		this.buttonAdv2.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Classic;
		this.buttonAdv2.ComboEditBackColor = System.Drawing.Color.Empty;
		this.buttonAdv2.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.buttonAdv2.IsMouseDown = false;
		this.buttonAdv2.Location = new System.Drawing.Point(280, 38);
		this.buttonAdv2.Name = "buttonAdv2";
		this.buttonAdv2.TabIndex = 2;
		this.buttonAdv2.Text = "Cancel";
		this.buttonAdv2.UseVisualStyle = true;
		this.buttonAdv2.Click += new System.EventHandler(ButtonAdv2_Click);
		this.autoLabel1.BackColor = System.Drawing.Color.Transparent;
		this.autoLabel1.DX = 0;
		this.autoLabel1.DY = 0;
		this.autoLabel1.Location = new System.Drawing.Point(304, 240);
		this.autoLabel1.Name = "autoLabel1";
		this.autoLabel1.Size = new System.Drawing.Size(27, 16);
		this.autoLabel1.TabIndex = 3;
		this.autoLabel1.Text = "New";
		this.autoLabel2.BackColor = System.Drawing.Color.Transparent;
		this.autoLabel2.DX = 0;
		this.autoLabel2.DY = 0;
		this.autoLabel2.Location = new System.Drawing.Point(296, 304);
		this.autoLabel2.Name = "autoLabel2";
		this.autoLabel2.Size = new System.Drawing.Size(42, 16);
		this.autoLabel2.TabIndex = 4;
		this.autoLabel2.Text = "Current";
		this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
		base.ClientSize = new System.Drawing.Size(360, 326);
		base.Controls.Add(this.autoLabel2);
		base.Controls.Add(this.autoLabel1);
		base.Controls.Add(this.buttonAdv2);
		base.Controls.Add(this.buttonAdv1);
		base.Controls.Add(this.tabControl1);
		this.DisableOffice2007Style = true;
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.Name = "ColorDlgAdv";
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "Color Dialog";
		base.Load += new System.EventHandler(ColorDlgAdv_Load);
		((System.ComponentModel.ISupportInitialize)this.tabControl1).EndInit();
		this.tabControl1.ResumeLayout(false);
		this.standard.ResumeLayout(false);
		this.custom.ResumeLayout(false);
		((System.ComponentModel.ISupportInitialize)this.numericUpDown3).EndInit();
		((System.ComponentModel.ISupportInitialize)this.numericUpDown2).EndInit();
		((System.ComponentModel.ISupportInitialize)this.numericUpDown1).EndInit();
		((System.ComponentModel.ISupportInitialize)this.comboBox1).EndInit();
		base.ResumeLayout(false);
	}

	private void ButtonAdv1_Click(object sender, EventArgs e)
	{
		base.DialogResult = DialogResult.OK;
	}

	private void ButtonAdv2_Click(object sender, EventArgs e)
	{
		base.DialogResult = DialogResult.Cancel;
	}

	private void HexagonColorControl1_Picked(object sender, EventArgs e)
	{
		m_color = hexagonColorControl1.SelectedColor;
		Invalidate();
	}

	private HSL ConvertRGBToHSL(int red, int green, int blue)
	{
		double num = 0.0;
		double num2 = (double)red / 255.0;
		double num3 = (double)green / 255.0;
		double num4 = (double)blue / 255.0;
		double num5 = Math.Max(Math.Max(num2, num3), num4);
		double num6 = Math.Min(Math.Min(num2, num3), num4);
		double num7 = num5 - num6;
		double num8 = (num5 + num6) / 2.0;
		double num9 = ((!(num8 > 0.0) || !(num8 <= 0.5)) ? (num7 / (2.0 - 2.0 * num8)) : (num7 / (2.0 * num8)));
		if (num7 == 0.0 || num8 == 0.0)
		{
			num = 0.0;
		}
		else if (num5 == num2)
		{
			num = ((!(num3 >= num4)) ? ((num3 - num4) / num7 * 60.0 + 360.0) : ((num3 - num4) / num7 * 60.0));
		}
		else if (num5 == num3)
		{
			num = (num4 - num2) / num7 * 60.0 + 120.0;
		}
		else if (num5 == num4)
		{
			num = (num2 - num3) / num7 * 60.0 + 240.0;
		}
		return new HSL((int)(num * 255.0 / 360.0), (int)(num9 * 255.0), (int)(num8 * 255.0));
	}

	private Color ConvertHSLToRGB(int hue, int sat, int lum)
	{
		double num = (double)hue / 255.0;
		double num2 = (double)sat / 255.0;
		double num3 = (double)lum / 255.0;
		double num4;
		double num5;
		double num6;
		if (num2 == 0.0)
		{
			num4 = num3;
			num5 = num3;
			num6 = num3;
		}
		else
		{
			double num7 = ((!(num3 < 0.5)) ? (num3 + num2 - num3 * num2) : (num3 * (1.0 + num2)));
			double n = 2.0 * num3 - num7;
			double hue2 = num + 1.0 / 3.0;
			double hue3 = num;
			double hue4 = num - 1.0 / 3.0;
			num4 = HueToRGB(n, num7, hue2);
			num5 = HueToRGB(n, num7, hue3);
			num6 = HueToRGB(n, num7, hue4);
		}
		return Color.FromArgb((int)(num4 * 255.0), (int)(num5 * 255.0), (int)(num6 * 255.0));
	}

	private double HueToRGB(double n1, double n2, double hue)
	{
		if (hue < 0.0)
		{
			hue += 1.0;
		}
		if (hue > 1.0)
		{
			hue -= 1.0;
		}
		if (hue < 1.0 / 6.0)
		{
			return n1 + (n2 - n1) * 6.0 * hue;
		}
		if (hue >= 1.0 / 6.0 && hue < 0.5)
		{
			return n2;
		}
		if (hue >= 0.5 && hue < 2.0 / 3.0)
		{
			return n1 + (n2 - n1) * (2.0 / 3.0 - hue) * 6.0;
		}
		return n1;
	}

	private void GradientColorControl1_Picked(object sender, EventArgs e)
	{
		if (m_bShouldChangeSelection)
		{
			gradientBar1.MiddleColor = gradientColorControl1.SelectedColor;
			Point selectedPoint = gradientColorControl1.SelectedPoint;
			int position = gradientBar1.Position;
			if ((double)selectedPoint.X > (double)gradientColorControl1.Width - increaseMultX)
			{
				selectedPoint.X = gradientColorControl1.Width;
			}
			if ((double)selectedPoint.Y > (double)gradientColorControl1.Height - increaseMultY)
			{
				selectedPoint.Y = gradientColorControl1.Height;
			}
			m_color = ConvertHSLToRGB((int)((double)selectedPoint.X * increaseMultX), 255 - (int)((double)selectedPoint.Y * increaseMultY), gradientBar1.MaxValue - (int)((double)position * increaseMultLum));
			if (comboBox1.SelectedIndex == 0)
			{
				m_bShouldChangeSelection = false;
				numericUpDown1.Value = m_color.R;
				numericUpDown2.Value = m_color.G;
				numericUpDown3.Value = m_color.B;
				m_bShouldChangeSelection = true;
			}
			else
			{
				int num = Convert.ToInt32((double)selectedPoint.X * increaseMultX);
				int num2 = Convert.ToInt32(255.0 - (double)selectedPoint.Y * increaseMultY);
				int num3 = Convert.ToInt32((double)gradientBar1.MaxValue - (double)position * increaseMultLum);
				m_bShouldChangeSelection = false;
				numericUpDown1.Value = num;
				numericUpDown2.Value = num2;
				numericUpDown3.Value = num3;
				m_bShouldChangeSelection = true;
			}
			Invalidate();
		}
	}

	private void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
	{
		Point selectedPoint = gradientColorControl1.SelectedPoint;
		int position = gradientBar1.Position;
		if ((double)selectedPoint.X > (double)gradientColorControl1.Width - increaseMultX)
		{
			selectedPoint.X = gradientColorControl1.Width;
		}
		if ((double)selectedPoint.Y > (double)gradientColorControl1.Height - increaseMultY)
		{
			selectedPoint.Y = gradientColorControl1.Height;
		}
		m_color = ConvertHSLToRGB((int)((double)selectedPoint.X * increaseMultX), 255 - (int)((double)selectedPoint.Y * increaseMultY), 255 - (int)((double)position * increaseMultLum));
		if (comboBox1.SelectedIndex == 0)
		{
			autoLabel5.Text = SR.GetString("ColorEditorRedLabel");
			autoLabel6.Text = SR.GetString("ColorEditorGreenLabel");
			autoLabel7.Text = SR.GetString("ColorEditorBlueLabel");
			m_bShouldChangeSelection = false;
			numericUpDown1.Value = m_color.R;
			numericUpDown2.Value = m_color.G;
			numericUpDown3.Value = m_color.B;
			m_bShouldChangeSelection = true;
		}
		else
		{
			autoLabel5.Text = SR.GetString("ColorEditorHueLabel");
			autoLabel6.Text = SR.GetString("ColorEditorSatLabel");
			autoLabel7.Text = SR.GetString("ColorEditorLumLabel");
			int num = Convert.ToInt32((double)selectedPoint.X * increaseMultX);
			int num2 = 255 - Convert.ToInt32((double)selectedPoint.Y * increaseMultY);
			m_bShouldChangeSelection = false;
			numericUpDown1.Value = num;
			numericUpDown2.Value = num2;
			numericUpDown3.Value = (decimal)((double)gradientBar1.MaxValue - (double)gradientBar1.Position * increaseMultLum);
			m_bShouldChangeSelection = true;
		}
	}

	private void NumericUpDown1_ValueChanged(object sender, EventArgs e)
	{
		if (m_bShouldChangeSelection)
		{
			if (comboBox1.SelectedIndex == 0)
			{
				HSL hSL = ConvertRGBToHSL((int)numericUpDown1.Value, (int)numericUpDown2.Value, (int)numericUpDown3.Value);
				Point newPoint = new Point((int)((double)hSL.H * decreaseMultX), gradientBar1.BitmapHeight - (int)((double)hSL.S * decreaseMultY - 8.0));
				int position = (int)((double)(255 - hSL.L) * decreaseMultLum);
				m_color = Color.FromArgb((int)numericUpDown1.Value, (int)numericUpDown2.Value, (int)numericUpDown3.Value);
				gradientBar1.MiddleColor = gradientColorControl1.SelectedColor;
				m_bShouldChangeSelection = false;
				gradientColorControl1.ChangeSelection(newPoint);
				gradientBar1.ChangePosition(position);
				m_bShouldChangeSelection = true;
			}
			else
			{
				int num = (int)((double)(int)numericUpDown1.Value * decreaseMultX);
				int num2 = gradientColorControl1.Height - (int)((double)(int)numericUpDown2.Value * decreaseMultY);
				int num3 = (int)((double)(255m - numericUpDown3.Value) * decreaseMultLum);
				gradientColorControl1.ChangeSelection(new Point(num, num2));
				gradientBar1.ChangePosition(num3 + 3);
			}
			Invalidate();
		}
	}

	private void GradientBar1_PositionChanged(object sender, EventArgs e)
	{
		if (m_bShouldChangeSelection)
		{
			Point selectedPoint = gradientColorControl1.SelectedPoint;
			int position = gradientBar1.Position;
			if ((double)selectedPoint.X > (double)gradientColorControl1.Width - increaseMultX)
			{
				selectedPoint.X = gradientColorControl1.Width;
			}
			if ((double)selectedPoint.Y > (double)gradientColorControl1.Height - increaseMultY)
			{
				selectedPoint.Y = gradientColorControl1.Height;
			}
			m_color = ConvertHSLToRGB((int)((double)selectedPoint.X * increaseMultX), 255 - (int)((double)selectedPoint.Y * increaseMultY), gradientBar1.MaxValue - (int)((double)position * increaseMultLum));
			if (comboBox1.SelectedIndex == 0)
			{
				m_bShouldChangeSelection = false;
				numericUpDown1.Value = m_color.R;
				numericUpDown2.Value = m_color.G;
				numericUpDown3.Value = m_color.B;
				m_bShouldChangeSelection = true;
			}
			else
			{
				m_bShouldChangeSelection = false;
				numericUpDown3.Value = (decimal)((double)(gradientBar1.BitmapHeight - position) * increaseMultLum);
				m_bShouldChangeSelection = true;
				m_color = ConvertHSLToRGB((int)numericUpDown1.Value, (int)numericUpDown2.Value, (int)numericUpDown3.Value);
			}
			Invalidate();
		}
	}

	private void ColorDlgAdv_Load(object sender, EventArgs e)
	{
		CalcMultipliers();
		tabControl1.SelectedIndex = m_colorPicker.SelectedTabIndex;
		gradientBar1.MiddleColor = Color.Red;
		if (m_colorPicker.SelectedItem == null)
		{
			return;
		}
		m_color = m_colorPicker.SelectedItem.Color;
		if (tabControl1.SelectedIndex == 0)
		{
			foreach (ColorCell item in hexagonColorControl1.Items)
			{
				if (m_colorPicker.SelectedItem.Color == item.Color)
				{
					hexagonColorControl1.ChangeSelection(item.Index);
					break;
				}
			}
			return;
		}
		Color color = m_colorPicker.SelectedItem.Color;
		if (comboBox1.SelectedIndex == 0)
		{
			numericUpDown1.Value = color.R;
			numericUpDown2.Value = color.G;
			numericUpDown3.Value = color.B;
		}
		else
		{
			HSL hSL = ConvertRGBToHSL(color.R, color.G, color.B);
			Point newPoint = new Point((int)((double)hSL.H * decreaseMultX), gradientBar1.BitmapHeight - (int)((double)hSL.S * decreaseMultY - 8.0));
			int position = (int)((double)(255 - hSL.L) * decreaseMultLum);
			gradientColorControl1.ChangeSelection(newPoint);
			gradientBar1.ChangePosition(position);
		}
		gradientBar1.MiddleColor = color;
	}

	private void SetOffice2007Style()
	{
		Office2007Theme office2007Theme = m_colorPicker.Office2007Theme;
		Office2007Colors colorTable = Office2007Colors.GetColorTable(office2007Theme);
		Color formBackground = colorTable.FormBackground;
		DisableOffice2007Style = false;
		base.ColorScheme = office2007Theme;
		base.UseOffice2007SchemeBackColor = true;
		ApplyOffice2007Style(this, office2007Theme);
		tabControl1.BackColor = formBackground;
		tabControl1.TabPanelBackColor = formBackground;
	}

	private void ApplyOffice2007Style(Control ctl, Office2007Theme styleColor)
	{
		foreach (Control control in ctl.Controls)
		{
			if (control is ISupportOffice2007Theme supportOffice2007Theme)
			{
				supportOffice2007Theme.EnableOffice2007Style();
				supportOffice2007Theme.Office2007ColorTheme = styleColor;
			}
			if (control is Label label)
			{
				label.ForeColor = ((base.ColorScheme == Office2007Theme.Black) ? Color.White : Color.Black);
			}
			ApplyOffice2007Style(control, styleColor);
		}
	}

	private void TabControl1_SelectedIndexChanged(object sender, EventArgs e)
	{
		if (comboBox1.SelectedIndex == -1)
		{
			comboBox1.SelectedIndex = 0;
		}
		if (tabControl1.SelectedIndex == 0 && gradientColorControl1.SelectedColor != Color.Empty)
		{
			hexagonColorControl1.SelectedCell = null;
			hexagonColorControl1.Invalidate();
			Color color = Color.FromArgb((int)numericUpDown1.Value, (int)numericUpDown2.Value, (int)numericUpDown3.Value);
			foreach (ColorCell item in hexagonColorControl1.Items)
			{
				if (color == item.Color)
				{
					hexagonColorControl1.ChangeSelection(item.Index);
					break;
				}
			}
		}
		else if (tabControl1.SelectedIndex == 1 && (hexagonColorControl1.SelectedCell != null || m_colorPicker.SelectedItem != null || m_color != Color.FromArgb(255, 0, 0, 0)))
		{
			Color middleColor = Color.Empty;
			if (hexagonColorControl1.SelectedCell != null)
			{
				middleColor = hexagonColorControl1.SelectedCell.Color;
			}
			else if (m_color != Color.Empty)
			{
				middleColor = m_color;
			}
			else if (m_colorPicker.SelectedItem != null)
			{
				middleColor = m_colorPicker.SelectedItem.Color;
			}
			HSL hSL = ConvertRGBToHSL(middleColor.R, middleColor.G, middleColor.B);
			Point newPoint = new Point((int)((double)hSL.H * decreaseMultX), gradientBar1.BitmapHeight - (int)((double)hSL.S * decreaseMultY - 8.0));
			int position = (int)((double)(255 - hSL.L) * decreaseMultLum);
			if (comboBox1.SelectedIndex == 0)
			{
				numericUpDown1.Value = middleColor.R;
				numericUpDown2.Value = middleColor.G;
				numericUpDown3.Value = middleColor.B;
			}
			else
			{
				gradientColorControl1.ChangeSelection(newPoint);
				gradientBar1.ChangePosition(position);
			}
			gradientBar1.MiddleColor = middleColor;
		}
		m_colorPicker.SelectedTabIndex = tabControl1.SelectedIndex;
	}

	private void CalcMultipliers()
	{
		Rectangle bounds = gradientColorControl1.Bounds;
		decreaseMultX = (double)bounds.Width / 255.0;
		decreaseMultY = (double)bounds.Height / 255.0;
		decreaseMultLum = (double)gradientBar1.BitmapHeight / 255.0;
		increaseMultX = 255.0 / (double)bounds.Width;
		increaseMultY = 255.0 / (double)bounds.Height;
		increaseMultLum = 255.0 / (double)gradientBar1.BitmapHeight;
	}
}
