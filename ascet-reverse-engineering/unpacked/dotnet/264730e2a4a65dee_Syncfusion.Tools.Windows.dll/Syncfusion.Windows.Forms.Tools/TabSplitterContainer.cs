using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(TabSplitterContainer), "ToolboxIcons.TabSplitterContainer.bmp")]
[Designer(typeof(TabSplitterContainerDesigner))]
public class TabSplitterContainer : Control
{
	private class TabSplitter : Control
	{
		private class LayoutInfo
		{
			private TabSplitter m_splitter;

			private ArrayList m_primaryBounds = new ArrayList();

			private ArrayList m_secondaryBounds = new ArrayList();

			private Rectangle[] m_rcButtons = new Rectangle[4];

			private Rectangle m_gripBounds;

			public Rectangle GripBounds => m_gripBounds;

			public LayoutInfo(TabSplitter splitter)
			{
				m_splitter = splitter;
			}

			public void PerformLayout()
			{
				Clear();
				Rectangle rc = m_splitter.ClientRectangle;
				if (rc.Width > 0 && rc.Height > 0)
				{
					if (m_splitter.Orientation == Orientation.Horizontal)
					{
						PerformLayoutHorizontal(ref rc);
					}
					else
					{
						PerformLayoutVertical(ref rc);
					}
				}
			}

			public int GetButtonID(int x, int y)
			{
				for (int i = 0; i < 4; i++)
				{
					if (m_rcButtons[i].Contains(x, y))
					{
						return i;
					}
				}
				return 4;
			}

			public TabSplitterPage GetPage(int x, int y)
			{
				if (m_splitter.Collapsed)
				{
					for (int num = m_secondaryBounds.Count - 1; num >= 0; num--)
					{
						if (((Rectangle)m_secondaryBounds[num]).Contains(x, y))
						{
							return m_splitter.SecondaryItemsInternal[num];
						}
					}
				}
				else
				{
					for (int i = 0; i < m_secondaryBounds.Count; i++)
					{
						if (((Rectangle)m_secondaryBounds[i]).Contains(x, y))
						{
							return m_splitter.SecondaryItemsInternal[i];
						}
					}
				}
				for (int num2 = m_primaryBounds.Count - 1; num2 >= 0; num2--)
				{
					if (((Rectangle)m_primaryBounds[num2]).Contains(x, y))
					{
						return m_splitter.PrimaryItemsInternal[num2];
					}
				}
				return null;
			}

			public Rectangle GetButtonRect(int buttonID)
			{
				return m_rcButtons[buttonID];
			}

			public Rectangle GetPrimaryTabRect(int tabID)
			{
				if (tabID >= 0 && tabID < m_primaryBounds.Count)
				{
					return (Rectangle)m_primaryBounds[tabID];
				}
				return Rectangle.Empty;
			}

			public Rectangle GetSecondaryTabRect(int tabID)
			{
				if (tabID >= 0 && tabID < m_secondaryBounds.Count)
				{
					return (Rectangle)m_secondaryBounds[tabID];
				}
				return Rectangle.Empty;
			}

			private void Clear()
			{
				m_primaryBounds.Clear();
				m_secondaryBounds.Clear();
				for (int i = 0; i < 4; i++)
				{
					ref Rectangle reference = ref m_rcButtons[i];
					reference = Rectangle.Empty;
				}
			}

			private void PerformLayoutHorizontal(ref Rectangle rc)
			{
				using Bitmap image = new Bitmap(1, 1);
				using Graphics graphics = Graphics.FromImage(image);
				int num = rc.X + 8;
				int num2 = rc.Y;
				int num3 = rc.Height - 4;
				Size buttonSize = m_splitter.ButtonSize;
				foreach (TabSplitterPage item in m_splitter.PrimaryItemsInternal)
				{
					int num4 = (int)graphics.MeasureString(item.Text, m_splitter.Font).Width + 1;
					Rectangle layoutRect = GetLayoutRect(num, num2, num4 + 16 + 4 + 18, num3);
					if (rc.IntersectsWith(layoutRect))
					{
						m_primaryBounds.Add(layoutRect);
						num += layoutRect.Width - 10;
						continue;
					}
					break;
				}
				if (!m_splitter.Collapsed)
				{
					num += 10;
					Rectangle layoutRect2 = GetLayoutRect(num, rc.Y + (rc.Height - buttonSize.Height) / 2, buttonSize.Width, buttonSize.Height);
					if (rc.IntersectsWith(layoutRect2))
					{
						m_rcButtons[3] = layoutRect2;
						num += layoutRect2.Width;
					}
					num2 += 3;
					num3++;
				}
				foreach (TabSplitterPage item2 in m_splitter.SecondaryItemsInternal)
				{
					int num5 = (int)graphics.MeasureString(item2.Text, m_splitter.Font).Width + 1;
					Rectangle layoutRect3 = GetLayoutRect(num, num2, num5 + 16 + 4 + 18, num3);
					if (rc.IntersectsWith(layoutRect3))
					{
						m_secondaryBounds.Add(layoutRect3);
						num += layoutRect3.Width - 10;
						continue;
					}
					break;
				}
				num += 10;
				int num6 = num + 1;
				int num7 = num6 + 50;
				int num8 = rc.Right - 3 * buttonSize.Width - 1;
				int y = rc.Y + (rc.Height - buttonSize.Height) / 2;
				if (num8 <= num7)
				{
					num8 = num7 + 1;
				}
				else
				{
					num6 += (num8 - num7) / 2;
				}
				m_gripBounds = GetLayoutRect(num6, rc.Top + (rc.Height - 5) / 2, 50, 5);
				for (int i = 0; i <= 2; i++)
				{
					ref Rectangle reference = ref m_rcButtons[i];
					reference = GetLayoutRect(num8, y, buttonSize.Width, buttonSize.Height);
					num8 += buttonSize.Width;
				}
			}

