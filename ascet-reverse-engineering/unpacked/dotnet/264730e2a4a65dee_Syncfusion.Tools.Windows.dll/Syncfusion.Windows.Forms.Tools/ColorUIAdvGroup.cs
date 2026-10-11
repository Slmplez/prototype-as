using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[TypeConverter(typeof(ColorUIAdvGroupTypeConverter))]
public class ColorUIAdvGroup : ColorUIGroup
{
	internal const string DEF_GROUPNAME = "CustomGroup";

	private const int DEF_GROUPWIDTH = 172;

	internal const int DEF_HEADERHEIGHT = 20;

	internal const bool DEF_ISSUBITEMSVISIBLE = false;

	internal const int DEF_SUBITEMSDEPTH = 5;

	internal const bool DEF_VISIBLE = true;

	private Color thColor0 = Color.White;

	private Color thColor1 = Color.Black;

	private Color thColor2 = Color.FromArgb(237, 233, 229);

	private Color thColor3 = Color.FromArgb(30, 75, 120);

	private Color thColor4 = Color.FromArgb(78, 131, 185);

	private Color thColor5 = Color.FromArgb(190, 83, 75);

	private Color thColor6 = Color.FromArgb(154, 187, 88);

	private Color thColor7 = Color.FromArgb(127, 102, 160);

	private Color thColor8 = Color.FromArgb(77, 171, 200);

	private Color thColor9 = Color.FromArgb(245, 154, 64);

	private Color thSub0Color0 = Color.FromArgb(239, 239, 239);

	private Color thSub0Color1 = Color.FromArgb(214, 214, 214);

	private Color thSub0Color2 = Color.FromArgb(189, 189, 189);

	private Color thSub0Color3 = Color.FromArgb(165, 165, 165);

	private Color thSub0Color4 = Color.FromArgb(133, 133, 133);

	private Color thSub1Color0 = Color.FromArgb(123, 123, 123);

	private Color thSub1Color1 = Color.FromArgb(91, 91, 91);

	private Color thSub1Color2 = Color.FromArgb(58, 58, 58);

	private Color thSub1Color3 = Color.FromArgb(42, 42, 42);

	private Color thSub1Color4 = Color.FromArgb(9, 9, 9);

	private Color thSub2Color0 = Color.FromArgb(222, 215, 198);

	private Color thSub2Color1 = Color.FromArgb(198, 190, 148);

	private Color thSub2Color2 = Color.FromArgb(148, 142, 82);

	private Color thSub2Color3 = Color.FromArgb(74, 69, 41);

	private Color thSub2Color4 = Color.FromArgb(24, 28, 16);

	private Color thSub3Color0 = Color.FromArgb(206, 223, 239);

	private Color thSub3Color1 = Color.FromArgb(140, 182, 222);

	private Color thSub3Color2 = Color.FromArgb(90, 142, 206);

	private Color thSub3Color3 = Color.FromArgb(24, 60, 90);

	private Color thSub3Color4 = Color.FromArgb(16, 36, 66);

	private Color thSub4Color0 = Color.FromArgb(214, 223, 239);

	private Color thSub4Color1 = Color.FromArgb(189, 207, 222);

	private Color thSub4Color2 = Color.FromArgb(148, 182, 214);

	private Color thSub4Color3 = Color.FromArgb(57, 93, 140);

	private Color thSub4Color4 = Color.FromArgb(41, 60, 90);

	private Color thSub5Color0 = Color.FromArgb(239, 223, 222);

	private Color thSub5Color1 = Color.FromArgb(231, 182, 181);

	private Color thSub5Color2 = Color.FromArgb(214, 150, 148);

	private Color thSub5Color3 = Color.FromArgb(148, 52, 49);

	private Color thSub5Color4 = Color.FromArgb(99, 36, 33);

	private Color thSub6Color0 = Color.FromArgb(239, 239, 222);

	private Color thSub6Color1 = Color.FromArgb(214, 231, 181);

	private Color thSub6Color2 = Color.FromArgb(198, 215, 156);

