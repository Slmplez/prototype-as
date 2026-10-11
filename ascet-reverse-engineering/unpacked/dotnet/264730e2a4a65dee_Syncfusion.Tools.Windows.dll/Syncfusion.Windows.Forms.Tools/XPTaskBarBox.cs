using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(XPTaskBarBoxDesigner), typeof(IDesigner))]
[DefaultEvent("ItemClick")]
[ToolboxItem(false)]
public class XPTaskBarBox : Control, IProvideLayoutInformation
{
	public enum HeaderDirectionFormat
	{
		LeftToRight,
		RightToLeft
	}

	public delegate bool FocusEventHandler();

	private const string DEF_VISIBLE_PROPERTY_NAME = "Visible";

	private const int DEF_TRIANGLE_WIDTH = 2;

	private const int DEF_SEPARATOR_WIDTH = 2;

	private const int DEF_SEPARATOR_INFLATE = 3;

	private const int DEF_OFFSET = 1;

	private const int DEF_INVALID_INSERTION_INDEX = int.MaxValue;

	private bool m_bIsItemClicked;

	private bool m_bShowToolTip;

	private ToolTip m_toolTip;

	private bool m_bToggleByButton;

	private bool m_bWrapHeaderText;

	private bool m_bPropagateBackColorToItems;

	private Color hotTrackColor = Color.Empty;

	private Color headerBackColor;

	private Color itemBackColor;

	private XPTaskBarItemsCollection items;

	private ImageList imageList;

	private ImageList headerImageList;

	private int headerImageIndex = -1;

	private bool showCollapseButton = true;

	private XPTaskBarItem hitItemOnMouseDown;

	private Font headerFont;

	private Color headerForeColor = SystemColors.ControlText;

	private bool m_bDrawFocusRect = true;

	private XPTaskBarItem focusedItem;

	private XPTaskBarItem selectedItem;

	public static bool SimulateThemedPaintingForNonDefaultThemes = true;

	public static int AnimationDelayInMilliSeconds = 50;

	public static int AnimationPositions = 10;

	private int animationDelay = 50;

	private int animationPositionsCount = 10;

	private int padx = 5;

	private int pady = 5;

	private readonly int EXP_BUTTON_SIZE = 16;

	private int headerHeight;

	private int extendedHeaderImageHeight;

	private int preferredHeight;

	private ExpanderButton button = new ExpanderButton();

	internal bool allowBoundsChange;

	private bool needLayout;

	private AnimationHelper animationHelper;

	private WeakReference m_weakThemedDrawing;

	private int preferredChildPanelHeight = 30;

	private bool focusTextBounds;

	private StringAlignment m_HeaderTextAlign;

	private HeaderDirectionFormat m_HeaderDirection;

	private ItemAction m_enItemAction = ItemAction.None;

	private XPTaskBarItem m_animatedItem;

	private bool m_bUseAdditionalAnimation;

	private Point m_mouseDownPos = Point.Empty;

	private XPTaskBarItem m_dragItem;

	private bool m_bIsDragging;

	private Rectangle m_separatorBounds = Rectangle.Empty;

	private Point m_mousePos = Point.Empty;

	private int m_insertionIndex = int.MaxValue;

	private bool headerHit;

	private XPTaskBarItem hitItem;

	private bool m_bHitTaskBoxArea;

