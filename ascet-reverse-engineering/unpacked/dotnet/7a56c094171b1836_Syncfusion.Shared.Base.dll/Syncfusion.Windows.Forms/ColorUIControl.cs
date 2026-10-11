using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Localization;

namespace Syncfusion.Windows.Forms;

[ToolboxBitmap(typeof(ColorUIControl), "ToolboxIcons.ColorUIControl.bmp")]
[Description("Provides a standard interface for selecting colors.")]
public class ColorUIControl : Control
{
	public class ColorCollection : ICollection, IEnumerable
	{
		private Color[] m_colorArray;

		private Control m_control;

		public Color this[int index]
		{
			get
			{
				return m_colorArray[index];
			}
			set
			{
				if (m_colorArray[index] != value)
				{
					m_colorArray[index] = value;
					if (m_control != null)
					{
						m_control.Invalidate();
					}
				}
			}
		}

		public bool IsSynchronized => m_colorArray.IsSynchronized;

		public int Count => m_colorArray.Length;

		public object SyncRoot => m_colorArray.SyncRoot;

		internal ColorCollection(Color[] colorArray, Control control)
		{
			m_colorArray = colorArray;
			m_control = control;
		}

		public void CopyTo(Array array, int index)
		{
			m_colorArray.CopyTo(array, index);
		}

		public IEnumerator GetEnumerator()
		{
			return m_colorArray.GetEnumerator();
		}
	}

	[ToolboxItem(false)]
	private class ColorEditorTabControl : TabControl
	{
		protected override void OnGotFocus(EventArgs e)
		{
			TabPage selectedTab = base.SelectedTab;
			if (selectedTab != null && selectedTab.Controls.Count > 0)
			{
				selectedTab.Controls[0].Focus();
			}
		}
	}

	[ToolboxItem(false)]
	private class ColorEditorListBox : ListBox
	{
		protected override bool IsInputKey(Keys keyData)
		{
			if (keyData == Keys.Return)
			{
				return true;
			}
			return base.IsInputKey(keyData);
		}
	}

	private class ColorPalette : Control
	{
		private class ColorPaletteAccessibleObject : ControlAccessibleObject
		{
			private class ColorCellAccessibleObject : AccessibleObject
			{
				private Color color;

				private ColorPaletteAccessibleObject parent;

				private int cell;

				public override Rectangle Bounds
				{
					get
					{
						Point point = parent.ColorPalette.Get2DFrom1D(cell);
						Rectangle rect = default(Rectangle);
						parent.ColorPalette.FillRectWithCellBounds(point.X, point.Y, ref rect);
						NativeMethods.POINT pt = new NativeMethods.POINT(rect.X, rect.Y);
						NativeMethods.ClientToScreen(parent.ColorPalette.Handle, ref pt);
						return new Rectangle(pt.X, pt.Y, rect.Width, rect.Height);
					}
				}

				public override string Name => color.ToString();

				public override AccessibleObject Parent => parent;

				public override AccessibleRole Role => AccessibleRole.Cell;

				public override string Value => color.ToString();

				public ColorCellAccessibleObject(ColorPaletteAccessibleObject parent, Color color, int cell)
				{
					this.parent = parent;
					this.color = color;
					this.cell = cell;
				}
			}

			private ColorCellAccessibleObject[] cells;

			internal ColorPalette ColorPalette => (ColorPalette)base.Owner;

			public ColorPaletteAccessibleObject(ColorPalette owner)
				: base(owner)
			{
				cells = new ColorCellAccessibleObject[64];
			}

			public override AccessibleObject GetChild(int id)
			{
				if (id < 0 || id >= 64)
				{
					return null;
				}
				if (cells[id] == null)
				{
					cells[id] = new ColorCellAccessibleObject(this, ColorPalette.GetColorFromCell(id), id);
				}
				return cells[id];
			}

			public override int GetChildCount()
			{
				return 64;
			}

			public override AccessibleObject HitTest(int x, int y)
			{
				NativeMethods.POINT pt = new NativeMethods.POINT(x, y);
				NativeMethods.ScreenToClient(ColorPalette.Handle, ref pt);
				int cellFromLocationMouse = ColorPalette.GetCellFromLocationMouse(pt.X, pt.Y);
				if (cellFromLocationMouse != -1)
				{
					return GetChild(cellFromLocationMouse);
				}
				return base.HitTest(x, y);
			}
		}

		public const int CELLS_ACROSS = 8;

		public const int CELLS_DOWN = 8;

		public const int CELLS_CUSTOM = 16;

		public const int CELLS = 64;

		public const int CELL_SIZE = 16;

		public const int MARGIN = 8;

		private const int c_iBorderIndent = 4;

		private Color[] staticColors;

		private Color selectedColor;

		private Point focus;

		private Color[] customColors;

		private ColorUIControl colorUI;

		private static readonly int[] staticCells;

		private bool m_bStretchOnResize;

		public Color[] StandardColors => staticColors;

		public bool StretchOnResize
		{
			get
			{
				return m_bStretchOnResize;
			}
			set
			{
				if (m_bStretchOnResize != value)
				{
					m_bStretchOnResize = value;
					Invalidate();
				}
			}
		}

		public Color[] CustomColors => customColors;

		public Color SelectedColor
		{
			get
			{
				return selectedColor;
			}
			set
			{
				if (!value.Equals(selectedColor))
				{
					InvalidateSelection();
					selectedColor = value;
					InvalidateFocus();
					focus = GetCellFromColor(value);
					InvalidateSelection();
				}
			}
		}

		public event EventHandler Picked;

		static ColorPalette()
		{
			staticCells = new int[48]
			{
				16777215, 12632319, 12640511, 12648447, 12648384, 16777152, 16761024, 16761087, 14737632, 8421631,
				8438015, 8454143, 8454016, 16777088, 16744576, 16744703, 12632256, 255, 33023, 65535,
				65280, 16776960, 16711680, 16711935, 8421504, 192, 16576, 49344, 49152, 12632064,
				12582912, 12583104, 4210752, 128, 16512, 32896, 32768, 8421376, 8388608, 8388736,
				0, 64, 4210816, 16448, 16384, 4210688, 4194304, 4194368
			};
		}

