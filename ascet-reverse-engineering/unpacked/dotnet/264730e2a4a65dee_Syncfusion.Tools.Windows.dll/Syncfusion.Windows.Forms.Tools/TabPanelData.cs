using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabPanelData : ITabPanelData2, ITabPanelData
{
	internal bool isTabRemoving;

	private int m_imageOffset;

	private int m_adjustTopGap;

	private bool m_bHideInactivaPageImage;

	private bool m_bLevelTextAndImage;

	private string tabStyle = TabRenderer3D.TabStyleName;

	private BorderStyle borderStyle = BorderStyle.Fixed3D;

	private TabAlignment alignment;

	private SizeF tabSize = SizeF.Empty;

	private int tabGap;

	private TabVerticalAlignment m_tvaVerticalAlignment;

	private bool multiline;

	private bool keepSelectedTabInFrontRow = true;

	private Color fixedSingleBorderColor = Color.Empty;

	private ImageList imageList;

	private int selectedIndex = -1;

	private TabSizeMode sizeMode;

	private Color backColor = Color.Empty;

	private Font font;

	private StringAlignment textAlignmentH = StringAlignment.Center;

	private StringAlignment textAlignmentV = StringAlignment.Center;

	private RelativeImageAlignment imageAlignmentR;

	private bool rotateWhenVertical;

	private bool rotateText180WhenLeftAligned;

	private Point padding = TabControlAdv.DEFAULT_PADDING;

	private bool hotTrack;

	private bool showToolTips;

	private bool dragAndDrop;

	private TabDataCollection tabCollection;

	private Control parent;

	private Font activeTabFont;

	private Color activeTabColor;

	private Color inactiveTabColor;

	private bool m_bShowSuperToolTips;

	public int ImageOffset
	{
		get
		{
			return m_imageOffset;
		}
		set
		{
			if (m_imageOffset != value)
			{
				int imageOffset = m_imageOffset;
				m_imageOffset = value;
				OnPropertyChanged("ImageOffset", imageOffset, m_imageOffset);
			}
		}
	}

	public int AdjustTopGap
	{
		get
		{
			return m_adjustTopGap;
		}
		set
		{
			int adjustTopGap = m_adjustTopGap;
			m_adjustTopGap = value;
			OnPropertyChanged("AdjustTopGap", adjustTopGap, m_adjustTopGap);
		}
	}

	public bool DisableInactivePageImage
	{
		get
		{
			return m_bHideInactivaPageImage;
		}
		set
		{
			if (m_bHideInactivaPageImage != value)
			{
				m_bHideInactivaPageImage = value;
				OnPropertyChanged("DisableInactivePageImage", !m_bHideInactivaPageImage, m_bHideInactivaPageImage);
			}
		}
	}

	public bool LevelTextAndImage
	{
		get
		{
			return m_bLevelTextAndImage;
		}
		set
		{
			if (m_bLevelTextAndImage != value)
			{
				m_bLevelTextAndImage = value;
				OnPropertyChanged("LevelTextAndImage", !m_bLevelTextAndImage, m_bLevelTextAndImage);
			}
		}
	}

	public string TabStyle
	{
		get
		{
			return tabStyle;
		}
		set
		{
			if (tabStyle != value)
			{
				string oldValue = tabStyle;
				tabStyle = value;
				OnPropertyChanged("TabStyle", oldValue, tabStyle);
			}
		}
	}

	public BorderStyle BorderStyle
	{
		get
		{
			return borderStyle;
		}
		set
		{
			if (this.borderStyle != value)
			{
				BorderStyle borderStyle = this.borderStyle;
				this.borderStyle = value;
				OnPropertyChanged("BorderStyle", borderStyle, this.borderStyle);
			}
		}
	}

	public TabAlignment Alignment
	{
		get
		{
			return alignment;
		}
		set
		{
			if (alignment != value)
			{
				TabAlignment tabAlignment = alignment;
				alignment = value;
				OnPropertyChanged("Alignment", tabAlignment, alignment);
			}
		}
	}

	public SizeF TabSize
	{
		get
		{
			return tabSize;
		}
		set
		{
			if (tabSize != value)
			{
				SizeF sizeF = tabSize;
				tabSize = value;
				OnPropertyChanged("TabSize", sizeF, tabSize);
			}
		}
	}

	public int TabGap
	{
		get
		{
			return tabGap;
		}
		set
		{
			if (tabGap != value)
			{
				int num = tabGap;
				tabGap = value;
				OnPropertyChanged("TabGap", num, tabGap);
			}
		}
	}

	public TabVerticalAlignment VerticalAlignment
	{
		get
		{
			return m_tvaVerticalAlignment;
		}
		set
		{
			TabVerticalAlignment tvaVerticalAlignment = m_tvaVerticalAlignment;
			if (tvaVerticalAlignment != value)
			{
				m_tvaVerticalAlignment = value;
				OnPropertyChanged("VerticalAlignment", tvaVerticalAlignment, value);
			}
		}
	}

	public bool Multiline
	{
		get
		{
			return multiline;
		}
		set
		{
			if (multiline != value)
			{
				bool flag = multiline;
				multiline = value;
				OnPropertyChanged("Multiline", flag, multiline);
			}
		}
	}

	public bool KeepSelectedTabInFrontRow
	{
		get
		{
			return keepSelectedTabInFrontRow;
		}
		set
		{
			if (keepSelectedTabInFrontRow != value)
			{
				bool flag = keepSelectedTabInFrontRow;
				keepSelectedTabInFrontRow = value;
				OnPropertyChanged("KeepSelectedTabInFrontRow", flag, keepSelectedTabInFrontRow);
			}
		}
	}

	public Color FixedSingleBorderColor
	{
		get
		{
			return fixedSingleBorderColor;
		}
		set
		{
			if (fixedSingleBorderColor != value)
			{
				Color color = fixedSingleBorderColor;
				fixedSingleBorderColor = value;
				OnPropertyChanged("FixedSingleBorderColor", color, fixedSingleBorderColor);
			}
		}
	}

	public virtual ImageList ImageList
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
				OnPropertyChanged("ImageList", imageList, this.imageList);
				if (imageList != null)
				{
					imageList.RecreateHandle -= ImageList_Recreated;
				}
				if (this.imageList != null)
				{
					this.imageList.RecreateHandle += ImageList_Recreated;
				}
			}
		}
	}

	public int SelectedIndex
	{
		get
		{
			if (selectedIndex >= tabCollection.Count)
			{
				ChangeSelectedIndex(tabCollection.Count - 1);
			}
			if ((selectedIndex < 0 || selectedIndex >= tabCollection.Count) && tabCollection.Count > 0)
			{
				ChangeSelectedIndex(0);
			}
			return selectedIndex;
		}
		set
		{
			if (selectedIndex != value)
			{
				ChangeSelectedIndex(value);
			}
		}
	}

	public TabSizeMode SizeMode
	{
		get
		{
			return sizeMode;
		}
		set
		{
			if (sizeMode != value)
			{
				TabSizeMode tabSizeMode = sizeMode;
				sizeMode = value;
				OnPropertyChanged("SizeMode", tabSizeMode, sizeMode);
			}
		}
	}

	public Color BackColor
	{
		get
		{
			return backColor;
		}
		set
		{
			if (value != backColor)
			{
				Color color = backColor;
				backColor = value;
				OnPropertyChanged("BackColor", color, value);
			}
		}
	}

	public Font Font
	{
		get
		{
			return font;
		}
		set
		{
			if (value != font)
			{
				Font oldValue = font;
				font = value;
				OnPropertyChanged("Font", oldValue, value);
			}
		}
	}

	public StringAlignment TextAlignment
	{
		get
		{
			return textAlignmentH;
		}
		set
		{
			if (textAlignmentH != value)
			{
				StringAlignment stringAlignment = textAlignmentH;
				textAlignmentH = value;
				OnPropertyChanged("TextAlignment", stringAlignment, textAlignmentH);
			}
		}
	}

	public StringAlignment TextLineAlignment
	{
		get
		{
			return textAlignmentV;
		}
		set
		{
			if (textAlignmentV != value)
			{
				StringAlignment stringAlignment = textAlignmentV;
				textAlignmentV = value;
				OnPropertyChanged("TextLineAlignment", stringAlignment, textAlignmentV);
			}
		}
	}

	public RelativeImageAlignment ImageAlignmentR
	{
		get
		{
			return imageAlignmentR;
		}
		set
		{
			if (imageAlignmentR != value)
			{
				RelativeImageAlignment relativeImageAlignment = imageAlignmentR;
				imageAlignmentR = value;
				OnPropertyChanged("ImageAlignmentR", relativeImageAlignment, imageAlignmentR);
			}
		}
	}

	public bool RotateTextWhenVertical
	{
		get
		{
			return rotateWhenVertical;
		}
		set
		{
			if (rotateWhenVertical != value)
			{
				rotateWhenVertical = value;
				OnPropertyChanged("RotateTextWhenVertical", !rotateWhenVertical, rotateWhenVertical);
			}
		}
	}

	public bool RotateText180WhenLeftAligned
	{
		get
		{
			return rotateText180WhenLeftAligned;
		}
		set
		{
			if (rotateText180WhenLeftAligned != value)
			{
				rotateText180WhenLeftAligned = value;
				OnPropertyChanged("RotateText180WhenLeftAligned", !rotateText180WhenLeftAligned, rotateText180WhenLeftAligned);
			}
		}
	}

	public Point Padding
	{
		get
		{
			return padding;
		}
		set
		{
			if (padding != value)
			{
				Point point = padding;
				padding = value;
				OnPropertyChanged("Padding", point, padding);
			}
		}
	}

	public bool HotTrack
	{
		get
		{
			return hotTrack;
		}
		set
		{
			hotTrack = value;
		}
	}

	public bool ShowToolTips
	{
		get
		{
			return showToolTips;
		}
		set
		{
			showToolTips = value;
		}
	}

	public bool UserMoveTabs
	{
		get
		{
			return dragAndDrop;
		}
		set
		{
			dragAndDrop = value;
		}
	}

	public TabDataCollection TabsData => tabCollection;

	public Font ActiveTabFont
	{
		get
		{
			return activeTabFont;
		}
		set
		{
			if (activeTabFont != value)
			{
				Font oldValue = activeTabFont;
				activeTabFont = value;
				OnPropertyChanged("ActiveTabFont", oldValue, activeTabFont);
			}
		}
	}

	public Color ActiveTabColor
	{
		get
		{
			return activeTabColor;
		}
		set
		{
			if (activeTabColor != value)
			{
				Color color = activeTabColor;
				activeTabColor = value;
				OnPropertyChanged("ActiveTabColor", color, activeTabColor);
			}
		}
	}

	public Color InactiveTabColor
	{
		get
		{
			return inactiveTabColor;
		}
		set
		{
			if (inactiveTabColor != value)
			{
				Color color = inactiveTabColor;
				inactiveTabColor = value;
				OnPropertyChanged("InactiveTabColor", color, inactiveTabColor);
			}
		}
	}

	public bool ShowSuperToolTips
	{
		get
		{
			return m_bShowSuperToolTips;
		}
		set
		{
			m_bShowSuperToolTips = value;
		}
	}

	public event TabPanelPropertyChangedEventHandler PropertyChanged;

	public event SelectedIndexChangingEventHandler SelectedIndexChanging;

	private void ImageList_Recreated(object sender, EventArgs e)
	{
		OnPropertyChanged("ImageList", ImageList, ImageList);
	}

	protected virtual void ChangeSelectedIndex(int index)
	{
		if (tabCollection.Count <= index)
		{
			throw new ArgumentOutOfRangeException();
		}
		int count = tabCollection.Count;
		if ((index == -1 && count > 0) || (index != -1 && !IsTabSelectable(index, visually: false)))
		{
			return;
		}
		if (selectedIndex != -1 && !isTabRemoving)
		{
			SelectedIndexChangingEventArgs e = new SelectedIndexChangingEventArgs(index);
			OnSelectedIndexChanging(e);
			if (e.Cancel)
			{
				return;
			}
		}
		int num = selectedIndex;
		selectedIndex = index;
		if (num != -1 || count != 1)
		{
			((ITabPanelData)this).OnSelectedIndexChanged(num, selectedIndex);
		}
	}

	public virtual bool IsTabSelectable(int tabIndex, bool visually)
	{
		if (tabIndex >= tabCollection.Count)
		{
			return false;
		}
		if (parent is ITabControl && ((ITabControl)parent).IsDesignMode())
		{
			return true;
		}
		ITabData tabData = tabCollection[tabIndex] as ITabData;
		if (visually && (!tabData.Enabled || !tabData.TabVisible))
		{
			return false;
		}
		return true;
	}

	void ITabPanelData.OnSelectedIndexChanged(int previousIndex, int curIndex)
	{
		OnPropertyChanged("SelectedIndex", previousIndex, curIndex);
	}

	public virtual ITabData CreateNewTabData()
	{
		return new TabData();
	}

	public TabPanelData(Control parent)
	{
		tabCollection = new TabDataCollection(this);
		this.parent = parent;
	}

	protected void OnPropertyChanged(string property, object oldValue, object newValue)
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, new TabPanelPropertyChangedEventArgs(property, oldValue, newValue));
		}
	}

	protected void OnSelectedIndexChanging(SelectedIndexChangingEventArgs args)
	{
		if (this.SelectedIndexChanging != null)
		{
			this.SelectedIndexChanging(this, args);
		}
	}
}
