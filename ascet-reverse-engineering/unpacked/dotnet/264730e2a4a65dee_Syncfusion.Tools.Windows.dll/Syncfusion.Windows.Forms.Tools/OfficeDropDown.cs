using System;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Layout;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

internal class OfficeDropDown : ToolStripDropDown
{
	protected enum ScrollButtonsArea
	{
		None,
		DownScrollButton,
		UpScrollButton
	}

	private class DropDownExLayoutEngine : LayoutEngine
	{
		public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
		{
			OfficeDropDown officeDropDown = (OfficeDropDown)container;
			int num = officeDropDown.DisplayRectangle.Y + officeDropDown.CaptionHeight;
			if (officeDropDown.ScrollPositionInternal > 0)
			{
				num += 12;
			}
			int num2 = officeDropDown.DisplayRectangle.Bottom;
			int itemsHeight = officeDropDown.GetItemsHeight();
			if (itemsHeight - officeDropDown.ScrollPositionInternal > officeDropDown.DisplayRectangle.Height)
			{
				num2 -= 12;
			}
			int left = officeDropDown.Padding.Left;
			int num3 = officeDropDown.Padding.Top + officeDropDown.CaptionHeight - officeDropDown.ScrollPositionInternal;
			int num4 = officeDropDown.Width - officeDropDown.Padding.Horizontal;
			bool flag = false;
			foreach (ToolStripItem item in officeDropDown.Items)
			{
				if (item.Available)
				{
					if (item.AutoSize)
					{
						item.Height = item.GetPreferredSize(Size.Empty).Height;
						item.Width = num4 - item.Margin.Horizontal;
					}
					int num5 = num3 + item.Height + item.Margin.Vertical;
					bool flag2 = num5 <= num2;
					if (num5 <= num)
					{
						officeDropDown.SetItemLocation(item, new Point(-item.Width - 1, num3 + item.Margin.Top));
						num3 += item.Height + item.Margin.Vertical;
					}
					else if (!flag2 || flag)
					{
						flag = num5 > num;
						officeDropDown.SetItemLocation(item, new Point(-item.Width - 1, num3 + item.Margin.Top));
					}
					else
					{
						officeDropDown.SetItemLocation(item, new Point(left + item.Margin.Left, num3 + item.Margin.Top));
						num3 += item.Height + item.Margin.Vertical;
					}
				}
			}
			return officeDropDown.AutoSize;
		}
	}

	private const int SEPARATOR_WIDTH = 2;

	private const int TEXT_MARGIN_IN_CAPTION = 5;

	private const int SCROLL_BUTTON_HEIGHT = 12;

	private const int TIMER_INT = 200;

	private const int MIN_CAPTION_HEIGHT = 21;

	private DropDownExLayoutEngine m_layoutEngine;

	private int m_iScrollPosition;

	private bool m_bIsUpScroll;

	private bool m_bIsDownScroll;

	private bool m_bUpScrollSelected;

	private bool m_bDownScrollSelected;

	private Timer m_timer;

	private int m_timerInt = 200;

	private ScrollButtonsArea m_pushedButton;

	private Rectangle m_rcBounds = Rectangle.Empty;

	private int m_iItemIndex;

	private int m_iCaptionHeight = -1;

	private string m_sCaptionText;

	private Font m_ftCaptionFont;

	public override LayoutEngine LayoutEngine
	{
		get
		{
			if (m_layoutEngine == null)
			{
				m_layoutEngine = new DropDownExLayoutEngine();
			}
			return m_layoutEngine;
		}
	}

	protected override Padding DefaultPadding => new Padding(1, 2, 1, 2);

	protected ScrollButtonsArea PushedButton
	{
		get
		{
			return m_pushedButton;
		}
		set
		{
			if (m_pushedButton != value)
			{
				m_pushedButton = value;
			}
		}
	}

	protected Rectangle UpScrollBounds
	{
		get
		{
			Rectangle result = Rectangle.Empty;
			if (m_bIsUpScroll)
			{
				Rectangle bounds = base.Bounds;
				Point location = PointToClient(new Point(bounds.X, bounds.Y + CaptionHeight));
				result = new Rectangle(location, new Size(bounds.Width, 12));
			}
			return result;
		}
	}

	protected Rectangle DownScrollBounds
	{
		get
		{
			Rectangle result = Rectangle.Empty;
			if (m_bIsDownScroll)
			{
				Rectangle bounds = base.Bounds;
				Point location = PointToClient(new Point(bounds.X, bounds.Bottom - 12));
				result = new Rectangle(location, new Size(bounds.Width, 12));
			}
			return result;
		}
	}