			private void PerformLayoutVertical(ref Rectangle rc)
			{
				int num = rc.X;
				int num2 = rc.Y + 8;
				int num3 = rc.Width - 4;
				Size buttonSize = m_splitter.ButtonSize;
				bool flag = m_splitter.RightToLeft == RightToLeft.Yes;
				if (flag)
				{
					num3++;
				}
				for (int i = 0; i < m_splitter.PrimaryItemsInternal.Count; i++)
				{
					Rectangle layoutRect = GetLayoutRect(num, num2, num3, 38);
					if (!rc.IntersectsWith(layoutRect))
					{
						break;
					}
					m_primaryBounds.Add(layoutRect);
					num2 += layoutRect.Height - 10;
				}
				if (!m_splitter.Collapsed)
				{
					num2 += 10;
					Rectangle layoutRect2 = GetLayoutRect(rc.X + (rc.Width - buttonSize.Width) / 2, num2, buttonSize.Width, buttonSize.Height);
					if (rc.IntersectsWith(layoutRect2))
					{
						m_rcButtons[3] = layoutRect2;
						num2 += layoutRect2.Height;
					}
					num += 4;
					if (flag)
					{
						num3--;
					}
					else
					{
						num--;
						num3++;
					}
				}
				for (int j = 0; j < m_splitter.SecondaryItemsInternal.Count; j++)
				{
					Rectangle layoutRect3 = GetLayoutRect(num, num2, num3, 38);
					if (!rc.IntersectsWith(layoutRect3))
					{
						break;
					}
					m_secondaryBounds.Add(layoutRect3);
					num2 += layoutRect3.Height - 10;
				}
				num2 += 10;
				int num4 = num2 + 1;
				int num5 = num4 + 50;
				int x = rc.X + (rc.Width - buttonSize.Width) / 2;
				int num6 = rc.Bottom - 3 * buttonSize.Height - 1;
				if (num6 <= num5)
				{
					num6 = num5 + 1;
				}
				else
				{
					num4 += (num6 - num5) / 2;
				}
				m_gripBounds = GetLayoutRect(rc.Left + (rc.Width - 5) / 2, num4, 5, 50);
				for (int k = 0; k <= 2; k++)
				{
					ref Rectangle reference = ref m_rcButtons[k];
					reference = GetLayoutRect(x, num6, buttonSize.Width, buttonSize.Height);
					num6 += buttonSize.Height;
				}
			}

			private Rectangle GetLayoutRect(int x, int y, int width, int height)
			{
				Rectangle result = new Rectangle(x, y, width, height);
				if (m_splitter.RightToLeft == RightToLeft.Yes)
				{
					result.X = m_splitter.ClientSize.Width - x - width;
				}
				return result;
			}
		}

		private const int MIN_HEIGHT = 20;

		private const int BAR_THICKNESS = 3;

		private const int GRIP_WIDTH = 50;

		private const int GRIP_HEIGHT = 5;

		private const int LEFT_PADDING = 8;

		private const int IMAGE_PADDING = 2;

		private const int TAB_IMAGE_SIZE = 16;

		private const int TAB_BEVEL_SIZE = 18;

		private const int TAB_OVERLAP_SIZE = 10;

		private const int TAB_MARGIN = 4;

		private const int TAB_PADDING = 2;

		private const int BT_VERTICAL = 0;

		private const int BT_HORIZONTAL = 1;

		private const int BT_COLLAPSED = 2;

		private const int BT_SWAP = 3;

		private const int BT_NONE = 4;

		private const int BS_PATTERN = 3;

		private const int PATINVERT = 5898313;

		private static readonly IntPtr WVR_REDRAW;

		private TabSplitterContainer m_owner;

		private int m_splitterHeight = -1;

		private double m_relativePos = 0.5;

		private double m_prevRelativePos = 0.5;

		private Orientation m_orientation;

		private bool m_bMoving;

		private Point m_pLastMouseDown = Point.Empty;

		private Rectangle m_rcSplitBar = Rectangle.Empty;

		private LayoutInfo m_layoutData;

		private int m_selectedButton = 4;

		private int m_pressedButton = 4;

		private TabSplitterPage m_pressedPanel;

		private ToolTip m_tooltip;

		private static short[] s_pattern;

		private static ImageList m_buttons;

		private static Blend m_blend;

		private static Color s_selectedButtonBackground;

		private static Color s_pressedButtonBackground;

		private static Color s_checkedButtonBackground;

		private static Color s_normalTabGradientBegin;

		private static Color s_normalTabGradientEnd;

		private static Color s_selectedTabBackground;

		public int Position
		{
			get
			{
				if (Orientation == Orientation.Horizontal)
				{
					return base.Top;
				}
				return base.Left;
			}
			set
			{
				if (Orientation == Orientation.Horizontal)
				{
					SetBounds(0, value, 0, 0, BoundsSpecified.Y);
				}
				else
				{
					SetBounds(value, 0, 0, 0, BoundsSpecified.X);
				}
				AdjustPosition();
			}
		}

		public Orientation Orientation
		{
			get
			{
				return m_orientation;
			}
			set
			{
				if (m_orientation != value)
				{
					m_orientation = value;
					double relativePos = m_relativePos;
					m_relativePos = m_prevRelativePos;
					m_prevRelativePos = relativePos;
					if (Collapsed)
					{
						Collapsed = false;
					}
					else
					{
						AdjustBounds();
					}
					OnOrientationChanged();
				}
			}
		}

		private int SplitterHeight
		{
			get
			{
				if (m_splitterHeight < 0)
				{
					using Bitmap image = new Bitmap(1, 1);
					using Graphics graphics = Graphics.FromImage(image);
					int num = (int)graphics.MeasureString("X", Font).Height + 1 + 4;
					m_splitterHeight = ((num < 20) ? 20 : num);
				}
				return m_splitterHeight;
			}
		}

		private TabSplitterPagesCollection PrimaryItemsInternal => m_owner.PrimaryPagesInternal;

		private TabSplitterPagesCollection SecondaryItemsInternal => m_owner.SecondaryPagesInternal;

		private bool Collapsed
		{
			get
			{
				return m_owner.Collapsed;
			}
			set
			{
				m_owner.Collapsed = value;
			}
		}

		private bool Swapped
		{
			get
			{
				return m_owner.Swapped;
			}
			set
			{
				m_owner.Swapped = value;
			}
		}

		private Size ButtonSize
		{
			get
			{
				Size imageSize = m_buttons.ImageSize;
				imageSize.Width += 4;
				imageSize.Height += 4;
				return imageSize;
			}
		}

		private LayoutInfo LayoutData
		{
			get
			{
				if (m_layoutData == null)
				{
					m_layoutData = new LayoutInfo(this);
					m_layoutData.PerformLayout();
				}
				return m_layoutData;
			}
		}

		private int SelectedButton
		{
			get
			{
				return m_selectedButton;
			}
			set
			{
				if (m_selectedButton != value)
				{
					InvalidateButton(m_selectedButton);
					m_selectedButton = value;
					InvalidateButton(m_selectedButton);
				}
			}
		}

