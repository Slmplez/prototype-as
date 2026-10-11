using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Layouting;

public class LayouterBase : ILayouter, IAreasStateCache, IDisposable
{
	public class AreaStateCollection : Dictionary<LayoutInfo, AreaStates>
	{
	}

	private const TextFormatFlags c_textFormat = TextFormatFlags.EndEllipsis | TextFormatFlags.NoPrefix | TextFormatFlags.VerticalCenter | TextFormatFlags.PreserveGraphicsClipping | TextFormatFlags.PreserveGraphicsTranslateTransform;

	public const int DropDownButtonWidth = 16;

	public const int BarHorzPadding = 5;

	public const int BarDropDownButtonWidth = 16;

	public const int HistoryButtonHeight = 28;

	public const int HistoryBackButtonWidth = 28;

	public const int HistoryForwardButtonWidth = 26;

	public const int HistoryDropDownButtonWidth = 15;

	public const int TextBoxVerticalPadding = 4;

	public const int TextBoxHorizontalPadding = 4;

	private LayoutInfoCollection _layouts = new LayoutInfoCollection(8);

	private List<LayoutInfo> _hitTestAreas = new List<LayoutInfo>();

	private BarLayoutInfoCollection _barsLayout;

	private AreaStateCollection _areasState = new AreaStateCollection();

	private Rectangle m_border;

	private Bar _rootBar;

	public BarLayoutInfoCollection BarLayoutInfos
	{
		get
		{
			if (_barsLayout == null)
			{
				_barsLayout = new BarLayoutInfoCollection();
			}
			return _barsLayout;
		}
	}

	public TextFormatFlags TextFormat => TextFormatFlags.EndEllipsis | TextFormatFlags.NoPrefix | TextFormatFlags.VerticalCenter | TextFormatFlags.PreserveGraphicsClipping | TextFormatFlags.PreserveGraphicsTranslateTransform;

	public virtual Rectangle BorderBounds => m_border;

	public virtual Bar RootLayoutBar => _rootBar;

	public virtual Size MeasureText(NavigationView navView, Graphics g, string text)
	{
		TextFormatFlags textFormatFlags = TextFormatFlags.EndEllipsis | TextFormatFlags.NoPrefix | TextFormatFlags.VerticalCenter | TextFormatFlags.PreserveGraphicsClipping | TextFormatFlags.PreserveGraphicsTranslateTransform;
		return TextRenderer.MeasureText(flags: (navView.RightToLeft == RightToLeft.Yes) ? (textFormatFlags | TextFormatFlags.RightToLeft) : (textFormatFlags & ~TextFormatFlags.RightToLeft), dc: g, text: text, font: navView.Font, proposedSize: new Size(int.MaxValue, int.MaxValue));
	}

	public virtual void UpdateLayout(NavigationView navView)
	{
		using Graphics g = navView.CreateGraphics();
		Rectangle client = navView.ClientRectangle;
		SetupLayouter(navView);
		LayoutHistoryButtons(navView, ref client);
		LayoutBarImage(navView, ref client);
		LayoutCustomButtons(navView, ref client);
		LayoutDropDownButton(navView, ref client);
		BarLayoutInfos.Clear();
		if (navView.AllowEditMode && navView.InEditingMode)
		{
			LayoutEditArea(navView);
		}
		else
		{
			LayoutBars(navView, g, client);
		}
		if (navView.ShowBorder)
		{
			LayoutBorder(navView);
		}
		if (navView.RightToLeft == RightToLeft.Yes)
		{
			UpdateLayoutForRTL(navView);
		}
	}

	protected virtual int GetTextBoxHeight(NavigationView navView)
	{
		return navView.Font.Height;
	}

	protected virtual int GetSpaceAreaHeight(NavigationView navView)
	{
		return GetTextBoxHeight(navView) + 8;
	}

	private void LayoutEditArea(NavigationView navView)
	{
		LayoutSpaceArea(navView, null);
		LayoutInfo layout = GetLayout(HitTestAreas.Space);
		Rectangle bounds = layout.Bounds;
		Rectangle clientRectangle = navView.ClientRectangle;
		bounds.Inflate(-4, 0);
		bounds.Height = GetTextBoxHeight(navView);
		bounds.Y = clientRectangle.Top + (clientRectangle.Height - bounds.Height) / 2;
		LayoutInfo layoutInfo = new LayoutInfo(HitTestAreas.TextBox, bounds);
		_layouts[HitTestAreas.TextBox] = layoutInfo;
		_hitTestAreas.Add(layoutInfo);
	}

	public virtual LayoutInfo HitTest(Point point)
	{
		return _hitTestAreas.Find((LayoutInfo li) => li.Bounds.Contains(point));
	}