	internal int ScrollPositionInternal
	{
		get
		{
			return m_iScrollPosition;
		}
		set
		{
			m_iScrollPosition = value;
			PerformLayout();
		}
	}

	internal bool DownScrollSelected
	{
		get
		{
			return m_bDownScrollSelected;
		}
		set
		{
			m_bDownScrollSelected = value;
		}
	}

	internal bool UpScrollSelected
	{
		get
		{
			return m_bUpScrollSelected;
		}
		set
		{
			m_bUpScrollSelected = value;
		}
	}

	internal int CaptionHeight
	{
		get
		{
			if (m_iCaptionHeight == -1)
			{
				int num = TextRenderer.MeasureText(m_sCaptionText, m_ftCaptionFont).Height;
				if (num > 0)
				{
					if (num < 21)
					{
						num = 21;
					}
					num += 2;
				}
				m_iCaptionHeight = num;
			}
			return m_iCaptionHeight;
		}
		set
		{
			m_iCaptionHeight = value;
		}
	}

	internal string CaptionText
	{
		get
		{
			return m_sCaptionText;
		}
		set
		{
			m_sCaptionText = value;
			OnLayoutChanged();
		}
	}

	internal Font CaptionFont
	{
		get
		{
			return m_ftCaptionFont;
		}
		set
		{
			m_ftCaptionFont = value;
			OnLayoutChanged();
		}
	}

