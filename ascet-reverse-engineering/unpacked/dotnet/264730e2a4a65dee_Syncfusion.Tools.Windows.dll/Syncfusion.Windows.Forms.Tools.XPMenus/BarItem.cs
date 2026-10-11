using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Grid;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
[DesignTimeVisible(false)]
[Designer(typeof(BarItemDesigner), typeof(IDesigner))]
[ToolboxItem(false)]
public class BarItem : Component, IChangeNotifyingItem, ICustomTypeDescriptor, ICloneable, IDataBindingSupport, ISerializable
{
	internal const int STATE_MDILIST = 8;

	internal const int STATE_CHECKED = 4;

	internal const int STATE_DISABLED = 16;

	internal const int STATE_VISIBLE = 32;

	internal const int STATE_ISNOT_RECENTLYUSEDITEM = 128;

	internal const int STATE_CLONE_MASK = 188;

	private const int DEF_DELAY_FACTOR = 10000;

	private bool m_bShowUnderlinesAlways;

	private PaintStyle paintStyle;

	private string text = string.Empty;

	private string id = string.Empty;

	private int categoryIndex = -1;

	internal BarManager barManager;

	private int state;

	private Shortcut shortcut;

	private string shortcutText;

	private MenuMerge mergeType;

	private int mergeOrder;

	private object tag;

	private ImageList imageList;

	private ImageListAdv imageListAdv;

	private ImageList largeImageList;

	private ImageListAdv largeImageListAdv;

	private ImageList m_disabledImgList;

	private ImageListAdv m_disabledImgListAdv;

	private ImageList m_disabledLargeImgList;

	private ImageListAdv m_disabledLargeImgListAdv;

	private ImageList m_highlightImgList;

	private ImageListAdv m_highlightImgListAdv;

	private ImageList m_highlightLargeImgList;

	private ImageListAdv m_highlightLargeImgListAdv;

	private ImageList m_pressedImageList;

	private ImageListAdv m_pressedImageListAdv;

	private ImageList m_pressedLargeImageList;

	private ImageListAdv m_pressedLargeImageListAdv;

	private int m_imageIndex = -1;

	private int m_disabledImgIndex = -1;

	private int m_highlightedImageIndex = -1;

	private int m_pressedImageIndex = -1;

	private string tooltip = string.Empty;

	private bool customizable = true;

	private bool _uiUpdateOnAppIdle;

	private bool m_bDrawImageMirrored;

	private Form topLevelForm;

	private bool m_shortCutProcessing;

	private bool m_handleDoubleClick;

	private bool m_bHintViaHotKeyPrefix;

	private bool m_bLargeIcons;

	private TextAlignment m_TextAlignment;

	private Color m_cCustomNormalTextColor = Color.Empty;

	private Color m_cCustomDisabledTextColor = Color.Empty;

	private Color m_cCustomActiveTextColor = Color.Empty;

	private Color m_imageTransparentColor = Color.Empty;

	private Font m_fCustomTextFont;

	private bool m_bShowTooltip = true;

	private ImageExt m_image;

	private ImageExt m_disabledImage;

	private ImageExt m_highlightImage;

	internal static readonly Size DEF_IMAGE_SIZE = new Size(16, 16);

	private Size m_imageSize = DEF_IMAGE_SIZE;

	private bool m_bIsDisposing;

	private bool m_bIsDisposed;

	private Point m_lastClickLocation = Point.Empty;

	private long m_tiksLastClick;

	private bool m_bDoubleClick;

	private int m_iPaddingForThemesX = 4;

	private int m_iPaddingForThemesY = 6;

	private Point m_padding = Point.Empty;

	private bool m_bDesignTimeCreated = true;

	protected internal bool IsDisposing => m_bIsDisposing;

	[Description("Indicates whether BarItem is disposed.")]
	public bool IsDisposed => m_bIsDisposed;

	[DocumentationExclude]
	protected ComponentDesigner Designer => (GetService(typeof(IDesignerHost)) as IDesignerHost).GetDesigner(this) as ComponentDesigner;