		public ColorPalette(ColorUIControl colorUI, Color[] customColors)
		{
			focus = new Point(0, 0);
			this.colorUI = colorUI;
			SetStyle(ControlStyles.UserPaint | ControlStyles.Opaque | ControlStyles.DoubleBuffer, value: true);
			BackColor = SystemColors.Control;
			base.Size = new Size(202, 202);
			staticColors = new Color[48];
			for (int i = 0; i < staticCells.Length; i++)
			{
				ref Color reference = ref staticColors[i];
				reference = ColorTranslator.FromOle(staticCells[i]);
			}
			this.customColors = customColors;
		}

		protected override AccessibleObject CreateAccessibilityInstance()
		{
			return new ColorPaletteAccessibleObject(this);
		}

		private void CalculateMultiplier(ref double multiplierX, ref double multiplierY)
		{
			if (m_bStretchOnResize)
			{
				Rectangle bounds = base.Bounds;
				double num = 24.0;
				multiplierX = (double)bounds.Width / (num * 8.0);
				multiplierY = (double)bounds.Height / (num * 8.0);
			}
			else
			{
				multiplierX = 1.0;
				multiplierY = 1.0;
			}
		}

		private void FillRectWithCellBounds(int across, int down, ref Rectangle rect)
		{
			int num = 24;
			double multiplierX = 0.0;
			double multiplierY = 0.0;
			CalculateMultiplier(ref multiplierX, ref multiplierY);
			rect.X = (int)((double)(across * num + 4) * multiplierX);
			rect.Y = (int)((double)(down * num + 4) * multiplierY);
			rect.Width = (int)(16.0 * multiplierX);
			rect.Height = (int)(16.0 * multiplierY);
		}

		private int Get1DFrom2D(Point pt)
		{
			return Get1DFrom2D(pt.X, pt.Y);
		}

		private int Get1DFrom2D(int x, int y)
		{
			if (x == -1 || y == -1)
			{
				return -1;
			}
			return x + 8 * y;
		}

		internal Point Get2DFrom1D(int cell)
		{
			int num = cell % 8;
			int num2 = cell / 8;
			return new Point(num, num2);
		}

		private Point GetCell2DFromLocationMouse(int x, int y)
		{
			double multiplierX = 0.0;
			double multiplierY = 0.0;
			CalculateMultiplier(ref multiplierX, ref multiplierY);
			double num = 4.0 * multiplierX;
			double num2 = 4.0 * multiplierY;
			int num3 = 24;
			int num4 = (int)(((double)x + num) / multiplierX / (double)num3);
			int num5 = (int)(((double)y + num2) / multiplierY / (double)num3);
			if (num4 < 0 || num5 < 0 || num4 >= 8 || num5 >= 8)
			{
				return new Point(-1, -1);
			}
			if ((double)x + num - (double)(num3 * num4) * multiplierX < 8.0 * multiplierX || (double)y + num2 - (double)(num3 * num5) * multiplierY < 8.0 * multiplierY)
			{
				return new Point(-1, -1);
			}
			return new Point(num4, num5);
		}

		private Point GetCellFromColor(Color c)
		{
			for (int i = 0; i < 8; i++)
			{
				for (int j = 0; j < 8; j++)
				{
					if (GetColorFromCell(j, i).Equals(c))
					{
						return new Point(j, i);
					}
				}
			}
			return Point.Empty;
		}

		private int GetCellFromLocationMouse(int x, int y)
		{
			return Get1DFrom2D(GetCell2DFromLocationMouse(x, y));
		}

		private Color GetColorFromCell(int across, int down)
		{
			return GetColorFromCell(Get1DFrom2D(across, down));
		}

		private Color GetColorFromCell(int index)
		{
			if (index < 48)
			{
				return staticColors[index];
			}
			return customColors[index - 64 + 16];
		}

		private Color GetColorFromCellMouse(int x, int y)
		{
			return GetColorFromCell(GetCellFromLocationMouse(x, y));
		}

		private void InvalidateFocus()
		{
			for (int i = 0; i < 8; i++)
			{
				for (int j = 0; j < 8; j++)
				{
					if (focus.X == j && focus.Y == i)
					{
						Rectangle rect = default(Rectangle);
						FillRectWithCellBounds(j, i, ref rect);
						Invalidate(Rectangle.Inflate(rect, 5, 5));
					}
				}
			}
		}

		private void InvalidateSelection()
		{
			for (int i = 0; i < 8; i++)
			{
				for (int j = 0; j < 8; j++)
				{
					if (SelectedColor.Equals(GetColorFromCell(j, i)))
					{
						Rectangle rect = default(Rectangle);
						FillRectWithCellBounds(j, i, ref rect);
						Invalidate(Rectangle.Inflate(rect, 5, 5));
					}
				}
			}
		}

		protected override bool IsInputKey(Keys keyData)
		{
			switch (keyData)
			{
			case Keys.Return:
			case Keys.Left:
			case Keys.Up:
			case Keys.Right:
			case Keys.Down:
				return true;
			default:
				if (keyData == Keys.F2)
				{
					return false;
				}
				return base.IsInputKey(keyData);
			}
		}

		protected virtual void LaunchDialog(int customIndex)
		{
			Invalidate();
			ColorDialog colorDialog = new CustomColorDialog();
			DialogResult dialogResult = colorDialog.ShowDialog();
			if (dialogResult == DialogResult.OK)
			{
				ref Color reference = ref customColors[customIndex];
				reference = colorDialog.Color;
				SelectedColor = customColors[customIndex];
			}
			colorDialog.Dispose();
		}

		protected override void OnGotFocus(EventArgs e)
		{
			base.OnGotFocus(e);
			InvalidateFocus();
		}