		private int PressedButton
		{
			get
			{
				return m_pressedButton;
			}
			set
			{
				if (m_pressedButton != value)
				{
					InvalidateButton(m_pressedButton);
					m_pressedButton = value;
					InvalidateButton(m_pressedButton);
				}
			}
		}

		private int CheckedButton
		{
			get
			{
				if (!Collapsed)
				{
					if (Orientation != Orientation.Horizontal)
					{
						return 0;
					}
					return 1;
				}
				return 4;
			}
		}

		private int SplitBarPosition
		{
			get
			{
				if (Orientation == Orientation.Vertical)
				{
					if (RightToLeft != RightToLeft.Yes)
					{
						return m_rcSplitBar.X;
					}
					return m_rcSplitBar.Right - base.Width;
				}
				return m_rcSplitBar.Y;
			}
		}

		public event EventHandler OrientationChanged;

		internal event CancelEventHandler PositionChanging;

		internal event CancelEventHandler OrientationChanging;

		internal event CancelEventHandler CollapsedChanging;

		internal event CancelEventHandler SwappedChanging;

		static TabSplitter()
		{
			WVR_REDRAW = new IntPtr(768);
			s_pattern = new short[8] { 85, 170, 85, 170, 85, 170, 85, 170 };
			s_selectedButtonBackground = Color.FromArgb(193, 210, 238);
			s_pressedButtonBackground = Color.FromArgb(152, 181, 226);
			s_checkedButtonBackground = Color.FromArgb(225, 230, 232);
			s_normalTabGradientBegin = Color.FromArgb(250, 250, 245);
			s_normalTabGradientEnd = Color.FromArgb(237, 234, 218);
			s_selectedTabBackground = Color.FromArgb(255, 255, 255);
			Bitmap value = new Bitmap(typeof(TabSplitterContainer).Assembly.GetManifestResourceStream("Syncfusion.Windows.Forms.Tools.Controls.TabSplitterContainer.TabSplitterButtons.bmp"));
			m_buttons = new ImageList();
			m_buttons.ImageSize = new Size(11, 11);
			m_buttons.Images.AddStrip(value);
			m_buttons.TransparentColor = Color.Magenta;
			m_blend = new Blend();
			m_blend.Positions = new float[3] { 0f, 0.2f, 1f };
			m_blend.Factors = new float[3] { 0f, 1f, 1f };
		}

		public TabSplitter(TabSplitterContainer owner)
		{
			m_owner = owner;
			m_tooltip = new ToolTip();
			m_tooltip.Active = false;
			Dock = DockStyle.None;
			SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		}

		protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
		{
			Size clientSize = m_owner.ClientSize;
			if (m_orientation == Orientation.Horizontal)
			{
				x = 0;
				if (y > clientSize.Height - SplitterHeight)
				{
					y = clientSize.Height - SplitterHeight;
				}
				if (y < 0)
				{
					y = 0;
				}
				width = clientSize.Width;
				height = SplitterHeight;
			}
			else
			{
				y = 0;
				if (x > clientSize.Width - SplitterHeight)
				{
					x = clientSize.Width - SplitterHeight;
				}
				if (x < 0)
				{
					x = 0;
				}
				width = SplitterHeight;
				height = clientSize.Height;
			}
			base.SetBoundsCore(x, y, width, height, specified);
		}

		protected override void OnLayout(LayoutEventArgs levent)
		{
			base.OnLayout(levent);
			m_layoutData = null;
		}

		protected override void OnRightToLeftChanged(EventArgs e)
		{
			base.OnRightToLeftChanged(e);
			PerformLayout();
		}

		protected override void OnFontChanged(EventArgs e)
		{
			base.OnFontChanged(e);
			m_splitterHeight = -1;
			SuspendLayout();
			AdjustBounds();
			ResumeLayout();
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			Graphics graphics = e.Graphics;
			Rectangle rcClip = e.ClipRectangle;
			bool collapsed = Collapsed;
			TabSplitterPagesCollection primaryItemsInternal = PrimaryItemsInternal;
			int selectedIndex = primaryItemsInternal.SelectedIndex;
			TabSplitterPagesCollection secondaryItemsInternal = SecondaryItemsInternal;
			int selectedIndex2 = secondaryItemsInternal.SelectedIndex;
			Region clip = graphics.Clip;
			graphics.SetClip(Rectangle.Inflate(base.ClientRectangle, -1, -1), CombineMode.Intersect);
			for (int i = 0; i < primaryItemsInternal.Count; i++)
			{
				if (i != selectedIndex)
				{
					Rectangle primaryTabRect = LayoutData.GetPrimaryTabRect(i);
					if (!primaryTabRect.IsEmpty && primaryTabRect.IntersectsWith(rcClip))
					{
						DrawTabBackground(graphics, primaryTabRect, bPrimary: true, bSelected: false);
						DrawTab(graphics, primaryTabRect, bPrimary: true, primaryItemsInternal[i]);
					}
				}
			}
			for (int j = 0; j < secondaryItemsInternal.Count; j++)
			{
				int num = (collapsed ? j : (secondaryItemsInternal.Count - j - 1));
				if (num != selectedIndex2)
				{
					Rectangle secondaryTabRect = LayoutData.GetSecondaryTabRect(num);
					if (!secondaryTabRect.IsEmpty && secondaryTabRect.IntersectsWith(rcClip))
					{
						DrawTabBackground(graphics, secondaryTabRect, collapsed, bSelected: false);
						DrawTab(graphics, secondaryTabRect, collapsed, secondaryItemsInternal[num]);
					}
				}
			}
			graphics.SetClip(clip, CombineMode.Replace);
			Rectangle primaryTabRect2 = LayoutData.GetPrimaryTabRect(selectedIndex);
			if (!primaryTabRect2.IsEmpty && primaryTabRect2.IntersectsWith(rcClip))
			{
				DrawTabBackground(graphics, primaryTabRect2, bPrimary: true, bSelected: true);
				DrawTab(graphics, primaryTabRect2, bPrimary: true, primaryItemsInternal[selectedIndex]);
			}
			Rectangle secondaryTabRect2 = LayoutData.GetSecondaryTabRect(selectedIndex2);
			if (!secondaryTabRect2.IsEmpty && secondaryTabRect2.IntersectsWith(rcClip))
			{
				DrawTabBackground(graphics, secondaryTabRect2, collapsed, bSelected: true);
				DrawTab(graphics, secondaryTabRect2, collapsed, secondaryItemsInternal[selectedIndex2]);
			}
			DrawGrip(graphics, ref rcClip);
			for (int k = 0; k < 4; k++)
			{
				DrawButton(graphics, ref rcClip, k);
			}
			base.OnPaint(e);
		}

