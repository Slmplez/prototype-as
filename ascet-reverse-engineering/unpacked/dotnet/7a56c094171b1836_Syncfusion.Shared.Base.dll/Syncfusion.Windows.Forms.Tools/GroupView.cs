using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Text;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.groupviewcontrol.bmp")]
[DefaultProperty("GroupViewItems")]
[Designer(typeof(GroupViewDesigner), typeof(IDesigner))]
[DefaultEvent("GroupViewItemSelected")]
[Description("Represents a list type control that can display a list of items.")]
public class GroupView : Control, IIntegratedScrollClient, IGroupViewDesignerInvoke
{
	[DefaultProperty("Item")]
	[Description("The collection of GroupViewItems in the GroupView control.")]
	public class GroupViewItemCollection : CollectionBase
	{
		[DocumentationExclude]
		protected GroupView gViewHost;

		[DocumentationExclude]
		protected bool bLockUpdate;

		public GroupViewItem this[int index]
		{
			get
			{
				return (GroupViewItem)base.List[index];
			}
			set
			{
				Insert(index, value);
			}
		}

		public event CollectionChangeEventHandler CollectionChanged;

		private void RaiseCollectionChanged(CollectionChangeEventArgs args)
		{
			if (this.CollectionChanged != null)
			{
				this.CollectionChanged(this, args);
			}
		}

		protected void OnCollectioChanged(CollectionChangeEventArgs args)
		{
			RaiseCollectionChanged(args);
		}

		public GroupViewItemCollection(GroupView ctrl)
		{
			gViewHost = ctrl;
		}

		public int Add(GroupViewItem item)
		{
			return base.List.Add(item);
		}

		public void Insert(int index, GroupViewItem item)
		{
			base.List.Insert(index, item);
		}

		public void Remove(GroupViewItem item)
		{
			if (!base.List.Contains(item))
			{
				throw new ApplicationException("GroupViewItem does not exist.");
			}
			int num = IndexOf(item);
			gViewHost.nHighlightedItem = -1;
			gViewHost.nContextMenuItem = -1;
			if (num < gViewHost.nSelectedItem || (num == gViewHost.nSelectedItem && num + 1 == base.Count))
			{
				gViewHost.nSelectedItem--;
			}
			base.List.Remove(item);
			item.PropertyChanged -= gViewHost.PropChangedHandler;
			gViewHost.Invalidate(invalidateChildren: false);
		}

		public void AddRange(GroupViewItem[] items)
		{
			bLockUpdate = true;
			foreach (GroupViewItem item in items)
			{
				Add(item);
			}
			bLockUpdate = false;
			gViewHost.Invalidate(invalidateChildren: false);
		}

		public bool Contains(GroupViewItem item)
		{
			return base.List.Contains(item);
		}

		[EditorBrowsable(EditorBrowsableState.Never)]
		[DocumentationExclude]
		public void CopyTo(GroupViewItem[] array, int index)
		{
			base.List.CopyTo(array, index);
		}

		public int IndexOf(GroupViewItem item)
		{
			return base.List.IndexOf(item);
		}

		[DocumentationExclude]
		protected override void OnInsert(int index, object value)
		{
			GroupViewItem groupViewItem = value as GroupViewItem;
			if (gViewHost.DesignMode && groupViewItem.Text == "GroupViewItem")
			{
				groupViewItem.Text = "GroupViewItem" + base.Count;
				groupViewItem.ToolTipText = groupViewItem.Text;
			}
			base.OnInsert(index, value);
		}

		[DocumentationExclude]
		protected override void OnInsertComplete(int index, object value)
		{
			base.OnInsertComplete(index, value);
			GroupViewItem groupViewItem = value as GroupViewItem;
			groupViewItem.groupViewCtrl = gViewHost;
			groupViewItem.PropertyChanged += gViewHost.PropChangedHandler;
			gViewHost.nHighlightedItem = -1;
			gViewHost.nContextMenuItem = -1;
			if (gViewHost.DesignMode)
			{
				if (gViewHost.ButtonView)
				{
					gViewHost.nSelectedItem = 0;
				}
				else
				{
					gViewHost.nSelectedItem = -1;
				}
			}
			if (!bLockUpdate)
			{
				gViewHost.Invalidate(invalidateChildren: false);
			}
			CollectionChangeEventArgs args = ((!(value is GroupViewItem)) ? new CollectionChangeEventArgs(CollectionChangeAction.Remove, null) : new CollectionChangeEventArgs(CollectionChangeAction.Remove, value as GroupViewItem));
			OnCollectioChanged(args);
		}

		protected override void OnRemoveComplete(int index, object value)
		{
			base.OnRemoveComplete(index, value);
			CollectionChangeEventArgs args = ((!(value is GroupViewItem)) ? new CollectionChangeEventArgs(CollectionChangeAction.Remove, null) : new CollectionChangeEventArgs(CollectionChangeAction.Remove, value as GroupViewItem));
			OnCollectioChanged(args);
		}

		protected override void OnClearComplete()
		{
			base.OnClearComplete();
			CollectionChangeEventArgs args = new CollectionChangeEventArgs(CollectionChangeAction.Remove, null);
			OnCollectioChanged(args);
		}
	}

	[DocumentationExclude]
	public enum ItemState
	{
		Normal,
		Highlight,
		Selected,
		Selecting
	}

	[DocumentationExclude]
	protected enum DragDropInsert
	{
		Upper,
		Middle,
		Lower
	}

	[DocumentationExclude]
	public enum ScrollButtonState
	{
		Normal,
		UpScrollHot,
		UpScrollPressed,
		DownScrollHot,
		DownScrollPressed
	}

	private const int DEF_TOOLTIP_TIMER_INTERVAL = 200;

	private const int DEF_TOOLTIP_INITIAL_TIMER_INTERVAL = 1000;

	public const string GroupViewFormatName = "GroupViewItemDataFormat";

	[DocumentationExclude]
	protected const int nScrllBttnOffset = 21;

	[DocumentationExclude]
	private const int c_nScrollButtonWidth = 16;

	[DocumentationExclude]
	private const int c_nScrollButtonHeight = 16;

	[DocumentationExclude]
	private const int c_nScrollButtonOffsetX = 5;

	[DocumentationExclude]
	private const int c_nScrollButtonOffsetY = 5;

	private const int c_iMouseWheelDeltaStep = 120;

	private bool m_bShowTooltips;

	private bool m_bSelecting;

	private bool m_bFlowViewChanged;

	private static readonly Point DEF_TOOLTIP_OFFSET;

	private int m_prevHitItemIndex = -1;

	private bool m_bIsGroupViewItemSelecting;

	private bool m_bShouldShowToolTipFirstTime = true;

	private Timer m_toolTipTimer;

	private ToolTipAdv m_toolTip;

	private MouseButtons m_mbToolTipMouseButtonsDowned;

	private DateTime m_dtToolTipLastMouseDownedTime = DateTime.MinValue;

	private Point m_dtToolTipLastMouseDownedPoint = Point.Empty;

	private bool m_bShowFlowViewText;

	private int m_flowViewTextLength = 80;

	private GroupViewOrientation m_orientation;

	[DocumentationExclude]
	protected internal int nHighlightedItem = -1;

	[DocumentationExclude]
	protected Rectangle rcHighlightedItem = Rectangle.Empty;

	[DocumentationExclude]
	protected internal int nSelectedItem = -1;

	[DocumentationExclude]
	protected Rectangle rcSelectedItem = Rectangle.Empty;

	[DocumentationExclude]
	protected int nContextMenuItem = -1;

	[DocumentationExclude]
	protected int nPrevSelected = -1;

	[DocumentationExclude]
	protected Rectangle rcPrevSelected = Rectangle.Empty;

	[DocumentationExclude]
	protected int nItemsPerRow;

	[DocumentationExclude]
	protected bool bDownScrlButton;

	[DocumentationExclude]
	protected bool bUpScrlButton;

	[DocumentationExclude]
	protected int nTopIndex;

	[DocumentationExclude]
	protected Timer tmrScrolling;

	[DocumentationExclude]
	protected ScrollButtonState scrllBtnState;

	internal static readonly string DEF_PROPERTY_NAME_VISIBLE;

	private ArrayList m_arrVisibleItems;

	[DocumentationExclude]
	protected static DataFormats.Format dfGroupViewItem;

	[DocumentationExclude]
	protected bool bAllowDragDrop;

	[DocumentationExclude]
	protected int nDragItem = -1;

	[DocumentationExclude]
	protected int nDropItem = -1;

	[DocumentationExclude]
	protected static Point ptDragStart;

	[DocumentationExclude]
	protected Brush brBackGround = new SolidBrush(Control.DefaultBackColor);

	[DocumentationExclude]
	protected Brush brHighlightItem = new SolidBrush(Control.DefaultBackColor);

	[DocumentationExclude]
	protected bool bHighlightItemSet;

	[DocumentationExclude]
	protected Brush brSelectedItem = new SolidBrush(Control.DefaultBackColor);

	[DocumentationExclude]
	protected bool bSelectedItemSet;

	[DocumentationExclude]
	protected Brush brSelectedHighlightItem = new SolidBrush(Control.DefaultBackColor);

	[DocumentationExclude]
	protected bool bSelectedHighlightItemSet;

	[DocumentationExclude]
	protected Brush brSelectingItem = new SolidBrush(Control.DefaultBackColor);

	[DocumentationExclude]
	protected bool bSelectingItemSet;

	[DocumentationExclude]
	protected Color clrHighlightText = Control.DefaultForeColor;

	[DocumentationExclude]
	protected bool bHighlightTextSet;

	[DocumentationExclude]
	protected Color clrSelectedText = Control.DefaultForeColor;

	[DocumentationExclude]
	protected bool bSelectedTextSet;

	[DocumentationExclude]
	protected Color clrSelectedHighlightText = Control.DefaultForeColor;

	[DocumentationExclude]
	protected bool bSelectedHighlightTextSet;

	[DocumentationExclude]
	protected Color clrSelectingText = Control.DefaultForeColor;

	[DocumentationExclude]
	protected bool bSelectingTextSet;

	[DocumentationExclude]
	protected ImageList ilLarge;

	[DocumentationExclude]
	protected ImageList ilSmall;

	[DocumentationExclude]
	protected GroupViewItemCollection cllnGroupViewItems;

	[DocumentationExclude]
	protected RenameTextBox ctrlTextBox;

	[DocumentationExclude]
	protected int nRenameItem = -1;

	[DocumentationExclude]
	protected ToolTipForm ctrlToolTip;

	[DocumentationExclude]
	protected bool bSmallImageView;

	[DocumentationExclude]
	protected bool bButtonView;

	[DocumentationExclude]
	protected bool bIntegratedScrolling;

	[DocumentationExclude]
	protected bool bFlowView;

	[DocumentationExclude]
	protected bool bTextWrap;

	[DocumentationExclude]
	protected bool bFlatLook;

	[DocumentationExclude]
	protected bool bHighlightImage = true;

	[DocumentationExclude]
	protected bool bHighlightText = true;

	[DocumentationExclude]
	protected bool bTextUnderline;

	[DocumentationExclude]
	protected bool bClipSelectionBounds;

	[DocumentationExclude]
	protected int nTextSpacing = 8;

	[DocumentationExclude]
	protected int nImageSpacing = 2;

	[DocumentationExclude]
	protected int nItemYSpacing = 5;

	[DocumentationExclude]
	protected int nItemXSpacing = 8;

	[DocumentationExclude]
	protected Point ptHighlightImageOffset = Point.Empty;

	[DocumentationExclude]
	protected Point ptHighlightTextOffset = Point.Empty;

	[DocumentationExclude]
	protected Point ptSelectedImageOffset = Point.Empty;

	[DocumentationExclude]
	protected Point ptSelectedTextOffset = Point.Empty;

	[DocumentationExclude]
	protected Point ptSelectedHighlightImageOffset = Point.Empty;

	[DocumentationExclude]
	protected Point ptSelectedHighlightTextOffset = Point.Empty;

	[DocumentationExclude]
	protected Point ptSelectingImageOffset = Point.Empty;

	[DocumentationExclude]
	protected Point ptSelectingTextOffset = Point.Empty;

	[DocumentationExclude]
	protected BorderStyle bdrStyle = BorderStyle.Fixed3D;

	[DocumentationExclude]
	protected bool bThemesEnabled;

	[DocumentationExclude]
	protected ThemedControlDrawing tdToolbar;

	[DocumentationExclude]
	protected ThemedControlDrawing tdScrollBar;

	[DocumentationExclude]
	protected readonly Size defSmallImgSize = new Size(16, 16);

	[DocumentationExclude]
	protected readonly Size defLargeImgSize = new Size(32, 32);

	private bool m_bAllowDragAnyObject;

	private int m_itemTextHeight = -1;

	private bool suppressMouseHover;

	[DocumentationExclude]
	protected GroupViewItemAccessibleObjectsIndexer itemAccessibleObjects;

	[Description("Gets or sets whether tooltips for GroupViewItems should be shown or not.")]
	[DefaultValue(false)]
	public bool ShowToolTips
	{
		get
		{
			return m_bShowTooltips;
		}
		set
		{
			if (value != m_bShowTooltips)
			{
				m_bShowTooltips = value;
			}
		}
	}