		protected override void OnKeyDown(KeyEventArgs e)
		{
			base.OnKeyDown(e);
			switch (e.KeyCode)
			{
			case Keys.Return:
				SelectedColor = GetColorFromCell(focus.X, focus.Y);
				InvalidateFocus();
				OnPicked(EventArgs.Empty);
				break;
			case Keys.Space:
				SelectedColor = GetColorFromCell(focus.X, focus.Y);
				InvalidateFocus();
				break;
			case Keys.Left:
				InvalidateFocus();
				if (focus.X > 0)
				{
					focus.X -= 1;
				}
				InvalidateFocus();
				break;
			case Keys.Right:
				InvalidateFocus();
				if (focus.X < 7)
				{
					focus.X += 1;
				}
				InvalidateFocus();
				break;
			case Keys.Up:
				InvalidateFocus();
				if (focus.Y > 0)
				{
					focus.Y -= 1;
				}
				InvalidateFocus();
				break;
			case Keys.Down:
				InvalidateFocus();
				if (focus.Y < 7)
				{
					focus.Y += 1;
				}
				InvalidateFocus();
				break;
			}
		}

		protected override void OnLostFocus(EventArgs e)
		{
			base.OnLostFocus(e);
			InvalidateFocus();
		}

		protected override void OnMouseDown(MouseEventArgs me)
		{
			base.OnMouseDown(me);
			if (me.Button == MouseButtons.Left)
			{
				Point cell2DFromLocationMouse = GetCell2DFromLocationMouse(me.X, me.Y);
				if (cell2DFromLocationMouse.X != -1 && cell2DFromLocationMouse.Y != -1 && cell2DFromLocationMouse != focus)
				{
					InvalidateFocus();
					focus = cell2DFromLocationMouse;
					InvalidateFocus();
				}
			}
		}

		protected override void OnMouseMove(MouseEventArgs me)
		{
			base.OnMouseMove(me);
			if (me.Button == MouseButtons.Left && base.Bounds.Contains(me.X, me.Y))
			{
				Point cell2DFromLocationMouse = GetCell2DFromLocationMouse(me.X, me.Y);
				if (cell2DFromLocationMouse.X != -1 && cell2DFromLocationMouse.Y != -1 && cell2DFromLocationMouse != focus)
				{
					InvalidateFocus();
					focus = cell2DFromLocationMouse;
					InvalidateFocus();
				}
			}
		}

		protected override void OnMouseUp(MouseEventArgs me)
		{
			base.OnMouseUp(me);
			if (me.Button == MouseButtons.Left)
			{
				Point cell2DFromLocationMouse = GetCell2DFromLocationMouse(me.X, me.Y);
				if (cell2DFromLocationMouse.X != -1 && cell2DFromLocationMouse.Y != -1)
				{
					focus = cell2DFromLocationMouse;
					SelectedColor = GetColorFromCell(focus.X, focus.Y);
					InvalidateFocus();
					OnPicked(EventArgs.Empty);
				}
			}
			if (me.Button == MouseButtons.Right)
			{
				int cellFromLocationMouse = GetCellFromLocationMouse(me.X, me.Y);
				if (cellFromLocationMouse != -1 && cellFromLocationMouse >= 48 && cellFromLocationMouse < 64)
				{
					LaunchDialog(cellFromLocationMouse - 64 + 16);
				}
			}
		}

		protected override void OnPaint(PaintEventArgs pe)
		{
			Graphics graphics = pe.Graphics;
			graphics.FillRectangle(new SolidBrush(BackColor), base.ClientRectangle);
			Rectangle rect = default(Rectangle);
			bool flag = false;
			for (int i = 0; i < 8; i++)
			{
				for (int j = 0; j < 8; j++)
				{
					Color colorFromCell = GetColorFromCell(Get1DFrom2D(j, i));
					FillRectWithCellBounds(j, i, ref rect);
					if (colorFromCell.Equals(SelectedColor) && !flag)
					{
						ControlPaint.DrawBorder(graphics, Rectangle.Inflate(rect, 3, 3), SystemColors.ControlText, ButtonBorderStyle.Solid);
						flag = true;
					}
					if (focus.X == j && focus.Y == i && Focused)
					{
						ControlPaint.DrawFocusRectangle(graphics, Rectangle.Inflate(rect, 5, 5), SystemColors.ControlText, SystemColors.Control);
					}
					ControlPaint.DrawBorder(graphics, Rectangle.Inflate(rect, 2, 2), SystemColors.Control, 2, ButtonBorderStyle.Inset, SystemColors.Control, 2, ButtonBorderStyle.Inset, SystemColors.Control, 2, ButtonBorderStyle.Inset, SystemColors.Control, 2, ButtonBorderStyle.Inset);
					PaintValue(colorFromCell, graphics, rect);
				}
			}
			base.OnPaint(pe);
		}

		protected void OnPicked(EventArgs e)
		{
			if (this.Picked != null)
			{
				this.Picked(this, e);
			}
		}

		private void PaintValue(Color color, Graphics g, Rectangle rect)
		{
			g.FillRectangle(new SolidBrush(color), rect);
		}

		protected override bool ProcessDialogKey(Keys keyData)
		{
			if (keyData == Keys.F2)
			{
				int num = Get1DFrom2D(focus.X, focus.Y);
				if (num >= 48 && num < 64)
				{
					LaunchDialog(num - 64 + 16);
				}
				return true;
			}
			return base.ProcessDialogKey(keyData);
		}
	}

	[ToolboxItem(false)]
	private class CustomColorDialog : ColorDialog
	{
		private const int COLOR_HUE = 703;

		private const int COLOR_SAT = 704;

		private const int COLOR_LUM = 705;

		private const int COLOR_RED = 706;

		private const int COLOR_GREEN = 707;

		private const int COLOR_BLUE = 708;

		private const int COLOR_ADD = 712;

		private const int COLOR_MIX = 719;

		public const int WM_INITDIALOG = 272;

		public const int WM_COMMAND = 273;

		private IntPtr hInstance;

		protected override IntPtr Instance => hInstance;

		protected override int Options => 66;

		public CustomColorDialog()
		{
			Stream stream = null;
			if (CultureInfo.CurrentUICulture.Name == "en-US")
			{
				stream = typeof(CustomColorDialog).Module.Assembly.GetManifestResourceStream("Syncfusion.Windows.Forms.ColorPicker.colordlg.data");
			}
			else
			{
				try
				{
					Assembly satelliteAssembly = typeof(CustomColorDialog).Module.Assembly.GetSatelliteAssembly(CultureInfo.CurrentUICulture);
					if (satelliteAssembly != null)
					{
						stream = satelliteAssembly.GetManifestResourceStream("Syncfusion.Windows.Forms.ColorPicker.Resources.colordlg.data");
					}
				}
				catch (Exception)
				{
				}
			}
			if (stream == null)
			{
				stream = typeof(CustomColorDialog).Module.Assembly.GetManifestResourceStream("Syncfusion.Windows.Forms.ColorPicker.colordlg.data");
			}
			int num = (int)(stream.Length - stream.Position);
			byte[] array = new byte[num];
			stream.Read(array, 0, num);
			hInstance = Marshal.AllocHGlobal(num);
			Marshal.Copy(array, 0, hInstance, num);
		}