	public OfficeDropDown(ToolStripItem item)
	{
		base.OwnerItem = item;
		m_timer = new Timer();
		m_timer.Tick += OnTimerTick;
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (!(base.Renderer is RibbonControlAdvHeader.RibbonControlAdvHeaderRenderer ribbonControlAdvHeaderRenderer))
		{
			return;
		}
		int itemsHeight = GetItemsHeight();
		int num = base.Bounds.Height;
		if (itemsHeight > num)
		{
			m_bIsUpScroll = ScrollPositionInternal > 0;
			m_bIsDownScroll = itemsHeight - ScrollPositionInternal > num;
			if (m_bIsDownScroll)
			{
				ribbonControlAdvHeaderRenderer.DrawScrollButtonOnDropDown(this, e.Graphics, DownScrollBounds, bDown: true);
			}
			else
			{
				m_bDownScrollSelected = false;
			}
			if (m_bIsUpScroll)
			{
				ribbonControlAdvHeaderRenderer.DrawScrollButtonOnDropDown(this, e.Graphics, UpScrollBounds, bDown: false);
			}
			else
			{
				m_bUpScrollSelected = false;
			}
		}
		else
		{
			m_bIsDownScroll = false;
			m_bIsUpScroll = false;
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		if (!base.ClientRectangle.Contains(e.Location))
		{
			if (m_bDownScrollSelected)
			{
				m_bDownScrollSelected = false;
				RefreshScroll();
			}
			if (m_bUpScrollSelected)
			{
				m_bUpScrollSelected = false;
				RefreshScroll();
			}
			return;
		}
		bool flag = false;
		bool flag2 = false;
		if (m_bIsDownScroll)
		{
			flag = DownScrollBounds.Contains(e.Location);
			if (flag != m_bDownScrollSelected)
			{
				m_bDownScrollSelected = flag;
				RefreshScroll();
			}
		}
		if (m_bIsUpScroll && !flag)
		{
			flag2 = UpScrollBounds.Contains(e.Location);
			if (flag2 != m_bUpScrollSelected)
			{
				m_bUpScrollSelected = flag2;
				RefreshScroll();
			}
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		if (m_bDownScrollSelected)
		{
			m_bDownScrollSelected = false;
			RefreshScroll();
		}
		else if (m_bUpScrollSelected)
		{
			m_bUpScrollSelected = false;
			RefreshScroll();
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		bool flag = true;
		if (e.Button == MouseButtons.Left)
		{
			bool flag2 = false;
			if (m_bIsDownScroll && DownScrollBounds.Contains(e.Location))
			{
				flag = false;
				flag2 = true;
				base.Capture = true;
				PushedButton = ScrollButtonsArea.DownScrollButton;
				ScrollToDown();
				StartTimer(ScrollButtonsArea.DownScrollButton);
			}
			if (!flag2 && m_bIsUpScroll && UpScrollBounds.Contains(e.Location))
			{
				flag = false;
				base.Capture = true;
				PushedButton = ScrollButtonsArea.UpScrollButton;
				ScrollToUp();
				StartTimer(ScrollButtonsArea.UpScrollButton);
			}
		}
		if (flag)
		{
			base.OnMouseDown(e);
		}
	}

	protected override void OnMouseCaptureChanged(EventArgs e)
	{
		base.OnMouseCaptureChanged(e);
		m_timer.Stop();
		PushedButton = ScrollButtonsArea.None;
	}

	public override Size GetPreferredSize(Size proposedSize)
	{
		Size empty = Size.Empty;
		Size empty2 = Size.Empty;
		foreach (ToolStripItem item in Items)
		{
			if (item.Available)
			{
				empty2 = GetItemSize(item);
				empty.Height += empty2.Height;
				if (empty.Width < empty2.Width)
				{
					empty.Width = empty2.Width;
				}
			}
		}
		empty.Height += CaptionHeight;
		empty.Width += base.Padding.Horizontal;
		empty.Height += base.Padding.Vertical;
		ToolStripItem toolStripItem2 = base.OwnerItem;
		if (toolStripItem2 != null && toolStripItem2.GetCurrentParent() is MenuDropDown { AuxItemsBounds: { Size: { Width: var num, Height: var num2 } } } && num > 0 && num2 > 0)
		{
			if (num > empty.Width)
			{
				empty.Width = num;
			}
			empty.Height = num2;
		}
		return empty;
	}

	private void RefreshScroll()
	{
		RedrawWindowFlags flags = (RedrawWindowFlags)1025;
		WindowsAPI.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, flags);
	}

	private Size GetItemSize(ToolStripItem item)
	{
		Size result = (item.AutoSize ? item.GetPreferredSize(Size.Empty) : item.Size);
		result.Height += item.Margin.Vertical;
		result.Width += item.Margin.Horizontal;
		return result;
	}

	internal int GetItemsHeight()
	{
		int num = 0;
		foreach (ToolStripItem item in Items)
		{
			if (item.Available)
			{
				num += GetItemSize(item).Height;
			}
		}
		return num + CaptionHeight;
	}

	private int GetValidScrollPosition(int position)
	{
		int num = position;
		if (num != 0)
		{
			int itemsHeight = GetItemsHeight();
			int num2 = base.Bounds.Height;
			if (num < 0 || itemsHeight < num2)
			{
				num = 0;
			}
		}
		return num;
	}

	private void ScrollToDown()
	{
		if (m_iItemIndex + 1 <= Items.Count - 1)
		{
			int num = 0;
			if (!m_bIsUpScroll)
			{
				num = 12;
			}
			ScrollPositionInternal = GetValidScrollPosition(ScrollPositionInternal + Items[m_iItemIndex].Height + Items[m_iItemIndex].Margin.Vertical - num);
			m_iItemIndex++;
		}
	}

	private void ScrollToUp()
	{
		if (m_iItemIndex - 1 >= 0)
		{
			ScrollPositionInternal = GetValidScrollPosition(ScrollPositionInternal - Items[m_iItemIndex - 1].Height - Items[m_iItemIndex - 1].Margin.Vertical);
			m_iItemIndex--;
		}
	}

	private void StartTimer(ScrollButtonsArea mousePushedArea)
	{
		m_timer.Interval = m_timerInt * 4;
		m_timer.Tag = mousePushedArea;
		m_timer.Start();
	}

	private void OnTimerTick(object sender, EventArgs e)
	{
		ScrollButtonsArea scrollButtonsArea = (ScrollButtonsArea)((Timer)sender).Tag;
		Point pt = PointToClient(Control.MousePosition);
		switch (scrollButtonsArea)
		{
		case ScrollButtonsArea.DownScrollButton:
			if (DownScrollBounds.IsEmpty)
			{
				base.Capture = false;
			}
			else if (DownScrollBounds.Contains(pt))
			{
				ScrollToDown();
			}
			break;
		case ScrollButtonsArea.UpScrollButton:
			if (UpScrollBounds.IsEmpty)
			{
				base.Capture = false;
			}
			else if (UpScrollBounds.Contains(pt))
			{
				ScrollToUp();
			}
			break;
		}
		m_timer.Interval = m_timerInt;
	}

	private void OnLayoutChanged()
	{
		m_iCaptionHeight = -1;
		if (base.IsHandleCreated)
		{
			PerformLayout();
		}
	}
}