	public LayoutInfo GetLayout(HitTestAreas area)
	{
		LayoutInfo result = null;
		if (_layouts.ContainsKey(area))
		{
			result = _layouts[area];
		}
		return result;
	}

	protected void SetBounds(HitTestAreas area, Rectangle bounds)
	{
		if (area >= HitTestAreas.Bar)
		{
			return;
		}
		if (!bounds.IsEmpty)
		{
			LayoutInfo layoutInfo;
			if (_layouts.ContainsKey(area))
			{
				layoutInfo = _layouts[area];
				layoutInfo.Bounds = bounds;
			}
			else
			{
				layoutInfo = new LayoutInfo(area, bounds);
				_layouts[area] = layoutInfo;
			}
			_hitTestAreas.Add(layoutInfo);
		}
		else
		{
			_layouts.Remove(area);
		}
	}

	private void LayoutHistoryButtons(NavigationView navView, ref Rectangle client)
	{
		if (navView.ShowHistoryButtons)
		{
			Size size = new Size(28, 28);
			Size size2 = new Size(26, 28);
			Size size3 = new Size(15, 28);
			int y = (client.Height - 28) / 2;
			Rectangle bounds = new Rectangle(new Point(client.Left, y), size);
			Rectangle bounds2 = new Rectangle(new Point(bounds.Left + size.Width, y), size2);
			Rectangle bounds3 = new Rectangle(new Point(bounds2.Left + bounds2.Width, y), size3);
			SetBounds(HitTestAreas.HistoryBackButton, bounds);
			SetBounds(HitTestAreas.HistoryForwardButton, bounds2);
			SetBounds(HitTestAreas.HistoryDropDownButton, bounds3);
			int num = size.Width + size2.Width + size3.Width;
			client.X += num;
			client.Width -= num;
		}
	}

	private void LayoutBarImage(NavigationView navView, ref Rectangle client)
	{
		Bar selectedBar = navView.SelectedBar;
		if (selectedBar == null)
		{
			return;
		}
		Image barImage = Bar.Helper.GetBarImage(selectedBar, navView);
		if (barImage == null && !selectedBar.Enabled)
		{
			barImage = Bar.Helper.GetBarImage(selectedBar, navView, bBarEnabled: true);
		}
		if (barImage == null)
		{
			return;
		}
		Size size = barImage.Size;
		int num = client.Height - 5;
		if (size.Height > size.Width)
		{
			if (size.Height > num)
			{
				size.Width = size.Width * num / size.Height;
				size.Height = num;
			}
		}
		else if (size.Width > num)
		{
			size.Height = size.Height * num / size.Width;
			size.Width = num;
		}
		int y = (client.Height - size.Height) / 2;
		int num2 = 2;
		Rectangle bounds = new Rectangle(client.Left + num2, y, size.Width, size.Height);
		SetBounds(HitTestAreas.BarImage, bounds);
		client.X += bounds.Width + 5;
		client.Width -= bounds.Width + 5;
	}

	private void LayoutCustomButtons(NavigationView navView, ref Rectangle client)
	{
		CustomButtonCollection customButtons = navView.CustomButtons;
		if (customButtons.Count <= 0)
		{
			return;
		}
		int num = 0;
		foreach (CustomButton item in customButtons)
		{
			if (item.Visible)
			{
				num += item.Width;
			}
		}
		Rectangle empty = Rectangle.Empty;
		if (num <= 0)
		{
			return;
		}
		empty = new Rectangle(client.Left + client.Width - num, client.Top, num, client.Height);
		client.Width -= num;
		SetBounds(HitTestAreas.CustomButtons, empty);
		int num2 = empty.Location.X;
		foreach (CustomButton item2 in customButtons)
		{
			if (item2.Visible)
			{
				item2.Left = num2;
				item2.Top = (client.Height - item2.Height) / 2;
				num2 += item2.Width;
			}
		}
	}

	private void LayoutDropDownButton(NavigationView navView, ref Rectangle client)
	{
		int spaceAreaHeight = GetSpaceAreaHeight(navView);
		Rectangle bounds = new Rectangle(client.Left + client.Width - 16, client.Top + (client.Height - spaceAreaHeight) / 2, 16, spaceAreaHeight);
		client.Width -= 16;
		SetBounds(HitTestAreas.DropDownButton, bounds);
	}