		protected override void Dispose(bool disposing)
		{
			if (hInstance != IntPtr.Zero)
			{
				Marshal.FreeHGlobal(hInstance);
				hInstance = IntPtr.Zero;
			}
			base.Dispose(disposing);
		}

		protected override IntPtr HookProc(IntPtr hwnd, int msg, IntPtr wParam, IntPtr lParam)
		{
			switch (msg)
			{
			case 272:
			{
				NativeMethods.SendDlgItemMessage(hwnd, 703, 211, (IntPtr)3, IntPtr.Zero);
				NativeMethods.SendDlgItemMessage(hwnd, 704, 211, (IntPtr)3, IntPtr.Zero);
				NativeMethods.SendDlgItemMessage(hwnd, 705, 211, (IntPtr)3, IntPtr.Zero);
				NativeMethods.SendDlgItemMessage(hwnd, 706, 211, (IntPtr)3, IntPtr.Zero);
				NativeMethods.SendDlgItemMessage(hwnd, 707, 211, (IntPtr)3, IntPtr.Zero);
				NativeMethods.SendDlgItemMessage(hwnd, 708, 211, (IntPtr)3, IntPtr.Zero);
				IntPtr dlgItem = NativeMethods.GetDlgItem(hwnd, 719);
				NativeMethods.EnableWindow(dlgItem, enable: false);
				NativeMethods.SetWindowPos(dlgItem, IntPtr.Zero, 0, 0, 0, 0, 128);
				dlgItem = NativeMethods.GetDlgItem(hwnd, 1);
				NativeMethods.EnableWindow(dlgItem, enable: false);
				NativeMethods.SetWindowPos(dlgItem, IntPtr.Zero, 0, 0, 0, 0, 128);
				base.Color = Color.Empty;
				break;
			}
			case 273:
				if (NativeMethods.LOWORD((int)wParam) == 712)
				{
					bool[] err = new bool[1];
					byte red = (byte)NativeMethods.GetDlgItemInt(hwnd, 706, err, signed: false);
					byte green = (byte)NativeMethods.GetDlgItemInt(hwnd, 707, err, signed: false);
					byte blue = (byte)NativeMethods.GetDlgItemInt(hwnd, 708, err, signed: false);
					base.Color = Color.FromArgb(red, green, blue);
					NativeMethods.PostMessage(hwnd, 273, (IntPtr)NativeMethods.MAKELONG(1, 0), NativeMethods.GetDlgItem(hwnd, 1));
				}
				break;
			}
			return base.HookProc(hwnd, msg, wParam, lParam);
		}
	}

	private class StandardColorComparer : IComparer
	{
		public int Compare(object x, object y)
		{
			Color color = (Color)x;
			Color color2 = (Color)y;
			if (color.A < color2.A)
			{
				return -1;
			}
			if (color.A > color2.A)
			{
				return 1;
			}
			if (color.GetHue() < color2.GetHue())
			{
				return -1;
			}
			if (color.GetHue() > color2.GetHue())
			{
				return 1;
			}
			if (color.GetSaturation() < color2.GetSaturation())
			{
				return -1;
			}
			if (color.GetSaturation() > color2.GetSaturation())
			{
				return 1;
			}
			if (color.GetBrightness() < color2.GetBrightness())
			{
				return -1;
			}
			if (color.GetBrightness() > color2.GetBrightness())
			{
				return 1;
			}
			return 0;
		}
	}

	private class SystemColorComparer : IComparer
	{
		public int Compare(object x, object y)
		{
			Color color = (Color)x;
			Color color2 = (Color)y;
			return string.Compare(color.Name, color2.Name, ignoreCase: false, CultureInfo.CurrentUICulture);
		}
	}

	private Color clrSelected = Color.Empty;

	private ColorEditorTabControl tabControl;

	private TabPage customTabPage;

	private TabPage standardTabPage;

	private TabPage systemTabPage;

	private string strCustomTab = SR.GetString("ColorEditorPaletteTab");

	private string strStandardTab = SR.GetString("ColorEditorStandardTab");

	private string strSystemTab = SR.GetString("ColorEditorSystemTab");

	private ListBox lbSystem;

	private ListBox lbStandard;

	private ColorPalette pal;

	private Color[] systemColorConstants;

	private Color[] standardColorConstants;

	private Color[] customColors;

	private bool commonHeightSet;

	private bool systemHeightSet;

	private ColorUISelectedGroup cuiSelectedGroup;

	private ColorUIGroups cuiGroups = ColorUIGroups.All;

	private BorderStyle borderStyle = BorderStyle.Fixed3D;

	private string m_sUserTabText = "User Colors";

	private TabPage m_userTabPage;

	private ColorPalette m_userColorPalette;

	private Color[] m_userCustomColors;

	private ColorCollection m_userCustomColorsCollection;

	private ColorCollection m_userColorsCollection;

	private bool m_bCustomColorsStretchOnResize;

	private bool m_bUserColorsStretchOnResize;

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Gets or sets enable stretch user colors panel on resize.")]
	public bool CustomColorsStretchOnResize
	{
		get
		{
			return m_bCustomColorsStretchOnResize;
		}
		set
		{
			if (m_bCustomColorsStretchOnResize != value)
			{
				m_bCustomColorsStretchOnResize = value;
				if (pal != null)
				{
					pal.StretchOnResize = value;
				}
			}
		}
	}

	[DefaultValue(false)]
	[Description("Gets or sets enable stretch user colors panel on resize.")]
	[Category("Appearance")]
	public bool UserColorsStretchOnResize
	{
		get
		{
			return m_bUserColorsStretchOnResize;
		}
		set
		{
			if (m_bUserColorsStretchOnResize != value)
			{
				m_bUserColorsStretchOnResize = value;
				if (m_userColorPalette != null)
				{
					m_userColorPalette.StretchOnResize = value;
				}
			}
		}
	}

