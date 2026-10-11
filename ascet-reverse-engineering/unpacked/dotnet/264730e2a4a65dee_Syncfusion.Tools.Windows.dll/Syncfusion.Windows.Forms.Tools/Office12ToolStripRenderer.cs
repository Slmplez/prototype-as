using System;
using System.Collections;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Text;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

public class Office12ToolStripRenderer : ToolStripProfessionalRenderer
{
	private class ComboBoxRenderer : INativeMessageFilter
	{
		private struct PAINTINFO
		{
			public COMBOBOXINFO cbi;

			public ComboBox cb;

			public Graphics graphics;
		}

		private const int STATE_SYSTEM_INVISIBLE = 32768;

		private const int STATE_SYSTEM_SELECTED = 2;

		private const int STATE_SYSTEM_PRESSED = 8;

		private const int CB_GETCURSEL = 327;

		private const int CB_GETLBTEXT = 328;

		private const int CB_GETLBTEXTLEN = 329;

		private const int CB_GETDROPPEDSTATE = 343;

		private const int ARROW_WIDTH = 5;

		private const int ARROW_HEIGHT = 3;

		private const int ARROW_PADDING = 4;

		private const int BUTTON_WIDTH = 13;

		private WeakReference m_parentRenderer;

		private IntPtr m_hHoverWindow;

		private Color BorderColor
		{
			get
			{
				if (m_parentRenderer.Target is Office12ToolStripRenderer { ColorTable: Office12ColorTable colorTable })
				{
					return colorTable.GroupBorder;
				}
				return SystemColors.WindowFrame;
			}
		}

		private Color BackgroundColor
		{
			get
			{
				if (m_parentRenderer.Target is Office12ToolStripRenderer { ColorTable: Office12ColorTable colorTable })
				{
					return colorTable.ComboBoxBackgroundColor;
				}
				return SystemColors.Window;
			}
		}

		public ComboBoxRenderer(Office12ToolStripRenderer parentRenderer)
		{
			m_parentRenderer = new WeakReference(parentRenderer);
		}

		bool INativeMessageFilter.ProcessMessage(ref Message m)
		{
			switch ((Msg)m.Msg)
			{
			case Msg.WM_CTLCOLOREDIT:
			case Msg.WM_CTLCOLORSTATIC:
				return OnCtlColorEdit(ref m);
			case Msg.WM_PAINT:
				return OnPaint(ref m);
			case Msg.WM_MOUSEMOVE:
				return OnMouseMove(ref m);
			case Msg.WM_MOUSELEAVE:
				return OnMouseLeave(ref m);
			default:
				return false;
			}
		}

		private bool OnMouseMove(ref Message m)
		{
			if (m_hHoverWindow != m.HWnd)
			{
				WindowsAPI.RedrawWindow(m.HWnd, IntPtr.Zero, IntPtr.Zero, (RedrawWindowFlags)129);
				m_hHoverWindow = m.HWnd;
			}
			return false;
		}

		private bool OnMouseLeave(ref Message m)
		{
			WindowsAPI.RedrawWindow(m.HWnd, IntPtr.Zero, IntPtr.Zero, (RedrawWindowFlags)129);
			m_hHoverWindow = IntPtr.Zero;
			return false;
		}

		private bool OnCtlColorEdit(ref Message m)
		{
			ComboBox cb = Control.FromHandle(m.HWnd) as ComboBox;
			if (!GetIsHighlighted(cb) && m_parentRenderer.Target is Office12ToolStripRenderer { ColorTable: Office12ColorTable colorTable })
			{
				WindowsAPI.SetBkMode(m.WParam, BackgroundMode.TRANSPARENT);
				m.Result = colorTable.ComboBoxBackgroundBrush;
				return true;
			}
			return false;
		}

		private bool OnPaint(ref Message m)
		{
			bool result = false;
			PAINTINFO pi = new PAINTINFO
			{
				cb = (Control.FromHandle(m.HWnd) as ComboBox)
			};
			if (pi.cb != null)
			{
				pi.cbi.cbSize = (uint)Marshal.SizeOf((object)pi.cbi);
				if (WindowsAPI.GetComboBoxInfo(m.HWnd, ref pi.cbi))
				{
					PAINTSTRUCT ps = default(PAINTSTRUCT);
					IntPtr intPtr = WindowsAPI.BeginPaint(m.HWnd, ref ps);
					if (intPtr != IntPtr.Zero)
					{
						Rectangle rcClient = pi.cb.ClientRectangle;
						if (rcClient.Width > 0 && rcClient.Height > 0)
						{
							using BufferedGraphics bufferedGraphics = BufferedGraphicsManager.Current.Allocate(intPtr, rcClient);
							pi.graphics = bufferedGraphics.Graphics;
							DrawBackground(ref pi, ref rcClient);
							if (pi.cb.DropDownStyle == ComboBoxStyle.DropDownList)
							{
								DrawItem(ref pi);
							}
							if (pi.cbi.stateButton != 32768)
							{
								DrawButton(ref pi);
							}
							bufferedGraphics.Render();
						}
					}
					WindowsAPI.EndPaint(m.HWnd, ref ps);
					result = true;
				}
			}
			return result;
		}

		private void DrawBackground(ref PAINTINFO pi, ref Rectangle rcClient)
		{
			Color color = (GetIsHighlighted(pi.cb) ? SystemColors.Window : BackgroundColor);
			using (Brush brush = new SolidBrush(color))
			{
				pi.graphics.FillRectangle(brush, rcClient);
			}
			using Pen pen = new Pen(BorderColor);
			pi.graphics.DrawRectangle(pen, rcClient.X, rcClient.Y, rcClient.Width - 1, rcClient.Height - 1);
		}

		private void DrawItem(ref PAINTINFO pi)
		{
			ComboBox cb = pi.cb;
			object selectedItem = cb.SelectedItem;
			if (selectedItem != null)
			{
				Graphics graphics = pi.graphics;
				string text = cb.Text;
				Rectangle rectangle = pi.cbi.rcItem;
				Rectangle rectangle2 = Rectangle.Inflate(rectangle, -1, -1);
				TextFormatFlags flags = ((cb.RightToLeft == RightToLeft.Yes) ? (TextFormatFlags.Right | TextFormatFlags.NoPadding) : TextFormatFlags.NoPadding);
				if (cb.Focused && !cb.DroppedDown)
				{
					graphics.FillRectangle(SystemBrushes.Highlight, rectangle2);
					TextRenderer.DrawText(graphics, text, cb.Font, rectangle2, SystemColors.HighlightText, flags);
					ControlPaint.DrawFocusRectangle(graphics, rectangle);
				}
				else
				{
					TextRenderer.DrawText(graphics, text, cb.Font, rectangle2, cb.ForeColor, flags);
				}
			}
		}

		private void DrawButton(ref PAINTINFO pi)
		{
			Rectangle rcButton = pi.cbi.rcButton;
			if (rcButton.Width > 13)
			{
				if (pi.cb.RightToLeft != RightToLeft.Yes)
				{
					rcButton.X += rcButton.Width - 13;
				}
				rcButton.Width = 13;
			}
			if (!DrawButtonPressed(ref pi, ref rcButton) && !DrawButtonSelected(ref pi, ref rcButton))
			{
				DrawButtonNormal(ref pi, ref rcButton);
			}
			DrawArrow(ref pi, ref rcButton);
		}

		private bool DrawButtonPressed(ref PAINTINFO pi, ref Rectangle rcButton)
		{
			bool result = false;
			if (GetIsPressed(pi.cb))
			{
				if (rcButton.Width > 0 && rcButton.Height > 0 && m_parentRenderer.Target is Office12ToolStripRenderer office12ToolStripRenderer)
				{
					Graphics graphics = pi.graphics;
					Color buttonPressedGradientBegin = office12ToolStripRenderer.ColorTable.ButtonPressedGradientBegin;
					Color buttonPressedGradientEnd = office12ToolStripRenderer.ColorTable.ButtonPressedGradientEnd;
					office12ToolStripRenderer.PaintGradientSelected(graphics, rcButton, buttonPressedGradientBegin, buttonPressedGradientEnd);
					graphics.DrawRectangle(office12ToolStripRenderer.ButtonPressedBorder, rcButton.X, rcButton.Y, rcButton.Width - 1, rcButton.Height - 1);
					graphics.DrawRectangle(office12ToolStripRenderer.ButtonHighlightBorder, rcButton.X + 1, rcButton.Y + 1, rcButton.Width - 3, rcButton.Height - 3);
				}
				result = true;
			}
			return result;
		}

		private bool DrawButtonSelected(ref PAINTINFO pi, ref Rectangle rcButton)
		{
			bool result = false;
			if (GetIsSelected(pi.cb))
			{
				if (rcButton.Width > 0 && rcButton.Height > 0 && m_parentRenderer.Target is Office12ToolStripRenderer office12ToolStripRenderer)
				{
					Graphics graphics = pi.graphics;
					Color buttonSelectedGradientBegin = office12ToolStripRenderer.ColorTable.ButtonSelectedGradientBegin;
					Color buttonSelectedGradientEnd = office12ToolStripRenderer.ColorTable.ButtonSelectedGradientEnd;
					office12ToolStripRenderer.PaintGradientSelected(graphics, rcButton, buttonSelectedGradientBegin, buttonSelectedGradientEnd);
					graphics.DrawRectangle(office12ToolStripRenderer.ButtonSelectedBorder, rcButton.X, rcButton.Y, rcButton.Width - 1, rcButton.Height - 1);
					graphics.DrawRectangle(office12ToolStripRenderer.ButtonHighlightBorder, rcButton.X + 1, rcButton.Y + 1, rcButton.Width - 3, rcButton.Height - 3);
				}
				result = true;
			}
			return result;
		}

		private void DrawButtonNormal(ref PAINTINFO pi, ref Rectangle rcButton)
		{
			if (rcButton.Width > 0 && rcButton.Height > 0 && m_parentRenderer.Target is Office12ToolStripRenderer office12ToolStripRenderer)
			{
				Graphics graphics = pi.graphics;
				office12ToolStripRenderer.PaintGradientGrouped(graphics, rcButton);
				using Pen pen = new Pen(BorderColor);
				graphics.DrawRectangle(pen, rcButton.X, rcButton.Y, rcButton.Width - 1, rcButton.Height - 1);
			}
		}

		private void DrawArrow(ref PAINTINFO pi, ref Rectangle rcButton)
		{
			int num = rcButton.X + rcButton.Width / 2;
			int num2 = rcButton.Y + rcButton.Height / 2;
			Point[] points = new Point[3]
			{
				new Point(num - 2, num2 - 1),
				new Point(num + 3, num2 - 1),
				new Point(num, num2 + 2)
			};
			Brush brush = (pi.cb.Enabled ? SystemBrushes.ControlText : SystemBrushes.ControlDark);
			pi.graphics.FillPolygon(brush, points);
		}

		private bool GetIsHighlighted(ComboBox cb)
		{
			if (cb != null && cb.Enabled)
			{
				if (!GetIsSelected(cb))
				{
					return GetIsPressed(cb);
				}
				return true;
			}
			return false;
		}

		private bool GetIsSelected(ComboBox cb)
		{
			bool flag = false;
			if (cb != null)
			{
				flag = cb.Focused;
				if (!flag)
				{
					flag = cb.RectangleToScreen(cb.ClientRectangle).Contains(Cursor.Position);
				}
			}
			return flag;
		}

		private bool GetIsPressed(ComboBox cb)
		{
			return cb?.DroppedDown ?? false;
		}
	}

	public enum ERENDERTYPE
	{
		Normal,
		Grouped,
		TabBar,
		MAX
	}

	protected enum EBUTTONSTATE
	{
		Normal,
		Pressed,
		Selected,
		Checked,
		Collapsed,
		MAX
	}

	protected enum EPEN
	{
		epMenuBorder,
		epMenuItemBorder,
		epMenuStripBorder,
		epButtonBorder,
		epButtonBorderHighlight,
		epButtonBorderDropdown,
		epMenuItemPressedGradientEnd,
		epButtonPressedGradientBegin,
		epButtonPressedGradientMiddle,
		epButtonPressedGradientEnd,
		epButtonSelectedGradientEnd,
		epButtonSelectedBorder,
		epButtonPressedBorder,
		epButtonHighlightBorder,
		epHighlightGrouped,
		epToolStripBorder,
		epGroupBorder,
		epCheckBorder,
		epLauncherBorder,
		epCollapsedBorder,
		epImageBorder,
		MAX
	}

	protected enum EBRUSH
	{
		ebShadow,
		ebToolStripDropDownBackground,
		ebCheckBackground,
		MAX
	}

	protected enum EBITMAP
	{
		ebArrowDown,
		ebArrowRight,
		ebArrowOverflow,
		ebSelectedFlash,
		ebPressedFlash,
		ebCheckedFlash,
		ebLauncher,
		ebLauncherSelected,
		ebLauncher2007,
		ebLauncher2007Selected,
		ebCheckButton,
		ebSystemButtonSelectedFlash,
		ebSystemButtonPressedFlash,
		ebRightArrow,
		ebLeftArrow,
		ebDownArrow,
		ebUpArrow,
		ebRadioButtonChecked,
		ebRadioButtonUnchecked,
		ebRadioButtonCheckedSelected,
		ebRadioButtonUncheckedSelected,
		ebRadioButtonCheckedPressed,
		ebRadioButtonUncheckedPressed,
		MAX
	}

	protected struct XFORM
	{
		public float eM11;

		public float eM12;

		public float eM21;

		public float eM22;

		public float eDx;

		public float eDy;
	}

	internal class CToolStripWindow : NativeWindowBase
	{
		private const RedrawWindowFlags rdfCaption = (RedrawWindowFlags)1153;

		private ToolStrip m_toolStrip;

		private bool m_bSelected;

		public bool Selected => m_bSelected;

		private bool HasCaption
		{
			get
			{
				bool result = false;
				if (m_toolStrip != null && m_toolStrip.Renderer is Office12ToolStripRenderer office12ToolStripRenderer)
				{
					result = office12ToolStripRenderer.HasCaption(m_toolStrip);
				}
				return result;
			}
		}

		private bool DesignMode
		{
			get
			{
				if (m_toolStrip != null && m_toolStrip.Site != null)
				{
					return m_toolStrip.Site.DesignMode;
				}
				return false;
			}
		}

		public CToolStripWindow(ToolStrip toolStrip)
		{
			m_toolStrip = toolStrip;
		}

		protected override void Dispose(bool bDisposing)
		{
			if (bDisposing)
			{
				m_toolStrip = null;
			}
			base.Dispose(bDisposing);
		}

		public override bool ProcessMessage(ref Message m)
		{
			bool flag = false;
			switch (m.Msg)
			{
			case 131:
				flag = OnNcCalcSize(ref m);
				break;
			case 133:
				flag = OnNcPaint(ref m);
				break;
			case 160:
			case 512:
			case 5120:
				flag = OnMouseMove(ref m);
				break;
			case 675:
			case 5121:
				flag = OnMouseLeave(ref m);
				break;
			case 132:
				flag = OnNcHitTest(ref m);
				break;
			}
			if (!flag)
			{
				return base.ProcessMessage(ref m);
			}
			return true;
		}

		public override void PostProcessMessage(ref Message m)
		{
			int msg = m.Msg;
			if (msg == 5)
			{
				OnSize(ref m);
			}
			base.PostProcessMessage(ref m);
		}

		protected virtual bool OnNcCalcSize(ref Message m)
		{
			bool result = false;
			if (m_toolStrip != null && m_toolStrip.Renderer is Office12ToolStripRenderer office12ToolStripRenderer)
			{
				RECT rc = (RECT)Marshal.PtrToStructure(m.LParam, typeof(RECT));
				office12ToolStripRenderer.ApplyBorders(m_toolStrip, ref rc);
				office12ToolStripRenderer.ApplyCaption(m_toolStrip, ref rc);
				Marshal.StructureToPtr((object)rc, m.LParam, fDeleteOld: false);
			}
			return result;
		}

		protected virtual bool OnNcPaint(ref Message m)
		{
			bool result = false;
			if (m_toolStrip != null && m_toolStrip.Renderer is Office12ToolStripRenderer office12ToolStripRenderer)
			{
				office12ToolStripRenderer.DrawBorders(m_toolStrip);
				office12ToolStripRenderer.DrawCaption(m_toolStrip);
			}
			return result;
		}

		protected virtual bool OnMouseMove(ref Message m)
		{
			if (!m_bSelected && !DesignMode)
			{
				m_bSelected = true;
				WindowsAPI.RedrawWindow(m.HWnd, IntPtr.Zero, IntPtr.Zero, (RedrawWindowFlags)1153);
			}
			return false;
		}

		protected virtual bool OnMouseLeave(ref Message m)
		{
			if (m_bSelected && !DesignMode)
			{
				POINT pnt = default(POINT);
				WindowsAPI.GetCursorPos(ref pnt);
				if (!m_toolStrip.RectangleToScreen(m_toolStrip.ClientRectangle).Contains(pnt.x, pnt.y))
				{
					m_bSelected = false;
					WindowsAPI.RedrawWindow(m.HWnd, IntPtr.Zero, IntPtr.Zero, (RedrawWindowFlags)1153);
				}
			}
			return false;
		}

		protected virtual bool OnNcHitTest(ref Message m)
		{
			bool result = false;
			if (HasCaption && m_toolStrip.Renderer is Office12ToolStripRenderer office12ToolStripRenderer)
			{
				int x = WindowsAPI.GET_X_LPARAM((int)m.LParam);
				int y = WindowsAPI.GET_Y_LPARAM((int)m.LParam);
				if (office12ToolStripRenderer.GetCaptionBounds(m_toolStrip).Contains(x, y))
				{
					m.Result = new IntPtr(1);
					result = true;
				}
			}
			return result;
		}

		protected virtual void OnSize(ref Message m)
		{
			if (m_toolStrip.Renderer is Office12ToolStripRenderer office12ToolStripRenderer)
			{
				m_toolStrip.Region = office12ToolStripRenderer.GetRegion(m_toolStrip);
			}
		}
	}

	private const SetWindowPosFlags m_swpFlags = SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE | SetWindowPosFlags.SWP_NOZORDER | SetWindowPosFlags.SWP_NOACTIVATE | SetWindowPosFlags.SWP_FRAMECHANGED;

	private const int STATICEDGE_WIDTH = 1;

	private const int ETCHED_WIDTH = 2;

	private const int MENUITEM_PADDING_LEFT = 2;

	private const int MENUITEM_PADDING_RIGHT = 1;

	private const int MENUITEM_HORIZONTAL = 3;

	private const int IMAGE_PADDING = 2;

	private const int IMAGE_MARGIN = 1;

	internal const int MENUITEM_RADIUS = 1;

	internal const int TOOLSTRIP_RADIUS = 2;

	protected static Blend m_blMenuBar;

	protected static Blend m_blStatusBar;

	protected static Blend m_blToolBar;

	protected static Blend m_blMenuItemUp;

	protected static Blend m_blMenuItemDown;

	protected static Blend m_blGrouped;

	protected static Blend m_blScrollButton;

	protected static Blend m_blButtonSelected;

	protected static Blend m_blButtonCollapsed;

	protected static Blend m_blButtonShadow;

	protected static Blend m_blImageBackground;

	protected static Blend m_blButtonFlash;

	protected static Blend m_blCaption;

	protected static Blend m_blScrollerBackground;

	protected static Blend m_blStandardScrollButton;

	protected static Blend m_blScroller;

	private static Blend m_blGroupedBackGroundCollapsed;

	private static Blend m_blGroupedBackGround;

	private static Graphics m_gCaption;

	private static StringFormat m_sfCaption;

	private ERENDERTYPE m_eRenderType;

	private int m_refCounter;

	private Hashtable m_htPens;

	private Hashtable m_htBrushes;

	protected Hashtable m_htBitmaps;

	private ComboBoxRenderer m_ComboBoxRenderer;

	private static Hashtable m_htControls;

	private static object m_controlsLock;

	private static int LAUNCHER_WIDTH;

	private static int LAUNCHER_HEIGHT;

	private static int ARROW_WIDTH;

	private static int ARROW_HEIGHT;

	public ERENDERTYPE RenderType
	{
		get
		{
			return m_eRenderType;
		}
		set
		{
			m_eRenderType = value;
		}
	}

	internal Office12ColorTable OfficeColorTable => base.ColorTable as Office12ColorTable;

	protected Color CaptionText => OfficeColorTable.CaptionText;

	protected Color CaptionGradientBegin => OfficeColorTable.CaptionGradientBegin;

	protected Color CaptionGradientEnd => OfficeColorTable.CaptionGradientEnd;

	protected Color CaptionHighlightGradientBegin => OfficeColorTable.CaptionHighlightGradientBegin;

	protected Color CaptionHighlightGradientEnd => OfficeColorTable.CaptionHighlightGradientEnd;

	protected Color ToolStripHighlightGradientBegin => OfficeColorTable.ToolStripHighlightGradientBegin;