	private void LayoutBars(NavigationView navView, Graphics g, Rectangle client)
	{
		List<Bar> selectedBars = navView.SelectedBars;
		BarLayoutInfoCollection barLayoutInfos = BarLayoutInfos;
		int num = (barLayoutInfos.Capacity = selectedBars.Count);
		int num2 = num - 1;
		for (int num3 = num2; num3 >= 0; num3--)
		{
			Bar bar = selectedBars[num3];
			if (bar.Visible)
			{
				bool barIsLast = num3 == num2;
				BarLayoutInfo barLayoutInfo = LayoutBar(num3, bar, navView, g, barIsLast, ref client);
				if (barLayoutInfo == null && barLayoutInfos.Count > 0 && num3 < num2)
				{
					int index = barLayoutInfos.Count - 1;
					BarLayoutInfo barLayoutInfo2 = barLayoutInfos[index];
					int barMinWidth = GetBarMinWidth(bar, navView);
					client.X += barMinWidth;
					client.Width += barLayoutInfo2.Bounds.Width - barMinWidth;
					int num4 = num3 + 1;
					Bar bar2 = selectedBars[num4];
					barLayoutInfo2 = LayoutBar(num4, bar2, navView, g, num4 == num2, ref client);
					if (barLayoutInfo2 != null)
					{
						barLayoutInfos[index] = barLayoutInfo2;
						client.X -= barMinWidth;
						client.Width += barMinWidth;
						if (!barLayoutInfo2.ShowShevron)
						{
							barLayoutInfo = LayoutBar(num3, bar, navView, g, barIsLast, ref client);
						}
					}
				}
				if (barLayoutInfo == null)
				{
					break;
				}
				barLayoutInfos.Add(barLayoutInfo);
				if (barLayoutInfo.ShowShevron)
				{
					break;
				}
			}
		}
		barLayoutInfos.TrimExcess();
		_rootBar = null;
		int num5 = -client.Width;
		if (barLayoutInfos.Count > 0)
		{
			BarLayoutInfo barLayoutInfo3 = barLayoutInfos[barLayoutInfos.Count - 1];
			_rootBar = selectedBars[barLayoutInfo3.Index];
			if (!navView.ShowRootBarText && !barLayoutInfo3.ShowShevron && barLayoutInfos.Count > 1)
			{
				Rectangle bounds = barLayoutInfo3.Bounds;
				int num6 = barLayoutInfo3.Text.Bounds.Width + 10;
				bounds.X += num6;
				bounds.Width -= num6;
				barLayoutInfo3.Bounds = bounds;
				barLayoutInfo3.Text.Bounds = Rectangle.Empty;
				num5 -= num6;
			}
		}
		if (num5 < 0)
		{
			foreach (BarLayoutInfo item in barLayoutInfos)
			{
				item.OffsetBoundsX(num5);
				_hitTestAreas.Add(item);
			}
		}
		LayoutSpaceArea(navView, barLayoutInfos);
	}

	private void LayoutSpaceArea(NavigationView navView, BarLayoutInfoCollection layouts)
	{
		Rectangle spaceBounds = GetSpaceBounds(navView, layouts);
		LayoutInfo layoutInfo = new LayoutInfo(HitTestAreas.Space, spaceBounds);
		_layouts[HitTestAreas.Space] = layoutInfo;
		_hitTestAreas.Add(layoutInfo);
	}

	private Rectangle GetSpaceBounds(NavigationView navView, BarLayoutInfoCollection layouts)
	{
		Rectangle clientRectangle = navView.ClientRectangle;
		Rectangle rectangle = GetLayout(HitTestAreas.HistoryDropDownButton)?.Bounds ?? Rectangle.Empty;
		LayoutInfo layout = GetLayout(HitTestAreas.DropDownButton);
		Rectangle bounds = layout.Bounds;
		int num = ((!rectangle.IsEmpty) ? (rectangle.Right + 1) : 0);
		int left = bounds.Left;
		if (layouts != null && layouts.Count > 0)
		{
			BarLayoutInfo barLayoutInfo = layouts[0];
			num = barLayoutInfo.Bounds.Right;
		}
		else
		{
			LayoutInfo layout2 = GetLayout(HitTestAreas.BarImage);
			if (layout2 != null)
			{
				num += layout2.Bounds.Width + 2;
			}
		}
		int spaceAreaHeight = GetSpaceAreaHeight(navView);
		int y = clientRectangle.Top + (clientRectangle.Height - spaceAreaHeight) / 2;
		return new Rectangle(num, y, left - num, spaceAreaHeight);
	}