	[Browsable(false)]
	[Description("Gets user custom colors. ColorGroups must be UserColors for use this property.")]
	public ColorCollection UserCustomColors
	{
		get
		{
			if (m_userCustomColors == null)
			{
				throw new ArgumentException("ColorGroups must be UserColors for use this property");
			}
			if (m_userCustomColorsCollection == null)
			{
				m_userCustomColorsCollection = new ColorCollection(m_userCustomColors, m_userColorPalette);
			}
			return m_userCustomColorsCollection;
		}
	}

	[Browsable(false)]
	[Description("Gets user colors. ColorGroups must be UserColors for use this property.")]
	public ColorCollection UserColors
	{
		get
		{
			if (m_userColorPalette == null)
			{
				throw new ArgumentException("ColorGroups must be UserColors for use this property");
			}
			if (m_userColorsCollection == null)
			{
				m_userColorsCollection = new ColorCollection(m_userColorPalette.StandardColors, m_userColorPalette);
			}
			return m_userColorsCollection;
		}
	}

	[DefaultValue("User Colors")]
	[Description("Gets or sets the text displayed on the user colors tab.")]
	public string UserTabName
	{
		get
		{
			return m_sUserTabText;
		}
		set
		{
			if (m_sUserTabText != value)
			{
				m_sUserTabText = value;
				if (m_userTabPage != null)
				{
					m_userTabPage.Text = value;
				}
			}
		}
	}

	[Description("Specifies the color tabpages to be displayed by the control.")]
	[DefaultValue(ColorUIGroups.All)]
	[Category("Color Selection")]
	public ColorUIGroups ColorGroups
	{
		get
		{
			return cuiGroups;
		}
		set
		{
			if (tabControl != null && cuiGroups != value)
			{
				cuiGroups = value;
				InitializeTabPages();
			}
			else
			{
				cuiGroups = value;
			}
		}
	}

	[Description("Makes the tab associated with this colorgroup the selected tab.")]
	[Category("Color Selection")]
	public ColorUISelectedGroup SelectedColorGroup
	{
		get
		{
			return cuiSelectedGroup;
		}
		set
		{
			if (cuiSelectedGroup == value)
			{
				return;
			}
			cuiSelectedGroup = value;
			if (value != ColorUISelectedGroup.None)
			{
				TabPage tabPageFromGroup = GetTabPageFromGroup(value);
				if (tabPageFromGroup == null)
				{
					throw new ArgumentException("The ColorGroups property is not set for this selectedgroup.", value.ToString());
				}
				tabControl.SelectedTab = tabPageFromGroup;
			}
		}
	}

	[Description("The text displayed on the custom colors tab.")]
	[Category("Appearance")]
	public string CustomTabName
	{
		get
		{
			return strCustomTab;
		}
		set
		{
			if (strCustomTab != value)
			{
				strCustomTab = value;
				if (customTabPage != null)
				{
					customTabPage.Text = value;
				}
			}
		}
	}

	[Description("The text displayed on the standard colors tab.")]
	[Category("Appearance")]
	public string StandardTabName
	{
		get
		{
			return strStandardTab;
		}
		set
		{
			if (strStandardTab != value)
			{
				strStandardTab = value;
				if (standardTabPage != null)
				{
					standardTabPage.Text = value;
				}
			}
		}
	}

	[Description("The text displayed on the system colors tab.")]
	[Category("Appearance")]
	public string SystemTabName
	{
		get
		{
			return strSystemTab;
		}
		set
		{
			if (strSystemTab != value)
			{
				strSystemTab = value;
				if (systemTabPage != null)
				{
					systemTabPage.Text = value;
				}
			}
		}
	}

	[Category("Color Selection")]
	[Description("Specifies the current selected color.")]
	public Color SelectedColor
	{
		get
		{
			return clrSelected;
		}
		set
		{
			if (clrSelected != value)
			{
				clrSelected = value;
				if (tabControl != null && tabControl.TabCount > 0)
				{
					SetColorSelection(value);
				}
			}
		}
	}

	[Description("Specifies the border style of the control.")]
	[Category("Appearance")]
	[DefaultValue(BorderStyle.Fixed3D)]
	public BorderStyle BorderStyle
	{
		get
		{
			return borderStyle;
		}
		set
		{
			if (borderStyle != value)
			{
				if (!Enum.IsDefined(typeof(BorderStyle), value))
				{
					throw new InvalidEnumArgumentException("value", (int)value, typeof(BorderStyle));
				}
				borderStyle = value;
				UpdateStyles();
			}
		}
	}

	protected override CreateParams CreateParams
	{
		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		get
		{
			CreateParams createParams = base.CreateParams;
			switch (borderStyle)
			{
			case BorderStyle.Fixed3D:
				createParams.ExStyle |= 512;
				break;
			case BorderStyle.FixedSingle:
				createParams.Style |= 8388608;
				break;
			}
			return createParams;
		}
	}

	private Color[] ColorValues
	{
		get
		{
			if (standardColorConstants == null)
			{
				standardColorConstants = GetConstants(typeof(Color));
			}
			return standardColorConstants;
		}
	}

	private Color[] CustomColors
	{
		get
		{
			if (customColors == null)
			{
				customColors = new Color[16];
				for (int i = 0; i < 16; i++)
				{
					ref Color reference = ref customColors[i];
					reference = Color.White;
				}
			}
			return customColors;
		}
		set
		{
			customColors = value;
			pal = null;
		}
	}

	private Color[] SystemColorValues
	{
		get
		{
			if (systemColorConstants == null)
			{
				systemColorConstants = GetConstants(typeof(SystemColors));
			}
			return systemColorConstants;
		}
	}

	[Description("The ColorSelected event occurs when a color is selected from a color palette.")]
	public event EventHandler ColorSelected;

	private bool ShouldSerializeSelectedColorGroup()
	{
		if (cuiSelectedGroup != ColorUISelectedGroup.None && tabControl != null && tabControl.TabCount > 0)
		{
			TabPage tabPage = tabControl.TabPages[tabControl.TabCount - 1];
			return tabPage != GetTabPageFromGroup(cuiSelectedGroup);
		}
		return cuiSelectedGroup != ColorUISelectedGroup.None;
	}

