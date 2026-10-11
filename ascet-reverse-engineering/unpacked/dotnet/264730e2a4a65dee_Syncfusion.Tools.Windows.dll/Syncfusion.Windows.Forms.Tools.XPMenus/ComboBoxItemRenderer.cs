using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class ComboBoxItemRenderer : BarItemRenderer, IDropDownItem
{
	protected internal const int DEF_SELECTION_OFFSET = 2;

	protected internal const int DEF_BORDER_OFFSET = 3;

	private const int DEF_MIN_HEIGHT = 20;

	private const int DEF_TEXT_OFFSET_Y = 1;

	protected IPopupChild popupChild;

	protected IPopupParent popupParent;

	internal static int ComboBoxDropDownWidth = 12;

	protected ListBoxContainer listBoxContainer;

	private SyncfusionPropertyChangedEventHandler m_PropertyChangedHandler;

	private bool m_bIgnoreExternalMouseMessages;

	private ActivationNativeWindow m_lstNativeWnd;

	public override RectangleF Bounds
	{
		get
		{
			return base.Bounds;
		}
		set
		{
			RectangleF rectangleF = value;
			int num = (int)rectangleF.Top;
			rectangleF.Y = num;
			base.Bounds = rectangleF;
		}
	}

	public ListBox ListBox => listBoxContainer.ListBox;

	protected internal bool IgnoreExternalMouseMessages
	{
		get
		{
			return m_bIgnoreExternalMouseMessages;
		}
		set
		{
			if (value != m_bIgnoreExternalMouseMessages)
			{
				m_bIgnoreExternalMouseMessages = value;
			}
		}
	}

	public override BarItem BarItem
	{
		get
		{
			return base.BarItem;
		}
		set
		{
			if (base.BarItem != value)
			{
				if (base.BarItem != null)
				{
					base.BarItem.PropertyChanged -= m_PropertyChangedHandler;
				}
				base.BarItem = value;
				if (base.BarItem != null)
				{
					base.BarItem.PropertyChanged += m_PropertyChangedHandler;
					listBoxContainer.RightToLeft = (GetIsMirrored() ? RightToLeft.Yes : RightToLeft.No);
				}
				if (ComboBoxBarItem.ListBox != null && !ComboBoxBarItem.DesignMode)
				{
					listBoxContainer.ListBox = ComboBoxBarItem.ListBox;
					m_lstNativeWnd = new ActivationNativeWindow(listBoxContainer.ListBox);
					m_lstNativeWnd.MouseActivated += m_lstNativeWnd_MouseActivated;
					m_lstNativeWnd.LostFocus += ListBox_LostFocus;
				}
				listBoxContainer.ListBox.KeyDown += OnEditPartKeyDown;
			}
		}
	}

	protected bool IsCustomListBox
	{
		get
		{
			if (ComboBoxBarItem != null)
			{
				return ComboBoxBarItem.ListBox != null;
			}
			return false;
		}
	}

	protected ComboBoxBarItem ComboBoxBarItem => BarItem as ComboBoxBarItem;

	internal Rectangle DropDownButtonBounds
	{
		get
		{
			Rectangle result = Rectangle.Round(Bounds);
			result.X = (GetIsMirrored() ? result.Left : (result.Right - GetComboBoxDropDownWidth() - 3 - 1));
			if (GetIsMirrored())
			{
				int num = result.Width - ComboBoxBarItem.MinWidth;
				if (num > 0)
				{
					result.X += num;
				}
			}
			if (!BarRenderer.IsInteger(Bounds.Y) && BarItem != null && !BarItem.Enabled)
			{
				result.Offset(0, 1);
			}
			result.Offset(0, 1);
			result.Width = GetComboBoxDropDownWidth();
			result.Height -= 2;
			return result;
		}
	}

	public override bool NeedCenterVAlign => true;

	protected virtual Rectangle TextAreaBounds
	{
		get
		{
			int width = DropDownButtonBounds.Width;
			RectangleF value = Bounds;
			if (value.Width > (float)ComboBoxBarItem.MinWidth)
			{
				value.Width = ComboBoxBarItem.MinWidth;
				value.X += Bounds.Width - value.Width;
			}
			value.X += 3f;
			value.Width -= width + 4;
			if (GetIsMirrored())
			{
				value.X += width;
			}
			bool flag = BarRenderer.IsInteger(Bounds.Y);
			int num = 0;
			num = ((XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.ThemesEnabled) ? 1 : (flag ? 1 : 2));
			value.Offset(0f, -num);
			return Rectangle.Ceiling(value);
		}
	}

	internal bool DesignMode
	{
		get
		{
			if ((BarItem == null || !BarItem.DesignMode) && !parent.GetBarControl().DesignMode)
			{
				if (parent.Bar.Manager != null)
				{
					return parent.Bar.Manager.DesignMode;
				}
				return false;
			}
			return true;
		}
	}

	public ComboBoxItemRenderer(IBarRenderer parent)
		: base(parent)
	{
		m_bIgnoreExternalMouseMessages = true;
		popupParent = parent;
		listBoxContainer = new ListBoxContainer();
		listBoxContainer.PopupParent = popupParent;
		listBoxContainer.MouseWheel += listBoxContainer_MouseWheel;
		m_PropertyChangedHandler = BarItem_PropertyChanged;
	}

	public override void DrawSeparator(Graphics g)
	{
		IBarControl barControl = parent.GetBarControl();
		Control control = barControl.GetControl();
		if (control != null)
		{
			GraphicsProvider gp = new GraphicsProvider(control);
			SizeF preferredSize = base.GetPreferredSize(gp);
			SizeF size = Bounds.Size;
			if (preferredSize.Height > size.Height)
			{
				size = preferredSize;
			}
			RectangleF rectangleF = parent.Bounds;
			PointF location = Bounds.Location;
			float height = rectangleF.Height;
			location.Y = rectangleF.Top + (height - size.Height) / 2f;
			RectangleF fBounds = new RectangleF(location, size);
			DrawSeparator(g, fBounds);
		}
		else
		{
			base.DrawSeparator(g, Bounds);
		}
	}

	protected bool GetIsMirrored()
	{
		return base.IsRTL;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (listBoxContainer != null)
			{
				listBoxContainer.ListBox.KeyDown -= OnEditPartKeyDown;
				listBoxContainer.Dispose();
				listBoxContainer = null;
			}
			if (m_lstNativeWnd != null)
			{
				m_lstNativeWnd.ReleaseHandle();
			}
		}
		base.Dispose(disposing);
	}

	public override void BarItemPropertyChanged(SyncfusionPropertyChangedEventArgs e)
	{
		base.BarItemPropertyChanged(e);
		if (e.PropertyName == "Editable" || e.PropertyName == "ListBox")
		{
			IBarRenderer barRenderer = parent;
			parent.RemoveRenderer(this);
			barRenderer.UpdateRenderers();
		}
	}

	public override bool ProcessKeyDown(Keys key)
	{
		OnEditPartKeyDown(this, new KeyEventArgs(key));
		return base.ProcessKeyDown(key);
	}

	public override bool ShouldDrawText()
	{
		if (BarItem != null && BarItem.PaintStyle != PaintStyle.Default && BarItem.PaintStyle != PaintStyle.TextOnlyInMenus)
		{
			return true;
		}
		return false;
	}

	internal override void OnActiveChanged()
	{
		if (Active)
		{
			parent.GetBarControl().GetControl().Select();
		}
	}

	public override SizeF GetPreferredSize(IGraphicsProvider gp)
	{
		SizeF preferredSize = SizeF.Empty;
		AddTextPreferredSize(gp, ref preferredSize);
		int num = 20 - BarItemRenderer.PadY * 2;
		ProvideFontInfoEventArgs e = new ProvideFontInfoEventArgs(parent.GetBarControl().GetControl().Font);
		BarItem.OnProvideFontInfo(e);
		Size size = MeasureText(gp.Graphics, WinFormsUtils.MeasureEmptyCellString, e.Font);
		if (num < size.Height)
		{
			num = size.Height;
		}
		if (preferredSize.Height < (float)num)
		{
			preferredSize.Height = num;
		}
		preferredSize.Width += ComboBoxBarItem.MinWidth;
		preferredSize.Height += BarItemRenderer.PadY * 2;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.ThemesEnabled && !base.IsParentMainMenu && base.Style != VisualStyle.Office2007 && base.Style != VisualStyle.Office2007Outlook)
		{
			preferredSize.Width += base.PaddingForThemesX;
			preferredSize.Height += base.PaddingForThemesY;
		}
		preferredSize.Width += 6f;
		return preferredSize;
	}

	protected Point OffsetPointByDropDownArea(Point point)
	{
		if (GetIsMirrored())
		{
			point.X = (int)Bounds.Right - point.X - GetDropDownAreaWidth() - BarItemRenderer.PadX;
		}
		else
		{
			point.X += GetDropDownAreaWidth() + BarItemRenderer.PadX + 6;
		}
		return point;
	}

	public bool IsShowing()
	{
		if (popupChild != null && popupChild.IsShowing())
		{
			return true;
		}
		return false;
	}

	protected override bool ShowDropDown(Queue pbiQueue)
	{
		if (IsShowing())
		{
			return true;
		}
		if (!parent.Customizing)
		{
			ListBox listBox = listBoxContainer.ListBox;
			if (listBox != null)
			{
				popupChild = listBoxContainer;
				MainFrameBarManager mainManager = GetMainManager();
				if (mainManager != null)
				{
					mainManager.ShouldHidePopup = true;
				}
				if (listBoxContainer.PopupHost == null)
				{
					listBoxContainer.EnsurePopupHost();
				}
				listBoxContainer.CloseOnClick = ComboBoxBarItem.CloseOnClick;
				listBoxContainer.PopupHost.IgnoreWorkingArea = ComboBoxBarItem.IgnoreWorkingArea;
				InitChoiceList();
				listBoxContainer.ShowPopup(Point.Empty);
				ComboBoxBarItem?.OnDropDownOpened();
				return true;
			}
			return false;
		}
		return false;
	}

	protected virtual void InitChoiceList()
	{
		ListBox listBox = listBoxContainer.ListBox;
		if (!IsCustomListBox)
		{
			listBox.Items.Clear();
			StringEnumerator enumerator = ComboBoxBarItem.ChoiceList.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					string current = enumerator.Current;
					listBox.Items.Add(current);
				}
			}
			finally
			{
				if (enumerator is IDisposable disposable)
				{
					disposable.Dispose();
				}
			}
		}
		else
		{
			object dataSource = listBox.DataSource;
			if (dataSource != null)
			{
				BindingContext bindingContext = listBox.BindingContext;
				if (bindingContext != null && bindingContext[dataSource] is CurrencyManager currencyManager)
				{
					currencyManager.Refresh();
				}
			}
		}
		ComboBoxBarItem.OnInitListBox(new ComboBoxBarItemInitListBoxEventArgs(listBox));
		if (listBox is GridComboBoxListBoxPart gridComboBoxListBoxPart)
		{
			gridComboBoxListBoxPart.DropDownRows = ComboBoxBarItem.MaxDropDownItems;
		}
		listBox.SelectedItem = ComboBoxBarItem.TextBoxValue;
		if (ComboBoxBarItem.MinDropDownWidth < ComboBoxBarItem.MinWidth)
		{
			listBox.Width = ComboBoxBarItem.MinWidth;
		}
		else
		{
			listBox.Width = ComboBoxBarItem.MinDropDownWidth;
		}
		listBox.Width -= 3;
		if (ComboBoxBarItem.MaxDropDownItems <= listBox.Items.Count)
		{
			int num = 0;
			if (listBox.DrawMode != DrawMode.OwnerDrawVariable)
			{
				num = ComboBoxBarItem.MaxDropDownItems * listBox.ItemHeight;
			}
			else
			{
				for (int i = 0; i < ComboBoxBarItem.MaxDropDownItems; i++)
				{
					num += listBox.GetItemHeight(i);
				}
			}
			listBox.Height = num;
		}
		else if (listBox.Items.Count > 0)
		{
			listBox.Height = listBox.PreferredHeight;
		}
		else
		{
			int val = ComboBoxBarItem.MaxDropDownItems;
			if (ListBox.DataSource is IList list)
			{
				val = list.Count;
			}
			else if (ListBox.DataSource is IListSource listSource)
			{
				val = listSource.GetList().Count;
			}
			ListBox.Height = Math.Min(val, ComboBoxBarItem.MaxDropDownItems) * ListBox.ItemHeight;
		}
		listBoxContainer.Size = new Size(listBox.Width + 2, listBox.Height + 1);
	}

	protected override void HideDropDown()
	{
		if (popupChild != null)
		{
			popupChild.HidePopup(PopupCloseType.Canceled);
		}
		ComboBoxBarItem?.OnDropDownClosed();
	}

	public virtual void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		popupChild = null;
		ShowingDropDown = false;
		if (popupCloseType == PopupCloseType.Done)
		{
			ComboBoxBarItem.TextBoxValue = GetListBoxText();
			BarItem.PerformClick();
		}
	}

	protected virtual string GetListBoxText()
	{
		object selectedItem = listBoxContainer.ListBox.SelectedItem;
		if (selectedItem != null)
		{
			return GetItemText(selectedItem);
		}
		return string.Empty;
	}

	public string GetItemText(object item)
	{
		if (ListBox.DataSource != null && ListBox.DisplayMember != null)
		{
			item = FilterItemOnProperty(item, ListBox.DisplayMember);
			if (item == null)
			{
				return "";
			}
		}
		return Convert.ToString(item, CultureInfo.CurrentCulture);
	}

	protected object FilterItemOnProperty(object item, string field)
	{
		if (item != null && field.Length > 0)
		{
			try
			{
				PropertyDescriptor propertyDescriptor;
				if (ListBox.DataSource != null)
				{
					CurrencyManager currencyManager = (CurrencyManager)ListBox.BindingContext[ListBox.DataSource, new BindingMemberInfo(ListBox.DisplayMember).BindingPath];
					propertyDescriptor = currencyManager.GetItemProperties().Find(field, ignoreCase: true);
				}
				else
				{
					propertyDescriptor = TypeDescriptor.GetProperties(item).Find(field, ignoreCase: true);
				}
				if (propertyDescriptor != null)
				{
					item = propertyDescriptor.GetValue(item);
				}
			}
			catch (Exception)
			{
			}
		}
		return item;
	}

	public virtual void AfterChildClosing()
	{
	}

	Point IDropDownItem.GetLocationForPopupAlignment(PopupRelativeAlignment prevAlign, out PopupRelativeAlignment newAlign)
	{
		Control control = parent.GetBarControl().GetControl();
		Rectangle parentBounds = Rectangle.Ceiling(Bounds);
		if (parentBounds.Width > ComboBoxBarItem.MinWidth)
		{
			parentBounds.Width = ComboBoxBarItem.MinWidth;
			parentBounds.X += (int)Bounds.Width - parentBounds.Width;
		}
		parentBounds.Height++;
		Point p = PopupUtils.ComputeDefaultPopupAlignment(prevAlign, out newAlign, GetFirstAlignPreference(), PopupRelativeAlignment.RightTop, parentBounds);
		newAlign = PopupRelativeAlignment.Default;
		return control.PointToScreen(p);
	}

	public virtual Control GetPopupParentControl()
	{
		return null;
	}

	protected PopupRelativeAlignment GetFirstAlignPreference()
	{
		switch (parent.Alignment)
		{
		default:
			_ = 32;
			goto case CommandBarDockState.Top;
		case CommandBarDockState.Top:
		case (CommandBarDockState)3:
			return PopupRelativeAlignment.BottomLeft;
		case CommandBarDockState.Left:
			return PopupRelativeAlignment.RightBottom;
		case CommandBarDockState.Bottom:
			return PopupRelativeAlignment.TopRight;
		case CommandBarDockState.Right:
			return PopupRelativeAlignment.LeftBottom;
		}
	}

	Point[] IDropDownItem.GetBorderOverlapCue(PopupRelativeAlignment rAlign)
	{
		Control control = parent.GetBarControl().GetControl();
		Rectangle dropDownBounds = control.RectangleToScreen(Rectangle.Ceiling(Bounds));
		return PopupUtils.ComputeDefaultBorderOverlapCue(rAlign, dropDownBounds);
	}

	public virtual bool IsRelatedControl(Control ctl)
	{
		return ctl == ListBox;
	}

	public override void OnMouseDown(Point pointMouseDown)
	{
		if (BarItem.Enabled || parent.Customizing)
		{
			if (!ShowingDropDown)
			{
				Active = true;
				ShowingDropDown = true;
				parent.GetBarControl().GetControl().Focus();
			}
			else
			{
				ShowingDropDown = false;
				Active = false;
			}
		}
	}

	public override void OnMouseUp(Point pointMouseUp)
	{
	}

	public override void OnMouseMove(Point pointMouseMove)
	{
	}

	public override void OnMouseWheel(bool isUp)
	{
		InitChoiceList();
		if (listBoxContainer.ListBox.Items.Count == 0)
		{
			return;
		}
		int selectedIndex = listBoxContainer.ListBox.SelectedIndex;
		selectedIndex = ((!isUp) ? (selectedIndex + 1) : (selectedIndex - 1));
		if (selectedIndex != listBoxContainer.ListBox.SelectedIndex)
		{
			if (selectedIndex > listBoxContainer.ListBox.Items.Count - 1)
			{
				selectedIndex = listBoxContainer.ListBox.Items.Count - 1;
			}
			if (selectedIndex < 0)
			{
				selectedIndex = 0;
			}
			ComboBoxBarItem.TextBoxValue = GetItemText(ListBox.Items[selectedIndex]);
			ListBox.SelectedIndex = selectedIndex;
		}
	}

	protected virtual void OnEditPartKeyDown(object sender, KeyEventArgs e)
	{
		int num = -1;
		int num2 = 0;
		if (e.Alt && e.KeyCode == Keys.Down)
		{
			ShowingDropDown = !ShowingDropDown;
			if (!ShowingDropDown)
			{
				Active = true;
			}
			return;
		}
		if (e.KeyCode == Keys.Return)
		{
			ComboBoxBarItem.PerformClick();
		}
		else if (e.KeyCode == Keys.Down || e.KeyCode == Keys.Up || e.KeyCode == Keys.Next || e.KeyCode == Keys.Prior)
		{
			if (!IsShowing())
			{
				InitChoiceList();
			}
			if (listBoxContainer.ListBox.Items.Count == 0)
			{
				return;
			}
			num = listBoxContainer.ListBox.SelectedIndex;
			num2 = listBoxContainer.ListBox.Height / listBoxContainer.ListBox.GetItemHeight(0) - 1;
		}
		e.Handled = true;
		switch (e.KeyCode)
		{
		case Keys.Down:
			num++;
			break;
		case Keys.Up:
			num--;
			break;
		case Keys.Next:
			num += num2;
			break;
		case Keys.Prior:
			num -= num2;
			break;
		default:
			e.Handled = false;
			break;
		}
		if (e.Handled && num != listBoxContainer.ListBox.SelectedIndex)
		{
			if (num > listBoxContainer.ListBox.Items.Count - 1)
			{
				num = listBoxContainer.ListBox.Items.Count - 1;
			}
			if (num < 0)
			{
				num = 0;
			}
			listBoxContainer.ListBox.SetSelected(num, value: true);
			ComboBoxBarItem.TextBoxValue = GetItemText(ListBox.Items[num]);
			ListBox.SelectedIndex = num;
		}
	}

	public static float GetDropDownArrowWidth()
	{
		float num = 5f * ((float)SystemInformation.MenuCheckSize.Width / 13f);
		int num2 = (int)num;
		if (num2 % 2 == 0)
		{
			num += 1f;
		}
		return num;
	}

	public static float GetDropDownArrowHeight()
	{
		return (int)GetDropDownArrowWidth() / 2 + 1;
	}

	public static Point[] GetDropDownBorderBounds(Rectangle btnBounds)
	{
		int arWidth = (int)GetDropDownArrowWidth();
		int arHeight = (int)GetDropDownArrowHeight();
		return GetDropDownBorderBounds(btnBounds, arWidth, arHeight);
	}

	public static Point[] GetDropDownBorderBounds(Rectangle btnBounds, int arWidth, int arHeight)
	{
		int num = btnBounds.Left + (btnBounds.Width - arWidth) / 2 + 1;
		int y = btnBounds.Top + (btnBounds.Height - arHeight) / 2;
		Rectangle rectangle = new Rectangle(num, y, arWidth, arHeight);
		return new Point[4]
		{
			new Point(rectangle.Left, rectangle.Top),
			new Point(rectangle.Right, rectangle.Top),
			new Point(num + arWidth / 2, rectangle.Bottom),
			new Point(rectangle.Left, rectangle.Top)
		};
	}

	private Brush GetButtonBrush(VisualStyle style, Rectangle bounds)
	{
		Brush brush = null;
		return style switch
		{
			VisualStyle.Office2003 => new SolidBrush(Office2003Colors.DockBarColorLight), 
			VisualStyle.Office2007Outlook => new LinearGradientBrush(bounds, Office2007OutlookColors.ComboButtonLightColor, Office2007OutlookColors.ComboButtonDarkColor, LinearGradientMode.Vertical), 
			VisualStyle.VS2005 => new LinearGradientBrush(bounds, VS2005Colors.MenuColumnStyleLightColor, VS2005Colors.MenuColumnStyleDarkColor, LinearGradientMode.Vertical), 
			_ => new SolidBrush(parent.GetBarControl().GetControl().BackColor), 
		};
	}

	private Brush GetHighlightButtonBrush(VisualStyle style, Rectangle bounds)
	{
		Brush brush = null;
		return style switch
		{
			VisualStyle.Office2003 => new SolidBrush(Office2003Colors.SelColor), 
			VisualStyle.Office2007Outlook => new LinearGradientBrush(bounds, Office2007OutlookColors.BarItemHighlightLightColor, Office2007OutlookColors.BarItemHighlightDarkColor, LinearGradientMode.Vertical), 
			VisualStyle.VS2005 => new LinearGradientBrush(bounds, VS2005Colors.BarItemHighlightLightColor, VS2005Colors.BarItemHighlightDarkColor, LinearGradientMode.Vertical), 
			_ => new SolidBrush(MenuColors.SelColor), 
		};
	}

	private Brush GetPressedButtonBrush(VisualStyle style, Rectangle bounds)
	{
		Brush brush = null;
		return style switch
		{
			VisualStyle.Office2003 => new SolidBrush(Office2003Colors.PressedSelColor), 
			VisualStyle.Office2007Outlook => new LinearGradientBrush(bounds, Office2007OutlookColors.BarItemPressLightColor, Office2007OutlookColors.BarItemPressDarkColor, LinearGradientMode.Vertical), 
			VisualStyle.VS2005 => new LinearGradientBrush(bounds, VS2005Colors.BarItemPressLightColor, VS2005Colors.BarItemPressDarkColor, LinearGradientMode.Vertical), 
			_ => new SolidBrush(MenuColors.PressedSelColor), 
		};
	}

	protected Color GetArrowColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => SystemColors.ControlText, 
			VisualStyle.Office2007Outlook => SystemColors.ControlText, 
			VisualStyle.VS2005 => SystemColors.ControlText, 
			_ => ShowingDropDown ? SystemColors.Window : SystemColors.ControlText, 
		};
	}

	private void DrawComboButton(Graphics g, Rectangle rect)
	{
		rect.X++;
		rect.Width--;
		Color backColor = parent.GetBarControl().GetControl().BackColor;
		Brush brush = GetButtonBrush(base.Style, rect);
		if ((backColor == Color.Transparent || (XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.ThemesEnabled)) && base.Style != VisualStyle.VS2005 && base.Style != VisualStyle.Office2007Outlook)
		{
			brush = new SolidBrush(SystemColors.Control);
		}
		if (!parent.Customizing && base.ShowHighlightRectangle)
		{
			if (ShowingDropDown)
			{
				brush = GetPressedButtonBrush(base.Style, rect);
			}
			else if (HotTrack || Active)
			{
				brush = GetHighlightButtonBrush(base.Style, rect);
			}
		}
		using (brush)
		{
			g.FillRectangle(brush, rect);
		}
	}

	private void DrawComboButtonArrow(Graphics g, Rectangle rect)
	{
		Point[] dropDownBorderBounds = GetDropDownBorderBounds(rect);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(dropDownBorderBounds);
		Color color = GetArrowColor(base.Style);
		if (!BarItem.Enabled)
		{
			color = SystemColors.GrayText;
		}
		using Brush brush = new SolidBrush(color);
		g.FillRegion(brush, new Region(graphicsPath));
	}

	protected override void DrawTextAndImage(Graphics g, RectangleF rectTextAndImage, Font textFont, Color textColor, Color bgColor, DrawItemState state)
	{
		if (ShouldDrawText() && BarItem.Text != string.Empty)
		{
			TextFormatFlags format = TextFormatFlags.Default;
			RectangleF textPosition = GetTextPosition(g, BarItem.Text, textFont, rectTextAndImage, format);
			Rectangle rectangle = Rectangle.Round(textPosition);
			int num = ((int)rectTextAndImage.Height - rectangle.Height) / 2;
			if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.ThemesEnabled && base.Style != VisualStyle.Office2007 && base.Style != VisualStyle.Office2007Outlook)
			{
				num++;
			}
			rectangle.Offset(0, num);
			if (rectangle.Width > 0 && rectangle.Height > 0)
			{
				DrawText(g, BarItem.Text, textFont, textColor, Rectangle.Round(rectangle), format);
			}
		}
		if (base.Style == VisualStyle.Office2007)
		{
			ItemState drawState = GetDrawState();
			Office2007BarItemPainter.DrawComboButton(g, DropDownButtonBounds, drawState, base.IsHorizontalAligned);
		}
		else
		{
			DrawComboButton(g, DropDownButtonBounds);
			DrawComboButtonArrow(g, DropDownButtonBounds);
		}
		DrawText(g, ComboBoxBarItem.TextBoxValue, textFont, textColor, TextAreaBounds, TextFormatFlags.SingleLine | TextFormatFlags.VerticalCenter);
	}

	protected override Color GetBGColor()
	{
		if (BarItem.Enabled)
		{
			return SystemColors.Window;
		}
		return SystemColors.Control;
	}

	protected override Color GetForeColorDefault(DrawItemState state)
	{
		Color empty = Color.Empty;
		if ((state & DrawItemState.Disabled) == 0 && (Active || HotTrack) && BarItem.Enabled)
		{
			return MenuColors.SelTextColor;
		}
		return base.GetForeColorDefault(state);
	}

	protected int GetComboBoxDropDownWidth()
	{
		return (int)(3f + (float)(ComboBoxDropDownWidth - 3) * ((float)SystemInformation.MenuCheckSize.Width / 13f));
	}

	protected override ItemState GetDrawState()
	{
		ItemState result = base.GetDrawState();
		if (!parent.Customizing && base.ShowHighlightRectangle)
		{
			if (ShowingDropDown)
			{
				result = ItemState.Pressed;
			}
			else if (HotTrack || Active)
			{
				result = ItemState.Selected;
			}
		}
		else
		{
			result = ItemState.Normal;
		}
		return result;
	}

	protected override void DrawBorders(DrawToolbarItemEventArgs drawItemInfo, bool useThemes)
	{
		if (base.Style == VisualStyle.Office2007)
		{
			Rectangle rect = drawItemInfo.Bounds;
			rect.Width = ComboBoxBarItem.MinWidth;
			rect.X += drawItemInfo.Bounds.Width - rect.Width;
			rect.Width -= 4;
			rect.Height--;
			ItemState drawState = GetDrawState();
			Office2007BarItemPainter.DrawComboBoxBarItem(drawItemInfo.Graphics, rect, drawState);
			return;
		}
		if (drawItemInfo.Bounds.Width > ComboBoxBarItem.MinWidth)
		{
			Rectangle rectangle = drawItemInfo.Bounds;
			rectangle.Width = ComboBoxBarItem.MinWidth;
			rectangle.X += drawItemInfo.Bounds.Width - rectangle.Width;
			rectangle.Width -= 3;
			DrawToolbarItemEventArgs drawItemInfo2 = new DrawToolbarItemEventArgs(drawItemInfo.Graphics, drawItemInfo.MouseDown, drawItemInfo.DropDown, drawItemInfo.Font, rectangle, drawItemInfo.Index, drawItemInfo.State, drawItemInfo.ForeColor, drawItemInfo.BackColor, drawItemInfo.BackColor2, drawItemInfo.BoundsInterior, drawItemInfo.defaultDrawBackground, drawItemInfo.defaultDrawBorders, drawItemInfo.defaultDrawInterior);
			base.DrawBorders(drawItemInfo2, useThemes: false);
		}
		else
		{
			base.DrawBorders(drawItemInfo, useThemes: false);
		}
		if ((HotTrack || Active) && base.ShowHighlightRectangle)
		{
			Rectangle dropDownButtonBounds = DropDownButtonBounds;
			bool flag = HotTrack && Active;
			Pen pen = null;
			pen = ((!flag) ? (BarItem.Checked ? GetBorderCheckPen(base.Style) : GetBorderPen(base.Style)) : GetBorderPressPen(base.Style));
			int num = (base.IsRTL ? dropDownButtonBounds.Right : dropDownButtonBounds.Left);
			drawItemInfo.Graphics.DrawLine(pen, num, dropDownButtonBounds.Top, num, dropDownButtonBounds.Bottom);
		}
		if (!BarItem.Enabled)
		{
			Rectangle rect2 = Rectangle.Ceiling(Bounds);
			if (rect2.Width > ComboBoxBarItem.MinWidth)
			{
				rect2.Width = ComboBoxBarItem.MinWidth;
				rect2.X += (int)Bounds.Width - rect2.Width;
			}
			rect2.Width -= 3;
			rect2.Width--;
			rect2.Height--;
			drawItemInfo.Graphics.DrawRectangle(new Pen(SystemColors.ControlDark), rect2);
		}
	}

	protected override void DrawBackground(DrawToolbarItemEventArgs drawItemInfo, bool useThemes)
	{
		Graphics graphics = drawItemInfo.Graphics;
		Rectangle rect = drawItemInfo.Bounds;
		Color empty = Color.Empty;
		if (rect.Width > ComboBoxBarItem.MinWidth)
		{
			rect.X += rect.Width - ComboBoxBarItem.MinWidth;
			rect.Width = ComboBoxBarItem.MinWidth;
			Rectangle rect2 = drawItemInfo.Bounds;
			rect2.X += 3;
			rect2.Width = rect2.Width - rect.Width - 3;
			empty = parent.GetBarControl().GetControl().BackColor;
			if (empty != parent.GetBarControl().GetControl().BackColor)
			{
				graphics.FillRectangle(new SolidBrush(empty), rect2);
			}
		}
		empty = drawItemInfo.BackColor;
		rect.Width -= 3;
		if (empty != parent.GetBarControl().GetControl().BackColor)
		{
			graphics.FillRectangle(new SolidBrush(empty), rect);
		}
	}

	private void BarItem_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if ("RightToLeft" == e.PropertyName && listBoxContainer != null)
		{
			listBoxContainer.RightToLeft = (RightToLeft)e.NewValue;
		}
	}

	private void listBoxContainer_MouseWheel(object sender, MouseEventArgs e)
	{
		if (!ComboBoxBarItem.Editable)
		{
			OnMouseWheel(e.Delta > 0);
		}
	}

	private void m_lstNativeWnd_MouseActivated(object sender, EventArgs e)
	{
		if (listBoxContainer != null)
		{
			listBoxContainer.ShouldHidePopup = false;
		}
		MainFrameBarManager mainManager = GetMainManager();
		if (mainManager != null)
		{
			mainManager.ShouldHidePopup = false;
		}
	}

	protected virtual void ListBox_LostFocus(object sender, EventArgs e)
	{
		if (listBoxContainer != null)
		{
			listBoxContainer.ShouldHidePopup = true;
		}
		if (parent is BarRenderer barRenderer)
		{
			barRenderer.NeedDropDown = false;
		}
		int selectedIndex = listBoxContainer.ListBox.SelectedIndex;
		if (selectedIndex >= 0 && selectedIndex < listBoxContainer.ListBox.Items.Count && ComboBoxBarItem != null)
		{
			ComboBoxBarItem.TextBoxValue = GetItemText(listBoxContainer.ListBox.Items[selectedIndex]);
		}
		MainFrameBarManager mainManager = GetMainManager();
		if (mainManager != null)
		{
			mainManager.ShouldHidePopup = true;
		}
	}
}