	private Color thSub6Color3 = Color.FromArgb(115, 150, 57);

	private Color thSub6Color4 = Color.FromArgb(82, 101, 41);

	private Color thSub7Color0 = Color.FromArgb(231, 223, 239);

	private Color thSub7Color1 = Color.FromArgb(198, 199, 214);

	private Color thSub7Color2 = Color.FromArgb(181, 166, 198);

	private Color thSub7Color3 = Color.FromArgb(90, 77, 123);

	private Color thSub7Color4 = Color.FromArgb(57, 52, 74);

	private Color thSub8Color0 = Color.FromArgb(214, 239, 247);

	private Color thSub8Color1 = Color.FromArgb(181, 223, 231);

	private Color thSub8Color2 = Color.FromArgb(148, 207, 222);

	private Color thSub8Color3 = Color.FromArgb(49, 134, 156);

	private Color thSub8Color4 = Color.FromArgb(24, 93, 107);

	private Color thSub9Color0 = Color.FromArgb(247, 231, 214);

	private Color thSub9Color1 = Color.FromArgb(255, 215, 181);

	private Color thSub9Color2 = Color.FromArgb(247, 190, 140);

	private Color thSub9Color3 = Color.FromArgb(231, 109, 8);

	private Color thSub9Color4 = Color.FromArgb(156, 77, 8);

	private Color stColor0 = Color.FromArgb(192, 3, 0);

	private Color stColor1 = Color.FromArgb(253, 2, 0);

	private Color stColor2 = Color.FromArgb(254, 192, 0);

	private Color stColor3 = Color.FromArgb(253, 255, 0);

	private Color stColor4 = Color.FromArgb(148, 205, 82);

	private Color stColor5 = Color.FromArgb(1, 178, 75);

	private Color stColor6 = Color.FromArgb(0, 177, 239);

	private Color stColor7 = Color.FromArgb(2, 112, 191);

	private Color stColor8 = Color.FromArgb(0, 36, 89);

	private Color stColor9 = Color.FromArgb(113, 51, 154);

	internal Color[] M_themeColors = new Color[10];

	internal Color[,] M_themeSubColors = new Color[10, 5];

	internal Color[] M_standardColors = new Color[10];

	private ColorItemCollection m_items;

	private ColorPickerUIAdv m_control;

	private LabelItem m_label;

	private Size m_baseColorsArea = Size.Empty;

	private Size m_inheritColorsArea = Size.Empty;

	private bool m_bIsInheritColorAreaVisible;

	private ColorUIAdvGroups m_groupType = ColorUIAdvGroups.CustomColors;

	private int m_headerHeight = 20;

	private Rectangle m_bounds = Rectangle.Empty;

	private string m_name = SR.GetString("ColorPickerCustomColorsGroup");

	private bool m_bVisible = true;

	private int m_subItemsDepth = 5;

	private int m_index = -1;

	private Size m_size = Size.Empty;

	private bool m_bIsDefaultGroup;

	private bool m_bShouldChangeParentSize = true;

	private bool m_bShouldSerialize;