	public virtual void ResetSelectedColorGroup()
	{
		if (tabControl != null && tabControl.TabCount > 0)
		{
			TabPage tabPage = tabControl.TabPages[tabControl.TabCount - 1];
			if (tabPage == m_userTabPage)
			{
				SelectedColorGroup = ColorUISelectedGroup.UserColors;
			}
			if (tabPage == systemTabPage)
			{
				SelectedColorGroup = ColorUISelectedGroup.SystemColors;
			}
			else if (tabPage == standardTabPage)
			{
				SelectedColorGroup = ColorUISelectedGroup.StandardColors;
			}
			else
			{
				SelectedColorGroup = ColorUISelectedGroup.CustomColors;
			}
		}
		else
		{
			SelectedColorGroup = ColorUISelectedGroup.None;
		}
	}

	[DocumentationExclude]
	protected bool ShouldSerializeCustomTabName()
	{
		if (strCustomTab.Equals(SR.GetString("ColorEditorPaletteTab")))
		{
			return false;
		}
		return true;
	}

	public virtual void ResetCustomTabName()
	{
		CustomTabName = SR.GetString("ColorEditorPaletteTab");
	}

	[DocumentationExclude]
	protected bool ShouldSerializeStandardTabName()
	{
		if (strStandardTab.Equals(SR.GetString("ColorEditorStandardTab")))
		{
			return false;
		}
		return true;
	}

	public virtual void ResetStandardTabName()
	{
		StandardTabName = SR.GetString("ColorEditorStandardTab");
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSystemTabName()
	{
		if (strSystemTab.Equals(SR.GetString("ColorEditorSystemTab")))
		{
			return false;
		}
		return true;
	}

	public virtual void ResetSystemTabName()
	{
		SystemTabName = SR.GetString("ColorEditorSystemTab");
	}

	private TabPage GetTabPageFromGroup(ColorUISelectedGroup group)
	{
		return group switch
		{
			ColorUISelectedGroup.CustomColors => customTabPage, 
			ColorUISelectedGroup.StandardColors => standardTabPage, 
			ColorUISelectedGroup.SystemColors => systemTabPage, 
			ColorUISelectedGroup.UserColors => m_userTabPage, 
			_ => null, 
		};
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedColor()
	{
		if (clrSelected == Color.Empty)
		{
			return false;
		}
		return true;
	}

	public virtual void ResetSelectedColor()
	{
		clrSelected = Color.Empty;
	}

	public ColorUIControl()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(ColorUIControl));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		InitializeComponent();
		AdjustListBoxItemHeight();
		if (clrSelected != Color.Empty)
		{
			SetColorSelection(clrSelected);
		}
	}

	private void AdjustColorUIHeight()
	{
		if (tabControl.TabCount > 0)
		{
			TabPage tabPage = tabControl.TabPages[0];
			Size size = tabPage.Size;
			Rectangle clientRectangle = tabPage.ClientRectangle;
			int num = 0;
			tabControl.Size = new Size(size.Width + 2 * num, size.Height + 2 * num + clientRectangle.Height);
			base.Size = tabControl.Size;
		}
	}

	private void AdjustListBoxItemHeight()
	{
		if (lbSystem != null)
		{
			lbSystem.ItemHeight = Font.Height + 2;
		}
		if (lbStandard != null)
		{
			lbStandard.ItemHeight = Font.Height + 2;
		}
	}

	private Color GetBestColor(Color color)
	{
		Color[] colorValues = ColorValues;
		int num = color.ToArgb();
		for (int i = 0; i < colorValues.Length; i++)
		{
			if (colorValues[i].ToArgb() == num)
			{
				return colorValues[i];
			}
		}
		return color;
	}

	private Color[] GetConstants(Type enumType)
	{
		PropertyInfo[] properties = enumType.GetProperties();
		ArrayList arrayList = new ArrayList();
		foreach (PropertyInfo propertyInfo in properties)
		{
			if (propertyInfo.PropertyType == typeof(Color) && propertyInfo.GetGetMethod() != null)
			{
				arrayList.Add(propertyInfo.GetValue(null, null));
			}
		}
		return (Color[])arrayList.ToArray(typeof(Color));
	}

	private Control GetCurrentComponent()
	{
		if (tabControl.SelectedTab == systemTabPage)
		{
			return lbSystem;
		}
		if (tabControl.SelectedTab == standardTabPage)
		{
			return lbStandard;
		}
		return pal;
	}

	private void InitializeComponent()
	{
		this.tabControl = new Syncfusion.Windows.Forms.ColorUIControl.ColorEditorTabControl();
		this.InitializeTabPages();
		this.tabControl.SelectedIndexChanged += new System.EventHandler(OnSelectedTabChanged);
		this.tabControl.TabStop = false;
		this.tabControl.SelectedIndexChanged += new System.EventHandler(OnTabControlSelChange);
		this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
		this.tabControl.Resize += new System.EventHandler(OnTabControlResize);
		base.Controls.Add(this.tabControl);
	}