	[Description("Gets or sets GroupViev orientation.")]
	[Category("Appearance")]
	[DefaultValue(GroupViewOrientation.Vertical)]
	public GroupViewOrientation Orientation
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
				CalculateItemsPerRow();
				Invalidate();
			}
		}
	}

	private bool Horizontal => m_orientation == GroupViewOrientation.Horizontal;

	internal MouseButtons ToolTipMouseButtonsDowned
	{
		get
		{
			return m_mbToolTipMouseButtonsDowned;
		}
		set
		{
			m_mbToolTipMouseButtonsDowned = value;
		}
	}

	internal DateTime ToolTipLastMouseDownedTime
	{
		get
		{
			return m_dtToolTipLastMouseDownedTime;
		}
		set
		{
			m_dtToolTipLastMouseDownedTime = value;
		}
	}

	internal Point ToolTipLastMouseDownedPoint
	{
		get
		{
			return m_dtToolTipLastMouseDownedPoint;
		}
		set
		{
			m_dtToolTipLastMouseDownedPoint = value;
		}
	}

	private ArrayList VisibleItems
	{
		get
		{
			if (m_arrVisibleItems == null)
			{
				m_arrVisibleItems = new ArrayList();
			}
			return m_arrVisibleItems;
		}
	}

	[DocumentationExclude]
	protected virtual Rectangle UpScrlBtnRect
	{
		get
		{
			if (!bIntegratedScrolling)
			{
				if (Horizontal)
				{
					if (GetIsMirrored())
					{
						return new Rectangle(base.ClientRectangle.Right - 21, base.ClientRectangle.Bottom - 21, 16, 16);
					}
					return new Rectangle(5, base.ClientRectangle.Bottom - 21, 16, 16);
				}
				int scrollButtonLeft = GetScrollButtonLeft();
				return new Rectangle(scrollButtonLeft, base.ClientRectangle.Top + 5, 16, 16);
			}
			return Rectangle.Empty;
		}
	}

	[DocumentationExclude]
	protected virtual Rectangle DownScrlBtnRect
	{
		get
		{
			if (!bIntegratedScrolling)
			{
				if (Horizontal)
				{
					if (GetIsMirrored())
					{
						return new Rectangle(5, base.ClientRectangle.Bottom - 21, 16, 16);
					}
					return new Rectangle(base.ClientRectangle.Right - 21, base.ClientRectangle.Bottom - 21, 16, 16);
				}
				int scrollButtonLeft = GetScrollButtonLeft();
				return new Rectangle(scrollButtonLeft, base.ClientRectangle.Bottom - 21, 16, 16);
			}
			return Rectangle.Empty;
		}
	}

	[Category("GroupViewItems")]
	[Browsable(true)]
	[Description("The GroupViewItems present in the control.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GroupViewItemCollection GroupViewItems
	{
		get
		{
			return cllnGroupViewItems;
		}
		set
		{
			cllnGroupViewItems = value;
		}
	}

	[Category("Appearance - Spacing")]
	[DefaultValue(2)]
	[Localizable(true)]
	[Description("Gets or sets the height between the highlighted edge of a GroupViewItem and the image.")]
	public int ImageSpacing
	{
		get
		{
			return nImageSpacing;
		}
		set
		{
			if (nImageSpacing != value)
			{
				nImageSpacing = value;
				if (bFlowView && base.Visible && cllnGroupViewItems.Count > 0)
				{
					CalculateItemsPerRow();
				}
				Invalidate();
			}
		}
	}

	[Category("Appearance - Spacing")]
	[Localizable(true)]
	[Description("Gets / sets the distance between the GroupViewItem image and the text.")]
	[DefaultValue(8)]
	public int TextSpacing
	{
		get
		{
			return nTextSpacing;
		}
		set
		{
			if (nTextSpacing != value)
			{
				nTextSpacing = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(8)]
	[Description("Gets / sets the horizontal distance between a GroupViewItem and the control's left border.")]
	[Category("Appearance - Spacing")]
	[Localizable(true)]
	public int ItemXSpacing
	{
		get
		{
			return nItemXSpacing;
		}
		set
		{
			if (nItemXSpacing != value)
			{
				nItemXSpacing = value;
				if (bFlowView && base.Visible && cllnGroupViewItems.Count > 0)
				{
					CalculateItemsPerRow();
				}
				Invalidate();
			}
		}
	}

	[Description("Gets / sets the height between adjacent GroupViewItems.")]
	[DefaultValue(5)]
	[Category("Appearance - Spacing")]
	[Localizable(true)]
	public int ItemYSpacing
	{
		get
		{
			return nItemYSpacing;
		}
		set
		{
			if (nItemYSpacing != value)
			{
				nItemYSpacing = value;
				if (bFlowView && base.Visible && cllnGroupViewItems.Count > 0)
				{
					CalculateItemsPerRow();
				}
				Invalidate();
			}
		}
	}

	[DefaultValue(80)]
	[Description("Gets or sets the GroupViewItem's text length in FlowView mode.")]
	[Category("Appearance")]
	public int FlowViewItemTextLength
	{
		get
		{
			return m_flowViewTextLength;
		}
		set
		{
			if (m_flowViewTextLength != value)
			{
				m_flowViewTextLength = value;
				if (base.Visible && VisibleItems.Count > 0 && bFlowView)
				{
					CalculateItemsPerRow();
				}
				Invalidate();
			}
		}
	}

	[Localizable(true)]
	[Category("Behavior - Offsets")]
	[Description("Gets or sets the image offset for the highlighted GroupViewItem.")]
	public Point HighlightImageOffset
	{
		get
		{
			return ptHighlightImageOffset;
		}
		set
		{
			if (ptHighlightImageOffset != value)
			{
				ptHighlightImageOffset = value;
			}
		}
	}

	[Category("Behavior - Offsets")]
	[Description("Gets or sets the text offset for the highlighted GroupViewItem.")]
	[Localizable(true)]
	public Point HighlightTextOffset
	{
		get
		{
			return ptHighlightTextOffset;
		}
		set
		{
			if (ptHighlightTextOffset != value)
			{
				ptHighlightTextOffset = value;
			}
		}
	}

	[Description("Gets / sets the image offset for the selected GroupViewItem.")]
	[Category("Behavior - Offsets")]
	[Localizable(true)]
	public Point SelectedImageOffset
	{
		get
		{
			return ptSelectedImageOffset;
		}
		set
		{
			if (ptSelectedImageOffset != value)
			{
				ptSelectedImageOffset = value;
			}
		}
	}

	[Description("Gets / sets the text offset for the selected GroupViewItem.")]
	[Category("Behavior - Offsets")]
	[Localizable(true)]
	public Point SelectedTextOffset
	{
		get
		{
			return ptSelectedTextOffset;
		}
		set
		{
			if (ptSelectedTextOffset != value)
			{
				ptSelectedTextOffset = value;
			}
		}
	}

	[Localizable(true)]
	[Category("Behavior - Offsets")]
	[Description("Gets / sets the image offset when the mouse is moved over the selected GroupViewItem.")]
	public Point SelectedHighlightImageOffset
	{
		get
		{
			return ptSelectedHighlightImageOffset;
		}
		set
		{
			if (ptSelectedHighlightImageOffset != value)
			{
				ptSelectedHighlightImageOffset = value;
			}
		}
	}

	[Category("Behavior - Offsets")]
	[Localizable(true)]
	[Description("Gets / sets the text offset when the mouse is moved over a selected GroupViewItem.")]
	public Point SelectedHighlightTextOffset
	{
		get
		{
			return ptSelectedHighlightTextOffset;
		}
		set
		{
			if (ptSelectedHighlightTextOffset != value)
			{
				ptSelectedHighlightTextOffset = value;
			}
		}
	}

	[Category("Behavior - Offsets")]
	[Localizable(true)]
	[Description("Gets / sets the image offset for the GroupViewItem being selected.")]
	public Point SelectingImageOffset
	{
		get
		{
			return ptSelectingImageOffset;
		}
		set
		{
			if (ptSelectingImageOffset != value)
			{
				ptSelectingImageOffset = value;
			}
		}
	}

	[Localizable(true)]
	[Description("Gets / sets the text offset for the GroupViewItem being selected.")]
	[Category("Behavior - Offsets")]
	public Point SelectingTextOffset
	{
		get
		{
			return ptSelectingTextOffset;
		}
		set
		{
			if (ptSelectingTextOffset != value)
			{
				ptSelectingTextOffset = value;
			}
		}
	}

	[Description("The image list containing the large (32x32) images associated with the control.")]
	[Category("Behavior")]
	[DefaultValue(null)]
	public ImageList LargeImageList
	{
		get
		{
			return ilLarge;
		}
		set
		{
			ilLarge = value;
			Invalidate();
		}
	}

	[Description("The image list containing the small (16x16) images associated with the control.")]
	[DefaultValue(null)]
	[Category("Behavior")]
	public ImageList SmallImageList
	{
		get
		{
			return ilSmall;
		}
		set
		{
			ilSmall = value;
			Invalidate();
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Indicates whether the control should use small images for the items.")]
	public bool SmallImageView
	{
		get
		{
			return bSmallImageView;
		}
		set
		{
			if (bSmallImageView != value)
			{
				bSmallImageView = value;
				nTopIndex = 0;
				bDownScrlButton = false;
				bUpScrlButton = false;
				nHighlightedItem = -1;
				if (bFlowView && base.Visible && cllnGroupViewItems.Count > 0)
				{
					CalculateItemsPerRow();
				}
				Invalidate();
			}
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Indicates whether the control should use the button-type selection mode.")]
	public bool ButtonView
	{
		get
		{
			return bButtonView;
		}
		set
		{
			if (bButtonView == value)
			{
				return;
			}
			bButtonView = value;
			if (value)
			{
				if (nSelectedItem == -1)
				{
					nSelectedItem = 0;
				}
			}
			else
			{
				nSelectedItem = -1;
			}
			nHighlightedItem = -1;
			Invalidate();
		}
	}

	[Description("Indicates whether the control should use the flow type display.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool FlowView
	{
		get
		{
			return bFlowView;
		}
		set
		{
			if (bFlowView != value)
			{
				if (value && base.Visible && cllnGroupViewItems.Count > 0)
				{
					CalculateItemsPerRow();
				}
				bFlowView = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Indicates whether control should show GroupViewItem text in FlowView mode.")]
	public bool ShowFlowViewItemText
	{
		get
		{
			return m_bShowFlowViewText;
		}
		set
		{
			if (m_bShowFlowViewText != value)
			{
				m_bShowFlowViewText = value;
				if (base.Visible && VisibleItems.Count > 0 && bFlowView)
				{
					CalculateItemsPerRow();
				}
				Invalidate();
			}
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether the control should use the IntegratedScrolling option with the parent control containing the scroll buttons.")]
	[Category("Behavior")]
	public bool IntegratedScrolling
	{
		get
		{
			return bIntegratedScrolling;
		}
		set
		{
			if (bIntegratedScrolling != value)
			{
				bIntegratedScrolling = value;
				if (bFlowView && base.Visible && cllnGroupViewItems.Count > 0)
				{
					CalculateItemsPerRow();
				}
				Invalidate();
			}
		}
	}

	[DefaultValue(-1)]
	[Description("Gets / sets the index of the currently selected GroupBarItem.")]
	[Category("Behavior")]
	public int SelectedItem
	{
		get
		{
			int selectedItemInternal = SelectedItemInternal;
			if (selectedItemInternal >= 0 && selectedItemInternal < VisibleItems.Count && VisibleItems[selectedItemInternal] is GroupViewItem item)
			{
				return cllnGroupViewItems.IndexOf(item);
			}
			return -1;
		}
		set
		{
			if (value >= 0)
			{
				if (value < cllnGroupViewItems.Count)
				{
					GroupViewItem value2 = cllnGroupViewItems[value];
					int num = VisibleItems.IndexOf(value2);
					if (num >= 0)
					{
						SelectedItemInternal = num;
					}
				}
			}
			else
			{
				SelectedItemInternal = -1;
			}
		}
	}

	internal int SelectedItemInternal
	{
		get
		{
			return nSelectedItem;
		}
		set
		{
			if (nSelectedItem != value)
			{
				nSelectedItem = value;
				if (ButtonView && base.Visible)
				{
					Invalidate();
				}
				OnGroupViewItemSelected(EventArgs.Empty);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Returns the index of the GroupViewItem currently under the mouse cursor.")]
	public int HighlightedItem => nHighlightedItem;

	[Description("Returns the index of the GroupViewItem for which the ContextMenu was last displayed.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int ContextMenuItem => nContextMenuItem;

	[Category("Behavior")]
	[Description("Indicates whether the control should highlight the image when the mouse is moved over the GroupViewItem.")]
	[DefaultValue(true)]
	public bool HighlightImage
	{
		get
		{
			return bHighlightImage;
		}
		set
		{
			if (bHighlightImage != value)
			{
				bHighlightImage = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates whether the control should highlight the text when the mouse is moved over the GroupViewItem.")]
	[Category("Behavior")]
	public bool HighlightText
	{
		get
		{
			return bHighlightText;
		}
		set
		{
			if (bHighlightText != value)
			{
				bHighlightText = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Indicates whether the control should underline the text when the mouse is moved over the GroupViewItem.")]
	public bool TextUnderline
	{
		get
		{
			return bTextUnderline;
		}
		set
		{
			if (bTextUnderline != value)
			{
				bTextUnderline = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("The color used to draw the background of a GroupViewItem when the mouse cursor is moved over it.")]
	public Color HighlightItemColor
	{
		get
		{
			if (brHighlightItem is SolidBrush)
			{
				return (brHighlightItem as SolidBrush).Color;
			}
			return BackColor;
		}
		set
		{
			if (HighlightItemColor != value)
			{
				brHighlightItem = new SolidBrush(value);
				bHighlightItemSet = true;
			}
		}
	}

	[Category("Appearance")]
	[Description("The color used to draw the background of the selected GroupViewItem.")]
	public Color SelectedItemColor
	{
		get
		{
			if (brSelectedItem is SolidBrush)
			{
				return (brSelectedItem as SolidBrush).Color;
			}
			return BackColor;
		}
		set
		{
			if (SelectedItemColor != value)
			{
				brSelectedItem = new SolidBrush(value);
				bSelectedItemSet = true;
			}
		}
	}

	[Category("Appearance")]
	[Description("The color used to draw the background of the selected GroupViewItem when the mouse cursor is moved over it.")]
	public Color SelectedHighlightItemColor
	{
		get
		{
			if (brSelectedHighlightItem is SolidBrush)
			{
				return (brSelectedHighlightItem as SolidBrush).Color;
			}
			return BackColor;
		}
		set
		{
			if (SelectedHighlightItemColor != value)
			{
				brSelectedHighlightItem = new SolidBrush(value);
				bSelectedHighlightItemSet = true;
			}
		}
	}

	[Category("Appearance")]
	[Description("The color used to draw the background of the GroupViewItem being selected.")]
	public Color SelectingItemColor
	{
		get
		{
			if (brSelectingItem is SolidBrush)
			{
				return (brSelectingItem as SolidBrush).Color;
			}
			return BackColor;
		}
		set
		{
			if (SelectingItemColor != value)
			{
				brSelectingItem = new SolidBrush(value);
				bSelectingItemSet = true;
			}
		}
	}

	[Description("The color used to draw the text of a GroupViewItem when the mouse moves over it.")]
	[Category("Appearance")]
	public Color HighlightTextColor
	{
		get
		{
			return clrHighlightText;
		}
		set
		{
			if (clrHighlightText != value)
			{
				clrHighlightText = value;
				bHighlightTextSet = true;
			}
		}
	}

	[Description("The color used to draw the text of a selected GroupViewItem.")]
	[Category("Appearance")]
	public Color SelectedTextColor
	{
		get
		{
			return clrSelectedText;
		}
		set
		{
			if (clrSelectedText != value)
			{
				clrSelectedText = value;
				bSelectedTextSet = true;
			}
		}
	}

	[Category("Appearance")]
	[Description("The color used to draw the text of a selected GroupViewItem when the mouse moves over it.")]
	public Color SelectedHighlightTextColor
	{
		get
		{
			return clrSelectedHighlightText;
		}
		set
		{
			if (clrSelectedHighlightText != value)
			{
				clrSelectedHighlightText = value;
				bSelectedHighlightTextSet = true;
			}
		}
	}

	[Category("Appearance")]
	[Description("The color used to draw the text of the GroupViewItem being selected.")]
	public Color SelectingTextColor
	{
		get
		{
			return clrSelectingText;
		}
		set
		{
			if (clrSelectingText != value)
			{
				clrSelectingText = value;
				bSelectingTextSet = true;
			}
		}
	}

	[Browsable(false)]
	public Brush BackGroundBrush
	{
		get
		{
			return brBackGround;
		}
		set
		{
			if (brBackGround != value)
			{
				brBackGround = value;
				Invalidate();
			}
		}
	}

	[Browsable(false)]
	public Brush SelectedItemBrush
	{
		get
		{
			return brSelectedItem;
		}
		set
		{
			if (brSelectedItem != value)
			{
				brSelectedItem = value;
				Invalidate();
			}
		}
	}

	[Browsable(false)]
	public Brush SelectedItemHighlightBrush
	{
		get
		{
			return brSelectedHighlightItem;
		}
		set
		{
			if (brSelectedHighlightItem != value)
			{
				brSelectedHighlightItem = value;
				Invalidate();
			}
		}
	}

	[Browsable(false)]
	public Brush HighlightItemBrush
	{
		get
		{
			return brHighlightItem;
		}
		set
		{
			if (brHighlightItem != value)
			{
				brHighlightItem = value;
				Invalidate();
			}
		}
	}

	[Browsable(false)]
	public Brush SelectingItemBrush
	{
		get
		{
			return brSelectingItem;
		}
		set
		{
			if (brSelectingItem != value)
			{
				brSelectingItem = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(BorderStyle.Fixed3D)]
	[Description("The border style of the control.")]
	public BorderStyle BorderStyle
	{
		get
		{
			return bdrStyle;
		}
		set
		{
			if (bdrStyle != value)
			{
				if (!Enum.IsDefined(typeof(BorderStyle), value))
				{
					throw new InvalidEnumArgumentException("value", (int)value, typeof(BorderStyle));
				}
				bdrStyle = value;
				UpdateStyles();
			}
		}
	}

	[DocumentationExclude]
	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			switch (bdrStyle)
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

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Gets / sets a value indicating whether the GroupViewItem text should be wrapped.")]
	public bool TextWrap
	{
		get
		{
			return bTextWrap;
		}
		set
		{
			if (bTextWrap != value)
			{
				bTextWrap = value;
				Invalidate();
			}
		}
	}

	[Description("Gets or sets a value indicating whether the control is displayed with a flat look.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool FlatLook
	{
		get
		{
			return bFlatLook;
		}
		set
		{
			if (bFlatLook != value)
			{
				bFlatLook = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Specifies whether XP Themes (visual styles) should be used for drawing the control.")]
	[DefaultValue(false)]
	public bool ThemesEnabled
	{
		get
		{
			return bThemesEnabled;
		}
		set
		{
			if (bThemesEnabled != value)
			{
				bThemesEnabled = value;
				Invalidate();
			}
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override bool AllowDrop
	{
		get
		{
			return base.AllowDrop;
		}
		set
		{
		}
	}

	[Description("Gets or sets a value indicating whether the control supports drag-and-drop.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	[RefreshProperties(RefreshProperties.All)]
	public bool AllowDragDrop
	{
		get
		{
			return bAllowDragDrop;
		}
		set
		{
			if (bAllowDragDrop != value)
			{
				bAllowDragDrop = value;
				if (!value && AllowDragAnyObject)
				{
					AllowDragAnyObject = false;
				}
			}
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Gets or sets allow drag any object. For use this property AllowDragDrop must be true.")]
	public bool AllowDragAnyObject
	{
		get
		{
			return m_bAllowDragAnyObject;
		}
		set
		{
			if (m_bAllowDragAnyObject != value)
			{
				m_bAllowDragAnyObject = value;
				if (value && !AllowDragDrop)
				{
					AllowDragDrop = true;
				}
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Gets or sets a value indicating whether the selection bounds of a GroupViewItem are clipped.")]
	public bool ClipSelectionBounds
	{
		get
		{
			return bClipSelectionBounds;
		}
		set
		{
			bClipSelectionBounds = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public int TimerScrollInterval
	{
		get
		{
			return tmrScrolling.Interval;
		}
		set
		{
			if (tmrScrolling.Interval != value)
			{
				tmrScrolling.Interval = value;
			}
		}
	}

	private int ItemTextHeight
	{
		get
		{
			if (m_itemTextHeight < 0)
			{
				m_itemTextHeight = 0;
				if (ShowFlowViewItemText)
				{
					Rectangle clientRectangle = base.ClientRectangle;
					for (int i = 0; i < VisibleItems.Count; i++)
					{
						int num = Size.Ceiling(MeasureText(i, clientRectangle)).Height;
						if (m_itemTextHeight < num)
						{
							m_itemTextHeight = num;
						}
					}
				}
			}
			return m_itemTextHeight;
		}
	}

	[DocumentationExclude]
	protected internal GroupViewItemAccessibleObjectsIndexer gviAccessibleObjects
	{
		get
		{
			if (itemAccessibleObjects == null)
			{
				itemAccessibleObjects = new GroupViewItemAccessibleObjectsIndexer(this);
			}
			return itemAccessibleObjects;
		}
	}

	[Description("Event fired when an item in the GroupView control is selected.")]
	[Category("Behavior")]
	public event EventHandler GroupViewItemSelected;

	[Description("Event fired when an item in the GroupView control is highlighted.")]
	[Category("Behavior")]
	public event EventHandler GroupViewItemHighlighted;

	[Description("Event fired after the GroupView control items have been reordered by a drag-and-drop operation.")]
	[Category("Behavior")]
	public event EventHandler GroupViewItemsReordered;

	[Category("Behavior")]
	[Description("Event fired after an in-place rename operation.")]
	public event GroupItemRenamedEventHandler GroupViewItemRenamed;

	[Description("Event fired when the right mouse button is clicked over the control.")]
	[Category("Behavior")]
	public event EventHandler ShowContextMenu;

	private void InitTimer()
	{
		m_toolTipTimer = new Timer();
		m_toolTipTimer.Tick += OnToolTipTimerTick;
	}

	private void InitToolTip()
	{
		if (m_toolTip == null)
		{
			m_toolTip = new ToolTipAdv(this);
			m_toolTip.BackColor = SystemColors.Info;
			m_toolTip.BorderStyle = BorderStyle.FixedSingle;
		}
	}

	private void OnToolTipTimerTick(object sender, EventArgs e)
	{
		if (!base.IsDisposed)
		{
			Point pt = PointToClient(Control.MousePosition);
			ShowToolTip(GetItemAt(pt)?.ToolTipText);
			m_toolTipTimer.Stop();
		}
	}

	protected void ShowToolTip(string text)
	{
		if (m_toolTip == null)
		{
			return;
		}
		Point p = PointToClient(Control.MousePosition);
		if (text == null || text == string.Empty || !ShowToolTips)
		{
			if (m_toolTip.Visible)
			{
				m_toolTip.HidePopup();
			}
		}
		else
		{
			p.Offset(DEF_TOOLTIP_OFFSET.X, DEF_TOOLTIP_OFFSET.Y);
			m_toolTip.Text = text;
			m_toolTip.ShowPopup(PointToScreen(p));
		}
	}

	public GroupViewItem GetItemAt(Point pt)
	{
		GroupViewItem result = null;
		GroupViewItem groupViewItem = null;
		if (m_arrVisibleItems != null && m_arrVisibleItems.Count > 0)
		{
			for (int num = m_arrVisibleItems.Count - 1; num >= 0; num--)
			{
				groupViewItem = (GroupViewItem)m_arrVisibleItems[num];
				if (groupViewItem != null && groupViewItem.Bounds.Contains(pt))
				{
					result = groupViewItem;
					break;
				}
			}
		}
		return result;
	}

	protected void StartShowingToolTip(int interval)
	{
		if (interval < 0)
		{
			throw new ArgumentException("interval");
		}
		if (m_toolTipTimer == null)
		{
			InitTimer();
		}
		if (m_toolTipTimer != null)
		{
			m_toolTipTimer.Interval = interval;
			m_toolTipTimer.Start();
		}
	}

	protected void StopShowingToolTip()
	{
		if (m_toolTipTimer != null)
		{
			ShowToolTip(null);
			m_bShouldShowToolTipFirstTime = !m_bIsGroupViewItemSelecting;
			m_toolTipTimer.Interval = 1000;
			m_toolTipTimer.Stop();
		}
	}

	protected new virtual void Layout()
	{
		m_itemTextHeight = -1;
		Rectangle rchighlight = Rectangle.Empty;
		for (int i = nTopIndex; i < VisibleItems.Count; i++)
		{
			GroupViewItem groupViewItem = (GroupViewItem)VisibleItems[i];
			if (!bFlowView)
			{
				SetNonFlowItemBounds(i, ref rchighlight);
			}
			else
			{
				SetFlowItemBounds(i, ref rchighlight);
			}
			Rectangle bounds = rchighlight;
			if (Horizontal)
			{
				int num = bounds.Width;
				bounds.Width = bounds.Height;
				bounds.Height = num;
				num = bounds.X;
				bounds.X = bounds.Y;
				bounds.Y = num;
				if (GetIsMirrored() && !bFlowView)
				{
					bounds.X += base.ClientRectangle.Width - (bounds.X * 2 + bounds.Width);
				}
			}
			groupViewItem.Bounds = bounds;
			if (!bFlowView)
			{
				rchighlight.Y = rchighlight.Bottom;
			}
		}
	}

	protected override void WndProc(ref Message m)
	{
		if ((m.Msg == 513 && ToolTipMouseButtonsDowned == MouseButtons.Left) || (m.Msg == 516 && ToolTipMouseButtonsDowned == MouseButtons.Right))
		{
			Point point = new Point(NativeMethods.LOWORD(m.LParam), NativeMethods.HIWORD(m.LParam));
			if (point == ToolTipLastMouseDownedPoint && DateTime.Now.Subtract(ToolTipLastMouseDownedTime).TotalMilliseconds <= (double)SystemInformation.DoubleClickTime)
			{
				ToolTipLastMouseDownedTime = DateTime.MinValue;
				if (ToolTipMouseButtonsDowned == MouseButtons.Left)
				{
					m.Msg = 515;
				}
				else if (ToolTipMouseButtonsDowned == MouseButtons.Right)
				{
					m.Msg = 518;
				}
			}
		}
		base.WndProc(ref m);
	}

	static GroupView()
	{
		DEF_TOOLTIP_OFFSET = new Point(13, 15);
		DEF_PROPERTY_NAME_VISIBLE = "Visible";
		dfGroupViewItem = DataFormats.GetFormat("GroupViewItemDataFormat");
		ptDragStart = new Point(-1, -1);
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(GroupView));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
	}

	[DocumentationExclude]
	private int GetScrollButtonLeft()
	{
		return GetIsMirrored() ? 5 : (base.ClientRectangle.Right - 21);
	}

	[DocumentationExclude]
	protected bool ShouldSerializeHighlightImageOffset()
	{
		return ptHighlightImageOffset != Point.Empty;
	}

	public void ResetHighlightImageOffset()
	{
		ptHighlightImageOffset = Point.Empty;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeHighlightTextOffset()
	{
		return ptHighlightTextOffset != Point.Empty;
	}

	public void ResetHighlightTextOffset()
	{
		ptHighlightTextOffset = Point.Empty;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedImageOffset()
	{
		return ptSelectedImageOffset != Point.Empty;
	}

	public void ResetSelectedImageOffset()
	{
		ptSelectedImageOffset = Point.Empty;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedTextOffset()
	{
		return ptSelectedTextOffset != Point.Empty;
	}

	public void ResetSelectedTextOffset()
	{
		ptSelectedTextOffset = Point.Empty;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedHighlightImageOffset()
	{
		return ptSelectedHighlightImageOffset != Point.Empty;
	}

	public void ResetSelectedHighlightImageOffset()
	{
		ptSelectedHighlightImageOffset = Point.Empty;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedHighlightTextOffset()
	{
		return ptSelectedHighlightTextOffset != Point.Empty;
	}

	public void ResetSelectedHighlightTextOffset()
	{
		ptSelectedHighlightTextOffset = Point.Empty;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectingImageOffset()
	{
		return ptSelectingImageOffset != Point.Empty;
	}

	public void ResetSelectingImageOffset()
	{
		ptSelectingImageOffset = Point.Empty;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectingTextOffset()
	{
		return ptSelectingTextOffset != Point.Empty;
	}

	public void ResetSelectingTextOffset()
	{
		ptSelectingTextOffset = Point.Empty;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeHighlightItemColor()
	{
		return bHighlightItemSet;
	}

	public void ResetHighlightItemColor()
	{
		HighlightItemColor = BackColor;
		bHighlightItemSet = false;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedItemColor()
	{
		return bSelectedItemSet;
	}

	public void ResetSelectedItemColor()
	{
		SelectedItemColor = BackColor;
		bSelectedItemSet = false;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedHighlightItemColor()
	{
		return bSelectedHighlightItemSet;
	}

	public void ResetSelectedHighlightItemColor()
	{
		SelectedHighlightItemColor = BackColor;
		bSelectedHighlightItemSet = false;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectingItemColor()
	{
		return bSelectingItemSet;
	}

	public void ResetSelectingItemColor()
	{
		SelectingItemColor = BackColor;
		bSelectingItemSet = false;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeHighlightTextColor()
	{
		return bHighlightTextSet;
	}

	public void ResetHighlightTextColor()
	{
		HighlightTextColor = ForeColor;
		bHighlightTextSet = false;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedTextColor()
	{
		return bSelectedTextSet;
	}

	public void ResetSelectedTextColor()
	{
		SelectedTextColor = ForeColor;
		bSelectedTextSet = false;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedHighlightTextColor()
	{
		return bSelectedHighlightTextSet;
	}

	public void ResetSelectedHighlightTextColor()
	{
		SelectedHighlightTextColor = ForeColor;
		bSelectedHighlightTextSet = false;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectingTextColor()
	{
		return bSelectingTextSet;
	}

	public void ResetSelectingTextColor()
	{
		SelectingTextColor = ForeColor;
		bSelectingTextSet = false;
	}

	public GroupView()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(GroupView));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
		base.AllowDrop = true;
		cllnGroupViewItems = new GroupViewItemCollection(this);
		cllnGroupViewItems.CollectionChanged += cllnGroupViewItems_CollectionChanged;
		ContextMenu = null;
		tmrScrolling = new Timer();
		tmrScrolling.Interval = 300;
		tmrScrolling.Tick += ScrollTimerEventHandler;
		ctrlToolTip = new ToolTipForm(this);
		if (XPThemes.IsThemedOS)
		{
			tdToolbar = new ThemedControlDrawing("TOOLBAR");
			tdScrollBar = new ThemedControlDrawing("SCROLLBAR");
		}
		InitToolTip();
	}

	public virtual void InplaceRenameItem(int nindex)
	{
		if (base.Visible && nindex >= 0 && nindex < cllnGroupViewItems.Count)
		{
			if (ctrlTextBox == null)
			{
				ctrlTextBox = new RenameTextBox();
				base.Controls.Add(ctrlTextBox);
				ctrlTextBox.RenameComplete += GroupView_RenameComplete;
				ctrlTextBox.TextChanged += GroupView_TextChanged;
			}
			nRenameItem = nindex;
			if (bFlowView)
			{
				FlowView = false;
				m_bFlowViewChanged = true;
			}
			int num = 1;
			if (!bSmallImageView)
			{
				ctrlTextBox.TextAlign = HorizontalAlignment.Center;
				ctrlTextBox.Multiline = false;
				num = 2;
			}
			else
			{
				ctrlTextBox.TextAlign = HorizontalAlignment.Left;
				ctrlTextBox.Multiline = false;
			}
			BringItemIntoView(nindex);
			Rectangle groupViewItemBounds = GetGroupViewItemBounds(nRenameItem, "Text");
			groupViewItemBounds.Inflate(num, num);
			ctrlTextBox.BeginRename(groupViewItemBounds, cllnGroupViewItems[nRenameItem].Text);
		}
	}

	public void CancelInplaceRenameItem()
	{
		if (nRenameItem >= 0)
		{
			ctrlTextBox.EndRename(bcancel: true);
		}
	}

	public void BringItemIntoView(int nindex)
	{
		if (nindex < 0 || (!bDownScrlButton && !bUpScrlButton))
		{
			return;
		}
		int num = CalculateItemsPerPage();
		if (nindex >= nTopIndex && nindex < nTopIndex + num)
		{
			return;
		}
		if (nindex < nTopIndex)
		{
			if (!bFlowView)
			{
				int num2 = nTopIndex;
				for (int i = nindex; i < num2; i++)
				{
					DoScroll(bscrllup: false, bsettimer: false);
				}
			}
			else
			{
				do
				{
					DoScroll(bscrllup: false, bsettimer: false);
				}
				while (nTopIndex > nindex);
			}
		}
		else if (!bFlowView)
		{
			int num3 = nTopIndex + num;
			for (int num4 = nindex; num4 >= num3; num4--)
			{
				DoScroll(bscrllup: true, bsettimer: false);
			}
		}
		else
		{
			do
			{
				DoScroll(bscrllup: true, bsettimer: false);
			}
			while (nTopIndex + num <= nindex);
		}
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	internal bool IsItemVisible(int nindex)
	{
		if (nindex < 0 || nindex >= VisibleItems.Count)
		{
			return false;
		}
		if (!bDownScrlButton && !bUpScrlButton)
		{
			return true;
		}
		if (nindex >= nTopIndex && nindex < nTopIndex + CalculateItemsPerPage())
		{
			return true;
		}
		return false;
	}

	bool IIntegratedScrollClient.IsUpScrollButtonEnabled()
	{
		if (!bIntegratedScrolling)
		{
			return false;
		}
		return bUpScrlButton;
	}

	bool IIntegratedScrollClient.IsDownScrollButtonEnabled()
	{
		if (!bIntegratedScrolling)
		{
			return false;
		}
		return bDownScrlButton;
	}

	void IIntegratedScrollClient.UpScrollButtonPressed()
	{
		DoScroll(bscrllup: false, bsettimer: false);
	}

	void IIntegratedScrollClient.DownScrollButtonPressed()
	{
		DoScroll(bscrllup: true, bsettimer: false);
	}

	[DocumentationExclude]
	protected void PropChangedHandler(object obj, PropertyChangedEventArgs args)
	{
		if (obj is GroupViewItem)
		{
			if (args.PropertyName == DEF_PROPERTY_NAME_VISIBLE)
			{
				RecalculateVisibleItem();
			}
			Invalidate();
		}
	}

	[DocumentationExclude]
	protected void GroupView_RenameComplete(object sender, RenameCompleteEventArgs arg)
	{
		string newName = arg.NewName;
		int num = nRenameItem;
		if (num >= 0 && num < cllnGroupViewItems.Count)
		{
			nRenameItem = -1;
			GroupViewItem groupViewItem = cllnGroupViewItems[num];
			string oldtext = groupViewItem.Text;
			if (newName != null && !groupViewItem.Text.Equals(newName))
			{
				groupViewItem.Text = newName;
			}
			OnGroupViewItemRenamed(new GroupItemRenamedEventArgs(num, oldtext, newName));
			Invalidate(GetGroupViewItemBounds(num, "Text"));
			Update();
		}
		if (m_bFlowViewChanged)
		{
			FlowView = true;
			m_bFlowViewChanged = false;
		}
	}

	[DocumentationExclude]
	protected void GroupView_TextChanged(object sender, EventArgs e)
	{
		if (nRenameItem == -1)
		{
			return;
		}
		string text = ctrlTextBox.Text;
		Graphics graphics = CreateGraphics();
		SizeF sizeF = graphics.MeasureString(text, ctrlTextBox.Font);
		sizeF.Width += 2f * ctrlTextBox.Font.Size;
		sizeF.Width = ((sizeF.Width > 25f) ? sizeF.Width : 25f);
		graphics.Dispose();
		Rectangle bounds = ctrlTextBox.Bounds;
		if (!bSmallImageView)
		{
			int num = base.ClientRectangle.Width - 42;
			if (bounds.Width <= num)
			{
				bounds.X = 21 + (num - (int)sizeF.Width) / 2;
				bounds.Width = (int)sizeF.Width;
			}
		}
		else
		{
			int num2 = base.ClientRectangle.Width - (nItemXSpacing + 21);
			if (bounds.Width < num2)
			{
				bounds.Width = (int)sizeF.Width;
			}
		}
		ctrlTextBox.SetBounds(bounds.X, 0, bounds.Width, 0, BoundsSpecified.X | BoundsSpecified.Width);
	}

	protected virtual void OnGroupViewItemSelected(EventArgs arg)
	{
		if (this.GroupViewItemSelected != null)
		{
			this.GroupViewItemSelected(this, arg);
		}
	}

	protected virtual void OnGroupViewItemHighlighted(EventArgs arg)
	{
		if (this.GroupViewItemHighlighted != null)
		{
			this.GroupViewItemHighlighted(this, arg);
		}
	}

	protected virtual void OnGroupViewItemRenamed(GroupItemRenamedEventArgs arg)
	{
		if (this.GroupViewItemRenamed != null)
		{
			this.GroupViewItemRenamed(this, arg);
		}
	}

	protected virtual void OnGroupViewItemsReordered(EventArgs arg)
	{
		if (this.GroupViewItemsReordered != null)
		{
			this.GroupViewItemsReordered(this, arg);
		}
	}

	protected virtual void OnShowContextMenu(EventArgs arg)
	{
		if (this.ShowContextMenu != null)
		{
			this.ShowContextMenu(this, arg);
		}
	}

	protected override void OnBackColorChanged(EventArgs e)
	{
		base.OnBackColorChanged(e);
		brBackGround = new SolidBrush(BackColor);
		if (ctrlToolTip != null)
		{
			ctrlToolTip.BackColor = BackColor;
		}
		if (!bHighlightItemSet)
		{
			ResetHighlightItemColor();
		}
		if (!bSelectedItemSet)
		{
			ResetSelectedItemColor();
		}
		if (!bSelectedHighlightItemSet)
		{
			ResetSelectedHighlightItemColor();
		}
		if (!bSelectingItemSet)
		{
			ResetSelectingItemColor();
		}
	}

	protected override void OnForeColorChanged(EventArgs e)
	{
		base.OnForeColorChanged(e);
		if (!bHighlightTextSet)
		{
			ResetHighlightTextColor();
		}
		if (!bSelectedTextSet)
		{
			ResetSelectedTextColor();
		}
		if (!bSelectedHighlightTextSet)
		{
			ResetSelectedHighlightTextColor();
		}
		if (!bSelectingTextSet)
		{
			ResetSelectingTextColor();
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		Layout();
		DrawAllItems(e.Graphics);
		base.OnPaint(e);
	}

	protected override void OnPaintBackground(PaintEventArgs e)
	{
		if (BackgroundImage == null)
		{
			e.Graphics.FillRectangle(brBackGround, e.ClipRectangle);
		}
		else
		{
			base.OnPaintBackground(e);
		}
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		base.OnVisibleChanged(e);
		if (base.Visible && VisibleItems.Count > 0 && bFlowView)
		{
			CalculateItemsPerRow();
		}
	}

	protected override void OnDragEnter(DragEventArgs drgevent)
	{
		if (!bAllowDragDrop || (!m_bAllowDragAnyObject && !drgevent.Data.GetDataPresent("GroupViewItemDataFormat")))
		{
			drgevent.Effect = DragDropEffects.None;
		}
		base.OnDragEnter(drgevent);
	}

	protected override void OnDragOver(DragEventArgs drgevent)
	{
		if (!bAllowDragDrop || (!m_bAllowDragAnyObject && !drgevent.Data.GetDataPresent("GroupViewItemDataFormat")))
		{
			drgevent.Effect = DragDropEffects.None;
		}
		else
		{
			Point pt = PointToClient(new Point(drgevent.X, drgevent.Y));
			int num = ProcessMouseOver(pt);
			if (num >= 0 && bDownScrlButton)
			{
				Rectangle rectangle = rcHighlightedItem;
				if (!bSmallImageView)
				{
					rectangle.Height += nItemYSpacing + Font.Height + nItemYSpacing;
				}
				if (rectangle.Bottom > base.ClientRectangle.Bottom && pt.Y > base.ClientRectangle.Bottom - 25)
				{
					if (nDropItem != -1)
					{
						ProcessDragDrop(MouseActions.Leave, pt);
					}
					DoScroll(bscrllup: true, bsettimer: false);
				}
			}
			if (num == -1)
			{
				ProcessDragDrop(MouseActions.Drag, pt);
				if (nDropItem != -1)
				{
					if (drgevent.KeyState == 9)
					{
						drgevent.Effect = DragDropEffects.Copy;
					}
					else
					{
						drgevent.Effect = DragDropEffects.Move;
					}
				}
				else
				{
					drgevent.Effect = DragDropEffects.None;
				}
			}
			else
			{
				if (nDropItem != -1)
				{
					ProcessDragDrop(MouseActions.Leave, pt);
				}
				drgevent.Effect = DragDropEffects.None;
			}
		}
		base.OnDragOver(drgevent);
	}

	protected override void OnDragLeave(EventArgs e)
	{
		if (nDropItem != -1)
		{
			ProcessDragDrop(MouseActions.Leave, new Point(-1, -1));
		}
		base.OnDragLeave(e);
	}

	protected override void OnDragDrop(DragEventArgs drgevent)
	{
		IDataObject data = drgevent.Data;
		if ((m_bAllowDragAnyObject || data.GetDataPresent("GroupViewItemDataFormat")) && nDropItem >= 0)
		{
			int num = nDropItem;
			ProcessDragDrop(MouseActions.Leave, new Point(drgevent.X, drgevent.Y));
			GroupViewItem groupViewItem = data.GetData("GroupViewItemDataFormat") as GroupViewItem;
			if (groupViewItem == null || groupViewItem.Text == null)
			{
				if (!(drgevent.Data.GetData(typeof(string)) is string text))
				{
					drgevent.Effect = DragDropEffects.None;
					base.OnDragDrop(drgevent);
					return;
				}
				groupViewItem = new GroupViewItem();
				groupViewItem.Text = text;
			}
			if (cllnGroupViewItems.Contains(groupViewItem))
			{
				if (groupViewItem.Equals(cllnGroupViewItems[(num == cllnGroupViewItems.Count) ? (num - 1) : num]) || (num - 1 >= 0 && groupViewItem.Equals(cllnGroupViewItems[num - 1])))
				{
					drgevent.Effect = DragDropEffects.None;
					base.OnDragDrop(drgevent);
					nSelectedItem = VisibleItems.IndexOf(groupViewItem);
					return;
				}
				GroupViewItem groupViewItem2 = new GroupViewItem(groupViewItem.Text, groupViewItem.ImageIndex, groupViewItem.Tag);
				cllnGroupViewItems.Insert(num, groupViewItem2);
				if (bButtonView)
				{
					nSelectedItem = VisibleItems.IndexOf(groupViewItem2);
				}
				Focus();
			}
			else
			{
				GroupViewItem groupViewItem3 = new GroupViewItem(groupViewItem.Text, groupViewItem.ImageIndex, groupViewItem.Tag);
				cllnGroupViewItems.Insert(num, groupViewItem3);
				if (bButtonView)
				{
					nSelectedItem = VisibleItems.IndexOf(groupViewItem3);
				}
				Invalidate();
				Update();
				OnGroupViewItemsReordered(EventArgs.Empty);
				Focus();
			}
			base.OnDragDrop(drgevent);
		}
		else
		{
			drgevent.Effect = DragDropEffects.None;
			base.OnDragDrop(drgevent);
		}
	}

	private int GetItemCountInPage()
	{
		int num = 0;
		if (!bFlowView)
		{
			Rectangle rchilight = Rectangle.Empty;
			while (rchilight.Bottom < (Horizontal ? base.ClientRectangle.Right : base.ClientRectangle.Bottom))
			{
				SetNonFlowItemBounds(num, ref rchilight);
				num++;
				if (num == VisibleItems.Count)
				{
					break;
				}
				rchilight.Y = rchilight.Bottom;
			}
		}
		else
		{
			int num2 = nImageSpacing + nImageSpacing + 1;
			num2 += (bSmallImageView ? defSmallImgSize.Height : defLargeImgSize.Height);
			if (ShowFlowViewItemText)
			{
				num2 += ItemTextHeight + nTextSpacing;
			}
			num = base.ClientRectangle.Height / (num2 + 1) * nItemsPerRow;
		}
		return num;
	}

	protected override void OnMouseHover(EventArgs e)
	{
		if (m_bShouldShowToolTipFirstTime && ShowToolTips)
		{
			m_bShouldShowToolTipFirstTime = false;
			StartShowingToolTip(1000);
		}
	}

	protected override void OnLostFocus(EventArgs e)
	{
		base.OnLostFocus(e);
		m_bIsGroupViewItemSelecting = false;
	}

	protected override void OnMouseWheel(MouseEventArgs e)
	{
		base.OnMouseWheel(e);
		int num = e.Delta * SystemInformation.MouseWheelScrollLines / 120;
		if ((num > 0) ? bUpScrlButton : bDownScrlButton)
		{
			if (bFlowView)
			{
				num *= nItemsPerRow;
			}
			nTopIndex -= num;
			int itemCountInPage = GetItemCountInPage();
			if (nTopIndex >= VisibleItems.Count - itemCountInPage)
			{
				nTopIndex = VisibleItems.Count - itemCountInPage;
			}
			if (nTopIndex < 0)
			{
				nTopIndex = 0;
			}
			Invalidate();
			Update();
			if (bIntegratedScrolling && base.Parent is IIntegratedScrollContainer integratedScrollContainer)
			{
				integratedScrollContainer.InvalidateUpScrollButton();
				integratedScrollContainer.InvalidateDownScrollButton();
			}
			StopShowingToolTip();
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		HandleMouseDown(e.Button, new Point(e.X, e.Y));
	}

	protected override void OnClick(EventArgs e)
	{
		suppressMouseHover = true;
		base.OnClick(e);
	}

	[DocumentationExclude]
	protected virtual void HandleMouseDown(MouseButtons button, Point pt)
	{
		if (!base.ContainsFocus)
		{
			Focus();
		}
		if (button == MouseButtons.Left && ((bDownScrlButton && DownScrlBtnRect.Contains(pt)) || (bUpScrlButton & UpScrlBtnRect.Contains(pt))))
		{
			ScrollButtonsMouseHandler(MouseActions.LBtnDown, pt);
		}
		if (base.DesignMode)
		{
			return;
		}
		int num = ProcessMouseOver(pt);
		if (num != -1)
		{
			StopShowingToolTip();
			m_bShouldShowToolTipFirstTime = false;
		}
		if (button == MouseButtons.Left)
		{
			m_bSelecting = true;
			Invalidate(Rectangle.Inflate(rcHighlightedItem, 1, 1));
			nPrevSelected = nSelectedItem;
			rcPrevSelected = rcSelectedItem;
			if (num != -1)
			{
				nSelectedItem = num;
			}
			if (num >= 0 && num < m_arrVisibleItems.Count)
			{
				rcSelectedItem = ((GroupViewItem)m_arrVisibleItems[num]).Bounds;
			}
			else
			{
				rcSelectedItem = Rectangle.Empty;
			}
			if (!bFlatLook)
			{
				Invalidate(Rectangle.Inflate(rcPrevSelected, 1, 1));
			}
			Update();
			if (bAllowDragDrop)
			{
				nDragItem = num;
				ptDragStart = pt;
			}
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		Point pt = new Point(e.X, e.Y);
		if (tmrScrolling != null && tmrScrolling.Enabled)
		{
			if ((bDownScrlButton || bUpScrlButton) && !DownScrlBtnRect.Contains(pt) && !UpScrlBtnRect.Contains(pt))
			{
				tmrScrolling.Stop();
				ScrollButtonsMouseHandler(MouseActions.Leave, pt);
			}
		}
		else if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && bThemesEnabled)
		{
			if ((bDownScrlButton && DownScrlBtnRect.Contains(pt)) || (bUpScrlButton & UpScrlBtnRect.Contains(pt)))
			{
				ScrollButtonsMouseHandler(MouseActions.Move, pt);
			}
			else if (scrllBtnState != ScrollButtonState.Normal)
			{
				ScrollButtonsMouseHandler(MouseActions.Leave, pt);
			}
		}
		int num = ProcessMouseOver(pt);
		int num2 = num;
		if (num2 != m_prevHitItemIndex)
		{
			if (num2 != -1)
			{
				if (ShowToolTips && !m_bShouldShowToolTipFirstTime)
				{
					StartShowingToolTip(200);
				}
			}
			else
			{
				ShowToolTip(null);
			}
			m_prevHitItemIndex = num2;
		}
		if (!bAllowDragDrop || e.Button != MouseButtons.Left || num < 0 || num != nDragItem || new Rectangle(ptDragStart.X - 2, ptDragStart.Y - 2, 4, 4).Contains(pt))
		{
			return;
		}
		if (bFlatLook && nPrevSelected >= 0 && nPrevSelected != num)
		{
			Invalidate(Rectangle.Inflate(rcPrevSelected, 1, 1));
			Update();
			nPrevSelected = -1;
			rcPrevSelected = Rectangle.Empty;
		}
		if (!bButtonView)
		{
			nSelectedItem = -1;
		}
		GroupViewItem groupViewItem = (GroupViewItem)VisibleItems[num];
		DataObject data = new DataObject("GroupViewItemDataFormat", groupViewItem);
		DragDropEffects dragDropEffects = DoDragDrop(data, DragDropEffects.All);
		if (dragDropEffects == DragDropEffects.Move)
		{
			VisibleItems.IndexOf(groupViewItem);
			cllnGroupViewItems.Remove(groupViewItem);
			if (bButtonView && (nSelectedItem < 0 || nSelectedItem >= VisibleItems.Count))
			{
				if (VisibleItems.Count > 0)
				{
					nSelectedItem = VisibleItems.Count - 1;
				}
				else
				{
					nSelectedItem = 0;
				}
			}
		}
		Invalidate();
		Update();
		if (dragDropEffects == DragDropEffects.Move || dragDropEffects == DragDropEffects.Copy)
		{
			OnGroupViewItemsReordered(EventArgs.Empty);
		}
		ptDragStart = new Point(-1, -1);
		nDragItem = -1;
		nDropItem = -1;
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		HandleMouseUp(e.Button, new Point(e.X, e.Y));
		suppressMouseHover = false;
	}

	[DocumentationExclude]
	protected virtual void HandleMouseUp(MouseButtons button, Point pt)
	{
		if (tmrScrolling != null && tmrScrolling.Enabled)
		{
			tmrScrolling.Stop();
			if (!base.ClientRectangle.Contains(pt) && (bDownScrlButton || bUpScrlButton))
			{
				ScrollButtonsMouseHandler(MouseActions.Leave, pt);
			}
		}
		switch (button)
		{
		case MouseButtons.Left:
		{
			if ((bDownScrlButton & DownScrlBtnRect.Contains(pt)) || (bUpScrlButton & UpScrlBtnRect.Contains(pt)))
			{
				ScrollButtonsMouseHandler(MouseActions.LBtnUp, pt);
			}
			if (base.DesignMode)
			{
				return;
			}
			int num = ProcessMouseOver(pt);
			bool flag;
			if (num != -1)
			{
				flag = num != nPrevSelected;
				if (bFlatLook)
				{
					if (rcPrevSelected != Rectangle.Empty)
					{
						Invalidate(Rectangle.Inflate(rcPrevSelected, 1, 1));
					}
					else if (num != nSelectedItem && rcSelectedItem != Rectangle.Empty)
					{
						Invalidate(Rectangle.Inflate(rcSelectedItem, 1, 1));
					}
				}
				nPrevSelected = nSelectedItem;
				rcPrevSelected = rcSelectedItem;
				nSelectedItem = num;
				rcSelectedItem = ((GroupViewItem)m_arrVisibleItems[num]).Bounds;
				if (nPrevSelected >= 0)
				{
					Invalidate(Rectangle.Inflate(rcPrevSelected, 1, 1));
					Update();
				}
			}
			else
			{
				flag = false;
				nSelectedItem = nPrevSelected;
				rcSelectedItem = rcPrevSelected;
			}
			m_bSelecting = false;
			Invalidate(Rectangle.Inflate(rcSelectedItem, 1, 1));
			Update();
			if (nSelectedItem != -1 && flag)
			{
				OnGroupViewItemSelected(EventArgs.Empty);
			}
			break;
		}
		case MouseButtons.Right:
			ProcessMouseOver(pt);
			nContextMenuItem = nHighlightedItem;
			OnShowContextMenu(EventArgs.Empty);
			break;
		}
		if (ptDragStart.X != -1 || ptDragStart.Y != -1)
		{
			nDragItem = -1;
			nDropItem = -1;
			ptDragStart = new Point(-1, -1);
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		Point pt = new Point(-1, -1);
		if (tmrScrolling != null && tmrScrolling.Enabled)
		{
			tmrScrolling.Stop();
		}
		if (ctrlToolTip.Visible)
		{
			pt = PointToClient(Cursor.Position);
		}
		ProcessMouseOver(pt);
		if (bFlatLook && rcPrevSelected != Rectangle.Empty)
		{
			Invalidate(Rectangle.Inflate(rcPrevSelected, 1, 1));
		}
		StopShowingToolTip();
	}

	protected override bool ProcessCmdKey(ref Message msg, Keys keydata)
	{
		if (msg.Msg == 256 && GroupViewItems.Count > 0 && bButtonView)
		{
			Keys keys = keydata;
			if (Horizontal && (keys & Keys.Control) == 0)
			{
				bool isMirrored = GetIsMirrored();
				switch (keys)
				{
				case Keys.Left:
					keys = (isMirrored ? Keys.Down : Keys.Up);
					break;
				case Keys.Right:
					keys = (isMirrored ? Keys.Up : Keys.Down);
					break;
				case Keys.Up:
					keys = Keys.Left;
					break;
				case Keys.Down:
					keys = Keys.Right;
					break;
				}
			}
			switch (keys)
			{
			case Keys.Up:
				if ((keys & Keys.Control) != Keys.None)
				{
					break;
				}
				if (!bFlowView)
				{
					if (nSelectedItem > 0)
					{
						BringItemIntoView(nSelectedItem - 1);
						SelectedItemInternal--;
					}
				}
				else
				{
					int num7 = nSelectedItem - nItemsPerRow;
					if (num7 >= 0)
					{
						BringItemIntoView(num7);
						SelectedItemInternal = num7;
					}
				}
				return true;
			case Keys.Down:
				if ((keys & Keys.Control) != Keys.None)
				{
					break;
				}
				if (!bFlowView)
				{
					if (nSelectedItem < GroupViewItems.Count - 1)
					{
						BringItemIntoView(nSelectedItem + 1);
						SelectedItemInternal++;
					}
				}
				else
				{
					int num6 = nSelectedItem + nItemsPerRow;
					if (num6 < GroupViewItems.Count)
					{
						BringItemIntoView(num6);
						SelectedItemInternal = num6;
					}
				}
				return true;
			case Keys.Left:
				if (bFlowView)
				{
					if (nSelectedItem > 0)
					{
						BringItemIntoView(nSelectedItem - 1);
						SelectedItemInternal--;
					}
					return true;
				}
				break;
			case Keys.Right:
				if (bFlowView)
				{
					if (nSelectedItem < GroupViewItems.Count - 1)
					{
						BringItemIntoView(nSelectedItem + 1);
						SelectedItemInternal++;
					}
					return true;
				}
				break;
			case Keys.Prior:
			{
				int num4 = CalculateItemsPerPage();
				int num5 = nSelectedItem - num4;
				if (num5 < 0)
				{
					num5 = 0;
				}
				BringItemIntoView(num5);
				SelectedItemInternal = num5;
				return true;
			}
			case Keys.Next:
			{
				int num2 = CalculateItemsPerPage();
				int num3 = nSelectedItem + num2;
				if (num3 >= GroupViewItems.Count)
				{
					num3 = GroupViewItems.Count - 1;
				}
				BringItemIntoView(num3);
				SelectedItemInternal = num3;
				return true;
			}
			case Keys.Home:
				BringItemIntoView(0);
				SelectedItemInternal = 0;
				return true;
			case Keys.End:
			{
				int num = GroupViewItems.Count - 1;
				BringItemIntoView(num);
				SelectedItemInternal = num;
				return true;
			}
			}
		}
		return base.ProcessCmdKey(ref msg, keydata);
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		Rectangle clientRectangle = base.ClientRectangle;
		base.SetBoundsCore(x, y, width, height, specified);
		if (Horizontal && clientRectangle.Height != base.ClientRectangle.Height)
		{
			if (bFlowView)
			{
				CalculateItemsPerRow();
			}
			Invalidate();
		}
		else if (clientRectangle.Width != base.ClientRectangle.Width)
		{
			if (bFlowView)
			{
				CalculateItemsPerRow();
				Math.Ceiling((float)VisibleItems.Count / (float)nItemsPerRow);
				int num = 0;
				num = (bSmallImageView ? (nImageSpacing + 16 + nImageSpacing + 1) : (nImageSpacing + 32 + nImageSpacing + 1));
				if (ShowFlowViewItemText)
				{
					SizeF value = MeasureText(0, base.ClientRectangle);
					num += Size.Ceiling(value).Height + nTextSpacing;
				}
				if (nTopIndex != 0)
				{
					int num2 = 0;
					int num3 = 0;
					do
					{
						num2 = VisibleItems.Count - nTopIndex;
						num3 = (int)Math.Ceiling((float)num2 / (float)nItemsPerRow);
						if (num3 * num < base.ClientRectangle.Height - num)
						{
							nTopIndex--;
						}
					}
					while (nTopIndex != 0 && num3 * num < base.ClientRectangle.Height - num);
				}
			}
			Invalidate();
		}
		else
		{
			Rectangle clientRectangle2 = base.ClientRectangle;
			if (clientRectangle.Height != clientRectangle2.Height)
			{
				Rectangle rc = new Rectangle(GetScrollButtonLeft(), clientRectangle2.Top, 21, clientRectangle2.Height);
				Invalidate(rc);
			}
		}
	}

	[DocumentationExclude]
	protected void CalculateItemsPerRow()
	{
		int num = base.ClientRectangle.Width;
		if (!bIntegratedScrolling)
		{
			num -= 21;
		}
		int num2 = 2 * nImageSpacing + nItemXSpacing + 1;
		if (!ShowFlowViewItemText)
		{
			num2 += (bSmallImageView ? 16 : 32);
			nItemsPerRow = (int)Math.Floor((float)(Horizontal ? base.ClientRectangle.Height : (num + nItemXSpacing)) / (float)num2);
		}
		else
		{
			num2 = ((FlowViewItemTextLength >= defLargeImgSize.Width) ? (num2 + FlowViewItemTextLength) : (num2 + defLargeImgSize.Width));
			nItemsPerRow = (int)Math.Floor((float)(Horizontal ? base.ClientRectangle.Height : (num + nItemXSpacing)) / (float)num2);
		}
		if (nItemsPerRow <= 0)
		{
			nItemsPerRow = 1;
		}
	}

	[DocumentationExclude]
	protected int CalculateItemsPerPage()
	{
		int num = 0;
		if (!bFlowView)
		{
			Rectangle rchilight = Rectangle.Empty;
			for (int i = nTopIndex; i < VisibleItems.Count; i++)
			{
				SetNonFlowItemBounds(i, ref rchilight);
				if (rchilight.Bottom > (Horizontal ? base.ClientRectangle.Right : base.ClientRectangle.Bottom))
				{
					break;
				}
				num++;
				rchilight.Y = rchilight.Bottom;
			}
		}
		else
		{
			int num2 = 0;
			num2 = (bSmallImageView ? (nImageSpacing + 16 + nImageSpacing + 1) : (nImageSpacing + 32 + nImageSpacing + 1));
			num = base.ClientRectangle.Height / (num2 + 1) * nItemsPerRow;
		}
		return num;
	}

	public GroupViewItem PointToItem(int x, int y)
	{
		return PointToItem(new Point(x, y));
	}

	public GroupViewItem PointToItem(Point pt)
	{
		GroupViewItem result = null;
		if (VisibleItems != null && VisibleItems.Count > 0)
		{
			int num = ProcessMouseOver(pt);
			if (num >= 0 && num < VisibleItems.Count)
			{
				result = VisibleItems[num] as GroupViewItem;
			}
		}
		return result;
	}

	[DocumentationExclude]
	protected virtual void DrawAllItems(Graphics gph)
	{
		Rectangle empty = Rectangle.Empty;
		for (int i = nTopIndex; i < VisibleItems.Count; i++)
		{
			empty = ((GroupViewItem)VisibleItems[i]).Bounds;
			bool flag = false;
			ItemState itemState = ItemState.Normal;
			if (nHighlightedItem == i)
			{
				rcHighlightedItem = empty;
				itemState = ((!m_bSelecting) ? ItemState.Highlight : ItemState.Selecting);
				DrawItemHighlight(gph, nHighlightedItem, rcHighlightedItem, itemState);
				flag = true;
			}
			if (!flag && nSelectedItem == i)
			{
				rcSelectedItem = empty;
				DrawItemHighlight(gph, nSelectedItem, rcSelectedItem, ItemState.Selected);
				flag = true;
			}
			if (!flag)
			{
				DrawItem(gph, i, empty, itemState);
			}
			if (empty.Y >= base.ClientRectangle.Bottom)
			{
				break;
			}
		}
		if (!bFlowView)
		{
			DrawNonFlowScrollButtons(gph);
		}
		else
		{
			DrawFlowScrollButtons(gph);
		}
	}

	[DocumentationExclude]
	protected virtual void DrawItem(Graphics gph, int nindex, Rectangle rc, ItemState state)
	{
		if (rc.Width <= 0 || rc.Height <= 0 || nindex < 0 || nindex >= VisibleItems.Count)
		{
			return;
		}
		if (Horizontal)
		{
			int num = rc.Width;
			rc.Width = rc.Height;
			rc.Height = num;
			num = rc.X;
			rc.X = rc.Y;
			rc.Y = num;
		}
		GroupViewItem groupViewItem = (GroupViewItem)VisibleItems[nindex];
		Rectangle empty = Rectangle.Empty;
		bool isMirrored = GetIsMirrored();
		int num2 = 0;
		int num3 = 0;
		ImageList imageList;
		Size size;
		if (!bSmallImageView)
		{
			imageList = ilLarge;
			size = imageList?.ImageSize ?? defLargeImgSize;
			if (!bFlowView)
			{
				num2 = rc.X + (rc.Width - size.Width) / 2;
				if (!isMirrored)
				{
					num2++;
				}
				num3 = rc.Top + nImageSpacing;
			}
			else
			{
				num2 = rc.X + (rc.Width - size.Width) / 2;
				num3 = (ShowFlowViewItemText ? (rc.Top + nImageSpacing) : (rc.Top + (rc.Height - size.Height) / 2));
			}
		}
		else
		{
			imageList = ilSmall;
			size = imageList?.ImageSize ?? defSmallImgSize;
			if (!bFlowView)
			{
				int num4 = nItemXSpacing + 1;
				num2 = ((isMirrored && !Horizontal) ? (rc.Right - size.Width - num4) : (rc.X + num4));
				num3 = rc.Top + (rc.Height - size.Height) / 2;
			}
			else
			{
				num2 = rc.X + (rc.Width - size.Width) / 2;
				num3 = (ShowFlowViewItemText ? (rc.Top + nImageSpacing) : (rc.Top + (rc.Height - size.Height) / 2));
			}
		}
		empty = new Rectangle(num2, num3, size.Width, size.Height);
		Point pos = Point.Empty;
		if (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !bThemesEnabled)
		{
			if (nindex == nHighlightedItem && nindex == nSelectedItem)
			{
				pos = ptSelectingImageOffset;
			}
			else if (nindex == nSelectedItem)
			{
				pos = ptSelectedImageOffset;
			}
			else if (nindex == nHighlightedItem)
			{
				pos = ((nindex == nSelectedItem) ? ptSelectedHighlightImageOffset : ptHighlightImageOffset);
			}
			if (BackgroundImage == null && imageList != null && groupViewItem.ImageIndex >= 0 && groupViewItem.ImageIndex < imageList.Images.Count && bFlatLook)
			{
				DrawingUtils.DrawImageViaImageList(gph, imageList, groupViewItem.ImageIndex, empty);
			}
		}
		if (isMirrored && !Horizontal)
		{
			pos.X = -pos.X;
		}
		empty.Offset(pos);
		if (imageList != null && groupViewItem.ImageIndex >= 0 && groupViewItem.ImageIndex < imageList.Images.Count)
		{
			if (Horizontal)
			{
				int num5 = empty.Width;
				empty.Width = empty.Height;
				empty.Height = num5;
				num5 = empty.X;
				empty.X = empty.Y;
				empty.Y = num5;
			}
			if (groupViewItem.Enabled && base.Enabled)
			{
				DrawingUtils.DrawImageViaImageList(gph, imageList, groupViewItem.ImageIndex, empty);
			}
			else
			{
				ControlPaint.DrawImageDisabled(gph, imageList.Images[groupViewItem.ImageIndex], empty.X, empty.Y, SystemColors.Control);
			}
		}
		if (!bFlowView || ShowFlowViewItemText)
		{
			Rectangle adjustedTextBounds = GetAdjustedTextBounds(nindex, rc);
			pos = Point.Empty;
			switch (state)
			{
			case ItemState.Highlight:
				pos = ((nindex == nSelectedItem) ? ptSelectedHighlightTextOffset : ptHighlightTextOffset);
				break;
			case ItemState.Selecting:
				pos = ptSelectingTextOffset;
				break;
			case ItemState.Selected:
				pos = ptSelectedTextOffset;
				break;
			}
			if (isMirrored && !Horizontal)
			{
				pos.X = -pos.X;
			}
			adjustedTextBounds.Offset(pos);
			DrawText(gph, nindex, adjustedTextBounds, state);
		}
	}

	protected internal virtual void DrawItemHighlight(Graphics gph, int nindex, Rectangle rcitem, ItemState state)
	{
		if (rcitem.Width <= 0 || rcitem.Height <= 0 || nindex < 0 || nindex >= VisibleItems.Count)
		{
			return;
		}
		new PaintEventArgs(gph, Rectangle.Inflate(rcitem, 1, 1));
		if (bHighlightImage || bHighlightText)
		{
			bool isMirrored = GetIsMirrored();
			if (tdToolbar != null)
			{
				tdToolbar.DrawMirrored = isMirrored;
			}
			Rectangle adjustedHighlightBounds = GetAdjustedHighlightBounds(nindex, rcitem);
			Rectangle rectangle = new Rectangle(adjustedHighlightBounds.Left + 1, adjustedHighlightBounds.Top + 1, adjustedHighlightBounds.Width - 1, adjustedHighlightBounds.Height - 1);
			new PaintEventArgs(gph, rectangle);
			Pen pen = null;
			Pen pen2 = null;
			Color color = Color.Empty;
			if (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !bThemesEnabled)
			{
				if (bFlatLook)
				{
					if (brHighlightItem is SolidBrush)
					{
						Color color2 = ControlPaint.Dark((brHighlightItem as SolidBrush).Color);
						pen = new Pen(color2, 1f);
						pen2 = new Pen(color2, 1f);
					}
					else
					{
						pen = new Pen(SystemColors.Highlight, 1f);
						pen2 = new Pen(SystemColors.Highlight, 1f);
					}
				}
				else
				{
					pen = new Pen(SystemColors.ControlLightLight, 1f);
					pen2 = new Pen(SystemColors.ControlDarkDark, 1f);
				}
			}
			switch (state)
			{
			case ItemState.Highlight:
				if (nindex == nSelectedItem)
				{
					if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && bThemesEnabled)
					{
						tdToolbar.DrawThemeBackground(gph, 1, 6, rectangle);
						break;
					}
					gph.DrawLine(isMirrored ? pen : pen2, new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Bottom), new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Top));
					gph.DrawLine(pen2, new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Top), new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Top));
					gph.DrawLine(isMirrored ? pen2 : pen, new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Top), new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Bottom));
					gph.DrawLine(pen, new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Bottom), new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Bottom));
					color = SelectedHighlightItemColor;
				}
				else if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && bThemesEnabled)
				{
					tdToolbar.DrawThemeBackground(gph, 1, 2, rectangle);
				}
				else
				{
					gph.DrawLine(isMirrored ? pen2 : pen, new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Bottom), new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Top));
					gph.DrawLine(pen, new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Top), new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Top));
					gph.DrawLine(isMirrored ? pen : pen2, new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Top), new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Bottom));
					gph.DrawLine(pen2, new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Bottom), new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Bottom));
					color = HighlightItemColor;
				}
				break;
			case ItemState.Selected:
				if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && bThemesEnabled)
				{
					tdToolbar.DrawThemeBackground(gph, 1, 5, rectangle);
					break;
				}
				gph.DrawLine(isMirrored ? pen : pen2, new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Bottom), new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Top));
				gph.DrawLine(pen2, new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Top), new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Top));
				gph.DrawLine(isMirrored ? pen2 : pen, new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Top), new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Bottom));
				gph.DrawLine(pen, new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Bottom), new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Bottom));
				color = SelectedItemColor;
				break;
			case ItemState.Selecting:
				if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && bThemesEnabled)
				{
					tdToolbar.DrawThemeBackground(gph, 1, 3, rectangle);
					break;
				}
				gph.DrawLine(isMirrored ? pen : pen2, new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Bottom), new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Top));
				gph.DrawLine(pen2, new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Top), new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Top));
				gph.DrawLine(isMirrored ? pen2 : pen, new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Top), new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Bottom));
				gph.DrawLine(pen, new Point(adjustedHighlightBounds.Left, adjustedHighlightBounds.Bottom), new Point(adjustedHighlightBounds.Right, adjustedHighlightBounds.Bottom));
				color = SelectingItemColor;
				break;
			}
			if (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !bThemesEnabled)
			{
				pen.Dispose();
				pen2.Dispose();
			}
			if (!color.IsEmpty)
			{
				adjustedHighlightBounds.Offset(1, 1);
				adjustedHighlightBounds.Height--;
				adjustedHighlightBounds.Width--;
				gph.FillRectangle(new SolidBrush(color), adjustedHighlightBounds);
			}
		}
		DrawItem(gph, nindex, rcitem, state);
	}

	[DocumentationExclude]
	protected virtual void DrawText(Graphics gph, int nindex, Rectangle rc, ItemState state)
	{
		if (rc.Width <= 0 || rc.Height <= 0 || nindex < 0 || nindex >= VisibleItems.Count)
		{
			return;
		}
		GroupViewItem groupViewItem = (GroupViewItem)VisibleItems[nindex];
		if (nindex == nRenameItem)
		{
			return;
		}
		if (bTextWrap && bSmallImageView)
		{
			rc.Y += nImageSpacing;
			rc.Height -= nImageSpacing;
		}
		Matrix transform = gph.Transform;
		if (Horizontal)
		{
			int num = rc.X;
			rc.X = rc.Y;
			rc.Y = num;
			Matrix matrix = new Matrix();
			matrix.RotateAt(90f, new PointF(rc.X + rc.Height / 2, rc.Y + rc.Height / 2));
			gph.Transform = matrix;
		}
		if (groupViewItem.Enabled && base.Enabled)
		{
			Font font = FontUtil.CreateFont(Font, (nindex == nHighlightedItem && bTextUnderline) ? FontStyle.Underline : Font.Style);
			Brush brush = ((nindex == nHighlightedItem && nindex == nSelectedItem) ? ((state != ItemState.Selecting) ? new SolidBrush(clrSelectedHighlightText) : new SolidBrush(clrSelectingText)) : ((nindex == nSelectedItem) ? new SolidBrush(clrSelectedText) : ((nindex != nHighlightedItem) ? new SolidBrush(ForeColor) : new SolidBrush(clrHighlightText))));
			StringFormat stringFormat = new StringFormat(StringFormatFlags.LineLimit);
			if (ctrlToolTip.Visible && nindex == nHighlightedItem)
			{
				stringFormat.Alignment = StringAlignment.Near;
				stringFormat.FormatFlags |= StringFormatFlags.NoWrap;
				stringFormat.Trimming = StringTrimming.None;
				stringFormat.LineAlignment = StringAlignment.Center;
			}
			else
			{
				if (bSmallImageView)
				{
					stringFormat.Alignment = StringAlignment.Near;
					gph.MeasureString(groupViewItem.Text, font);
				}
				else
				{
					stringFormat.Alignment = StringAlignment.Center;
				}
				if (!bTextWrap)
				{
					stringFormat.Trimming = StringTrimming.EllipsisCharacter;
					stringFormat.FormatFlags |= StringFormatFlags.NoWrap;
					stringFormat.LineAlignment = StringAlignment.Center;
				}
				else
				{
					stringFormat.Trimming = StringTrimming.EllipsisWord;
				}
			}
			if (GetIsMirrored() && !Horizontal)
			{
				stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
			}
			gph.TextRenderingHint = TextRenderingHint.SystemDefault;
			gph.DrawString(groupViewItem.Text, font, brush, rc, stringFormat);
			font.Dispose();
			stringFormat.Dispose();
		}
		else
		{
			StringFormat stringFormat2 = new StringFormat(StringFormatFlags.LineLimit);
			stringFormat2.Trimming = StringTrimming.EllipsisWord;
			if (bSmallImageView)
			{
				stringFormat2.Alignment = StringAlignment.Near;
			}
			else
			{
				stringFormat2.Alignment = StringAlignment.Center;
			}
			if (!bTextWrap)
			{
				stringFormat2.FormatFlags |= StringFormatFlags.NoWrap;
				stringFormat2.LineAlignment = StringAlignment.Center;
			}
			if (GetIsMirrored() && !Horizontal)
			{
				stringFormat2.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
			}
			ControlPaint.DrawStringDisabled(gph, groupViewItem.Text, Font, SystemColors.Control, rc, stringFormat2);
			stringFormat2.Dispose();
		}
		gph.Transform = transform;
	}

	[DocumentationExclude]
	protected virtual void SetNonFlowItemBounds(int nindex, ref Rectangle rchilight)
	{
		bool isMirrored = GetIsMirrored();
		Rectangle clientRectangle = base.ClientRectangle;
		if (Horizontal)
		{
			int num = clientRectangle.Width;
			clientRectangle.Width = clientRectangle.Height;
			clientRectangle.Height = num;
		}
		GroupViewItem groupViewItem = VisibleItems[nindex] as GroupViewItem;
		if (!bSmallImageView)
		{
			rchilight.Y += nItemYSpacing;
			if (!bIntegratedScrolling)
			{
				int num2 = 1;
				rchilight.X = clientRectangle.Left + 21;
				rchilight.Width = clientRectangle.Width - (42 + num2);
			}
			else
			{
				rchilight.X = clientRectangle.Left + 1;
				rchilight.Width = clientRectangle.Width - 2;
			}
			SizeF sizeF = MeasureText(nindex, rchilight);
			if (ilLarge != null && groupViewItem.ImageIndex >= 0 && groupViewItem.ImageIndex < ilLarge.Images.Count)
			{
				rchilight.Height = nImageSpacing + 32 + nTextSpacing + (int)sizeF.Height + nImageSpacing;
			}
			else
			{
				rchilight.Height = nImageSpacing + (int)sizeF.Height + nImageSpacing;
			}
			return;
		}
		rchilight.Y += nItemYSpacing;
		if (!bIntegratedScrolling)
		{
			rchilight.Width = clientRectangle.Width - 23;
			int num3 = 1;
			if (isMirrored && !Horizontal)
			{
				rchilight.X = clientRectangle.Right - rchilight.Width - num3;
			}
			else
			{
				rchilight.X = clientRectangle.Left + num3;
			}
		}
		else
		{
			rchilight.X = clientRectangle.Left + 1;
			rchilight.Width = clientRectangle.Width - 2;
		}
		Rectangle empty = Rectangle.Empty;
		empty.Width = clientRectangle.Width - (2 + nItemXSpacing);
		if (!bIntegratedScrolling)
		{
			empty.Width -= 21;
		}
		int num4 = 1 + nItemXSpacing;
		if (isMirrored && !Horizontal)
		{
			empty.X = clientRectangle.Right - empty.Width - num4;
		}
		else
		{
			empty.X = clientRectangle.Left + num4;
		}
		if (ilSmall != null && groupViewItem.ImageIndex >= 0 && groupViewItem.ImageIndex < ilSmall.Images.Count)
		{
			empty.Width -= 16 + nTextSpacing;
			int num5 = (int)MeasureText(nindex, empty).Height;
			rchilight.Height = nImageSpacing + ((16 > num5) ? 16 : num5) + nImageSpacing;
		}
		else
		{
			int num6 = (int)MeasureText(nindex, empty).Height;
			rchilight.Height = nImageSpacing + num6 + nImageSpacing;
		}
	}

	[DocumentationExclude]
	protected virtual void SetFlowItemBounds(int nindex, ref Rectangle rchighlight)
	{
		if (nindex < 0 || nindex >= VisibleItems.Count)
		{
			return;
		}
		nindex -= nTopIndex;
		int num = (int)Math.Floor((float)nindex / (float)nItemsPerRow);
		int num2 = nindex - num * nItemsPerRow;
		int num3 = 2 * nImageSpacing + nItemXSpacing + 1;
		int num4 = 2 * nImageSpacing + nItemYSpacing + 1;
		if (Horizontal)
		{
			int num5 = num;
			num = num2;
			num2 = num5;
		}
		if (!ShowFlowViewItemText)
		{
			if (!bSmallImageView)
			{
				num3 += 32;
				num4 += 32;
			}
			else
			{
				num3 += 16;
				num4 += 16;
			}
		}
		else
		{
			int num6 = 0;
			if (!bSmallImageView)
			{
				num6 = 32;
				num4 += 32;
			}
			else
			{
				num6 = 16;
				num4 += 16;
			}
			num3 = ((FlowViewItemTextLength >= num6) ? (num3 + FlowViewItemTextLength) : (num3 + num6));
			num4 += ItemTextHeight + nTextSpacing;
		}
		rchighlight.Width = num3 - nItemXSpacing - 1;
		rchighlight.Height = num4 - nItemYSpacing - 1;
		int num7 = 0;
		num7 = ((!Horizontal) ? (1 + num2 * num3) : (1 + num2 * num4));
		if (GetIsMirrored())
		{
			rchighlight.X = base.ClientRectangle.Right - num7 - rchighlight.Width;
		}
		else
		{
			rchighlight.X = num7;
		}
		if (Horizontal)
		{
			rchighlight.Y = 1 + num * num3;
		}
		else
		{
			rchighlight.Y = 1 + num * num4;
		}
		if (Horizontal)
		{
			int num8 = rchighlight.X;
			rchighlight.X = rchighlight.Y;
			rchighlight.Y = num8;
		}
	}

	[DocumentationExclude]
	protected Rectangle GetAdjustedHighlightBounds(int nindex, Rectangle rchighlight)
	{
		if (!bFlowView || ShowFlowViewItemText || !HighlightImage)
		{
			if (Horizontal)
			{
				int num = rchighlight.Width;
				rchighlight.Width = rchighlight.Height;
				rchighlight.Height = num;
				num = rchighlight.X;
				rchighlight.X = rchighlight.Y;
				rchighlight.Y = num;
			}
			ImageList imageList = (bSmallImageView ? ilSmall : ilLarge);
			GroupViewItem groupViewItem = VisibleItems[nindex] as GroupViewItem;
			bool flag = (imageList != null && groupViewItem.ImageIndex >= 0 && groupViewItem.ImageIndex < imageList.Images.Count) || (FlowView && !ShowFlowViewItemText);
			bool flag2 = !FlowView || ShowFlowViewItemText;
			bool flag3 = GetIsMirrored() && !Horizontal;
			Size size = imageList?.ImageSize ?? (bSmallImageView ? defSmallImgSize : defLargeImgSize);
			if ((!bHighlightImage && !flag2) || (!bHighlightText && !flag) || (!bHighlightImage && !bHighlightText))
			{
				rchighlight = Rectangle.Empty;
			}
			else if (!HighlightText)
			{
				if (!bSmallImageView)
				{
					rchighlight.Y += nImageSpacing - 2;
					if (!bFlowView)
					{
						if (Horizontal)
						{
							rchighlight.X = (base.ClientRectangle.Height - size.Width) / 2 - 2;
						}
						else
						{
							rchighlight.X = (base.ClientRectangle.Width - size.Width) / 2 - 2;
						}
					}
					else if (ShowFlowViewItemText)
					{
						rchighlight.X += (rchighlight.Width - size.Width) / 2 - 2;
					}
					rchighlight.Width = size.Width + 4;
					rchighlight.Height = size.Height + 4;
				}
				else if (!bFlowView)
				{
					int num2 = size.Width + 4;
					int num3 = nItemXSpacing;
					if (flag3)
					{
						rchighlight.X = rchighlight.Right - num2 - num3;
					}
					else
					{
						rchighlight.X += num3;
					}
					rchighlight.Width = num2;
					rchighlight.Y += (rchighlight.Height - size.Height) / 2 - 2;
					rchighlight.Height = size.Height + 4;
				}
				else if (ShowFlowViewItemText)
				{
					rchighlight.Y += nImageSpacing - 2;
					if (!bFlowView)
					{
						rchighlight.X = (base.ClientRectangle.Width - size.Width) / 2 - 2;
					}
					else if (ShowFlowViewItemText)
					{
						rchighlight.X += (rchighlight.Width - size.Width) / 2 - 2;
					}
					rchighlight.Width = size.Width + 4;
					rchighlight.Height = size.Height + 4;
				}
			}
			else if (!HighlightImage && (flag || (FlowView && !ShowFlowViewItemText)))
			{
				if (!bSmallImageView)
				{
					int num4 = nImageSpacing + size.Width + 2;
					rchighlight.Y += num4;
					rchighlight.Height -= num4;
				}
				else if (!bFlowView)
				{
					int num5 = nItemXSpacing + size.Height + 4;
					rchighlight.Width -= num5;
					if (!flag3)
					{
						rchighlight.X += num5;
					}
				}
				else
				{
					int num6 = nImageSpacing + size.Width + 2;
					rchighlight.Y += num6;
					rchighlight.Height -= num6;
				}
			}
			if (Horizontal)
			{
				int num7 = rchighlight.Width;
				rchighlight.Width = rchighlight.Height;
				rchighlight.Height = num7;
				num7 = rchighlight.X;
				rchighlight.X = rchighlight.Y;
				rchighlight.Y = num7;
			}
		}
		return rchighlight;
	}

	[DocumentationExclude]
	protected virtual Rectangle GetAdjustedTextBounds(int nindex, Rectangle rcItem)
	{
		Rectangle result = rcItem;
		GroupViewItem groupViewItem = (GroupViewItem)VisibleItems[nindex];
		if (!bSmallImageView)
		{
			if (ilLarge != null && groupViewItem.ImageIndex >= 0 && groupViewItem.ImageIndex < ilLarge.Images.Count)
			{
				int num = nImageSpacing + defLargeImgSize.Width + nTextSpacing;
				result.Y += num;
				result.Height -= num;
			}
			else
			{
				result.X += 2;
				result.Width -= 4;
			}
		}
		else
		{
			bool isMirrored = GetIsMirrored();
			if (!bFlowView)
			{
				int num2 = ((ilSmall == null || groupViewItem.ImageIndex < 0 || groupViewItem.ImageIndex >= ilSmall.Images.Count) ? nItemXSpacing : (nItemXSpacing + defSmallImgSize.Width + nTextSpacing));
				if (!isMirrored || Horizontal)
				{
					result.X = num2;
				}
				result.Width -= num2;
				if (ctrlToolTip.Visible && nindex == nHighlightedItem)
				{
					result.X += (isMirrored ? 1 : (-1));
				}
			}
			else if (ilSmall != null && groupViewItem.ImageIndex >= 0 && groupViewItem.ImageIndex < ilSmall.Images.Count)
			{
				int num3 = nImageSpacing + defSmallImgSize.Width + nTextSpacing;
				result.Y += num3;
				result.Height -= num3;
			}
			else
			{
				result.X += 2;
				result.Width -= 4;
			}
		}
		return result;
	}

	[DocumentationExclude]
	protected SizeF MeasureText(int nindex, Rectangle rc)
	{
		if (VisibleItems.Count == 0 || nindex > VisibleItems.Count)
		{
			return SizeF.Empty;
		}
		GroupViewItem groupViewItem = (GroupViewItem)VisibleItems[nindex];
		if (groupViewItem.Text == "")
		{
			return new Size(0, 0);
		}
		Font font = ((nindex != nHighlightedItem || !bTextUnderline) ? FontUtil.CreateFont(Font, Font.Style) : FontUtil.CreateFont(Font, FontStyle.Underline));
		rc.Height = 0;
		Graphics graphics = CreateGraphics();
		graphics.TextRenderingHint = TextRenderingHint.AntiAlias;
		StringFormatFlags stringFormatFlags = StringFormatFlags.LineLimit;
		if (GetIsMirrored())
		{
			stringFormatFlags |= StringFormatFlags.DirectionRightToLeft;
		}
		StringFormat stringFormat = new StringFormat(stringFormatFlags);
		stringFormat.Alignment = StringAlignment.Near;
		if (!bTextWrap)
		{
			stringFormat.Trimming = StringTrimming.EllipsisCharacter;
			stringFormat.FormatFlags |= StringFormatFlags.NoWrap;
			stringFormat.LineAlignment = StringAlignment.Center;
		}
		else
		{
			stringFormat.Trimming = StringTrimming.EllipsisWord;
		}
		SizeF result = graphics.MeasureString(groupViewItem.Text, font, rc.Width, stringFormat);
		font.Dispose();
		graphics.Dispose();
		stringFormat.Dispose();
		return result;
	}

	[DocumentationExclude]
	protected virtual void DrawDragDropNonFlowInsert(int inspos, DragDropInsert insert, bool berase)
	{
		Point[] array = new Point[3];
		Point[] array2 = new Point[3];
		if (Horizontal)
		{
			ref Point reference = ref array[0];
			reference = new Point(inspos, base.ClientRectangle.Left + 10);
		}
		else
		{
			ref Point reference2 = ref array[0];
			reference2 = new Point(base.ClientRectangle.Left + 10, inspos);
		}
		int num = (Horizontal ? base.ClientRectangle.Bottom : base.ClientRectangle.Right);
		if (Horizontal)
		{
			ref Point reference3 = ref array2[0];
			reference3 = new Point(inspos, num - 10);
		}
		else
		{
			ref Point reference4 = ref array2[0];
			reference4 = new Point(num - 10, inspos);
		}
		switch (insert)
		{
		case DragDropInsert.Upper:
			if (Horizontal)
			{
				ref Point reference21 = ref array[1];
				reference21 = new Point(inspos + 10, base.ClientRectangle.Left + 5);
				ref Point reference22 = ref array[2];
				reference22 = new Point(inspos, base.ClientRectangle.Left + 5);
				ref Point reference23 = ref array2[1];
				reference23 = new Point(inspos + 10, num - 5);
				ref Point reference24 = ref array2[2];
				reference24 = new Point(inspos, num - 5);
			}
			else
			{
				ref Point reference25 = ref array[1];
				reference25 = new Point(base.ClientRectangle.Left + 5, inspos + 10);
				ref Point reference26 = ref array[2];
				reference26 = new Point(base.ClientRectangle.Left + 5, inspos);
				ref Point reference27 = ref array2[1];
				reference27 = new Point(num - 5, inspos + 10);
				ref Point reference28 = ref array2[2];
				reference28 = new Point(num - 5, inspos);
			}
			break;
		case DragDropInsert.Middle:
			if (Horizontal)
			{
				ref Point reference13 = ref array[1];
				reference13 = new Point(inspos + 5, base.ClientRectangle.Left + 5);
				ref Point reference14 = ref array[2];
				reference14 = new Point(inspos - 5, base.ClientRectangle.Left + 5);
				ref Point reference15 = ref array2[1];
				reference15 = new Point(inspos + 5, num - 5);
				ref Point reference16 = ref array2[2];
				reference16 = new Point(inspos - 5, num - 5);
			}
			else
			{
				ref Point reference17 = ref array[1];
				reference17 = new Point(base.ClientRectangle.Left + 5, inspos + 5);
				ref Point reference18 = ref array[2];
				reference18 = new Point(base.ClientRectangle.Left + 5, inspos - 5);
				ref Point reference19 = ref array2[1];
				reference19 = new Point(num - 5, inspos + 5);
				ref Point reference20 = ref array2[2];
				reference20 = new Point(num - 5, inspos - 5);
			}
			break;
		case DragDropInsert.Lower:
			if (Horizontal)
			{
				ref Point reference5 = ref array[1];
				reference5 = new Point(inspos + 1, base.ClientRectangle.Left + 5);
				ref Point reference6 = ref array[2];
				reference6 = new Point(inspos - 10, base.ClientRectangle.Left + 5);
				ref Point reference7 = ref array2[1];
				reference7 = new Point(inspos + 1, num - 5);
				ref Point reference8 = ref array2[2];
				reference8 = new Point(inspos - 10, num - 5);
			}
			else
			{
				ref Point reference9 = ref array[1];
				reference9 = new Point(base.ClientRectangle.Left + 5, inspos + 1);
				ref Point reference10 = ref array[2];
				reference10 = new Point(base.ClientRectangle.Left + 5, inspos - 10);
				ref Point reference11 = ref array2[1];
				reference11 = new Point(num - 5, inspos + 1);
				ref Point reference12 = ref array2[2];
				reference12 = new Point(num - 5, inspos - 10);
			}
			break;
		}
		Graphics graphics = CreateGraphics();
		Brush brush = null;
		if (berase)
		{
			if (!bIntegratedScrolling)
			{
				if (bUpScrlButton)
				{
					graphics.ExcludeClip(UpScrlBtnRect);
				}
				if (bDownScrlButton)
				{
					graphics.ExcludeClip(DownScrlBtnRect);
				}
			}
			brush = brBackGround;
			Rectangle rc = ((!Horizontal) ? new Rectangle(array[0].X, array[0].Y, array2[0].X - array[0].X, 1) : new Rectangle(array[0].X, array[0].Y, 1, array2[0].Y - array[0].Y + 1));
			Invalidate(rc);
			if (Horizontal)
			{
				Invalidate(new Rectangle(array[2], new Size(11, 5)));
				Invalidate(new Rectangle(new Point(array2[2].X, array2[0].Y), new Size(11, 5)));
			}
			else
			{
				Invalidate(new Rectangle(array[2], new Size(5, 11)));
				Invalidate(new Rectangle(new Point(array2[0].X, array2[2].Y), new Size(5, 11)));
			}
		}
		else
		{
			graphics.DrawLine(Pens.Black, array[0], array2[0]);
			brush = Brushes.Black;
		}
		if (!berase)
		{
			graphics.FillPolygon(brush, array);
			graphics.FillPolygon(brush, array2);
		}
		if (bSmallImageView && nHighlightedItem == 0 && berase && insert == DragDropInsert.Upper)
		{
			Rectangle rc2 = rcHighlightedItem;
			DrawItem(graphics, nHighlightedItem, rc2, ItemState.Highlight);
		}
		if (berase && bButtonView && VisibleItems.Count > nSelectedItem)
		{
			if (Horizontal)
			{
				if (inspos >= rcSelectedItem.Left - 5 && inspos <= rcSelectedItem.Left + 2)
				{
					Rectangle rc3 = new Rectangle(rcSelectedItem.Left, rcSelectedItem.Top - 1, 2, rcSelectedItem.Height);
					Invalidate(rc3);
				}
				if (inspos >= rcSelectedItem.Right - 2 && inspos <= rcSelectedItem.Right + 5)
				{
					Rectangle rc4 = new Rectangle(rcSelectedItem.Right, rcSelectedItem.Top - 1, 2, rcSelectedItem.Height);
					Invalidate(rc4);
				}
			}
			else
			{
				if (inspos >= rcSelectedItem.Top - 5 && inspos <= rcSelectedItem.Top + 2)
				{
					Invalidate(new Rectangle(rcSelectedItem.Left, rcSelectedItem.Top - 1, rcSelectedItem.Width, 2));
				}
				if (inspos >= rcSelectedItem.Bottom - 2 && inspos <= rcSelectedItem.Bottom + 5)
				{
					Invalidate(new Rectangle(rcSelectedItem.Left, rcSelectedItem.Bottom - 1, rcSelectedItem.Width, 2));
				}
			}
		}
		graphics.Dispose();
	}

	[DocumentationExclude]
	protected virtual void DrawDragDropFlowInsert(int posX, int posY, DragDropInsert insert, bool berase)
	{
		Point[] array = new Point[3];
		Point[] array2 = new Point[3];
		Rectangle rectangle = Rectangle.Empty;
		if (VisibleItems.Count > 0)
		{
			rectangle = (VisibleItems[0] as GroupViewItem).Bounds;
		}
		if (Horizontal)
		{
			ref Point reference = ref array[0];
			reference = new Point(posX + 5, posY);
		}
		else
		{
			ref Point reference2 = ref array[0];
			reference2 = new Point(posX, posY + 5);
		}
		if (Horizontal)
		{
			ref Point reference3 = ref array2[0];
			reference3 = new Point(posX + rectangle.Width - 5, posY);
		}
		else
		{
			ref Point reference4 = ref array2[0];
			reference4 = new Point(posX, posY + rectangle.Height - 6);
		}
		switch (insert)
		{
		case DragDropInsert.Upper:
			if (Horizontal)
			{
				ref Point reference21 = ref array[1];
				reference21 = new Point(posX, posY + 10);
				ref Point reference22 = ref array[2];
				reference22 = new Point(posX, posY);
				ref Point reference23 = ref array2[1];
				reference23 = new Point(posX + rectangle.Width, posY + 10);
				ref Point reference24 = ref array2[2];
				reference24 = new Point(posX + rectangle.Width, posY);
			}
			else
			{
				ref Point reference25 = ref array[1];
				reference25 = new Point(posX, posY);
				ref Point reference26 = ref array[2];
				reference26 = new Point(posX + 9, posY);
				ref Point reference27 = ref array2[1];
				reference27 = new Point(posX, posY + rectangle.Height);
				ref Point reference28 = ref array2[2];
				reference28 = new Point(posX + 9, posY + rectangle.Height);
			}
			break;
		case DragDropInsert.Middle:
			if (Horizontal)
			{
				ref Point reference13 = ref array[1];
				reference13 = new Point(posX, posY + 5);
				ref Point reference14 = ref array[2];
				reference14 = new Point(posX, posY - 5);
				ref Point reference15 = ref array2[1];
				reference15 = new Point(posX + rectangle.Width, posY + 5);
				ref Point reference16 = ref array2[2];
				reference16 = new Point(posX + rectangle.Width, posY - 5);
			}
			else
			{
				ref Point reference17 = ref array[1];
				reference17 = new Point(posX - 4, posY);
				ref Point reference18 = ref array[2];
				reference18 = new Point(posX + 5, posY);
				ref Point reference19 = ref array2[1];
				reference19 = new Point(posX - 5, posY + rectangle.Height);
				ref Point reference20 = ref array2[2];
				reference20 = new Point(posX + 5, posY + rectangle.Height);
			}
			break;
		case DragDropInsert.Lower:
			if (Horizontal)
			{
				ref Point reference5 = ref array[1];
				reference5 = new Point(posX, posY + 1);
				ref Point reference6 = ref array[2];
				reference6 = new Point(posX, posY - 10);
				ref Point reference7 = ref array2[1];
				reference7 = new Point(posX + rectangle.Width, posY + 1);
				ref Point reference8 = ref array2[2];
				reference8 = new Point(posX + rectangle.Width, posY - 10);
			}
			else
			{
				ref Point reference9 = ref array[1];
				reference9 = new Point(posX - 10, posY);
				ref Point reference10 = ref array[2];
				reference10 = new Point(posX + 1, posY);
				ref Point reference11 = ref array2[1];
				reference11 = new Point(posX - 10, posY + rectangle.Height);
				ref Point reference12 = ref array2[2];
				reference12 = new Point(posX + 1, posY + rectangle.Height);
			}
			break;
		}
		Graphics graphics = CreateGraphics();
		Brush brush = null;
		if (berase)
		{
			if (!bIntegratedScrolling)
			{
				if (bUpScrlButton)
				{
					graphics.ExcludeClip(UpScrlBtnRect);
				}
				if (bDownScrlButton)
				{
					graphics.ExcludeClip(DownScrlBtnRect);
				}
			}
			brush = brBackGround;
			Rectangle rc = ((!Horizontal) ? new Rectangle(array[0].X, array[0].Y, 1, array2[0].Y - array[0].Y + 1) : new Rectangle(array[0].X, array[0].Y, array2[0].X - array[0].X, 1));
			Invalidate(rc);
			if (Horizontal)
			{
				Invalidate(new Rectangle(array[2], new Size(5, 11)));
				Invalidate(new Rectangle(new Point(array2[0].X, array2[2].Y), new Size(5, 11)));
			}
			else
			{
				Invalidate(new Rectangle(array[1], new Size(11, 5)));
				Invalidate(new Rectangle(new Point(array2[1].X, array2[0].Y + 1), new Size(11, 5)));
			}
		}
		else
		{
			graphics.DrawLine(Pens.Black, array[0], array2[0]);
			brush = Brushes.Black;
		}
		if (!berase)
		{
			graphics.FillPolygon(brush, array);
			graphics.FillPolygon(brush, array2);
		}
		if (bSmallImageView && nHighlightedItem == 0 && berase && insert == DragDropInsert.Upper)
		{
			Rectangle rc2 = rcHighlightedItem;
			DrawItem(graphics, nHighlightedItem, rc2, ItemState.Highlight);
		}
		graphics.Dispose();
	}

	[DocumentationExclude]
	protected virtual void DrawNonFlowScrollButtons(Graphics gfxDC)
	{
		int[] array = new int[VisibleItems.Count];
		Rectangle empty = Rectangle.Empty;
		for (int i = 0; i < VisibleItems.Count; i++)
		{
			GroupViewItem groupViewItem = VisibleItems[i] as GroupViewItem;
			if (!bSmallImageView)
			{
				empty.Y += nItemYSpacing;
				if (!bIntegratedScrolling)
				{
					empty.X = base.ClientRectangle.Left + 21;
					empty.Width = base.ClientRectangle.Width - 43;
				}
				else
				{
					empty.X = base.ClientRectangle.Left + 1;
					empty.Width = base.ClientRectangle.Width - 2;
				}
				SizeF sizeF = MeasureText(i, empty);
				if (ilLarge != null && groupViewItem.ImageIndex >= 0 && groupViewItem.ImageIndex < ilLarge.Images.Count)
				{
					empty.Height = nImageSpacing + 32 + nTextSpacing + (int)sizeF.Height + nImageSpacing;
				}
				else
				{
					empty.Height = nImageSpacing + (int)sizeF.Height + nImageSpacing;
				}
			}
			else
			{
				empty.Y += nItemYSpacing;
				empty.X = base.ClientRectangle.Left + 1 + nItemXSpacing;
				empty.Width = base.ClientRectangle.Width - (2 + nItemXSpacing);
				if (!bIntegratedScrolling)
				{
					empty.Width -= 21;
				}
				if (ilSmall != null && groupViewItem.ImageIndex >= 0 && groupViewItem.ImageIndex < ilSmall.Images.Count)
				{
					empty.Width -= 16 + nTextSpacing;
					int num = (int)MeasureText(i, empty).Height;
					empty.Height = nImageSpacing + ((16 > num) ? 16 : num) + nImageSpacing;
				}
				else
				{
					int num2 = (int)MeasureText(i, empty).Height;
					empty.Height = nImageSpacing + num2 + nImageSpacing;
				}
			}
			array[i] = empty.Bottom;
			empty.Y = empty.Bottom;
		}
		if (VisibleItems.Count > 0 && array[VisibleItems.Count - 1] > (Horizontal ? base.ClientRectangle.Width : base.ClientRectangle.Height))
		{
			bool isMirrored = GetIsMirrored();
			if (nTopIndex > 0)
			{
				bUpScrlButton = true;
				if (!bIntegratedScrolling)
				{
					using CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(gfxDC, UpScrlBtnRect, isMirrored);
					Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
					Rectangle virtualBounds = cMirroredDrawer.VirtualBounds;
					if (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !bThemesEnabled)
					{
						ControlPaint.DrawScrollButton(state: (scrllBtnState != ScrollButtonState.UpScrollPressed) ? (bFlatLook ? ButtonState.Flat : ButtonState.Normal) : (bFlatLook ? (ButtonState.Flat | ButtonState.Pushed) : ButtonState.Pushed), graphics: virtualGfx, rectangle: virtualBounds, button: Horizontal ? ScrollButton.Left : ScrollButton.Up);
					}
					else
					{
						int stateID = ((scrllBtnState == ScrollButtonState.UpScrollPressed) ? ((!Horizontal) ? 3 : (isMirrored ? 15 : 11)) : ((scrllBtnState == ScrollButtonState.UpScrollHot) ? ((!Horizontal) ? 2 : (isMirrored ? 14 : 10)) : ((!Horizontal) ? 1 : (isMirrored ? 13 : 9))));
						tdScrollBar.DrawThemeBackground(virtualGfx, 1, stateID, virtualBounds);
					}
				}
				else if (base.Parent is IIntegratedScrollContainer)
				{
					IIntegratedScrollContainer integratedScrollContainer = base.Parent as IIntegratedScrollContainer;
					integratedScrollContainer.InvalidateUpScrollButton();
				}
			}
			else if (bUpScrlButton)
			{
				bUpScrlButton = false;
				if (scrllBtnState == ScrollButtonState.UpScrollHot || scrllBtnState == ScrollButtonState.UpScrollPressed)
				{
					scrllBtnState = ScrollButtonState.Normal;
				}
				if (tmrScrolling != null && tmrScrolling.Enabled)
				{
					tmrScrolling.Stop();
				}
			}
			bool flag = false;
			if ((nTopIndex <= 0) ? (array[VisibleItems.Count - 1] > (Horizontal ? base.ClientRectangle.Width : base.ClientRectangle.Height)) : (array[VisibleItems.Count - 1] - array[nTopIndex - 1] > (Horizontal ? base.ClientRectangle.Width : base.ClientRectangle.Height)))
			{
				bDownScrlButton = true;
				if (!bIntegratedScrolling)
				{
					using (CMirroredDrawer cMirroredDrawer2 = new CMirroredDrawer(gfxDC, DownScrlBtnRect, isMirrored))
					{
						Graphics virtualGfx2 = cMirroredDrawer2.VirtualGfx;
						Rectangle virtualBounds2 = cMirroredDrawer2.VirtualBounds;
						if (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !bThemesEnabled)
						{
							ControlPaint.DrawScrollButton(state: (scrllBtnState != ScrollButtonState.DownScrollPressed) ? (bFlatLook ? ButtonState.Flat : ButtonState.Normal) : (bFlatLook ? (ButtonState.Flat | ButtonState.Pushed) : ButtonState.Pushed), graphics: virtualGfx2, rectangle: virtualBounds2, button: (!Horizontal) ? ScrollButton.Down : ScrollButton.Right);
						}
						else
						{
							int stateID2 = ((scrllBtnState == ScrollButtonState.DownScrollPressed) ? ((!Horizontal) ? 7 : (isMirrored ? 11 : 15)) : ((scrllBtnState == ScrollButtonState.DownScrollHot) ? ((!Horizontal) ? 6 : (isMirrored ? 10 : 14)) : ((!Horizontal) ? 5 : (isMirrored ? 9 : 13))));
							tdScrollBar.DrawThemeBackground(virtualGfx2, 1, stateID2, virtualBounds2);
						}
						return;
					}
				}
				if (base.Parent is IIntegratedScrollContainer)
				{
					IIntegratedScrollContainer integratedScrollContainer2 = base.Parent as IIntegratedScrollContainer;
					integratedScrollContainer2.InvalidateDownScrollButton();
				}
			}
			else if (bDownScrlButton)
			{
				bDownScrlButton = false;
				if (scrllBtnState == ScrollButtonState.DownScrollHot || scrllBtnState == ScrollButtonState.DownScrollPressed)
				{
					scrllBtnState = ScrollButtonState.Normal;
				}
				if (tmrScrolling != null && tmrScrolling.Enabled)
				{
					tmrScrolling.Stop();
				}
			}
		}
		else if (bUpScrlButton || bDownScrlButton)
		{
			bUpScrlButton = false;
			bDownScrlButton = false;
			scrllBtnState = ScrollButtonState.Normal;
			if (nTopIndex > 0)
			{
				nTopIndex = 0;
				Invalidate();
			}
		}
	}

	[DocumentationExclude]
	protected virtual void DrawFlowScrollButtons(Graphics gph)
	{
		int num = (int)Math.Ceiling((float)VisibleItems.Count / (float)nItemsPerRow);
		int num2 = 0;
		bool isMirrored = GetIsMirrored();
		num2 = (bSmallImageView ? (nImageSpacing + 16 + nImageSpacing + 1) : (nImageSpacing + 32 + nImageSpacing + 1));
		if (ShowFlowViewItemText)
		{
			SizeF value = MeasureText(0, base.ClientRectangle);
			num2 += Size.Ceiling(value).Height + nTextSpacing;
		}
		int num3 = (num2 + nItemYSpacing) * num - nItemYSpacing;
		if (base.ClientRectangle.Height < num3)
		{
			if (nTopIndex > 0)
			{
				bUpScrlButton = true;
				if (!bIntegratedScrolling)
				{
					using CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(gph, UpScrlBtnRect, isMirrored);
					Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
					Rectangle virtualBounds = cMirroredDrawer.VirtualBounds;
					if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && bThemesEnabled)
					{
						int stateID = ((scrllBtnState == ScrollButtonState.UpScrollPressed) ? ((!Horizontal) ? 3 : (isMirrored ? 15 : 11)) : ((scrllBtnState == ScrollButtonState.UpScrollHot) ? ((!Horizontal) ? 2 : (isMirrored ? 14 : 10)) : ((!Horizontal) ? 1 : (isMirrored ? 13 : 9))));
						tdScrollBar.DrawThemeBackground(virtualGfx, 1, stateID, virtualBounds);
					}
					else if (scrllBtnState == ScrollButtonState.UpScrollPressed)
					{
						ButtonState buttonState = (bFlatLook ? (ButtonState.Flat | ButtonState.Pushed) : ButtonState.Pushed);
						ControlPaint.DrawScrollButton(virtualGfx, virtualBounds, Horizontal ? ScrollButton.Left : ScrollButton.Up, buttonState);
					}
					else
					{
						ButtonState buttonState2 = (bFlatLook ? ButtonState.Flat : ButtonState.Normal);
						ControlPaint.DrawScrollButton(virtualGfx, virtualBounds, Horizontal ? ScrollButton.Left : ScrollButton.Up, buttonState2);
					}
				}
				else if (base.Parent is IIntegratedScrollContainer)
				{
					IIntegratedScrollContainer integratedScrollContainer = base.Parent as IIntegratedScrollContainer;
					integratedScrollContainer.InvalidateUpScrollButton();
				}
			}
			else if (bUpScrlButton)
			{
				bUpScrlButton = false;
				if (scrllBtnState == ScrollButtonState.UpScrollHot || scrllBtnState == ScrollButtonState.UpScrollPressed)
				{
					scrllBtnState = ScrollButtonState.Normal;
				}
				if (tmrScrolling != null && tmrScrolling.Enabled)
				{
					tmrScrolling.Stop();
				}
			}
			num = (int)Math.Ceiling((float)(VisibleItems.Count - nTopIndex) / (float)nItemsPerRow);
			int num4 = (int)Math.Ceiling((float)VisibleItems.Count / (float)nItemsPerRow);
			int index = (num4 - 1) * nItemsPerRow;
			if ((VisibleItems[index] as GroupViewItem).Bounds.Bottom > base.ClientRectangle.Height)
			{
				num++;
			}
			if (base.ClientRectangle.Height < num2 * num + 1)
			{
				bDownScrlButton = true;
				if (!bIntegratedScrolling)
				{
					using (CMirroredDrawer cMirroredDrawer2 = new CMirroredDrawer(gph, DownScrlBtnRect, isMirrored))
					{
						Graphics virtualGfx2 = cMirroredDrawer2.VirtualGfx;
						Rectangle virtualBounds2 = cMirroredDrawer2.VirtualBounds;
						if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && bThemesEnabled)
						{
							int stateID2 = ((scrllBtnState == ScrollButtonState.DownScrollPressed) ? ((!Horizontal) ? 7 : (isMirrored ? 11 : 15)) : ((scrllBtnState == ScrollButtonState.DownScrollHot) ? ((!Horizontal) ? 6 : (isMirrored ? 10 : 14)) : ((!Horizontal) ? 5 : (isMirrored ? 9 : 13))));
							tdScrollBar.DrawThemeBackground(virtualGfx2, 1, stateID2, virtualBounds2);
						}
						else if (scrllBtnState == ScrollButtonState.DownScrollPressed)
						{
							ButtonState buttonState3 = (bFlatLook ? (ButtonState.Flat | ButtonState.Pushed) : ButtonState.Pushed);
							ControlPaint.DrawScrollButton(virtualGfx2, virtualBounds2, (!Horizontal) ? ScrollButton.Down : ScrollButton.Right, buttonState3);
						}
						else
						{
							ButtonState buttonState4 = (bFlatLook ? ButtonState.Flat : ButtonState.Normal);
							ControlPaint.DrawScrollButton(virtualGfx2, virtualBounds2, (!Horizontal) ? ScrollButton.Down : ScrollButton.Right, buttonState4);
						}
						return;
					}
				}
				if (base.Parent is IIntegratedScrollContainer)
				{
					IIntegratedScrollContainer integratedScrollContainer2 = base.Parent as IIntegratedScrollContainer;
					integratedScrollContainer2.InvalidateDownScrollButton();
				}
			}
			else if (bDownScrlButton)
			{
				bDownScrlButton = false;
				if (scrllBtnState == ScrollButtonState.DownScrollHot || scrllBtnState == ScrollButtonState.DownScrollPressed)
				{
					scrllBtnState = ScrollButtonState.Normal;
				}
				if (tmrScrolling != null && tmrScrolling.Enabled)
				{
					tmrScrolling.Stop();
				}
			}
		}
		else
		{
			bUpScrlButton = false;
			bDownScrlButton = false;
			scrllBtnState = ScrollButtonState.Normal;
			if (nTopIndex >= nItemsPerRow)
			{
				nTopIndex = 0;
				Invalidate();
			}
		}
	}

	[DocumentationExclude]
	protected virtual int ProcessMouseOver(Point pt)
	{
		int num = -1;
		if (pt.X != -1 && pt.Y != -1)
		{
			Rectangle empty = Rectangle.Empty;
			for (num = nTopIndex; num < VisibleItems.Count; num++)
			{
				GroupViewItem groupViewItem = (GroupViewItem)VisibleItems[num];
				empty = groupViewItem.Bounds;
				if (IsMouseOverItem(num, empty, pt))
				{
					if (ptDragStart != new Point(-1, -1))
					{
						return num;
					}
					if (num != nHighlightedItem && !suppressMouseHover)
					{
						if (nHighlightedItem >= 0)
						{
							if (ctrlToolTip.Visible)
							{
								ctrlToolTip.Visible = false;
							}
							nHighlightedItem = -1;
							Invalidate(Rectangle.Inflate(rcHighlightedItem, 1, 1));
							rcHighlightedItem = Rectangle.Empty;
						}
						if (!groupViewItem.Enabled)
						{
							if (ctrlToolTip.Visible)
							{
								ctrlToolTip.Visible = false;
							}
							return -1;
						}
						rcHighlightedItem = empty;
						nHighlightedItem = num;
						if (nHighlightedItem != -1)
						{
							OnGroupViewItemHighlighted(EventArgs.Empty);
						}
						if (!bFlowView && bHighlightText && !bTextWrap)
						{
							Graphics graphics = CreateGraphics();
							SizeF sizeF = graphics.MeasureString(groupViewItem.Text, Font);
							graphics.Dispose();
							int num2 = (Horizontal ? base.Height : base.Width);
							if (!bIntegratedScrolling)
							{
								num2 -= 21;
							}
							int num3 = 0;
							if (bSmallImageView)
							{
								num3 = ((groupViewItem.ImageIndex < 0) ? (nItemXSpacing + (int)Math.Ceiling(sizeF.Width) + 2) : (nItemXSpacing + 16 + nTextSpacing + (int)Math.Ceiling(sizeF.Width) + 2));
							}
							else
							{
								if (!bIntegratedScrolling)
								{
									num2 -= 21;
								}
								num3 = ((groupViewItem.ImageIndex >= 0) ? (num2 - 1) : ((int)Math.Ceiling(sizeF.Width) + 2));
							}
							int num4 = num3 - num2;
							if (num4 >= 0)
							{
								Point location = rcHighlightedItem.Location;
								if (GetIsMirrored() && !Horizontal)
								{
									int num5 = base.Width - base.ClientRectangle.Width;
									location.X -= num4 + num5 + 2;
								}
								Point point = PointToScreen(location);
								NativeMethods.MoveWindow(ctrlToolTip.Handle, point.X, point.Y, 0, 0, bRepaint: false);
								if (Horizontal)
								{
									ctrlToolTip.Size = new Size(rcHighlightedItem.Width + 1, num3 + 1);
								}
								else
								{
									ctrlToolTip.Size = new Size(num3 + 1, rcHighlightedItem.Height + 1);
								}
								NativeMethods.SetWindowPos(ctrlToolTip.Handle, (IntPtr)(-1), 0, 0, 0, 0, 83);
								ctrlToolTip.Visible = true;
								ctrlToolTip.Refresh();
							}
							else
							{
								Invalidate(Rectangle.Inflate(rcHighlightedItem, 1, 1));
								Update();
							}
						}
						else
						{
							Invalidate(Rectangle.Inflate(rcHighlightedItem, 1, 1));
							Update();
						}
					}
					return num;
				}
				if (!bFlowView)
				{
					empty.Y = empty.Bottom;
				}
			}
		}
		if (nHighlightedItem >= 0)
		{
			if (ctrlToolTip.Visible)
			{
				ctrlToolTip.Visible = false;
			}
			nHighlightedItem = -1;
			Invalidate(Rectangle.Inflate(rcHighlightedItem, 1, 1));
			rcHighlightedItem = Rectangle.Empty;
			if (!bButtonView && nSelectedItem != -1)
			{
				nSelectedItem = -1;
			}
		}
		return -1;
	}

	[DocumentationExclude]
	protected bool IsMouseOverItem(int nindex, Rectangle rchighlight, Point ptmouse)
	{
		if (bFlowView || !bClipSelectionBounds)
		{
			return rchighlight.Contains(ptmouse);
		}
		bool isMirrored = GetIsMirrored();
		GroupViewItem groupViewItem = VisibleItems[nindex] as GroupViewItem;
		bool flag = bHighlightImage;
		bool flag2 = bHighlightText;
		bHighlightImage = true;
		bHighlightText = false;
		Rectangle adjustedHighlightBounds = GetAdjustedHighlightBounds(nindex, rchighlight);
		bHighlightImage = flag;
		bHighlightText = flag2;
		Rectangle adjustedTextBounds = GetAdjustedTextBounds(nindex, rchighlight);
		SizeF sizeF = MeasureText(nindex, adjustedTextBounds);
		if (!bSmallImageView)
		{
			adjustedTextBounds.X = base.Width / 2 - (int)sizeF.Width / 2;
		}
		int num = adjustedTextBounds.Width - (int)sizeF.Width;
		adjustedTextBounds.Width = (int)sizeF.Width;
		if (bSmallImageView && GetIsMirrored() && num > 0)
		{
			adjustedTextBounds.X += num;
		}
		if (groupViewItem.ImageIndex >= 0)
		{
			if (!bSmallImageView)
			{
				Rectangle rectangle = new Rectangle(adjustedHighlightBounds.Left, adjustedHighlightBounds.Bottom, adjustedHighlightBounds.Width, adjustedTextBounds.Top - adjustedHighlightBounds.Bottom);
				adjustedHighlightBounds.Inflate(1, 0);
				rectangle.Inflate(1, 0);
				adjustedTextBounds.Inflate(1, 0);
				if (!adjustedHighlightBounds.Contains(ptmouse) && !rectangle.Contains(ptmouse))
				{
					return adjustedTextBounds.Contains(ptmouse);
				}
				return true;
			}
			Rectangle rectangle2 = new Rectangle(isMirrored ? adjustedTextBounds.Left : rchighlight.Left, rchighlight.Top, isMirrored ? (rchighlight.Right - adjustedTextBounds.Left) : (adjustedTextBounds.Right - rchighlight.Left), rchighlight.Height);
			rectangle2.Inflate(1, 0);
			return rectangle2.Contains(ptmouse);
		}
		adjustedTextBounds.Inflate(1, 0);
		return adjustedTextBounds.Contains(ptmouse);
	}

	[DocumentationExclude]
	protected virtual void ScrollButtonsMouseHandler(MouseActions action, Point pt)
	{
		if (action == MouseActions.Leave)
		{
			scrllBtnState = ScrollButtonState.Normal;
			if (bDownScrlButton)
			{
				Invalidate(DownScrlBtnRect);
				Update();
			}
			if (bUpScrlButton)
			{
				Invalidate(UpScrlBtnRect);
				Update();
			}
		}
		if (bDownScrlButton && DownScrlBtnRect.Contains(pt))
		{
			switch (action)
			{
			case MouseActions.LBtnDown:
				scrllBtnState = ScrollButtonState.DownScrollPressed;
				Invalidate(DownScrlBtnRect);
				Update();
				DoScroll(bscrllup: true, bsettimer: true);
				break;
			case MouseActions.Move:
				scrllBtnState = ScrollButtonState.DownScrollHot;
				Invalidate(DownScrlBtnRect);
				Update();
				break;
			default:
				scrllBtnState = ScrollButtonState.Normal;
				Invalidate(DownScrlBtnRect);
				Update();
				break;
			}
		}
		else if (bUpScrlButton && UpScrlBtnRect.Contains(pt))
		{
			switch (action)
			{
			case MouseActions.LBtnDown:
				scrllBtnState = ScrollButtonState.UpScrollPressed;
				Invalidate(UpScrlBtnRect);
				Update();
				DoScroll(bscrllup: false, bsettimer: true);
				break;
			case MouseActions.Move:
				scrllBtnState = ScrollButtonState.UpScrollHot;
				Invalidate(UpScrlBtnRect);
				Update();
				break;
			default:
				scrllBtnState = ScrollButtonState.Normal;
				Invalidate(UpScrlBtnRect);
				Update();
				break;
			}
		}
	}

	[DocumentationExclude]
	protected virtual void ProcessDragDrop(MouseActions action, Point pt)
	{
		Rectangle rchilight = Rectangle.Empty;
		bool isMirrored = GetIsMirrored();
		if (action == MouseActions.Leave)
		{
			if (bFlowView)
			{
				if (Horizontal)
				{
					if (!isMirrored)
					{
						DrawDragDropFlowInsert(rchilight.X, rchilight.Y + rchilight.Height + nItemYSpacing / 2, DragDropInsert.Upper, berase: true);
					}
					else
					{
						DrawDragDropFlowInsert(rchilight.X, rchilight.Y + rchilight.Height + nItemYSpacing / 2, DragDropInsert.Lower, berase: true);
					}
				}
				else if (!isMirrored)
				{
					DrawDragDropFlowInsert(rchilight.Right + nItemXSpacing / 2, rchilight.Y, DragDropInsert.Upper, berase: true);
				}
				else
				{
					DrawDragDropFlowInsert(rchilight.Left - nItemXSpacing / 2, rchilight.Y, DragDropInsert.Lower, berase: true);
				}
			}
			else if (Horizontal)
			{
				Rectangle rectangle = rchilight;
				rectangle.Y += base.ClientRectangle.Width - (rectangle.Y * 2 + rectangle.Height * 2 + nItemYSpacing);
				DrawDragDropNonFlowInsert(rectangle.Bottom + nItemYSpacing / 2, DragDropInsert.Lower, berase: true);
			}
			else
			{
				DrawDragDropNonFlowInsert(rchilight.Bottom + nItemYSpacing / 2, DragDropInsert.Upper, berase: true);
			}
			for (int i = nTopIndex; i < VisibleItems.Count; i++)
			{
				if (bFlowView)
				{
					SetFlowItemBounds(i, ref rchilight);
				}
				else
				{
					SetNonFlowItemBounds(i, ref rchilight);
				}
				if (i == VisibleItems.Count - 1)
				{
					break;
				}
				Rectangle rectangle2 = rchilight;
				if (bFlowView)
				{
					if (Horizontal)
					{
						if (!isMirrored)
						{
							DrawDragDropFlowInsert(rectangle2.Y, rectangle2.Right + nItemXSpacing / 2, DragDropInsert.Middle, berase: true);
						}
						else
						{
							DrawDragDropFlowInsert(rectangle2.Y, rectangle2.Right + nItemXSpacing / 2, DragDropInsert.Middle, berase: true);
						}
					}
					else if (!isMirrored)
					{
						DrawDragDropFlowInsert(rectangle2.Right + nItemXSpacing / 2, rectangle2.Y, DragDropInsert.Middle, berase: true);
					}
					else
					{
						DrawDragDropFlowInsert(rectangle2.Left - nItemXSpacing / 2, rectangle2.Y, DragDropInsert.Middle, berase: true);
					}
				}
				else
				{
					if (Horizontal && isMirrored)
					{
						rectangle2.Y += base.ClientRectangle.Width - (rectangle2.Y * 2 + rectangle2.Height * 2 + nItemYSpacing);
					}
					DrawDragDropNonFlowInsert(rectangle2.Bottom + nItemYSpacing / 2, DragDropInsert.Middle, berase: true);
					rchilight.Y = rchilight.Bottom;
				}
			}
			if (bFlowView)
			{
				if (Horizontal)
				{
					DrawDragDropFlowInsert(rchilight.Y, rchilight.Right + nItemYSpacing / 2, DragDropInsert.Lower, berase: true);
				}
				else if (!isMirrored)
				{
					DrawDragDropFlowInsert(rchilight.Right + nItemXSpacing / 2, rchilight.Y, DragDropInsert.Lower, berase: true);
				}
				else
				{
					DrawDragDropFlowInsert(rchilight.Left - nItemXSpacing / 2, rchilight.Y, DragDropInsert.Upper, berase: true);
				}
			}
			else if (Horizontal && isMirrored)
			{
				Rectangle rectangle3 = rchilight;
				rectangle3.Y += base.ClientRectangle.Width - (rectangle3.Y * 2 + rectangle3.Height * 2);
				DrawDragDropNonFlowInsert(rectangle3.Bottom - 7, DragDropInsert.Upper, berase: true);
			}
			else
			{
				DrawDragDropNonFlowInsert(rchilight.Bottom + 7, DragDropInsert.Lower, berase: true);
			}
			nDropItem = -1;
			nHighlightedItem = -1;
			return;
		}
		if (!base.ClientRectangle.Contains(pt))
		{
			nDropItem = -1;
			nHighlightedItem = -1;
			return;
		}
		if (Horizontal)
		{
			int num = pt.Y;
			pt.Y = pt.X;
			pt.X = num;
		}
		bool flag = false;
		if (bFlowView ? (Horizontal ? (pt.Y < base.ClientRectangle.Right && pt.Y > base.ClientRectangle.Right - nImageSpacing) : (isMirrored ? (pt.Y > base.ClientRectangle.Left && pt.Y < nImageSpacing) : (pt.Y > base.ClientRectangle.Top && pt.Y < base.ClientRectangle.Top + nImageSpacing))) : ((!Horizontal || !isMirrored) ? (pt.Y > rchilight.Bottom && pt.Y < nImageSpacing) : (pt.Y < base.ClientRectangle.Right && pt.Y > base.ClientRectangle.Right - nImageSpacing)))
		{
			if (nTopIndex > 0)
			{
				nDropItem = -1;
				DoScroll(bscrllup: false, bsettimer: false);
				return;
			}
			Rectangle rectangle4 = rchilight;
			nDropItem = nTopIndex;
			if (!bFlowView)
			{
				if (Horizontal && isMirrored && !bFlowView)
				{
					rectangle4.Y += base.ClientRectangle.Width - (rectangle4.Y * 2 + rectangle4.Height * 2 + nItemYSpacing);
				}
				DrawDragDropNonFlowInsert(rectangle4.Bottom + nItemYSpacing / 2, (isMirrored && Horizontal) ? DragDropInsert.Lower : DragDropInsert.Upper, berase: false);
			}
			return;
		}
		if (bDownScrlButton)
		{
			bool flag2 = false;
			if ((!Horizontal) ? (pt.Y > base.ClientRectangle.Bottom - 25) : ((!isMirrored) ? (pt.Y > base.ClientRectangle.Right - 25) : (pt.Y < base.ClientRectangle.Left + 25)))
			{
				nDropItem = -1;
				DoScroll(bscrllup: true, bsettimer: false);
				return;
			}
		}
		for (int j = nTopIndex; j < VisibleItems.Count; j++)
		{
			if (bFlowView)
			{
				SetFlowItemBounds(j, ref rchilight);
			}
			else
			{
				SetNonFlowItemBounds(j, ref rchilight);
			}
			if (j == VisibleItems.Count - 1)
			{
				break;
			}
			Rectangle rectangle5 = rchilight;
			if (bFlowView)
			{
				int num2 = cllnGroupViewItems.Count - VisibleItems.Count;
				nDropItem = num2 + j + 1;
				if (!isMirrored)
				{
					if (pt.Y > rectangle5.Y && pt.Y < rectangle5.Bottom && pt.X > rectangle5.Right && pt.X < rectangle5.Right + nItemXSpacing + nImageSpacing)
					{
						if (Horizontal)
						{
							DrawDragDropFlowInsert(rectangle5.Y, rectangle5.Right + nItemXSpacing / 2, DragDropInsert.Middle, berase: false);
						}
						else
						{
							DrawDragDropFlowInsert(rectangle5.Right + nItemXSpacing / 2, rectangle5.Y, DragDropInsert.Middle, berase: false);
						}
						return;
					}
				}
				else if (Horizontal)
				{
					if (pt.X > rectangle5.Right && pt.X < rectangle5.Right + nItemXSpacing && pt.Y > rectangle5.Top && pt.Y < rectangle5.Bottom)
					{
						DrawDragDropFlowInsert(rectangle5.Top, rectangle5.Right + nItemXSpacing / 2, DragDropInsert.Middle, berase: false);
						return;
					}
				}
				else if (pt.Y > rectangle5.Y && pt.Y < rectangle5.Bottom && pt.X < rectangle5.Left && pt.X > rectangle5.Left - nItemXSpacing)
				{
					DrawDragDropFlowInsert(rectangle5.Left - nItemXSpacing / 2, rectangle5.Y, DragDropInsert.Middle, berase: false);
					return;
				}
			}
			else
			{
				if (Horizontal && isMirrored)
				{
					rectangle5.Y += base.ClientRectangle.Width - (rectangle5.Y * 2 + rectangle5.Height * 2 + nItemYSpacing);
				}
				if (pt.Y > rectangle5.Bottom && pt.Y < rectangle5.Bottom + nItemYSpacing + nImageSpacing)
				{
					int num3 = cllnGroupViewItems.Count - VisibleItems.Count;
					nDropItem = num3 + j + 1;
					DrawDragDropNonFlowInsert(rectangle5.Bottom + nItemYSpacing / 2, DragDropInsert.Middle, berase: false);
					return;
				}
				rchilight.Y = rchilight.Bottom;
			}
		}
		if (Horizontal && isMirrored && !bFlowView)
		{
			rchilight.Y += base.ClientRectangle.Width - (rchilight.Y * 2 + rchilight.Height * 2);
		}
		bool flag3 = false;
		if (bFlowView ? (Horizontal ? ((!isMirrored) ? ((pt.X > rchilight.X && pt.X < base.ClientRectangle.Bottom) || (pt.Y > rchilight.Bottom && pt.Y < base.ClientRectangle.Width)) : ((pt.X > rchilight.Right && pt.X < base.ClientRectangle.Bottom) || (pt.Y < rchilight.Top && pt.Y > base.ClientRectangle.Left))) : ((!isMirrored) ? ((pt.Y > rchilight.Bottom && pt.Y < base.ClientRectangle.Bottom) || (pt.X > rchilight.Right && pt.X < base.ClientRectangle.Right && pt.Y > rchilight.Y)) : ((pt.Y > rchilight.Bottom && pt.Y < base.ClientRectangle.Bottom) || (pt.X < rchilight.Left && pt.X > base.ClientRectangle.Left && pt.Y > rchilight.Y)))) : ((!Horizontal) ? (pt.Y > rchilight.Bottom && pt.Y < base.ClientRectangle.Bottom) : ((!isMirrored) ? (pt.Y > rchilight.Bottom && pt.Y < base.ClientRectangle.Right) : (pt.Y > base.ClientRectangle.Left && pt.Y < rchilight.Bottom))))
		{
			nDropItem = cllnGroupViewItems.Count;
			if (bFlowView)
			{
				if (Horizontal)
				{
					DrawDragDropFlowInsert(rchilight.Y, rchilight.X + rchilight.Height + nItemYSpacing / 2, DragDropInsert.Lower, berase: false);
				}
				else if (VisibleItems.Count > 0)
				{
					if (!isMirrored)
					{
						DrawDragDropFlowInsert(rchilight.Right + nItemXSpacing / 2, rchilight.Y, DragDropInsert.Lower, berase: false);
					}
					else
					{
						DrawDragDropFlowInsert(rchilight.Left - nItemXSpacing / 2, rchilight.Y, DragDropInsert.Upper, berase: false);
					}
				}
			}
			else if (Horizontal && isMirrored)
			{
				DrawDragDropNonFlowInsert(rchilight.Bottom - 7, DragDropInsert.Upper, berase: false);
			}
			else
			{
				DrawDragDropNonFlowInsert(rchilight.Bottom + 7, DragDropInsert.Lower, berase: false);
			}
		}
		else
		{
			if (Horizontal)
			{
				int num4 = pt.Y;
				pt.Y = pt.X;
				pt.X = num4;
			}
			if (nDropItem != -1)
			{
				ProcessDragDrop(MouseActions.Leave, pt);
				nDropItem = -1;
			}
		}
	}

	[DocumentationExclude]
	protected void ScrollTimerEventHandler(object obj, EventArgs args)
	{
		Point pt = PointToClient(Cursor.Position);
		if (UpScrlBtnRect.Contains(pt))
		{
			DoScroll(bscrllup: false, bsettimer: true);
		}
		else
		{
			DoScroll(bscrllup: true, bsettimer: true);
		}
	}

	[DocumentationExclude]
	protected virtual void DoScroll(bool bscrllup, bool bsettimer)
	{
		if (!bFlowView)
		{
			if (bscrllup)
			{
				nTopIndex = ((nTopIndex == VisibleItems.Count) ? nTopIndex : (nTopIndex + 1));
			}
			else
			{
				nTopIndex = ((nTopIndex != 0) ? (nTopIndex - 1) : 0);
			}
		}
		else
		{
			int num = (int)Math.Ceiling((float)VisibleItems.Count / (float)nItemsPerRow);
			int num2 = (num - 1) * nItemsPerRow;
			if (bscrllup)
			{
				nTopIndex = ((nTopIndex == num2) ? nTopIndex : (nTopIndex + nItemsPerRow));
			}
			else
			{
				nTopIndex = ((nTopIndex != 0) ? (nTopIndex - nItemsPerRow) : 0);
			}
			if (nTopIndex < 0)
			{
				nTopIndex = 0;
			}
			if (nTopIndex > num2)
			{
				nTopIndex = num2;
			}
		}
		if (bsettimer && !tmrScrolling.Enabled)
		{
			tmrScrolling.Start();
		}
		if (nHighlightedItem >= 0)
		{
			nHighlightedItem = -1;
			rcHighlightedItem = Rectangle.Empty;
		}
		Invalidate();
		Update();
		if (bIntegratedScrolling && base.Parent is IIntegratedScrollContainer)
		{
			IIntegratedScrollContainer integratedScrollContainer = base.Parent as IIntegratedScrollContainer;
			integratedScrollContainer.InvalidateUpScrollButton();
			integratedScrollContainer.InvalidateDownScrollButton();
		}
	}

	[DocumentationExclude]
	protected internal Rectangle GetGroupViewItemBounds(int nindex, string type)
	{
		Rectangle rchighlight = Rectangle.Empty;
		Rectangle empty = Rectangle.Empty;
		for (int i = nTopIndex; i < VisibleItems.Count; i++)
		{
			if (!bFlowView)
			{
				SetNonFlowItemBounds(i, ref rchighlight);
				empty = GetAdjustedTextBounds(i, rchighlight);
				SizeF sizeF = MeasureText(i, empty);
				GroupViewItem groupViewItem = VisibleItems[i] as GroupViewItem;
				if (!bSmallImageView)
				{
					empty.X += (empty.Width - (int)sizeF.Width) / 2;
				}
				else if (ilSmall != null && groupViewItem.ImageIndex >= 0 && groupViewItem.ImageIndex < ilSmall.Images.Count)
				{
					empty.Height = ((16 > Font.Height) ? 16 : Font.Height);
				}
				else
				{
					empty.Height = Font.Height;
				}
				empty.Width = (int)sizeF.Width;
				if (i == nindex)
				{
					switch (type)
					{
					case "Icon":
						return rchighlight;
					case "Text":
						return empty;
					case "FullItem":
						if (groupViewItem.ImageIndex == -1)
						{
							return empty;
						}
						if (groupViewItem.Text == string.Empty)
						{
							return rchighlight;
						}
						if (bSmallImageView)
						{
							return new Rectangle(rchighlight.Left, rchighlight.Top, empty.Right - rchighlight.Left, empty.Height);
						}
						return new Rectangle(empty.Left, rchighlight.Top, empty.Width, empty.Bottom - rchighlight.Top);
					default:
						return Rectangle.Empty;
					}
				}
				if (bSmallImageView)
				{
					if (ilSmall != null && groupViewItem.ImageIndex >= 0 && groupViewItem.ImageIndex < ilSmall.Images.Count)
					{
						empty.Height = nImageSpacing + ((16 > Font.Height) ? 16 : Font.Height) + nImageSpacing;
					}
					else
					{
						empty.Height = nImageSpacing + Font.Height + nImageSpacing;
					}
				}
				rchighlight = empty;
				rchighlight.Y = rchighlight.Bottom;
				continue;
			}
			SetFlowItemBounds(i, ref rchighlight);
			if (i == nindex)
			{
				if (type == "Icon" || type == "FullItem")
				{
					return rchighlight;
				}
				return Rectangle.Empty;
			}
		}
		return Rectangle.Empty;
	}

	void IGroupViewDesignerInvoke.HandleMouseDown(MouseButtons button, Point pt)
	{
		HandleMouseDown(button, pt);
	}

	void IGroupViewDesignerInvoke.HandleMouseUp(MouseButtons button, Point pt)
	{
		HandleMouseUp(button, pt);
	}

	protected override void Dispose(bool bdispose)
	{
		if (bdispose && ctrlToolTip != null)
		{
			if (!base.DesignMode)
			{
				cllnGroupViewItems.Clear();
			}
			ctrlToolTip.Dispose();
			if (ctrlTextBox != null)
			{
				ctrlTextBox.Dispose();
				ctrlToolTip = null;
			}
			if (tdToolbar != null)
			{
				tdToolbar.Dispose();
				tdToolbar = null;
			}
			if (tdScrollBar != null)
			{
				tdScrollBar.Dispose();
				tdScrollBar = null;
			}
			if (m_toolTip != null)
			{
				m_toolTip.Dispose();
				m_toolTip = null;
			}
		}
		base.Dispose(bdispose);
	}

	[DocumentationExclude]
	protected internal GroupViewItemAccessibleObject CreateGroupViewItemAccessibilityInstance(int index)
	{
		return new GroupViewItemAccessibleObject(GroupViewItems[index]);
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		return new GroupViewControlAccessibleObject(this);
	}

	[DocumentationExclude]
	public int GetItemUnderPoint(Point pt)
	{
		int num = -1;
		if (pt.X != -1 && pt.Y != -1)
		{
			Rectangle rchighlight = Rectangle.Empty;
			for (num = nTopIndex; num < VisibleItems.Count; num++)
			{
				_ = (GroupViewItem)VisibleItems[num];
				if (!bFlowView)
				{
					SetNonFlowItemBounds(num, ref rchighlight);
				}
				else
				{
					SetFlowItemBounds(num, ref rchighlight);
				}
				if (IsMouseOverItem(num, rchighlight, pt))
				{
					return num;
				}
				if (!bFlowView)
				{
					rchighlight.Y = rchighlight.Bottom;
				}
			}
		}
		return -1;
	}

	[DocumentationExclude]
	protected internal void FireGroupViewItemSelectedEvent(int nindex)
	{
		if (nindex >= nTopIndex && nindex <= CalculateItemsPerPage())
		{
			OnGroupViewItemSelected(EventArgs.Empty);
		}
	}

	[DocumentationExclude]
	protected internal bool GetIsMirrored()
	{
		return RightToLeft.Yes == RightToLeft;
	}

	private void cllnGroupViewItems_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		RecalculateVisibleItem();
	}

	private void RecalculateVisibleItem()
	{
		VisibleItems.Clear();
		if (cllnGroupViewItems == null || cllnGroupViewItems.Count <= 0)
		{
			return;
		}
		foreach (GroupViewItem cllnGroupViewItem in cllnGroupViewItems)
		{
			if (cllnGroupViewItem.Visible)
			{
				VisibleItems.Add(cllnGroupViewItem);
			}
		}
	}
}