	[Category("Appearance")]
	[DefaultValue(4)]
	[Description("Gets or sets padding for themes control X.")]
	public int PaddingForThemesX
	{
		get
		{
			return m_iPaddingForThemesX;
		}
		set
		{
			if (m_iPaddingForThemesX != value)
			{
				int iPaddingForThemesX = m_iPaddingForThemesX;
				m_iPaddingForThemesX = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "PaddingForThemesX", iPaddingForThemesX, value));
			}
		}
	}

	[Description("Gets or sets padding for themes control Y.")]
	[DefaultValue(6)]
	[Category("Appearance")]
	public int PaddingForThemesY
	{
		get
		{
			return m_iPaddingForThemesY;
		}
		set
		{
			if (m_iPaddingForThemesY != value)
			{
				int iPaddingForThemesY = m_iPaddingForThemesY;
				m_iPaddingForThemesY = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "PaddingForThemesY", iPaddingForThemesY, value));
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets padding for items with disabled themes")]
	public Point Padding
	{
		get
		{
			return m_padding;
		}
		set
		{
			if (m_padding != value)
			{
				if (value.X < 0 || value.Y < 0)
				{
					throw new ArgumentException("Value cannot be negative.");
				}
				Point padding = m_padding;
				m_padding = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Padding", padding, value));
			}
		}
	}

	[Description("Gets or sets text alignment. Use only in popup menu.")]
	[Category("Appearance")]
	[DefaultValue(TextAlignment.Near)]
	public virtual TextAlignment TextAlignment
	{
		get
		{
			return m_TextAlignment;
		}
		set
		{
			if (m_TextAlignment != value)
			{
				TextAlignment textAlignment = m_TextAlignment;
				m_TextAlignment = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "TextAlignment", textAlignment, value));
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets text color in normal mode.")]
	public virtual Color CustomNormalTextColor
	{
		get
		{
			return m_cCustomNormalTextColor;
		}
		set
		{
			if (m_cCustomNormalTextColor != value)
			{
				Color cCustomNormalTextColor = m_cCustomNormalTextColor;
				m_cCustomNormalTextColor = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "CustomNormalTextColor", cCustomNormalTextColor, value));
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets text color in disabled mode. If value is empty use default color.")]
	public virtual Color CustomDisabledTextColor
	{
		get
		{
			return m_cCustomDisabledTextColor;
		}
		set
		{
			if (m_cCustomDisabledTextColor != value)
			{
				Color cCustomDisabledTextColor = m_cCustomDisabledTextColor;
				m_cCustomDisabledTextColor = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "CustomDisabledTextColor", cCustomDisabledTextColor, value));
			}
		}
	}

	[Description("Gets or sets text color in active mode.")]
	[Category("Appearance")]
	public virtual Color CustomActiveTextColor
	{
		get
		{
			return m_cCustomActiveTextColor;
		}
		set
		{
			if (m_cCustomActiveTextColor != value)
			{
				Color cCustomActiveTextColor = m_cCustomActiveTextColor;
				m_cCustomActiveTextColor = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "CustomActiveTextColor", cCustomActiveTextColor, value));
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets text font.")]
	public virtual Font CustomTextFont
	{
		get
		{
			if (m_fCustomTextFont == null)
			{
				BarManager manager = Manager;
				if (manager != null)
				{
					if (manager is MainFrameBarManager)
					{
						return ((MainFrameBarManager)manager).Font;
					}
					if (manager.Form != null)
					{
						return manager.Form.Font;
					}
				}
			}
			return m_fCustomTextFont;
		}
		set
		{
			if (m_fCustomTextFont != value)
			{
				SyncfusionPropertyChangedEventArgs args = new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "CustomTextFont", m_fCustomTextFont, value);
				m_fCustomTextFont = value;
				OnPropertyChanged(args);
			}
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether to show underlines with mnemonics always.")]
	public virtual bool ShowMnemonicUnderlinesAlways
	{
		get
		{
			return m_bShowUnderlinesAlways;
		}
		set
		{
			if (value != m_bShowUnderlinesAlways)
			{
				m_bShowUnderlinesAlways = value;
			}
		}
	}

	[DefaultValue(MenuMerge.Add)]
	[Category("Appearance")]
	[Description("Indicates the behavior of this bar item when its bar is merged with another.")]
	public virtual MenuMerge MergeType
	{
		get
		{
			return mergeType;
		}
		set
		{
			if (mergeType != value)
			{
				mergeType = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "MergeType", null, null));
			}
		}
	}

	[DefaultValue(true)]
	[Description("Specifies whether or not this item will participate in user customization.")]
	[Category("Behavior")]
	public virtual bool Customizable
	{
		get
		{
			return customizable;
		}
		set
		{
			if (customizable != value)
			{
				customizable = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "Customizable", null, null));
			}
		}
	}

	[Description("Gets or sets a value indicating the relative position of the menu item when it is merged with another.")]
	[DefaultValue(0)]
	[Category("Appearance")]
	public virtual int MergeOrder
	{
		get
		{
			return mergeOrder;
		}
		set
		{
			if (mergeOrder != value)
			{
				mergeOrder = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "MergeOrder", null, null));
			}
		}
	}

	[Description("Indicates the painting style when placed in a menu or toolbar.")]
	[Category("Appearance")]
	[DefaultValue(PaintStyle.Default)]
	[Localizable(true)]
	public virtual PaintStyle PaintStyle
	{
		get
		{
			return paintStyle;
		}
		set
		{
			if (paintStyle != value)
			{
				paintStyle = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "PaintStyle", null, null));
			}
		}
	}

	[Description("Gets or sets a value indicating whether the menu item is enabled.")]
	[Localizable(true)]
	[Category("Appearance")]
	[DefaultValue(true)]
	public virtual bool Enabled
	{
		get
		{
			return !GetState(16);
		}
		set
		{
			if (SetState(16, !value))
			{
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "Enabled", null, null));
			}
		}
	}

	[Description("Determines whether the BarItem should be drawn with a Checked appearance.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public virtual bool Checked
	{
		get
		{
			return GetState(4);
		}
		set
		{
			if (SetState(4, value))
			{
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Checked", null, null));
			}
		}
	}

	[Description("Gets or sets the index value of the image displayed in the BarItem.")]
	[Editor(typeof(BarItemImageIndexEditor), typeof(UITypeEditor))]
	[TypeConverter(typeof(BarItemImageIndexConverter))]
	[Category("Appearance")]
	[Localizable(true)]
	[DefaultValue(-1)]
	public virtual int ImageIndex
	{
		get
		{
			return m_imageIndex;
		}
		set
		{
			if (m_imageIndex != value)
			{
				m_imageIndex = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "ImageIndex", null, null));
			}
		}
	}

	[Description("Gets or sets the ImageList that contains the images to display in the Label control.")]
	[Category("Appearance")]
	public virtual ImageList ImageList
	{
		get
		{
			if (imageList != null)
			{
				return imageList;
			}
			if (imageListAdv == null && barManager != null)
			{
				return barManager.ImageList;
			}
			return null;
		}
		set
		{
			if (imageList != value)
			{
				imageList = value;
				if (imageList != null)
				{
					imageListAdv = null;
				}
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "ImageList", null, null));
			}
		}
	}

	[Description("Gets or sets the ImageList that contains the images to display in the Label control.")]
	[Category("Appearance")]
	public virtual ImageListAdv ImageListAdv
	{
		get
		{
			if (imageListAdv != null)
			{
				return imageListAdv;
			}
			if (imageList == null && barManager != null)
			{
				return barManager.ImageListAdv;
			}
			return null;
		}
		set
		{
			if (imageListAdv != value)
			{
				imageListAdv = value;
				if (imageListAdv != null)
				{
					imageList = null;
				}
			}
		}
	}

	[Description("ImageList to use when the BarManager is in LargeIcons mode.")]
	[Category("Appearance")]
	public virtual ImageList LargeImageList
	{
		get
		{
			if (largeImageList != null)
			{
				return largeImageList;
			}
			if (largeImageListAdv == null && barManager != null)
			{
				return barManager.LargeImageList;
			}
			return null;
		}
		set
		{
			largeImageList = value;
			if (largeImageList != null)
			{
				largeImageListAdv = null;
			}
		}
	}

	[Description("ImageListAdv to use when the BarManager is in LargeIcons mode.")]
	[Category("Appearance")]
	public virtual ImageListAdv LargeImageListAdv
	{
		get
		{
			if (largeImageListAdv != null)
			{
				return largeImageListAdv;
			}
			if (largeImageList == null && barManager != null)
			{
				return barManager.LargeImageListAdv;
			}
			return null;
		}
		set
		{
			largeImageListAdv = value;
			if (largeImageListAdv != null)
			{
				largeImageList = null;
			}
		}
	}

	[Description("Gets or sets the ImageList that contains the images to display in the disabled Label control.")]
	[Category("Appearance")]
	public virtual ImageList DisabledImageList
	{
		get
		{
			if (m_disabledImgList != null)
			{
				return m_disabledImgList;
			}
			if (m_disabledImgListAdv == null && barManager != null)
			{
				return barManager.DisabledImageList;
			}
			return null;
		}
		set
		{
			if (value != m_disabledImgList)
			{
				m_disabledImgList = value;
				if (m_disabledImgList != null)
				{
					m_disabledImgListAdv = null;
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the ImageListAdv that contains the images to display in the disabled Label control.")]
	public virtual ImageListAdv DisabledImageListAdv
	{
		get
		{
			if (m_disabledImgListAdv != null)
			{
				return m_disabledImgListAdv;
			}
			if (m_disabledImgList == null && barManager != null)
			{
				return barManager.DisabledImageListAdv;
			}
			return null;
		}
		set
		{
			if (value != m_disabledImgListAdv)
			{
				m_disabledImgListAdv = value;
				if (m_disabledImgListAdv != null)
				{
					m_disabledImgList = null;
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("ImageList with disabled images to use when the BarManager is in LargeIcons mode.")]
	public virtual ImageList DisabledLargeImageList
	{
		get
		{
			if (m_disabledLargeImgList != null)
			{
				return m_disabledLargeImgList;
			}
			if (m_disabledLargeImgListAdv == null && barManager != null)
			{
				return barManager.DisabledLargeImageList;
			}
			return null;
		}
		set
		{
			if (value != m_disabledLargeImgList)
			{
				m_disabledLargeImgList = value;
				if (m_disabledLargeImgList != null)
				{
					m_disabledLargeImgListAdv = null;
				}
			}
		}
	}

	[Description("ImageListAdv with disabled images to use when the BarManager is in LargeIcons mode.")]
	[Category("Appearance")]
	public virtual ImageListAdv DisabledLargeImageListAdv
	{
		get
		{
			if (m_disabledLargeImgListAdv != null)
			{
				return m_disabledLargeImgListAdv;
			}
			if (m_disabledLargeImgList == null && barManager != null)
			{
				return barManager.DisabledLargeImageListAdv;
			}
			return null;
		}
		set
		{
			if (value != m_disabledLargeImgListAdv)
			{
				m_disabledLargeImgListAdv = value;
				if (m_disabledLargeImgListAdv != null)
				{
					m_disabledLargeImgList = null;
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the ImageList that contains the images to display for item's highlighted state.")]
	public virtual ImageList HighlightImageList
	{
		get
		{
			if (m_highlightImgList != null)
			{
				return m_highlightImgList;
			}
			if (m_highlightImgListAdv == null && barManager != null)
			{
				return barManager.HighlightImageList;
			}
			return null;
		}
		set
		{
			if (value != m_highlightImgList)
			{
				m_highlightImgList = value;
				if (m_highlightImgList != null)
				{
					m_highlightImgListAdv = null;
				}
			}
		}
	}

	[Description("Gets or sets the ImageListAdv that contains the images to display for item's highlighted state.")]
	[Category("Appearance")]
	public virtual ImageListAdv HighlightImageListAdv
	{
		get
		{
			if (m_highlightImgListAdv != null)
			{
				return m_highlightImgListAdv;
			}
			if (m_highlightImgList == null && barManager != null)
			{
				return barManager.HighlightImageListAdv;
			}
			return null;
		}
		set
		{
			if (value != m_highlightImgListAdv)
			{
				m_highlightImgListAdv = value;
				if (m_highlightImgListAdv != null)
				{
					m_highlightImgList = null;
				}
			}
		}
	}

	[Description("Gets or sets the ImageList that contains the images to display during item's highlighted state.")]
	[Category("Appearance")]
	public virtual ImageList HighlightLargeImageList
	{
		get
		{
			if (m_highlightLargeImgList != null)
			{
				return m_highlightLargeImgList;
			}
			if (m_highlightLargeImgListAdv == null && barManager != null)
			{
				return barManager.HighlightLargeImageList;
			}
			return null;
		}
		set
		{
			if (value != m_highlightLargeImgList)
			{
				m_highlightLargeImgList = value;
				if (m_highlightLargeImgList != null)
				{
					m_highlightLargeImgListAdv = null;
				}
			}
		}
	}

	[Description("Gets or sets the ImageListAdv that contains the images to display during item's highlighted state.")]
	[Category("Appearance")]
	public virtual ImageListAdv HighlightLargeImageListAdv
	{
		get
		{
			if (m_highlightLargeImgListAdv != null)
			{
				return m_highlightLargeImgListAdv;
			}
			if (m_highlightLargeImgList == null && barManager != null)
			{
				return barManager.HighlightLargeImageListAdv;
			}
			return null;
		}
		set
		{
			if (value != m_highlightLargeImgListAdv)
			{
				m_highlightLargeImgListAdv = value;
				if (m_highlightLargeImgListAdv != null)
				{
					m_highlightLargeImgList = null;
				}
			}
		}
	}

	[Description("Gets or sets the ImageList that contains the images to display during item's pressed state.")]
	[Category("Appearance")]
	public virtual ImageList PressedImageList
	{
		get
		{
			if (m_pressedImageList != null)
			{
				return m_pressedImageList;
			}
			if (m_pressedImageListAdv == null && barManager != null)
			{
				return barManager.PressedImageList;
			}
			return null;
		}
		set
		{
			if (value != m_pressedImageList)
			{
				m_pressedImageList = value;
				if (m_pressedImageList != null)
				{
					m_pressedImageListAdv = null;
				}
			}
		}
	}

	[Description("Gets or sets the ImageListAdv that contains the images to display during item's pressed state.")]
	[Category("Appearance")]
	public virtual ImageListAdv PressedImageListAdv
	{
		get
		{
			if (m_pressedImageListAdv != null)
			{
				return m_pressedImageListAdv;
			}
			if (m_pressedImageList == null && barManager != null)
			{
				return barManager.PressedImageListAdv;
			}
			return null;
		}
		set
		{
			if (value != m_pressedImageListAdv)
			{
				m_pressedImageListAdv = value;
				if (m_pressedImageListAdv != null)
				{
					m_pressedImageList = null;
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the ImageList that contains the images to display during item's pressed state.")]
	public virtual ImageList PressedLargeImageList
	{
		get
		{
			if (m_pressedLargeImageList != null)
			{
				return m_pressedLargeImageList;
			}
			if (m_pressedLargeImageListAdv == null && barManager != null)
			{
				return barManager.PressedLargeImageList;
			}
			return null;
		}
		set
		{
			if (value != m_pressedLargeImageList)
			{
				m_pressedLargeImageList = value;
				if (m_pressedLargeImageList != null)
				{
					m_pressedLargeImageListAdv = null;
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the ImageListAdv that contains the images to display during item's pressed state.")]
	public virtual ImageListAdv PressedLargeImageListAdv
	{
		get
		{
			if (m_pressedLargeImageListAdv != null)
			{
				return m_pressedLargeImageListAdv;
			}
			if (m_pressedLargeImageList == null && barManager != null)
			{
				return barManager.PressedLargeImageListAdv;
			}
			return null;
		}
		set
		{
			if (value != m_pressedLargeImageListAdv)
			{
				m_pressedLargeImageListAdv = value;
				if (m_pressedLargeImageListAdv != null)
				{
					m_pressedLargeImageList = null;
				}
			}
		}
	}

	protected internal bool IsValidDisabledImageIndex
	{
		get
		{
			IList disabledImageListInternal = GetDisabledImageListInternal(bLargeIcons: false);
			if (disabledImageListInternal != null && DisabledImageIndex >= 0)
			{
				return DisabledImageIndex < disabledImageListInternal.Count;
			}
			return false;
		}
	}

	[Description("Gets or sets the index value of the image displayed in the highlighted BarItem.")]
	[Editor(typeof(HighlightedImageIndexEditor), typeof(UITypeEditor))]
	[Localizable(true)]
	[DefaultValue(-1)]
	[Category("Appearance")]
	[TypeConverter(typeof(HighlightedImageIndexConverter))]
	public virtual int HighlightedImageIndex
	{
		get
		{
			return m_highlightedImageIndex;
		}
		set
		{
			if (value != m_highlightedImageIndex)
			{
				m_highlightedImageIndex = value;
			}
		}
	}

	[Editor(typeof(PressedImageIndexEditor), typeof(UITypeEditor))]
	[Description("Gets or sets the index value of the image displayed in the pressed BarItem.")]
	[Category("Appearance")]
	[TypeConverter(typeof(PressedImageIndexConverter))]
	[Localizable(true)]
	[DefaultValue(-1)]
	public virtual int PressedImageIndex
	{
		get
		{
			return m_pressedImageIndex;
		}
		set
		{
			if (value != m_pressedImageIndex)
			{
				m_pressedImageIndex = value;
			}
		}
	}

	[Editor(typeof(DisabledImageIndexEditor), typeof(UITypeEditor))]
	[Category("Appearance")]
	[DefaultValue(-1)]
	[Localizable(true)]
	[Description("Gets or sets the index value of the image displayed in the disabled BarItem.")]
	[TypeConverter(typeof(DisabledImageIndexConverter))]
	public virtual int DisabledImageIndex
	{
		get
		{
			return m_disabledImgIndex;
		}
		set
		{
			if (value != m_disabledImgIndex)
			{
				m_disabledImgIndex = value;
			}
		}
	}

	[Description("Changes the BarItems visibility when placed in a menu or toolbar.")]
	[DefaultValue(true)]
	[Category("Appearance")]
	[Localizable(true)]
	public virtual bool Visible
	{
		get
		{
			return GetState(32);
		}
		set
		{
			if (SetState(32, value))
			{
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Visible", null, null));
			}
		}
	}

	[DefaultValue(null)]
	[Category("Misc")]
	[TypeConverter(typeof(StringConverter))]
	[Description("An object that contains data about this BarItem.")]
	public virtual object Tag
	{
		get
		{
			return tag;
		}
		set
		{
			tag = value;
		}
	}

	[DefaultValue("")]
	[Category("Appearance")]
	[MergableProperty(false)]
	[Bindable(BindableSupport.Yes)]
	[Editor(typeof(MultilineStringEditor), typeof(UITypeEditor))]
	[Description("The BarItem's caption.")]
	[Localizable(true)]
	public virtual string Text
	{
		get
		{
			return text;
		}
		set
		{
			if (!(text != value))
			{
				return;
			}
			string oldValue = text;
			text = value;
			if (barManager != null)
			{
				if (ID == string.Empty || IDGenerator.IsAutoGeneratedID(ID))
				{
					string nextID = text;
					while (!barManager.Items.IsValidItemID(this, nextID))
					{
						nextID = IDGenerator.GetNextID(nextID);
					}
					ID = nextID;
				}
			}
			else if (ID == string.Empty && value != string.Empty)
			{
				ID = text;
			}
			OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Text", oldValue, value));
		}
	}

	[Description("The BarItem's ID.")]
	[MergableProperty(false)]
	[DefaultValue("")]
	[Category("ID")]
	public virtual string ID
	{
		get
		{
			return id;
		}
		set
		{
			if (!(id != value))
			{
				return;
			}
			if (barManager != null && !barManager.Items.IsValidItemID(this, value))
			{
				if (barManager.DesignMode)
				{
					MessageBox.Show("ID Update Failed. A BarItem with the same ID value already exists in the BarManager. Set the ID value of this BarItem to be unique.");
					return;
				}
				MessageBox.Show(SR.GetString("DuplicateNameWarning", value));
			}
			else
			{
				string oldValue = id;
				id = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.None, "ID", oldValue, value));
			}
		}
	}

	[Localizable(true)]
	[Editor(typeof(MultilineStringEditor), typeof(UITypeEditor))]
	[Category("Appearance")]
	[DefaultValue("")]
	[Description("The BarItem's tooltip.")]
	[MergableProperty(false)]
	[Bindable(BindableSupport.Yes)]
	public virtual string Tooltip
	{
		get
		{
			return tooltip;
		}
		set
		{
			tooltip = value;
		}
	}

	[Category("ID")]
	[Description("The Category under which this BarItem will be listed in the Customization Dialog.")]
	[DefaultValue(-1)]
	public virtual int CategoryIndex
	{
		get
		{
			return categoryIndex;
		}
		set
		{
			if (categoryIndex == value)
			{
				return;
			}
			if (barManager != null && barManager.Categories.Count <= value)
			{
				if (barManager.DesignMode)
				{
					MessageBox.Show("Category Update Failed. The new value exceeded the available Categories count. Please specify a value less than " + barManager.Categories.Count);
				}
				return;
			}
			int num = categoryIndex;
			categoryIndex = value;
			if (categoryIndex != -1 && num == -1 && barManager != null)
			{
				string text = ID;
				while (!barManager.Items.IsValidItemID(this, text))
				{
					text = IDGenerator.GetNextID(text);
				}
				ID = text;
			}
			OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "CategoryIndex", num, value));
		}
	}

	[DefaultValue(Shortcut.None)]
	[Category("Behavior")]
	[Localizable(true)]
	[Description("Indicates the shortcut key associated with the menu item.")]
	public virtual Shortcut Shortcut
	{
		get
		{
			return shortcut;
		}
		set
		{
			if (this.shortcut != value)
			{
				Shortcut shortcut = this.shortcut;
				this.shortcut = value;
				if (this.shortcut == Shortcut.None)
				{
					shortcutText = null;
				}
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "Shortcut", shortcut, this.shortcut));
			}
		}
	}

	[Description("Specifies the custom shortcut text to be used in the display.")]
	[Category("Behavior")]
	[Localizable(true)]
	public virtual string ShortcutText
	{
		get
		{
			if (shortcutText != null)
			{
				return shortcutText;
			}
			if (Shortcut == Shortcut.None)
			{
				return string.Empty;
			}
			return TypeDescriptor.GetConverter(typeof(Keys)).ConvertToString((int)Shortcut);
		}
		set
		{
			if (shortcutText != value)
			{
				shortcutText = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "ShortcutText", null, null));
			}
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("The BarManager to which this BarItem will be parented to.")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Category("ID")]
	public virtual BarManager Manager
	{
		get
		{
			return barManager;
		}
		set
		{
			if (barManager == value)
			{
				return;
			}
			if (barManager != null && barManager.Items.IndexOf(this) != -1)
			{
				if (barManager.SelectedItem == this)
				{
					barManager.SelectedItem = null;
				}
				barManager.Items.Remove(this);
			}
			barManager = value;
			if (barManager == null)
			{
				return;
			}
			MainFrameBarManager mainFrameBarManager = barManager.MainFrameBarManager;
			if (mainFrameBarManager != null && !mainFrameBarManager.DesignMode && !mainFrameBarManager.Initializing && mainFrameBarManager.NeedSaveCustomData)
			{
				m_bDesignTimeCreated = false;
			}
			bool flag = true;
			foreach (BarItem item in barManager.Items)
			{
				if (item.ID == ID)
				{
					flag = false;
					break;
				}
			}
			if (flag && barManager.Items.IndexOf(this) == -1)
			{
				barManager.Items.Add(this);
			}
		}
	}

	internal bool DesignTimeCreated
	{
		get
		{
			return m_bDesignTimeCreated;
		}
		set
		{
			if (m_bDesignTimeCreated != value)
			{
				m_bDesignTimeCreated = value;
			}
		}
	}

	[Localizable(true)]
	[Category("Appearance")]
	[DefaultValue(true)]
	[Description("Indicate whether this bar item will appear in it's\tparent's partial menus list.")]
	public virtual bool IsRecentlyUsedItem
	{
		get
		{
			return !GetState(128);
		}
		set
		{
			if (SetState(128, !value))
			{
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "IsRecentlyUsedItem", null, null));
			}
		}
	}

	[DefaultValue(false)]
	[Description("Specifies whether the UpdateUI event should be fired in the next Application Idle event.")]
	[Category("Behavior")]
	public bool UpdateUIOnAppIdle
	{
		get
		{
			return _uiUpdateOnAppIdle;
		}
		set
		{
			if (_uiUpdateOnAppIdle != value)
			{
				_uiUpdateOnAppIdle = value;
				if (_uiUpdateOnAppIdle)
				{
					Application.Idle += OnIdle;
				}
				else
				{
					Application.Idle -= OnIdle;
				}
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Obsolete("This property is obsolete, please use the UpdateUIOnAppIdle instead.")]
	public bool UpdateUIRequired
	{
		get
		{
			return UpdateUIOnAppIdle;
		}
		set
		{
			UpdateUIOnAppIdle = value;
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Browsable(false)]
	public bool DrawImageMirrored
	{
		get
		{
			return m_bDrawImageMirrored;
		}
		set
		{
			if (value != m_bDrawImageMirrored)
			{
				m_bDrawImageMirrored = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "DrawImageMirrored", !value, value));
			}
		}
	}

	[DocumentationExclude]
	internal virtual bool HintViaHotKeyPrefix
	{
		get
		{
			return m_bHintViaHotKeyPrefix;
		}
		set
		{
			m_bHintViaHotKeyPrefix = value;
		}
	}

	[DocumentationExclude]
	internal bool LargeIcons
	{
		get
		{
			return m_bLargeIcons;
		}
		set
		{
			m_bLargeIcons = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("This property can be optionally set to be the top level form that hosts this BarItem in the case that the BarItem is also hosted by another form embedded inside a UserControl.")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public Form TopLevelForm
	{
		get
		{
			return topLevelForm;
		}
		set
		{
			topLevelForm = value;
		}
	}

	[Description("Indicates whether the tooltip is shown.")]
	[Category("Appearance")]
	[DefaultValue(true)]
	public bool ShowTooltip
	{
		get
		{
			return m_bShowTooltip;
		}
		set
		{
			if (value != m_bShowTooltip)
			{
				m_bShowTooltip = value;
				OnShowTooltipChanged();
			}
		}
	}

	[DefaultValue(null)]
	[Category("Appearance")]
	[Description("Gets or sets the image displayed in the barItem.")]
	public ImageExt Image
	{
		get
		{
			return m_image;
		}
		set
		{
			if (value != m_image)
			{
				m_image = value;
				if (m_image != null)
				{
					m_image.ImageTransparentColor = m_imageTransparentColor;
				}
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "Image", null, null));
			}
		}
	}

	[Description("Indicates the transparency color for the image.")]
	[Category("Appearance")]
	public Color ImageTransparentColor
	{
		get
		{
			return m_imageTransparentColor;
		}
		set
		{
			if (m_imageTransparentColor != value)
			{
				Color imageTransparentColor = m_imageTransparentColor;
				m_imageTransparentColor = value;
				if (value != Color.Empty && m_image != null)
				{
					m_image.ImageTransparentColor = value;
					OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "ImageTransparentColor", imageTransparentColor, m_imageTransparentColor));
				}
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(null)]
	[Description("Disabled image.")]
	public ImageExt DisabledImage
	{
		get
		{
			return m_disabledImage;
		}
		set
		{
			if (value != m_disabledImage)
			{
				m_disabledImage = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "DisabledImage", null, null));
			}
		}
	}

	[Description("Highlighted image.")]
	[DefaultValue(null)]
	[Category("Appearance")]
	public ImageExt HighlightedImage
	{
		get
		{
			return m_highlightImage;
		}
		set
		{
			if (value != m_highlightImage)
			{
				m_highlightImage = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "HighlightImage", null, null));
			}
		}
	}

	[Description("Size for Image.")]
	[Category("Appearance")]
	public Size ImageSize
	{
		get
		{
			return m_imageSize;
		}
		set
		{
			if (value != m_imageSize)
			{
				m_imageSize = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "ImageSize", null, null));
			}
		}
	}

	[Description("Gets or sets value whether doubleClick event is triggered on demand.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool HandleDoubleClick
	{
		get
		{
			return m_handleDoubleClick;
		}
		set
		{
			m_handleDoubleClick = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool DesignMode => base.DesignMode;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[TypeConverter(typeof(ControlBindingsConverter))]
	[Description("Lets you data-bind certain properties of the Form containing the MainFrameBarManager of this BarItem.")]
	[Category("Data")]
	[ParenthesizePropertyName(true)]
	[RefreshProperties(RefreshProperties.All)]
	public ControlBindingsCollection DataBindings
	{
		get
		{
			if (Manager != null && Manager.Form != null)
			{
				return Manager.Form.DataBindings;
			}
			return null;
		}
	}

	string IDataBindingSupport.PropertyNamePrefix => "MenuItem:" + ID;

	[Category("Action")]
	[Description("Occurs when the menu item is clicked by the user.")]
	public event EventHandler Click;

	[Category("Action")]
	[Description("Occurs when the user selects a BarItem during menu navigation using mouse or keyboard.")]
	public event EventHandler Selected;

	[Category("Action")]
	[Description("Occurs when the item has be unselected during user navigation via mouse or keyboard.")]
	public event EventHandler Unselected;

	[Category("Property Changed")]
	[Description("Occurs when a Property's value changes in this object.")]
	public event SyncfusionPropertyChangedEventHandler PropertyChanged;

	[DocumentationExclude]
	[Browsable(false)]
	public event DrawToolbarItemEventHandler DrawToolbarItem;

	[Category("Layout")]
	[Description("Occurs when a BarItem gets added to or removed from a ParentBarItem or Bar.")]
	public event ContainmentChangedEventHandler ContainmentChanged;

	[Description("Occurs when a BarItem gets dragged over a ParentBarItem or Bar during user-customization.")]
	[Category("Drag Drop")]
	public event CanDropEventHandler CanDragDrop;

	[Description("Occurs when the BarItem.UpdateUIOnAppIdle or BarManager.UpdateUIMFCStyle flag is set to true.")]
	[Category("Appearance")]
	public event EventHandler UpdateUI;

	[Category("Appearance")]
	[Description("Lets you provide a custom font for this bar item.")]
	public event ProvideFontInfoEventHandler ProvideFontInfo;

	[Description("Occurs after the PopupItem is painted.")]
	public event PopupItemPaintEventHandler AfterPopupItemPaint;

	[Description("Occurs before the PopupItem is painted.")]
	public event PopupItemPaintEventHandler BeforePopupItemPaint;

	[Category("Property Changed")]
	[Description("Occurs when ShowTooltip is changes.")]
	public event EventHandler ShowTooltipChanged;

	[Description("Occurs when the menu item is double clicked by the user.")]
	[Category("Action")]
	public event EventHandler DoubleClick;

	public BarItem()
		: this(MenuMerge.Add, 0, Shortcut.None, "", null, null, null)
	{
	}

	public BarItem(string text)
		: this(MenuMerge.Add, 0, Shortcut.None, text, null, null, null)
	{
	}

	public BarItem(string text, EventHandler onClick)
		: this(MenuMerge.Add, 0, Shortcut.None, text, onClick, null, null)
	{
	}

	public BarItem(string text, EventHandler onClick, Shortcut shortcut)
		: this(MenuMerge.Add, 0, shortcut, text, onClick, null, null)
	{
	}

	public BarItem(MenuMerge mergeType, int mergeOrder, Shortcut shortcut, string text, EventHandler onClick, EventHandler onPopup, EventHandler onSelect)
	{
		Init(mergeType, shortcut, text, onClick, onSelect);
	}

	private void Init(MenuMerge mergeType, Shortcut shortcut, string text, EventHandler onClick, EventHandler onSelect)
	{
		state = 0;
		m_disabledImgIndex = -1;
		m_imageIndex = -1;
		this.mergeType = mergeType;
		mergeOrder = 0;
		this.shortcut = shortcut;
		this.text = text;
		Click += onClick;
		Selected += onSelect;
		Visible = true;
		paintStyle = PaintStyle.Default;
	}

	protected override void Dispose(bool disposing)
	{
		m_bIsDisposing = true;
		if (disposing)
		{
			if (Manager != null && Manager.SelectedItem == this)
			{
				Manager.SelectedItem = null;
			}
			if (_uiUpdateOnAppIdle)
			{
				Application.Idle -= OnIdle;
			}
			barManager = null;
			m_bIsDisposed = true;
		}
		base.Dispose(disposing);
		m_bIsDisposing = false;
	}

	[DocumentationExclude]
	protected bool GetState(int flag)
	{
		return (state & flag) > 0;
	}

	[DocumentationExclude]
	protected bool SetState(int flag, bool value)
	{
		if (GetState(flag) != value)
		{
			if (value)
			{
				state |= flag;
			}
			else
			{
				state &= ~flag;
			}
			return true;
		}
		return false;
	}

	public bool ShouldSerializePadding()
	{
		if (m_padding.Equals(Point.Empty))
		{
			return false;
		}
		return true;
	}

	protected bool ShouldSerializeCustomNormalTextColor()
	{
		return CustomNormalTextColor != Color.Empty;
	}

	protected void ResetCustomNormalTextColor()
	{
		CustomNormalTextColor = Color.Empty;
	}

	protected bool ShouldSerializeCustomDisabledTextColor()
	{
		return CustomDisabledTextColor != Color.Empty;
	}

	protected void ResetCustomDisabledTextColor()
	{
		CustomDisabledTextColor = Color.Empty;
	}

	protected bool ShouldSerializeCustomActiveTextColor()
	{
		return CustomActiveTextColor != Color.Empty;
	}

	protected void ResetCustomActiveTextColor()
	{
		CustomActiveTextColor = Color.Empty;
	}

	private bool ShouldSerializeCustomTextFont()
	{
		return m_fCustomTextFont != null;
	}

	private void ResetCustomTextFont()
	{
		m_fCustomTextFont = null;
	}

	protected bool ShouldSerializeImageList()
	{
		return imageList != null;
	}

	protected void ResetImageList()
	{
		imageList = null;
	}

	protected bool ShouldSerializeImageListAdv()
	{
		return imageListAdv != null;
	}

	protected void ResetImageListAdv()
	{
		imageListAdv = null;
	}

	protected bool ShouldSerializeLargeImageList()
	{
		return largeImageList != null;
	}

	protected void ResetLargeImageList()
	{
		largeImageList = null;
	}

	protected bool ShouldSerializeLargeImageListAdv()
	{
		return largeImageListAdv != null;
	}

	protected void ResetLargeImageListAdv()
	{
		largeImageListAdv = null;
	}

	protected bool ShouldSerializeDisabledImageList()
	{
		return m_disabledImgList != null;
	}

	protected void ResetDisabledImageList()
	{
		m_disabledImgList = null;
	}

	private bool ShouldSerializeDisabledImageListAdv()
	{
		return m_disabledImgListAdv != null;
	}

	private void ResetDisabledImageListAdv()
	{
		m_disabledImgListAdv = null;
	}

	protected bool ShouldSerializeDisabledLargeImageList()
	{
		return m_disabledLargeImgList != null;
	}

	protected void ResetDisabledLargeImageList()
	{
		m_disabledLargeImgList = null;
	}

	private bool ShouldSerializeDisabledLargeImageListAdv()
	{
		return m_disabledLargeImgListAdv != null;
	}

	private void ResetDisabledLargeImageListAdv()
	{
		m_disabledLargeImgListAdv = null;
	}

	protected bool ShouldSerializeHighlightImageList()
	{
		return m_highlightImgList != null;
	}

	protected void ResetHighlightImageList()
	{
		m_highlightImgList = null;
	}

	protected bool ShouldSerializeHighlightImageListAdv()
	{
		return m_highlightImgListAdv != null;
	}

	protected void ResetHighlightImageListAdv()
	{
		m_highlightImgListAdv = null;
	}

	protected bool ShouldSerializeHighlightLargeImageList()
	{
		return m_highlightLargeImgList != null;
	}

	protected void ResetHighlightLargeImageList()
	{
		m_highlightLargeImgList = null;
	}

	protected bool ShouldSerializeHighlightLargeImageListAdv()
	{
		return m_highlightLargeImgListAdv != null;
	}

	protected void ResetHighlightLargeImageListAdv()
	{
		m_highlightLargeImgListAdv = null;
	}

	protected bool ShouldSerializePressedImageList()
	{
		return m_pressedImageList != null;
	}

	protected void ResetPressedImageList()
	{
		m_pressedImageList = null;
	}

	protected bool ShouldSerializePressedImageListAdv()
	{
		return m_pressedImageListAdv != null;
	}

	protected void ResetPressedImageListAdv()
	{
		m_pressedImageListAdv = null;
	}

	protected bool ShouldSerializePressedLargeImageList()
	{
		return m_pressedLargeImageList != null;
	}

	protected void ResetPressedLargeImageList()
	{
		m_pressedLargeImageList = null;
	}

	protected bool ShouldSerializePressedLargeImageListAdv()
	{
		return m_pressedLargeImageListAdv != null;
	}

	protected void ResetPressedLargeImageListAdv()
	{
		m_pressedLargeImageListAdv = null;
	}

	protected internal bool IsValidHighlightedImageIndex(bool bLargeIcons)
	{
		IList highlightImageListInternal = GetHighlightImageListInternal(bLargeIcons);
		if (highlightImageListInternal != null && HighlightedImageIndex >= 0)
		{
			return HighlightedImageIndex < highlightImageListInternal.Count;
		}
		return false;
	}

	protected internal bool IsValidPressedImageIndex(bool bLargeIcons)
	{
		IList pressedImageListInternal = GetPressedImageListInternal(bLargeIcons);
		if (pressedImageListInternal != null && PressedImageIndex >= 0)
		{
			return PressedImageIndex < pressedImageListInternal.Count;
		}
		return false;
	}

	[DocumentationExclude]
	public void ResetShortcutText()
	{
		ShortcutText = null;
	}

	[DocumentationExclude]
	public bool ShouldSerializeShortcutText()
	{
		return shortcutText != null;
	}

	private void OnIdle(object sender, EventArgs e)
	{
		if (UpdateUIOnAppIdle)
		{
			OnUpdateUI(EventArgs.Empty);
		}
	}

	protected bool ShouldSerializeImageTransparentColor()
	{
		return m_imageTransparentColor != Color.Empty;
	}

	protected void ResetImageTransparentColor()
	{
		m_imageTransparentColor = Color.Empty;
	}

	protected void ResetImageSize()
	{
		ImageSize = DEF_IMAGE_SIZE;
	}

	protected bool ShouldSerializeImageSize()
	{
		return m_imageSize != DEF_IMAGE_SIZE;
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public virtual object Clone()
	{
		BarItem barItem = new BarItem();
		CopyTo(barItem);
		return barItem;
	}

	public virtual void CopyTo(BarItem barItem)
	{
		barItem.CategoryIndex = CategoryIndex;
		barItem.Checked = Checked;
		barItem.Enabled = Enabled;
		barItem.ImageIndex = ImageIndex;
		barItem.MergeOrder = MergeOrder;
		barItem.MergeType = MergeType;
		barItem.PaintStyle = PaintStyle;
		barItem.Shortcut = Shortcut;
		barItem.Text = Text;
		barItem.Tooltip = Tooltip;
		barItem.ID = ID;
		barItem.ImageList = ImageList;
		barItem.ImageListAdv = ImageListAdv;
		barItem.LargeImageList = LargeImageList;
		barItem.LargeImageListAdv = LargeImageListAdv;
		barItem.DisabledImageIndex = DisabledImageIndex;
		barItem.DisabledImageList = DisabledImageList;
		barItem.DisabledImageListAdv = DisabledImageListAdv;
		barItem.DisabledLargeImageList = DisabledLargeImageList;
		barItem.DisabledLargeImageListAdv = DisabledLargeImageListAdv;
		barItem.HighlightedImageIndex = HighlightedImageIndex;
		barItem.HighlightImageList = HighlightImageList;
		barItem.HighlightImageListAdv = HighlightImageListAdv;
		barItem.HighlightLargeImageList = HighlightLargeImageList;
		barItem.HighlightLargeImageListAdv = HighlightLargeImageListAdv;
		barItem.PressedImageList = PressedImageList;
		barItem.PressedImageListAdv = PressedImageListAdv;
		barItem.PressedLargeImageList = PressedLargeImageList;
		barItem.PressedLargeImageListAdv = PressedLargeImageListAdv;
		barItem.DesignTimeCreated = DesignTimeCreated;
		barItem.Click = this.Click;
	}

	protected BarItem(SerializationInfo info, StreamingContext context)
		: this()
	{
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			SerializationEntry current = enumerator.Current;
			switch (current.Name)
			{
			case "CategoryIndex":
				if (current.Value is string)
				{
					CategoryIndex = (int)Convert.ChangeType(current.Value, typeof(int));
				}
				else
				{
					CategoryIndex = (int)current.Value;
				}
				break;
			case "Checked":
				if (current.Value is string)
				{
					Checked = (bool)Convert.ChangeType(current.Value, typeof(bool));
				}
				else
				{
					Checked = (bool)current.Value;
				}
				break;
			case "Enabled":
				if (current.Value is string)
				{
					Enabled = (bool)Convert.ChangeType(current.Value, typeof(bool));
				}
				else
				{
					Enabled = (bool)current.Value;
				}
				break;
			case "ImageIndex":
				if (current.Value is string)
				{
					ImageIndex = (int)Convert.ChangeType(current.Value, typeof(int));
				}
				else
				{
					ImageIndex = (int)current.Value;
				}
				break;
			case "DisabledImageIndex":
				if (current.Value is string)
				{
					DisabledImageIndex = (int)Convert.ChangeType(current.Value, typeof(int));
				}
				else
				{
					DisabledImageIndex = (int)current.Value;
				}
				break;
			case "HighlightedImageIndex":
				if (current.Value is string)
				{
					HighlightedImageIndex = (int)Convert.ChangeType(current.Value, typeof(int));
				}
				else
				{
					HighlightedImageIndex = (int)current.Value;
				}
				break;
			case "MergeOrder":
				if (current.Value is string)
				{
					MergeOrder = (int)Convert.ChangeType(current.Value, typeof(int));
				}
				else
				{
					MergeOrder = (int)current.Value;
				}
				break;
			case "MergeType":
				MergeType = (MenuMerge)current.Value;
				break;
			case "PaintStyle":
				PaintStyle = (PaintStyle)current.Value;
				break;
			case "Shortcut":
				Shortcut = (Shortcut)current.Value;
				break;
			case "Text":
				Text = (string)current.Value;
				break;
			case "Tooltip":
				Tooltip = (string)current.Value;
				break;
			case "ID":
				ID = (string)current.Value;
				break;
			case "Manager":
				Manager = (BarManager)current.Value;
				break;
			}
		}
	}

	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("CategoryIndex", CategoryIndex);
		info.AddValue("Checked", Checked);
		info.AddValue("Enabled", Enabled);
		info.AddValue("ImageIndex", ImageIndex);
		info.AddValue("MergeOrder", MergeOrder);
		info.AddValue("MergeType", MergeType);
		info.AddValue("PaintStyle", PaintStyle);
		info.AddValue("Shortcut", Shortcut);
		info.AddValue("Text", Text);
		info.AddValue("Tooltip", Tooltip);
		info.AddValue("ID", ID);
		info.AddValue("Manager", Manager);
		info.AddValue("DisabledImageIndex", DisabledImageIndex);
		info.AddValue("HighlightedImageIndex", HighlightedImageIndex);
	}

	public void PerformUpdateUI()
	{
		OnUpdateUI(EventArgs.Empty);
	}

	public void PerformDoubleClick()
	{
		if (Enabled)
		{
			if (Manager != null && !Manager.Customizing && Manager.MainFrameBarManager != null)
			{
				Manager.MainFrameBarManager.RecordRecentlyUsedItemClicked(this);
			}
			OnItemDoubleClicked(EventArgs.Empty);
			m_bDoubleClick = true;
			m_lastClickLocation = Cursor.Position;
		}
	}

	public void PerformClick()
	{
		if (Enabled)
		{
			if (Manager != null && !Manager.Customizing && Manager.MainFrameBarManager != null)
			{
				Manager.MainFrameBarManager.RecordRecentlyUsedItemClicked(this);
			}
			OnItemClicked(EventArgs.Empty);
			m_bDoubleClick = false;
			m_tiksLastClick = DateTime.Now.Ticks;
			m_lastClickLocation = Cursor.Position;
		}
	}

	public void PerformSelected()
	{
		if (Manager == null || !Manager.Customizing)
		{
			OnSelected(EventArgs.Empty);
		}
	}

	public void PerformUnselected()
	{
		if (Manager == null || !Manager.Customizing)
		{
			OnUnselected(EventArgs.Empty);
		}
	}

	internal IList GetImageListInternal(bool bLargeIcons)
	{
		if (bLargeIcons)
		{
			ImageListAdv imageListAdv = LargeImageListAdv;
			if (imageListAdv != null)
			{
				return imageListAdv.Images;
			}
			ImageList imageList = LargeImageList;
			if (imageList != null)
			{
				return imageList.Images;
			}
		}
		else
		{
			ImageListAdv imageListAdv2 = ImageListAdv;
			if (imageListAdv2 != null)
			{
				return imageListAdv2.Images;
			}
			ImageList imageList2 = ImageList;
			if (imageList2 != null)
			{
				return imageList2.Images;
			}
		}
		return null;
	}

	internal IList GetDisabledImageListInternal(bool bLargeIcons)
	{
		if (bLargeIcons)
		{
			ImageListAdv disabledLargeImageListAdv = DisabledLargeImageListAdv;
			if (disabledLargeImageListAdv != null)
			{
				return disabledLargeImageListAdv.Images;
			}
			ImageList disabledLargeImageList = DisabledLargeImageList;
			if (disabledLargeImageList != null)
			{
				return disabledLargeImageList.Images;
			}
		}
		else
		{
			ImageListAdv disabledImageListAdv = DisabledImageListAdv;
			if (disabledImageListAdv != null)
			{
				return disabledImageListAdv.Images;
			}
			ImageList disabledImageList = DisabledImageList;
			if (disabledImageList != null)
			{
				return disabledImageList.Images;
			}
		}
		return null;
	}

	internal IList GetHighlightImageListInternal(bool bLargeIcons)
	{
		if (bLargeIcons)
		{
			ImageListAdv highlightLargeImageListAdv = HighlightLargeImageListAdv;
			if (highlightLargeImageListAdv != null)
			{
				return highlightLargeImageListAdv.Images;
			}
			ImageList highlightLargeImageList = HighlightLargeImageList;
			if (highlightLargeImageList != null)
			{
				return highlightLargeImageList.Images;
			}
		}
		else
		{
			ImageListAdv highlightImageListAdv = HighlightImageListAdv;
			if (highlightImageListAdv != null)
			{
				return highlightImageListAdv.Images;
			}
			ImageList highlightImageList = HighlightImageList;
			if (highlightImageList != null)
			{
				return highlightImageList.Images;
			}
		}
		return null;
	}

	internal IList GetPressedImageListInternal(bool bLargeIcons)
	{
		if (bLargeIcons)
		{
			ImageListAdv pressedLargeImageListAdv = PressedLargeImageListAdv;
			if (pressedLargeImageListAdv != null)
			{
				return pressedLargeImageListAdv.Images;
			}
			ImageList pressedLargeImageList = PressedLargeImageList;
			if (pressedLargeImageList != null)
			{
				return pressedLargeImageList.Images;
			}
		}
		else
		{
			ImageListAdv pressedImageListAdv = PressedImageListAdv;
			if (pressedImageListAdv != null)
			{
				return pressedImageListAdv.Images;
			}
			ImageList pressedImageList = PressedImageList;
			if (pressedImageList != null)
			{
				return pressedImageList.Images;
			}
		}
		return null;
	}

	internal Size GetImageSizeInternal(bool bLargeIcons)
	{
		if (Image != null)
		{
			return ImageSize;
		}
		if (bLargeIcons)
		{
			ImageListAdv imageListAdv = LargeImageListAdv;
			if (imageListAdv != null)
			{
				return imageListAdv.ImageSize;
			}
			ImageList imageList = LargeImageList;
			if (imageList != null)
			{
				return imageList.ImageSize;
			}
		}
		else
		{
			ImageListAdv imageListAdv2 = ImageListAdv;
			if (imageListAdv2 != null)
			{
				return imageListAdv2.ImageSize;
			}
			ImageList imageList2 = ImageList;
			if (imageList2 != null)
			{
				return imageList2.ImageSize;
			}
		}
		return Size.Empty;
	}

	protected internal virtual void OnAfterPopupItemPaint(PopupItemPaintEventArgs eventArgs)
	{
		if (this.AfterPopupItemPaint != null)
		{
			this.AfterPopupItemPaint(this, eventArgs);
		}
	}

	protected internal virtual void OnBeforePopupItemPaint(PopupItemPaintEventArgs eventArgs)
	{
		if (this.BeforePopupItemPaint != null)
		{
			this.BeforePopupItemPaint(this, eventArgs);
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	protected internal virtual bool OnDrawToolbarItem(DrawToolbarItemEventArgs eventArgs)
	{
		if (this.DrawToolbarItem != null)
		{
			this.DrawToolbarItem(this, eventArgs);
			return true;
		}
		return false;
	}

	protected internal virtual void OnPropertyChanged(SyncfusionPropertyChangedEventArgs args)
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, args);
		}
	}

	protected internal virtual void OnCanDragDrop(CanDragDropEventArgs args)
	{
		if (this.CanDragDrop != null)
		{
			this.CanDragDrop(this, args);
		}
	}

	protected internal virtual void OnUpdateUI(EventArgs args)
	{
		if (this.UpdateUI != null)
		{
			this.UpdateUI(this, args);
		}
	}

	protected internal virtual void OnProvideFontInfo(ProvideFontInfoEventArgs args)
	{
		if (CustomTextFont != null && CustomTextFont != args.Font)
		{
			args.Font = CustomTextFont;
		}
		if (this.ProvideFontInfo != null)
		{
			this.ProvideFontInfo(this, args);
		}
	}

	protected internal virtual void OnContainmentChanged(ContainmentChangedEventArgs args)
	{
		if (this.ContainmentChanged != null)
		{
			this.ContainmentChanged(this, args);
		}
	}

	protected virtual void OnItemClicked(EventArgs args)
	{
		bool flag = false;
		Form form = null;
		if (Manager != null)
		{
			form = Manager.Form;
			MessageFilterEntryHelper.Suspend(Manager.Form);
			flag = true;
		}
		if (Manager != null)
		{
			Manager.OnItemClicked(new BarItemClickedEventArgs(this));
		}
		if (this.Click != null)
		{
			this.Click(this, args);
		}
		if (flag)
		{
			MessageFilterEntryHelper.Resume(form);
		}
	}

	protected virtual void OnSelected(EventArgs args)
	{
		if (Enabled && this.Selected != null)
		{
			if (Manager != null)
			{
				Manager.SelectedItem = this;
			}
			this.Selected(this, args);
		}
	}

	protected virtual void OnUnselected(EventArgs args)
	{
		if (Enabled && this.Unselected != null)
		{
			if (Manager != null)
			{
				Manager.SelectedItem = null;
			}
			this.Unselected(this, args);
		}
	}

	protected virtual void OnShowTooltipChanged()
	{
		RaiseShowTooltipChanged();
	}

	internal void SetShortCutProcessing(bool bProcessing)
	{
		m_shortCutProcessing = bProcessing;
	}

	private bool IsDoubleClickInterval()
	{
		return DateTime.Now.Ticks - m_tiksLastClick <= SystemInformation.DoubleClickTime * 10000;
	}

	private bool IsDoubleClickPosition()
	{
		return m_lastClickLocation.Equals(Cursor.Position);
	}

	private bool IsDoubleClick()
	{
		if (!m_bDoubleClick && IsDoubleClickInterval())
		{
			return IsDoubleClickPosition();
		}
		return false;
	}

	protected virtual void OnItemDoubleClicked(EventArgs args)
	{
		bool flag = false;
		Form form = null;
		if (Manager != null)
		{
			form = Manager.Form;
			MessageFilterEntryHelper.Suspend(Manager.Form);
			flag = true;
		}
		RaiseDoubleClick(args);
		if (flag)
		{
			MessageFilterEntryHelper.Resume(form);
		}
	}

	private void RaiseDoubleClick(EventArgs args)
	{
		if (this.DoubleClick != null)
		{
			this.DoubleClick(this, EventArgs.Empty);
		}
	}

	AttributeCollection ICustomTypeDescriptor.GetAttributes()
	{
		return TypeDescriptor.GetAttributes(this, noCustomTypeDesc: true);
	}

	string ICustomTypeDescriptor.GetClassName()
	{
		return TypeDescriptor.GetClassName(this, noCustomTypeDesc: true);
	}

	string ICustomTypeDescriptor.GetComponentName()
	{
		return TypeDescriptor.GetComponentName(this, noCustomTypeDesc: true);
	}

	TypeConverter ICustomTypeDescriptor.GetConverter()
	{
		return TypeDescriptor.GetConverter(this, noCustomTypeDesc: true);
	}

	EventDescriptor ICustomTypeDescriptor.GetDefaultEvent()
	{
		return TypeDescriptor.GetDefaultEvent(this, noCustomTypeDesc: true);
	}

	PropertyDescriptor ICustomTypeDescriptor.GetDefaultProperty()
	{
		return TypeDescriptor.GetDefaultProperty(this, noCustomTypeDesc: true);
	}

	object ICustomTypeDescriptor.GetEditor(Type editorBaseType)
	{
		return TypeDescriptor.GetEditor(this, editorBaseType, noCustomTypeDesc: true);
	}

	EventDescriptorCollection ICustomTypeDescriptor.GetEvents()
	{
		return TypeDescriptor.GetEvents(this, noCustomTypeDesc: true);
	}

	EventDescriptorCollection ICustomTypeDescriptor.GetEvents(Attribute[] attributes)
	{
		return TypeDescriptor.GetEvents(this, attributes, noCustomTypeDesc: true);
	}

	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties()
	{
		return ((ICustomTypeDescriptor)this).GetProperties((Attribute[])null);
	}

	[DocumentationExclude]
	protected virtual StringCollection GetPropertiesToDisableInDesignTime()
	{
		StringCollection stringCollection = new StringCollection();
		stringCollection.Add("CategoryIndex");
		return stringCollection;
	}

	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties(Attribute[] attributes)
	{
		PropertyDescriptorCollection propertyDescriptorCollection = TypeDescriptor.GetProperties(this, attributes, noCustomTypeDesc: true);
		if (Manager == null && DesignMode)
		{
			StringCollection propertiesToDisableInDesignTime = GetPropertiesToDisableInDesignTime();
			ArrayList arrayList = new ArrayList();
			foreach (PropertyDescriptor item in propertyDescriptorCollection)
			{
				if (propertiesToDisableInDesignTime.Contains(item.Name))
				{
					Attribute[] array = new Attribute[item.Attributes.Count];
					int num = 0;
					foreach (Attribute attribute in item.Attributes)
					{
						array[num++] = attribute;
					}
					arrayList.Add(new MyReadOnlyPropertyDescriptor(item, array));
				}
				else
				{
					arrayList.Add(item);
				}
			}
			PropertyDescriptor[] array2 = new PropertyDescriptor[arrayList.Count];
			int num2 = 0;
			foreach (PropertyDescriptor item2 in arrayList)
			{
				array2[num2++] = item2;
			}
			propertyDescriptorCollection = new PropertyDescriptorCollection(array2);
		}
		return propertyDescriptorCollection;
	}

	object ICustomTypeDescriptor.GetPropertyOwner(PropertyDescriptor pd)
	{
		return this;
	}

	protected internal bool ReiseBeforePopupItemPaint(Graphics g, Rectangle Bounds, ref bool Selected, DrawElement Element, GridStyleInfo Style)
	{
		PopupItemPaintEventArgs e = new PopupItemPaintEventArgs(g, Bounds, Selected, Element, Style);
		OnBeforePopupItemPaint(e);
		Selected = e.Selected;
		return e.Handled;
	}

	protected internal bool ReiseAfterPopupItemPaint(Graphics g, Rectangle Bounds, bool Selected, DrawElement Element, GridStyleInfo Style)
	{
		PopupItemPaintEventArgs e = new PopupItemPaintEventArgs(g, Bounds, Selected, Element, Style);
		OnAfterPopupItemPaint(e);
		return e.Handled;
	}

	internal bool ReiseAfterPopupItemPaint(Graphics g, Rectangle Bounds, bool Selected, DrawElement Element, GridStyleInfo Style, MenuComboBoxCellRenderer menuRenderer)
	{
		PopupItemPaintEventArgs2 popupItemPaintEventArgs = new PopupItemPaintEventArgs2(g, Bounds, Selected, Element, Style, menuRenderer);
		OnAfterPopupItemPaint(popupItemPaintEventArgs);
		return popupItemPaintEventArgs.Handled;
	}

	private void RaiseShowTooltipChanged()
	{
		if (this.ShowTooltipChanged != null)
		{
			this.ShowTooltipChanged(this, EventArgs.Empty);
		}
	}
}