	private void InitializeTabPages()
	{
		if ((cuiGroups & ColorUIGroups.CustomColors) == 0 && customTabPage != null)
		{
			tabControl.TabPages.Remove(customTabPage);
			customTabPage.Controls.Remove(pal);
			pal.Dispose();
			pal = null;
			customTabPage.Dispose();
			customTabPage = null;
		}
		if ((cuiGroups & ColorUIGroups.StandardColors) == 0 && standardTabPage != null)
		{
			tabControl.TabPages.Remove(standardTabPage);
			standardTabPage.Controls.Remove(lbStandard);
			lbStandard.Dispose();
			lbStandard = null;
			standardTabPage.Dispose();
			standardTabPage = null;
		}
		if ((cuiGroups & ColorUIGroups.SystemColors) == 0 && systemTabPage != null)
		{
			tabControl.TabPages.Remove(systemTabPage);
			systemTabPage.Controls.Remove(lbSystem);
			lbSystem.Dispose();
			lbSystem = null;
			systemTabPage.Dispose();
			systemTabPage = null;
		}
		if ((cuiGroups & ColorUIGroups.UserColors) == 0 && m_userTabPage != null)
		{
			tabControl.TabPages.Remove(m_userTabPage);
			customTabPage.Controls.Remove(m_userColorPalette);
			m_userColorPalette.Dispose();
			m_userColorsCollection = null;
			m_userColorPalette = null;
			m_userTabPage.Dispose();
			m_userTabPage = null;
		}
		if (customTabPage == null && (cuiGroups & ColorUIGroups.CustomColors) != ColorUIGroups.None)
		{
			customTabPage = new TabPage(strCustomTab);
			tabControl.TabPages.Add(customTabPage);
			if (cuiSelectedGroup == ColorUISelectedGroup.None || cuiSelectedGroup == ColorUISelectedGroup.CustomColors)
			{
				tabControl.SelectedTab = customTabPage;
			}
			pal = new ColorPalette(this, CustomColors);
			pal.Dock = DockStyle.Fill;
			pal.StretchOnResize = CustomColorsStretchOnResize;
			pal.Picked += OnPalettePick;
			customTabPage.Controls.Add(pal);
		}
		if (standardTabPage == null && (cuiGroups & ColorUIGroups.StandardColors) != ColorUIGroups.None)
		{
			standardTabPage = new TabPage(strStandardTab);
			tabControl.TabPages.Add(standardTabPage);
			if (cuiSelectedGroup == ColorUISelectedGroup.None || cuiSelectedGroup == ColorUISelectedGroup.StandardColors)
			{
				tabControl.SelectedTab = standardTabPage;
			}
			lbStandard = new ColorEditorListBox();
			lbStandard.DrawMode = DrawMode.OwnerDrawFixed;
			lbStandard.BorderStyle = BorderStyle.FixedSingle;
			lbStandard.IntegralHeight = false;
			lbStandard.Sorted = false;
			lbStandard.Click += OnListClick;
			lbStandard.DrawItem += OnListDrawItem;
			lbStandard.KeyDown += OnListKeyDown;
			lbStandard.Dock = DockStyle.Fill;
			Array.Sort(ColorValues, new StandardColorComparer());
			lbStandard.Items.Clear();
			Color[] colorValues = ColorValues;
			for (int i = 0; i < colorValues.Length; i++)
			{
				lbStandard.Items.Add(colorValues[i]);
			}
			standardTabPage.Controls.Add(lbStandard);
		}
		if (systemTabPage == null && (cuiGroups & ColorUIGroups.SystemColors) != ColorUIGroups.None)
		{
			systemTabPage = new TabPage(strSystemTab);
			tabControl.TabPages.Add(systemTabPage);
			if (cuiSelectedGroup == ColorUISelectedGroup.None || cuiSelectedGroup == ColorUISelectedGroup.SystemColors)
			{
				tabControl.SelectedTab = systemTabPage;
			}
			lbSystem = new ColorEditorListBox();
			lbSystem.DrawMode = DrawMode.OwnerDrawFixed;
			lbSystem.BorderStyle = BorderStyle.FixedSingle;
			lbSystem.IntegralHeight = false;
			lbSystem.Sorted = false;
			lbSystem.Click += OnListClick;
			lbSystem.DrawItem += OnListDrawItem;
			lbSystem.KeyDown += OnListKeyDown;
			lbSystem.Dock = DockStyle.Fill;
			lbSystem.FontChanged += OnFontChanged;
			Array.Sort(SystemColorValues, new SystemColorComparer());
			lbSystem.Items.Clear();
			Color[] systemColorValues = SystemColorValues;
			for (int j = 0; j < systemColorValues.Length; j++)
			{
				lbSystem.Items.Add(systemColorValues[j]);
			}
			systemTabPage.Controls.Add(lbSystem);
		}
		if (m_userTabPage != null || (cuiGroups & ColorUIGroups.UserColors) == 0)
		{
			return;
		}
		m_userTabPage = new TabPage(m_sUserTabText);
		if (cuiSelectedGroup == ColorUISelectedGroup.UserColors)
		{
			tabControl.SelectedTab = m_userTabPage;
		}
		if (m_userCustomColors == null)
		{
			m_userCustomColors = new Color[16];
			for (int k = 0; k < m_userCustomColors.Length; k++)
			{
				ref Color reference = ref m_userCustomColors[k];
				reference = Color.White;
			}
		}
		m_userColorPalette = new ColorPalette(this, m_userCustomColors);
		m_userColorPalette.Dock = DockStyle.Fill;
		m_userColorPalette.StretchOnResize = UserColorsStretchOnResize;
		m_userColorPalette.Picked += OnPalettePick;
		m_userTabPage.Controls.Add(m_userColorPalette);
		tabControl.TabPages.Add(m_userTabPage);
	}

	private void OnSelectedTabChanged(object sender, EventArgs e)
	{
		TabPage selectedTab = tabControl.SelectedTab;
		if (selectedTab != null)
		{
			if (selectedTab.Equals(customTabPage))
			{
				cuiSelectedGroup = ColorUISelectedGroup.CustomColors;
			}
			else if (selectedTab.Equals(standardTabPage))
			{
				cuiSelectedGroup = ColorUISelectedGroup.StandardColors;
			}
			else if (selectedTab.Equals(systemTabPage))
			{
				cuiSelectedGroup = ColorUISelectedGroup.SystemColors;
			}
			else if (selectedTab.Equals(m_userTabPage))
			{
				cuiSelectedGroup = ColorUISelectedGroup.UserColors;
			}
			else
			{
				cuiSelectedGroup = ColorUISelectedGroup.None;
			}
		}
		else
		{
			cuiSelectedGroup = ColorUISelectedGroup.None;
		}
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		AdjustListBoxItemHeight();
		AdjustColorUIHeight();
	}

	private void OnFontChanged(object sender, EventArgs e)
	{
		systemHeightSet = false;
		commonHeightSet = false;
	}

	protected override void OnGotFocus(EventArgs e)
	{
		base.OnGotFocus(e);
		OnTabControlSelChange(this, EventArgs.Empty);
	}

	protected virtual void OnColorSelected(EventArgs arg)
	{
		if (this.ColorSelected != null)
		{
			this.ColorSelected(this, arg);
		}
	}