		protected override void OnPaintBackground(PaintEventArgs e)
		{
			Graphics graphics = e.Graphics;
			Rectangle clientRectangle = base.ClientRectangle;
			if (Orientation == Orientation.Horizontal)
			{
				Rectangle rect = new Rectangle(0, 0, 1, clientRectangle.Height);
				using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, BackColor, SystemColors.Control, LinearGradientMode.Horizontal);
				linearGradientBrush.Blend = m_blend;
				graphics.FillRectangle(linearGradientBrush, clientRectangle.X + 1, clientRectangle.Y + 1, clientRectangle.Width - 2, clientRectangle.Height - 2);
			}
			else
			{
				Rectangle rect2 = new Rectangle(0, 0, 1, clientRectangle.Height);
				using LinearGradientBrush brush = new LinearGradientBrush(rect2, BackColor, SystemColors.Control, LinearGradientMode.Horizontal);
				graphics.FillRectangle(brush, clientRectangle.X + 1, clientRectangle.Y + 1, clientRectangle.Width - 2, clientRectangle.Height - 2);
			}
			using Pen pen = new Pen(SystemColors.ControlDark);
			graphics.DrawRectangle(pen, clientRectangle.X, clientRectangle.Y, clientRectangle.Width - 1, clientRectangle.Height - 1);
		}

		protected override void OnMouseDown(MouseEventArgs e)
		{
			base.OnMouseDown(e);
			if (e.Button != MouseButtons.Left || e.Clicks != 1)
			{
				return;
			}
			m_pLastMouseDown = new Point(e.X, e.Y);
			int buttonID = LayoutData.GetButtonID(e.X, e.Y);
			if (buttonID != 4)
			{
				PressedButton = buttonID;
				return;
			}
			m_pressedPanel = LayoutData.GetPage(e.X, e.Y);
			if (m_pressedPanel == null)
			{
				m_bMoving = true;
				m_rcSplitBar = Rectangle.Empty;
			}
		}

		protected override void OnMouseMove(MouseEventArgs e)
		{
			if (m_bMoving)
			{
				if (!m_rcSplitBar.IsEmpty || GetDistance(e.X, m_pLastMouseDown.X) > 3 || GetDistance(e.Y, m_pLastMouseDown.Y) > 3)
				{
					DrawSplitBar(GetSplitBarBounds(e.X, e.Y));
				}
			}
			else
			{
				if (m_pressedPanel == null)
				{
					SelectedButton = LayoutData.GetButtonID(e.X, e.Y);
				}
				if (e.Button == MouseButtons.None)
				{
					UpdateToolTip(e.X, e.Y);
				}
			}
			base.OnMouseMove(e);
		}

		protected override void OnMouseLeave(EventArgs e)
		{
			SelectedButton = 4;
			base.OnMouseLeave(e);
		}

		protected override void OnMouseUp(MouseEventArgs e)
		{
			base.OnMouseUp(e);
			if (m_bMoving)
			{
				m_bMoving = false;
				if (!m_rcSplitBar.IsEmpty)
				{
					int splitBarPosition = SplitBarPosition;
					DrawSplitBar(Rectangle.Empty);
					SetPositionInternal(splitBarPosition);
				}
				return;
			}
			if (m_pressedPanel != null)
			{
				if (m_pressedPanel == LayoutData.GetPage(e.X, e.Y))
				{
					OnClickPage(m_pressedPanel);
				}
				m_pressedPanel = null;
				return;
			}
			int pressedButton = PressedButton;
			if (pressedButton != 4)
			{
				int selectedButton = SelectedButton;
				PressedButton = 4;
				if (pressedButton == selectedButton)
				{
					OnClickButton(pressedButton);
				}
				else
				{
					InvalidateButton(selectedButton);
				}
			}
		}