	protected Color ToolStripHighlightGradientEnd => OfficeColorTable.ToolStripHighlightGradientEnd;

	protected Color LauncherBackground => OfficeColorTable.LauncherBackground;

	protected Color LauncherText => OfficeColorTable.LauncherText;

	protected Color LauncherTextSelected => OfficeColorTable.LauncherTextSelected;

	protected Color GroupGradientBegin => OfficeColorTable.GroupGradientBegin;

	protected Color GroupGradientEnd => OfficeColorTable.GroupGradientEnd;

	protected Color BorderColor
	{
		get
		{
			if (base.ColorTable is Office12ColorTable office12ColorTable)
			{
				return office12ColorTable.ToolStripBorder;
			}
			return SystemColors.ControlDark;
		}
	}

	protected Pen ToolStripBorder => GetKnownPen(EPEN.epToolStripBorder, base.ColorTable.ToolStripBorder, 1);

	protected Pen MenuBorder => GetKnownPen(EPEN.epMenuBorder, base.ColorTable.MenuBorder, 1);

	protected Pen MenuItemBorder => GetKnownPen(EPEN.epMenuItemBorder, base.ColorTable.MenuItemBorder, 1);

	protected Pen MenuStripBorder
	{
		get
		{
			Color color = ((base.ColorTable is Office12ColorTable office12ColorTable) ? office12ColorTable.MenuStripGradientMiddle : base.ColorTable.MenuBorder);
			return GetKnownPen(EPEN.epMenuStripBorder, color, 1);
		}
	}

	protected Pen MenuItemPressedGradientEnd => GetKnownPen(EPEN.epMenuItemPressedGradientEnd, base.ColorTable.MenuItemPressedGradientEnd, 1);

	protected Pen ButtonPressedGradientBegin => GetKnownPen(EPEN.epButtonPressedGradientBegin, base.ColorTable.ButtonPressedGradientBegin, 1);

	protected Pen ButtonPressedGradientEnd => GetKnownPen(EPEN.epButtonPressedGradientEnd, base.ColorTable.ButtonPressedGradientEnd, 1);

	protected Pen ButtonSelectedGradientEnd => GetKnownPen(EPEN.epButtonSelectedGradientEnd, base.ColorTable.ButtonSelectedGradientEnd, 1);

	protected Pen ButtonSelectedBorder
	{
		get
		{
			Color color = Color.FromArgb(128, base.ColorTable.ButtonSelectedBorder);
			return GetKnownPen(EPEN.epButtonSelectedBorder, color, 1);
		}
	}

	protected Pen ButtonPressedBorder => GetKnownPen(EPEN.epButtonPressedBorder, base.ColorTable.ButtonPressedBorder, 1);

	protected Pen CollapsedBorderPen => GetKnownPen(EPEN.epCollapsedBorder, Color.FromArgb(16, 0, 0, 0), 1);

	protected Pen ImageBorderPen => GetKnownPen(EPEN.epImageBorder, Color.FromArgb(32, 0, 0, 0), 1);

	protected Pen ButtonHighlightBorder
	{
		get
		{
			Color alphaBlendedColor = Office12ColorTable.GetAlphaBlendedColor(Color.Transparent, Color.White, 128);
			return GetKnownPen(EPEN.epButtonHighlightBorder, alphaBlendedColor, 1);
		}
	}

	protected Pen ButtonHighlightGrouped => GetKnownPen(EPEN.epHighlightGrouped, Office12ColorTable.GetAlphaBlendedColor(Color.White, OfficeColorTable.GroupBorder, 160), 1);

	protected Pen GroupBorder => GetKnownPen(EPEN.epGroupBorder, OfficeColorTable.GroupBorder, 1);

	protected Pen LauncherBorder => GetKnownPen(EPEN.epLauncherBorder, OfficeColorTable.LauncherBorder, 2);

	protected Pen CheckBorder => GetKnownPen(EPEN.epCheckBorder, OfficeColorTable.CheckBorder, 1);

	protected Brush Shadow => GetKnownBrush(EBRUSH.ebShadow, Color.FromArgb(128, Color.Black));

	protected Brush ToolStripDropDownBackground => GetKnownBrush(EBRUSH.ebToolStripDropDownBackground, base.ColorTable.ToolStripDropDownBackground);

	protected Brush CheckBackground => GetKnownBrush(EBRUSH.ebCheckBackground, base.ColorTable.CheckBackground);

	protected Bitmap ArrowDownImage
	{
		get
		{
			Bitmap bitmap = m_htBitmaps[EBITMAP.ebArrowDown] as Bitmap;
			if (bitmap == null)
			{
				bitmap = new Bitmap(ARROW_HEIGHT, ARROW_HEIGHT + 1);
				using (Graphics graphics = Graphics.FromImage(bitmap))
				{
					graphics.Clear(Color.Transparent);
					Rectangle rect = new Rectangle(0, 0, ARROW_WIDTH, 1);
					using Region region = new Region(rect);
					rect.Offset(0, 3);
					while (rect.X < rect.Right && rect.Y < ARROW_HEIGHT)
					{
						region.Union(rect);
						rect.Inflate(-1, 0);
						rect.Y++;
					}
					graphics.FillRegion(SystemBrushes.ControlText, region);
					using Region region2 = region.Clone();
					region2.Translate(0, 1);
					region2.Exclude(region);
					graphics.FillRegion(SystemBrushes.ButtonHighlight, region2);
				}
				m_htBitmaps[EBITMAP.ebArrowDown] = bitmap;
			}
			return bitmap;
		}
	}

	protected Bitmap ArrowOverflow
	{
		get
		{
			Bitmap bitmap = m_htBitmaps[EBITMAP.ebArrowOverflow] as Bitmap;
			if (bitmap == null)
			{
				bitmap = new Bitmap(ARROW_HEIGHT + 1, ARROW_HEIGHT + 1);
				using (Graphics graphics = Graphics.FromImage(bitmap))
				{
					graphics.Clear(Color.Transparent);
					graphics.SmoothingMode = SmoothingMode.AntiAlias;
					Rectangle rect = new Rectangle(0, 2, 1, 3);
					using (Region region = new Region(rect))
					{
						region.Union(rect);
						rect.Inflate(0, -1);
						rect.X++;
						region.Union(rect);
						graphics.FillRegion(SystemBrushes.ControlText, region);
					}
					rect = new Rectangle(4, 2, 1, 3);
					using (Region region2 = new Region(rect))
					{
						region2.Union(rect);
						rect.Inflate(0, -1);
						rect.X++;
						region2.Union(rect);
						graphics.FillRegion(SystemBrushes.ControlText, region2);
					}
					rect = new Rectangle(0, 1, 1, 1);
					using (Region region3 = new Region(rect))
					{
						region3.Union(rect);
						rect.X++;
						rect.Y++;
						region3.Union(rect);
						rect.X++;
						rect.Y++;
						region3.Union(rect);
						rect.X--;
						rect.Y++;
						region3.Union(rect);
						rect.X--;
						rect.Y++;
						region3.Union(rect);
						graphics.FillRegion(SystemBrushes.ButtonHighlight, region3);
					}
					rect = new Rectangle(4, 1, 1, 1);
					using Region region4 = new Region(rect);
					region4.Union(rect);
					rect.X++;
					rect.Y++;
					region4.Union(rect);
					rect.X++;
					rect.Y++;
					region4.Union(rect);
					rect.X--;
					rect.Y++;
					region4.Union(rect);
					rect.X--;
					rect.Y++;
					region4.Union(rect);
					graphics.FillRegion(SystemBrushes.ButtonHighlight, region4);
				}
				m_htBitmaps[EBITMAP.ebArrowOverflow] = bitmap;
			}
			return bitmap;
		}
	}

	protected Bitmap ArrowRightImage
	{
		get
		{
			Bitmap bitmap = m_htBitmaps[EBITMAP.ebArrowRight] as Bitmap;
			if (bitmap == null)
			{
				bitmap = new Bitmap(ARROW_HEIGHT + 1, ARROW_WIDTH);
				using (Graphics graphics = Graphics.FromImage(bitmap))
				{
					graphics.Clear(Color.Transparent);
					Rectangle rect = new Rectangle(0, 0, 1, ARROW_WIDTH);
					using Region region = new Region(rect);
					rect.Offset(3, 0);
					while (rect.Y < rect.Bottom && rect.X < ARROW_HEIGHT)
					{
						region.Union(rect);
						rect.Inflate(0, -1);
						rect.X++;
					}
					graphics.FillRegion(SystemBrushes.ControlText, region);
					using Region region2 = region.Clone();
					region2.Translate(1, 0);
					region2.Exclude(region);
					graphics.FillRegion(SystemBrushes.ButtonHighlight, region2);
				}
				m_htBitmaps[EBITMAP.ebArrowRight] = bitmap;
			}
			return bitmap;
		}
	}

	protected Bitmap SelectedFlashImage
	{
		get
		{
			Bitmap bitmap = m_htBitmaps[EBITMAP.ebSelectedFlash] as Bitmap;
			if (bitmap == null)
			{
				bitmap = GetFlashImage(base.ColorTable.ButtonSelectedHighlight, new Size(20, 20));
				m_htBitmaps[EBITMAP.ebSelectedFlash] = bitmap;
			}
			return bitmap;
		}
	}

	protected Bitmap PressedFlashImage
	{
		get
		{
			Bitmap bitmap = m_htBitmaps[EBITMAP.ebPressedFlash] as Bitmap;
			if (bitmap == null)
			{
				bitmap = GetFlashImage(base.ColorTable.ButtonPressedHighlight, new Size(20, 20));
				m_htBitmaps[EBITMAP.ebPressedFlash] = bitmap;
			}
			return bitmap;
		}
	}

	protected Bitmap CheckedFlashImage
	{
		get
		{
			Bitmap bitmap = m_htBitmaps[EBITMAP.ebCheckedFlash] as Bitmap;
			if (bitmap == null)
			{
				bitmap = GetFlashImage(base.ColorTable.ButtonCheckedHighlight, new Size(20, 20));
				m_htBitmaps[EBITMAP.ebCheckedFlash] = bitmap;
			}
			return bitmap;
		}
	}

	protected Bitmap CheckButton
	{
		get
		{
			Bitmap bitmap = m_htBitmaps[EBITMAP.ebCheckButton] as Bitmap;
			if (bitmap == null)
			{
				Rectangle rectangle = new Rectangle(0, 0, 10, 14);
				bitmap = new Bitmap(rectangle.Width, rectangle.Height);
				using (Graphics graphics = Graphics.FromImage(bitmap))
				{
					graphics.Clear(Color.Transparent);
					Point[] points = new Point[3]
					{
						new Point(1, 8),
						new Point(3, 12),
						new Point(8, 1)
					};
					GraphicsPath graphicsPath = new GraphicsPath();
					graphicsPath.AddLines(points);
					graphics.SmoothingMode = SmoothingMode.AntiAlias;
					graphics.DrawLines(Pens.MidnightBlue, points);
				}
				m_htBitmaps[EBITMAP.ebCheckButton] = bitmap;
			}
			return bitmap;
		}
	}

	protected static StringFormat CaptionFormat
	{
		get
		{
			if (m_sfCaption == null)
			{
				m_sfCaption = new StringFormat();
				m_sfCaption.HotkeyPrefix = HotkeyPrefix.Hide;
				m_sfCaption.Alignment = StringAlignment.Near;
				m_sfCaption.Trimming = StringTrimming.Character;
				m_sfCaption.FormatFlags |= StringFormatFlags.MeasureTrailingSpaces;
			}
			return m_sfCaption;
		}
	}

	protected static Blend ToolBarBlend => m_blToolBar;

	static Office12ToolStripRenderer()
	{
		m_sfCaption = null;
		LAUNCHER_WIDTH = 14;
		LAUNCHER_HEIGHT = 14;
		ARROW_WIDTH = 5;
		ARROW_HEIGHT = 6;
		m_blMenuBar = new Blend();
		m_blMenuBar.Positions = new float[3] { 0f, 0.5f, 1f };
		m_blMenuBar.Factors = new float[3] { 0f, 1f, 0f };
		m_blStatusBar = new Blend();
		m_blStatusBar.Positions = new float[4] { 0f, 0.5f, 0.55f, 1f };
		m_blStatusBar.Factors = new float[4] { 0f, 0.2f, 0.6f, 1f };
		m_blToolBar = new Blend();
		m_blToolBar.Positions = new float[3] { 0f, 0.3f, 1f };
		m_blToolBar.Factors = new float[3] { 1f, 0f, 1f };
		m_blMenuItemUp = new Blend();
		m_blMenuItemUp.Positions = new float[4] { 0f, 0.4f, 0.5f, 1f };
		m_blMenuItemUp.Factors = new float[4] { 0f, 0.2f, 1f, 0.4f };
		m_blMenuItemDown = new Blend();
		m_blMenuItemDown.Positions = new float[4] { 0f, 0.3f, 0.32f, 1f };
		m_blMenuItemDown.Factors = new float[4] { 1f, 0.5f, 0.4f, 0f };
		m_blGrouped = new Blend();
		m_blGrouped.Positions = new float[4] { 0f, 0.4f, 0.4f, 1f };
		m_blGrouped.Factors = new float[4] { 0.8f, 1f, 0f, 0.4f };
		m_blScrollButton = new Blend();
		m_blScrollButton.Positions = new float[4] { 0f, 0.5f, 0.5f, 1f };
		m_blScrollButton.Factors = new float[4] { 0.2f, 0.15f, 1f, 0.5f };
		m_blButtonSelected = new Blend();
		m_blButtonSelected.Positions = new float[4] { 0f, 0.4f, 0.4f, 1f };
		m_blButtonSelected.Factors = new float[4] { 0.2f, 0f, 0.8f, 0.2f };
		m_blButtonCollapsed = new Blend();
		m_blButtonCollapsed.Positions = new float[4] { 0f, 0.15f, 0.15f, 1f };
		m_blButtonCollapsed.Factors = new float[4] { 1f, 0.8f, 0f, 1f };
		m_blButtonShadow = new Blend();
		m_blButtonShadow.Positions = new float[6] { 0f, 0.2f, 0.4f, 0.6f, 0.8f, 1f };
		m_blButtonShadow.Factors = new float[6] { 0f, 0.3f, 0.6f, 0.8f, 0.95f, 1f };
		m_blImageBackground = new Blend();
		m_blImageBackground.Positions = new float[4] { 0f, 0.8f, 0.8f, 1f };
		m_blImageBackground.Factors = new float[4] { 0f, 0.2f, 1f, 1f };
		m_blButtonFlash = new Blend();
		m_blButtonFlash.Positions = new float[3] { 0f, 0.4f, 1f };
		m_blButtonFlash.Factors = new float[3] { 0f, 0.6f, 1f };
		m_blCaption = new Blend();
		m_blCaption.Positions = new float[3] { 0f, 0.2f, 1f };
		m_blCaption.Factors = new float[3] { 0f, 0.5f, 1f };
		m_blScrollerBackground = new Blend();
		m_blScrollerBackground.Positions = new float[3] { 0f, 0.35f, 1f };
		m_blScrollerBackground.Factors = new float[3] { 0.3f, 0.6f, 0.4f };
		m_blStandardScrollButton = new Blend();
		m_blStandardScrollButton.Positions = new float[4] { 0f, 0.5f, 0.5f, 1f };
		m_blStandardScrollButton.Factors = new float[4] { 0f, 0.2f, 1f, 0.4f };
		m_blScroller = new Blend();
		m_blScroller.Positions = new float[4] { 0f, 0.5f, 0.5f, 1f };
		m_blScroller.Factors = new float[4] { 0.3f, 0f, 1f, 0.4f };
		m_blGroupedBackGroundCollapsed = new Blend();
		m_blGroupedBackGroundCollapsed.Positions = new float[6] { 0f, 0.5f, 0.5f, 0.92f, 0.92f, 1f };
		m_blGroupedBackGroundCollapsed.Factors = new float[6] { 0f, 0f, 0.1f, 0.5f, 0.92f, 1f };
		m_blGroupedBackGround = new Blend();
		m_blGroupedBackGround.Positions = new float[4] { 0f, 0.1f, 0.2f, 1f };
		m_blGroupedBackGround.Factors = new float[4] { 0.6f, 0.8f, 0.9f, 0.95f };
		m_gCaption = Graphics.FromImage(new Bitmap(1, 1));
		m_gCaption.TextRenderingHint = TextRenderingHint.AntiAliasGridFit;
		m_htControls = new Hashtable();
		m_controlsLock = new object();
	}

	public Office12ToolStripRenderer()
		: this(new Office12ColorTable(), ERENDERTYPE.Normal)
	{
	}

	public Office12ToolStripRenderer(ERENDERTYPE erType)
		: this(new Office12ColorTable(), erType)
	{
	}

	public Office12ToolStripRenderer(Office12ColorTable colorTable)
		: this(colorTable, ERENDERTYPE.Normal)
	{
	}

	public Office12ToolStripRenderer(Office12ColorTable colorTable, ERENDERTYPE erType)
		: base(colorTable)
	{
		base.RoundedEdges = false;
		m_eRenderType = erType;
		m_htPens = new Hashtable(21);
		m_htBrushes = new Hashtable(3);
		m_htBitmaps = new Hashtable(23);
		m_ComboBoxRenderer = new ComboBoxRenderer(this);
	}

	public virtual int GetBorderWidth(ToolStrip toolStrip)
	{
		return GetBorderStyle(toolStrip) switch
		{
			ToolStripBorderStyle.StaticEdge => 1, 
			ToolStripBorderStyle.Etched => 2, 
			_ => 0, 
		};
	}

	public virtual int GetCaptionHeight(ToolStrip toolStrip)
	{
		int num = 0;
		if (HasCaption(toolStrip))
		{
			num = TextRenderer.MeasureText("X", GetCaptionFont(toolStrip)).Height;
			if (toolStrip is IToolStripExSupport { ShowLauncher: not false } && num < LAUNCHER_HEIGHT)
			{
				num = LAUNCHER_HEIGHT;
			}
			if (toolStrip is IToolStripExSupport2 toolStripExSupport2 && toolStripExSupport2.CaptionMinHeight > num)
			{
				num = toolStripExSupport2.CaptionMinHeight;
			}
		}
		return num;
	}

	public virtual Rectangle GetLauncherBounds(ToolStrip toolStrip)
	{
		Rectangle result = Rectangle.Empty;
		if (toolStrip != null && toolStrip.IsHandleCreated && HasLauncher(toolStrip))
		{
			Rectangle captionBounds = GetCaptionBounds(toolStrip);
			if (!captionBounds.IsEmpty)
			{
				bool bVertical = toolStrip.Dock == DockStyle.Left || toolStrip.Dock == DockStyle.Right;
				result = GetLauncherBounds(captionBounds, bVertical);
			}
		}
		return result;
	}

	protected virtual Rectangle GetLauncherBounds(Rectangle rcCaption, bool bVertical)
	{
		Rectangle result = default(Rectangle);
		if (!bVertical)
		{
			result.X = rcCaption.Right - (LAUNCHER_WIDTH + 1);
			result.Y = rcCaption.Y;
			result.Width = LAUNCHER_WIDTH + 1;
			result.Height = LAUNCHER_HEIGHT + 1;
		}
		else
		{
			result.X = rcCaption.Left;
			result.Y = rcCaption.Y;
			result.Width = LAUNCHER_HEIGHT + 1;
			result.Height = LAUNCHER_WIDTH + 1;
		}
		return result;
	}

	protected virtual bool HasCaption(ToolStrip toolStrip)
	{
		bool result = false;
		if (toolStrip != null)
		{
			result = ((!(toolStrip is IToolStripExSupport toolStripExSupport)) ? (toolStrip.GetType() == typeof(ToolStrip) && RenderType != ERENDERTYPE.TabBar) : toolStripExSupport.ShowCaption);
		}
		return result;
	}

	protected virtual bool HasLauncher(ToolStrip toolStrip)
	{
		bool result = false;
		if (toolStrip is IToolStripExSupport toolStripExSupport)
		{
			result = toolStripExSupport.ShowCaption && toolStripExSupport.ShowLauncher;
		}
		return result;
	}

