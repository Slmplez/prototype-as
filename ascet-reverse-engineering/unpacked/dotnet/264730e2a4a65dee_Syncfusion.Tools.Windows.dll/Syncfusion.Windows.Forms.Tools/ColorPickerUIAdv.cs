using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[Description("Represents Office 2007 Style ColorPicker.")]
[Designer(typeof(ColorPickerUIAdvDesigner))]
[ToolboxBitmap(typeof(ColorPickerUIAdv), "ToolboxIcons.ColorPickerUIAdv.bmp")]
[DesignerSerializer(typeof(ColorUIAdvDesignSerializer), typeof(CodeDomSerializer))]
public class ColorPickerUIAdv : Control
{
	public delegate void ColorPickedEventHandler(object sender, ColorPickedEventArgs args);

	public class ColorPickedEventArgs : EventArgs
	{
		private Color m_color;

		public Color Color => m_color;

		public ColorPickedEventArgs(Color color)
		{
			m_color = color;
		}
	}

	internal const int DEF_ITEMSCOUNT = 10;

	internal const int DEF_SUBITEMSCOUNT = 5;

	internal const int DEF_BASECOLORSOFFSET = 6;

	private const int DEF_CONTROLWIDTH = 172;

	private ColorUIAdvRenderer m_renderer;

	private Office2007Theme m_officeTheme;

	private ButtonAdv m_btnMoreColors;

	private ButtonAdv m_btnState;

	private bool m_bUseOffice2007Style = true;

	private BorderStyle m_borderStyle;

	private ColorUIAdvGroup m_themeGroup;

	private ColorUIAdvGroup m_standartGroup;

	private ColorUIAdvGroup m_recentGroup;

	private ColorUIAdvGroup m_activeGroup;

	private int m_xSpacing = 4;

	private int m_borderOffset = 3;

	private int m_ySpacing;

	private Size m_itemSize = new Size(13, 13);

	private Point m_focus = new Point(0, 0);

	private ColorItem m_ciHighLightedItem;

	private ColorItem m_ciSelectedItem;

	private ColorUIAdvGroupsCollection m_groups;

	private ColorUIAdvGroupsCollection m_customGroups;

	private ContentAlignment m_textAlign = ContentAlignment.MiddleLeft;

	private int m_buttonsHeight = 23;

	private bool m_bInSetBoundsCore;

	private Color m_automaticColor = Color.Black;

	private int m_selectedTabIndex;

	internal Hashtable ChangedItems;

	private Container components;

	[Browsable(false)]
	public ButtonAdv StateButton => m_btnState;

	[Browsable(false)]
	public ButtonAdv MoreColorsButton => m_btnMoreColors;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ColorUIAdvGroup ActiveGroup
	{
		get
		{
			return m_activeGroup;
		}
		set
		{
			m_activeGroup = value;
		}
	}

	[DefaultValue(Office2007Theme.Blue)]
	[Description("Gets or sets Office2007 theme for control drawing. Default is blue color theme.")]
	[Category("Appearance")]
	public Office2007Theme Office2007Theme
	{
		get
		{
			return m_officeTheme;
		}
		set
		{
			if (m_officeTheme == value)
			{
				return;
			}
			m_officeTheme = value;
			foreach (ButtonAdv control in base.Controls)
			{
				control.Office2007ColorScheme = value;
			}
			SetRenderer();
			Invalidate();
		}
	}