		protected override void WndProc(ref Message m)
		{
			switch (m.Msg)
			{
			case 32:
				if (OnWmSetCursor(ref m))
				{
					return;
				}
				break;
			case 533:
				OnWmCaptureChanged(ref m);
				break;
			case 131:
				OnWmNcCalcSize(ref m);
				return;
			case 515:
				OnWmLButtondDlclk(ref m);
				break;
			}
			base.WndProc(ref m);
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing)
			{
				m_owner = null;
			}
			base.Dispose(disposing);
		}

		private bool OnWmSetCursor(ref Message m)
		{
			bool result = false;
			Point point = PointToClient(Cursor.Position);
			if (LayoutData.GetButtonID(point.X, point.Y) == 4 && LayoutData.GetPage(point.X, point.Y) == null)
			{
				Cursor cursor = ((m_orientation == Orientation.Horizontal) ? Cursors.HSplit : Cursors.VSplit);
				SetCursor(cursor.Handle);
				m.Result = (IntPtr)1;
				result = true;
			}
			return result;
		}

		private void OnWmCaptureChanged(ref Message m)
		{
			m_bMoving = false;
			if (!m_rcSplitBar.IsEmpty)
			{
				DrawSplitBar(Rectangle.Empty);
			}
			PressedButton = 4;
		}

		private void OnWmNcCalcSize(ref Message m)
		{
			base.WndProc(ref m);
			m.Result = WVR_REDRAW;
		}

		private void OnWmLButtondDlclk(ref Message m)
		{
			int num = Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD((int)m.LParam);
			int num2 = Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD((int)m.LParam);
			TabSplitterPage page = LayoutData.GetPage(num, num2);
			if (page != null)
			{
				m_owner.Collapsed = true;
				page.Owner?.Select(page);
			}
			else if (LayoutData.GetButtonID(num, num2) == 4)
			{
				m_owner.Collapsed = !m_owner.Collapsed;
			}
		}

		internal void AdjustBounds()
		{
			Size clientSize = m_owner.ClientSize;
			if (m_orientation == Orientation.Horizontal)
			{
				int num = (Collapsed ? clientSize.Height : ((int)(m_relativePos * (double)clientSize.Height + 0.5)));
				SetBounds(0, num, clientSize.Width, SplitterHeight, BoundsSpecified.All);
				return;
			}
			int num2 = (Collapsed ? clientSize.Width : ((int)(m_relativePos * (double)clientSize.Width + 0.5)));
			if (RightToLeft == RightToLeft.Yes)
			{
				num2 = clientSize.Width - (num2 + SplitterHeight);
			}
			SetBounds(num2, 0, SplitterHeight, clientSize.Height, BoundsSpecified.All);
		}

		internal void AdjustPosition()
		{
			Size clientSize = m_owner.ClientSize;
			if (m_orientation == Orientation.Horizontal)
			{
				if (clientSize.Height > 0)
				{
					if (base.Bottom < clientSize.Height)
					{
						m_relativePos = (double)base.Top / (double)clientSize.Height;
						Collapsed = false;
					}
					else
					{
						Collapsed = true;
					}
				}
			}
			else
			{
				if (clientSize.Width <= 0)
				{
					return;
				}
				if (RightToLeft == RightToLeft.Yes)
				{
					if (base.Left > 0)
					{
						m_relativePos = (double)(clientSize.Width - base.Right) / (double)clientSize.Width;
						Collapsed = false;
					}
					else
					{
						Collapsed = true;
					}
				}
				else if (base.Right < clientSize.Width)
				{
					m_relativePos = (double)base.Left / (double)clientSize.Width;
					Collapsed = false;
				}
				else
				{
					Collapsed = true;
				}
			}
		}

		private void SetPositionInternal(int position)
		{
			if (OnPositionChanging(position))
			{
				Position = position;
			}
		}

		private void SetOrientationInternal(Orientation orientation)
		{
			if (OnOrientationChanging(orientation))
			{
				Orientation = orientation;
			}
		}

		private void SetCollapsedInternal(bool bCollapsed)
		{
			if (OnCollapsedChanging(bCollapsed))
			{
				Collapsed = bCollapsed;
			}
		}

		private void SetSwappedInternal(bool bSwapped)
		{
			if (OnSwappedChanging(bSwapped))
			{
				Swapped = bSwapped;
			}
		}

		private void OnOrientationChanged()
		{
			if (this.OrientationChanged != null)
			{
				this.OrientationChanged(m_owner, EventArgs.Empty);
			}
		}

		private void OnClickButton(int button)
		{
			switch (button)
			{
			case 0:
				SetOrientationInternal(Orientation.Vertical);
				break;
			case 1:
				SetOrientationInternal(Orientation.Horizontal);
				break;
			case 2:
				SetCollapsedInternal(!Collapsed);
				break;
			case 3:
				SetSwappedInternal(!Swapped);
				break;
			}
		}

		private void OnClickPage(TabSplitterPage page)
		{
			page.Owner?.Select(page);
		}

		private bool OnPositionChanging(int position)
		{
			if (this.PositionChanging != null)
			{
				PositionEventArgs e = new PositionEventArgs(position);
				this.PositionChanging(m_owner, e);
				return !e.Cancel;
			}
			return true;
		}

		private bool OnOrientationChanging(Orientation orientation)
		{
			if (this.OrientationChanging != null)
			{
				OrientationEventArgs e = new OrientationEventArgs(orientation);
				this.OrientationChanging(m_owner, e);
				return !e.Cancel;
			}
			return true;
		}

		private bool OnCollapsedChanging(bool bCollapsed)
		{
			if (this.CollapsedChanging != null)
			{
				CollapsedEventArgs e = new CollapsedEventArgs(bCollapsed);
				this.CollapsedChanging(m_owner, e);
				return !e.Cancel;
			}
			return true;
		}

		private bool OnSwappedChanging(bool bSwapped)
		{
			if (this.SwappedChanging != null)
			{
				SwappedEventArgs e = new SwappedEventArgs(bSwapped);
				this.SwappedChanging(m_owner, e);
				return !e.Cancel;
			}
			return true;
		}

		private void DrawTab(Graphics g, Rectangle rc, bool bPrimary, Control control)
		{
			if (!(control is TabSplitterPage tabSplitterPage))
			{
				return;
			}
			Rectangle rect = new Rectangle(0, 0, 16, 16);
			if (Orientation == Orientation.Horizontal)
			{
				int num = rc.X;
				int num2 = rc.Width - 18;
				if (!bPrimary)
				{
					num += 18;
					rc.Y++;
					rc.Height--;
				}
				rect.X = num + 2;
				rect.Y = rc.Y + (rc.Height - 16) / 2;
				RectangleF layoutRectangle = new RectangleF(rect.Right, rc.Y, num2 - rect.Width - 4, rc.Height);
				if (RightToLeft == RightToLeft.Yes)
				{
					layoutRectangle.X = (float)(rc.Left + rc.Right) - layoutRectangle.Right;
					rect.X = rc.Left + rc.Right - rect.Right;
				}
				using StringFormat stringFormat = new StringFormat(StringFormatFlags.NoWrap);
				stringFormat.LineAlignment = StringAlignment.Center;
				g.DrawString(tabSplitterPage.Text, Font, SystemBrushes.ControlText, layoutRectangle, stringFormat);
			}
			else
			{
				if (!bPrimary)
				{
					rc.X++;
					rc.Width--;
					rc.Y += 18;
					rc.Height -= 18;
				}
				rect.X = rc.X + (rc.Width - 16) / 2;
				rect.Y = rc.Y + 2;
			}
			Image image = tabSplitterPage.Image;
			Size size = image.Size;
			if (size.Width <= 16 && size.Height <= 16)
			{
				g.DrawImage(image, new Point(rect.X + (16 - size.Width) / 2, rect.Y + (16 - size.Height) / 2));
			}
			else
			{
				g.DrawImage(image, rect);
			}
		}

		private void DrawTabBackground(Graphics g, Rectangle rc, bool bPrimary, bool bSelected)
		{
			Point[] tabPolygon = GetTabPolygon(ref rc, bPrimary, RightToLeft == RightToLeft.Yes);
			using (Brush brush = GetTabBrush(ref rc, bPrimary, bSelected))
			{
				g.FillPolygon(brush, tabPolygon);
			}
			SmoothingMode smoothingMode = g.SmoothingMode;
			g.SmoothingMode = SmoothingMode.AntiAlias;
			g.DrawLines(SystemPens.ControlDark, tabPolygon);
			g.SmoothingMode = smoothingMode;
		}

		private Point[] GetTabPolygon(ref Rectangle rc, bool bPrimary, bool bRtl)
		{
			Point[] array = ((Orientation == Orientation.Horizontal) ? new Point[6]
			{
				new Point(rc.X, rc.Y),
				new Point(rc.X, rc.Bottom - 2),
				new Point(rc.X + 2, rc.Bottom),
				new Point(rc.Right - 18, rc.Bottom),
				new Point(rc.Right - 18 + 4, rc.Bottom - 2),
				new Point(rc.Right, rc.Y)
			} : new Point[6]
			{
				new Point(rc.X, rc.Y),
				new Point(rc.Right - 2, rc.Y),
				new Point(rc.Right, rc.Y + 2),
				new Point(rc.Right, rc.Bottom - 18),
				new Point(rc.Right - 2, rc.Bottom - 18 + 4),
				new Point(rc.X, rc.Bottom)
			});
			if (!bPrimary || bRtl)
			{
				Matrix matrix = new Matrix();
				if (!bPrimary)
				{
					matrix.Rotate(180f);
					matrix.Translate(-rc.Left - rc.Right, -rc.Top - rc.Bottom);
				}
				if (bRtl)
				{
					matrix.Scale(-1f, 1f);
					matrix.Translate(-rc.Left - rc.Right, 0f);
				}
				matrix.TransformPoints(array);
			}
			return array;
		}

		private Brush GetTabBrush(ref Rectangle rc, bool bPrimary, bool bSelected)
		{
			if (!bSelected)
			{
				LinearGradientBrush linearGradientBrush = ((Orientation != Orientation.Horizontal) ? new LinearGradientBrush(new Rectangle(rc.X, rc.Y, rc.Width, 1), s_normalTabGradientBegin, s_normalTabGradientEnd, bPrimary ? 0f : 180f) : new LinearGradientBrush(new Rectangle(rc.X, rc.Y, 1, rc.Height), s_normalTabGradientBegin, s_normalTabGradientEnd, bPrimary ? 90f : (-90f)));
				linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
				return linearGradientBrush;
			}
			return new SolidBrush(s_selectedTabBackground);
		}

		private void DrawGrip(Graphics g, ref Rectangle rcClip)
		{
			Rectangle gripBounds = LayoutData.GripBounds;
			if (!gripBounds.IsEmpty && gripBounds.IntersectsWith(rcClip))
			{
				if (Orientation == Orientation.Horizontal)
				{
					int left = gripBounds.Left;
					int right = gripBounds.Right;
					g.DrawLine(SystemPens.ControlLightLight, left, gripBounds.Top, right, gripBounds.Top);
					g.DrawLine(SystemPens.ControlDark, left, gripBounds.Top + 1, right, gripBounds.Top + 1);
					g.DrawLine(SystemPens.ControlLightLight, left, gripBounds.Bottom - 2, right, gripBounds.Bottom - 2);
					g.DrawLine(SystemPens.ControlDark, left, gripBounds.Bottom - 1, right, gripBounds.Bottom - 1);
				}
				else
				{
					int top = gripBounds.Top;
					int bottom = gripBounds.Bottom;
					g.DrawLine(SystemPens.ControlLightLight, gripBounds.Left, top, gripBounds.Left, bottom);
					g.DrawLine(SystemPens.ControlDark, gripBounds.Left + 1, top, gripBounds.Left + 1, bottom);
					g.DrawLine(SystemPens.ControlLightLight, gripBounds.Right - 2, top, gripBounds.Right - 2, bottom);
					g.DrawLine(SystemPens.ControlDark, gripBounds.Right - 1, top, gripBounds.Right - 1, bottom);
				}
			}
		}

		private void DrawButton(Graphics g, ref Rectangle rcClip, int button)
		{
			Rectangle buttonRect = LayoutData.GetButtonRect(button);
			if (buttonRect.IsEmpty || !buttonRect.IntersectsWith(rcClip))
			{
				return;
			}
			Color buttonBackground = GetButtonBackground(button);
			if (buttonBackground != Color.Empty)
			{
				using (Brush brush = new SolidBrush(buttonBackground))
				{
					g.FillRectangle(brush, buttonRect);
				}
				g.DrawRectangle(SystemPens.Highlight, buttonRect.X, buttonRect.Y, buttonRect.Width - 1, buttonRect.Height - 1);
			}
			Image image = m_buttons.Images[button];
			if (button >= 2 && Orientation == Orientation.Vertical)
			{
				image.RotateFlip(RotateFlipType.Rotate270FlipNone);
			}
			bool flag = RightToLeft == RightToLeft.Yes && Orientation == Orientation.Vertical;
			if (button == 2 && (Collapsed ^ flag))
			{
				image.RotateFlip(RotateFlipType.Rotate180FlipNone);
			}
			g.DrawImage(image, buttonRect.X + 2, buttonRect.Y + 2);
		}

		private void InvalidateButton(int button)
		{
			if (button != 4)
			{
				Invalidate(LayoutData.GetButtonRect(button));
			}
		}

		private Color GetButtonBackground(int button)
		{
			int checkedButton = CheckedButton;
			if (button == m_selectedButton)
			{
				if (m_pressedButton == 4)
				{
					if (button != checkedButton)
					{
						return s_selectedButtonBackground;
					}
					return s_pressedButtonBackground;
				}
				if (button == m_pressedButton)
				{
					return s_pressedButtonBackground;
				}
				if (button == checkedButton)
				{
					return s_checkedButtonBackground;
				}
				return Color.Empty;
			}
			if (button == m_pressedButton)
			{
				if (button != checkedButton)
				{
					return s_selectedButtonBackground;
				}
				return s_pressedButtonBackground;
			}
			if (button == checkedButton)
			{
				return s_checkedButtonBackground;
			}
			return Color.Empty;
		}

		private void DrawSplitBar(Rectangle rc)
		{
			if (!(m_rcSplitBar != rc))
			{
				return;
			}
			IntPtr windowDC = Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowDC(m_owner.Handle);
			if (windowDC != IntPtr.Zero)
			{
				IntPtr dragBrush = GetDragBrush();
				if (dragBrush != IntPtr.Zero)
				{
					IntPtr hObject = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(windowDC, dragBrush);
					if (!m_rcSplitBar.IsEmpty)
					{
						Syncfusion.Runtime.InteropServices.NativeMethods.PatBlt(windowDC, m_rcSplitBar.X, m_rcSplitBar.Y, m_rcSplitBar.Width, m_rcSplitBar.Height, 5898313);
					}
					if (!rc.IsEmpty)
					{
						Syncfusion.Runtime.InteropServices.NativeMethods.PatBlt(windowDC, rc.X, rc.Y, rc.Width, rc.Height, 5898313);
					}
					Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(windowDC, hObject);
					Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(dragBrush);
				}
				Syncfusion.Runtime.InteropServices.NativeMethods.ReleaseDC(m_owner.Handle, windowDC);
			}
			m_rcSplitBar = rc;
		}

		private Rectangle GetSplitBarBounds(int x, int y)
		{
			Point p = new Point(x, y);
			Rectangle clientRectangle = m_owner.ClientRectangle;
			p = m_owner.PointToClient(PointToScreen(p));
			if (m_orientation == Orientation.Horizontal)
			{
				clientRectangle.Y = p.Y - 1;
				if (clientRectangle.Y > clientRectangle.Height - 3)
				{
					clientRectangle.Y = clientRectangle.Height - 3;
				}
				if (clientRectangle.Y < 0)
				{
					clientRectangle.Y = 0;
				}
				clientRectangle.Height = 3;
			}
			else
			{
				clientRectangle.X = p.X - 1;
				if (clientRectangle.X > clientRectangle.Width - 3)
				{
					clientRectangle.X = clientRectangle.Width - 3;
				}
				if (clientRectangle.X < 0)
				{
					clientRectangle.X = 0;
				}
				clientRectangle.Width = 3;
			}
			return clientRectangle;
		}

		private static int GetDistance(int x1, int x2)
		{
			if (x1 <= x2)
			{
				return x2 - x1;
			}
			return x1 - x2;
		}

		private static IntPtr GetDragBrush()
		{
			IntPtr result = IntPtr.Zero;
			IntPtr intPtr = Syncfusion.Runtime.InteropServices.NativeMethods.CreateBitmap(8, 8, 1, 1, s_pattern);
			if (intPtr != IntPtr.Zero)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.LOGBRUSH lb = new Syncfusion.Runtime.InteropServices.NativeMethods.LOGBRUSH
				{
					lbColor = 0,
					lbStyle = 3,
					lbHatch = intPtr
				};
				result = Syncfusion.Runtime.InteropServices.NativeMethods.CreateBrushIndirect(ref lb);
				Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(intPtr);
			}
			return result;
		}

		private void UpdateToolTip(int x, int y)
		{
			string text = null;
			TabSplitterPage page = LayoutData.GetPage(x, y);
			if (page != null)
			{
				text = page.ToolTip;
			}
			else
			{
				switch (LayoutData.GetButtonID(x, y))
				{
				case 0:
					text = SR.GetString("TabSplitterVerticalSplit");
					break;
				case 1:
					text = SR.GetString("TabSplitterHorizontalSplit");
					break;
				case 2:
					text = SR.GetString(Collapsed ? "TabSplitterExpandPane" : "TabSplitterCollapsePane");
					break;
				case 3:
					text = SR.GetString("TabSplitterSwapPanes");
					break;
				}
			}
			if (m_tooltip.GetToolTip(this) != text)
			{
				m_tooltip.Active = false;
				m_tooltip.SetToolTip(this, text);
				m_tooltip.Active = true;
			}
		}

		[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
		private static extern IntPtr SetCursor(IntPtr hCursor);
	}

	internal class PositionEventArgs : CancelEventArgs
	{
		public int Position;

		public PositionEventArgs(int pos)
			: base(cancel: false)
		{
			Position = pos;
		}
	}

	internal class OrientationEventArgs : CancelEventArgs
	{
		public Orientation Orientation;

		public OrientationEventArgs(Orientation orientation)
			: base(cancel: false)
		{
			Orientation = orientation;
		}
	}

	internal class CollapsedEventArgs : CancelEventArgs
	{
		public bool Collapsed;

		public CollapsedEventArgs(bool collapsed)
			: base(cancel: false)
		{
			Collapsed = collapsed;
		}
	}

	internal class SwappedEventArgs : CancelEventArgs
	{
		public bool Swapped;

		public SwappedEventArgs(bool swapped)
			: base(cancel: false)
		{
			Swapped = swapped;
		}
	}

	private bool m_bCollapsed;

	private bool m_bSwapped;

	private TabSplitter m_splitter;

	private TabSplitterPagesCollection m_primaryPages;

	private TabSplitterPagesCollection m_secondaryPages;

	private TabSplitterPagesCollection m_selectedPages;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new ControlCollection Controls => base.Controls;

	[Description("Indicates whether the secondary pane is collapsed")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool Collapsed
	{
		get
		{
			return m_bCollapsed;
		}
		set
		{
			if (m_bCollapsed != value)
			{
				m_bCollapsed = value;
				OnCollapsedChanged();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(Orientation.Horizontal)]
	[Description("Defines the horizontal or vertical orientation of the splitter.")]
	public Orientation Orientation
	{
		get
		{
			return m_splitter.Orientation;
		}
		set
		{
			m_splitter.Orientation = value;
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Indicates whether the primary and secondary panes are swapped")]
	public bool Swapped
	{
		get
		{
			return m_bSwapped;
		}
		set
		{
			if (m_bSwapped != value)
			{
				m_bSwapped = value;
				OnSwappedChanged();
			}
		}
	}

	[Description("Gets or sets the location of the splitter, in pixels, from the left or top edge of the TabSplitContainer.")]
	[Category("Appearance")]
	public int SplitterPosition
	{
		get
		{
			return m_splitter.Position;
		}
		set
		{
			m_splitter.Position = value;
		}
	}

	[DefaultValue(typeof(SystemColors), "ControlDark")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	[Description("Gets or Sets the backcolor for TabSplitter.")]
	public Color SplitterBackColor
	{
		get
		{
			return m_splitter.BackColor;
		}
		set
		{
			if (m_splitter.BackColor != value)
			{
				m_splitter.BackColor = value;
			}
		}
	}

	[Category("Data")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Gets an object representing the collection of the pages contained in the primary pane.")]
	public TabSplitterPagesCollection PrimaryPages => m_primaryPages;

	[Category("Data")]
	[Description("Gets an object representing the collection of the pages contained in the secondary pane.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TabSplitterPagesCollection SecondaryPages => m_secondaryPages;

	internal Control Splitter => m_splitter;

	internal TabSplitterPagesCollection PrimaryPagesInternal
	{
		get
		{
			if (!Swapped)
			{
				return PrimaryPages;
			}
			return SecondaryPages;
		}
	}

	internal TabSplitterPagesCollection SecondaryPagesInternal
	{
		get
		{
			if (Swapped)
			{
				return PrimaryPages;
			}
			return SecondaryPages;
		}
	}

	[Description("Occurs when the Orientation property value has been changed")]
	public event EventHandler OrientationChanged
	{
		add
		{
			m_splitter.OrientationChanged += value;
		}
		remove
		{
			m_splitter.OrientationChanged -= value;
		}
	}

	[Description("Occurs when the Collapsed property value has been changed")]
	public event EventHandler CollapsedChanged;

	[Description("Occurs when the Swapped property value has been changed")]
	public event EventHandler SwappedChanged;

	[Description("Occurs when the Splitter's position has been changed.")]
	public event EventHandler SplitterPositionChanged;

	internal event CancelEventHandler SplitterPositionChanging
	{
		add
		{
			m_splitter.PositionChanging += value;
		}
		remove
		{
			m_splitter.PositionChanging -= value;
		}
	}

	internal event CancelEventHandler OrientationChanging
	{
		add
		{
			m_splitter.OrientationChanging += value;
		}
		remove
		{
			m_splitter.OrientationChanging -= value;
		}
	}

	internal event CancelEventHandler CollapsedChanging
	{
		add
		{
			m_splitter.CollapsedChanging += value;
		}
		remove
		{
			m_splitter.CollapsedChanging -= value;
		}
	}

	internal event CancelEventHandler SwappedChanging
	{
		add
		{
			m_splitter.SwappedChanging += value;
		}
		remove
		{
			m_splitter.SwappedChanging -= value;
		}
	}

	public TabSplitterContainer()
	{
		Initialize();
	}

	~TabSplitterContainer()
	{
		Dispose(disposing: false);
	}

	private void Initialize()
	{
		m_primaryPages = new TabSplitterPagesCollection(this);
		m_secondaryPages = new TabSplitterPagesCollection(this);
		m_splitter = new TabSplitter(this);
		Controls.Add(m_splitter);
		AdwiseEvents();
	}

	private void AdwiseEvents()
	{
		m_splitter.LocationChanged += OnSplitterLocationChanged;
	}

	private void UnadwiseEvents()
	{
		m_splitter.LocationChanged -= OnSplitterLocationChanged;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			UnadwiseEvents();
			m_splitter = null;
			m_primaryPages = null;
			m_secondaryPages = null;
		}
		base.Dispose(disposing);
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		base.OnLayout(e);
		Rectangle clientRectangle = base.ClientRectangle;
		Rectangle clientRectangle2 = base.ClientRectangle;
		if (Orientation == Orientation.Horizontal)
		{
			clientRectangle.Height = m_splitter.Top;
			if (!Collapsed)
			{
				clientRectangle2.Y = m_splitter.Bottom;
				clientRectangle2.Height -= m_splitter.Bottom;
			}
			else
			{
				clientRectangle2.Height = m_splitter.Top;
			}
		}
		else if (RightToLeft == RightToLeft.Yes)
		{
			clientRectangle.X = m_splitter.Right;
			clientRectangle.Width -= m_splitter.Right;
			if (Collapsed)
			{
				clientRectangle2.X = clientRectangle.X;
				clientRectangle2.Width = clientRectangle.Width;
			}
			else
			{
				clientRectangle2.Width = m_splitter.Left;
			}
		}
		else
		{
			clientRectangle.Width = m_splitter.Left;
			if (!Collapsed)
			{
				clientRectangle2.X = m_splitter.Right;
				clientRectangle2.Width -= m_splitter.Right;
			}
			else
			{
				clientRectangle2.Width = m_splitter.Left;
			}
		}
		foreach (Control item in PrimaryPagesInternal)
		{
			item.Bounds = clientRectangle;
		}
		foreach (Control item2 in SecondaryPagesInternal)
		{
			item2.Bounds = clientRectangle2;
		}
	}

	protected override void OnResize(EventArgs e)
	{
		SuspendLayout();
		m_splitter.AdjustBounds();
		base.OnResize(e);
		ResumeLayout();
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		if (e.Control is TabSplitterPage tabSplitterPage)
		{
			tabSplitterPage.TextChanged += OnPageTextChanged;
			tabSplitterPage.ImageChanged += OnPageImageChanged;
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		base.OnControlRemoved(e);
		if (e.Control is TabSplitterPage tabSplitterPage)
		{
			tabSplitterPage.TextChanged -= OnPageTextChanged;
			tabSplitterPage.ImageChanged -= OnPageImageChanged;
			tabSplitterPage.Owner = null;
		}
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
		if (Orientation == Orientation.Vertical)
		{
			SuspendLayout();
			m_splitter.AdjustBounds();
			ResumeLayout();
		}
	}

	protected virtual void OnSplitterPositionChanged(EventArgs e)
	{
		if (this.SplitterPositionChanged != null)
		{
			this.SplitterPositionChanged(this, e);
		}
	}

	protected virtual void OnSwappedChanged()
	{
		PerformLayout();
		m_splitter.PerformLayout();
		m_splitter.Invalidate();
		RaiseSimpleEvent(this.SwappedChanged);
	}

	protected virtual void OnCollapsedChanged()
	{
		SuspendLayout();
		if (Collapsed)
		{
			if (PrimaryPagesInternal.SelectedIndex >= 0 || SecondaryPagesInternal.SelectedIndex < 0)
			{
				m_selectedPages = PrimaryPagesInternal;
				SecondaryPagesInternal.SelectedIndex = -1;
			}
			else
			{
				m_selectedPages = SecondaryPagesInternal;
			}
		}
		else
		{
			PrimaryPagesInternal.SelectActiveItem();
			SecondaryPagesInternal.SelectActiveItem();
		}
		m_splitter.AdjustBounds();
		m_splitter.PerformLayout();
		m_splitter.Invalidate();
		ResumeLayout();
		RaiseSimpleEvent(this.CollapsedChanged);
	}

	private void OnSplitterLocationChanged(object sender, EventArgs e)
	{
		OnSplitterPositionChanged(EventArgs.Empty);
	}

	private void OnPageTextChanged(object sender, EventArgs e)
	{
		m_splitter.PerformLayout();
		m_splitter.Invalidate();
	}

	private void OnPageImageChanged(object sender, EventArgs e)
	{
		m_splitter.Invalidate();
	}

	internal void OnPagesChanged()
	{
		m_splitter.PerformLayout();
		m_splitter.Invalidate();
	}

	internal void OnSelectedIndexChanged(TabSplitterPagesCollection pages)
	{
		if (Collapsed && m_selectedPages != pages && pages.SelectedIndex >= 0)
		{
			if (m_selectedPages != null)
			{
				m_selectedPages.SelectedIndex = -1;
			}
			m_selectedPages = pages;
		}
		m_splitter.Invalidate();
	}

	private void RaiseSimpleEvent(EventHandler handler)
	{
		handler?.Invoke(this, EventArgs.Empty);
	}
}
