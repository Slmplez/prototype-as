using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Collections;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.ToolStrip)]
[ToolboxBitmap(typeof(ToolStripGallery), "ToolboxIcons.Gallery.bmp")]
public class ToolStripGallery : ToolStripItem, INativeMessageFilter
{
	private const int SCROLLER_WIDTH = 15;

	private const int TIMER_INT = 100;

	private static readonly Size ITEM_SIZE = new Size(70, 45);

	private static readonly Size ITEM_IMAGE_SIZE = new Size(20, 20);

	private static readonly Padding ITEM_PADDING = new Padding(4);

	private static readonly Padding ITEM_MARGIN = new Padding(1);

	internal static readonly Padding CAPTION_MARGIN = new Padding(2, 1, 2, 1);

	private static readonly Size DROPDOWN_MIN_SIZE = new Size(120, 120);

	private bool m_showtooltipText = true;

	private static readonly Size DIMENSIONS = new Size(3, 1);

	private ToolStripGalleryItem item;

	private SuperToolTip toolTip = new SuperToolTip();

	private ToolTipInfo info = new ToolTipInfo();

	private ObservableList<ToolStripGalleryItem> m_items;

	private List<ToolStripGalleryItemLayoutInfo> m_itemsInfo;

	private Size m_itemSize = ITEM_SIZE;

	private Size m_itemImageSize = ITEM_IMAGE_SIZE;

	private Padding m_itemPadding = ITEM_PADDING;

	private Padding m_itemMargin = ITEM_MARGIN;

	private ToolStripItemDisplayStyle m_itemDisplayStyle = ToolStripItemDisplayStyle.ImageAndText;

	private TextImageRelation m_textImageRelation = TextImageRelation.ImageAboveText;

	private Size m_dimensions = DIMENSIONS;

	private Size m_dropdownDimensions = Size.Empty;

	private ToolStripGalleryItem m_selectedItem;

	private ToolStripGalleryItem m_disabledItem;

	private ToolStripGalleryItem m_pressedItem;

	private ToolStripGalleryItem m_checkedItem;

	private bool m_bPressed;

	private bool m_bCheckOnClick;

	private bool m_bShowCaption;

	private string m_captionText = string.Empty;

	private int m_captionHeight = -1;

	private ToolStripGalleryScrollerType m_scrollerType;

	private ScrollButton m_scrollUpButton;

	private ScrollButton m_scrollDownButton;

	private ScrollButton m_scrollDropdownButton;

	private int m_scrollOffset;

	private int m_realHeight;

	private ScrollButton m_scroller;

	private bool m_bScrollerMoving;

	private Point m_scrollerPrevPoint;

	private int m_prevOffset;

	private ScrollButton m_selectedScrollButton;

	private ScrollButton m_pressedScrollButton;

	private Rectangle m_scrollArea;

	private ImageList m_imageList;

	private ToolStripGalleryDropDown m_dropDown;

	private Timer m_timer;

	private NativeMessageHandler m_handler;

	private ToolstripGalleryBorderStyle m_borderStyle = ToolstripGalleryBorderStyle.Single;

	private Color m_itemBackColor = Color.Empty;