	[DefaultValue(4)]
	[Category("Appearance")]
	[Description("Gets or sets horizontal spacing between ColorItems.")]
	public int HorizontalItemsSpacing
	{
		get
		{
			return m_xSpacing;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentException("Value must be nonNegative");
			}
			if (m_xSpacing != value)
			{
				m_xSpacing = value;
				UpdateControl();
			}
		}
	}

	[Description("Gets or sets border offset for ColorItems.")]
	[Category("Appearance")]
	[DefaultValue(3)]
	public int BorderOffset
	{
		get
		{
			return m_borderOffset;
		}
		set
		{
			if (m_borderOffset == value)
			{
				return;
			}
			m_borderOffset = value;
			foreach (ColorUIAdvGroup group in Groups)
			{
				group.UpdateGroupSize();
			}
		}
	}

	[Description("Gets or sets vertical spacing between ColorItems.")]
	[Category("Appearance")]
	[DefaultValue(0)]
	public int VerticalItemsSpacing
	{
		get
		{
			return m_ySpacing;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentException("Value must be nonNegative");
			}
			if (m_ySpacing != value)
			{
				m_ySpacing = value;
				UpdateControl();
			}
		}
	}

	[Description("Indicates whether to use Office2007 style for control drawing. Default value is true.")]
	[DefaultValue(true)]
	[Category("Appearance")]
	public bool UseOffice2007Style
	{
		get
		{
			return m_bUseOffice2007Style;
		}
		set
		{
			if (m_bUseOffice2007Style == value)
			{
				return;
			}
			m_bUseOffice2007Style = value;
			foreach (Control control in base.Controls)
			{
				if (control is ButtonAdv)
				{
					ButtonAdv buttonAdv = control as ButtonAdv;
					buttonAdv.UseVisualStyle = value;
				}
			}
			SetRenderer();
			Invalidate();
		}
	}

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

	[Browsable(false)]
	public override ImageLayout BackgroundImageLayout
	{
		get
		{
			return base.BackgroundImageLayout;
		}
		set
		{
			base.BackgroundImageLayout = value;
		}
	}

	[Description("Gets or sets size for ColorItems.")]
	[Category("Appearance")]
	public Size ColorItemSize
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
				UpdateControl();
			}
		}
	}

	[Category("Appearance")]
	[Description("Specifies the border style of the control.")]
	[DefaultValue(BorderStyle.None)]
	public BorderStyle BorderStyle
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
				UpdateStyles();
				UpdateControl();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	protected internal ColorUIAdvGroupsCollection Groups
	{
		get
		{
			return m_groups;
		}
		set
		{
			if (m_groups != value)
			{
				m_groups = value;
			}
		}
	}

	[Category("Groups")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Gets or Sets Custom Groups collection of the control.")]
	public ColorUIAdvGroupsCollection CustomGroups => m_customGroups;

	[Description("Represent group of theme colors.")]
	[Category("Groups")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ColorUIAdvGroup ThemeGroup => m_themeGroup;

	[Category("Groups")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Represent group of standard colors.")]
	public ColorUIAdvGroup StandardGroup => m_standartGroup;

	[Category("Groups")]
	[Description("Represent group of recent colors.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ColorUIAdvGroup RecentGroup => m_recentGroup;

	[Category("Appearance")]
	[Description("Gets or sets the text alignment. Default value is MiddleLeft alignment.")]
	[DefaultValue(ContentAlignment.MiddleLeft)]
	public ContentAlignment TextAlign
	{
		get
		{
			return m_textAlign;
		}
		set
		{
			if (m_textAlign != value)
			{
				m_textAlign = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(23)]
	[Description("Gets or sets the height of the buttons.")]
	public int ButtonsHeight
	{
		get
		{
			return m_buttonsHeight;
		}
		set
		{
			if (m_buttonsHeight == value)
			{
				return;
			}
			m_buttonsHeight = value;
			foreach (Control control in base.Controls)
			{
				if (control is ButtonAdv)
				{
					(control as ButtonAdv).Height = m_buttonsHeight;
				}
			}
			UpdateControl();
		}
	}

	[Browsable(false)]
	public ColorItem HighLightedItem => m_ciHighLightedItem;

	[Browsable(false)]
	public ColorItem SelectedItem => m_ciSelectedItem;

	[Description("Gets or sets the selected color.")]
	public Color SelectedColor
	{
		get
		{
			Color result = Color.Empty;
			if (SelectedItem != null)
			{
				result = SelectedItem.Color;
			}
			return result;
		}
		set
		{
			if (SelectedColor != value)
			{
				if (value != Color.Empty)
				{
					SelectColor(value);
				}
				else
				{
					SelectedItem.State = ColorItemState.Normal;
				}
			}
		}
	}

	[Category("Behavior")]
	[Description("Gets or sets color, which become selected after automatic button click. Default value is black color.")]
	[DefaultValue(typeof(Color), "Black")]
	public Color AutomaticColor
	{
		get
		{
			return m_automaticColor;
		}
		set
		{
			m_automaticColor = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int SelectedTabIndex
	{
		get
		{
			return m_selectedTabIndex;
		}
		set
		{
			if (m_selectedTabIndex != value)
			{
				m_selectedTabIndex = value;
			}
		}
	}

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			switch (m_borderStyle)
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

	public override Size MinimumSize => GetMinSize();

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
		}
	}

	[Description("Raised when ColorItem is picked or new ColorItem was added from ColorDlgAdv.")]
	public event ColorPickedEventHandler Picked;

	[Description("Raised when mouse hovers over ColorItem.")]
	public event ColorPickedEventHandler ItemSelection;

	public ColorPickerUIAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(ColorPickerUIAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		InitializeComponent();
		Init();
	}

	public bool ShouldSerializeCustomGroups()
	{
		if (m_customGroups.Count != 0)
		{
			foreach (ColorUIAdvGroup customGroup in CustomGroups)
			{
				customGroup.ShouldSerialize = true;
			}
		}
		return true;
	}

	private void SelectColor(Color colorToSelect)
	{
		ColorItem colorItem = null;
		foreach (ColorUIAdvGroup group in Groups)
		{
			foreach (ColorItem item in group.Items)
			{
				if (item.Color == colorToSelect || (colorToSelect.IsNamedColor && item.Color.Name == colorToSelect.Name) || (colorToSelect.IsKnownColor && item.Color.ToKnownColor() == colorToSelect.ToKnownColor()) || item.Color.ToArgb() == colorToSelect.ToArgb())
				{
					colorItem = item;
					break;
				}
				if (!(item is GroupColorItem groupColorItem))
				{
					continue;
				}
				foreach (ColorItem subItem in groupColorItem.SubItems)
				{
					if (subItem.Color == colorToSelect || (colorToSelect.IsNamedColor && subItem.Color.Name == colorToSelect.Name) || (colorToSelect.IsKnownColor && subItem.Color.ToKnownColor() == colorToSelect.ToKnownColor()) || subItem.Color.ToArgb() == colorToSelect.ToArgb())
					{
						colorItem = subItem;
						break;
					}
				}
			}
		}
		if (colorItem == null)
		{
			colorItem = new GroupColorItem(RecentGroup, colorToSelect);
			RecentGroup.Items.Add(colorItem);
		}
		if (m_ciSelectedItem != null)
		{
			m_ciSelectedItem.State = ColorItemState.Normal;
		}
		colorItem.State = ColorItemState.Selected;
		m_ciSelectedItem = colorItem;
		Invalidate();
	}

	private void CalculateSize()
	{
		if (Groups == null || Groups.Count == 0)
		{
			if (Dock == DockStyle.None)
			{
				base.Size = new Size(172, ButtonsHeight * 2);
			}
			else
			{
				CalcItemSpacing(base.Width, base.Height);
			}
			return;
		}
		int num = 0;
		int num2 = 0;
		if (m_btnState.Visible)
		{
			num2 += ButtonsHeight;
		}
		if (m_btnMoreColors.Visible)
		{
			num2 += ButtonsHeight;
		}
		foreach (ColorUIAdvGroup group in Groups)
		{
			group.ShouldChangeParentSize = false;
			group.UpdateGroupSize();
			group.ShouldChangeParentSize = true;
			if (group.Visible)
			{
				num2 += group.Size.Height;
			}
		}
		num = GetMaxGroupWidth();
		if (Dock == DockStyle.None)
		{
			base.Size = new Size(num, num2);
		}
		else
		{
			CalcItemSpacing(base.Width, base.Height);
		}
	}

	private int GetMaxGroupWidth()
	{
		int num = 0;
		if (Groups != null && Groups.Count > 0)
		{
			foreach (ColorUIAdvGroup group in Groups)
			{
				if (group.Visible && group.Size.Width > num)
				{
					num = group.Size.Width;
				}
			}
		}
		return num;
	}

	public void UpdateControl()
	{
		CalculateSize();
		CalculateGroupsBounds();
		Invalidate();
	}

	private void Init()
	{
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer, value: true);
		UpdateStyles();
		if (m_groups == null)
		{
			m_groups = new ColorUIAdvGroupsCollection(this);
		}
		if (m_customGroups == null)
		{
			m_customGroups = new ColorUIAdvGroupsCollection(this);
		}
		if (ChangedItems == null)
		{
			ChangedItems = new Hashtable();
		}
		InitDefaultGroups();
		if (m_renderer == null)
		{
			SetRenderer();
		}
		CalculateSize();
	}

	public void InitDefaultGroups()
	{
		m_themeGroup = new ColorUIAdvGroup(this, ColorUIAdvGroups.ThemeColors, isDesignMode: false, isDefault: true);
		m_standartGroup = new ColorUIAdvGroup(this, ColorUIAdvGroups.StandardColors, isDesignMode: false, isDefault: true);
		m_recentGroup = new ColorUIAdvGroup(this, ColorUIAdvGroups.RecentColors, isDesignMode: false, isDefault: true);
		m_groups.Add(m_themeGroup);
		m_groups.Add(m_standartGroup);
		m_groups.Add(m_recentGroup);
	}

	private void CalculateGroupsBounds()
	{
		int num = 0;
		if (Groups == null || Groups.Count == 0)
		{
			return;
		}
		foreach (ColorUIAdvGroup group in Groups)
		{
			if (group.Visible && group.Size.Width < base.ClientSize.Width)
			{
				group.ShouldChangeParentSize = false;
				group.Size = new Size(base.ClientSize.Width, group.Size.Height);
				group.ShouldChangeParentSize = true;
			}
		}
		if ((StateButton.Dock == DockStyle.Top && StateButton.Visible) || (MoreColorsButton.Dock == DockStyle.Top && MoreColorsButton.Visible))
		{
			num += ButtonsHeight;
		}
		ArrayList sortedItems = Groups.SortedItems;
		for (int i = 0; i < sortedItems.Count; i++)
		{
			ColorUIAdvGroup colorUIAdvGroup2 = sortedItems[i] as ColorUIAdvGroup;
			if (colorUIAdvGroup2.Visible)
			{
				Size size = colorUIAdvGroup2.Size;
				colorUIAdvGroup2.Bounds = new Rectangle(0, num, size.Width, size.Height);
				colorUIAdvGroup2.CalculateItemsBounds();
				num += size.Height;
			}
		}
	}

	internal int FindNextGroup(int index, bool down)
	{
		if (down)
		{
			while (index <= Groups.Count)
			{
				for (int i = 0; i < Groups.Count; i++)
				{
					if (Groups[i].Visible && Groups[i].Index == index)
					{
						return i;
					}
				}
				index++;
			}
			return -1;
		}
		while (index >= 0)
		{
			for (int num = Groups.Count - 1; num >= 0; num--)
			{
				if (Groups[num].Visible && Groups[num].Index == index)
				{
					return num;
				}
			}
			index--;
		}
		return -1;
	}

	private void SetRenderer()
	{
		if (UseOffice2007Style)
		{
			m_renderer = new ColorUIAdvOffice2007Renderer(this);
		}
		else
		{
			m_renderer = new ColorUIAdvRenderer(this);
		}
	}

	internal ColorItem GetItemFromFocus(Point focus)
	{
		ColorItem result = null;
		ColorUIAdvGroup activeGroup = ActiveGroup;
		if (activeGroup != null)
		{
			int num = 0;
			int num2 = activeGroup.Bounds.Y;
			num += BorderOffset + (ColorItemSize.Width + HorizontalItemsSpacing) * focus.X;
			num2 += BorderOffset;
			if (activeGroup.Header.Dock == DockStyle.Top)
			{
				num2 += activeGroup.HeaderHeight;
			}
			Point location = new Point(num, num2);
			Size colorItemSize = ColorItemSize;
			Rectangle rectangle = new Rectangle(location, colorItemSize);
			int num3 = -1;
			foreach (GroupColorItem item in activeGroup.Items)
			{
				if (item.Bounds == rectangle)
				{
					num3 = activeGroup.FindNextItem(item.Index - 1, movingRight: true);
					break;
				}
			}
			if (num3 >= 0)
			{
				GroupColorItem groupColorItem2 = activeGroup.Items[num3] as GroupColorItem;
				if (focus.Y == 0)
				{
					result = groupColorItem2;
				}
				else
				{
					for (int i = 0; i < groupColorItem2.SubItems.Count; i++)
					{
						if (focus.Y == i + 1)
						{
							result = groupColorItem2.SubItems[i];
							break;
						}
					}
				}
			}
		}
		return result;
	}

	internal Point GetFocusFromItem(ColorItem item)
	{
		Point result = new Point(-1, -1);
		foreach (ColorUIAdvGroup group in Groups)
		{
			if (!group.Visible || !group.Bounds.Contains(item.Bounds))
			{
				continue;
			}
			for (int i = 0; i < group.Items.Count; i++)
			{
				GroupColorItem groupColorItem = group.Items[i] as GroupColorItem;
				if (groupColorItem.Bounds == item.Bounds)
				{
					result = new Point(group.FindNextItem(groupColorItem.Index - 1, movingRight: true), 0);
					break;
				}
				if (!group.IsSubItemsVisible)
				{
					continue;
				}
				foreach (ColorItem subItem in groupColorItem.SubItems)
				{
					if (subItem.Bounds == item.Bounds)
					{
						result = new Point(group.FindNextItem(groupColorItem.Index - 1, movingRight: true), subItem.Index + 1);
						break;
					}
				}
			}
		}
		return result;
	}

	internal Point GetItemUnderPoint(Point p)
	{
		ColorUIAdvGroup activeGroup = ActiveGroup;
		_ = ActiveGroup.Bounds;
		int num = -1;
		int num2 = -1;
		int num3 = -1;
		for (int i = 0; i < activeGroup.Items.Count; i++)
		{
			int num4 = activeGroup.FindNextItem(num3++, movingRight: true);
			GroupColorItem groupColorItem = null;
			if (num4 == -1)
			{
				break;
			}
			groupColorItem = activeGroup.Items[num4] as GroupColorItem;
			if (groupColorItem.Bounds.Contains(p))
			{
				num = groupColorItem.Index;
				num2 = 0;
				break;
			}
			if (!activeGroup.IsSubItemsVisible)
			{
				continue;
			}
			for (int j = 0; j < activeGroup.SubItemsDepth; j++)
			{
				if (j < groupColorItem.SubItems.Count)
				{
					ColorItem colorItem = groupColorItem.SubItems[j];
					if (colorItem.Bounds.Contains(p))
					{
						num = groupColorItem.Index;
						num2 = j + 1;
						break;
					}
				}
			}
			if (num2 != -1)
			{
				break;
			}
		}
		return new Point(num, num2);
	}

	protected virtual void OnPicked(ColorPickedEventArgs e)
	{
		if (this.Picked != null)
		{
			this.Picked(this, e);
		}
	}

	protected virtual void OnItemSelection(ColorPickedEventArgs e)
	{
		if (this.ItemSelection != null)
		{
			this.ItemSelection(this, e);
		}
	}

	private void InvalidatePrevItem(ref ColorItem item)
	{
		new Point(-1, -1);
		if (ActiveGroup != null)
		{
			item = GetItemFromFocus(m_focus);
			if (item.State == ColorItemState.Highlighted && SelectedItem != item)
			{
				item.State = ColorItemState.Normal;
				Invalidate(item.Bounds);
			}
		}
	}

	private void InvalidateNextItem(ref ColorItem item)
	{
		item = GetItemFromFocus(m_focus);
		if (item != null)
		{
			item.State = ColorItemState.Highlighted;
			m_ciHighLightedItem = item;
			Invalidate(m_ciHighLightedItem.Bounds);
			if (SelectedItem != null && SelectedItem != m_ciHighLightedItem && SelectedItem.State == ColorItemState.Highlighted)
			{
				SelectedItem.State = ColorItemState.Selected;
				Invalidate(SelectedItem.Bounds);
			}
		}
	}

	private Size GetMinSize()
	{
		int num = 0;
		int num2 = 0;
		if (MoreColorsButton.Visible || m_bInSetBoundsCore)
		{
			num += ButtonsHeight;
		}
		if (StateButton.Visible || m_bInSetBoundsCore)
		{
			num += ButtonsHeight;
		}
		int num3 = 0;
		foreach (ColorUIAdvGroup group in Groups)
		{
			if (group.Visible)
			{
				if (num3 < group.Items.Count)
				{
					num3 = group.Items.Count;
				}
				num += group.HeaderHeight + ColorItemSize.Height;
				num = ((!group.IsSubItemsVisible) ? (num + BorderOffset * 2) : (num + (BorderOffset * 2 + 6 + group.SubItemsDepth * ColorItemSize.Height)));
			}
		}
		num2 = BorderOffset * 2 + num3 * ColorItemSize.Width;
		return new Size(num2, num);
	}

	private void CalcItemSpacing(int width, int height)
	{
		int num = 0;
		foreach (ColorUIAdvGroup group in Groups)
		{
			if (group.Visible && num < group.Items.Count)
			{
				num = group.Items.Count;
			}
		}
		if (num <= 1)
		{
			return;
		}
		int num2 = 0;
		int num3 = 0;
		foreach (ColorUIAdvGroup group2 in Groups)
		{
			if (group2.Visible && group2.IsSubItemsVisible)
			{
				num2 += group2.SubItemsDepth - 1;
				num3++;
			}
		}
		Size minSize = GetMinSize();
		double num4 = ((num2 == 0) ? 0.0 : ((double)((height - minSize.Height) / num2)));
		if (num4 > 6.0 && num4 != (double)VerticalItemsSpacing)
		{
			num2 += num3;
			num4 = ((num2 == 0) ? 0.0 : ((double)((height + num3 * 6 - minSize.Height) / num2)));
		}
		if (height >= minSize.Height)
		{
			VerticalItemsSpacing = (int)num4;
		}
		double num5 = width - BorderOffset * 2 - num * ColorItemSize.Width;
		int horizontalItemsSpacing = (int)(num5 / (double)(num - 1));
		if (width >= minSize.Width)
		{
			HorizontalItemsSpacing = horizontalItemsSpacing;
		}
	}

	private bool ShouldRemoveRecentItems()
	{
		foreach (ColorUIAdvGroup group in Groups)
		{
			if (group.GroupType == ColorUIAdvGroups.RecentColors)
			{
				int num = BorderOffset + group.Items.Count * ColorItemSize.Width + (group.Items.Count - 1) * HorizontalItemsSpacing;
				if (num > base.ClientSize.Width - ColorItemSize.Width - HorizontalItemsSpacing)
				{
					return true;
				}
			}
		}
		return false;
	}

	protected override bool ProcessDialogKey(Keys keys)
	{
		switch (keys)
		{
		case Keys.Return:
		case Keys.Left:
		case Keys.Up:
		case Keys.Right:
		case Keys.Down:
			return ProcessDialogKeyInternal(keys);
		default:
			return base.ProcessDialogKey(keys);
		}
	}

	protected virtual bool ProcessDialogKeyInternal(Keys keys)
	{
		ColorItem item = null;
		if (m_focus.X == -1 && m_focus.Y == -1)
		{
			m_focus = new Point(0, 0);
		}
		switch (keys)
		{
		case Keys.Return:
		{
			if (StateButton.Focused || MoreColorsButton.Focused)
			{
				if (StateButton.Focused)
				{
					StateButton.PerformClick();
				}
				else
				{
					MoreColorsButton.PerformClick();
				}
				return true;
			}
			item = GetItemFromFocus(m_focus);
			if (item != null)
			{
				if (SelectedItem != null)
				{
					SelectedItem.State = ColorItemState.Normal;
					Invalidate(SelectedItem.Bounds);
				}
				item.State = ColorItemState.Selected;
				m_ciSelectedItem = item;
				m_ciHighLightedItem = null;
				Invalidate(SelectedItem.Bounds);
			}
			ColorPickedEventArgs e = new ColorPickedEventArgs(SelectedItem.Color);
			OnPicked(e);
			return true;
		}
		case Keys.Left:
			InvalidatePrevItem(ref item);
			if (ActiveGroup != null)
			{
				if (m_focus.Y == 0)
				{
					if (m_focus.X > 0)
					{
						m_focus.X -= 1;
					}
					else if (m_focus.X == 0)
					{
						m_focus.X = ActiveGroup.Items.Count - 1;
					}
				}
				else
				{
					GroupColorItem groupColorItem2 = null;
					do
					{
						int num2 = -1;
						if (m_focus.X == 0)
						{
							m_focus.X = ActiveGroup.Items.Count;
						}
						num2 = ActiveGroup.FindNextItem(m_focus.X--, movingRight: false);
						groupColorItem2 = ActiveGroup.Items[num2] as GroupColorItem;
					}
					while (groupColorItem2.SubItems.Count <= m_focus.Y - 1);
				}
				InvalidateNextItem(ref item);
				return true;
			}
			return true;
		case Keys.Right:
			InvalidatePrevItem(ref item);
			if (ActiveGroup != null)
			{
				if (m_focus.Y == 0)
				{
					if (m_focus.X < ActiveGroup.Items.Count - 1)
					{
						m_focus.X += 1;
					}
					else if (m_focus.X == ActiveGroup.Items.Count - 1)
					{
						m_focus.X = 0;
					}
				}
				else
				{
					GroupColorItem groupColorItem3 = null;
					do
					{
						int num3 = -1;
						if (m_focus.X == ActiveGroup.Items.Count - 1)
						{
							m_focus.X = -1;
						}
						num3 = ActiveGroup.FindNextItem(m_focus.X++, movingRight: true);
						groupColorItem3 = ActiveGroup.Items[num3] as GroupColorItem;
					}
					while (groupColorItem3.SubItems.Count <= m_focus.Y - 1);
				}
				InvalidateNextItem(ref item);
				return true;
			}
			return true;
		case Keys.Up:
			InvalidatePrevItem(ref item);
			if (MoreColorsButton.Focused)
			{
				MoreColorsButton.State = ButtonAdvState.Default;
				if (SelectedItem != null)
				{
					Focus();
					SelectedItem.State = ColorItemState.Highlighted;
				}
				else
				{
					while (ActiveGroup == null || ActiveGroup.Items.Count <= m_focus.X)
					{
						int num4 = -1;
						num4 = ((ActiveGroup != null) ? FindNextGroup(ActiveGroup.Index - 1, down: false) : FindNextGroup(Groups.Count - 1, down: false));
						if (num4 != -1)
						{
							ActiveGroup = Groups[num4];
							if (m_focus.X < ActiveGroup.Items.Count)
							{
								GroupColorItem groupColorItem4 = ActiveGroup.Items[m_focus.X] as GroupColorItem;
								if (ActiveGroup.IsSubItemsVisible && groupColorItem4.SubItems.Count > 0)
								{
									m_focus.Y = groupColorItem4.SubItems.Count;
								}
								Focus();
							}
							continue;
						}
						ActiveGroup = null;
						StateButton.State = ButtonAdvState.MouseOver;
						StateButton.Focus();
						return true;
					}
				}
			}
			else
			{
				if (StateButton.Focused)
				{
					StateButton.State = ButtonAdvState.Default;
					MoreColorsButton.State = ButtonAdvState.MouseOver;
					MoreColorsButton.Focus();
					return true;
				}
				if (GetItemFromFocus(new Point(m_focus.X, 0)) is GroupColorItem)
				{
					if (ActiveGroup.IsSubItemsVisible && m_focus.Y > 0)
					{
						m_focus.Y -= 1;
					}
					else
					{
						do
						{
							int num5 = FindNextGroup(ActiveGroup.Index - 1, down: false);
							if (num5 != -1)
							{
								ActiveGroup = Groups[num5];
								if (ActiveGroup.IsSubItemsVisible)
								{
									GroupColorItem groupColorItem6 = ActiveGroup.Items[m_focus.X] as GroupColorItem;
									if (groupColorItem6.SubItems.Count > 0)
									{
										m_focus.Y = groupColorItem6.SubItems.Count;
									}
								}
								continue;
							}
							ActiveGroup = null;
							StateButton.State = ButtonAdvState.MouseOver;
							StateButton.Focus();
							return true;
						}
						while (ActiveGroup.Items.Count <= m_focus.X);
					}
				}
			}
			InvalidateNextItem(ref item);
			return true;
		case Keys.Down:
			InvalidatePrevItem(ref item);
			if (MoreColorsButton.Focused)
			{
				MoreColorsButton.State = ButtonAdvState.Default;
				if (StateButton.Visible)
				{
					ActiveGroup = null;
					StateButton.State = ButtonAdvState.MouseOver;
					StateButton.Focus();
					return true;
				}
				Focus();
				ActiveGroup = Groups[FindNextGroup(0, down: true)];
			}
			else if (StateButton.Focused)
			{
				StateButton.State = ButtonAdvState.Default;
				Focus();
				if (SelectedItem == null)
				{
					ActiveGroup = Groups[FindNextGroup(0, down: true)];
				}
			}
			else if (GetItemFromFocus(new Point(m_focus.X, 0)) is GroupColorItem groupColorItem)
			{
				if (ActiveGroup.IsSubItemsVisible && m_focus.Y < groupColorItem.SubItems.Count)
				{
					m_focus.Y += 1;
				}
				else
				{
					m_focus.Y = 0;
					do
					{
						int num = FindNextGroup(ActiveGroup.Index + 1, down: true);
						if (num != -1)
						{
							ActiveGroup = Groups[num];
							continue;
						}
						ActiveGroup = null;
						MoreColorsButton.State = ButtonAdvState.MouseOver;
						MoreColorsButton.Focus();
						return true;
					}
					while (ActiveGroup.Items.Count <= m_focus.X);
				}
			}
			InvalidateNextItem(ref item);
			return true;
		default:
			return false;
		}
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		base.OnGotFocus(e);
		UpdateControl();
		if (ActiveGroup != null || Groups.Count <= 0)
		{
			return;
		}
		if (SelectedItem == null)
		{
			ActiveGroup = Groups[0];
			if (ActiveGroup.Items.Count != 0)
			{
				if (m_focus.X == -1 && m_focus.Y == -1)
				{
					m_focus = new Point(0, 0);
				}
				ColorItem itemFromFocus = GetItemFromFocus(m_focus);
				if (itemFromFocus != null)
				{
					itemFromFocus.State = ColorItemState.Highlighted;
					m_ciHighLightedItem = itemFromFocus;
					Invalidate(m_ciHighLightedItem.Bounds);
				}
			}
			return;
		}
		foreach (ColorUIAdvGroup group in Groups)
		{
			if (group.Bounds.Contains(SelectedItem.Bounds))
			{
				ActiveGroup = group;
				m_focus = GetFocusFromItem(SelectedItem);
			}
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		Point point = new Point(e.X, e.Y);
		if (Groups == null || Groups.Count <= 0)
		{
			return;
		}
		foreach (ColorUIAdvGroup group in Groups)
		{
			if (group.Bounds.Contains(point) && ActiveGroup != group && group.Visible)
			{
				ActiveGroup = group;
				break;
			}
		}
		if (ActiveGroup == null)
		{
			return;
		}
		m_focus = GetItemUnderPoint(point);
		if (m_focus.X != -1 && m_focus.Y != -1)
		{
			ColorItem itemFromFocus = GetItemFromFocus(m_focus);
			if (itemFromFocus == null || itemFromFocus == m_ciHighLightedItem)
			{
				return;
			}
			itemFromFocus.State = ColorItemState.Highlighted;
			Invalidate(itemFromFocus.Bounds);
			if (m_ciHighLightedItem != null)
			{
				if (m_ciHighLightedItem != SelectedItem)
				{
					m_ciHighLightedItem.State = ColorItemState.Normal;
				}
				Invalidate(m_ciHighLightedItem.Bounds);
			}
			m_ciHighLightedItem = itemFromFocus;
			ColorPickedEventArgs e2 = new ColorPickedEventArgs(m_ciHighLightedItem.Color);
			OnItemSelection(e2);
		}
		else
		{
			if (m_ciHighLightedItem != null && m_ciHighLightedItem != SelectedItem)
			{
				m_ciHighLightedItem.State = ColorItemState.Normal;
				Invalidate(m_ciHighLightedItem.Bounds);
			}
			else if (m_ciHighLightedItem == SelectedItem && SelectedItem != null)
			{
				SelectedItem.State = ColorItemState.Selected;
				Invalidate(SelectedItem.Bounds);
			}
			m_ciHighLightedItem = null;
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (!Focused)
		{
			Focus();
		}
		Point point = new Point(e.X, e.Y);
		Rectangle clientRectangle = base.ClientRectangle;
		clientRectangle.Y += ButtonsHeight;
		clientRectangle.Height -= ButtonsHeight * 2;
		if (Groups != null && Groups.Count > 0 && clientRectangle.Contains(point))
		{
			m_focus = GetItemUnderPoint(point);
			if (m_focus.X != -1 && m_focus.Y != -1)
			{
				ColorItem itemFromFocus = GetItemFromFocus(m_focus);
				itemFromFocus.State = ColorItemState.Selected;
				Invalidate(itemFromFocus.Bounds);
				if (SelectedItem != null && itemFromFocus != SelectedItem)
				{
					SelectedItem.State = ColorItemState.Normal;
					Invalidate(SelectedItem.Bounds);
				}
				m_ciSelectedItem = itemFromFocus;
				ColorPickedEventArgs e2 = new ColorPickedEventArgs(SelectedItem.Color);
				OnPicked(e2);
			}
		}
		base.OnMouseUp(e);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		m_renderer.OnPaint(e);
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		m_bInSetBoundsCore = true;
		Size minSize = GetMinSize();
		if (width < minSize.Width && height < minSize.Height)
		{
			base.SetBoundsCore(x, y, minSize.Width, minSize.Height, specified);
		}
		else if (width < minSize.Width)
		{
			base.SetBoundsCore(x, y, minSize.Width, height, specified);
		}
		else if (height < minSize.Height)
		{
			base.SetBoundsCore(x, y, width, minSize.Height, specified);
		}
		else
		{
			CalcItemSpacing(width, height);
			base.SetBoundsCore(x, y, width, height, specified);
		}
		m_bInSetBoundsCore = false;
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		CalcItemSpacing(base.Width, base.Height);
	}

	private void InitializeComponent()
	{
		this.m_btnState = new Syncfusion.Windows.Forms.ButtonAdv();
		this.m_btnMoreColors = new Syncfusion.Windows.Forms.ButtonAdv();
		base.SuspendLayout();
		this.m_btnState.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.m_btnState.ComboEditBackColor = System.Drawing.Color.Empty;
		this.m_btnState.Dock = System.Windows.Forms.DockStyle.Top;
		this.m_btnState.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.m_btnState.IsMouseDown = false;
		this.m_btnState.KeepFocusRectangle = false;
		this.m_btnState.Location = new System.Drawing.Point(0, 0);
		this.m_btnState.Name = "m_btnState";
		this.m_btnState.Size = new System.Drawing.Size(150, 23);
		this.m_btnState.TabIndex = 0;
		this.m_btnState.Text = Syncfusion.Windows.Forms.Tools.SR.GetString("ColorPickerStateButton");
		this.m_btnState.UseVisualStyle = true;
		this.m_btnState.Click += new System.EventHandler(M_btnState_Click);
		this.m_btnMoreColors.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.m_btnMoreColors.ComboEditBackColor = System.Drawing.Color.Empty;
		this.m_btnMoreColors.Dock = System.Windows.Forms.DockStyle.Bottom;
		this.m_btnMoreColors.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.m_btnMoreColors.IsMouseDown = false;
		this.m_btnMoreColors.KeepFocusRectangle = false;
		this.m_btnMoreColors.Location = new System.Drawing.Point(0, 127);
		this.m_btnMoreColors.Name = "m_btnMoreColors";
		this.m_btnMoreColors.Size = new System.Drawing.Size(150, 23);
		this.m_btnMoreColors.TabIndex = 0;
		this.m_btnMoreColors.Text = Syncfusion.Windows.Forms.Tools.SR.GetString("ColorPickerMoreColorsButton");
		this.m_btnMoreColors.UseVisualStyle = true;
		this.m_btnMoreColors.Click += new System.EventHandler(M_btnMoreColors_Click);
		base.Controls.Add(this.m_btnState);
		base.Controls.Add(this.m_btnMoreColors);
		base.Name = "ColorPickerUIAdv";
		base.ResumeLayout(false);
	}

	private void M_btnState_Click(object sender, EventArgs e)
	{
		if (base.DesignMode)
		{
			ISelectionService selectionService = GetService(typeof(ISelectionService)) as ISelectionService;
			ArrayList arrayList = new ArrayList();
			arrayList.Add(this);
			selectionService.SetSelectedComponents(arrayList);
		}
		else
		{
			if (SelectedItem != null && SelectedItem.Color == AutomaticColor)
			{
				return;
			}
			bool flag = false;
			foreach (ColorUIAdvGroup group in Groups)
			{
				for (int i = 0; i < group.Items.Count; i++)
				{
					GroupColorItem groupColorItem = group.Items[i] as GroupColorItem;
					if (groupColorItem.Color == AutomaticColor)
					{
						flag = true;
						if (SelectedItem != null)
						{
							SelectedItem.State = ColorItemState.Normal;
							Invalidate(SelectedItem.Bounds);
						}
						groupColorItem.State = ColorItemState.Selected;
						m_ciSelectedItem = groupColorItem;
						Invalidate(SelectedItem.Bounds);
						ColorPickedEventArgs e2 = new ColorPickedEventArgs(SelectedItem.Color);
						OnPicked(e2);
						break;
					}
					if (!group.IsSubItemsVisible)
					{
						continue;
					}
					for (int j = 0; j < groupColorItem.SubItems.Count; j++)
					{
						ColorItem colorItem = groupColorItem.SubItems[j];
						if (colorItem.Color == AutomaticColor && SelectedItem != colorItem)
						{
							flag = true;
							if (SelectedItem != null)
							{
								SelectedItem.State = ColorItemState.Normal;
								Invalidate(SelectedItem.Bounds);
							}
							colorItem.State = ColorItemState.Selected;
							m_ciSelectedItem = colorItem;
							Invalidate(SelectedItem.Bounds);
							ColorPickedEventArgs e3 = new ColorPickedEventArgs(SelectedItem.Color);
							OnPicked(e3);
							break;
						}
					}
				}
				if (flag)
				{
					break;
				}
			}
			if (flag)
			{
				return;
			}
			foreach (ColorUIAdvGroup group2 in Groups)
			{
				if (group2.GroupType != ColorUIAdvGroups.RecentColors)
				{
					continue;
				}
				if (!group2.Visible)
				{
					group2.Visible = true;
				}
				GroupColorItem groupColorItem2 = new GroupColorItem(group2, AutomaticColor);
				int num = 0;
				foreach (ColorUIAdvGroup group3 in Groups)
				{
					if (group3.Items.Count > num)
					{
						num = group3.Items.Count;
					}
				}
				if (ShouldRemoveRecentItems() && group2.Items.Count >= num)
				{
					group2.Items.Remove(group2.Items[0]);
				}
				for (int k = 0; k < group2.Items.Count; k++)
				{
					group2.Items[k].Index++;
				}
				if (SelectedItem != null)
				{
					SelectedItem.State = ColorItemState.Normal;
					Invalidate(SelectedItem.Bounds);
				}
				groupColorItem2.State = ColorItemState.Selected;
				m_ciSelectedItem = groupColorItem2;
				m_ciHighLightedItem = null;
				group2.Items.Add(groupColorItem2);
				group2.CalculateItemsBounds();
				Invalidate(group2.Bounds);
				ColorPickedEventArgs e4 = new ColorPickedEventArgs(SelectedItem.Color);
				OnPicked(e4);
				break;
			}
		}
	}

	private void M_btnMoreColors_Click(object sender, EventArgs e)
	{
		if (base.DesignMode)
		{
			ISelectionService selectionService = GetService(typeof(ISelectionService)) as ISelectionService;
			ArrayList arrayList = new ArrayList();
			arrayList.Add(this);
			selectionService.SetSelectedComponents(arrayList);
			return;
		}
		ColorDlgAdv colorDlgAdv = new ColorDlgAdv(this);
		if (colorDlgAdv.ShowDialog() != DialogResult.OK)
		{
			return;
		}
		foreach (ColorUIAdvGroup group in Groups)
		{
			if (group.GroupType != ColorUIAdvGroups.RecentColors)
			{
				continue;
			}
			if (!group.Visible)
			{
				group.Visible = true;
			}
			GroupColorItem groupColorItem = new GroupColorItem(group, colorDlgAdv.Color);
			int num = 0;
			foreach (ColorUIAdvGroup group2 in Groups)
			{
				if (group2.Items.Count > num)
				{
					num = group2.Items.Count;
				}
			}
			if (ShouldRemoveRecentItems() && group.Items.Count >= num && num != 0)
			{
				group.Items.Remove(group.Items[0]);
			}
			for (int i = 0; i < group.Items.Count; i++)
			{
				group.Items[i].Index++;
			}
			if (SelectedItem != null)
			{
				SelectedItem.State = ColorItemState.Normal;
				Invalidate(SelectedItem.Bounds);
			}
			groupColorItem.State = ColorItemState.Selected;
			m_ciSelectedItem = groupColorItem;
			m_ciHighLightedItem = null;
			group.Items.Add(groupColorItem);
			group.CalculateItemsBounds();
			Invalidate(group.Bounds);
			ColorPickedEventArgs e2 = new ColorPickedEventArgs(SelectedItem.Color);
			OnPicked(e2);
			break;
		}
	}
}