	private void OnListClick(object sender, EventArgs e)
	{
		ListBox listBox = (ListBox)sender;
		if (listBox.SelectedItem != null)
		{
			clrSelected = (Color)listBox.SelectedItem;
		}
		else
		{
			clrSelected = Color.Empty;
		}
		OnColorSelected(EventArgs.Empty);
	}

	private void OnListDrawItem(object sender, DrawItemEventArgs die)
	{
		if (die.Index != -1)
		{
			ListBox listBox = (ListBox)sender;
			object obj = listBox.Items[die.Index];
			Font font = Font;
			if (listBox == lbStandard && !commonHeightSet)
			{
				listBox.ItemHeight = listBox.Font.Height;
				commonHeightSet = true;
			}
			else if (listBox == lbSystem && !systemHeightSet)
			{
				listBox.ItemHeight = listBox.Font.Height;
				systemHeightSet = true;
			}
			Graphics graphics = die.Graphics;
			die.DrawBackground();
			Rectangle bounds = die.Bounds;
			bounds = die.Bounds;
			bounds = die.Bounds;
			PaintValue(obj, graphics, new Rectangle(bounds.X + 2, bounds.Y + 2, 22, bounds.Height - 4));
			bounds = die.Bounds;
			bounds = die.Bounds;
			bounds = die.Bounds;
			graphics.DrawRectangle(SystemPens.WindowText, new Rectangle(bounds.X + 2, bounds.Y + 2, 21, bounds.Height - 4 - 1));
			Brush brush = new SolidBrush(die.ForeColor);
			Color color = (Color)obj;
			bounds = die.Bounds;
			bounds = die.Bounds;
			graphics.DrawString(color.Name, font, brush, bounds.X + 26, bounds.Y);
			brush.Dispose();
		}
	}

	public virtual void PaintValue(PaintValueEventArgs e)
	{
		if (e.Value is Color)
		{
			Color color = (Color)e.Value;
			SolidBrush solidBrush = new SolidBrush(color);
			e.Graphics.FillRectangle(solidBrush, e.Bounds);
			solidBrush.Dispose();
		}
	}

	public void PaintValue(object value, Graphics canvas, Rectangle rectangle)
	{
		PaintValue(new PaintValueEventArgs(null, value, canvas, rectangle));
	}

	private void OnListKeyDown(object sender, KeyEventArgs ke)
	{
		if (ke.KeyCode == Keys.Return)
		{
			OnListClick(sender, EventArgs.Empty);
		}
	}

	private void OnPalettePick(object sender, EventArgs e)
	{
		ColorPalette colorPalette = (ColorPalette)sender;
		clrSelected = GetBestColor(colorPalette.SelectedColor);
		OnColorSelected(EventArgs.Empty);
	}

	private void OnTabControlResize(object sender, EventArgs e)
	{
		if (tabControl.TabCount > 0)
		{
			TabPage tabPage = tabControl.TabPages[0];
			Size size = tabPage.Size;
			Rectangle clientRectangle = tabPage.ClientRectangle;
			clientRectangle.Y = 0;
			clientRectangle.Height -= clientRectangle.Y;
			int num = 2;
			if (systemTabPage != null)
			{
				lbSystem.SetBounds(num, clientRectangle.Y + 2 * num, clientRectangle.Width - num, size.Height - clientRectangle.Height + 2 * num);
			}
			if (standardTabPage != null)
			{
				lbStandard.SetBounds(num, clientRectangle.Y + 2 * num, clientRectangle.Width - num, size.Height - clientRectangle.Height + 2 * num);
			}
		}
	}

	private void OnTabControlSelChange(object sender, EventArgs e)
	{
		TabPage selectedTab = tabControl.SelectedTab;
		if (selectedTab != null && selectedTab.Controls.Count > 0)
		{
			selectedTab.Controls[0].Focus();
		}
	}

	protected override bool ProcessDialogKey(Keys keyData)
	{
		if ((keyData & Keys.Alt) == 0 && (keyData & Keys.Control) == Keys.Control && (keyData & Keys.KeyCode) == Keys.Tab)
		{
			bool flag = (keyData & Keys.Shift) == 0;
			int selectedIndex = tabControl.SelectedIndex;
			if (selectedIndex != -1)
			{
				int count = tabControl.TabPages.Count;
				selectedIndex = ((!flag) ? ((selectedIndex + count - 1) % count) : ((selectedIndex + 1) % count));
				tabControl.SelectedTab = tabControl.TabPages[selectedIndex];
				return true;
			}
		}
		return base.ProcessDialogKey(keyData);
	}

	[DocumentationExclude]
	[Obsolete("Use void Start(Color clrselected) instead!")]
	public void Start(object obj, Color clrselected)
	{
		Start(clrselected);
	}

	public void Start(Color clrselected)
	{
		AdjustColorUIHeight();
		clrSelected = clrselected;
		if (clrselected != Color.Empty)
		{
			SetColorSelection(clrselected);
		}
	}

	[DocumentationExclude]
	public void End()
	{
		clrSelected = Color.Empty;
	}

	private void SetColorSelection(Color clrselected)
	{
		Color[] colorValues = ColorValues;
		TabPage tabPage = customTabPage;
		if (standardTabPage != null)
		{
			for (int i = 0; i < colorValues.Length; i++)
			{
				if (colorValues[i].Equals(clrselected))
				{
					lbStandard.SelectedItem = clrselected;
					tabPage = standardTabPage;
					break;
				}
			}
		}
		if (systemTabPage != null && tabPage == customTabPage)
		{
			colorValues = SystemColorValues;
			for (int j = 0; j < colorValues.Length; j++)
			{
				if (colorValues[j].Equals(clrselected))
				{
					lbSystem.SelectedItem = clrselected;
					tabPage = systemTabPage;
					break;
				}
			}
		}
		if (customTabPage != null)
		{
			colorValues = pal.StandardColors;
			for (int k = 0; k < colorValues.Length; k++)
			{
				if (colorValues[k].Equals(clrselected))
				{
					pal.SelectedColor = clrselected;
					tabPage = customTabPage;
					break;
				}
			}
		}
		if (tabPage != null)
		{
			tabControl.SelectedTab = tabPage;
		}
	}
}