	[DefaultValue(false)]
	[Description("Gets or Sets the ToolTip visiblity for Gallery")]
	public bool ShowToolTip
	{
		get
		{
			return m_showtooltipText;
		}
		set
		{
			if (m_showtooltipText != value)
			{
				m_showtooltipText = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ObservableList<ToolStripGalleryItem> Items => m_items;

	internal List<ToolStripGalleryItemLayoutInfo> ItemsInfo => m_itemsInfo;

	public Size Dimensions
	{
		get
		{
			return m_dimensions;
		}
		set
		{
			if (m_dimensions != value)
			{
				m_dimensions = value;
				PerformLayout();
			}
		}
	}

	public Size DropDownDimensions
	{
		get
		{
			Size dropdownDimensions = m_dropdownDimensions;
			if (dropdownDimensions.Width == 0)
			{
				dropdownDimensions.Width = Math.Max(base.Width / ItemSize.Width, 1);
			}
			return dropdownDimensions;
		}
		set
		{
			m_dropdownDimensions = value;
		}
	}

	public Size ItemSize
	{
		get
		{
			return m_itemSize;
		}
		set
		{
			if (m_itemSize != value)
			{
				m_itemSize = value;
				PerformLayout();
				if (m_dropDown != null)
				{
					m_dropDown.Gallery.ItemSize = value;
				}
			}
		}
	}

	public Size DropDownMinimumSize
	{
		get
		{
			if (m_dropDown != null)
			{
				return m_dropDown.DropDownMinimumSize;
			}
			return Size.Empty;
		}
		set
		{
			if (m_dropDown.DropDownMinimumSize != value)
			{
				m_dropDown.DropDownMinimumSize = value;
			}
		}
	}

	public Size ItemImageSize
	{
		get
		{
			return m_itemImageSize;
		}
		set
		{
			if (m_itemImageSize != value)
			{
				m_itemImageSize = value;
				PerformLayout();
				if (m_dropDown != null)
				{
					m_dropDown.Gallery.ItemImageSize = value;
				}
			}
		}
	}

	public Padding ItemPadding
	{
		get
		{
			return m_itemPadding;
		}
		set
		{
			if (m_itemPadding != value)
			{
				m_itemPadding = value;
				PerformLayout();
				if (m_dropDown != null)
				{
					m_dropDown.Gallery.ItemPadding = value;
				}
			}
		}
	}

	public Padding ItemMargin
	{
		get
		{
			return m_itemMargin;
		}
		set
		{
			if (m_itemMargin != value)
			{
				m_itemMargin = value;
				PerformLayout();
				if (m_dropDown != null)
				{
					m_dropDown.Gallery.ItemMargin = value;
				}
			}
		}
	}

	[DefaultValue(typeof(ToolStripItemDisplayStyle), "ImageAndText")]
	public ToolStripItemDisplayStyle ItemDisplayStyle
	{
		get
		{
			return m_itemDisplayStyle;
		}
		set
		{
			if (m_itemDisplayStyle != value)
			{
				m_itemDisplayStyle = value;
				PerformLayout();
				if (m_dropDown != null)
				{
					m_dropDown.Gallery.ItemDisplayStyle = value;
				}
			}
		}
	}

	[DefaultValue(typeof(TextImageRelation), "ImageAboveText")]
	public TextImageRelation ItemTextImageRelation
	{
		get
		{
			return m_textImageRelation;
		}
		set
		{
			if (m_textImageRelation != value)
			{
				m_textImageRelation = value;
				PerformLayout();
				if (m_dropDown != null)
				{
					m_dropDown.Gallery.ItemTextImageRelation = value;
				}
			}
		}
	}

	[DefaultValue(false)]
	public bool ShowCaption
	{
		get
		{
			return m_bShowCaption;
		}
		set
		{
			if (m_bShowCaption != value)
			{
				m_bShowCaption = value;
				if (value)
				{
					m_captionHeight = -1;
				}
				PerformLayout();
			}
		}
	}

	public string CaptionText
	{
		get
		{
			return m_captionText;
		}
		set
		{
			if (m_captionText != value)
			{
				m_captionText = value;
				m_captionHeight = -1;
				PerformLayout();
			}
		}
	}

	[DefaultValue(typeof(ToolStripGalleryScrollerType), "None")]
	public ToolStripGalleryScrollerType ScrollerType
	{
		get
		{
			return m_scrollerType;
		}
		set
		{
			if (m_scrollerType != value)
			{
				m_scrollerType = value;
				PerformLayout();
			}
		}
	}

	internal int CaptionHeight
	{
		get
		{
			if (m_captionHeight < 0)
			{
				string text = ((m_captionText != string.Empty) ? m_captionText : "$$$");
				m_captionHeight = TextRenderer.MeasureText(text, Font).Height + CAPTION_MARGIN.Vertical + 1;
			}
			return m_captionHeight;
		}
	}

	internal int ScrollOffset
	{
		get
		{
			return m_scrollOffset;
		}
		set
		{
			value = Math.Max(0, Math.Min(value, m_realHeight - base.Height));
			if (m_scrollOffset != value)
			{
				m_scrollOffset = value;
				switch (m_scrollerType)
				{
				case ToolStripGalleryScrollerType.Standard:
					UpdateScrollerBounds();
					break;
				case ToolStripGalleryScrollerType.Compact:
					UpdateCompactScrollBar();
					break;
				}
				Invalidate();
			}
		}
	}

	internal ScrollButton ScrollUpButton => m_scrollUpButton;

	internal ScrollButton ScrollDownButton => m_scrollDownButton;

	internal ScrollButton ScrollDropdownButton => m_scrollDropdownButton;

	internal ScrollButton Scroller => m_scroller;

	internal Rectangle ScrollArea => m_scrollArea;

	[DefaultValue(null)]
	public ImageList ImageList
	{
		get
		{
			return m_imageList;
		}
		set
		{
			if (m_imageList == value)
			{
				return;
			}
			m_imageList = value;
			foreach (ToolStripGalleryItem item in m_items)
			{
				item.ImageList = value;
			}
		}
	}

	[DefaultValue(typeof(ToolstripGalleryBorderStyle), "Single")]
	public ToolstripGalleryBorderStyle BorderStyle
	{
		get
		{
			return m_borderStyle;
		}
		set
		{
			if (m_borderStyle != value)
			{
				m_borderStyle = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(typeof(Color), "Empty")]
	public Color ItemBackColor
	{
		get
		{
			return m_itemBackColor;
		}
		set
		{
			if (m_itemBackColor != value)
			{
				m_itemBackColor = value;
				Invalidate();
				if (m_dropDown != null)
				{
					m_dropDown.Gallery.ItemBackColor = value;
				}
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ToolStripGalleryItem CheckedItem
	{
		get
		{
			return m_checkedItem;
		}
		set
		{
			if (m_checkedItem == value)
			{
				return;
			}
			int num = Items.IndexOf(value);
			if (num != -1)
			{
				m_checkedItem = value;
				ShowItem(num);
				if (m_dropDown != null)
				{
					m_dropDown.Gallery.CheckedItem = value;
				}
				Invalidate();
			}
		}
	}

	[DefaultValue(false)]
	public bool CheckOnClick
	{
		get
		{
			return m_bCheckOnClick;
		}
		set
		{
			m_bCheckOnClick = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ToolStripGalleryItem SelectedItem => m_selectedItem;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ToolStripGalleryItem DisabledItem => m_disabledItem;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	internal ToolStripGalleryItem PressedItem => m_pressedItem;

	public event ToolStripGalleryItemEventHandler GalleryItemClicked;

	public event CancelEventHandler DropDownOpening
	{
		add
		{
			m_dropDown.Opening += value;
		}
		remove
		{
			m_dropDown.Opening -= value;
		}
	}

	public event ToolStripDropDownClosedEventHandler DropDownClosed
	{
		add
		{
			m_dropDown.Closed += value;
		}
		remove
		{
			m_dropDown.Closed -= value;
		}
	}

	public void PerformClick(ToolStripGalleryItem item)
	{
		OnGalleryItemClicked(new ToolStripGalleryItemEventArgs(item));
	}

	public ToolStripGallery()
		: this(new ObservableList<ToolStripGalleryItem>(), bCreateDropDown: true)
	{
	}

	protected ToolStripGallery(ObservableList<ToolStripGalleryItem> items, bool bCreateDropDown)
	{
		m_items = items;
		m_items.ItemAdded += OnItemAdded;
		m_items.ItemRemoved += OnItemRemoved;
		m_itemsInfo = new List<ToolStripGalleryItemLayoutInfo>();
		if (base.Parent != null)
		{
			base.Parent.MouseCaptureChanged += OnParentMouseCaptureChanged;
		}
		m_scrollUpButton = new ScrollButton();
		m_scrollUpButton.State = ScrollButtonState.Disabled;
		m_scrollDownButton = new ScrollButton();
		m_scrollDropdownButton = new ScrollButton();
		m_scroller = new ScrollButton();
		if (bCreateDropDown)
		{
			ToolStripGallery toolStripGallery = new ToolStripGallery(m_items, bCreateDropDown: false);
			toolStripGallery.ScrollerType = ToolStripGalleryScrollerType.Standard;
			toolStripGallery.BorderStyle = ToolstripGalleryBorderStyle.None;
			toolStripGallery.GalleryItemClicked += OnDropdownGalleryItemClicked;
			m_dropDown = new ToolStripGalleryDropDown(toolStripGallery);
		}
		m_timer = new Timer();
		m_timer.Tick += OnTimerTick;
		OnParentChanged(null, GetCurrentParent());
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		base.OnLayout(e);
		Layout();
	}

	protected override void OnBoundsChanged()
	{
		base.OnBoundsChanged();
		int num = (int)Math.Floor((double)Bounds.Width / (double)m_itemSize.Width);
		if (num > 0)
		{
			int height = Bounds.Height;
			int num2 = (int)Math.Ceiling((double)Items.Count / (double)num);
			int num3 = num2 * (m_itemSize.Height + m_itemMargin.Vertical);
			int num4 = ScrollOffset + height;
			if (height > num3)
			{
				ScrollOffset = 0;
			}
			else if (num4 > num3)
			{
				ScrollOffset += num4 - num3;
			}
		}
		Layout();
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		int num = Math.Max(Items.Count, 1);
		int num2 = m_dimensions.Width;
		int num3 = m_dimensions.Height;
		if (num2 == 0)
		{
			if (num3 == 0)
			{
				num3 = (int)Math.Sqrt(num);
			}
			num2 = (num + (num3 - 1)) / num3;
		}
		else if (num3 == 0)
		{
			num3 = (num + (num2 - 1)) / num2;
		}
		int num4 = num2 * (m_itemSize.Width + m_itemMargin.Horizontal);
		if (m_scrollerType != ToolStripGalleryScrollerType.None)
		{
			num4 += 15;
		}
		int num5 = num3 * (m_itemSize.Height + m_itemMargin.Vertical);
		if (m_bShowCaption)
		{
			num5 += CaptionHeight;
		}
		return new Size(num4, num5);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (base.Owner != null)
		{
			base.Owner.Renderer.DrawItemBackground(new ToolStripItemRenderEventArgs(e.Graphics, this));
		}
	}

	protected override void OnMouseMove(MouseEventArgs mea)
	{
		base.OnMouseMove(mea);
		if (m_bScrollerMoving)
		{
			int num = mea.Y - m_scrollerPrevPoint.Y;
			int num2 = GetWorkingArea().Height - 30 - 1;
			int num3 = m_realHeight - (m_bShowCaption ? CaptionHeight : 0);
			int num4 = (int)Math.Round((float)num3 * (float)num / (float)num2);
			ScrollOffset = m_prevOffset + num4;
		}
		item = GetItemAt(mea.Location);
		int num5 = Items.IndexOf(item);
		if (m_showtooltipText)
		{
			if (num5 >= 0 && num5 < Items.Count)
			{
				if (item.ToolTipText != null)
				{
					ToolTipInfo toolTipInfo = toolTip.GetToolTip(this);
					if (toolTipInfo != null && !toolTipInfo.Body.Text.Equals(item.ToolTipText))
					{
						toolTip.Hide();
					}
					info.Body.Text = item.ToolTipText;
					toolTip.SetToolTip(this, info);
				}
				else if (toolTip.GetToolTip(this) != null)
				{
					toolTip.SetToolTip(this, null);
				}
			}
			else if (toolTip.GetToolTip(this) != null)
			{
				toolTip.SetToolTip(this, null);
			}
		}
		UpdateItemsState(mea.Location);
		UpdateScrollButtonsState(mea.Location);
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		m_selectedItem = null;
		if (m_selectedScrollButton != null)
		{
			m_selectedScrollButton.State = ScrollButtonState.Normal;
			m_selectedScrollButton = null;
		}
		if (!m_scroller.Bounds.IsEmpty)
		{
			m_scrollUpButton.State = ScrollButtonState.Normal;
			m_scrollDownButton.State = ScrollButtonState.Normal;
		}
		Invalidate();
	}

	protected override void OnParentChanged(ToolStrip oldParent, ToolStrip newParent)
	{
		base.OnParentChanged(oldParent, newParent);
		if (oldParent != null)
		{
			oldParent.MouseCaptureChanged -= OnParentMouseCaptureChanged;
			oldParent.HandleCreated -= OnParentHandleCreated;
			if (m_handler != null)
			{
				m_handler.MessageFilter = null;
				m_handler = null;
			}
		}
		if (newParent != null)
		{
			newParent.MouseCaptureChanged += OnParentMouseCaptureChanged;
			newParent.HandleCreated += OnParentHandleCreated;
			if (newParent.IsHandleCreated)
			{
				OnParentHandleCreated(newParent, EventArgs.Empty);
			}
		}
	}

	protected override void SetBounds(Rectangle bounds)
	{
		if (base.AutoSize)
		{
			int num = ItemSize.Height + ItemMargin.Vertical;
			bounds.Height = Math.Max(bounds.Height / num, 1) * num;
		}
		base.SetBounds(bounds);
	}

	protected virtual void OnGalleryItemClicked(ToolStripGalleryItemEventArgs args)
	{
		ToolStripDropDown dropDownParent = GetDropDownParent();
		if (dropDownParent != null)
		{
			SetCapture(value: false);
			dropDownParent.Close(ToolStripDropDownCloseReason.ItemClicked);
		}
		if (CheckOnClick)
		{
			CheckedItem = args.GalleryItem;
		}
		if (this.GalleryItemClicked != null)
		{
			this.GalleryItemClicked(this, args);
		}
	}

	internal Rectangle GetItemWorkingRect(ToolStripGalleryItemLayoutInfo itemInfo)
	{
		return new Rectangle(itemInfo.Bounds.Left + m_itemPadding.Left, itemInfo.Bounds.Top + m_itemPadding.Top, itemInfo.Bounds.Width - m_itemPadding.Horizontal, itemInfo.Bounds.Height - m_itemPadding.Vertical);
	}

	private void ScrollUp()
	{
		ScrollOffset -= m_itemSize.Height + m_itemMargin.Vertical;
	}

	private void ScrollDown()
	{
		ScrollOffset += m_itemSize.Height + m_itemMargin.Vertical;
	}

	private void UpdateScrollButtonsState(Point mousePoint)
	{
		if (m_scrollerType == ToolStripGalleryScrollerType.Standard && !m_scroller.Bounds.IsEmpty)
		{
			if (m_scrollArea.Contains(mousePoint))
			{
				if (m_scrollUpButton.State == ScrollButtonState.Normal)
				{
					m_scrollUpButton.State = ScrollButtonState.Highlighted;
				}
				if (m_scrollDownButton.State == ScrollButtonState.Normal)
				{
					m_scrollDownButton.State = ScrollButtonState.Highlighted;
				}
			}
			else
			{
				m_scrollUpButton.State = ScrollButtonState.Normal;
				m_scrollDownButton.State = ScrollButtonState.Normal;
			}
		}
		switch (m_scrollerType)
		{
		case ToolStripGalleryScrollerType.Compact:
			if (m_pressedScrollButton != null)
			{
				if (m_pressedScrollButton.State != ScrollButtonState.Disabled)
				{
					if (!m_pressedScrollButton.Bounds.Contains(mousePoint))
					{
						m_pressedScrollButton.State = ScrollButtonState.Normal;
					}
					else
					{
						m_pressedScrollButton.State = ScrollButtonState.Pressed;
					}
				}
			}
			else
			{
				ScrollButton scrollButtonAt2 = GetScrollButtonAt(mousePoint);
				if (m_selectedScrollButton != null && m_selectedScrollButton != scrollButtonAt2)
				{
					m_selectedScrollButton.State = ScrollButtonState.Normal;
				}
				if (scrollButtonAt2 != null && scrollButtonAt2.State != ScrollButtonState.Disabled)
				{
					scrollButtonAt2.State = ScrollButtonState.Selected;
					m_selectedScrollButton = scrollButtonAt2;
				}
				else
				{
					m_selectedScrollButton = null;
				}
			}
			Invalidate();
			break;
		case ToolStripGalleryScrollerType.Standard:
			if (m_pressedScrollButton != null)
			{
				if (!m_pressedScrollButton.Bounds.Contains(mousePoint))
				{
					m_pressedScrollButton.State = ScrollButtonState.Normal;
				}
				else
				{
					m_pressedScrollButton.State = ScrollButtonState.Pressed;
				}
			}
			else
			{
				ScrollButton scrollButtonAt = GetScrollButtonAt(mousePoint);
				if (m_selectedScrollButton != null && m_selectedScrollButton != scrollButtonAt)
				{
					m_selectedScrollButton.State = (m_scrollArea.Contains(mousePoint) ? ScrollButtonState.Highlighted : ScrollButtonState.Normal);
				}
				if (scrollButtonAt != null && scrollButtonAt.State != ScrollButtonState.Disabled)
				{
					scrollButtonAt.State = ScrollButtonState.Selected;
					m_selectedScrollButton = scrollButtonAt;
				}
			}
			Invalidate();
			break;
		}
	}

	private void UpdateItemsState(Point mousePoint)
	{
		ToolStripGalleryItem itemAt = GetItemAt(mousePoint);
		if (itemAt != null)
		{
			if (itemAt.Enabled)
			{
				if (m_selectedItem != itemAt)
				{
					m_selectedItem = itemAt;
					Invalidate();
				}
				return;
			}
			m_selectedItem = null;
			if (m_disabledItem != itemAt)
			{
				m_disabledItem = itemAt;
				Invalidate();
			}
		}
		else
		{
			m_selectedItem = null;
		}
	}

	private void LayoutItems()
	{
		m_itemsInfo.Clear();
		Rectangle workingArea = GetWorkingArea();
		int num = workingArea.Top;
		int num2 = workingArea.Left;
		foreach (ToolStripGalleryItem item in m_items)
		{
			if (num2 + m_itemMargin.Horizontal + m_itemSize.Width > workingArea.Right)
			{
				num += m_itemSize.Height + m_itemMargin.Vertical;
				num2 = workingArea.Left;
			}
			ToolStripGalleryItemLayoutInfo toolStripGalleryItemLayoutInfo = new ToolStripGalleryItemLayoutInfo(item);
			toolStripGalleryItemLayoutInfo.Bounds = new Rectangle(new Point(num2 + m_itemMargin.Left, num + m_itemMargin.Top), m_itemSize);
			m_itemsInfo.Add(toolStripGalleryItemLayoutInfo);
			num2 += m_itemSize.Width + m_itemMargin.Horizontal;
			MeasureItemParameters(toolStripGalleryItemLayoutInfo);
		}
		if (m_items.Count > 0)
		{
			m_realHeight = m_itemsInfo[m_items.Count - 1].Bounds.Bottom;
		}
		else
		{
			m_realHeight = m_itemSize.Height + m_itemMargin.Vertical + (m_bShowCaption ? CaptionHeight : 0);
		}
		int num3 = m_realHeight - base.Height;
		if (num3 <= 0)
		{
			m_scrollUpButton.State = ScrollButtonState.Disabled;
			m_scrollDownButton.State = ScrollButtonState.Disabled;
			return;
		}
		if (m_scrollOffset != 0)
		{
			m_scrollUpButton.State = ScrollButtonState.Normal;
		}
		if (m_scrollOffset != num3)
		{
			m_scrollDownButton.State = ScrollButtonState.Normal;
		}
	}

	private void MeasureItemParameters(ToolStripGalleryItemLayoutInfo itemInfo)
	{
		Rectangle itemWorkingRect = GetItemWorkingRect(itemInfo);
		itemWorkingRect.Inflate(-1, -1);
		int x = ((m_itemImageSize.Width > itemWorkingRect.Width) ? itemWorkingRect.Left : (itemWorkingRect.Left + (itemWorkingRect.Width - m_itemImageSize.Width) / 2));
		int y = ((m_itemImageSize.Height > itemWorkingRect.Height) ? itemWorkingRect.Top : (itemWorkingRect.Top + (itemWorkingRect.Height - m_itemImageSize.Height) / 2));
		switch (m_itemDisplayStyle)
		{
		case ToolStripItemDisplayStyle.Text:
			itemInfo.TextBounds = itemWorkingRect;
			break;
		case ToolStripItemDisplayStyle.Image:
		{
			Point location = new Point(x, y);
			itemInfo.ImageBounds = new Rectangle(location, m_itemImageSize);
			break;
		}
		case ToolStripItemDisplayStyle.ImageAndText:
			switch (m_textImageRelation)
			{
			case TextImageRelation.ImageAboveText:
				itemInfo.ImageBounds = new Rectangle(new Point(x, itemWorkingRect.Top), m_itemImageSize);
				itemInfo.TextBounds = new Rectangle(itemWorkingRect.Left, itemWorkingRect.Top + m_itemImageSize.Height, itemWorkingRect.Width, itemWorkingRect.Height - m_itemImageSize.Height);
				break;
			case TextImageRelation.TextAboveImage:
				itemInfo.ImageBounds = new Rectangle(new Point(x, itemWorkingRect.Bottom - m_itemImageSize.Height), m_itemImageSize);
				itemInfo.TextBounds = new Rectangle(itemWorkingRect.Location, new Size(itemWorkingRect.Width, itemWorkingRect.Height - m_itemImageSize.Height));
				break;
			case TextImageRelation.ImageBeforeText:
				itemInfo.ImageBounds = new Rectangle(new Point(itemWorkingRect.Left, y), m_itemImageSize);
				itemInfo.TextBounds = new Rectangle(itemWorkingRect.Left + m_itemImageSize.Width, itemWorkingRect.Top, itemWorkingRect.Width - m_itemImageSize.Width, itemWorkingRect.Height);
				break;
			case TextImageRelation.TextBeforeImage:
				itemInfo.ImageBounds = new Rectangle(new Point(itemWorkingRect.Right - m_itemImageSize.Width, y), m_itemImageSize);
				itemInfo.TextBounds = new Rectangle(itemWorkingRect.Location, new Size(itemWorkingRect.Width - m_itemImageSize.Width, itemWorkingRect.Height));
				break;
			}
			break;
		}
	}

	private void LayoutScrollers()
	{
		Rectangle workingArea = GetWorkingArea();
		if (m_scrollerType == ToolStripGalleryScrollerType.None)
		{
			m_scrollArea = Rectangle.Empty;
		}
		else
		{
			m_scrollArea = new Rectangle(workingArea.Right, workingArea.Top, 15, workingArea.Height);
		}
		switch (m_scrollerType)
		{
		case ToolStripGalleryScrollerType.Compact:
		{
			int num = workingArea.Height / 3;
			m_scrollUpButton.Bounds = new Rectangle(m_scrollArea.Left, m_scrollArea.Top, 15, num);
			m_scrollDownButton.Bounds = new Rectangle(m_scrollArea.Left, m_scrollArea.Top + num, 15, num);
			m_scrollDropdownButton.Bounds = new Rectangle(m_scrollArea.Left, m_scrollArea.Top + num * 2, 15, m_scrollArea.Height - num * 2 - 1);
			break;
		}
		case ToolStripGalleryScrollerType.Standard:
			m_scrollUpButton.Bounds = new Rectangle(m_scrollArea.Left, m_scrollArea.Top, 15, 15);
			m_scrollDownButton.Bounds = new Rectangle(m_scrollArea.Left, m_scrollArea.Bottom - 15 - 1, 15, 15);
			UpdateScrollerBounds();
			break;
		}
	}

	internal Rectangle GetWorkingArea()
	{
		return new Rectangle(0, m_bShowCaption ? (CaptionHeight + 1) : 0, (m_scrollerType == ToolStripGalleryScrollerType.None) ? base.Width : (base.Width - 15), m_bShowCaption ? (base.Height - CaptionHeight) : base.Height);
	}

	private ToolStripGalleryItem GetItemAt(Point point)
	{
		ToolStripGalleryItem result = null;
		point.Y += m_scrollOffset;
		foreach (ToolStripGalleryItemLayoutInfo item in m_itemsInfo)
		{
			if (item.Bounds.Contains(point))
			{
				result = item.Item;
				break;
			}
		}
		return result;
	}

	private void UpdateScrollerBounds()
	{
		Rectangle workingArea = GetWorkingArea();
		int num = workingArea.Height - 30 - 1;
		int num2 = m_realHeight - (m_bShowCaption ? CaptionHeight : 0);
		int num3 = ((workingArea.Height < num2) ? ((int)Math.Round((float)num * (float)workingArea.Height / (float)num2)) : 0);
		if (num3 > 0)
		{
			int num4 = (int)Math.Round((float)num * (float)m_scrollOffset / (float)num2);
			m_scroller.Bounds = new Rectangle(workingArea.Right, workingArea.Top + 15 + num4, 15, num3);
			if (m_scrollUpButton.State == ScrollButtonState.Disabled)
			{
				m_scrollUpButton.State = ScrollButtonState.Normal;
			}
			if (m_scrollDownButton.State == ScrollButtonState.Disabled)
			{
				m_scrollDownButton.State = ScrollButtonState.Normal;
			}
		}
		else
		{
			m_scroller.Bounds = Rectangle.Empty;
			m_scrollUpButton.State = ScrollButtonState.Disabled;
			m_scrollDownButton.State = ScrollButtonState.Disabled;
		}
	}

	private void UpdateCompactScrollBar()
	{
		if (m_scrollOffset == 0)
		{
			m_scrollUpButton.State = ScrollButtonState.Disabled;
		}
		else if (m_scrollUpButton.State == ScrollButtonState.Disabled)
		{
			m_scrollUpButton.State = ScrollButtonState.Normal;
		}
		if (m_scrollOffset >= m_realHeight - base.Height)
		{
			m_scrollDownButton.State = ScrollButtonState.Disabled;
		}
		else if (m_scrollDownButton.State == ScrollButtonState.Disabled)
		{
			m_scrollDownButton.State = ScrollButtonState.Normal;
		}
	}

	private void PerformLayout()
	{
		if (base.Parent != null)
		{
			base.Parent.PerformLayout();
		}
	}

	private ScrollButton GetScrollButtonAt(Point point)
	{
		ScrollButton result = null;
		if (m_scrollUpButton.Bounds.Contains(point))
		{
			result = m_scrollUpButton;
		}
		else if (m_scrollDownButton.Bounds.Contains(point))
		{
			result = m_scrollDownButton;
		}
		else if (m_scrollDropdownButton.Bounds.Contains(point))
		{
			result = m_scrollDropdownButton;
		}
		else if (m_scroller.Bounds.Contains(point))
		{
			result = m_scroller;
		}
		return result;
	}

	private void Layout()
	{
		LayoutItems();
		LayoutScrollers();
	}

	private ToolStripDropDown GetDropDownParent()
	{
		ToolStrip toolStrip = GetCurrentParent();
		while (toolStrip != null && !toolStrip.IsDropDown)
		{
			toolStrip = toolStrip.Parent as ToolStrip;
		}
		return toolStrip as ToolStripDropDown;
	}

	internal void ShowItem(int index)
	{
		int num = base.Width;
		int num2 = base.Height;
		if (ScrollerType != ToolStripGalleryScrollerType.None)
		{
			num -= 15;
		}
		if (ShowCaption)
		{
			num2 -= CaptionHeight;
		}
		int num3 = Math.Max(num / (ItemSize.Width + ItemMargin.Horizontal), 1);
		Math.Max(num2 / (ItemSize.Height + ItemMargin.Vertical), 1);
		int num4 = index / num3;
		int num5 = num4 * (m_itemSize.Height + m_itemMargin.Vertical);
		int num6 = (num4 + 1) * (m_itemSize.Height + m_itemMargin.Vertical);
		if (num5 < ScrollOffset)
		{
			ScrollOffset = num5;
			return;
		}
		int num7 = ScrollOffset + base.Height;
		if (num6 > num7)
		{
			ScrollOffset += num6 - num7;
		}
	}

	internal bool ShowItem(ToolStripGalleryItem item)
	{
		if (item != null)
		{
			int num = Items.IndexOf(item);
			if (num >= 0)
			{
				ShowItem(num);
				return true;
			}
		}
		return false;
	}

	private void SetCapture(bool value)
	{
		Control currentParent = GetCurrentParent();
		if (currentParent != null)
		{
			currentParent.Capture = value;
		}
	}

	protected bool ShouldSerializeItemSize()
	{
		return m_itemSize != ITEM_SIZE;
	}

	protected void ResetItemSize()
	{
		ItemSize = ITEM_SIZE;
	}

	protected bool ShouldSerializeItemImageSize()
	{
		return m_itemImageSize != ITEM_IMAGE_SIZE;
	}

	protected void ResetItemImageSize()
	{
		ItemImageSize = ITEM_IMAGE_SIZE;
	}

	protected bool ShouldSerializeItemMargin()
	{
		return m_itemMargin != ITEM_MARGIN;
	}

	protected void ResetItemMargin()
	{
		ItemMargin = ITEM_MARGIN;
	}

	protected bool ShouldSerializeItemPadding()
	{
		return m_itemPadding != ITEM_PADDING;
	}

	protected void ResetItemPadding()
	{
		ItemPadding = ITEM_PADDING;
	}

	protected bool ShouldSerializeDropDownMinimumSize()
	{
		return DropDownMinimumSize != ToolStripGalleryDropDown.DROPDOWN_MIN_SIZE;
	}

	protected void ResetDropDownMinimumSize()
	{
		DropDownMinimumSize = ToolStripGalleryDropDown.DROPDOWN_MIN_SIZE;
	}

	private bool ShouldSerializeDropDownDimensions()
	{
		if (m_dropdownDimensions.Width <= 0)
		{
			return m_dropdownDimensions.Height > 0;
		}
		return true;
	}

	private void ResetDropDownDimensions()
	{
		m_dropdownDimensions = Size.Empty;
	}

	protected bool ShouldSerializeDimensions()
	{
		return m_dimensions != DIMENSIONS;
	}

	protected void ResetDimensions()
	{
		m_dimensions = DIMENSIONS;
	}

	private void OnItemRemoved(object sender, ListItemEventArgs<ToolStripGalleryItem> e)
	{
		PerformLayout();
	}

	private void OnItemAdded(object sender, ListItemEventArgs<ToolStripGalleryItem> e)
	{
		if (m_imageList != null)
		{
			e.Item.ImageList = m_imageList;
		}
		PerformLayout();
	}

	private void OnParentHandleCreated(object sender, EventArgs e)
	{
		Control control = sender as Control;
		m_handler = new NativeMessageHandler();
		m_handler.MessageFilter = this;
		m_handler.Assign(control.Handle);
	}

	private void OnParentMouseCaptureChanged(object sender, EventArgs e)
	{
		m_timer.Stop();
		m_bPressed = false;
		m_bScrollerMoving = false;
		m_pressedItem = null;
	}

	private void OnTimerTick(object sender, EventArgs e)
	{
		if (m_pressedScrollButton != null)
		{
			Control currentParent = GetCurrentParent();
			if (currentParent != null && currentParent.RectangleToScreen(m_pressedScrollButton.Bounds).Contains(Cursor.Position))
			{
				if (m_pressedScrollButton == m_scrollUpButton)
				{
					ScrollUp();
				}
				else
				{
					ScrollDown();
				}
			}
		}
		m_timer.Interval = 100;
		m_timer.Start();
	}

	private void OnDropdownGalleryItemClicked(object sender, ToolStripGalleryItemEventArgs args)
	{
		OnGalleryItemClicked(args);
	}

	bool INativeMessageFilter.ProcessMessage(ref Message m)
	{
		switch ((Msg)m.Msg)
		{
		case Msg.WM_LBUTTONDOWN:
			if (IsParentMessage(ref m))
			{
				Point location2 = WindowsAPI.GetPointFromLPARAM((int)m.LParam);
				if (Bounds.Contains(location2))
				{
					OnWmMouseDown(ref location2);
					m.Result = IntPtr.Zero;
					m_bPressed = true;
					return true;
				}
			}
			break;
		case Msg.WM_LBUTTONUP:
			if (IsParentMessage(ref m) && m_bPressed)
			{
				Point location = WindowsAPI.GetPointFromLPARAM((int)m.LParam);
				OnWmMouseUp(ref location);
				m.Result = IntPtr.Zero;
				m_bPressed = false;
				return true;
			}
			break;
		case Msg.WM_LBUTTONDBLCLK:
			if (IsParentMessage(ref m))
			{
				Point pointFromLPARAM = WindowsAPI.GetPointFromLPARAM((int)m.LParam);
				if (Bounds.Contains(pointFromLPARAM))
				{
					m.Result = IntPtr.Zero;
					return true;
				}
			}
			break;
		case Msg.WM_MOUSEWHEEL:
			return OnMouseWheel(ref m);
		}
		return false;
	}

	private bool IsParentMessage(ref Message m)
	{
		Control currentParent = GetCurrentParent();
		if (currentParent != null)
		{
			return currentParent.Handle == m.HWnd;
		}
		return false;
	}

	private void OnWmMouseDown(ref Point location)
	{
		SetCapture(value: true);
		if (m_selectedItem != null)
		{
			m_pressedItem = m_selectedItem;
			Invalidate();
			return;
		}
		Point pt = new Point(location.X - Bounds.X, location.Y - Bounds.Y);
		if (!m_scrollArea.Contains(pt))
		{
			return;
		}
		if (m_scrollUpButton.Bounds.Contains(pt))
		{
			if (m_scrollUpButton.State != ScrollButtonState.Disabled)
			{
				ScrollUp();
				if (m_scrollUpButton.State != ScrollButtonState.Disabled)
				{
					m_scrollUpButton.State = ScrollButtonState.Pressed;
					m_pressedScrollButton = m_scrollUpButton;
					m_timer.Interval = 400;
					m_timer.Start();
				}
			}
			return;
		}
		if (m_scrollDownButton.Bounds.Contains(pt))
		{
			if (m_scrollDownButton.State != ScrollButtonState.Disabled)
			{
				ScrollDown();
				if (m_scrollDownButton.State != ScrollButtonState.Disabled)
				{
					m_scrollDownButton.State = ScrollButtonState.Pressed;
					m_pressedScrollButton = m_scrollDownButton;
					m_timer.Interval = 400;
					m_timer.Start();
				}
			}
			return;
		}
		switch (m_scrollerType)
		{
		case ToolStripGalleryScrollerType.Compact:
			if (m_scrollDropdownButton.Bounds.Contains(pt))
			{
				if (m_dropDown != null)
				{
					m_dropDown.OwnerItem = this;
					m_dropDown.Renderer = base.Owner.Renderer;
					m_dropDown.Gallery.Dimensions = DropDownDimensions;
					Point screenLocation = base.Parent.PointToScreen(Bounds.Location);
					m_dropDown.Show(screenLocation);
				}
				else
				{
					m_pressedScrollButton = m_scrollDropdownButton;
				}
			}
			break;
		case ToolStripGalleryScrollerType.Standard:
			if (m_scroller.Bounds.Contains(pt))
			{
				m_scroller.State = ScrollButtonState.Pressed;
				m_pressedScrollButton = m_scroller;
				m_bScrollerMoving = true;
				m_scrollerPrevPoint = location;
				m_prevOffset = ScrollOffset;
			}
			break;
		}
	}

	private void OnWmMouseUp(ref Point location)
	{
		m_bScrollerMoving = false;
		m_pressedScrollButton = null;
		if (m_pressedItem != null)
		{
			if (m_pressedItem == m_selectedItem)
			{
				PerformClick(m_pressedItem);
			}
			m_pressedItem = null;
		}
		Invalidate();
		SetCapture(value: false);
	}

	private bool OnMouseWheel(ref Message m)
	{
		Control currentParent = GetCurrentParent();
		if (currentParent != null && currentParent.Handle == m.HWnd)
		{
			Point pt = currentParent.PointToClient(WindowsAPI.GetPointFromLPARAM((int)m.LParam));
			if (Bounds.Contains(pt))
			{
				int num = WindowsAPI.HIGH_ORDER(m.WParam) / SystemInformation.MouseWheelScrollDelta;
				ScrollOffset -= num * (m_itemSize.Height + m_itemMargin.Vertical);
				m.Result = IntPtr.Zero;
				return true;
			}
		}
		return false;
	}
}