	private BarLayoutInfo LayoutBar(int index, Bar bar, NavigationView navView, Graphics g, bool barIsLast, ref Rectangle client)
	{
		int barMinWidth = GetBarMinWidth(bar, navView);
		if (client.Width < barMinWidth)
		{
			return null;
		}
		Size size = MeasureText(navView, g, bar.Text);
		int num = barMinWidth + 5 + size.Width + 5;
		bool showShevron = false;
		if (num > client.Width)
		{
			int num2 = num - client.Width;
			size.Width -= num2;
			if (size.Width <= 0)
			{
				size = Size.Empty;
			}
			num -= num2;
			if (!barIsLast)
			{
				size = Size.Empty;
				num = barMinWidth;
				showShevron = true;
			}
			if (num > client.Width)
			{
				return null;
			}
		}
		int spaceAreaHeight = GetSpaceAreaHeight(navView);
		Rectangle bounds = new Rectangle(client.Right - num, client.Top + (client.Height - spaceAreaHeight) / 2, num, spaceAreaHeight);
		Rectangle textBounds = (size.IsEmpty ? Rectangle.Empty : new Rectangle(bounds.Left + 5, bounds.Top, size.Width, bounds.Height));
		Rectangle dropDownBounds = ((bar.Bars.Count <= 0) ? Rectangle.Empty : new Rectangle(bounds.Right - 16, bounds.Top, 16, bounds.Height));
		BarLayoutInfo result = new BarLayoutInfo(index, bounds, textBounds, dropDownBounds, showShevron);
		client.Width -= num;
		return result;
	}

	private int GetBarMinWidth(Bar bar, NavigationView navView)
	{
		int num = 0;
		if (bar.Bars.Count > 0)
		{
			num += 16;
		}
		return num;
	}

	private void SetupLayouter(NavigationView navView)
	{
		_hitTestAreas.Clear();
		_hitTestAreas.Capacity = navView.SelectedBars.Count + 8;
		_layouts.Clear();
	}

	private void UpdateLayoutForRTL(NavigationView navView)
	{
		int width = navView.ClientRectangle.Width;
		foreach (LayoutInfo value in _layouts.Values)
		{
			LayoutBoundsRTL(width, value);
		}
		foreach (BarLayoutInfo item in _barsLayout)
		{
			LayoutBoundsRTL(width, item);
			LayoutBoundsRTL(width, item.Text);
			LayoutBoundsRTL(width, item.DropDown);
		}
		CustomButtonCollection customButtons = navView.CustomButtons;
		if (customButtons.Count <= 0)
		{
			return;
		}
		foreach (CustomButton item2 in customButtons)
		{
			if (item2.Visible)
			{
				item2.Left = width - item2.Right;
			}
		}
	}

	private static void LayoutBoundsRTL(int width, LayoutInfo info)
	{
		if (info.Bounds != Rectangle.Empty)
		{
			info.Bounds.X = width - info.Bounds.Right;
		}
	}

	private void LayoutBorder(NavigationView navView)
	{
		Rectangle clientRectangle = navView.ClientRectangle;
		int num = 0;
		int right = clientRectangle.Right;
		LayoutInfo layout = GetLayout(HitTestAreas.DropDownButton);
		Rectangle bounds = layout.Bounds;
		right = bounds.Right;
		if (navView.ShowHistoryButtons)
		{
			LayoutInfo layout2 = GetLayout(HitTestAreas.HistoryDropDownButton);
			num = layout2.Bounds.Right + 1;
			int x = num;
			int y = bounds.Top - 1;
			int width = (m_border.Width = right - num - 1);
			m_border = new Rectangle(x, y, width, bounds.Height + 1);
		}
		else
		{
			int x2 = num;
			int top = clientRectangle.Top;
			int width2 = (m_border.Width = right - num - 1);
			m_border = new Rectangle(x2, top, width2, clientRectangle.Height - 1);
		}
		if (navView.RightToLeft == RightToLeft.Yes)
		{
			m_border.X = clientRectangle.Width - m_border.Right - 1;
		}
	}

	public AreaStates GetAreaState(LayoutInfo info)
	{
		AreaStates result = AreaStates.Default;
		if (_areasState.ContainsKey(info))
		{
			result = _areasState[info];
		}
		return result;
	}

	public void SetAreaState(LayoutInfo info, AreaStates areaState)
	{
		_areasState[info] = areaState;
	}

	public List<LayoutInfo> ClearAreaStates()
	{
		List<LayoutInfo> list = new List<LayoutInfo>(_areasState.Count);
		list.AddRange(_areasState.Keys);
		_areasState.Clear();
		return list;
	}

	~LayouterBase()
	{
		Dispose(disposing: false);
		GC.SuppressFinalize(this);
	}

	public void Dispose()
	{
		Dispose(disposing: true);
	}

	protected virtual void Dispose(bool disposing)
	{
		if (disposing)
		{
			_rootBar = null;
		}
	}
}