	[Description("Gets collection of base ColorItems for this group.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ColorItemCollection Items => m_items;

	internal ColorUIAdvGroups GroupType
	{
		get
		{
			return m_groupType;
		}
		set
		{
			if (m_groupType != value)
			{
				m_groupType = value;
				switch (m_groupType)
				{
				case ColorUIAdvGroups.ThemeColors:
					Name = SR.GetString("ColorPickerThemeColorsGroup");
					IsSubItemsVisible = true;
					break;
				case ColorUIAdvGroups.StandardColors:
					Name = SR.GetString("ColorPickerStandardColorsGroup");
					IsSubItemsVisible = false;
					break;
				case ColorUIAdvGroups.RecentColors:
					Name = SR.GetString("ColorPickerRecentColorsGroup");
					IsSubItemsVisible = false;
					Visible = false;
					break;
				default:
					Name = SR.GetString("ColorPickerCustomColorsGroup");
					break;
				}
				if (Items != null)
				{
					Items.Clear();
					InitColors();
				}
			}
		}
	}

	[Description("Getsor sets Group's header height.")]
	[DefaultValue(20)]
	public int HeaderHeight
	{
		get
		{
			return m_headerHeight;
		}
		set
		{
			if (m_headerHeight != value)
			{
				m_headerHeight = value;
				UpdateGroupSize();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Rectangle Bounds
	{
		get
		{
			return m_bounds;
		}
		set
		{
			if (m_bounds != value)
			{
				m_bounds = value;
			}
		}
	}

	[Description("Gets or sets group's name.")]
	[DefaultValue("CustomGroup")]
	public string Name
	{
		get
		{
			return m_name;
		}
		set
		{
			if (m_name != value)
			{
				m_name = value;
				if (ParentControl != null)
				{
					ParentControl.Invalidate(Bounds);
				}
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates whether group is visible.")]
	public bool Visible
	{
		get
		{
			return m_bVisible;
		}
		set
		{
			if (m_bVisible != value)
			{
				m_bVisible = value;
				if (ParentControl != null)
				{
					ParentControl.UpdateControl();
				}
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Size Size
	{
		get
		{
			return m_size;
		}
		set
		{
			if (m_size != value)
			{
				m_size = value;
				if (ParentControl != null && ShouldChangeParentSize)
				{
					ParentControl.UpdateControl();
				}
			}
		}
	}

	internal bool ShouldChangeParentSize
	{
		get
		{
			return m_bShouldChangeParentSize;
		}
		set
		{
			m_bShouldChangeParentSize = value;
		}
	}

	[DefaultValue(5)]
	[Description("Gets or sets count of visible SubColorItems.")]
	public int SubItemsDepth
	{
		get
		{
			return m_subItemsDepth;
		}
		set
		{
			if (m_subItemsDepth != value)
			{
				m_subItemsDepth = value;
				UpdateGroupSize();
			}
		}
	}

	[DefaultValue(-1)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int Index
	{
		get
		{
			return m_index;
		}
		set
		{
			if (m_index != value)
			{
				m_index = value;
				if (ParentControl != null)
				{
					ParentControl.UpdateControl();
				}
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ColorPickerUIAdv ParentControl
	{
		get
		{
			return m_control;
		}
		set
		{
			m_control = value;
		}
	}

	[Browsable(false)]
	public LabelItem Header => m_label;

	[Browsable(false)]
	internal Size BaseColorsArea => m_baseColorsArea;

	[Browsable(false)]
	internal Size InheritColorsArea => m_inheritColorsArea;

	[DefaultValue(false)]
	[Description("Specifies whether SubColorItems should be visible of hidden.")]
	public bool IsSubItemsVisible
	{
		get
		{
			return m_bIsInheritColorAreaVisible;
		}
		set
		{
			if (m_bIsInheritColorAreaVisible != value)
			{
				m_bIsInheritColorAreaVisible = value;
				UpdateGroupSize();
			}
		}
	}

	[Browsable(false)]
	[DefaultValue(false)]
	internal bool ShouldSerialize
	{
		get
		{
			return m_bShouldSerialize;
		}
		set
		{
			if (m_bShouldSerialize != value)
			{
				m_bShouldSerialize = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	internal bool IsDefaultGroup => m_bIsDefaultGroup;

	protected bool ShouldSerializeItems()
	{
		return !IsDefaultGroup;
	}

	internal void CalculateItemsBounds()
	{
		if (Items == null || Items.Count == 0 || ParentControl == null)
		{
			return;
		}
		Rectangle bounds = Bounds;
		int borderOffset = ParentControl.BorderOffset;
		int num = bounds.Y;
		if (Header.Dock == DockStyle.Top)
		{
			num += HeaderHeight;
		}
		Point empty = Point.Empty;
		Size colorItemSize = ParentControl.ColorItemSize;
		int num2 = num;
		if (IsSubItemsVisible)
		{
			num2 += ParentControl.BorderOffset + ParentControl.ColorItemSize.Height;
			num2 = ((ParentControl.VerticalItemsSpacing >= 6) ? (num2 + ParentControl.VerticalItemsSpacing) : (num2 + 6));
		}
		else
		{
			num2 += ParentControl.BorderOffset * 2 + ParentControl.ColorItemSize.Height;
		}
		Rectangle inheritArea = new Rectangle(new Point(0, num2), new Size(Size.Width, Size.Height - num2));
		int num3 = -1;
		for (int i = 0; i < Items.Count; i++)
		{
			int num4 = FindNextItem(num3++, movingRight: true);
			GroupColorItem groupColorItem = null;
			if (num4 != -1)
			{
				groupColorItem = Items[num4] as GroupColorItem;
				if (Visible)
				{
					empty = new Point(borderOffset + (colorItemSize.Width + ParentControl.HorizontalItemsSpacing) * num3, num + ParentControl.BorderOffset);
					Rectangle bounds2 = new Rectangle(empty, colorItemSize);
					groupColorItem.Bounds = bounds2;
				}
				else
				{
					groupColorItem.Bounds = Rectangle.Empty;
				}
				if (IsSubItemsVisible)
				{
					CalculateInheritItemsBounds(groupColorItem, inheritArea);
				}
				continue;
			}
			break;
		}
	}

	private void CalculateInheritItemsBounds(GroupColorItem colorItem, Rectangle inheritArea)
	{
		_ = Point.Empty;
		Size colorItemSize = ParentControl.ColorItemSize;
		int y = inheritArea.Location.Y;
		ColorItemCollection subItems = colorItem.SubItems;
		if (subItems == null || subItems.Count <= 0)
		{
			return;
		}
		int x = ParentControl.BorderOffset + (ParentControl.HorizontalItemsSpacing + colorItemSize.Width) * colorItem.Index;
		for (int i = 0; i < SubItemsDepth; i++)
		{
			int y2 = y + (ParentControl.VerticalItemsSpacing + colorItemSize.Height) * i;
			Rectangle bounds = new Rectangle(x, y2, colorItemSize.Width, colorItemSize.Height);
			if (i < subItems.Count)
			{
				ColorItem colorItem2 = subItems[i];
				if (Visible)
				{
					colorItem2.Bounds = bounds;
				}
				else
				{
					colorItem2.Bounds = Rectangle.Empty;
				}
			}
		}
		if (SubItemsDepth < subItems.Count)
		{
			for (int j = SubItemsDepth; j < subItems.Count; j++)
			{
				subItems[j].Bounds = Rectangle.Empty;
			}
		}
	}

	internal void UpdateGroupSize()
	{
		int num = 0;
		int headerHeight = HeaderHeight;
		if (ParentControl != null)
		{
			Size colorItemSize = m_control.ColorItemSize;
			int num2 = 0;
			if (Items != null)
			{
				num2 = Items.Count;
			}
			int width = ParentControl.BorderOffset * 2 + colorItemSize.Width * num2 + ParentControl.HorizontalItemsSpacing * (num2 - 1);
			int num3 = 0;
			if (IsSubItemsVisible)
			{
				num3 = ParentControl.BorderOffset + colorItemSize.Height;
				num3 = ((ParentControl.VerticalItemsSpacing >= 6) ? (num3 + ParentControl.VerticalItemsSpacing) : (num3 + 6));
			}
			else
			{
				num3 = ParentControl.BorderOffset * 2 + colorItemSize.Height;
			}
			m_baseColorsArea = new Size(width, num3);
			int height = ParentControl.BorderOffset + colorItemSize.Height * SubItemsDepth + ParentControl.VerticalItemsSpacing * (SubItemsDepth - 1);
			m_inheritColorsArea = new Size(m_baseColorsArea.Width, height);
			headerHeight += m_baseColorsArea.Height;
			num = m_baseColorsArea.Width;
			if (IsSubItemsVisible)
			{
				headerHeight += m_inheritColorsArea.Height;
			}
			Size = new Size(num, headerHeight);
			if (m_label != null && (m_label.Dock == DockStyle.Top || m_label.Dock == DockStyle.Bottom))
			{
				m_label.Size = new Size(Size.Width, HeaderHeight);
			}
		}
	}

	internal int FindNextItem(int index, bool movingRight)
	{
		if (movingRight)
		{
			index++;
			for (int i = 0; i < Items.Count; i++)
			{
				if (Items[i].Index == index)
				{
					return i;
				}
			}
		}
		else
		{
			index--;
			for (int num = Items.Count - 1; num >= 0; num--)
			{
				if (Items[num].Index == index)
				{
					return num;
				}
			}
		}
		return -1;
	}

	public ColorUIAdvGroup(ColorPickerUIAdv control, ColorUIAdvGroups group, bool isDesignMode)
	{
		m_control = control;
		GroupType = group;
		Init(isDesignMode);
		InitColors();
	}

	public ColorUIAdvGroup(ColorPickerUIAdv control, ColorUIAdvGroups group, bool isDesignMode, bool isDefault)
		: this(control, group, isDesignMode)
	{
		m_bIsDefaultGroup = isDefault;
	}

	private void Init(bool isDesignMode)
	{
		m_label = new LabelItem(this);
		if (m_items == null)
		{
			m_items = new ColorItemCollection(this, isBaseCollection: true);
		}
		if (!isDesignMode)
		{
			if (GroupType == ColorUIAdvGroups.ThemeColors)
			{
				IsSubItemsVisible = true;
			}
			else if (GroupType == ColorUIAdvGroups.RecentColors)
			{
				Visible = false;
			}
		}
		UpdateGroupSize();
	}

	private void InitColors()
	{
		if (m_groupType == ColorUIAdvGroups.ThemeColors)
		{
			ref Color reference = ref M_themeColors[0];
			reference = thColor0;
			ref Color reference2 = ref M_themeColors[1];
			reference2 = thColor1;
			ref Color reference3 = ref M_themeColors[2];
			reference3 = thColor2;
			ref Color reference4 = ref M_themeColors[3];
			reference4 = thColor3;
			ref Color reference5 = ref M_themeColors[4];
			reference5 = thColor4;
			ref Color reference6 = ref M_themeColors[5];
			reference6 = thColor5;
			ref Color reference7 = ref M_themeColors[6];
			reference7 = thColor6;
			ref Color reference8 = ref M_themeColors[7];
			reference8 = thColor7;
			ref Color reference9 = ref M_themeColors[8];
			reference9 = thColor8;
			ref Color reference10 = ref M_themeColors[9];
			reference10 = thColor9;
			ref Color reference11 = ref M_themeSubColors[0, 0];
			reference11 = thSub0Color0;
			ref Color reference12 = ref M_themeSubColors[0, 1];
			reference12 = thSub0Color1;
			ref Color reference13 = ref M_themeSubColors[0, 2];
			reference13 = thSub0Color2;
			ref Color reference14 = ref M_themeSubColors[0, 3];
			reference14 = thSub0Color3;
			ref Color reference15 = ref M_themeSubColors[0, 4];
			reference15 = thSub0Color4;
			ref Color reference16 = ref M_themeSubColors[1, 0];
			reference16 = thSub1Color0;
			ref Color reference17 = ref M_themeSubColors[1, 1];
			reference17 = thSub1Color1;
			ref Color reference18 = ref M_themeSubColors[1, 2];
			reference18 = thSub1Color2;
			ref Color reference19 = ref M_themeSubColors[1, 3];
			reference19 = thSub1Color3;
			ref Color reference20 = ref M_themeSubColors[1, 4];
			reference20 = thSub1Color4;
			ref Color reference21 = ref M_themeSubColors[2, 0];
			reference21 = thSub2Color0;
			ref Color reference22 = ref M_themeSubColors[2, 1];
			reference22 = thSub2Color1;
			ref Color reference23 = ref M_themeSubColors[2, 2];
			reference23 = thSub2Color2;
			ref Color reference24 = ref M_themeSubColors[2, 3];
			reference24 = thSub2Color3;
			ref Color reference25 = ref M_themeSubColors[2, 4];
			reference25 = thSub2Color4;
			ref Color reference26 = ref M_themeSubColors[3, 0];
			reference26 = thSub3Color0;
			ref Color reference27 = ref M_themeSubColors[3, 1];
			reference27 = thSub3Color1;
			ref Color reference28 = ref M_themeSubColors[3, 2];
			reference28 = thSub3Color2;
			ref Color reference29 = ref M_themeSubColors[3, 3];
			reference29 = thSub3Color3;
			ref Color reference30 = ref M_themeSubColors[3, 4];
			reference30 = thSub3Color4;
			ref Color reference31 = ref M_themeSubColors[4, 0];
			reference31 = thSub4Color0;
			ref Color reference32 = ref M_themeSubColors[4, 1];
			reference32 = thSub4Color1;
			ref Color reference33 = ref M_themeSubColors[4, 2];
			reference33 = thSub4Color2;
			ref Color reference34 = ref M_themeSubColors[4, 3];
			reference34 = thSub4Color3;
			ref Color reference35 = ref M_themeSubColors[4, 4];
			reference35 = thSub4Color4;
			ref Color reference36 = ref M_themeSubColors[5, 0];
			reference36 = thSub5Color0;
			ref Color reference37 = ref M_themeSubColors[5, 1];
			reference37 = thSub5Color1;
			ref Color reference38 = ref M_themeSubColors[5, 2];
			reference38 = thSub5Color2;
			ref Color reference39 = ref M_themeSubColors[5, 3];
			reference39 = thSub5Color3;
			ref Color reference40 = ref M_themeSubColors[5, 4];
			reference40 = thSub5Color4;
			ref Color reference41 = ref M_themeSubColors[6, 0];
			reference41 = thSub6Color0;
			ref Color reference42 = ref M_themeSubColors[6, 1];
			reference42 = thSub6Color1;
			ref Color reference43 = ref M_themeSubColors[6, 2];
			reference43 = thSub6Color2;
			ref Color reference44 = ref M_themeSubColors[6, 3];
			reference44 = thSub6Color3;
			ref Color reference45 = ref M_themeSubColors[6, 4];
			reference45 = thSub6Color4;
			ref Color reference46 = ref M_themeSubColors[7, 0];
			reference46 = thSub7Color0;
			ref Color reference47 = ref M_themeSubColors[7, 1];
			reference47 = thSub7Color1;
			ref Color reference48 = ref M_themeSubColors[7, 2];
			reference48 = thSub7Color2;
			ref Color reference49 = ref M_themeSubColors[7, 3];
			reference49 = thSub7Color3;
			ref Color reference50 = ref M_themeSubColors[7, 4];
			reference50 = thSub7Color4;
			ref Color reference51 = ref M_themeSubColors[8, 0];
			reference51 = thSub8Color0;
			ref Color reference52 = ref M_themeSubColors[8, 1];
			reference52 = thSub8Color1;
			ref Color reference53 = ref M_themeSubColors[8, 2];
			reference53 = thSub8Color2;
			ref Color reference54 = ref M_themeSubColors[8, 3];
			reference54 = thSub8Color3;
			ref Color reference55 = ref M_themeSubColors[8, 4];
			reference55 = thSub8Color4;
			ref Color reference56 = ref M_themeSubColors[9, 0];
			reference56 = thSub9Color0;
			ref Color reference57 = ref M_themeSubColors[9, 1];
			reference57 = thSub9Color1;
			ref Color reference58 = ref M_themeSubColors[9, 2];
			reference58 = thSub9Color2;
			ref Color reference59 = ref M_themeSubColors[9, 3];
			reference59 = thSub9Color3;
			ref Color reference60 = ref M_themeSubColors[9, 4];
			reference60 = thSub9Color4;
			GroupColorItem groupColorItem = new GroupColorItem(this, thColor0);
			groupColorItem.SubItems.Add(new ColorItem(groupColorItem, thSub0Color0));
			groupColorItem.SubItems.Add(new ColorItem(groupColorItem, thSub0Color1));
			groupColorItem.SubItems.Add(new ColorItem(groupColorItem, thSub0Color2));
			groupColorItem.SubItems.Add(new ColorItem(groupColorItem, thSub0Color3));
			groupColorItem.SubItems.Add(new ColorItem(groupColorItem, thSub0Color4));
			GroupColorItem groupColorItem2 = new GroupColorItem(this, thColor1);
			groupColorItem2.SubItems.Add(new ColorItem(groupColorItem2, thSub1Color0));
			groupColorItem2.SubItems.Add(new ColorItem(groupColorItem2, thSub1Color1));
			groupColorItem2.SubItems.Add(new ColorItem(groupColorItem2, thSub1Color2));
			groupColorItem2.SubItems.Add(new ColorItem(groupColorItem2, thSub1Color3));
			groupColorItem2.SubItems.Add(new ColorItem(groupColorItem2, thSub1Color4));
			GroupColorItem groupColorItem3 = new GroupColorItem(this, thColor2);
			groupColorItem3.SubItems.Add(new ColorItem(groupColorItem3, thSub2Color0));
			groupColorItem3.SubItems.Add(new ColorItem(groupColorItem3, thSub2Color1));
			groupColorItem3.SubItems.Add(new ColorItem(groupColorItem3, thSub2Color2));
			groupColorItem3.SubItems.Add(new ColorItem(groupColorItem3, thSub2Color3));
			groupColorItem3.SubItems.Add(new ColorItem(groupColorItem3, thSub2Color4));
			GroupColorItem groupColorItem4 = new GroupColorItem(this, thColor3);
			groupColorItem4.SubItems.Add(new ColorItem(groupColorItem4, thSub3Color0));
			groupColorItem4.SubItems.Add(new ColorItem(groupColorItem4, thSub3Color1));
			groupColorItem4.SubItems.Add(new ColorItem(groupColorItem4, thSub3Color2));
			groupColorItem4.SubItems.Add(new ColorItem(groupColorItem4, thSub3Color3));
			groupColorItem4.SubItems.Add(new ColorItem(groupColorItem4, thSub3Color4));
			GroupColorItem groupColorItem5 = new GroupColorItem(this, thColor4);
			groupColorItem5.SubItems.Add(new ColorItem(groupColorItem5, thSub4Color0));
			groupColorItem5.SubItems.Add(new ColorItem(groupColorItem5, thSub4Color1));
			groupColorItem5.SubItems.Add(new ColorItem(groupColorItem5, thSub4Color2));
			groupColorItem5.SubItems.Add(new ColorItem(groupColorItem5, thSub4Color3));
			groupColorItem5.SubItems.Add(new ColorItem(groupColorItem5, thSub4Color4));
			GroupColorItem groupColorItem6 = new GroupColorItem(this, thColor5);
			groupColorItem6.SubItems.Add(new ColorItem(groupColorItem6, thSub5Color0));
			groupColorItem6.SubItems.Add(new ColorItem(groupColorItem6, thSub5Color1));
			groupColorItem6.SubItems.Add(new ColorItem(groupColorItem6, thSub5Color2));
			groupColorItem6.SubItems.Add(new ColorItem(groupColorItem6, thSub5Color3));
			groupColorItem6.SubItems.Add(new ColorItem(groupColorItem6, thSub5Color4));
			GroupColorItem groupColorItem7 = new GroupColorItem(this, thColor6);
			groupColorItem7.SubItems.Add(new ColorItem(groupColorItem7, thSub6Color0));
			groupColorItem7.SubItems.Add(new ColorItem(groupColorItem7, thSub6Color1));
			groupColorItem7.SubItems.Add(new ColorItem(groupColorItem7, thSub6Color2));
			groupColorItem7.SubItems.Add(new ColorItem(groupColorItem7, thSub6Color3));
			groupColorItem7.SubItems.Add(new ColorItem(groupColorItem7, thSub6Color4));
			GroupColorItem groupColorItem8 = new GroupColorItem(this, thColor7);
			groupColorItem8.SubItems.Add(new ColorItem(groupColorItem8, thSub7Color0));
			groupColorItem8.SubItems.Add(new ColorItem(groupColorItem8, thSub7Color1));
			groupColorItem8.SubItems.Add(new ColorItem(groupColorItem8, thSub7Color2));
			groupColorItem8.SubItems.Add(new ColorItem(groupColorItem8, thSub7Color3));
			groupColorItem8.SubItems.Add(new ColorItem(groupColorItem8, thSub7Color4));
			GroupColorItem groupColorItem9 = new GroupColorItem(this, thColor8);
			groupColorItem9.SubItems.Add(new ColorItem(groupColorItem9, thSub8Color0));
			groupColorItem9.SubItems.Add(new ColorItem(groupColorItem9, thSub8Color1));
			groupColorItem9.SubItems.Add(new ColorItem(groupColorItem9, thSub8Color2));
			groupColorItem9.SubItems.Add(new ColorItem(groupColorItem9, thSub8Color3));
			groupColorItem9.SubItems.Add(new ColorItem(groupColorItem9, thSub8Color4));
			GroupColorItem groupColorItem10 = new GroupColorItem(this, thColor9);
			groupColorItem10.SubItems.Add(new ColorItem(groupColorItem10, thSub9Color0));
			groupColorItem10.SubItems.Add(new ColorItem(groupColorItem10, thSub9Color1));
			groupColorItem10.SubItems.Add(new ColorItem(groupColorItem10, thSub9Color2));
			groupColorItem10.SubItems.Add(new ColorItem(groupColorItem10, thSub9Color3));
			groupColorItem10.SubItems.Add(new ColorItem(groupColorItem10, thSub9Color4));
			Items.Add(groupColorItem);
			Items.Add(groupColorItem2);
			Items.Add(groupColorItem3);
			Items.Add(groupColorItem4);
			Items.Add(groupColorItem5);
			Items.Add(groupColorItem6);
			Items.Add(groupColorItem7);
			Items.Add(groupColorItem8);
			Items.Add(groupColorItem9);
			Items.Add(groupColorItem10);
		}
		else if (m_groupType == ColorUIAdvGroups.StandardColors)
		{
			ref Color reference61 = ref M_standardColors[0];
			reference61 = stColor0;
			ref Color reference62 = ref M_standardColors[1];
			reference62 = stColor1;
			ref Color reference63 = ref M_standardColors[2];
			reference63 = stColor2;
			ref Color reference64 = ref M_standardColors[3];
			reference64 = stColor3;
			ref Color reference65 = ref M_standardColors[4];
			reference65 = stColor4;
			ref Color reference66 = ref M_standardColors[5];
			reference66 = stColor5;
			ref Color reference67 = ref M_standardColors[6];
			reference67 = stColor6;
			ref Color reference68 = ref M_standardColors[7];
			reference68 = stColor7;
			ref Color reference69 = ref M_standardColors[8];
			reference69 = stColor8;
			ref Color reference70 = ref M_standardColors[9];
			reference70 = stColor9;
			Items.Add(new GroupColorItem(this, stColor0));
			Items.Add(new GroupColorItem(this, stColor1));
			Items.Add(new GroupColorItem(this, stColor2));
			Items.Add(new GroupColorItem(this, stColor3));
			Items.Add(new GroupColorItem(this, stColor4));
			Items.Add(new GroupColorItem(this, stColor5));
			Items.Add(new GroupColorItem(this, stColor6));
			Items.Add(new GroupColorItem(this, stColor7));
			Items.Add(new GroupColorItem(this, stColor8));
			Items.Add(new GroupColorItem(this, stColor9));
		}
	}
}