	[DefaultValue(false)]
	[Description("Indicates whether tooltip is shown.")]
	[Browsable(true)]
	public bool ShowToolTip
	{
		get
		{
			return m_bShowToolTip;
		}
		set
		{
			if (value != m_bShowToolTip)
			{
				m_bShowToolTip = value;
				if (!m_bShowToolTip)
				{
					m_toolTip.Active = false;
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or Sets, should XpTaskBarBox expand or collapse only when the Collapse Button is clicked, or allways when header is clicked.")]
	[DefaultValue(false)]
	public bool ToggleByButton
	{
		get
		{
			return m_bToggleByButton;
		}
		set
		{
			if (value != m_bToggleByButton)
			{
				m_bToggleByButton = value;
			}
		}
	}

	Size IProvideLayoutInformation.PreferredSize => base.Size;

	Size IProvideLayoutInformation.MinimumSize => base.Size;

	[SRCategory("CategoryAppearance")]
	[Description("Specifies the state of the task bar box.")]
	[DefaultValue(false)]
	public bool Collapsed
	{
		get
		{
			return button.ExpandedState;
		}
		set
		{
			if (value)
			{
				CollapseContent(useAnimation: false);
			}
			else
			{
				ExpandContent(useAnimation: false);
			}
		}
	}

	[DefaultValue(HeaderDirectionFormat.LeftToRight)]
	[Description("Gets or sets header direction.")]
	[Category("Appearance")]
	public HeaderDirectionFormat HeaderDirection
	{
		get
		{
			return m_HeaderDirection;
		}
		set
		{
			if (m_HeaderDirection != value)
			{
				m_HeaderDirection = value;
				UpdateExpanderButtonPosition();
				Invalidate();
			}
		}
	}

	protected ExpanderButton ExpanderButton => button;

	[SRCategory("CategoryAppearance")]
	[Description("The horizontal padding provided in pixels between contents of the header and the header's left and right borders.")]
	[DefaultValue(5)]
	public int PADX
	{
		get
		{
			return padx;
		}
		set
		{
			if (padx != value)
			{
				padx = value;
				OnLayoutNeed(new EventArgs());
				Invalidate();
			}
		}
	}

	[SRCategory("CategoryAppearance")]
	[Description("The vertical padding provided in pixels between contents of the header and the header's top and bottom borders.")]
	public int PADY
	{
		get
		{
			return pady;
		}
		set
		{
			if (pady != value)
			{
				pady = value;
				OnLayoutNeed(new EventArgs());
				Invalidate();
			}
		}
	}

	private bool IsOffice2007Style
	{
		get
		{
			if (Parent != null && !Parent.ThemesEnabled)
			{
				return Parent.Style == XPTaskBarStyle.Office2007;
			}
			return false;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool NeedLayout => needLayout;

	[DefaultValue(typeof(Color), "Empty")]
	[Description("Indicates the color to be set for hottracking")]
	public Color HotTrackColor
	{
		get
		{
			return hotTrackColor;
		}
		set
		{
			if (hotTrackColor != value)
			{
				hotTrackColor = value;
			}
		}
	}

	[Description("Indicates whether text is clipped.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool ClipHeaderText
	{
		get
		{
			return m_bWrapHeaderText;
		}
		set
		{
			m_bWrapHeaderText = value;
			Invalidate();
		}
	}

	[Browsable(false)]
	[DefaultValue(false)]
	public new bool Focused
	{
		get
		{
			return base.ContainsFocus;
		}
		set
		{
			if (value != base.ContainsFocus)
			{
				if (value)
				{
					Focus();
				}
				Invalidate();
			}
		}
	}

	protected override Size DefaultSize => new Size(200, 100);

	[Localizable(true)]
	[Description("Specifies the XPTaskBarItems collection.")]
	[SRCategory("CategoryData")]
	[MergableProperty(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public XPTaskBarItemsCollection Items => items;

	[Category("Appearance")]
	[DefaultValue(true)]
	[Description("Specifies whether to show or hide the expand-collapse button in the header.")]
	public bool ShowCollapseButton
	{
		get
		{
			return showCollapseButton;
		}
		set
		{
			if (showCollapseButton != value)
			{
				showCollapseButton = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets header text alignment.")]
	[DefaultValue(StringAlignment.Near)]
	public StringAlignment HeaderTextAlign
	{
		get
		{
			return m_HeaderTextAlign;
		}
		set
		{
			if (m_HeaderTextAlign != value)
			{
				m_HeaderTextAlign = value;
				Invalidate(GetHeaderRect());
			}
		}
	}

	protected virtual Panel ChildPanel
	{
		get
		{
			if (base.Controls.Count > 0)
			{
				return base.Controls[0] as Panel;
			}
			return null;
		}
	}

	[Description("Specifies the preferred height required to draw the child Panel.")]
	[DefaultValue(30)]
	[Category("Appearance")]
	public int PreferredChildPanelHeight
	{
		get
		{
			return preferredChildPanelHeight;
		}
		set
		{
			if (preferredChildPanelHeight != value)
			{
				preferredChildPanelHeight = value;
				Invalidate();
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Browsable(false)]
	public override Image BackgroundImage
	{
		get
		{
			return base.BackgroundImage;
		}
		set
		{
			base.BackgroundImage = value;
		}
	}

	[Description("Gets or Set the background color with which the header will be drawn.")]
	[SRCategory("CategoryAppearance")]
	public Color HeaderBackColor
	{
		get
		{
			Color result = BackColor;
			if (!ThemesEnabled && Parent != null && Parent.Style == XPTaskBarStyle.Office2007)
			{
				result = Parent.Office2007ColorTable.XPTaskBarBoxBackColor;
			}
			else if (headerBackColor != Color.Empty)
			{
				result = headerBackColor;
			}
			return result;
		}
		set
		{
			headerBackColor = value;
			Invalidate();
		}
	}

	[SRCategory("CategoryAppearance")]
	[Description("Gets or Sets the forecolor of the header text.")]
	public Color HeaderForeColor
	{
		get
		{
			return headerForeColor;
		}
		set
		{
			if (headerForeColor != value)
			{
				headerForeColor = value;
				Invalidate();
			}
		}
	}

	[Description("Gets or Set the text font with which the header text will be drawn.")]
	[SRCategory("CategoryAppearance")]
	public Font HeaderFont
	{
		get
		{
			if (headerFont != null)
			{
				return headerFont;
			}
			return FontUtil.CreateFont(Font, FontStyle.Bold);
		}
		set
		{
			if (headerFont != value)
			{
				headerFont = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(true)]
	[Description("Specifies if control should take focus on header or item click.")]
	[Category("Behavior")]
	[Obsolete]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual bool FocusOnClick
	{
		get
		{
			return DrawFocusRect;
		}
		set
		{
			DrawFocusRect = value;
		}
	}

	[Description("Specifies if control should take focus on header or item click.")]
	[DefaultValue(true)]
	[Category("Behavior")]
	public virtual bool DrawFocusRect
	{
		get
		{
			return m_bDrawFocusRect;
		}
		set
		{
			m_bDrawFocusRect = value;
		}
	}

	[SRCategory("CategoryAppearance")]
	[Description("Gets or Sets the Color with which the Items portion of the XPTaskBarBox will be drawn.")]
	public Color ItemBackColor
	{
		get
		{
			Color result = BackColor;
			if (!ThemesEnabled && Parent != null && Parent.Style == XPTaskBarStyle.Office2007)
			{
				result = Color.White;
			}
			else if (itemBackColor != Color.Empty)
			{
				result = itemBackColor;
			}
			return result;
		}
		set
		{
			itemBackColor = value;
			Invalidate();
		}
	}

	[Description("Specifies the ImageList containing the images in this XPTaskBarBox")]
	[DefaultValue(null)]
	[SRCategory("CategoryAppearance")]
	public ImageList ImageList
	{
		get
		{
			return imageList;
		}
		set
		{
			if (this.imageList != value)
			{
				ImageList imageList = this.imageList;
				this.imageList = value;
				Invalidate();
				if (imageList != null)
				{
					imageList.RecreateHandle -= ImageList_Recreated;
				}
				if (this.imageList != null)
				{
					this.imageList.RecreateHandle += ImageList_Recreated;
				}
				this.imageList = value;
			}
		}
	}

	[Description("Specifies the ImageList that will be used to draw the header image.")]
	[SRCategory("CategoryAppearance")]
	public ImageList HeaderImageList
	{
		get
		{
			if (headerImageList != null)
			{
				return headerImageList;
			}
			if (Parent != null)
			{
				return Parent.HeaderImageList;
			}
			return null;
		}
		set
		{
			if (headerImageList != value)
			{
				if (headerImageList != null)
				{
					headerImageList.RecreateHandle -= ImageList_Recreated;
				}
				headerImageList = value;
				if (headerImageList != null)
				{
					headerImageList.RecreateHandle += ImageList_Recreated;
				}
				Invalidate();
			}
		}
	}

	[Description("Specifies the index into the HeaderImageList")]
	[TypeConverter(typeof(ImageIndexConverter))]
	[Editor(typeof(ImageIndexEditor), typeof(UITypeEditor))]
	[SRCategory("CategoryAppearance")]
	public int HeaderImageIndex
	{
		get
		{
			return headerImageIndex;
		}
		set
		{
			if (headerImageIndex != value)
			{
				headerImageIndex = value;
				Invalidate();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	protected virtual int PreferredHeight
	{
		get
		{
			return preferredHeight;
		}
		set
		{
			if (preferredHeight != value)
			{
				preferredHeight = value;
				OnLayoutNeed(new EventArgs());
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("The parent of this control.")]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Browsable(false)]
	[SRCategory("CategoryBehavior")]
	public new XPTaskBar Parent
	{
		get
		{
			return base.Parent as XPTaskBar;
		}
		set
		{
			base.Parent = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Appearance")]
	[Description("Reflects the corresponding property in the XPTaskBar parent.")]
	public bool ThemesEnabled
	{
		get
		{
			bool flag = false;
			if (Parent != null)
			{
				flag = Parent.ThemesEnabled;
			}
			if (flag)
			{
				return XPThemes.IsAppThemed;
			}
			return false;
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether focus should be set only to the text bounds.")]
	public bool FocusTextBounds
	{
		get
		{
			return focusTextBounds;
		}
		set
		{
			if (focusTextBounds != value)
			{
				focusTextBounds = value;
			}
		}
	}

	[Description("Specifies the animation delay during expand/collpase.")]
	[Category("Behavior")]
	public int AnimationDelay
	{
		get
		{
			return animationDelay;
		}
		set
		{
			animationDelay = value;
		}
	}

	[Category("Behavior")]
	[Description("Specifies the number of animation positions during expand/collapse.")]
	public int AnimationPositionsCount
	{
		get
		{
			return animationPositionsCount;
		}
		set
		{
			if (value <= 0)
			{
				throw new ArgumentException("Value should be greater than zero");
			}
			animationPositionsCount = value;
		}
	}

	[DefaultValue(typeof(bool), "false")]
	[Category("Behavior")]
	[Description("Indicate whether the items added or removed it's drawing with animation.")]
	public bool UseAdditionalAnimation
	{
		get
		{
			return m_bUseAdditionalAnimation;
		}
		set
		{
			if (value != m_bUseAdditionalAnimation)
			{
				m_bUseAdditionalAnimation = value;
			}
		}
	}

	[Description("Specifies whether background color is propagated to items when it changes.")]
	[DefaultValue(false)]
	[Category("Apperance")]
	public bool PropagateBackColorToItems
	{
		get
		{
			return m_bPropagateBackColorToItems;
		}
		set
		{
			m_bPropagateBackColorToItems = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual bool HeaderHit
	{
		get
		{
			return headerHit;
		}
		set
		{
			if (headerHit != value)
			{
				headerHit = value;
				if (headerHit)
				{
					Cursor = Cursors.Hand;
				}
				else
				{
					Cursor = Cursors.Default;
				}
				Invalidate(new Rectangle(base.ClientRectangle.Left, base.ClientRectangle.Top, base.ClientRectangle.Width, headerHeight));
			}
		}
	}

	protected virtual XPTaskBarItem HitItem
	{
		get
		{
			return hitItem;
		}
		set
		{
			if (hitItem != value)
			{
				if (hitItem != null)
				{
					Invalidate(hitItem.Bounds);
				}
				hitItem = value;
				if (hitItem != null && hitItem.Enabled)
				{
					Invalidate(hitItem.Bounds);
					Cursor = Cursors.Hand;
				}
				else
				{
					Cursor = Cursors.Default;
				}
			}
		}
	}

	[Browsable(false)]
	public bool HitTaskBoxArea
	{
		get
		{
			return m_bHitTaskBoxArea;
		}
		set
		{
			if (m_bHitTaskBoxArea != value)
			{
				m_bHitTaskBoxArea = value;
			}
		}
	}

	private XPTaskBarItem FocusedItem
	{
		get
		{
			return focusedItem;
		}
		set
		{
			if (focusedItem != value)
			{
				if (focusedItem != null)
				{
					Invalidate();
				}
				else if (Focused)
				{
					Invalidate(GetHeaderRect());
				}
				focusedItem = value;
				selectedItem = value;
				if (focusedItem != null)
				{
					Invalidate();
				}
				else if (Focused)
				{
					Invalidate(GetHeaderRect());
				}
			}
		}
	}

	private ThemedXPTaskBarBoxDrawing ThemedDrawing
	{
		get
		{
			ThemedXPTaskBarBoxDrawing themedXPTaskBarBoxDrawing = null;
			if (XPThemes.IsThemedOS)
			{
				if (m_weakThemedDrawing == null)
				{
					m_weakThemedDrawing = new WeakReference(CreateThemedDrawing());
				}
				if (m_weakThemedDrawing.IsAlive)
				{
					themedXPTaskBarBoxDrawing = (ThemedXPTaskBarBoxDrawing)m_weakThemedDrawing.Target;
				}
				else
				{
					themedXPTaskBarBoxDrawing = CreateThemedDrawing();
					m_weakThemedDrawing.Target = themedXPTaskBarBoxDrawing;
				}
			}
			return themedXPTaskBarBoxDrawing;
		}
	}

	[SRCategory("CategoryAppearance")]
	[Description("Occurs when the header portion of XPTaskBarBox gets drawn.")]
	public event ProvideBrushEventHandler ProvideHeaderBackgroundBrush;

	[Description("Occurs after the box has been collapsed or expanded.")]
	[SRCategory("CategoryAction")]
	public event EventHandler CollapsedStateChanged;

	[SRCategory("CategoryAction")]
	[Description("Occurs when the box has being collapsed or expanded.")]
	public event CancelEventHandler CollapsedStateChanging;

	[SRCategory("CategoryAppearance")]
	[Description("Occurs when the content portion of the XPTaskBarBox gets drawn")]
	public event ProvideBrushEventHandler ProvideItemsBackgroundBrush;

	[SRCategory("CategoryAction")]
	[Description("Occurs when the user clicks on an item")]
	public event XPTaskBarItemClickHandler ItemClick;

	[Description("Occurs before the box expands or collapses.")]
	public event EventHandler BeforeAnimation;

	[Description("Occurs after the box expands or collapses.")]
	public event EventHandler AfterAnimation;

	public event EventHandler LayoutNeed;

	private void InitializeToolTip()
	{
		m_toolTip = new ToolTip();
		m_toolTip.ShowAlways = true;
		m_toolTip.ReshowDelay = 0;
		m_toolTip.InitialDelay = 0;
		m_toolTip.Active = false;
	}

	protected XPTaskBarItem GetItemAtPoint(Point pt)
	{
		if (items.Count == 0)
		{
			return null;
		}
		Point pt2 = PointToClient(Control.MousePosition);
		XPTaskBarItem xPTaskBarItem = null;
		int i = 0;
		for (int count = items.Count; i < count; i++)
		{
			xPTaskBarItem = items[i];
			if (xPTaskBarItem.Bounds.Contains(pt2))
			{
				return xPTaskBarItem;
			}
		}
		return null;
	}

	public XPTaskBarBox()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(XPTaskBarBox));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		animationDelay = AnimationDelayInMilliSeconds;
		animationPositionsCount = AnimationPositions;
		SetStyle(ControlStyles.ResizeRedraw | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		SetStyle(ControlStyles.Selectable, value: true);
		SetStyle(ControlStyles.SupportsTransparentBackColor, value: true);
		button.ExpandedState = false;
		items = new XPTaskBarItemsCollection();
		items.CollectionChanged += TaskMenuItems_CollectionChanged;
		items.ItemPropertyChanged += TaskMenuItems_PropertyChanged;
		animationHelper = new AnimationHelper();
		animationHelper.AnimationPositionChanged += AnimationListener;
		animationHelper.AnimationDone += AnimationDone;
		InitializeToolTip();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (imageList != null)
			{
				if (imageList != null)
				{
					imageList.RecreateHandle -= ImageList_Recreated;
				}
				imageList = null;
			}
			animationHelper.AnimationPositionChanged -= AnimationListener;
			animationHelper.AnimationDone -= AnimationDone;
			animationHelper = null;
			items.CollectionChanged -= TaskMenuItems_CollectionChanged;
			items.ItemPropertyChanged -= TaskMenuItems_PropertyChanged;
			items.Clear();
			items = null;
			button = null;
			Panel childPanel = ChildPanel;
			if (childPanel != null)
			{
				DetachChildPanel(childPanel);
				childPanel.Dispose();
			}
			if (this.CollapsedStateChanged != null)
			{
				Delegate[] invocationList = this.CollapsedStateChanged.GetInvocationList();
				Delegate[] array = invocationList;
				foreach (Delegate obj in array)
				{
					CollapsedStateChanged -= (EventHandler)obj;
				}
			}
			Parent = null;
			if (ThemedDrawing != null)
			{
				ThemedDrawing.Dispose();
			}
		}
		base.Dispose(disposing);
	}

	private void AnimationListener(object sender, EventArgs e)
	{
		OnLayoutNeed(EventArgs.Empty);
	}

	private void OnAnimation(object sender, EventArgs e)
	{
		CancelEventArgs e2 = new CancelEventArgs();
		OnCollapsedStateChanging(e2);
		if (!e2.Cancel)
		{
			OnBeforeAnimation(EventArgs.Empty);
		}
	}

	private void AnimationDone(object sender, EventArgs e)
	{
		OnAfterAnimation(EventArgs.Empty);
		OnCollapsedStateChanged(EventArgs.Empty);
	}

	private bool ShouldSerializePADY()
	{
		int num = 5;
		if (IsOffice2007Style)
		{
			num = 2;
		}
		return PADY != num;
	}

	internal void ResetPADY()
	{
		int num = 5;
		if (IsOffice2007Style)
		{
			num = 2;
		}
		pady = num;
		Invalidate();
	}

	public new virtual void Layout(Graphics g)
	{
		UpdatePreferredHeight(g);
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		OnLayout(new LayoutEventArgs(this, "Bounds"));
		if (Parent != null)
		{
			Parent.PerformLayout();
		}
		base.OnHandleCreated(e);
	}

	private void TaskMenuItems_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "Visible" && UseAdditionalAnimation)
		{
			if ((bool)e.NewValue)
			{
				m_animatedItem = sender as XPTaskBarItem;
				if (m_animatedItem != null)
				{
					m_enItemAction = ItemAction.Show;
					animationHelper.StartAnimation(AnimationPositionsCount, directionExpand: true, AnimationDelay);
				}
			}
			else
			{
				m_animatedItem = sender as XPTaskBarItem;
				if (m_animatedItem != null)
				{
					m_enItemAction = ItemAction.Hide;
					animationHelper.StartAnimation(AnimationPositionsCount, directionExpand: false, AnimationDelay);
				}
			}
		}
		if (e.PropertyChangeEffect == PropertyChangeEffect.NeedRepaint)
		{
			Invalidate();
		}
	}

	private void TaskMenuItems_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		if (e.Action == CollectionChangeAction.Add)
		{
			((XPTaskBarItem)e.Element).Parent = this;
			if (UseAdditionalAnimation && base.IsHandleCreated)
			{
				m_animatedItem = e.Element as XPTaskBarItem;
				if (m_animatedItem != null)
				{
					m_enItemAction = ItemAction.Show;
					animationHelper.StartAnimation(AnimationPositionsCount, directionExpand: true, AnimationDelay);
				}
			}
		}
		else if (e.Action == CollectionChangeAction.Remove)
		{
			((XPTaskBarItem)e.Element).Parent = null;
			if (UseAdditionalAnimation)
			{
				m_animatedItem = e.Element as XPTaskBarItem;
				if (m_animatedItem != null)
				{
					m_enItemAction = ItemAction.Hide;
					animationHelper.StartAnimation(AnimationPositionsCount, directionExpand: false, AnimationDelay);
				}
			}
		}
		OnLayoutNeed(new EventArgs());
	}

	protected virtual void AttachChildPanel(Panel childPanel)
	{
		if (childPanel != null)
		{
			childPanel.Dock = DockStyle.None;
			childPanel.ParentChanged += ChildPanel_ParentChanged;
			childPanel.SizeChanged += ChildPanel_SizeChanged;
			childPanel.Disposed += ChildPanel_Disposing;
			childPanel.LocationChanged += ChildPanel_LocationChanged;
			childPanel.DockChanged += ChildPanel_DockChanged;
			childPanel.ControlAdded += childPanel_ControlAdded;
			childPanel.MouseHover += childPanel_MouseHover;
			childPanel.MouseMove += childPanel_MouseMove;
			childPanel.MouseEnter += childPanel_MouseEnter;
			OnLayoutNeed(new EventArgs());
			Invalidate();
		}
	}

	private void childPanel_MouseEnter(object sender, EventArgs e)
	{
		if (FindForm() == null && !Focused && !base.ContainsFocus)
		{
			Focus();
		}
	}

	private void childPanel_MouseMove(object sender, MouseEventArgs e)
	{
		if (FindForm() == null && !Focused && !base.ContainsFocus)
		{
			Focus();
		}
	}

	private void childPanel_MouseHover(object sender, EventArgs e)
	{
		if (FindForm() == null && !Focused && !base.ContainsFocus)
		{
			Focus();
		}
	}

	private void childPanel_ControlAdded(object sender, ControlEventArgs e)
	{
		e.Control.Click += Control_Click;
		e.Control.MouseDown += Control_MouseDown;
		e.Control.MouseHover += Control_MouseHover;
	}

	private void Control_MouseDown(object sender, MouseEventArgs e)
	{
		if (FindForm() == null && !Focused && !base.ContainsFocus)
		{
			Focus();
		}
	}

	private void Control_MouseHover(object sender, EventArgs e)
	{
		if (FindForm() == null && !Focused && !base.ContainsFocus)
		{
			Focus();
		}
	}

	private void Control_Click(object sender, EventArgs e)
	{
		Control control = sender as Control;
		if (control is Button && control.Parent is Panel && FindForm() == null)
		{
			Focus();
		}
	}

	protected virtual void DetachChildPanel(Panel childPanel)
	{
		if (childPanel != null)
		{
			childPanel.ParentChanged -= ChildPanel_ParentChanged;
			childPanel.SizeChanged -= ChildPanel_SizeChanged;
			childPanel.Disposed -= ChildPanel_Disposing;
			childPanel.LocationChanged -= ChildPanel_LocationChanged;
			childPanel.DockChanged -= ChildPanel_DockChanged;
		}
	}

	private void ChildPanel_ParentChanged(object sender, EventArgs e)
	{
		DetachChildPanel(sender as Panel);
	}

	private void ChildPanel_SizeChanged(object sender, EventArgs e)
	{
		OnLayoutNeed(new EventArgs());
	}

	private void ChildPanel_LocationChanged(object sender, EventArgs e)
	{
		OnLayoutNeed(new EventArgs());
	}

	private void ChildPanel_Disposing(object sender, EventArgs e)
	{
		DetachChildPanel(sender as Panel);
	}

	private void ChildPanel_DockChanged(object sender, EventArgs e)
	{
		if (ChildPanel.Dock != DockStyle.None)
		{
			if (base.DesignMode)
			{
				MessageBox.Show("The DockStyle cannot be set for a Panel in the XPTaskBarBox. It will now be reset to DockStyle.None.", "XPTaskBarBox warning:");
			}
			ChildPanel.Dock = DockStyle.None;
		}
	}

	protected virtual void UpdateChildPanelBounds(int top)
	{
		Panel childPanel = ChildPanel;
		if (childPanel != null)
		{
			childPanel.SuspendLayout();
			SuspendLayout();
			childPanel.Location = new Point(2, top + 2);
			childPanel.Width = base.Width - 4;
			childPanel.Height = preferredChildPanelHeight;
			ResumeLayout(performLayout: false);
			childPanel.ResumeLayout(performLayout: true);
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		if (e.Control is Panel)
		{
			DetachChildPanel(e.Control as Panel);
		}
		base.OnControlRemoved(e);
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		if (!(e.Control is Panel))
		{
			if (base.DesignMode)
			{
				MessageBox.Show("Only Panels can be parented by the XPTaskBarBox.");
			}
			e.Control.Parent = null;
		}
		else if (base.Controls.Count > 1)
		{
			if (base.DesignMode)
			{
				MessageBox.Show("More than one Panel Control cannot be parented by the XPTaskBarBox.");
			}
			e.Control.Parent = null;
		}
		else
		{
			AttachChildPanel(e.Control as Panel);
			base.OnControlAdded(e);
		}
	}

	protected virtual void OnProvideHeaderBackGroundBrush(ProvideBrushEventArgs args)
	{
		if (this.ProvideHeaderBackgroundBrush != null)
		{
			this.ProvideHeaderBackgroundBrush(this, args);
		}
	}

	protected virtual void OnProvideItemsBackGroundBrush(ProvideBrushEventArgs args)
	{
		if (this.ProvideItemsBackgroundBrush != null)
		{
			this.ProvideItemsBackgroundBrush(this, args);
		}
	}

	protected virtual void OnCollapsedStateChanged(EventArgs args)
	{
		if (Collapsed)
		{
			FocusedItem = null;
			if (ChildPanel != null)
			{
				ChildPanel.Visible = false;
			}
		}
		else
		{
			Panel panel = Parent;
			if (panel.AutoScroll)
			{
				panel.ScrollControlIntoView(this);
			}
		}
		if (this.CollapsedStateChanged != null)
		{
			this.CollapsedStateChanged(this, args);
		}
	}

	protected virtual void OnCollapsedStateChanging(CancelEventArgs args)
	{
		if (this.CollapsedStateChanging != null)
		{
			this.CollapsedStateChanging(this, args);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected internal virtual void ResetHeaderBackColor()
	{
		if (!ThemesEnabled && Parent != null && Parent.Style == XPTaskBarStyle.Office2007)
		{
			HeaderBackColor = Parent.Office2007ColorTable.XPTaskBarBoxBackColor;
		}
		else
		{
			HeaderBackColor = Color.Empty;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual bool ShouldSerializeHeaderBackColor()
	{
		bool flag = false;
		if (!ThemesEnabled && Parent != null && Parent.Style == XPTaskBarStyle.Office2007)
		{
			return HeaderBackColor != Parent.Office2007ColorTable.XPTaskBarBoxBackColor;
		}
		return HeaderBackColor != Color.Empty;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual void ResetHeaderForeColor()
	{
		HeaderForeColor = SystemColors.ControlText;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual bool ShouldSerializeHeaderForeColor()
	{
		return headerForeColor != SystemColors.ControlText;
	}

	public bool ShouldSerializeHeaderFont()
	{
		return headerFont != null;
	}

	public void ResetHeaderFont()
	{
		HeaderFont = null;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected internal virtual void ResetItemBackColor()
	{
		if (!ThemesEnabled && Parent != null && Parent.Style == XPTaskBarStyle.Office2007)
		{
			ItemBackColor = Color.White;
		}
		else if (m_bPropagateBackColorToItems)
		{
			ItemBackColor = BackColor;
		}
		else
		{
			ItemBackColor = Color.Empty;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual bool ShouldSerializeItemBackColor()
	{
		bool flag = false;
		if (!ThemesEnabled && Parent != null && Parent.Style == XPTaskBarStyle.Office2007)
		{
			return ItemBackColor != Color.White;
		}
		if (m_bPropagateBackColorToItems)
		{
			return ItemBackColor != BackColor;
		}
		return ItemBackColor != Color.Empty;
	}

	[DocumentationExclude]
	public bool ShouldSerializeHeaderImageList()
	{
		if (headerImageList != null)
		{
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	public void ResetHeaderImageList()
	{
		HeaderImageList = null;
	}

	private void ImageList_Recreated(object sender, EventArgs e)
	{
		Invalidate();
	}

	public int GetPreferredHeight()
	{
		return preferredHeight;
	}

	protected Size GetHeaderButtonSize()
	{
		if (!ShowCollapseButton)
		{
			return new Size(0, 0);
		}
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled && ((!XPThemes.IsOliveGreenThemeOn && !XPThemes.IsSilverThemeOn) || !SimulateThemedPaintingForNonDefaultThemes))
		{
			return ThemedDrawing.GetHeaderButtonSize();
		}
		return new Size(EXP_BUTTON_SIZE, EXP_BUTTON_SIZE);
	}

	[DocumentationExclude]
	public bool ShouldSerializeAnimationDelay()
	{
		if (AnimationDelay != AnimationDelayInMilliSeconds)
		{
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	public void ResetAnimationDelay()
	{
		AnimationDelay = AnimationDelayInMilliSeconds;
	}

	[DocumentationExclude]
	public bool ShouldSerializeAnimationPositionsCount()
	{
		if (AnimationPositionsCount != AnimationPositions)
		{
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	public void ResetAnimationPositionsCount()
	{
		AnimationPositionsCount = AnimationPositions;
	}

	public void ExpandContent()
	{
		ExpandContent(useAnimation: true);
	}

	public void ExpandContent(bool useAnimation)
	{
		if (button.ExpandedState)
		{
			ToggleContentVisibility(useAnimation);
		}
	}

	public void CollapseContent(bool useAnimation)
	{
		if (!button.ExpandedState)
		{
			ToggleContentVisibility(useAnimation);
		}
	}

	public void CollapseContent()
	{
		CollapseContent(useAnimation: true);
	}

	protected virtual void OnLayoutNeed(EventArgs e)
	{
		if (this.LayoutNeed != null)
		{
			this.LayoutNeed(this, e);
		}
	}

	protected virtual void OnBeforeAnimation(EventArgs e)
	{
		if (this.BeforeAnimation != null)
		{
			this.BeforeAnimation(this, e);
		}
	}

	protected virtual void OnAfterAnimation(EventArgs e)
	{
		if (this.AfterAnimation != null)
		{
			this.AfterAnimation(this, e);
		}
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		OnLayoutNeed(new EventArgs());
	}

	protected internal virtual void UpdatePreferredHeight(Graphics g)
	{
		if (!base.IsHandleCreated)
		{
			return;
		}
		bool flag = false;
		if (g == null)
		{
			g = CreateGraphics();
			flag = true;
		}
		headerHeight = DetermineHeaderHeight(g);
		UpdateExpanderButtonPosition();
		int num = 0;
		num = ((Parent.BoxItemsAlignment != XPTaskBar.ItemsAlignment.Vertical) ? DetermineItemsRectHeightOnHorizontalAlignment(g) : DetermineItemsRectHeight(g));
		if (animationHelper.AnimationOn)
		{
			if (m_enItemAction == ItemAction.None)
			{
				PreferredHeight = headerHeight + num - num * (animationHelper.MaxAnimationPosition - animationHelper.AnimationPosition) / animationHelper.MaxAnimationPosition;
			}
			else if (!Collapsed && m_animatedItem != null)
			{
				int num2 = m_animatedItem.Bounds.Height;
				float num3 = animationHelper.MaxAnimationPosition - animationHelper.AnimationPosition;
				num3 /= (float)animationHelper.MaxAnimationPosition;
				num3 = (float)num2 * num3;
				int num4 = (int)num3;
				switch (m_enItemAction)
				{
				case ItemAction.Show:
					PreferredHeight = headerHeight + num - num4;
					break;
				case ItemAction.Hide:
					PreferredHeight = headerHeight + num - num4 + num2;
					break;
				}
			}
			else
			{
				PreferredHeight = headerHeight;
			}
		}
		else
		{
			int num5 = headerHeight;
			if (!button.ExpandedState)
			{
				num5 += num;
			}
			PreferredHeight = num5;
			m_enItemAction = ItemAction.None;
			m_animatedItem = null;
		}
		if (flag)
		{
			g.Dispose();
		}
	}

	protected virtual void UpdateExpanderButtonPosition()
	{
		Rectangle headerRect = GetHeaderRect();
		Size headerButtonSize = GetHeaderButtonSize();
		int num = (GetHeaderNeedMirrored() ? PADX : (base.ClientRectangle.Width - PADX - headerButtonSize.Width));
		ExpanderButton.Bounds = new Rectangle(num, headerRect.Top + (headerRect.Height - headerButtonSize.Height) / 2, headerButtonSize.Width, headerButtonSize.Height);
	}

	protected virtual int DetermineItemsRectHeight(Graphics g)
	{
		int num = PADY;
		foreach (XPTaskBarItem item in items)
		{
			if (!item.Visible)
			{
				continue;
			}
			if (focusTextBounds)
			{
				int num2 = Size.Ceiling(g.MeasureString(item.Text, item.ItemFont)).Width;
				int num3 = base.ClientRectangle.Width - 2 * (PADX + PADY) - PADX;
				if (num2 > num3)
				{
					num2 = num3;
				}
				int prefferedHeightForText = GetPrefferedHeightForText(g, item.Text, Font, num3, forheader: false);
				if (num2 == num3)
				{
					UpdateWidthForText(g, item.Text, Font, ref num2, forheader: false);
				}
				if (item.Image != null)
				{
					num2 += item.Image.Width;
				}
				if (ImageList != null && item.ImageIndex != -1 && prefferedHeightForText < ImageList.ImageSize.Height)
				{
					prefferedHeightForText = ImageList.ImageSize.Height;
				}
				else if (item.Image != null && prefferedHeightForText < item.Image.Height)
				{
					prefferedHeightForText = item.Image.Height;
				}
				int num4 = 0;
				int num5 = num + 1 + headerHeight;
				num4 = (GetIsMirrored() ? (base.ClientRectangle.Right - (num2 + PADX)) : PADX);
				item.Bounds = new Rectangle(num4, num5, num2, prefferedHeightForText);
				num += item.Bounds.Height + PADY;
			}
			else
			{
				int num6 = base.ClientRectangle.Width - PADX * 2;
				int num7 = num6;
				if (ImageList != null && ImageList.Images.Count > 0)
				{
					num7 -= ImageList.ImageSize.Width;
				}
				else if (item.Image != null)
				{
					num7 -= item.Image.Width;
				}
				int prefferedHeightForText2 = GetPrefferedHeightForText(g, item.Text, Font, num7, forheader: false);
				if (ImageList != null && item.ImageIndex != -1 && prefferedHeightForText2 < ImageList.ImageSize.Height)
				{
					prefferedHeightForText2 = ImageList.ImageSize.Height;
				}
				else if (item.Image != null && prefferedHeightForText2 < item.Image.Height)
				{
					prefferedHeightForText2 = item.Image.Height;
				}
				item.Bounds = new Rectangle(PADX, num + 1 + headerHeight, num6, prefferedHeightForText2);
				num += item.Bounds.Height + PADY;
			}
		}
		if (ChildPanel != null)
		{
			if (items.Count == 0)
			{
				num -= PADY;
			}
			UpdateChildPanelBounds(headerHeight + num);
			num += preferredChildPanelHeight + 4;
		}
		return num;
	}

	protected virtual int DetermineItemsRectHeightOnHorizontalAlignment(Graphics g)
	{
		int num = 0;
		int num2 = PADY;
		int num3 = PADX;
		num = headerHeight;
		int num4 = 1;
		foreach (XPTaskBarItem item in items)
		{
			if (!item.Visible)
			{
				continue;
			}
			if (focusTextBounds)
			{
				int num5 = Size.Ceiling(g.MeasureString(item.Text, item.ItemFont)).Width;
				int num6 = base.ClientRectangle.Width - 2 * (PADX + PADY) - PADX;
				if (num5 > num6)
				{
					num5 = num6;
				}
				int prefferedHeightForText = GetPrefferedHeightForText(g, item.Text, Font, num5, forheader: false);
				if (num5 == num6)
				{
					UpdateWidthForText(g, item.Text, Font, ref num5, forheader: false);
				}
				if (item.Image != null)
				{
					num5 += item.Image.Width;
				}
				if (ImageList != null && item.ImageIndex != -1 && prefferedHeightForText < ImageList.ImageSize.Height)
				{
					prefferedHeightForText = ImageList.ImageSize.Height;
				}
				else if (item.Image != null && prefferedHeightForText < item.Image.Height)
				{
					prefferedHeightForText = item.Image.Height;
				}
				if (num3 + item.Bounds.Width + PADX > base.ClientRectangle.Width - PADX * 2)
				{
					num3 = PADX;
					num += item.Bounds.Height + PADY;
					num4++;
				}
				item.Bounds = new Rectangle(num3, num + PADY, num5, prefferedHeightForText);
				num3 += item.Bounds.Width + PADX;
				num2 = item.Bounds.Height * num4 + PADY * num4;
			}
			else
			{
				int num7 = 150;
				int num8 = num7;
				if (ImageList != null && ImageList.Images.Count > 0)
				{
					num8 -= ImageList.ImageSize.Width;
				}
				else if (item.Image != null)
				{
					num8 -= item.Image.Width;
				}
				int prefferedHeightForText2 = GetPrefferedHeightForText(g, item.Text, Font, num8, forheader: false);
				if (ImageList != null && item.ImageIndex != -1 && prefferedHeightForText2 < ImageList.ImageSize.Height)
				{
					prefferedHeightForText2 = ImageList.ImageSize.Height;
				}
				else if (item.Image != null && prefferedHeightForText2 < item.Image.Height)
				{
					prefferedHeightForText2 = item.Image.Height;
				}
				if (num3 + item.Bounds.Width + PADX > base.ClientRectangle.Width - PADX * 2)
				{
					num3 = PADX;
					num += item.Bounds.Height + PADY;
					num4++;
				}
				item.Bounds = new Rectangle(num3, num + PADY, num7, prefferedHeightForText2);
				num3 += item.Bounds.Width + PADX;
				num2 = item.Bounds.Height * num4 + PADY * num4;
			}
		}
		if (ChildPanel != null)
		{
			if (items.Count == 0)
			{
				num2 -= PADY;
			}
			UpdateChildPanelBounds(headerHeight + num2);
			num2 += preferredChildPanelHeight + 4;
		}
		return num2;
	}

	protected virtual int DetermineHeaderHeight(Graphics g)
	{
		Size headerImageSize = GetHeaderImageSize();
		Size headerButtonSize = GetHeaderButtonSize();
		int num = base.ClientRectangle.Width - PADX * 3 - headerButtonSize.Width;
		if (headerImageSize.Width > 0)
		{
			num -= headerImageSize.Width + PADX;
		}
		int prefferedHeightForText = GetPrefferedHeightForText(g, Text, HeaderFont, num, forheader: true);
		if (prefferedHeightForText < headerButtonSize.Height)
		{
			prefferedHeightForText = headerButtonSize.Height;
		}
		if (prefferedHeightForText < headerImageSize.Height)
		{
			extendedHeaderImageHeight = headerImageSize.Height - prefferedHeightForText;
			prefferedHeightForText = headerImageSize.Height;
		}
		else
		{
			extendedHeaderImageHeight = 0;
		}
		return prefferedHeightForText + PADY * 2;
	}

	protected virtual int GetPrefferedHeightForText(Graphics g, string text, Font font, int width, bool forheader)
	{
		if (width <= 0)
		{
			width = 5;
		}
		StringFormat stringFormat = new StringFormat();
		if (forheader && !ClipHeaderText)
		{
			stringFormat.FormatFlags |= StringFormatFlags.NoWrap;
			stringFormat.Trimming = StringTrimming.EllipsisCharacter;
		}
		Size size = Size.Ceiling(g.MeasureString(text, font, width, stringFormat));
		stringFormat.Dispose();
		return size.Height;
	}

	private void UpdateWidthForText(Graphics g, string text, Font font, ref int width, bool forheader)
	{
		if (width <= 0)
		{
			width = 5;
		}
		StringFormat stringFormat = new StringFormat();
		if (forheader && !ClipHeaderText)
		{
			stringFormat.FormatFlags |= StringFormatFlags.NoWrap;
			stringFormat.Trimming = StringTrimming.EllipsisCharacter;
		}
		Size size = Size.Ceiling(g.MeasureString(text, font, width, stringFormat));
		stringFormat.Dispose();
		width = size.Width;
	}

	private void SetSelectedItemNull()
	{
		selectedItem = null;
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		UpdatePreferredHeight(e.Graphics);
		Rectangle headerRect = GetHeaderRect();
		if (e.ClipRectangle.IntersectsWith(headerRect))
		{
			DrawHeader(e);
		}
		if (e.ClipRectangle.IntersectsWith(new Rectangle(0, headerHeight + 1, base.ClientRectangle.Width, base.ClientRectangle.Height - headerHeight)))
		{
			DrawItems(e);
		}
		if (Focused)
		{
			if (FocusedItem != null)
			{
				Rectangle bounds = FocusedItem.Bounds;
				if (!ThemesEnabled && Parent.Style == XPTaskBarStyle.Office2007)
				{
					SizeF sizeF = e.Graphics.MeasureString(FocusedItem.Text, FocusedItem.ItemFont);
					Image image = FocusedItem.Image;
					int num = 0;
					if (image != null)
					{
						num = image.Width;
					}
					bounds.Width = (int)sizeF.Width;
					if (RightToLeft == RightToLeft.No)
					{
						bounds.X = FocusedItem.Bounds.X + FocusedItem.LeftSpacing + num;
					}
					else
					{
						bounds.X = FocusedItem.Bounds.Right - (int)sizeF.Width + PADX + FocusedItem.LeftSpacing;
					}
					if (DrawFocusRect)
					{
						bounds.Height++;
					}
				}
				if (DrawFocusRect)
				{
					ControlPaint.DrawFocusRectangle(e.Graphics, bounds);
				}
			}
			else if (DrawFocusRect)
			{
				ControlPaint.DrawFocusRectangle(e.Graphics, GetHeaderRect());
			}
		}
		Rectangle itemsRect = GetItemsRect();
		Point pt = PointToClient(Control.MousePosition);
		if (m_bIsDragging && itemsRect.Contains(pt))
		{
			DrawSeparator(e.Graphics);
		}
		base.OnPaint(e);
	}

	public virtual Rectangle GetHeaderRect()
	{
		int extraHeightForHeaderImage = GetExtraHeightForHeaderImage();
		return new Rectangle(0, extraHeightForHeaderImage, base.ClientRectangle.Width, headerHeight - extraHeightForHeaderImage);
	}

	internal Rectangle GetAnimateRect()
	{
		Rectangle itemsRect = GetItemsRect();
		return RectangleToScreen(itemsRect);
	}

	public virtual Rectangle GetItemsRect()
	{
		return new Rectangle(0, headerHeight, base.ClientRectangle.Width, base.ClientRectangle.Height - headerHeight);
	}

	protected virtual void DrawItems(PaintEventArgs ea)
	{
		bool isMirrored = GetIsMirrored();
		Graphics graphics = ea.Graphics;
		Rectangle itemsRect = GetItemsRect();
		if (ThemedDrawing != null)
		{
			ThemedDrawing.DrawMirrored = isMirrored;
		}
		DrawItemsBackground(graphics, itemsRect);
		foreach (XPTaskBarItem item in items)
		{
			if (item.Visible)
			{
				DrawItem(ea, isMirrored, graphics, item);
			}
		}
	}

	private void DrawItemsBackground(Graphics gfxTarget, Rectangle itemBounds)
	{
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
		{
			if (SimulateThemedPaintingForNonDefaultThemes && (XPThemes.IsOliveGreenThemeOn || XPThemes.IsSilverThemeOn))
			{
				Color color = (XPThemes.IsOliveGreenThemeOn ? Color.FromArgb(246, 246, 236) : Color.FromArgb(240, 241, 245));
				gfxTarget.FillRectangle(new SolidBrush(color), itemBounds);
			}
			else
			{
				ThemedDrawing.DrawItemsBG(gfxTarget, itemBounds);
			}
			return;
		}
		if (Parent.Style == XPTaskBarStyle.Office2007)
		{
			using (SolidBrush brush = new SolidBrush(ItemBackColor))
			{
				gfxTarget.FillRectangle(brush, itemBounds);
				return;
			}
		}
		ProvideBrushEventArgs e = new ProvideBrushEventArgs(itemBounds, null);
		OnProvideItemsBackGroundBrush(e);
		using Brush brush2 = ((e.Brush != null) ? e.Brush : new SolidBrush(itemBackColor));
		gfxTarget.FillRectangle(brush2, itemBounds);
	}

	private void DrawItem(PaintEventArgs ea, bool bIsMirrored, Graphics gfxTarget, XPTaskBarItem item)
	{
		Rectangle bounds = item.Bounds;
		bounds.X += item.LeftSpacing;
		Image image = item.Image;
		Font itemFont = item.ItemFont;
		if (ThemesEnabled || Parent.Style != XPTaskBarStyle.Office2007)
		{
			if (item.Visible && image != null)
			{
				DrawItemImage(ea, bIsMirrored, gfxTarget, item, ref bounds, image);
			}
			if (item.Text != string.Empty && item.Visible)
			{
				DrawItemText(bIsMirrored, gfxTarget, item, bounds, itemFont);
			}
			return;
		}
		if (image != null)
		{
			int num = image.Width;
			if (!bIsMirrored)
			{
				bounds.Offset(num, 0);
			}
			bounds.Width -= num;
		}
		if (item.Text != string.Empty)
		{
			DrawItemText(bIsMirrored, gfxTarget, item, bounds, itemFont);
		}
		if (item.Visible && image != null)
		{
			bounds = item.Bounds;
			bounds.X += item.LeftSpacing;
			DrawItemImage(ea, bIsMirrored, gfxTarget, item, ref bounds, image);
		}
	}

	private void DrawItemImage(PaintEventArgs ea, bool bIsMirrored, Graphics gfxTarget, XPTaskBarItem item, ref Rectangle bounds, Image image)
	{
		int num = image.Width;
		int num2 = image.Height;
		int num3 = (bIsMirrored ? (bounds.Right - num) : bounds.Left);
		if (item.Enabled)
		{
			ea.Graphics.DrawImage(image, num3, bounds.Top, num, num2);
		}
		else
		{
			ControlPaint.DrawImageDisabled(gfxTarget, image, num3, bounds.Top, itemBackColor);
		}
		if (!bIsMirrored)
		{
			bounds.Offset(num, 0);
		}
		bounds.Width -= num;
	}

	private void DrawItemText(bool bIsMirrored, Graphics gfxTarget, XPTaskBarItem item, Rectangle bounds, Font itemFont)
	{
		Font font = Font;
		if (HitItem == item && item.Enabled)
		{
			font = FontUtil.CreateFont(font, FontStyle.Underline);
		}
		Color foreColor = ForeColor;
		if (item.ForeColor != Color.Empty)
		{
			foreColor = item.ForeColor;
		}
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
		{
			foreColor = ((XPThemes.IsOliveGreenThemeOn && SimulateThemedPaintingForNonDefaultThemes) ? ((HitItem != item) ? Color.FromArgb(86, 102, 45) : Color.FromArgb(114, 146, 29)) : ((!XPThemes.IsSilverThemeOn || !SimulateThemedPaintingForNonDefaultThemes) ? ThemedDrawing.GetTextThemeColor(header: false, HitItem == item) : ((HitItem != item) ? Color.FromArgb(63, 63, 61) : Color.FromArgb(126, 124, 124))));
		}
		else if (HitItem == item)
		{
			foreColor = ((!(hotTrackColor != Color.Empty)) ? ControlPaint.Light(item.ForeColor) : hotTrackColor);
			Color backColor = itemBackColor;
			if (backColor == Color.Transparent)
			{
				backColor = BackColor;
			}
			Control control = Parent;
			while (backColor == Color.Transparent && control != null)
			{
				backColor = control.BackColor;
				control = control.Parent;
			}
			if (backColor != Color.Transparent && hotTrackColor == Color.Empty)
			{
				DrawingUtils.AdjustForeColorBrightnessForBackColor(ref foreColor, backColor, 0.5f);
			}
		}
		StringFormat stringFormat = new StringFormat(StringFormatFlags.LineLimit);
		if (bIsMirrored)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
		}
		if (item.Enabled)
		{
			if (Focused)
			{
				if (item == focusedItem && !ThemesEnabled && Parent.Style == XPTaskBarStyle.Office2007)
				{
					using Brush brush = new SolidBrush(Parent.Office2007ColorTable.XPTaskBarBoxActiveHighlightedItemColor);
					using Pen pen = new Pen(Color.FromArgb(227, 197, 147));
					Rectangle bounds2 = focusedItem.Bounds;
					if (Parent != null)
					{
						bounds2.X = 1;
						bounds2.Width = Parent.ClientRectangle.Width - 3;
					}
					gfxTarget.FillRectangle(brush, bounds2);
					gfxTarget.DrawRectangle(pen, bounds2);
				}
			}
			else if (item == selectedItem && !ThemesEnabled && Parent.Style == XPTaskBarStyle.Office2007)
			{
				using Brush brush2 = new SolidBrush(Parent.Office2007ColorTable.XPTaskBarBoxInactiveHighlightedItemColor);
				Rectangle bounds3 = selectedItem.Bounds;
				if (Parent != null)
				{
					bounds3.X = 1;
					bounds3.Width = Parent.ClientRectangle.Width - 2;
				}
				gfxTarget.FillRectangle(brush2, bounds3);
			}
			using Brush brush3 = new SolidBrush(foreColor);
			gfxTarget.DrawString(item.Text, itemFont, brush3, bounds, stringFormat);
			return;
		}
		using Brush brush4 = new SolidBrush(SystemColors.GrayText);
		gfxTarget.DrawString(item.Text, font, brush4, bounds, stringFormat);
	}

	protected virtual void DrawHeader(PaintEventArgs ea)
	{
		bool isMirrored = GetIsMirrored();
		bool headerNeedMirrored = GetHeaderNeedMirrored();
		Graphics graphics = ea.Graphics;
		GraphicsPath headerBorderPath = GetHeaderBorderPath();
		if (ThemedDrawing != null)
		{
			ThemedDrawing.DrawMirrored = isMirrored;
		}
		RectangleF bounds = headerBorderPath.GetBounds();
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
		{
			if (SimulateThemedPaintingForNonDefaultThemes && (XPThemes.IsOliveGreenThemeOn || XPThemes.IsSilverThemeOn))
			{
				using CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(graphics, headerBorderPath, isMirrored);
				Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
				GraphicsPath virtualPath = cMirroredDrawer.VirtualPath;
				Matrix matrix = new Matrix();
				matrix.Translate(0f, GetExtraHeightForHeaderImage());
				virtualPath.Transform(matrix);
				Rectangle virtualBounds = cMirroredDrawer.VirtualBounds;
				Color color;
				Color color2;
				if (XPThemes.IsOliveGreenThemeOn)
				{
					color = Color.FromArgb(255, 252, 236);
					color2 = Color.FromArgb(224, 231, 184);
				}
				else
				{
					color = Color.White;
					color2 = Color.FromArgb(214, 215, 224);
				}
				using LinearGradientBrush brush = new LinearGradientBrush(virtualBounds, color, color2, LinearGradientMode.Horizontal);
				virtualGfx.FillPath(brush, virtualPath);
			}
			else
			{
				ThemedDrawing.DrawHeader(graphics, Rectangle.Ceiling(bounds));
			}
		}
		else if (Parent.Style == XPTaskBarStyle.Office2007)
		{
			using CMirroredDrawer cMirroredDrawer2 = new CMirroredDrawer(graphics, headerBorderPath, isMirrored);
			Graphics virtualGfx2 = cMirroredDrawer2.VirtualGfx;
			GraphicsPath virtualPath2 = cMirroredDrawer2.VirtualPath;
			RectangleF bounds2 = virtualPath2.GetBounds();
			bounds2.Y = bounds.Y;
			using (SolidBrush brush2 = new SolidBrush(Color.White))
			{
				virtualGfx2.FillRectangle(brush2, bounds2);
			}
			Color color3 = HeaderBackColor;
			bounds2.Y += 1f;
			bounds2.X += 1f;
			if (!HeaderHit)
			{
				Color color4 = color3;
				Color color5 = Color.FromArgb(175, color3);
				if (Parent.Office2007ColorScheme == Office2007Theme.Silver || Parent.Office2007ColorScheme == Office2007Theme.Black)
				{
					color5 = Color.FromArgb(120, color3);
				}
				using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(bounds2, color4, color5, LinearGradientMode.Horizontal);
				Blend blend = new Blend();
				blend.Positions = new float[4] { 0f, 0.5f, 0.5f, 1f };
				blend.Factors = new float[4] { 0f, 1f, 1f, 0f };
				linearGradientBrush.Blend = blend;
				virtualGfx2.FillRectangle(linearGradientBrush, bounds2);
			}
			else
			{
				using LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(bounds2, Color.FromArgb(175, color3), Color.FromArgb(70, color3), LinearGradientMode.Horizontal);
				Blend blend2 = new Blend();
				blend2.Positions = new float[4] { 0f, 0.3f, 0.7f, 1f };
				blend2.Factors = new float[4] { 0f, 1f, 1f, 0f };
				linearGradientBrush2.Blend = blend2;
				virtualGfx2.FillRectangle(linearGradientBrush2, bounds2);
			}
			using Pen pen = new Pen(Parent.Office2007ColorTable.XPTaskBarBoxHeaderLowerLineColor);
			virtualGfx2.DrawLine(pen, bounds2.Left - 1f, bounds2.Bottom - 2f, bounds2.Right, bounds2.Bottom - 2f);
		}
		else
		{
			ProvideBrushEventArgs e = new ProvideBrushEventArgs(GetHeaderRect(), null);
			OnProvideHeaderBackGroundBrush(e);
			using CMirroredDrawer cMirroredDrawer3 = new CMirroredDrawer(graphics, headerBorderPath, isMirrored);
			Graphics virtualGfx3 = cMirroredDrawer3.VirtualGfx;
			GraphicsPath virtualPath3 = cMirroredDrawer3.VirtualPath;
			Matrix matrix2 = new Matrix();
			matrix2.Translate(0f, GetExtraHeightForHeaderImage());
			virtualPath3.Transform(matrix2);
			using Brush brush3 = ((e.Brush != null) ? e.Brush : new SolidBrush(HeaderBackColor));
			virtualGfx3.FillPath(brush3, virtualPath3);
		}
		if (Text != string.Empty)
		{
			Rectangle headerTextBounds = GetHeaderTextBounds();
			bool flag = false;
			Color color6 = ((!(HeaderForeColor != Color.Empty)) ? ForeColor : HeaderForeColor);
			if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
			{
				if (SimulateThemedPaintingForNonDefaultThemes && (XPThemes.IsOliveGreenThemeOn || XPThemes.IsSilverThemeOn || XPThemes.IsDefaultBlueThemeOn))
				{
					color6 = (XPThemes.IsOliveGreenThemeOn ? Color.FromArgb(86, 102, 45) : Color.FromArgb(63, 63, 61));
					if (XPThemes.IsDefaultBlueThemeOn)
					{
						color6 = Color.FromArgb(33, 93, 198);
					}
				}
				else
				{
					ThemedDrawing.DrawBarText(graphics, Text, headerTextBounds, forheader: true, hot: false, isMirrored, HeaderTextAlign, ClipHeaderText);
					flag = true;
				}
			}
			else if (Parent.Style == XPTaskBarStyle.Office2007)
			{
				color6 = Parent.Office2007ColorTable.XPTaskBarBoxForeColor;
			}
			if (!flag)
			{
				StringFormat stringFormat = new StringFormat();
				if (isMirrored)
				{
					stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
				}
				if (!ClipHeaderText)
				{
					stringFormat.FormatFlags |= StringFormatFlags.NoWrap;
					stringFormat.Trimming = StringTrimming.EllipsisCharacter;
				}
				stringFormat.Alignment = HeaderTextAlign;
				using Brush brush4 = new SolidBrush(color6);
				graphics.DrawString(Text, HeaderFont, brush4, headerTextBounds, stringFormat);
			}
		}
		if (ShowCollapseButton)
		{
			if (Parent.Style == XPTaskBarStyle.Default || (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled))
			{
				button.DrawButton(graphics, ThemedDrawing, ThemesEnabled);
			}
			else
			{
				Color xPTaskBarBoxArrowColor = Parent.Office2007ColorTable.XPTaskBarBoxArrowColor;
				Color xPTaskBarBoxBackColor = Parent.Office2007ColorTable.XPTaskBarBoxBackColor;
				button.DrawOffice2007Button(graphics, xPTaskBarBoxArrowColor, xPTaskBarBoxBackColor);
			}
		}
		ImageList imageList = HeaderImageList;
		if (imageList != null && HeaderImageIndex != -1 && imageList.Images.Count > HeaderImageIndex)
		{
			int num = (headerNeedMirrored ? (base.ClientRectangle.Width - PADX - imageList.ImageSize.Width) : PADX);
			imageList.Draw(graphics, num, PADY, HeaderImageIndex);
		}
	}

	private bool GetHeaderNeedMirrored()
	{
		bool flag = HeaderDirection == HeaderDirectionFormat.RightToLeft;
		return GetIsMirrored() != flag;
	}

	protected virtual Rectangle GetHeaderTextBounds()
	{
		int num = base.ClientRectangle.Width;
		int num2 = num - PADX * 3 - GetHeaderButtonSize().Width;
		int pADY = PADY;
		int num3 = 0;
		bool headerNeedMirrored = GetHeaderNeedMirrored();
		num3 = ((!headerNeedMirrored) ? PADX : (num - num2 - PADX));
		Size headerImageSize = GetHeaderImageSize();
		if (headerImageSize.Width > 0)
		{
			int num4 = headerImageSize.Width + PADX;
			if (!headerNeedMirrored)
			{
				num3 += num4;
			}
			num2 -= num4;
		}
		int extraHeightForHeaderImage = GetExtraHeightForHeaderImage();
		pADY += extraHeightForHeaderImage;
		return new Rectangle(num3, pADY, num2, headerHeight - PADY * 2 - extraHeightForHeaderImage);
	}

	private int GetInsertionIndex(Point pt)
	{
		int result = int.MaxValue;
		if (Items.Count == 0)
		{
			result = -1;
		}
		else
		{
			int num = int.MaxValue;
			if (pt.Y <= Items[0].Bounds.Bottom)
			{
				result = -1;
			}
			else
			{
				int i = 0;
				for (int count = Items.Count; i < count; i++)
				{
					int bottom = Items[i].Bounds.Bottom;
					int num2 = Math.Abs(bottom - pt.Y);
					if (num2 < num)
					{
						num = num2;
						result = i;
					}
				}
			}
		}
		return result;
	}

	private void InvalidateSeparator()
	{
		Rectangle separatorLineBounds = GetSeparatorLineBounds();
		separatorLineBounds.Inflate(2, 2);
		Invalidate(separatorLineBounds);
	}

	private Rectangle GetSeparatorLineBounds()
	{
		Rectangle itemsRect = GetItemsRect();
		itemsRect.Inflate(-3, 0);
		itemsRect.Height = 2;
		if (m_insertionIndex >= 0 && m_insertionIndex < Items.Count)
		{
			XPTaskBarItem xPTaskBarItem = Items[m_insertionIndex];
			itemsRect.Y = xPTaskBarItem.Bounds.Bottom;
			if (itemsRect.Y >= base.ClientRectangle.Height)
			{
				itemsRect.Y = base.ClientRectangle.Height - 2;
			}
		}
		else if (m_insertionIndex < 0)
		{
			if (Items.Count > 0)
			{
				XPTaskBarItem xPTaskBarItem2 = Items[0];
				itemsRect.Y = xPTaskBarItem2.Bounds.Top;
				itemsRect.Y--;
			}
			else
			{
				itemsRect.Y++;
			}
		}
		return itemsRect;
	}

	private void DrawSeparator(Graphics g)
	{
		if (m_bIsDragging)
		{
			RectangleF clipBounds = g.ClipBounds;
			Rectangle itemsRect = GetItemsRect();
			g.SetClip(itemsRect);
			itemsRect = GetSeparatorLineBounds();
			using (Brush brush = new SolidBrush(Color.Black))
			{
				g.FillRectangle(brush, itemsRect);
			}
			int num = 2;
			int i = 0;
			for (int num2 = 2; i < num2; i++)
			{
				g.DrawLine(Pens.Black, itemsRect.Left + i, itemsRect.Top - num, itemsRect.Left + i, itemsRect.Bottom + num - 1);
				g.DrawLine(Pens.Black, itemsRect.Right - i - 1, itemsRect.Top - num, itemsRect.Right - i - 1, itemsRect.Bottom + num - 1);
				num--;
			}
			g.SetClip(clipBounds);
		}
	}

	[DocumentationExclude]
	protected void AttemptStartDragging()
	{
		DragDropEffects dragDropEffects = DragDropEffects.None;
		Point point = PointToClient(Control.MousePosition);
		if (m_mouseDownPos != Point.Empty)
		{
			int num = Math.Abs(m_mouseDownPos.X - point.X);
			int num2 = Math.Abs(m_mouseDownPos.Y - point.Y);
			if (AllowDrop && m_dragItem != null && !m_bIsDragging && (num >= SystemInformation.DragSize.Width || num2 >= SystemInformation.DragSize.Height))
			{
				m_mouseDownPos = Point.Empty;
				m_bIsDragging = true;
				FocusedItem = m_dragItem;
				dragDropEffects = DoDragDrop(m_dragItem, DragDropEffects.Copy | DragDropEffects.Move);
				m_dragItem = null;
			}
		}
		if (dragDropEffects == DragDropEffects.Move)
		{
			FocusedItem = null;
			Invalidate();
		}
	}

	protected void ProcessDragEnter(DragEventArgs e)
	{
		m_bIsDragging = e.Data.GetDataPresent(typeof(XPTaskBarItem));
		if (m_bIsDragging)
		{
			Point pt = PointToClient(Control.MousePosition);
			m_insertionIndex = GetInsertionIndex(pt);
			InvalidateSeparator();
		}
	}

	protected void ProcessDragLeave()
	{
		m_bIsDragging = false;
		InvalidateSeparator();
		m_insertionIndex = int.MaxValue;
	}

	protected void ProcessDragOver(DragEventArgs e)
	{
		IDataObject data = e.Data;
		if (data.GetDataPresent(typeof(XPTaskBarItem)))
		{
			Point pt = PointToClient(Control.MousePosition);
			InvalidateSeparator();
			m_insertionIndex = GetInsertionIndex(pt);
			InvalidateSeparator();
			if (GetItemsRect().Contains(pt))
			{
				e.Effect = (((Control.ModifierKeys & Keys.Control) != Keys.None) ? DragDropEffects.Copy : DragDropEffects.Move);
			}
			else
			{
				e.Effect = DragDropEffects.None;
			}
		}
	}

	protected void ProcessDragDrop(DragEventArgs e)
	{
		m_bIsDragging = false;
		InvalidateSeparator();
		IDataObject data = e.Data;
		if (data != null)
		{
			XPTaskBarItem xPTaskBarItem = data.GetData(typeof(XPTaskBarItem)) as XPTaskBarItem;
			if (xPTaskBarItem != null)
			{
				XPTaskBarBox xPTaskBarBox = xPTaskBarItem.Parent as XPTaskBarBox;
				Image image = null;
				bool flag = false;
				if (xPTaskBarBox != this)
				{
					flag = xPTaskBarBox != null && xPTaskBarBox.ImageList != null && xPTaskBarBox.ImageList == ImageList;
					if (!flag)
					{
						image = xPTaskBarItem.Image;
						if (image != null)
						{
							image = new Bitmap(image);
						}
					}
				}
				if (xPTaskBarBox != null && (e.Effect == DragDropEffects.Move || e.Effect == DragDropEffects.Copy))
				{
					int num = m_insertionIndex;
					if (e.Effect == DragDropEffects.Move)
					{
						int num2 = Items.IndexOf(xPTaskBarItem);
						if (num2 >= 0 && num2 <= num)
						{
							num--;
						}
						xPTaskBarBox.Items.Remove(xPTaskBarItem);
					}
					else if (e.Effect == DragDropEffects.Copy)
					{
						xPTaskBarItem = xPTaskBarItem.Clone() as XPTaskBarItem;
					}
					if (xPTaskBarBox != this && !flag)
					{
						xPTaskBarItem.ImageIndex = -1;
						xPTaskBarItem.SetImage(image);
					}
					num = ((num >= 0) ? (++num) : 0);
					Items.Insert(num, xPTaskBarItem);
				}
				xPTaskBarBox.FinishDragging();
			}
		}
		m_insertionIndex = int.MaxValue;
	}

	[DocumentationExclude]
	protected internal void FinishDragging()
	{
		m_bIsDragging = false;
		Invalidate();
	}

	protected override void OnDragLeave(EventArgs e)
	{
		base.OnDragLeave(e);
		ProcessDragLeave();
	}

	protected override void OnDragEnter(DragEventArgs drgevent)
	{
		base.OnDragEnter(drgevent);
		ProcessDragEnter(drgevent);
	}

	protected override void OnDragOver(DragEventArgs drgevent)
	{
		base.OnDragOver(drgevent);
		ProcessDragOver(drgevent);
	}

	protected override void OnDragDrop(DragEventArgs drgevent)
	{
		base.OnDragDrop(drgevent);
		ProcessDragDrop(drgevent);
	}

	protected internal bool ShouldToggle()
	{
		Point pt = PointToClient(Control.MousePosition);
		bool flag = ShowCollapseButton && button != null && button.Bounds.Contains(pt);
		return HeaderHit && (!ToggleByButton || flag);
	}

	public XPTaskBarItem HitTest(Point mousePoint)
	{
		foreach (XPTaskBarItem item in items)
		{
			if (item.Bounds.Contains(mousePoint) && item.Visible)
			{
				return item;
			}
		}
		return null;
	}

	protected override void OnLostFocus(EventArgs e)
	{
		m_toolTip.Active = false;
		base.OnLostFocus(e);
	}

	protected override void OnMouseHover(EventArgs e)
	{
		if (FindForm() == null && !Parent.ContainsFocus)
		{
			Focus();
		}
		base.OnMouseHover(e);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (e.Button == MouseButtons.Left)
		{
			hitItemOnMouseDown = HitItem;
			if (HeaderHit)
			{
				Invalidate(button.Bounds);
			}
			m_mouseDownPos = new Point(e.X, e.Y);
			m_dragItem = GetItemAtPoint(m_mouseDownPos);
		}
		base.OnMouseDown(e);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		if (FindForm() == null && !Parent.ContainsFocus)
		{
			Focus();
		}
		Rectangle headerRect = GetHeaderRect();
		AttemptStartDragging();
		if (ShowCollapseButton && headerRect.Contains(e.X, e.Y))
		{
			HeaderHit = true;
		}
		else
		{
			HeaderHit = false;
		}
		if (HeaderHit && ToggleByButton && !ExpanderButton.Bounds.Contains(e.X, e.Y))
		{
			Cursor = Cursors.Default;
		}
		else if (HeaderHit && ToggleByButton && ExpanderButton.Bounds.Contains(e.X, e.Y))
		{
			Cursor = Cursors.Hand;
		}
		XPTaskBarItem xPTaskBarItem = HitTest(new Point(e.X, e.Y));
		if (xPTaskBarItem != null && (xPTaskBarItem != HitItem || m_bIsItemClicked) && ShowToolTip)
		{
			m_toolTip.Active = false;
			string toolTip = xPTaskBarItem.ToolTip;
			if (toolTip != null && toolTip.Length > 0)
			{
				m_toolTip.SetToolTip(this, toolTip);
				m_toolTip.Active = true;
			}
		}
		m_bIsItemClicked = false;
		if (xPTaskBarItem == null)
		{
			m_toolTip.Active = false;
		}
		if (!HeaderHit && HitTest(new Point(e.X, e.Y)) == null)
		{
			HitTaskBoxArea = true;
		}
		else
		{
			HitTaskBoxArea = false;
		}
		HitItem = xPTaskBarItem;
		base.OnMouseMove(e);
	}

	protected override void OnEnter(EventArgs e)
	{
		base.OnEnter(e);
		if (Parent == null)
		{
			return;
		}
		foreach (XPTaskBarBox control in Parent.Controls)
		{
			control.SetSelectedItemNull();
			control.Invalidate();
		}
	}

	protected override void OnLeave(EventArgs e)
	{
		Focused = false;
		base.OnLeave(e);
		focusedItem = null;
		Invalidate();
	}

	protected override bool IsInputKey(Keys keyData)
	{
		switch (keyData)
		{
		case Keys.Space:
			return true;
		case Keys.Tab:
			if (FocusedItem == null && Items.Count > 0 && !Collapsed)
			{
				return true;
			}
			break;
		case Keys.Tab | Keys.Shift:
			if (FocusedItem != null)
			{
				return true;
			}
			break;
		default:
			if ((keyData & Keys.KeyCode) == Keys.Up)
			{
				if (!Collapsed)
				{
					return CanMoveFocusedItem(up: true);
				}
			}
			else if ((keyData & Keys.KeyCode) == Keys.Down)
			{
				if (!Collapsed)
				{
					return CanMoveFocusedItem(up: false);
				}
			}
			else if ((keyData & Keys.KeyCode) == Keys.Return)
			{
				return true;
			}
			break;
		}
		return base.IsInputKey(keyData);
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		Keys keyData = e.KeyData;
		switch (keyData)
		{
		case Keys.Space:
			ToggleContentVisibility(useAnimation: true);
			e.Handled = true;
			break;
		case Keys.Tab:
			if (FocusedItem == null && Items.Count > 0 && !Collapsed)
			{
				MoveFocusedItem(up: false);
				e.Handled = true;
			}
			break;
		case Keys.Tab | Keys.Shift:
			if (FocusedItem != null)
			{
				FocusedItem = null;
				e.Handled = true;
			}
			break;
		default:
			if ((keyData & Keys.KeyCode) == Keys.Up)
			{
				if (!Collapsed)
				{
					e.Handled = MoveFocusedItem(up: true);
				}
			}
			else if ((keyData & Keys.KeyCode) == Keys.Down)
			{
				if (!Collapsed)
				{
					e.Handled = MoveFocusedItem(up: false);
				}
			}
			else if ((keyData & Keys.KeyCode) == Keys.Return)
			{
				if (FocusedItem != null)
				{
					PerformItemClick(FocusedItem);
				}
				else
				{
					ToggleContentVisibility(useAnimation: true);
				}
				e.Handled = true;
			}
			break;
		}
		base.OnKeyDown(e);
	}

	private bool CanMoveFocusedItem(bool up)
	{
		if (up)
		{
			if (FocusedItem == null)
			{
				return false;
			}
			return true;
		}
		int num = Items.IndexOf(FocusedItem);
		if (num == Items.Count - 1)
		{
			return false;
		}
		return true;
	}

	private bool MoveFocusedItem(bool up)
	{
		if (up)
		{
			if (FocusedItem == null)
			{
				return false;
			}
			int num = Items.IndexOf(FocusedItem);
			for (num--; num >= 0; num--)
			{
				XPTaskBarItem xPTaskBarItem = Items[num];
				if (xPTaskBarItem.Visible && xPTaskBarItem.Enabled)
				{
					break;
				}
			}
			if (num >= 0)
			{
				FocusedItem = Items[num];
			}
			else
			{
				FocusedItem = null;
			}
			return true;
		}
		int num2 = Items.IndexOf(FocusedItem);
		int num3 = Items.Count - 1;
		for (num2++; num2 <= num3; num2++)
		{
			XPTaskBarItem xPTaskBarItem2 = Items[num2];
			if (xPTaskBarItem2.Visible && xPTaskBarItem2.Enabled)
			{
				break;
			}
		}
		if (num2 >= Items.Count)
		{
			return false;
		}
		FocusedItem = Items[num2];
		return true;
	}

	protected virtual void ToggleContentVisibility(bool useAnimation)
	{
		CancelEventArgs e = new CancelEventArgs();
		OnCollapsedStateChanging(e);
		if (e.Cancel)
		{
			return;
		}
		Point pt = PointToClient(Control.MousePosition);
		if (!ToggleByButton || ExpanderButton.Bounds.Contains(pt))
		{
			button.ExpandedState = !button.ExpandedState;
			if (!Collapsed && ChildPanel != null)
			{
				ChildPanel.Visible = true;
			}
			if (base.Visible && useAnimation)
			{
				Invalidate(button.Bounds);
				bool flag = false;
				flag = !button.ExpandedState;
				OnBeforeAnimation(EventArgs.Empty);
				animationHelper.StartAnimation(AnimationPositionsCount, flag, AnimationDelay);
			}
			else
			{
				OnCollapsedStateChanged(EventArgs.Empty);
			}
			Invalidate();
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (e.Button == MouseButtons.Left)
		{
			m_mouseDownPos = Point.Empty;
			m_bIsDragging = false;
			if (HeaderHit || m_bIsItemClicked || HitTaskBoxArea || (HitItem != null && HitItem.Enabled))
			{
				Focused = true;
				Panel panel = Parent;
				if (panel != null)
				{
					foreach (Control control in panel.Controls)
					{
						if (control is XPTaskBarBox xPTaskBarBox && !xPTaskBarBox.Equals(this))
						{
							xPTaskBarBox.Focused = false;
						}
					}
				}
			}
			else
			{
				Focused = false;
			}
			if (base.IsHandleCreated)
			{
				if (HitItem != null && HitItem.Enabled)
				{
					FocusedItem = HitItem;
				}
				if (HeaderHit)
				{
					ToggleContentVisibility(useAnimation: true);
				}
				else if (HitItem != null && hitItemOnMouseDown == HitItem && HitItem.Enabled)
				{
					PerformItemClick(HitItem);
					m_bIsItemClicked = true;
				}
				hitItemOnMouseDown = null;
			}
			Invalidate();
		}
		base.OnMouseUp(e);
	}

	protected virtual void OnItemClick(XPTaskBarItemClickArgs args)
	{
		if (this.ItemClick != null)
		{
			this.ItemClick(this, args);
		}
	}

	public void PerformItemClick(XPTaskBarItem item)
	{
		OnItemClick(new XPTaskBarItemClickArgs(item));
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		HitItem = null;
		HeaderHit = false;
		base.OnMouseLeave(e);
	}

	protected override void OnBackColorChanged(EventArgs e)
	{
		base.OnBackColorChanged(e);
		if (m_bPropagateBackColorToItems)
		{
			itemBackColor = BackColor;
		}
	}

	protected override void OnTextChanged(EventArgs e)
	{
		OnLayoutNeed(new EventArgs());
	}

	protected GraphicsPath GetHeaderBorderPath()
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int extraHeightForHeaderImage = GetExtraHeightForHeaderImage();
		Point[] points = new Point[7]
		{
			new Point(0, extraHeightForHeaderImage + 2),
			new Point(2, extraHeightForHeaderImage),
			new Point(base.ClientRectangle.Width - 2, extraHeightForHeaderImage),
			new Point(base.ClientRectangle.Width, extraHeightForHeaderImage + 2),
			new Point(base.ClientRectangle.Width, headerHeight),
			new Point(0, headerHeight),
			new Point(0, extraHeightForHeaderImage + 2)
		};
		graphicsPath.AddLines(points);
		return graphicsPath;
	}

	[DocumentationExclude]
	protected virtual int GetExtraHeightForHeaderImage()
	{
		return extendedHeaderImageHeight;
	}

	[DocumentationExclude]
	protected Size GetHeaderImageSize()
	{
		if (HeaderImageList != null && HeaderImageIndex != -1 && HeaderImageList.Images.Count > HeaderImageIndex)
		{
			return HeaderImageList.ImageSize;
		}
		return Size.Empty;
	}

	[DocumentationExclude]
	protected bool GetIsMirrored()
	{
		return RightToLeft.Yes == RightToLeft;
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 7 && Parent.AutoScroll)
		{
			Parent.IsChildSetFocus = true;
		}
		base.WndProc(ref m);
	}

	private ThemedXPTaskBarBoxDrawing CreateThemedDrawing()
	{
		return new ThemedXPTaskBarBoxDrawing(this, "EXPLORERBAR");
	}
}