	protected virtual void DrawCaption(ToolStrip toolStrip)
	{
		if (!HasCaption(toolStrip))
		{
			return;
		}
		Rectangle rc = GetCaptionBounds(toolStrip);
		if (rc.Width <= 0 || rc.Height <= 0)
		{
			return;
		}
		IntPtr handle = toolStrip.Handle;
		RECT rect = default(RECT);
		if (!WindowsAPI.GetWindowRect(handle, ref rect))
		{
			return;
		}
		rc.X -= rect.left;
		rc.Y -= rect.top;
		IntPtr windowDC = WindowsAPI.GetWindowDC(handle);
		if (!(windowDC != IntPtr.Zero))
		{
			return;
		}
		if (toolStrip.Dock == DockStyle.Left || toolStrip.Dock == DockStyle.Right)
		{
			Matrix matrix = new Matrix();
			matrix.Rotate(-90f, MatrixOrder.Append);
			matrix.Translate(rc.X, rc.Bottom, MatrixOrder.Append);
			XFORM xform = new XFORM
			{
				eM11 = matrix.Elements[0],
				eM12 = matrix.Elements[1],
				eM21 = matrix.Elements[2],
				eM22 = matrix.Elements[3],
				eDx = matrix.Elements[4],
				eDy = matrix.Elements[5]
			};
			SetGraphicsMode(windowDC, 2);
			SetWorldTransform(windowDC, ref xform);
			rc = new Rectangle(0, 0, rc.Height, rc.Width);
		}
		using (BufferedGraphics bufferedGraphics = BufferedGraphicsManager.Current.Allocate(windowDC, rc))
		{
			Graphics graphics = bufferedGraphics.Graphics;
			bool isSelected = GetIsSelected(toolStrip);
			Color pColor = Color.Empty;
			bool flag = IsGroupedToolStrip(toolStrip, ref pColor);
			Color cl = ((!isSelected) ? (flag ? OfficeColorTable.CaptionGroupedGradientBegin : OfficeColorTable.CaptionGradientBegin) : (flag ? OfficeColorTable.CaptionGroupedHighlightGradientBegin : OfficeColorTable.CaptionHighlightGradientBegin));
			Color cl2 = ((!isSelected) ? (flag ? OfficeColorTable.CaptionGroupedGradientEnd : OfficeColorTable.CaptionGradientEnd) : (flag ? OfficeColorTable.CaptionGroupedHighlightGradientEnd : OfficeColorTable.CaptionHighlightGradientEnd));
			using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, cl, cl2))
			{
				linearGradientBrush.Blend = m_blCaption;
				linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
				graphics.FillRectangle(linearGradientBrush, rc);
			}
			Font captionFont = GetCaptionFont(toolStrip);
			Rectangle bounds = new Rectangle(0, 0, rc.Width, rc.Height);
			if (HasLauncher(toolStrip))
			{
				bounds.Width -= LAUNCHER_WIDTH;
			}
			TextFormatFlags captionFormat = GetCaptionFormat(toolStrip);
			Color captionText = CaptionText;
			switch (GetCaptionTextStyle(toolStrip))
			{
			case CaptionTextStyle.Shadow:
			{
				bounds.Offset(1, 1);
				Color alphaBlendedColor = Office12ColorTable.GetAlphaBlendedColor(Color.Black, flag ? OfficeColorTable.CaptionGroupedGradientBegin : OfficeColorTable.CaptionGradientBegin, 48);
				TextRenderer.DrawText(graphics, toolStrip.Text, captionFont, bounds, alphaBlendedColor, captionFormat);
				bounds.Offset(-2, -2);
				break;
			}
			case CaptionTextStyle.Etched:
				if (captionText.GetBrightness() < 0.9f)
				{
					bounds.Offset(1, 1);
					TextRenderer.DrawText(graphics, toolStrip.Text, captionFont, bounds, Color.White, captionFormat);
					bounds.Offset(-1, -1);
				}
				else
				{
					bounds.Offset(-1, -1);
					TextRenderer.DrawText(graphics, toolStrip.Text, captionFont, bounds, Color.Black, captionFormat);
					bounds.Offset(1, 1);
				}
				break;
			}
			TextRenderer.DrawText(graphics, toolStrip.Text, captionFont, bounds, captionText, captionFormat);
			PaintLauncher(graphics, rc, toolStrip as IToolStripExSupport2);
			bufferedGraphics.Render();
		}
		WindowsAPI.ReleaseDC(handle, windowDC);
	}

	protected virtual void DrawBorders(ToolStrip ts)
	{
		switch (GetBorderStyle(ts))
		{
		case ToolStripBorderStyle.StaticEdge:
			DrawStaticEdgeBorders(ts);
			break;
		case ToolStripBorderStyle.Etched:
			DrawEtchedBorders(ts);
			break;
		}
	}

	protected virtual void DrawStaticEdgeBorders(ToolStrip ts)
	{
		IntPtr handle = ts.Handle;
		RECT rect = default(RECT);
		if (!WindowsAPI.GetWindowRect(handle, ref rect))
		{
			return;
		}
		IntPtr windowDC = WindowsAPI.GetWindowDC(handle);
		if (!(windowDC != IntPtr.Zero))
		{
			return;
		}
		Rectangle rectangle = new Rectangle(0, 0, rect.Width, rect.Height);
		using (Graphics graphics = Graphics.FromHdc(windowDC))
		{
			Color color = (IsGroupedToolStrip(ts) ? OfficeColorTable.RibbonPanelGroupedBorderEnd : BorderColor);
			using (Pen pen = new Pen(color))
			{
				Point[] points = new Point[3]
				{
					new Point(rectangle.X, rectangle.Bottom - 2),
					new Point(rectangle.X, rectangle.Y),
					new Point(rectangle.Right - 2, rectangle.Y)
				};
				graphics.DrawLines(pen, points);
			}
			using Pen pen2 = new Pen(Color.White);
			Point[] points2 = new Point[3]
			{
				new Point(rectangle.Right - 1, rectangle.Y),
				new Point(rectangle.Right - 1, rectangle.Bottom - 1),
				new Point(rectangle.X, rectangle.Bottom - 1)
			};
			graphics.DrawLines(pen2, points2);
		}
		WindowsAPI.ReleaseDC(handle, windowDC);
	}

	protected virtual void DrawEtchedBorders(ToolStrip ts)
	{
		IntPtr handle = ts.Handle;
		RECT rect = default(RECT);
		if (!WindowsAPI.GetWindowRect(handle, ref rect))
		{
			return;
		}
		IntPtr windowDC = WindowsAPI.GetWindowDC(handle);
		if (!(windowDC != IntPtr.Zero))
		{
			return;
		}
		Rectangle rectangle = new Rectangle(0, 0, rect.Width, rect.Height);
		WindowsAPI.ExcludeClipRect(windowDC, rectangle.X + 2, rectangle.Y + 2, rectangle.Right - 2, rectangle.Bottom - 2);
		using (BufferedGraphics bufferedGraphics = BufferedGraphicsManager.Current.Allocate(windowDC, rectangle))
		{
			Graphics graphics = bufferedGraphics.Graphics;
			GraphicsState gstate = graphics.Save();
			using (Region region = RendererUtils.GetRoundedRegion(rectangle, 1))
			{
				Color color = BorderColor;
				Color pColor = Color.Empty;
				bool flag = IsGroupedToolStrip(ts, ref pColor);
				graphics.SmoothingMode = SmoothingMode.AntiAlias;
				Color color2 = ColorTranslator.FromHtml("#E7EEF6");
				graphics.FillRegion(new SolidBrush(color2), region);
				if (flag)
				{
					ToolStripEx toolStripEx = ts as ToolStripEx;
					bool isSelected = GetIsSelected(ts);
					color = OfficeColorTable.RibbonPanelGroupedBorderEnd;
					if (toolStripEx != null && toolStripEx.State == ToolStripEx.ToolStripExState.Collapsed && isSelected && !toolStripEx.DropDownButton.DropDown.Visible)
					{
						using Pen pen = new Pen(GetGroupedBackgroundCollapsedBrush(Color.White, pColor, rectangle.Height));
						graphics.DrawPolygon(pen, RendererUtils.GetRoundedPolygon(Rectangle.Inflate(rectangle, -1, -1), 1));
					}
				}
				using Pen pen2 = new Pen(color);
				if (!flag)
				{
					rectangle.Width--;
					rectangle.Height--;
				}
				graphics.DrawPolygon(pen2, RendererUtils.GetRoundedPolygon(rectangle, 1));
			}
			graphics.Restore(gstate);
			bufferedGraphics.Render();
		}
		WindowsAPI.ReleaseDC(handle, windowDC);
	}

	protected virtual Image GetLauncherImage(IToolStripExSupport2 iRibbon)
	{
		bool launcherSelected = iRibbon.LauncherSelected;
		LauncherStyle launcherStyle = iRibbon.LauncherStyle;
		if (launcherStyle == LauncherStyle.Office2007)
		{
			return GetLauncherImage(launcherSelected ? EBITMAP.ebLauncher2007Selected : EBITMAP.ebLauncher2007);
		}
		return GetLauncherImage(launcherSelected ? EBITMAP.ebLauncherSelected : EBITMAP.ebLauncher);
	}

	protected virtual Image GetLauncherImage(EBITMAP eBitmap)
	{
		Image image = m_htBitmaps[eBitmap] as Image;
		if (image == null)
		{
			Rectangle rect = new Rectangle(0, 0, LAUNCHER_WIDTH, LAUNCHER_HEIGHT);
			image = new Bitmap(rect.Width, rect.Height);
			using (Graphics graphics = Graphics.FromImage(image))
			{
				graphics.Clear(Color.Transparent);
				switch (eBitmap)
				{
				default:
					goto end_IL_004b;
				case EBITMAP.ebLauncher:
				case EBITMAP.ebLauncherSelected:
				{
					Rectangle rc2 = Rectangle.Inflate(rect, -1, -1);
					rc2.Width++;
					rc2.Height++;
					Point[] launcherPolygon = GetLauncherPolygon(rc2);
					using (GraphicsPath graphicsPath = new GraphicsPath())
					{
						graphicsPath.AddPolygon(launcherPolygon);
						using Region region = new Region(graphicsPath);
						graphics.Clip = region;
						using (Brush brush2 = new SolidBrush(LauncherBackground))
						{
							graphics.FillRegion(brush2, region);
						}
						rc2.X += rc2.Width / 2 - 1;
						rc2.Y++;
						rc2.Width /= 2;
						rc2.Height /= 2;
						using (Region region2 = new Region(new Rectangle(rc2.X + rc2.Width / 2 - 1, rc2.Y, 2, rc2.Height)))
						{
							region2.Union(new Rectangle(rc2.X, rc2.Y + rc2.Height / 2 - 1, rc2.Width, 2));
							Color color = ((eBitmap == EBITMAP.ebLauncher) ? LauncherText : LauncherTextSelected);
							using SolidBrush brush3 = new SolidBrush(color);
							graphics.FillRegion(brush3, region2);
						}
						graphics.DrawPolygon(LauncherBorder, launcherPolygon);
					}
					goto end_IL_004b;
				}
				case EBITMAP.ebLauncher2007Selected:
				{
					graphics.DrawRectangle(LauncherBorder, rect);
					Rectangle rc = Rectangle.Inflate(rect, -1, -1);
					using (LinearGradientBrush brush = GetVerticalBrush(ref rc, LauncherBackground, Color.White))
					{
						graphics.FillRectangle(brush, rc);
					}
					break;
				}
				case EBITMAP.ebLauncher2007:
					break;
				}
				Rectangle rect2 = Rectangle.Inflate(rect, -3, -3);
				rect2.Offset(1, 1);
				using (Region region3 = new Region(rect2))
				{
					region3.Exclude(new Rectangle(rect2.X + 1, rect2.Y + 1, rect2.Width - 1, 3));
					region3.Exclude(new Rectangle(rect2.X + 1, rect2.Y + 1, 3, rect2.Height - 1));
					region3.Exclude(new Rectangle(rect2.X + 5, rect2.Y + 4, 2, 1));
					region3.Exclude(new Rectangle(rect2.X + 4, rect2.Y + 5, 1, 2));
					region3.Exclude(new Rectangle(rect2.X, rect2.Y + 6, 1, 6));
					region3.Exclude(new Rectangle(rect2.X + 6, rect2.Y, 6, 1));
					graphics.FillRegion(Brushes.White, region3);
					region3.Translate(-1, -1);
					Color color2 = ((eBitmap == EBITMAP.ebLauncher2007) ? LauncherText : LauncherTextSelected);
					if (base.ColorTable is Office12ColorTable || base.ColorTable is OfficeBlack)
					{
						color2 = ColorTranslator.FromHtml("#656870");
					}
					if (base.ColorTable is OfficeBlue)
					{
						color2 = ColorTranslator.FromHtml("#668EAF");
					}
					using SolidBrush brush4 = new SolidBrush(color2);
					graphics.FillRegion(brush4, region3);
				}
				end_IL_004b:;
			}
			m_htBitmaps[eBitmap] = image;
		}
		return image;
	}

	protected virtual void PaintLauncher(Graphics g, Rectangle rcCaption, IToolStripExSupport2 iRibbon)
	{
		if (iRibbon == null || !iRibbon.ShowLauncher)
		{
			return;
		}
		Rectangle launcherBounds = GetLauncherBounds(rcCaption, bVertical: false);
		if (launcherBounds.Width > 0 && launcherBounds.Height > 0)
		{
			Image launcherImage = GetLauncherImage(iRibbon);
			if (launcherImage != null)
			{
				g.DrawImage(launcherImage, launcherBounds.Location);
			}
		}
	}

	protected virtual ToolStripBorderStyle GetBorderStyle(ToolStrip ts)
	{
		if (ts is IToolStripExSupport2 toolStripExSupport)
		{
			return toolStripExSupport.BorderStyle;
		}
		return ToolStripBorderStyle.Default;
	}

	protected virtual CaptionStyle GetCaptionStyle(ToolStrip ts)
	{
		CaptionStyle result = CaptionStyle.Top;
		if (ts is IToolStripExSupport2)
		{
			result = (ts as IToolStripExSupport2).CaptionStyle;
		}
		return result;
	}

	protected virtual CaptionTextStyle GetCaptionTextStyle(ToolStrip ts)
	{
		CaptionTextStyle result = CaptionTextStyle.Shadow;
		if (ts is IToolStripExSupport2)
		{
			result = (ts as IToolStripExSupport2).CaptionTextStyle;
		}
		return result;
	}

	protected virtual LauncherStyle GetLauncherStyle(ToolStrip ts)
	{
		LauncherStyle result = LauncherStyle.Office12;
		if (ts is IToolStripExSupport2)
		{
			result = (ts as IToolStripExSupport2).LauncherStyle;
		}
		return result;
	}

	protected virtual void ApplyBorders(ToolStrip ts, ref RECT rc)
	{
		int borderWidth = GetBorderWidth(ts);
		if (borderWidth > 0)
		{
			WindowsAPI.InflateRect(ref rc, -borderWidth, -borderWidth);
		}
	}

	protected virtual void ApplyCaption(ToolStrip ts, ref RECT rc)
	{
		int captionHeight = GetCaptionHeight(ts);
		if (captionHeight <= 0)
		{
			return;
		}
		if (ts.Dock == DockStyle.Left || ts.Dock == DockStyle.Right)
		{
			CaptionStyle captionStyle = GetCaptionStyle(ts);
			if (captionStyle == CaptionStyle.Bottom)
			{
				rc.right -= captionHeight;
			}
			else
			{
				rc.left += captionHeight;
			}
		}
		else
		{
			CaptionStyle captionStyle2 = GetCaptionStyle(ts);
			if (captionStyle2 == CaptionStyle.Bottom)
			{
				rc.bottom -= captionHeight;
			}
			else
			{
				rc.top += captionHeight;
			}
		}
	}

	protected virtual Rectangle GetCaptionBounds(ToolStrip ts)
	{
		Rectangle result = Rectangle.Empty;
		int captionHeight = GetCaptionHeight(ts);
		if (captionHeight > 0)
		{
			result = ts.RectangleToScreen(ts.ClientRectangle);
			if (ts.Dock == DockStyle.Left || ts.Dock == DockStyle.Right)
			{
				CaptionStyle captionStyle = GetCaptionStyle(ts);
				if (captionStyle == CaptionStyle.Bottom)
				{
					result.X = result.Right;
					result.Width = captionHeight;
				}
				else
				{
					result.X -= captionHeight;
					result.Width = captionHeight;
				}
			}
			else
			{
				CaptionStyle captionStyle2 = GetCaptionStyle(ts);
				if (captionStyle2 == CaptionStyle.Bottom)
				{
					result.Y = result.Bottom;
					result.Height = captionHeight;
				}
				else
				{
					result.Y -= captionHeight;
					result.Height = captionHeight;
				}
			}
		}
		return result;
	}

	protected virtual TextFormatFlags GetCaptionFormat(ToolStrip ts)
	{
		TextFormatFlags textFormatFlags = TextFormatFlags.EndEllipsis | TextFormatFlags.VerticalCenter;
		if (ts is IToolStripExSupport2 toolStripExSupport)
		{
			switch (toolStripExSupport.CaptionAlignment)
			{
			case CaptionAlignment.Center:
				return textFormatFlags | TextFormatFlags.HorizontalCenter;
			case CaptionAlignment.Far:
				return textFormatFlags | TextFormatFlags.Right;
			}
		}
		return textFormatFlags;
	}

	protected virtual Font GetCaptionFont(ToolStrip ts)
	{
		if (ts is IToolStripExSupport2 toolStripExSupport)
		{
			return toolStripExSupport.CaptionFont;
		}
		return ts.Font;
	}

	protected override void Initialize(ToolStrip toolStrip)
	{
		base.Initialize(toolStrip);
		if (toolStrip != null)
		{
			Attach(toolStrip);
		}
	}

	protected override void InitializeItem(ToolStripItem item)
	{
		base.InitializeItem(item);
	}

	protected override void OnRenderToolStripBackground(ToolStripRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintToolStripBackground(e))
		{
			base.OnRenderToolStripBackground(e);
		}
	}

	protected override void OnRenderToolStripBorder(ToolStripRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintToolStripBorder(e))
		{
			base.OnRenderToolStripBorder(e);
		}
	}

	protected override void OnRenderMenuItemBackground(ToolStripItemRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintMenuItemBackground(e))
		{
			base.OnRenderMenuItemBackground(e);
		}
	}

	protected override void OnRenderImageMargin(ToolStripRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintImageMargin(e))
		{
			base.OnRenderImageMargin(e);
		}
	}

	protected override void OnRenderItemText(ToolStripItemTextRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintItemText(e))
		{
			base.OnRenderItemText(e);
		}
	}

	protected override void OnRenderItemImage(ToolStripItemImageRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintItemImage(e))
		{
			base.OnRenderItemImage(e);
		}
	}

	protected override void OnRenderItemCheck(ToolStripItemImageRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintItemCheck(e))
		{
			base.OnRenderItemCheck(e);
		}
	}

	protected override void OnRenderButtonBackground(ToolStripItemRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintButtonBackground(e))
		{
			base.OnRenderButtonBackground(e);
		}
	}

	protected override void OnRenderDropDownButtonBackground(ToolStripItemRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintDropDownButtonBackground(e))
		{
			base.OnRenderDropDownButtonBackground(e);
		}
	}

	protected override void OnRenderSplitButtonBackground(ToolStripItemRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintSplitButtonBackground(e))
		{
			base.OnRenderSplitButtonBackground(e);
		}
	}

	protected override void OnRenderOverflowButtonBackground(ToolStripItemRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintOverflowButtonBackground(e))
		{
			base.OnRenderOverflowButtonBackground(e);
		}
	}

	protected override void OnRenderSeparator(ToolStripSeparatorRenderEventArgs e)
	{
		base.OnRenderSeparator(e);
	}

	protected override void OnRenderArrow(ToolStripArrowRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintArrow(e))
		{
			base.OnRenderArrow(e);
		}
	}

	private void OnHandleCreated(object sender, EventArgs e)
	{
		if (sender is ToolStrip ts)
		{
			AssignHandle(ts);
		}
	}

	private void OnHandleDestroyed(object sender, EventArgs e)
	{
		if (sender is ToolStrip ts)
		{
			ReleaseHandle(ts);
		}
	}

	private void OnRendererChanged(object sender, EventArgs e)
	{
		if (sender is ToolStrip toolStrip && toolStrip.Renderer != this)
		{
			Detach(toolStrip);
		}
	}

	private void OnDockChanged(object sender, EventArgs e)
	{
		UpdateFrame(sender as ToolStrip);
	}

	private void OnLayoutCompleted(object sender, EventArgs e)
	{
		if (!(sender is ToolStrip toolStrip) || !HasCaption(toolStrip) || !toolStrip.AutoSize)
		{
			return;
		}
		bool flag = toolStrip.Dock == DockStyle.Left || toolStrip.Dock == DockStyle.Right;
		int num = (flag ? toolStrip.Padding.Left : toolStrip.Padding.Top);
		ToolStripItemCollection items = toolStrip.Items;
		int i = 0;
		for (int count = items.Count; i < count; i++)
		{
			ToolStripItem toolStripItem = items[i];
			if (toolStripItem.Placement == ToolStripItemPlacement.Main)
			{
				int num2 = (flag ? toolStripItem.Bounds.Right : toolStripItem.Bounds.Bottom);
				if (num2 > num)
				{
					num = num2;
				}
			}
		}
		if (flag)
		{
			num += toolStrip.Padding.Right + GetCaptionHeight(toolStrip);
			if (num != toolStrip.MinimumSize.Width)
			{
				toolStrip.MinimumSize = new Size(num, toolStrip.MinimumSize.Height);
			}
		}
		else
		{
			num += toolStrip.Padding.Bottom + GetCaptionHeight(toolStrip);
			if (num != toolStrip.MinimumSize.Height)
			{
				toolStrip.MinimumSize = new Size(toolStrip.MinimumSize.Width, num);
			}
		}
	}

	private void OnItemAdded(object sender, ToolStripItemEventArgs e)
	{
		if (e.Item is ToolStripComboBox)
		{
			OnAddedComboBox(e.Item as ToolStripComboBox);
		}
		else if (e.Item is ToolStripDropDownItem)
		{
			OnAddedDropDownItem(e.Item as ToolStripDropDownItem);
		}
	}

	private void OnItemRemoved(object sender, ToolStripItemEventArgs e)
	{
		if (e.Item is ToolStripComboBox)
		{
			OnRemovedComboBox(e.Item as ToolStripComboBox);
		}
	}

	private void OnComboBoxHandleCreated(object sender, EventArgs e)
	{
		SubclassControl(sender as Control, m_ComboBoxRenderer);
	}

	private void OnComboBoxHandleDestroyed(object sender, EventArgs e)
	{
		ReleaseControl(sender as Control);
	}

	private void OnRoundedToolstripRegionChanged(object sender, EventArgs e)
	{
		if (sender is ToolStrip { IsHandleCreated: not false } toolStrip)
		{
			toolStrip.Region = RendererUtils.GetRoundedRegion(new Rectangle(Point.Empty, toolStrip.Size), 2);
		}
	}

	private void Attach(ToolStrip ts)
	{
		Subscribe(ts);
		m_refCounter++;
		if (m_refCounter == 1)
		{
			SystemInfo.SettingsChanged += SettingsChangedHandler;
		}
	}

	private void Detach(ToolStrip ts)
	{
		Unsubscribe(ts);
		if (m_refCounter > 0)
		{
			m_refCounter--;
			if (m_refCounter == 0)
			{
				SystemInfo.SettingsChanged -= SettingsChangedHandler;
				Clear();
			}
		}
	}

	private void AttachItems(ToolStrip ts)
	{
		ts.ItemAdded += OnItemAdded;
		ts.ItemRemoved += OnItemRemoved;
		foreach (ToolStripItem item in ts.Items)
		{
			OnItemAdded(ts, new ToolStripItemEventArgs(item));
		}
	}

	private void DetachItems(ToolStrip ts)
	{
		ts.ItemAdded -= OnItemAdded;
		ts.ItemRemoved -= OnItemRemoved;
		if (ts.Renderer is Office12ToolStripRenderer)
		{
			return;
		}
		foreach (ToolStripItem item in ts.Items)
		{
			OnItemRemoved(ts, new ToolStripItemEventArgs(item));
		}
	}

	private void Subscribe(ToolStrip ts)
	{
		ts.RendererChanged += OnRendererChanged;
		if (ts is IToolStripExSupport || ts.GetType() == typeof(ToolStrip))
		{
			ts.HandleCreated += OnHandleCreated;
			ts.HandleDestroyed += OnHandleDestroyed;
			ts.DockChanged += OnDockChanged;
			if (ts.IsHandleCreated)
			{
				OnHandleCreated(ts, EventArgs.Empty);
			}
			if (ts.GetType() == typeof(ToolStrip))
			{
				ts.LayoutCompleted += OnLayoutCompleted;
			}
		}
		else if (ts is ContextMenuStripEx || ts is BottomToolstrip || ts is ToolStripGalleryDropDown)
		{
			ts.HandleCreated += OnRoundedToolstripRegionChanged;
			ts.SizeChanged += OnRoundedToolstripRegionChanged;
		}
		AttachItems(ts);
	}

	private void Unsubscribe(ToolStrip ts)
	{
		DetachItems(ts);
		ts.RendererChanged -= OnRendererChanged;
		if (ts is IToolStripExSupport || ts.GetType() == typeof(ToolStrip))
		{
			ts.HandleCreated -= OnHandleCreated;
			ts.HandleDestroyed -= OnHandleDestroyed;
			ts.DockChanged -= OnDockChanged;
			if (ts.GetType() == typeof(ToolStrip))
			{
				ts.LayoutCompleted -= OnLayoutCompleted;
			}
			if (!(ts.Renderer is Office12ToolStripRenderer))
			{
				ReleaseHandle(ts);
				ClearDropDownRegions(ts);
			}
		}
		else if (ts is ContextMenuStripEx || ts is BottomToolstrip || ts is ToolStripGalleryDropDown)
		{
			ts.HandleCreated -= OnRoundedToolstripRegionChanged;
			ts.SizeChanged -= OnRoundedToolstripRegionChanged;
			if (!(ts.Renderer is Office12ToolStripRenderer))
			{
				ts.Region = null;
			}
		}
	}

	private void AssignHandle(ToolStrip ts)
	{
		lock (m_controlsLock)
		{
			if (!m_htControls.ContainsKey(ts))
			{
				CToolStripWindow cToolStripWindow = new CToolStripWindow(ts);
				cToolStripWindow.AssignHandle(ts.Handle);
				m_htControls.Add(ts, cToolStripWindow);
			}
		}
		ts.Region = GetRegion(ts);
		UpdateFrame(ts);
	}

	private void ReleaseHandle(ToolStrip ts)
	{
		lock (m_controlsLock)
		{
			object obj = m_htControls[ts];
			if (obj != null)
			{
				if (obj is CToolStripWindow cToolStripWindow)
				{
					cToolStripWindow.ReleaseHandle();
				}
				m_htControls.Remove(ts);
			}
		}
		if (!(ts.Renderer is Office12ToolStripRenderer))
		{
			ts.Region = null;
		}
		UpdateFrame(ts);
	}

	private void SubclassControl(Control control, INativeMessageFilter messageFilter)
	{
		lock (m_controlsLock)
		{
			NativeMessageHandler nativeMessageHandler = m_htControls[control] as NativeMessageHandler;
			if (nativeMessageHandler == null)
			{
				nativeMessageHandler = new NativeMessageHandler();
				m_htControls.Add(control, nativeMessageHandler);
				nativeMessageHandler.Assign(control.Handle);
			}
			nativeMessageHandler.MessageFilter = messageFilter;
		}
	}

	private void ReleaseControl(Control control)
	{
		lock (m_controlsLock)
		{
			object obj = m_htControls[control];
			if (obj != null)
			{
				if (obj is NativeMessageHandler nativeMessageHandler)
				{
					nativeMessageHandler.MessageFilter = null;
				}
				m_htControls.Remove(control);
			}
		}
	}

	private void OnAddedComboBox(ToolStripComboBox toolStripComboBox)
	{
		Control control = toolStripComboBox.Control;
		if (control != null)
		{
			control.HandleCreated += OnComboBoxHandleCreated;
			control.HandleDestroyed += OnComboBoxHandleDestroyed;
			if (control.IsHandleCreated)
			{
				SubclassControl(control, m_ComboBoxRenderer);
			}
		}
	}

	private void OnRemovedComboBox(ToolStripComboBox toolStripComboBox)
	{
		Control control = toolStripComboBox.Control;
		if (control != null)
		{
			control.HandleCreated -= OnComboBoxHandleCreated;
			control.HandleDestroyed -= OnComboBoxHandleDestroyed;
			if (control.IsHandleCreated)
			{
				ReleaseControl(control);
			}
		}
	}

	private void OnAddedDropDownItem(ToolStripDropDownItem toolStripDropDownItem)
	{
		AttachItems(toolStripDropDownItem.DropDown);
	}

	private void OnRemovedDropDownItem(ToolStripDropDownItem toolStripDropDownItem)
	{
		DetachItems(toolStripDropDownItem.DropDown);
	}

	private Region GetRegion(ToolStrip ts)
	{
		Region result = null;
		if (ts is IToolStripExSupport2 { BorderStyle: var borderStyle } && borderStyle == ToolStripBorderStyle.Etched && ts.IsHandleCreated)
		{
			RECT rect = default(RECT);
			if (WindowsAPI.GetWindowRect(ts.Handle, ref rect))
			{
				result = RendererUtils.GetRoundedRegion(new Rectangle(Point.Empty, rect.Size), 1);
			}
		}
		return result;
	}

	private void UpdateFrame(ToolStrip ts)
	{
		if (ts != null && ts.IsHandleCreated)
		{
			WindowsAPI.SetWindowPos(ts.Handle, IntPtr.Zero, 0, 0, 0, 0, SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE | SetWindowPosFlags.SWP_NOZORDER | SetWindowPosFlags.SWP_NOACTIVATE | SetWindowPosFlags.SWP_FRAMECHANGED);
		}
	}

	private void ClearDropDownRegions(ToolStrip toolStrip)
	{
		ToolStripItemCollection items = toolStrip.Items;
		int i = 0;
		for (int count = items.Count; i < count; i++)
		{
			if (items[i] is ToolStripDropDownItem { DropDown: not null, Placement: not ToolStripItemPlacement.None } toolStripDropDownItem)
			{
				ClearDropDownRegions(toolStripDropDownItem.DropDown);
				toolStripDropDownItem.DropDown.Region = null;
			}
		}
		ToolStripDropDownItem overflowButton = toolStrip.OverflowButton;
		if (overflowButton != null && overflowButton.DropDown != null)
		{
			overflowButton.DropDown.Region = null;
		}
	}

	private bool PaintToolStripBackground(ToolStripRenderEventArgs e)
	{
		bool flag = false;
		if (e.ToolStrip is BottomToolstrip)
		{
			return PaintBottomToolstripBackground(e);
		}
		if (e.ToolStrip is ContextMenuStripEx)
		{
			return PaintContextMenuBackground(e);
		}
		if (e.ToolStrip is MenuStrip)
		{
			return PaintMenuBackground(e);
		}
		if (e.ToolStrip is ToolStripGalleryDropDown)
		{
			return PaintToolStripGalleryDropDownBackground(e);
		}
		if (e.ToolStrip is StatusStrip)
		{
			return PaintStatusStripBackground(e);
		}
		if (e.ToolStrip is ToolStripDropDown)
		{
			return PaintDropdownBackground(e);
		}
		return PaintGroupedToolbarBackground(e) || PaintToolbarBackground(e);
	}

	private bool PaintToolStripBorder(ToolStripRenderEventArgs e)
	{
		bool result = true;
		if (e.ToolStrip.Width > 0 && e.ToolStrip.Height > 0)
		{
			Rectangle rc = new Rectangle(Point.Empty, e.ToolStrip.Size);
			if (e.ToolStrip.IsDropDown)
			{
				e.Graphics.DrawPolygon(MenuBorder, RendererUtils.GetRoundedPolygon(rc, 2));
			}
			else if (e.ToolStrip is MenuStrip)
			{
				e.Graphics.DrawLine(MenuStripBorder, new Point(rc.X, rc.Bottom - 1), new Point(rc.Right - 1, rc.Bottom - 1));
			}
			else
			{
				ERENDERTYPE renderType = GetRenderType(e.ToolStrip);
				if (renderType == ERENDERTYPE.Grouped)
				{
					PaintGroupBorders(e);
				}
			}
		}
		return result;
	}

	private bool PaintDropdownBackground(ToolStripRenderEventArgs e)
	{
		bool result = false;
		if (e.ToolStrip is ToolStripDropDown toolStripDropDown)
		{
			if (toolStripDropDown.Width > 0 && toolStripDropDown.Height > 0)
			{
				Rectangle rectangle = new Rectangle(Point.Empty, toolStripDropDown.Size);
				if (!IsValidRegion(toolStripDropDown, e.Graphics))
				{
					toolStripDropDown.Region = RendererUtils.GetRoundedRegion(rectangle, 2);
				}
				e.Graphics.FillRectangle(ToolStripDropDownBackground, rectangle);
			}
			result = true;
		}
		return result;
	}

	private bool PaintMenuBackground(ToolStripRenderEventArgs e)
	{
		bool result = false;
		ToolStrip toolStrip = e.ToolStrip;
		if (toolStrip != null)
		{
			Size size = toolStrip.Size;
			if (size.Width > 0 && size.Height > 0)
			{
				Rectangle rc = new Rectangle(Point.Empty, size);
				Color menuStripGradientBegin = base.ColorTable.MenuStripGradientBegin;
				Color menuStripGradientEnd = base.ColorTable.MenuStripGradientEnd;
				Control parent = toolStrip.Parent;
				if (parent != null)
				{
					Size clientSize = parent.ClientSize;
					if (clientSize.Width > 0 && clientSize.Height > 0)
					{
						Rectangle rc2 = new Rectangle(Point.Empty, clientSize);
						using LinearGradientBrush linearGradientBrush = GetHorizontalBrush(ref rc2, menuStripGradientBegin, menuStripGradientEnd);
						linearGradientBrush.TranslateTransform(clientSize.Width - toolStrip.Location.X, clientSize.Height - toolStrip.Location.Y, MatrixOrder.Append);
						linearGradientBrush.Blend = m_blMenuBar;
						e.Graphics.FillRectangle(linearGradientBrush, rc);
					}
				}
				else
				{
					using LinearGradientBrush linearGradientBrush2 = GetHorizontalBrush(ref rc, menuStripGradientBegin, menuStripGradientEnd);
					linearGradientBrush2.Blend = m_blMenuBar;
					e.Graphics.FillRectangle(linearGradientBrush2, rc);
				}
				result = true;
			}
		}
		return result;
	}

	private bool PaintStatusStripBackground(ToolStripRenderEventArgs e)
	{
		if (e.ToolStrip.Width > 0 && e.ToolStrip.Height > 0)
		{
			Rectangle rc = new Rectangle(Point.Empty, e.ToolStrip.Size);
			Color statusStripGradientBegin = base.ColorTable.StatusStripGradientBegin;
			Color statusStripGradientEnd = base.ColorTable.StatusStripGradientEnd;
			using LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, statusStripGradientBegin, statusStripGradientEnd);
			linearGradientBrush.Blend = m_blStatusBar;
			e.Graphics.FillRectangle(linearGradientBrush, rc);
		}
		return true;
	}

	private bool PaintToolbarBackground(ToolStripRenderEventArgs e)
	{
		ToolStrip toolStrip = e.ToolStrip;
		if (toolStrip != null && toolStrip.Width > 0 && toolStrip.Height > 0)
		{
			Rectangle rc = new Rectangle(Point.Empty, toolStrip.ClientSize);
			if (RenderType == ERENDERTYPE.TabBar)
			{
				Color menuStripGradientBegin = base.ColorTable.MenuStripGradientBegin;
				Color menuStripGradientEnd = base.ColorTable.MenuStripGradientEnd;
				using LinearGradientBrush linearGradientBrush = GetHorizontalBrush(ref rc, menuStripGradientBegin, menuStripGradientEnd);
				if (e is PanelItemRenderEventArgs e2)
				{
					Point location = e2.PanelStrip.Location;
					linearGradientBrush.TranslateTransform(-location.X, -location.Y, MatrixOrder.Append);
				}
				linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
				linearGradientBrush.Blend = m_blMenuBar;
				e.Graphics.FillRectangle(linearGradientBrush, rc);
			}
			else
			{
				bool isSelected = GetIsSelected(e.ToolStrip);
				Color cl = (isSelected ? ToolStripHighlightGradientBegin : base.ColorTable.ToolStripGradientBegin);
				Color cl2 = (isSelected ? ToolStripHighlightGradientEnd : base.ColorTable.ToolStripGradientEnd);
				bool flag = base.RoundedEdges && e.ToolStrip.Dock == DockStyle.None;
				using Region region = RendererUtils.GetRoundedRegion(rc, flag ? 2 : 0);
				POINT lpPoints = default(POINT);
				Control control = ((toolStrip.Parent is RibbonPanel) ? toolStrip.Parent : toolStrip);
				WindowsAPI.MapWindowPoints(toolStrip.Handle, control.Handle, ref lpPoints, 1u);
				Rectangle rc2 = new Rectangle(-lpPoints.x, -lpPoints.y, control.ClientSize.Width, control.ClientSize.Height);
				using LinearGradientBrush linearGradientBrush2 = GetVerticalBrush(ref rc2, cl, cl2);
				if (e is PanelItemRenderEventArgs e3)
				{
					POINT lpPoints2 = new POINT(0, 0);
					WindowsAPI.MapWindowPoints(e3.PanelStrip.Handle, e.ToolStrip.Handle, ref lpPoints2, 1u);
					linearGradientBrush2.TranslateTransform(-lpPoints2.x, -lpPoints2.y, MatrixOrder.Append);
				}
				linearGradientBrush2.Blend = m_blToolBar;
				linearGradientBrush2.WrapMode = WrapMode.TileFlipXY;
				e.Graphics.FillRegion(linearGradientBrush2, region);
			}
		}
		return true;
	}

	private bool PaintGroupedToolbarBackground(ToolStripRenderEventArgs e)
	{
		bool result = false;
		ToolStrip toolStrip = e.ToolStrip;
		if (toolStrip != null && toolStrip.Width > 0 && toolStrip.Height > 0)
		{
			Color pColor = Color.White;
			if (IsGroupedToolStrip(e.ToolStrip, ref pColor))
			{
				bool flag = base.RoundedEdges && e.ToolStrip.Dock == DockStyle.None;
				Rectangle rc = new Rectangle(Point.Empty, toolStrip.ClientSize);
				using (Region region = RendererUtils.GetRoundedRegion(rc, flag ? 2 : 0))
				{
					POINT lpPoints = default(POINT);
					Control control = ((toolStrip.Parent is RibbonPanel) ? toolStrip.Parent : toolStrip);
					WindowsAPI.MapWindowPoints(toolStrip.Handle, control.Handle, ref lpPoints, 1u);
					Rectangle rc2 = new Rectangle(-lpPoints.x, -lpPoints.y, control.ClientSize.Width, control.ClientSize.Height);
					Color clBegin = (GetIsSelected(toolStrip) ? ToolStripHighlightGradientBegin : pColor);
					using LinearGradientBrush linearGradientBrush = GetGroupedBackgroundBrush(clBegin, Color.White, ref rc2);
					if (e is PanelItemRenderEventArgs e2)
					{
						POINT lpPoints2 = new POINT(0, 0);
						WindowsAPI.MapWindowPoints(e2.PanelStrip.Handle, e.ToolStrip.Handle, ref lpPoints2, 1u);
						linearGradientBrush.TranslateTransform(-lpPoints2.x, -lpPoints2.y, MatrixOrder.Append);
					}
					e.Graphics.FillRegion(linearGradientBrush, region);
				}
				result = true;
			}
		}
		return result;
	}

	private bool PaintContextMenuBackground(ToolStripRenderEventArgs e)
	{
		bool result = false;
		RECT rect = default(RECT);
		if (e.ToolStrip is ContextMenuStripEx contextMenuStripEx && WindowsAPI.GetWindowRect(contextMenuStripEx.Handle, ref rect) && rect.Width > 0 && rect.Height > 0)
		{
			Graphics graphics = e.Graphics;
			Rectangle rectangle = new Rectangle(Point.Empty, rect.Size);
			Rectangle rect2 = new Rectangle(0, 0, rectangle.Width, contextMenuStripEx.TitleHeight);
			Rectangle rect3 = new Rectangle(0, contextMenuStripEx.TitleHeight, rectangle.Width, rectangle.Height - contextMenuStripEx.TitleHeight);
			using (Brush brush = new SolidBrush(OfficeColorTable.ToolStripDropDownBackground))
			{
				e.Graphics.FillRectangle(brush, rect3);
			}
			using (Brush brush2 = new SolidBrush(OfficeColorTable.ContextMenuTitle))
			{
				e.Graphics.FillRectangle(brush2, rect2);
			}
			using (Pen pen = new Pen(Color.FromArgb(60, Color.Black)))
			{
				e.Graphics.DrawLine(pen, rect2.Left + 3, rect2.Bottom, rect2.Right - 3, rect2.Bottom);
			}
			Rectangle bounds = Rectangle.Inflate(rect2, -6, -6);
			TextFormatFlags textFormatFlags = TextFormatFlags.EndEllipsis;
			if (contextMenuStripEx.RightToLeft == RightToLeft.Yes)
			{
				textFormatFlags |= TextFormatFlags.Right;
			}
			TextRenderer.DrawText(graphics, contextMenuStripEx.Text, contextMenuStripEx.HeaderFont, bounds, OfficeColorTable.RibbonTabText, textFormatFlags);
			result = true;
		}
		return result;
	}

	private bool PaintBottomToolstripBackground(ToolStripRenderEventArgs e)
	{
		if (e.ToolStrip is BottomToolstrip bottomToolstrip)
		{
			using (Brush brush = new SolidBrush(OfficeColorTable.BottomToolstrip))
			{
				Rectangle rc = new Rectangle(new Point(0, 0), bottomToolstrip.Size);
				e.Graphics.FillRegion(brush, RendererUtils.GetRoundedRegion(rc, 2));
				rc.Inflate(-1, -1);
				using (Pen pen = new Pen(Color.FromArgb(150, Color.White)))
				{
					e.Graphics.DrawPolygon(pen, RendererUtils.GetRoundedPolygon(rc, 2));
				}
				rc.X--;
				rc.Y--;
				using Pen pen2 = new Pen(Color.FromArgb(40, Color.Black));
				e.Graphics.DrawPolygon(pen2, RendererUtils.GetRoundedPolygon(rc, 2));
			}
			return true;
		}
		return false;
	}

	private bool PaintMenuItemBackground(ToolStripItemRenderEventArgs e)
	{
		bool flag = false;
		if (e.Item.IsOnDropDown)
		{
			return PaintDropDownMenuItemBackground(e);
		}
		return PaintToolStripMenuItemBackground(e);
	}

	private bool PaintImageMargin(ToolStripRenderEventArgs e)
	{
		Graphics graphics = e.Graphics;
		Rectangle rect = Rectangle.Inflate(e.AffectedBounds, -1, -2);
		if (e.ToolStrip.RightToLeft == RightToLeft.Yes)
		{
			rect.X = e.ToolStrip.ClientRectangle.Width - rect.Width;
		}
		if (e.ToolStrip is ContextMenuStripEx)
		{
			ContextMenuStripEx contextMenuStripEx = e.ToolStrip as ContextMenuStripEx;
			rect.Y += contextMenuStripEx.TitleHeight;
			rect.Height -= contextMenuStripEx.TitleHeight;
		}
		using (Brush brush = new SolidBrush(base.ColorTable.ImageMarginGradientBegin))
		{
			graphics.FillRectangle(brush, rect);
		}
		int num = ((e.ToolStrip.RightToLeft == RightToLeft.Yes) ? rect.Right : rect.Left);
		int num2 = ((e.ToolStrip.RightToLeft == RightToLeft.Yes) ? rect.Left : rect.Right);
		graphics.DrawLine(Pens.White, num, rect.Top, num, rect.Bottom - 1);
		graphics.DrawLine(MenuItemBorder, num2, rect.Top, num2, rect.Bottom - 1);
		return true;
	}

	private bool PaintToolStripMenuItemBackground(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		ToolStripItem item = e.Item;
		if (item.Enabled && (item.Selected || item.Pressed))
		{
			Rectangle rc = GetItemRect(item);
			using (Region region = RendererUtils.GetRoundedRegion(rc, 1))
			{
				Graphics graphics = e.Graphics;
				Color cl = (item.Pressed ? base.ColorTable.MenuItemPressedGradientBegin : base.ColorTable.MenuItemSelectedGradientBegin);
				Color cl2 = (item.Pressed ? base.ColorTable.MenuItemPressedGradientEnd : base.ColorTable.MenuItemSelectedGradientEnd);
				using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, cl, cl2))
				{
					linearGradientBrush.Blend = m_blMenuItemUp;
					graphics.FillRegion(linearGradientBrush, region);
				}
				PaintFlash(graphics, rc, bCenter: false);
				graphics.DrawPolygon(MenuItemBorder, RendererUtils.GetRoundedPolygon(rc, 1));
			}
			result = true;
		}
		return result;
	}

	private bool PaintDropDownMenuItemBackground(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		ToolStripMenuItem toolStripMenuItem = e.Item as ToolStripMenuItem;
		if ((toolStripMenuItem != null && toolStripMenuItem.Selected) || toolStripMenuItem.Pressed)
		{
			Rectangle rc = GetItemRect(toolStripMenuItem);
			if (toolStripMenuItem.Enabled)
			{
				using (Region region = RendererUtils.GetRoundedRegion(rc, 1))
				{
					_ = e.Graphics;
					using LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, base.ColorTable.MenuItemPressedGradientBegin, base.ColorTable.MenuItemPressedGradientEnd);
					linearGradientBrush.Blend = (GetIsPressed(toolStripMenuItem) ? m_blMenuItemDown : m_blMenuItemUp);
					e.Graphics.FillRegion(linearGradientBrush, region);
				}
				e.Graphics.DrawPolygon(MenuItemBorder, RendererUtils.GetRoundedPolygon(rc, 1));
			}
			else
			{
				using Pen pen = new Pen(base.ColorTable.MenuItemPressedGradientEnd);
				e.Graphics.DrawRectangle(pen, rc.X, rc.Y, rc.Width - 1, rc.Height - 1);
			}
			result = true;
		}
		return result;
	}

	private bool PaintArrow(ToolStripArrowRenderEventArgs e)
	{
		bool result = false;
		if (e.Item is CollapsedDropDownButton collapsedDropDownButton)
		{
			Point point = new Point
			{
				Y = collapsedDropDownButton.Height - collapsedDropDownButton.Padding.Bottom - GetDownArrowSize().Height,
				X = (collapsedDropDownButton.Width - collapsedDropDownButton.Padding.Horizontal - ArrowDownImage.Width) / 2 + collapsedDropDownButton.Padding.Left
			};
			e.Graphics.DrawImage(ArrowDownImage, point);
			result = true;
		}
		return result;
	}

	private bool PaintItemText(ToolStripItemTextRenderEventArgs e)
	{
		bool result = false;
		if (e.Item is CollapsedDropDownButton)
		{
			Rectangle textRect = GetTextRect(e);
			TextRenderer.DrawText(e.Graphics, e.Text, e.TextFont, textRect, e.Item.ForeColor, e.TextFormat);
			result = true;
		}
		return result;
	}

	private bool PaintItemImage(ToolStripItemImageRenderEventArgs e)
	{
		if (e.Item is ToolStripMenuItem && e.Item is ToolStripMenuItem { Checked: not false } toolStripMenuItem && !IsCheckMarginVisible(toolStripMenuItem))
		{
			PaintItemCheckBackground(e);
		}
		Image image = e.Image;
		Rectangle imageRect = GetImageRect(e);
		if (image != null && imageRect.Width > 0 && imageRect.Height > 0)
		{
			bool flag = false;
			if (!e.Item.Enabled)
			{
				image = ToolStripRenderer.CreateDisabledImage(image);
				flag = true;
			}
			Graphics graphics = e.Graphics;
			if (e.Item is CollapsedDropDownButton)
			{
				Rectangle rc = imageRect;
				rc.Inflate(5, 5);
				bool flag2 = IsGroupedToolStrip(e.ToolStrip);
				Color cl = ((GetIsChecked(e.Item) && !flag2) ? OfficeColorTable.CollapsedImagePressedGradientBegin : OfficeColorTable.CollapsedImageGradientBegin);
				Color cl2 = ((GetIsChecked(e.Item) && !flag2) ? OfficeColorTable.CollapsedImagePressedGradientEnd : OfficeColorTable.CollapsedImageGradientEnd);
				using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, cl, cl2))
				{
					linearGradientBrush.Blend = m_blImageBackground;
					linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
					graphics.FillRegion(linearGradientBrush, RendererUtils.GetRoundedRegion(rc, 2));
				}
				graphics.DrawPolygon(ImageBorderPen, RendererUtils.GetRoundedPolygon(rc, 2));
			}
			if (e.Item is OfficeButton)
			{
				if (e.ToolStrip.RightToLeft == RightToLeft.Yes)
				{
					imageRect.X--;
				}
				else
				{
					imageRect.X++;
				}
			}
			if (e.Item.ImageScaling == ToolStripItemImageScaling.None)
			{
				Size size = image.Size;
				int x = imageRect.X + (imageRect.Width - size.Width) / 2;
				int y = imageRect.Y + (imageRect.Height - size.Height) / 2;
				graphics.DrawImage(image, new Point(x, y));
			}
			else
			{
				InterpolationMode interpolationMode = graphics.InterpolationMode;
				if (image.Size != imageRect.Size)
				{
					graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
				}
				graphics.DrawImage(image, imageRect);
				graphics.InterpolationMode = interpolationMode;
			}
			if (flag)
			{
				image.Dispose();
			}
		}
		return true;
	}

	private bool PaintItemCheck(ToolStripItemImageRenderEventArgs e)
	{
		ToolStripItem item = e.Item;
		if (item.Image == null || IsCheckMarginVisible(item))
		{
			PaintItemCheckBackground(e);
			Rectangle checkRect = GetCheckRect(e);
			if (checkRect.Width > 0 && checkRect.Height > 0)
			{
				Size size = CheckButton.Size;
				int x = checkRect.X + (checkRect.Width - size.Width) / 2;
				int y = checkRect.Y + (checkRect.Height - size.Height) / 2;
				e.Graphics.DrawImage(CheckButton, new Point(x, y));
			}
		}
		return true;
	}

	private void PaintItemCheckBackground(ToolStripItemImageRenderEventArgs e)
	{
		Rectangle checkRect = GetCheckRect(e);
		if (checkRect.Width > 0 && checkRect.Height > 0)
		{
			Graphics graphics = e.Graphics;
			GraphicsState gstate = graphics.Save();
			graphics.SmoothingMode = SmoothingMode.AntiAlias;
			graphics.FillRectangle(CheckBackground, Rectangle.Inflate(checkRect, -1, -1));
			graphics.DrawPolygon(CheckBorder, RendererUtils.GetRoundedPolygon(checkRect, 1));
			graphics.Restore(gstate);
		}
	}

	private bool PaintButtonBackground(ToolStripItemRenderEventArgs e)
	{
		if (!PaintTabBarButtonBackground(e.Item, e.Graphics, GetButtonRect(e.Item)) && !PaintGroupedButtonBackground(e) && !PaintCollapsedButtonBackground(e))
		{
			PaintToolBarButtonBackground(e);
		}
		return true;
	}

	private void PaintToolBarButtonBackground(ToolStripItemRenderEventArgs e)
	{
		if (!PaintButtonBackgroundPressed(e) && !PaintButtonBackgroundChecked(e))
		{
			PaintButtonBackgroundSelected(e);
		}
	}

	private bool PaintGroupedButtonBackground(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		if (GetIsGrouped(e.Item))
		{
			if (!PaintGroupedBackgroundPressed(e) && !PaintGroupedBackgroundChecked(e) && !PaintGroupedBackgroundSelected(e))
			{
				PaintGroupedBackgroundNormal(e);
			}
			result = true;
		}
		return result;
	}

	private bool PaintTabBarButtonBackground(ToolStripItem item, Graphics g, Rectangle rc)
	{
		bool result = false;
		if (GetIsTabItem(item))
		{
			if (rc.Width > 0 && rc.Height > 0 && !PaintTabBackgroundPressed(item, g, rc) && !PaintTabBackgroundChecked(item, g, rc))
			{
				PaintTabBackgroundSelected(item, g, rc);
			}
			result = true;
		}
		return result;
	}

	private bool PaintCollapsedButtonBackground(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		if (e.Item is CollapsedDropDownButton)
		{
			if (!PaintCollapsedBackgroundPressed(e) && !PaintCollapsedBackgroundSelected(e))
			{
				PaintCollapsedBackgroundNormal(e);
			}
			result = true;
		}
		return result;
	}

	private bool PaintButtonBackgroundPressed(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		if (GetIsPressed(e.Item) && !GetIsDisabled(e.Item))
		{
			Rectangle rc = GetButtonRect(e.Item);
			if (rc.Width > 0 && rc.Height > 0)
			{
				Graphics graphics = e.Graphics;
				Color buttonPressedGradientBegin = base.ColorTable.ButtonPressedGradientBegin;
				Color buttonPressedGradientEnd = base.ColorTable.ButtonPressedGradientEnd;
				Rectangle buttonBackgroundRect = GetButtonBackgroundRect(e.Item, rc);
				PaintGradientSelected(graphics, buttonBackgroundRect, buttonPressedGradientBegin, buttonPressedGradientEnd);
				PaintButtonPressedShadow(graphics, buttonBackgroundRect);
				graphics.DrawImage(PressedFlashImage, rc.X, rc.Y + rc.Height / 2, rc.Width, rc.Height);
				PaintButtonPressedBorder(graphics, ref rc, base.ColorTable.ButtonPressedGradientEnd);
			}
			result = true;
		}
		return result;
	}

	private bool PaintButtonBackgroundChecked(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		if (GetIsChecked(e.Item) && !GetIsDisabled(e.Item))
		{
			Rectangle rc = GetButtonRect(e.Item);
			if (rc.Width > 0 && rc.Height > 0)
			{
				Graphics graphics = e.Graphics;
				Color buttonCheckedGradientBegin = base.ColorTable.ButtonCheckedGradientBegin;
				Color buttonCheckedGradientEnd = base.ColorTable.ButtonCheckedGradientEnd;
				Rectangle buttonBackgroundRect = GetButtonBackgroundRect(e.Item, rc);
				PaintGradientSelected(graphics, buttonBackgroundRect, buttonCheckedGradientBegin, buttonCheckedGradientEnd);
				PaintButtonPressedShadow(graphics, buttonBackgroundRect);
				PaintFlashChecked(graphics, buttonBackgroundRect);
				PaintButtonPressedBorder(graphics, ref rc, base.ColorTable.ButtonCheckedGradientEnd);
			}
			result = true;
		}
		return result;
	}

	private bool PaintButtonBackgroundSelected(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		if (GetIsSelected(e.Item) && !GetIsDisabled(e.Item))
		{
			Rectangle buttonRect = GetButtonRect(e.Item);
			if (buttonRect.Width > 0 && buttonRect.Height > 0)
			{
				Graphics graphics = e.Graphics;
				Color buttonSelectedGradientBegin = OfficeColorTable.ButtonSelectedGradientBegin;
				Color buttonSelectedGradientEnd = OfficeColorTable.ButtonSelectedGradientEnd;
				Rectangle buttonBackgroundRect = GetButtonBackgroundRect(e.Item, buttonRect);
				PaintGradientSelected(graphics, buttonBackgroundRect, buttonSelectedGradientBegin, buttonSelectedGradientEnd);
				graphics.DrawImage(SelectedFlashImage, buttonBackgroundRect.X, buttonBackgroundRect.Y + buttonBackgroundRect.Height / 2, buttonBackgroundRect.Width, buttonBackgroundRect.Height);
				PaintButtonBorder(graphics, buttonRect, EBUTTONSTATE.Selected);
			}
			result = true;
		}
		return result;
	}

	private bool PaintGroupedBackgroundPressed(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		if (GetIsPressed(e.Item) && !GetIsDisabled(e.Item))
		{
			Rectangle buttonRect = GetButtonRect(e.Item);
			if (buttonRect.Width > 0 && buttonRect.Height > 0)
			{
				Graphics graphics = e.Graphics;
				Color buttonPressedGradientBegin = base.ColorTable.ButtonPressedGradientBegin;
				Color buttonPressedGradientEnd = base.ColorTable.ButtonPressedGradientEnd;
				Rectangle buttonBackgroundRect = GetButtonBackgroundRect(e.Item, buttonRect);
				PaintGradientSelected(graphics, buttonBackgroundRect, buttonPressedGradientBegin, buttonPressedGradientEnd);
				PaintButtonPressedShadow(graphics, buttonBackgroundRect);
				graphics.DrawImage(PressedFlashImage, buttonBackgroundRect.X, buttonBackgroundRect.Y + buttonBackgroundRect.Height / 2, buttonBackgroundRect.Width, buttonBackgroundRect.Height);
			}
			result = true;
		}
		return result;
	}

	private bool PaintGroupedBackgroundChecked(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		if (GetIsChecked(e.Item) && !GetIsDisabled(e.Item))
		{
			Rectangle buttonRect = GetButtonRect(e.Item);
			if (buttonRect.Width > 0 && buttonRect.Height > 0)
			{
				Graphics graphics = e.Graphics;
				Color buttonCheckedGradientBegin = base.ColorTable.ButtonCheckedGradientBegin;
				Color buttonCheckedGradientEnd = base.ColorTable.ButtonCheckedGradientEnd;
				Rectangle buttonBackgroundRect = GetButtonBackgroundRect(e.Item, buttonRect);
				PaintGradientSelected(graphics, buttonBackgroundRect, buttonCheckedGradientBegin, buttonCheckedGradientEnd);
				PaintButtonPressedShadow(graphics, buttonBackgroundRect);
				PaintFlashChecked(graphics, buttonBackgroundRect);
			}
			result = true;
		}
		return result;
	}

	private bool PaintGroupedBackgroundSelected(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		if (GetIsSelected(e.Item) && !GetIsDisabled(e.Item))
		{
			Rectangle buttonRect = GetButtonRect(e.Item);
			if (buttonRect.Width > 0 && buttonRect.Height > 0)
			{
				Graphics graphics = e.Graphics;
				Color buttonSelectedGradientBegin = base.ColorTable.ButtonSelectedGradientBegin;
				Color buttonSelectedGradientEnd = base.ColorTable.ButtonSelectedGradientEnd;
				Rectangle buttonBackgroundRect = GetButtonBackgroundRect(e.Item, buttonRect);
				PaintGradientSelected(graphics, buttonBackgroundRect, buttonSelectedGradientBegin, buttonSelectedGradientEnd);
				graphics.DrawImage(SelectedFlashImage, buttonBackgroundRect.X, buttonBackgroundRect.Y + buttonBackgroundRect.Height / 2, buttonBackgroundRect.Width, buttonBackgroundRect.Height);
			}
			result = true;
		}
		return result;
	}

	private void PaintGroupedBackgroundNormal(ToolStripItemRenderEventArgs e)
	{
		Rectangle buttonRect = GetButtonRect(e.Item);
		if (buttonRect.Width > 0 && buttonRect.Height > 0)
		{
			PaintGradientGrouped(e.Graphics, GetButtonBackgroundRect(e.Item, buttonRect));
		}
	}

	private bool PaintTabBackgroundPressed(ToolStripItem item, Graphics g, Rectangle rc)
	{
		bool result = false;
		if (item.Pressed)
		{
			Rectangle rc2 = rc;
			rc2.Height--;
			using (Region region = GetTabbedRegion(rc2))
			{
				GraphicsState gstate = g.Save();
				g.SetClip(region, CombineMode.Intersect);
				g.SmoothingMode = SmoothingMode.AntiAlias;
				Color buttonPressedGradientBegin = base.ColorTable.ButtonPressedGradientBegin;
				Color buttonPressedGradientEnd = base.ColorTable.ButtonPressedGradientEnd;
				PaintGradientSelected(g, rc2, buttonPressedGradientBegin, buttonPressedGradientEnd);
				PaintTabBorder(g, rc2, EBUTTONSTATE.Pressed);
				g.Restore(gstate);
			}
			result = true;
		}
		return result;
	}

	private bool PaintTabBackgroundChecked(ToolStripItem item, Graphics g, Rectangle rc)
	{
		bool result = false;
		if (GetIsChecked(item))
		{
			using (Region region = GetTabbedRegion(rc))
			{
				GraphicsState gstate = g.Save();
				g.SetClip(region, CombineMode.Intersect);
				g.SmoothingMode = SmoothingMode.AntiAlias;
				Color buttonPressedGradientBegin = base.ColorTable.ButtonPressedGradientBegin;
				Color buttonPressedGradientEnd = base.ColorTable.ButtonPressedGradientEnd;
				PaintGradientSelected(g, rc, buttonPressedGradientBegin, buttonPressedGradientEnd);
				PaintFlash(g, rc, bCenter: false);
				PaintTabBorder(g, rc, EBUTTONSTATE.Checked);
				g.Restore(gstate);
			}
			result = true;
		}
		return result;
	}

	private bool PaintTabBackgroundSelected(ToolStripItem item, Graphics g, Rectangle rc)
	{
		bool result = false;
		if (GetIsSelected(item))
		{
			Rectangle rc2 = rc;
			rc2.Height--;
			using (Region region = GetTabbedRegion(rc2))
			{
				GraphicsState gstate = g.Save();
				g.SetClip(region, CombineMode.Intersect);
				g.SmoothingMode = SmoothingMode.AntiAlias;
				Color buttonPressedGradientBegin = base.ColorTable.ButtonPressedGradientBegin;
				Color buttonPressedGradientEnd = base.ColorTable.ButtonPressedGradientEnd;
				PaintGradientSelected(g, rc2, buttonPressedGradientBegin, buttonPressedGradientEnd);
				PaintTabBorder(g, rc2, EBUTTONSTATE.Selected);
				g.Restore(gstate);
			}
			result = true;
		}
		return result;
	}

	private bool PaintCollapsedBackgroundSelected(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		if (e.Item is CollapsedDropDownButton tsItem && GetIsSelected(tsItem))
		{
			Rectangle buttonRect = GetButtonRect(e.Item);
			if (buttonRect.Width > 0 && buttonRect.Height > 0)
			{
				if (IsGroupedToolStrip(e.ToolStrip))
				{
					e.Graphics.FillRectangle(Brushes.White, buttonRect);
				}
				else
				{
					Color collapsedToolstripSelectedGradientBegin = OfficeColorTable.CollapsedToolstripSelectedGradientBegin;
					Color collapsedToolstripSelectedGradientEnd = OfficeColorTable.CollapsedToolstripSelectedGradientEnd;
					PaintGradientCollapsed(e.Graphics, GetButtonBackgroundRect(e.Item, buttonRect), collapsedToolstripSelectedGradientBegin, collapsedToolstripSelectedGradientEnd);
					PaintButtonBorder(e.Graphics, buttonRect, EBUTTONSTATE.Collapsed);
				}
			}
			result = true;
		}
		return result;
	}

	private bool PaintCollapsedBackgroundPressed(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		if (GetIsChecked(e.Item))
		{
			Rectangle buttonRect = GetButtonRect(e.Item);
			if (buttonRect.Width > 0 && buttonRect.Height > 0)
			{
				if (IsGroupedToolStrip(e.ToolStrip))
				{
					using Brush brush = new SolidBrush(OfficeColorTable.PanelBackground);
					e.Graphics.FillRectangle(brush, buttonRect);
				}
				else
				{
					Color collapsedToolstripPressedGradientBegin = OfficeColorTable.CollapsedToolstripPressedGradientBegin;
					Color collapsedToolstripPressedGradientEnd = OfficeColorTable.CollapsedToolstripPressedGradientEnd;
					PaintGradientCollapsed(e.Graphics, GetButtonBackgroundRect(e.Item, buttonRect), collapsedToolstripPressedGradientBegin, collapsedToolstripPressedGradientEnd);
					PaintButtonBorder(e.Graphics, buttonRect, EBUTTONSTATE.Collapsed);
				}
			}
			result = true;
		}
		return result;
	}

	private bool PaintCollapsedBackgroundNormal(ToolStripItemRenderEventArgs e)
	{
		Rectangle buttonRect = GetButtonRect(e.Item);
		if (buttonRect.Width > 0 && buttonRect.Height > 0)
		{
			if (IsGroupedToolStrip(e.ToolStrip))
			{
				e.Graphics.FillRectangle(Brushes.White, buttonRect);
			}
			else
			{
				Color collapsedToolstripGradientBegin = OfficeColorTable.CollapsedToolstripGradientBegin;
				Color collapsedToolstripGradientEnd = OfficeColorTable.CollapsedToolstripGradientEnd;
				PaintGradientCollapsed(e.Graphics, GetButtonBackgroundRect(e.Item, buttonRect), collapsedToolstripGradientBegin, collapsedToolstripGradientEnd);
				PaintButtonBorder(e.Graphics, buttonRect, EBUTTONSTATE.Collapsed);
			}
		}
		return true;
	}

	private bool PaintDropDownButtonBackground(ToolStripItemRenderEventArgs e)
	{
		return PaintButtonBackground(e);
	}

	private bool PaintSplitButtonBackground(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		if (e.Item is ToolStripSplitButton toolStripSplitButton)
		{
			Rectangle buttonRect = GetButtonRect(e.Item);
			if (buttonRect.Width > 0 && buttonRect.Height > 0)
			{
				Rectangle buttonBackgroundRect = GetButtonBackgroundRect(e.Item, buttonRect);
				if (buttonBackgroundRect.Width > 0 && buttonBackgroundRect.Height > 0)
				{
					Graphics graphics = e.Graphics;
					ToolStrip toolStrip = e.ToolStrip;
					EBUTTONSTATE state = EBUTTONSTATE.Normal;
					bool isDisabled = GetIsDisabled(e.Item);
					bool isGrouped = GetIsGrouped(e.Item);
					bool flag = toolStripSplitButton.DropDown.Visible && toolStripSplitButton.DropDown.OwnerItem == toolStripSplitButton && !isDisabled;
					bool flag2 = (toolStripSplitButton.Selected || flag) && !isDisabled;
					Rectangle rectangle = Rectangle.Intersect(toolStripSplitButton.DropDownButtonBounds, buttonBackgroundRect);
					Rectangle rc = buttonBackgroundRect;
					rc.Width -= rectangle.Width;
					if (e.Item.RightToLeft == RightToLeft.Yes)
					{
						rc.X += rectangle.Width;
					}
					if (rc.Width > 0 && rc.Height > 0)
					{
						if (toolStripSplitButton.ButtonPressed && !isDisabled)
						{
							PaintGradientSelected(graphics, rc, base.ColorTable.ButtonPressedGradientBegin, base.ColorTable.ButtonPressedGradientEnd);
							PaintButtonPressedShadow(graphics, rc);
							graphics.DrawImage(PressedFlashImage, rc.X, rc.Y + rc.Height / 2, rc.Width, rc.Height);
							graphics.DrawLine(ButtonPressedBorder, rc.Right - 1, rc.Y, rc.Right - 1, rc.Bottom - 1);
							state = EBUTTONSTATE.Pressed;
						}
						else if (flag2)
						{
							PaintGradientSelected(graphics, rc, base.ColorTable.ButtonSelectedGradientBegin, base.ColorTable.ButtonSelectedGradientEnd);
							graphics.DrawImage(SelectedFlashImage, rc.X, rc.Y + rc.Height / 2, rc.Width, rc.Height);
							graphics.DrawLine(ButtonSelectedBorder, rc.Right - 1, rc.Y, rc.Right - 1, rc.Bottom - 1);
							state = EBUTTONSTATE.Selected;
						}
						else if (isGrouped)
						{
							PaintGradientGrouped(graphics, rc);
						}
					}
					if (rectangle.Width > 0 && rectangle.Height > 0)
					{
						GraphicsState gstate = graphics.Save();
						graphics.SetClip(rectangle);
						if (flag)
						{
							PaintGradientSelected(graphics, rectangle, base.ColorTable.ButtonPressedGradientBegin, base.ColorTable.ButtonPressedGradientEnd);
							PaintButtonPressedShadow(graphics, rectangle);
							PaintFlashChecked(graphics, rectangle);
						}
						else if (toolStripSplitButton.DropDownButtonSelected && !isDisabled)
						{
							PaintGradientSelected(graphics, rectangle, base.ColorTable.ButtonSelectedGradientBegin, base.ColorTable.ButtonSelectedGradientEnd);
							graphics.DrawImage(SelectedFlashImage, rectangle.X, rectangle.Y + rectangle.Height / 2, rectangle.Width, rectangle.Height);
							graphics.DrawLine(ButtonHighlightBorder, rectangle.X, rectangle.Y, rectangle.X, rectangle.Bottom - 1);
						}
						else if (isGrouped)
						{
							PaintGradientGrouped(graphics, rectangle);
						}
						Color arrowColor = (e.Item.Enabled ? SystemColors.ControlText : SystemColors.ControlDark);
						Rectangle arrowRectangle = Rectangle.Inflate(rectangle, -1, -1);
						ArrowDirection arrowDirection = ((toolStrip != null && (toolStrip.Dock == DockStyle.Left || toolStrip.Dock == DockStyle.Right)) ? ArrowDirection.Right : ArrowDirection.Down);
						DrawArrow(new ToolStripArrowRenderEventArgs(graphics, e.Item, arrowRectangle, arrowColor, arrowDirection));
						graphics.Restore(gstate);
					}
					if (!isGrouped)
					{
						PaintButtonBorder(e.Graphics, buttonRect, state);
					}
				}
			}
			result = true;
		}
		return result;
	}

	internal void PaintSplitButtonExBackground(ToolStripItemRenderEventArgs e)
	{
		if (!(e.Item is ToolStripSplitButtonEx toolStripSplitButtonEx))
		{
			return;
		}
		Rectangle rc = new Rectangle(Point.Empty, e.Item.Size);
		if (rc.Width <= 0 || rc.Height <= 0)
		{
			return;
		}
		Rectangle buttonBackgroundRect = GetButtonBackgroundRect(e.Item, rc);
		if (buttonBackgroundRect.Width <= 0 || buttonBackgroundRect.Height <= 0)
		{
			return;
		}
		Graphics graphics = e.Graphics;
		bool isDisabled = GetIsDisabled(e.Item);
		if (toolStripSplitButtonEx.DropDown.Visible)
		{
			_ = toolStripSplitButtonEx.DropDown.OwnerItem;
		}
		_ = toolStripSplitButtonEx.Selected;
		Rectangle rc2 = Rectangle.Intersect(toolStripSplitButtonEx.ImageBounds, buttonBackgroundRect);
		Rectangle rc3 = Rectangle.Intersect(toolStripSplitButtonEx.ButtonBounds, buttonBackgroundRect);
		bool flag = true;
		Rectangle rc5;
		Rectangle rc4 = (rc5 = Rectangle.Empty);
		Color clBegin = base.ColorTable.ButtonSelectedGradientBegin;
		Color clEnd = base.ColorTable.ButtonSelectedGradientEnd;
		Color clBegin2 = OfficeColorTable.SelectedButtonInActiveBegin;
		Color clEnd2 = OfficeColorTable.SelectedButtonInActiveEnd;
		EBUTTONSTATE eBUTTONSTATE2;
		EBUTTONSTATE eBUTTONSTATE = (eBUTTONSTATE2 = EBUTTONSTATE.Selected);
		Bitmap image2;
		Bitmap image = (image2 = SelectedFlashImage);
		Pen pen = ButtonSelectedBorder;
		Pen pen2 = ButtonHighlightBorder;
		switch (toolStripSplitButtonEx.ButtonState)
		{
		case ToolStripSplitButtonEx.SplitButtonState.ButtonSelected:
			clBegin = OfficeColorTable.SelectedButtonInActiveBegin;
			clEnd = OfficeColorTable.SelectedButtonInActiveEnd;
			clBegin2 = base.ColorTable.ButtonSelectedGradientBegin;
			clEnd2 = base.ColorTable.ButtonSelectedGradientEnd;
			eBUTTONSTATE = (eBUTTONSTATE2 = EBUTTONSTATE.Selected);
			image = (image2 = SelectedFlashImage);
			pen = ButtonSelectedBorder;
			pen2 = ButtonHighlightBorder;
			break;
		case ToolStripSplitButtonEx.SplitButtonState.ImagePressed:
			clBegin = base.ColorTable.ButtonPressedGradientBegin;
			clEnd = base.ColorTable.ButtonPressedGradientEnd;
			clBegin2 = OfficeColorTable.SelectedButtonInActiveBegin;
			clEnd2 = OfficeColorTable.SelectedButtonInActiveEnd;
			eBUTTONSTATE2 = EBUTTONSTATE.Pressed;
			eBUTTONSTATE = EBUTTONSTATE.Selected;
			image2 = PressedFlashImage;
			image = SelectedFlashImage;
			pen = ButtonPressedBorder;
			pen2 = ButtonHighlightBorder;
			rc4 = toolStripSplitButtonEx.ImageBounds;
			rc5 = toolStripSplitButtonEx.ButtonBounds;
			break;
		case ToolStripSplitButtonEx.SplitButtonState.ButtonPressed:
			clBegin = OfficeColorTable.SelectedButtonInActiveBegin;
			clEnd = OfficeColorTable.SelectedButtonInActiveEnd;
			clBegin2 = base.ColorTable.ButtonPressedGradientBegin;
			clEnd2 = base.ColorTable.ButtonPressedGradientEnd;
			eBUTTONSTATE2 = EBUTTONSTATE.Selected;
			eBUTTONSTATE = EBUTTONSTATE.Pressed;
			image2 = SelectedFlashImage;
			image = PressedFlashImage;
			pen = ButtonHighlightBorder;
			pen2 = ButtonPressedBorder;
			rc4 = toolStripSplitButtonEx.ImageBounds;
			rc5 = toolStripSplitButtonEx.ButtonBounds;
			break;
		default:
			flag = false;
			break;
		case ToolStripSplitButtonEx.SplitButtonState.ImageSelected:
			break;
		}
		if (flag)
		{
			bool flag2 = (toolStripSplitButtonEx.DisplayStyle & ToolStripItemDisplayStyle.Image) == ToolStripItemDisplayStyle.Image;
			bool flag3 = rc2.Width > 0 && rc2.Height > 0;
			bool flag4 = rc3.Width > 0 && rc3.Height > 0;
			if (flag3)
			{
				PaintGradientSelected(graphics, rc2, clBegin, clEnd);
				if (eBUTTONSTATE2 == EBUTTONSTATE.Pressed)
				{
					PaintButtonPressedShadow(graphics, rc2);
				}
				graphics.DrawImage(image2, rc2.X, rc2.Y + rc2.Height / 2, rc2.Width, rc2.Height);
			}
			if (flag4)
			{
				PaintGradientSelected(graphics, rc3, clBegin2, clEnd2);
				if (eBUTTONSTATE == EBUTTONSTATE.Pressed)
				{
					PaintButtonPressedShadow(graphics, rc3);
				}
				graphics.DrawImage(image, rc3.X, rc3.Y + rc3.Height / 2, rc3.Width, rc3.Height);
			}
			if (flag2 && flag3 && flag4)
			{
				if (toolStripSplitButtonEx.RightToLeft == RightToLeft.Yes)
				{
					graphics.DrawLine(pen, rc2.Left, rc2.Y, rc2.Left, rc2.Bottom - 1);
					graphics.DrawLine(pen2, rc3.Right - 1, rc3.Y, rc3.Right - 1, rc3.Bottom - 1);
				}
				else
				{
					graphics.DrawLine(pen, rc2.Right - 1, rc2.Y, rc2.Right - 1, rc2.Bottom - 1);
					graphics.DrawLine(pen2, rc3.X, rc3.Y, rc3.X, rc3.Bottom - 1);
				}
			}
			if (eBUTTONSTATE2 == EBUTTONSTATE.Pressed || eBUTTONSTATE == EBUTTONSTATE.Pressed)
			{
				if (flag2)
				{
					PaintButtonBorder(graphics, rc4, eBUTTONSTATE2);
					PaintButtonBorder(graphics, rc5, eBUTTONSTATE);
				}
				else
				{
					PaintButtonBorder(graphics, rc, EBUTTONSTATE.Pressed);
				}
			}
			else
			{
				PaintButtonBorder(graphics, rc, EBUTTONSTATE.Selected);
			}
		}
		Image image3 = toolStripSplitButtonEx.Image;
		if ((toolStripSplitButtonEx.DisplayStyle & ToolStripItemDisplayStyle.Image) == ToolStripItemDisplayStyle.Image && image3 != null)
		{
			bool flag5 = false;
			if (isDisabled)
			{
				image3 = ToolStripRenderer.CreateDisabledImage(image3);
				flag5 = true;
			}
			graphics.DrawImage(image3, toolStripSplitButtonEx.InternalLayout.ImageRectangle);
			if (flag5)
			{
				image3.Dispose();
			}
		}
		Color color = (isDisabled ? SystemColors.GrayText : toolStripSplitButtonEx.ForeColor);
		if ((toolStripSplitButtonEx.DisplayStyle & ToolStripItemDisplayStyle.Text) == ToolStripItemDisplayStyle.Text)
		{
			TextRenderer.DrawText(graphics, toolStripSplitButtonEx.Text, toolStripSplitButtonEx.Font, toolStripSplitButtonEx.InternalLayout.TextRectangle, color, GetTextFormatFlags(toolStripSplitButtonEx.TextAlign));
		}
		Rectangle dropDownButtonRectangle = toolStripSplitButtonEx.InternalLayout.DropDownButtonRectangle;
		using Brush brush = new SolidBrush(color);
		Point point = new Point(dropDownButtonRectangle.Left + dropDownButtonRectangle.Width / 2, dropDownButtonRectangle.Top + dropDownButtonRectangle.Height / 2);
		Point[] points = new Point[3]
		{
			new Point(point.X - 2, point.Y - 1),
			new Point(point.X + 3, point.Y - 1),
			new Point(point.X, point.Y + 2)
		};
		graphics.FillPolygon(brush, points);
	}

	private bool IsGroupedToolStrip(ToolStrip ts, ref Color pColor)
	{
		bool result = false;
		if (ts != null)
		{
			RibbonPanel parentPanel = GetParentPanel(ts);
			if (parentPanel != null)
			{
				ToolStripTabGroup tabGroup = parentPanel.GetTabGroup();
				if (tabGroup != null)
				{
					pColor = tabGroup.Color;
					result = true;
				}
			}
		}
		return result;
	}

	private bool IsGroupedToolStrip(ToolStrip ts)
	{
		bool result = false;
		if (ts != null)
		{
			RibbonPanel parentPanel = GetParentPanel(ts);
			if (parentPanel != null)
			{
				ToolStripTabGroup tabGroup = parentPanel.GetTabGroup();
				result = tabGroup != null;
			}
		}
		return result;
	}

	private RibbonPanel GetParentPanel(ToolStrip ts)
	{
		Control parent = ts.Parent;
		if (parent is ToolStripDropDown { OwnerItem: CollapsedDropDownButton ownerItem })
		{
			ToolStrip currentParent = ownerItem.GetCurrentParent();
			if (currentParent != null)
			{
				parent = currentParent.Parent;
			}
		}
		return parent as RibbonPanel;
	}

	private TextFormatFlags GetTextFormatFlags(ContentAlignment alignment)
	{
		return alignment switch
		{
			ContentAlignment.BottomCenter => TextFormatFlags.Bottom | TextFormatFlags.HorizontalCenter, 
			ContentAlignment.BottomLeft => TextFormatFlags.Bottom, 
			ContentAlignment.BottomRight => TextFormatFlags.Bottom | TextFormatFlags.Right, 
			ContentAlignment.MiddleCenter => TextFormatFlags.HorizontalCenter | TextFormatFlags.VerticalCenter, 
			ContentAlignment.MiddleLeft => TextFormatFlags.VerticalCenter, 
			ContentAlignment.MiddleRight => TextFormatFlags.Right | TextFormatFlags.VerticalCenter, 
			ContentAlignment.TopCenter => TextFormatFlags.HorizontalCenter, 
			ContentAlignment.TopLeft => TextFormatFlags.Default, 
			ContentAlignment.TopRight => TextFormatFlags.Right, 
			_ => TextFormatFlags.Default, 
		};
	}

	protected bool PaintOverflowButtonBackground(ToolStripItemRenderEventArgs e)
	{
		if (e.Item is RibbonControlAdvHeader.QuickItemsOverflowButton)
		{
			Rectangle buttonRect = GetButtonRect(e.Item);
			if (buttonRect.Width > 0 && buttonRect.Height > 0)
			{
				ToolStrip toolStrip = e.ToolStrip;
				if (toolStrip != null)
				{
					PaintButtonBackground(e);
					Image arrowOverflow = ArrowOverflow;
					int x = buttonRect.X + (buttonRect.Width - arrowOverflow.Size.Width) / 2;
					int y = buttonRect.Y + (buttonRect.Height - arrowOverflow.Size.Height) / 2;
					e.Graphics.DrawImage(arrowOverflow, x, y);
				}
			}
		}
		else
		{
			Rectangle buttonRect2 = GetButtonRect(e.Item);
			if (buttonRect2.Width > 0 && buttonRect2.Height > 0)
			{
				ToolStrip toolStrip2 = e.ToolStrip;
				if (toolStrip2 != null)
				{
					PaintButtonBackground(e);
					Image image = ((toolStrip2.Dock == DockStyle.Left || toolStrip2.Dock == DockStyle.Right) ? ArrowRightImage : ArrowDownImage);
					int x2 = buttonRect2.X + (buttonRect2.Width - image.Size.Width) / 2;
					int y2 = buttonRect2.Y + (buttonRect2.Height - image.Size.Height) / 2;
					e.Graphics.DrawImage(image, x2, y2);
				}
			}
		}
		return true;
	}

	protected void PaintGradientSelected(Graphics g, Rectangle rc, Color clBegin, Color clEnd)
	{
		if (rc.Width <= 0 || rc.Height <= 0)
		{
			return;
		}
		Color alphaBlendedColor = Office12ColorTable.GetAlphaBlendedColor(clBegin, clEnd, 128);
		int num = (int)((double)rc.Height * 0.38);
		int height = rc.Height - num;
		if (num > 0)
		{
			Rectangle rc2 = new Rectangle(rc.X, rc.Y, rc.Width, num + 1);
			using LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc2, clBegin, alphaBlendedColor);
			linearGradientBrush.WrapMode = WrapMode.TileFlipY;
			g.FillRectangle(linearGradientBrush, rc2);
		}
		Rectangle rc3 = new Rectangle(rc.X, rc.Y + num, rc.Width, height);
		using LinearGradientBrush linearGradientBrush2 = GetVerticalBrush(ref rc3, clEnd, alphaBlendedColor);
		linearGradientBrush2.WrapMode = WrapMode.TileFlipY;
		g.FillRectangle(linearGradientBrush2, rc3);
	}

	private void PaintGradientCollapsed(Graphics g, Rectangle rc, Color clBegin, Color clEnd)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, clBegin, clEnd))
			{
				linearGradientBrush.Blend = m_blButtonCollapsed;
				linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
				g.FillRectangle(linearGradientBrush, rc);
			}
		}
	}

	private void PaintGradientGrouped(Graphics g, Rectangle rc)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			Color groupGradientBegin = GroupGradientBegin;
			Color groupGradientEnd = GroupGradientEnd;
			using LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, groupGradientEnd, groupGradientBegin);
			linearGradientBrush.Blend = m_blGrouped;
			linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
			g.FillRectangle(linearGradientBrush, rc);
		}
	}

	private void PaintGroupBorders(ToolStripRenderEventArgs e)
	{
		ToolStrip toolStrip = e.ToolStrip;
		if (toolStrip.IsDropDown || ERENDERTYPE.Grouped != GetRenderType(toolStrip))
		{
			return;
		}
		Graphics graphics = e.Graphics;
		ToolStripItemCollection items = toolStrip.Items;
		ToolStripItemPlacement toolStripItemPlacement = ToolStripItemPlacement.Main;
		if (items == null)
		{
			return;
		}
		int count = items.Count;
		Rectangle[] array = new Rectangle[2];
		for (int i = 0; i < count; i++)
		{
			ToolStripItem toolStripItem = items[i];
			if (toolStripItem.Placement != toolStripItemPlacement)
			{
				continue;
			}
			int num = ((toolStripItem.Alignment != ToolStripItemAlignment.Left) ? 1 : 0);
			Rectangle rectangle = array[num];
			if (toolStripItem is ToolStripButton || toolStripItem is ToolStripDropDownButton || toolStripItem is ToolStripSplitButton)
			{
				Rectangle buttonBounds = GetButtonBounds(toolStripItem);
				if (!rectangle.IsEmpty)
				{
					if (rectangle.Y == buttonBounds.Y)
					{
						int num2 = ((buttonBounds.X > rectangle.X) ? (rectangle.Right - 1) : (rectangle.Left - 1));
						int num3 = num2 + 1;
						int y = rectangle.Y + 1;
						int y2 = rectangle.Bottom - 2;
						graphics.DrawLine(GroupBorder, num2, y, num2, y2);
						graphics.DrawLine(ButtonHighlightGrouped, num3, y, num3, y2);
						ref Rectangle reference = ref array[num];
						reference = Rectangle.Union(rectangle, buttonBounds);
					}
					else
					{
						PaintGroupBorder(graphics, rectangle);
						array[num] = buttonBounds;
					}
				}
				else
				{
					array[num] = buttonBounds;
				}
			}
			else
			{
				PaintGroupBorder(graphics, rectangle);
				ref Rectangle reference2 = ref array[num];
				reference2 = Rectangle.Empty;
			}
		}
		PaintGroupBorder(graphics, array[0]);
		PaintGroupBorder(graphics, array[1]);
	}

	private void PaintGroupBorder(Graphics g, Rectangle rc)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			g.DrawPolygon(GroupBorder, RendererUtils.GetRoundedPolygon(rc, 1));
			int num = rc.Left + 1;
			int y = rc.Top + 1;
			int num2 = rc.Right - 2;
			int y2 = rc.Bottom - 2;
			g.DrawLine(ButtonHighlightGrouped, num, y, num, y2);
			g.DrawLine(ButtonHighlightGrouped, num2, y, num2, y2);
		}
	}

	protected void PaintButtonBorder(Graphics g, Rectangle rc, EBUTTONSTATE state)
	{
		if (rc.Width > 0 && rc.Height > 0 && state != EBUTTONSTATE.Normal)
		{
			GraphicsState gstate = g.Save();
			g.SmoothingMode = SmoothingMode.AntiAlias;
			switch (state)
			{
			case EBUTTONSTATE.Selected:
				g.DrawPolygon(ButtonSelectedBorder, RendererUtils.GetRoundedPolygon(rc, 1));
				g.DrawRectangle(ButtonHighlightBorder, rc.X + 1, rc.Y + 1, rc.Width - 3, rc.Height - 3);
				break;
			case EBUTTONSTATE.Pressed:
			case EBUTTONSTATE.Checked:
				g.DrawPolygon(ButtonPressedBorder, RendererUtils.GetRoundedPolygon(rc, 1));
				break;
			case EBUTTONSTATE.Collapsed:
				g.DrawPolygon(CollapsedBorderPen, RendererUtils.GetRoundedPolygon(rc, 1));
				g.DrawRectangle(ButtonHighlightBorder, rc.X + 1, rc.Y + 1, rc.Width - 3, rc.Height - 3);
				break;
			}
			g.Restore(gstate);
		}
	}

	private void PaintButtonPressedBorder(Graphics g, ref Rectangle rc, Color clHighlightBorder)
	{
		if (rc.Width <= 0 || rc.Height <= 0)
		{
			return;
		}
		Color buttonPressedBorder = base.ColorTable.ButtonPressedBorder;
		Color alphaBlendedColor = Office12ColorTable.GetAlphaBlendedColor(buttonPressedBorder, Color.White, 128);
		using (LinearGradientBrush brush = GetVerticalBrush(rc.Top, rc.Height, buttonPressedBorder, alphaBlendedColor))
		{
			using Pen pen = new Pen(brush);
			Point[] points = new Point[6]
			{
				new Point(rc.Left, rc.Bottom - 2),
				new Point(rc.Left, rc.Top + 1),
				new Point(rc.Left + 1, rc.Top),
				new Point(rc.Right - 2, rc.Top),
				new Point(rc.Right - 1, rc.Top + 1),
				new Point(rc.Right - 1, rc.Bottom - 2)
			};
			g.DrawLines(pen, points);
		}
		Color cl = Color.FromArgb(32, clHighlightBorder);
		using LinearGradientBrush brush2 = GetVerticalBrush(rc.Top + 1, rc.Height - 1, cl, clHighlightBorder);
		using Pen pen2 = new Pen(brush2);
		Point[] points2 = new Point[4]
		{
			new Point(rc.Right - 2, rc.Y + 2),
			new Point(rc.Right - 2, rc.Bottom - 1),
			new Point(rc.Left + 1, rc.Bottom - 1),
			new Point(rc.Left + 1, rc.Y + 2)
		};
		g.DrawLines(pen2, points2);
	}

	protected void PaintButtonPressedShadow(Graphics g, Rectangle rc)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			Color cl = Color.FromArgb(160, base.ColorTable.ButtonPressedBorder);
			Color transparent = Color.Transparent;
			rc.Height = Math.Max(rc.Height / 10, 2);
			using LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, cl, transparent);
			linearGradientBrush.Blend = m_blButtonShadow;
			g.FillRectangle(linearGradientBrush, rc);
		}
	}

	private void PaintTabBorder(Graphics g, Rectangle rc, EBUTTONSTATE eState)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			Pen pen = ((eState == EBUTTONSTATE.Selected) ? ButtonSelectedGradientEnd : ButtonPressedGradientEnd);
			g.DrawLines(pen, GetTabbedPath(rc));
		}
	}

	private void PaintFlash(Graphics g, Rectangle rc, bool bCenter)
	{
		GraphicsState gstate = g.Save();
		g.SetClip(rc, CombineMode.Intersect);
		Rectangle rect = rc;
		if (!bCenter)
		{
			rect.Offset(0, -rect.Height / 2);
			g.DrawImage(SelectedFlashImage, rect);
			rect.Offset(0, rect.Height);
		}
		g.DrawImage(SelectedFlashImage, rect);
		g.Restore(gstate);
	}

	private void PaintFlashChecked(Graphics g, Rectangle rc)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			GraphicsState gstate = g.Save();
			g.SetClip(rc);
			Rectangle rect = new Rectangle(rc.X, rc.Y + rc.Height / 2, rc.Width, rc.Height);
			rect.Inflate(rect.Width / 2, rect.Height / 4);
			g.DrawImage(CheckedFlashImage, rect);
			g.Restore(gstate);
		}
	}

	protected bool IsValidRegion(ToolStrip toolStrip, Graphics g)
	{
		bool result = false;
		if (toolStrip.Region != null)
		{
			SizeF size = toolStrip.Region.GetBounds(g).Size;
			result = size == toolStrip.Size;
		}
		return result;
	}

	private bool IsCheckMarginVisible(ToolStripItem tsItem)
	{
		bool result = false;
		if (tsItem is ToolStripMenuItem && tsItem.Owner is ToolStripDropDownMenu toolStripDropDownMenu)
		{
			result = toolStripDropDownMenu.ShowCheckMargin;
		}
		return result;
	}

	private Region GetTabbedRegion(Rectangle rc)
	{
		Region region = new Region(rc);
		int y = rc.Y;
		int x = rc.X;
		int height = rc.Height;
		region.Exclude(new Rectangle(x, y, 1, height - 1));
		region.Exclude(new Rectangle(x + 1, y, 1, height - 2));
		region.Exclude(new Rectangle(x + 2, y, 1, 2));
		region.Exclude(new Rectangle(x + 3, y, 1, 1));
		x = rc.Right - 4;
		region.Exclude(new Rectangle(x, y, 1, 1));
		region.Exclude(new Rectangle(x + 1, y, 1, 2));
		region.Exclude(new Rectangle(x + 2, y, 1, height - 2));
		region.Exclude(new Rectangle(x + 3, y, 1, height - 1));
		return region;
	}

	private Point[] GetTabbedPath(Rectangle rc)
	{
		return new Point[8]
		{
			new Point(rc.X, rc.Bottom - 1),
			new Point(rc.X + 2, rc.Bottom - 3),
			new Point(rc.X + 2, rc.Y + 2),
			new Point(rc.X + 4, rc.Y),
			new Point(rc.Right - 5, rc.Y),
			new Point(rc.Right - 3, rc.Y + 2),
			new Point(rc.Right - 3, rc.Bottom - 3),
			new Point(rc.Right - 1, rc.Bottom - 1)
		};
	}

	private Point[] GetLauncherPolygon(Rectangle rc)
	{
		return new Point[5]
		{
			new Point(rc.X, rc.Y + 1),
			new Point(rc.X, rc.Y),
			new Point(rc.Right - 1, rc.Y),
			new Point(rc.Right - 1, rc.Bottom - 1),
			new Point(rc.Right - 2, rc.Bottom - 1)
		};
	}

	private Rectangle GetItemRect(ToolStripItem item)
	{
		Rectangle result = new Rectangle(Point.Empty, item.Size);
		if (item.Owner is ToolStripDropDownMenu)
		{
			result.X += 2;
			result.Width -= 3;
		}
		return result;
	}

	protected Rectangle GetButtonRect(ToolStripItem item)
	{
		return GetButtonRect(item, new Rectangle(Point.Empty, item.Size), RenderType);
	}

	private Rectangle GetButtonBounds(ToolStripItem item)
	{
		return GetButtonRect(item, item.Bounds, RenderType);
	}

	private Rectangle GetButtonBounds(ToolStripItem item, ERENDERTYPE erType)
	{
		return GetButtonRect(item, item.Bounds, erType);
	}

	private Rectangle GetButtonRect(ToolStripItem item, Rectangle rc)
	{
		return GetButtonRect(item, rc, RenderType);
	}

	private Rectangle GetButtonRect(ToolStripItem item, Rectangle rc, ERENDERTYPE erType)
	{
		Rectangle result = rc;
		if (result.Width > 0 && result.Height > 0)
		{
			if (item is ToolStripOverflowButton)
			{
				Control currentParent = item.GetCurrentParent();
				if (currentParent != null)
				{
					result.Intersect(currentParent.ClientRectangle);
				}
				result.Inflate(-1, -1);
			}
			else if (item.IsOnDropDown)
			{
				result.Inflate(-1, 0);
			}
			else
			{
				_ = item.Owner is StatusStrip;
			}
		}
		return result;
	}

	protected Rectangle GetButtonBackgroundRect(ToolStripItem item, Rectangle rc)
	{
		Rectangle result = rc;
		if (!(item is ToolStripOverflowButton))
		{
			result.Inflate(-1, -1);
		}
		return result;
	}

	internal virtual Rectangle GetCheckRect(ToolStripItemImageRenderEventArgs e)
	{
		Rectangle result = new Rectangle(e.ImageRectangle.Left - 2, 1, e.ImageRectangle.Width + 4, e.Item.Height - 2);
		return result;
	}

	protected LinearGradientBrush GetVerticalBrush(ref Rectangle rc, Color cl1, Color cl2)
	{
		return GetVerticalBrush(rc.Top, rc.Height, cl1, cl2);
	}

	protected LinearGradientBrush GetVerticalBrush(int top, int height, Color cl1, Color cl2)
	{
		Rectangle rect = new Rectangle(0, top, 1, height);
		if (rect.Height == 0)
		{
			Exception ex = new Exception("GetVerticalBrush rcBrush height is 0. Adjusting height to 15.");
			TraceUtil.TraceExceptionCatched(ex);
			ExceptionManager.RaiseExceptionCatched(this, ex);
			rect.Height = 15;
		}
		return new LinearGradientBrush(rect, cl1, cl2, 90f);
	}

	protected LinearGradientBrush GetHorizontalBrush(ref Rectangle rc, Color cl1, Color cl2)
	{
		Rectangle rect = new Rectangle(rc.Left, rc.Top, rc.Width, 1);
		return new LinearGradientBrush(rect, cl1, cl2, 0f);
	}

	private bool GetIsLButtonDown()
	{
		VirtualKeys vkey = ((WindowsAPI.GetSystemMetrics(SystemMetricsCodes.SM_SWAPBUTTON) == 0) ? VirtualKeys.VK_LBUTTON : VirtualKeys.VK_RBUTTON);
		return (WindowsAPI.GetAsyncKeyState(vkey) & 0x8000) != 0;
	}

	private bool GetIsPressed(ToolStripItem tsItem)
	{
		bool result = false;
		if (tsItem is ToolStripSplitButton)
		{
			result = tsItem is ToolStripSplitButton toolStripSplitButton && toolStripSplitButton.ButtonPressed;
		}
		else if (!(tsItem is ToolStripDropDownItem))
		{
			result = tsItem.Pressed && ContainsCursor(tsItem);
		}
		return result;
	}

	private bool GetIsChecked(ToolStripItem tsItem)
	{
		bool result = false;
		if (tsItem is ToolStripButton)
		{
			if (tsItem is ToolStripButton toolStripButton)
			{
				result = toolStripButton.Checked;
			}
		}
		else if (tsItem is ToolStripMenuItem)
		{
			if (tsItem is ToolStripMenuItem toolStripMenuItem)
			{
				result = toolStripMenuItem.Checked;
			}
		}
		else if (tsItem is ToolStripDropDownItem && tsItem is ToolStripDropDownItem toolStripDropDownItem)
		{
			result = toolStripDropDownItem == toolStripDropDownItem.DropDown.OwnerItem && toolStripDropDownItem.DropDown.Visible;
		}
		return result;
	}

	private bool GetIsSelected(ToolStripItem tsItem)
	{
		bool flag = tsItem.Selected;
		if (!flag && tsItem is ToolStripSplitButton && tsItem is ToolStripSplitButton { DropDownButtonPressed: not false })
		{
			flag = true;
		}
		return flag;
	}

	private bool GetIsGrouped(ToolStripItem tsItem)
	{
		bool result = false;
		if (tsItem != null && !(tsItem is ToolStripOverflowButton) && !(tsItem is CollapsedDropDownButton) && !tsItem.IsOnDropDown)
		{
			result = ERENDERTYPE.Grouped == GetRenderType(tsItem.Owner);
		}
		return result;
	}

	private bool GetIsTabItem(ToolStripItem tsItem)
	{
		bool flag = false;
		if (RenderType == ERENDERTYPE.TabBar && !tsItem.IsOnDropDown)
		{
			flag = tsItem is IToolStripTabItem;
			if (!flag)
			{
				Type type = tsItem.GetType();
				flag = type == typeof(ToolStripButton) || type == typeof(ToolStripDropDownButton);
			}
		}
		return flag;
	}

	private bool GetIsSelected(ToolStrip ts)
	{
		if (m_htControls[ts] is CToolStripWindow cToolStripWindow)
		{
			return cToolStripWindow.Selected;
		}
		return false;
	}

	private bool GetIsDisabled(ToolStripItem item)
	{
		if (item.Enabled)
		{
			return !item.GetCurrentParent().Enabled;
		}
		return true;
	}

	protected bool ContainsCursor(ToolStripItem tsItem)
	{
		return tsItem.GetCurrentParent().RectangleToScreen(tsItem.Bounds).Contains(Cursor.Position);
	}

	private ERENDERTYPE GetRenderType(ToolStrip ts)
	{
		if (ts != null && ts is IToolStripExSupport { GroupedButtons: not false })
		{
			return ERENDERTYPE.Grouped;
		}
		return RenderType;
	}

	private void Clear()
	{
		Clear(m_htPens);
		Clear(m_htBrushes);
		Clear(m_htBitmaps);
	}

	private void Clear(Hashtable hTable)
	{
		foreach (object item in hTable)
		{
			if (item is IDisposable disposable)
			{
				disposable.Dispose();
			}
		}
		hTable.Clear();
	}

	protected void SettingsChangedHandler()
	{
		Clear();
	}

	protected Pen GetKnownPen(EPEN ePen, Color color, int width)
	{
		Pen pen = m_htPens[ePen] as Pen;
		if (pen == null)
		{
			pen = new Pen(color, width);
			m_htPens[ePen] = pen;
		}
		return pen;
	}

	protected Brush GetKnownBrush(EBRUSH eBrush, Color color)
	{
		Brush brush = m_htBrushes[eBrush] as Brush;
		if (brush == null)
		{
			brush = new SolidBrush(color);
			m_htBrushes[eBrush] = brush;
		}
		return brush;
	}

	protected Rectangle GetImageRect(ToolStripItemImageRenderEventArgs e)
	{
		Rectangle imageRectangle = e.ImageRectangle;
		if (e.Item is CollapsedDropDownButton collapsedDropDownButton)
		{
			imageRectangle.Y = collapsedDropDownButton.Padding.Top + 5;
			imageRectangle.X = (collapsedDropDownButton.Width - collapsedDropDownButton.Padding.Horizontal - imageRectangle.Width) / 2 + collapsedDropDownButton.Padding.Left;
		}
		return imageRectangle;
	}

	protected Rectangle GetTextRect(ToolStripItemTextRenderEventArgs e)
	{
		Rectangle textRectangle = e.TextRectangle;
		if (e.Item is CollapsedDropDownButton collapsedDropDownButton)
		{
			textRectangle.Size = TextRenderer.MeasureText(collapsedDropDownButton.Text, collapsedDropDownButton.Font);
			textRectangle.Y = collapsedDropDownButton.Padding.Top;
			if (collapsedDropDownButton.DisplayStyle == ToolStripItemDisplayStyle.ImageAndText)
			{
				textRectangle.Y += collapsedDropDownButton.Owner.ImageScalingSize.Height + 2 + 10;
			}
			textRectangle.X = (collapsedDropDownButton.Width - collapsedDropDownButton.Padding.Horizontal - textRectangle.Width) / 2 + collapsedDropDownButton.Padding.Left;
		}
		return textRectangle;
	}

	protected Bitmap GetFlashImage(Color colorBase, Size size)
	{
		Rectangle rect = new Rectangle(0, 0, size.Width, size.Height);
		Bitmap bitmap = new Bitmap(rect.Width, rect.Height);
		using Graphics graphics = Graphics.FromImage(bitmap);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddEllipse(rect);
		using PathGradientBrush pathGradientBrush = new PathGradientBrush(graphicsPath);
		pathGradientBrush.Blend = m_blButtonFlash;
		pathGradientBrush.CenterColor = colorBase;
		pathGradientBrush.SurroundColors = new Color[1] { Color.Transparent };
		graphics.FillRectangle(pathGradientBrush, rect);
		return bitmap;
	}

	public Size GetDownArrowSize()
	{
		return ArrowDownImage.Size;
	}

	private LinearGradientBrush GetGroupedBackgroundCollapsedBrush(Color clBegin, Color clEnd, int nHeight)
	{
		LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Rectangle(0, 0, 1, nHeight), clBegin, clEnd, LinearGradientMode.Vertical);
		linearGradientBrush.Blend = m_blGroupedBackGroundCollapsed;
		return linearGradientBrush;
	}

	private LinearGradientBrush GetGroupedBackgroundBrush(Color clBegin, Color clEnd, ref Rectangle rc)
	{
		LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Rectangle(rc.X, rc.Y, 1, rc.Height), clBegin, clEnd, LinearGradientMode.Vertical);
		linearGradientBrush.Blend = m_blGroupedBackGround;
		linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
		return linearGradientBrush;
	}

	[DllImport("gdi32.dll")]
	protected static extern bool SetWorldTransform(IntPtr hDC, ref XFORM xform);

	[DllImport("gdi32.dll")]
	protected static extern int SetGraphicsMode(IntPtr hDC, int iMode);

	protected override void OnRenderItemBackground(ToolStripItemRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintGallery(e))
		{
			base.OnRenderItemBackground(e);
		}
	}

	protected virtual bool PaintGallery(ToolStripItemRenderEventArgs e)
	{
		bool result = false;
		if (e.Item is ToolStripGallery toolStripGallery)
		{
			Graphics graphics = e.Graphics;
			if (toolStripGallery.ShowCaption)
			{
				PaintGalleryCaption(graphics, toolStripGallery);
			}
			if (toolStripGallery.BorderStyle == ToolstripGalleryBorderStyle.Single)
			{
				using Pen pen = new Pen(Color.FromArgb(40, Color.Black));
				Rectangle rect = new Rectangle(0, 0, toolStripGallery.Width - 1, toolStripGallery.Height - 1);
				graphics.SetClip(toolStripGallery.ScrollArea, CombineMode.Exclude);
				graphics.DrawRectangle(pen, rect);
				graphics.SetClip(toolStripGallery.ScrollArea, CombineMode.Union);
			}
			PaintGalleryItems(graphics, toolStripGallery);
			switch (toolStripGallery.ScrollerType)
			{
			case ToolStripGalleryScrollerType.Compact:
				DrawCompactScrollers(graphics, toolStripGallery);
				break;
			case ToolStripGalleryScrollerType.Standard:
				DrawStandardScrollers(graphics, toolStripGallery);
				break;
			}
			result = true;
		}
		return result;
	}

	protected virtual void DrawStandardScrollers(Graphics g, ToolStripGallery gallery)
	{
		Rectangle rc = gallery.ScrollArea;
		if (rc.Width <= 0 || rc.Height <= 0)
		{
			return;
		}
		using (LinearGradientBrush linearGradientBrush = GetHorizontalBrush(ref rc, Color.White, OfficeColorTable.GalleryScrollBarBackground))
		{
			linearGradientBrush.Blend = m_blScrollerBackground;
			g.FillRectangle(linearGradientBrush, rc);
		}
		Rectangle rect = new Rectangle(gallery.ScrollUpButton.Bounds.Location, new Size(gallery.ScrollUpButton.Bounds.Width - 1, gallery.ScrollUpButton.Bounds.Height - 1));
		Rectangle rect2 = new Rectangle(rect.Left + rect.Width / 2 - 4, rect.Top + rect.Height / 2 - 1, 9, 5);
		PaintStandardScrollButtonBackground(g, rect, gallery.ScrollUpButton.State);
		if (gallery.ScrollUpButton.State == ScrollButtonState.Disabled)
		{
			PaintLargeUpArrow(g, rect2, OfficeColorTable.ScrollButtonLargeArrowDisabled);
		}
		else
		{
			PaintLargeUpArrow(g, rect2, OfficeColorTable.ScrollButtonLargeArrow);
		}
		rect = new Rectangle(gallery.ScrollDownButton.Bounds.Location, new Size(gallery.ScrollDownButton.Bounds.Width - 1, gallery.ScrollDownButton.Bounds.Height - 1));
		rect2 = new Rectangle(rect.Left + rect.Width / 2 - 4, rect.Top + rect.Height / 2 - 1, 9, 5);
		PaintStandardScrollButtonBackground(g, rect, gallery.ScrollDownButton.State);
		if (gallery.ScrollDownButton.State == ScrollButtonState.Disabled)
		{
			PaintLargeDownArrow(g, rect2, OfficeColorTable.ScrollButtonLargeArrowDisabled);
		}
		else
		{
			PaintLargeDownArrow(g, rect2, OfficeColorTable.ScrollButtonLargeArrow);
		}
		if (!gallery.Scroller.Bounds.IsEmpty)
		{
			SmoothingMode smoothingMode = g.SmoothingMode;
			g.SmoothingMode = SmoothingMode.AntiAlias;
			rect = new Rectangle(gallery.Scroller.Bounds.Location, new Size(gallery.Scroller.Bounds.Width - 1, gallery.Scroller.Bounds.Height - 1));
			PaintScrollerBackground(g, rect, gallery.Scroller.State);
			if (rect.Height > 8)
			{
				rect2 = new Rectangle(rect.Left + rect.Width / 2 - 4, rect.Top + rect.Height / 2 - 4, 8, 8);
				PaintScrollerAdorning(g, rect2);
			}
			g.SmoothingMode = smoothingMode;
		}
	}

	protected virtual void PaintScrollerBackground(Graphics g, Rectangle rect, ScrollButtonState scrollButtonState)
	{
		Color cl = Color.Empty;
		Color cl2 = Color.Empty;
		Color color = Color.Empty;
		switch (scrollButtonState)
		{
		case ScrollButtonState.Normal:
		case ScrollButtonState.Highlighted:
			cl = OfficeColorTable.ScrollerNormalGradientBegin;
			cl2 = OfficeColorTable.ScrollerNormalGradientEnd;
			color = OfficeColorTable.ScrollerNormalBorder;
			break;
		case ScrollButtonState.Selected:
			cl = OfficeColorTable.ScrollerSelectedGradientBegin;
			cl2 = OfficeColorTable.ScrollerSelectedGradientEnd;
			color = OfficeColorTable.ScrollerSelectedBorder;
			break;
		case ScrollButtonState.Pressed:
			cl = OfficeColorTable.ScrollerPressedGradientBegin;
			cl2 = OfficeColorTable.ScrollerPressedGradientEnd;
			color = OfficeColorTable.ScrollerPressedBorder;
			break;
		}
		using (LinearGradientBrush linearGradientBrush = GetHorizontalBrush(ref rect, cl, cl2))
		{
			linearGradientBrush.Blend = m_blScroller;
			g.FillRectangle(linearGradientBrush, rect);
		}
		using Pen pen = new Pen(color);
		rect.Height++;
		rect.Width++;
		g.DrawPolygon(pen, RendererUtils.GetRoundedPolygon(rect, 1));
	}

	protected virtual void PaintStandardScrollButtonBackground(Graphics g, Rectangle rect, ScrollButtonState scrollButtonState)
	{
		Color cl = Color.Empty;
		Color cl2 = Color.Empty;
		switch (scrollButtonState)
		{
		case ScrollButtonState.Highlighted:
			cl = OfficeColorTable.StandardScrollButtonHighlightedGradientBegin;
			cl2 = OfficeColorTable.StandardScrollButtonHighlightedGradientEnd;
			break;
		case ScrollButtonState.Pressed:
			cl = OfficeColorTable.StandardScrollButtonPressedGradientBegin;
			cl2 = OfficeColorTable.StandardScrollButtonPressedGradientEnd;
			break;
		case ScrollButtonState.Selected:
			cl = OfficeColorTable.StandardScrollButtonSelectedGradientBegin;
			cl2 = OfficeColorTable.StandardScrollButtonSelectedGradientEnd;
			break;
		}
		using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rect, cl, cl2))
		{
			linearGradientBrush.Blend = m_blStandardScrollButton;
			g.FillRectangle(linearGradientBrush, rect);
		}
		if (scrollButtonState != ScrollButtonState.Disabled && scrollButtonState != ScrollButtonState.Normal)
		{
			using (Pen pen = new Pen(Color.FromArgb(100, Color.Black)))
			{
				g.DrawRectangle(pen, rect);
			}
		}
	}

	protected virtual void DrawCompactScrollers(Graphics g, ToolStripGallery gallery)
	{
		Rectangle rect = new Rectangle(gallery.ScrollUpButton.Bounds.Location, new Size(gallery.ScrollUpButton.Bounds.Width - 1, gallery.ScrollUpButton.Bounds.Height - 1));
		Rectangle rect2 = new Rectangle(rect.Left + rect.Width / 2 - 2, rect.Top + rect.Height / 2 - 1, 5, 3);
		PaintScrollButtonBackground(g, rect, gallery.ScrollUpButton.State);
		if (gallery.ScrollUpButton.State == ScrollButtonState.Disabled)
		{
			PaintUpArrow(g, rect2, OfficeColorTable.ScrollButtonArrowDisabled);
		}
		else
		{
			rect2.Y--;
			PaintUpArrow(g, rect2, Color.FromArgb(150, Color.White));
			rect2.Y++;
			PaintUpArrow(g, rect2, OfficeColorTable.ScrollButtonArrow);
		}
		rect = new Rectangle(gallery.ScrollDownButton.Bounds.Location, new Size(gallery.ScrollDownButton.Bounds.Width - 1, gallery.ScrollDownButton.Bounds.Height - 1));
		rect2 = new Rectangle(rect.Left + rect.Width / 2 - 2, rect.Top + rect.Height / 2 - 1, 5, 3);
		PaintScrollButtonBackground(g, rect, gallery.ScrollDownButton.State);
		if (gallery.ScrollDownButton.State == ScrollButtonState.Disabled)
		{
			PaintDownArrow(g, rect2, OfficeColorTable.ScrollButtonArrowDisabled);
		}
		else
		{
			rect2.Y++;
			PaintDownArrow(g, rect2, Color.FromArgb(150, Color.White));
			rect2.Y--;
			PaintDownArrow(g, rect2, OfficeColorTable.ScrollButtonArrow);
		}
		rect = new Rectangle(gallery.ScrollDropdownButton.Bounds.Location, new Size(gallery.ScrollDropdownButton.Bounds.Width - 1, gallery.ScrollDropdownButton.Bounds.Height - 1));
		rect2 = new Rectangle(rect.Left + rect.Width / 2 - 2, rect.Top + rect.Height / 2 - 3, 5, 6);
		PaintScrollButtonBackground(g, rect, gallery.ScrollDropdownButton.State);
		rect2.Y++;
		PaintDropDownArrow(g, rect2, Color.FromArgb(150, Color.White));
		rect2.Y--;
		PaintDropDownArrow(g, rect2, OfficeColorTable.ScrollButtonArrow);
	}

	protected virtual void PaintScrollButtonBackground(Graphics g, Rectangle rect, ScrollButtonState scrollButtonState)
	{
		Color cl = Color.Empty;
		Color cl2 = Color.Empty;
		switch (scrollButtonState)
		{
		case ScrollButtonState.Disabled:
			cl = OfficeColorTable.DisabledButtonGradientBegin;
			cl2 = OfficeColorTable.DisabledButtonGradientEnd;
			break;
		case ScrollButtonState.Normal:
			cl = OfficeColorTable.ScrollButtonGradientBegin;
			cl2 = OfficeColorTable.ScrollButtonGradientEnd;
			break;
		case ScrollButtonState.Pressed:
			cl = OfficeColorTable.ButtonPressedGradientBegin;
			cl2 = OfficeColorTable.ButtonPressedGradientEnd;
			break;
		case ScrollButtonState.Selected:
			cl = OfficeColorTable.ButtonSelectedGradientBegin;
			cl2 = OfficeColorTable.ButtonSelectedGradientEnd;
			break;
		}
		using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rect, cl, cl2))
		{
			linearGradientBrush.Blend = m_blScrollButton;
			g.FillRectangle(linearGradientBrush, rect);
		}
		using Pen pen = new Pen(Color.FromArgb(25, Color.Black));
		g.DrawRectangle(pen, rect);
	}

	protected virtual void PaintGalleryItems(Graphics g, ToolStripGallery gallery)
	{
		GraphicsState gstate = g.Save();
		g.TranslateTransform(0f, -gallery.ScrollOffset);
		Rectangle workingArea = gallery.GetWorkingArea();
		workingArea.Y += gallery.ScrollOffset;
		g.SetClip(workingArea);
		foreach (ToolStripGalleryItemLayoutInfo item2 in gallery.ItemsInfo)
		{
			g.SetClip(item2.Bounds, CombineMode.Intersect);
			Rectangle itemWorkingRect = gallery.GetItemWorkingRect(item2);
			if (!gallery.ItemBackColor.IsEmpty)
			{
				g.SetClip(itemWorkingRect, CombineMode.Exclude);
			}
			Rectangle rc = new Rectangle(item2.Bounds.Location, new Size(item2.Bounds.Width - 1, item2.Bounds.Height - 1));
			Rectangle rc2 = new Rectangle(rc.Left + 1, rc.Top + 1, rc.Width - 2, rc.Height - 2);
			ToolStripGalleryItem item = item2.Item;
			if (item == gallery.PressedItem && item == gallery.SelectedItem)
			{
				Color buttonPressedGradientBegin = base.ColorTable.ButtonPressedGradientBegin;
				Color buttonPressedGradientEnd = base.ColorTable.ButtonPressedGradientEnd;
				PaintGradientSelected(g, rc2, buttonPressedGradientBegin, buttonPressedGradientEnd);
				g.DrawImage(PressedFlashImage, rc2.X, rc2.Y + rc2.Height / 2, rc2.Width, rc2.Height);
				PaintButtonPressedBorder(g, ref rc, base.ColorTable.ButtonPressedGradientEnd);
			}
			else if (item == gallery.CheckedItem)
			{
				Color buttonCheckedGradientBegin = base.ColorTable.ButtonCheckedGradientBegin;
				Color buttonCheckedGradientEnd = base.ColorTable.ButtonCheckedGradientEnd;
				PaintGradientSelected(g, rc2, buttonCheckedGradientBegin, buttonCheckedGradientEnd);
				g.DrawImage(CheckedFlashImage, rc2.X, rc2.Y + rc2.Height / 2, rc2.Width, rc2.Height);
				PaintButtonPressedBorder(g, ref rc, base.ColorTable.ButtonPressedGradientEnd);
			}
			else if (item == gallery.SelectedItem)
			{
				Color buttonSelectedGradientBegin = OfficeColorTable.ButtonSelectedGradientBegin;
				Color buttonSelectedGradientEnd = OfficeColorTable.ButtonSelectedGradientEnd;
				PaintGradientSelected(g, rc2, buttonSelectedGradientBegin, buttonSelectedGradientEnd);
				g.DrawImage(SelectedFlashImage, rc2.X, rc2.Y + rc2.Height / 2, rc2.Width, rc2.Height);
				PaintButtonBorder(g, rc, EBUTTONSTATE.Selected);
			}
			if (!gallery.ItemBackColor.IsEmpty)
			{
				g.SetClip(itemWorkingRect, CombineMode.Union);
				using Brush brush = new SolidBrush(gallery.ItemBackColor);
				g.FillRectangle(brush, itemWorkingRect);
			}
			if (gallery.ItemDisplayStyle == ToolStripItemDisplayStyle.Image || gallery.ItemDisplayStyle == ToolStripItemDisplayStyle.ImageAndText)
			{
				Image image = item.GetImage();
				if (image != null)
				{
					if (item.Enabled)
					{
						g.DrawImage(image, item2.ImageBounds);
					}
					else
					{
						ControlPaint.DrawImageDisabled(g, item.Image, item2.ImageBounds.X, item2.ImageBounds.Y, Color.Transparent);
					}
				}
			}
			if (gallery.ItemDisplayStyle == ToolStripItemDisplayStyle.Text || gallery.ItemDisplayStyle == ToolStripItemDisplayStyle.ImageAndText)
			{
				TextRenderer.DrawText(g, item.Text, gallery.Font, item2.TextBounds, gallery.ForeColor, TextFormatFlags.EndEllipsis | TextFormatFlags.HorizontalCenter | TextFormatFlags.VerticalCenter | TextFormatFlags.PreserveGraphicsClipping | TextFormatFlags.PreserveGraphicsTranslateTransform);
			}
			g.SetClip(workingArea, CombineMode.Replace);
		}
		g.Restore(gstate);
	}

	protected virtual void PaintGalleryCaption(Graphics g, ToolStripGallery gallery)
	{
		Rectangle rectangle = new Rectangle(0, 0, gallery.Width, gallery.Height);
		using (Brush brush = new SolidBrush(OfficeColorTable.ContextMenuTitle))
		{
			g.FillRectangle(brush, new Rectangle(rectangle.Location, new Size(rectangle.Width, gallery.CaptionHeight)));
		}
		using (Pen pen = new Pen(Color.FromArgb(60, Color.Black)))
		{
			g.DrawLine(pen, rectangle.Left, rectangle.Top + gallery.CaptionHeight, rectangle.Right, rectangle.Top + gallery.CaptionHeight);
		}
		Padding cAPTION_MARGIN = ToolStripGallery.CAPTION_MARGIN;
		TextRenderer.DrawText(bounds: new Rectangle(rectangle.Left + cAPTION_MARGIN.Left, rectangle.Top + cAPTION_MARGIN.Top, rectangle.Width - cAPTION_MARGIN.Horizontal, gallery.CaptionHeight - cAPTION_MARGIN.Vertical - 1), dc: g, text: gallery.CaptionText, font: gallery.Owner.Font, foreColor: OfficeColorTable.RibbonTabText, flags: TextFormatFlags.EndEllipsis | TextFormatFlags.HorizontalCenter | TextFormatFlags.VerticalCenter);
	}

	protected virtual void PaintUpArrow(Graphics g, Rectangle rect, Color c)
	{
		using Brush brush = new SolidBrush(c);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(rect.Left - 1, rect.Bottom, rect.Left + 2, rect.Bottom - 4);
		graphicsPath.AddLine(rect.Left + 2, rect.Bottom - 4, rect.Left + 5, rect.Bottom);
		graphicsPath.CloseFigure();
		g.FillPath(brush, graphicsPath);
		graphicsPath.Dispose();
	}

	protected virtual void PaintLargeUpArrow(Graphics g, Rectangle rect, Color c)
	{
		using Brush brush = new SolidBrush(c);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(rect.Left - 1, rect.Bottom, rect.Left + 4, rect.Bottom - 6);
		graphicsPath.AddLine(rect.Left + 4, rect.Bottom - 6, rect.Left + 9, rect.Bottom);
		graphicsPath.CloseFigure();
		g.FillPath(brush, graphicsPath);
		graphicsPath.Dispose();
	}

	protected virtual void PaintDownArrow(Graphics g, Rectangle rect, Color c)
	{
		using Brush brush = new SolidBrush(c);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(rect.Left, rect.Top, rect.Left + 5, rect.Top);
		graphicsPath.AddLine(rect.Left + 5, rect.Top, rect.Left + 2, rect.Top + 3);
		graphicsPath.CloseFigure();
		g.FillPath(brush, graphicsPath);
		graphicsPath.Dispose();
	}

	protected virtual void PaintLargeDownArrow(Graphics g, Rectangle rect, Color c)
	{
		using Brush brush = new SolidBrush(c);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(rect.Left, rect.Top, rect.Left + 9, rect.Top);
		graphicsPath.AddLine(rect.Left + 9, rect.Top, rect.Left + 4, rect.Top + 5);
		graphicsPath.CloseFigure();
		g.FillPath(brush, graphicsPath);
		graphicsPath.Dispose();
	}

	protected virtual void PaintDropDownArrow(Graphics g, Rectangle rect, Color c)
	{
		using Brush brush = new SolidBrush(c);
		using (Pen pen = new Pen(c))
		{
			g.DrawLine(pen, rect.Left, rect.Top, rect.Left + 4, rect.Top);
		}
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(rect.Left, rect.Top + 3, rect.Left + 5, rect.Top + 3);
		graphicsPath.AddLine(rect.Left + 5, rect.Top + 3, rect.Left + 2, rect.Top + 6);
		graphicsPath.CloseFigure();
		g.FillPath(brush, graphicsPath);
		graphicsPath.Dispose();
	}

	protected virtual void PaintScrollerAdorning(Graphics g, Rectangle rect)
	{
		using Pen pen = new Pen(Color.FromArgb(100, Color.Black));
		using Pen pen2 = new Pen(Color.FromArgb(100, Color.White));
		for (int i = 0; i < 4; i++)
		{
			int num = rect.Top + i * 2;
			g.DrawLine(pen, rect.Left, num, rect.Right, num);
			num++;
			g.DrawLine(pen2, rect.Left + 2, num, rect.Right, num);
		}
	}

	protected virtual bool PaintToolStripGalleryDropDownBackground(ToolStripRenderEventArgs e)
	{
		bool result = false;
		if (e.ToolStrip is ToolStripGalleryDropDown)
		{
			ToolStripGalleryDropDown toolStripGalleryDropDown = (ToolStripGalleryDropDown)e.ToolStrip;
			if (toolStripGalleryDropDown.ShowGrip)
			{
				Rectangle rc = new Rectangle(0, toolStripGalleryDropDown.Height - 12, toolStripGalleryDropDown.Width, 12);
				using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(ref rc, Color.White, OfficeColorTable.GripGradientEnd))
				{
					linearGradientBrush.WrapMode = WrapMode.TileFlipXY;
					e.Graphics.FillRectangle(linearGradientBrush, rc);
				}
				Point point = new Point(rc.Right - 4, rc.Bottom - 3);
				DrawCornerPoint(e.Graphics, point);
				point.Y -= 4;
				DrawCornerPoint(e.Graphics, point);
				point.Y += 4;
				point.X -= 4;
				DrawCornerPoint(e.Graphics, point);
				result = true;
			}
		}
		return result;
	}

	private void DrawCornerPoint(Graphics g, Point point)
	{
		g.FillRectangle(Brushes.White, new Rectangle(point.X - 1, point.Y - 1, 2, 2));
		g.FillRectangle(Brushes.DarkGray, new Rectangle(point.X - 2, point.Y - 2, 2, 2));
	}
}
