using System;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Text;
using System.Globalization;
using System.Windows.Forms;
using System.Xml.Serialization;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Grid;

[TypeConverter(typeof(GridStyleInfoConverter))]
public class GridStyleInfo : StyleInfoBase
{
	private static GridStyleInfo defaultStyle;

	internal bool Locked;

	public static readonly GridStyleInfo Empty;

	private GridStyleInfoCustomPropertiesCollection cpl;

	private static bool fixSubObjectsDerivedFromRowandColStyle;

	[XmlIgnore]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridStyleInfoIdentity CellIdentity
	{
		get
		{
			return base.Identity as GridStyleInfoIdentity;
		}
		set
		{
			base.Identity = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new GridStyleInfoStore Store => (GridStyleInfoStore)base.Store;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridStyleInfoCustomPropertiesCollection CustomProperties
	{
		get
		{
			if (cpl == null)
			{
				cpl = new GridStyleInfoCustomPropertiesCollection(this);
			}
			return cpl;
		}
	}

	public static GridStyleInfo Default
	{
		get
		{
			if (defaultStyle == null)
			{
				defaultStyle = new GridStyleInfo();
				defaultStyle.TextColor = SystemColors.WindowText;
				defaultStyle.ReadOnly = false;
				defaultStyle.Themed = true;
				defaultStyle.Font = GridFontInfo.Default;
				defaultStyle.Borders = GridBordersInfo.Default;
				defaultStyle.BackgroundImageID = string.Empty;
				defaultStyle.BackgroundImage = null;
				defaultStyle.BackgroundImageMode = GridBackgroundImageMode.Normal;
				defaultStyle.HorizontalAlignment = GridHorizontalAlignment.Left;
				defaultStyle.CharacterCasing = CharacterCasing.Normal;
				defaultStyle.PasswordChar = ' ';
				defaultStyle.CellTipText = string.Empty;
				defaultStyle.VerticalAlignment = GridVerticalAlignment.Top;
				defaultStyle.CellType = "TextBox";
				defaultStyle.Error = string.Empty;
				defaultStyle.Interior = new BrushInfo(SystemColors.Window);
				defaultStyle.VerticalScrollbar = false;
				defaultStyle.MaxLength = 0;
				defaultStyle.CellAppearance = GridCellAppearance.Flat;
				defaultStyle.TextColor = SystemColors.WindowText;
				defaultStyle.WrapText = true;
				defaultStyle.Trimming = StringTrimming.Character;
				defaultStyle.AutoSize = false;
				defaultStyle.AllowEnter = false;
				defaultStyle.Enabled = true;
				defaultStyle.TriState = false;
				defaultStyle.DropDownStyle = GridDropDownStyle.Editable;
				defaultStyle.Clickable = true;
				defaultStyle.BaseStyle = string.Empty;
				defaultStyle.Description = string.Empty;
				defaultStyle.ImageList = null;
				defaultStyle.ImageIndex = -1;
				defaultStyle.DataSource = null;
				defaultStyle.DisplayMember = string.Empty;
				defaultStyle.ValueMember = string.Empty;
				defaultStyle.PropertyDescriptor = null;
				defaultStyle.FloatCell = true;
				defaultStyle.FloodCell = true;
				defaultStyle.MergeCell = GridMergeCellDirection.None;
				defaultStyle.RightToLeft = RightToLeft.Inherit;
				defaultStyle.ImageFromByteArray = true;
				defaultStyle.Format = string.Empty;
				defaultStyle.FormulaTag = null;
				defaultStyle.CellValueType = null;
				defaultStyle.StrictValueType = true;
				defaultStyle.CultureInfo = null;
				defaultStyle.CellValue = string.Empty;
				defaultStyle.ShowButtons = GridShowButtons.Show;
				defaultStyle.TextAlign = GridTextAlign.Default;
				defaultStyle.HotkeyPrefix = HotkeyPrefix.None;
				defaultStyle.CheckBoxOptions = GridCheckBoxCellInfo.Default;
				defaultStyle.ValidateValue = GridCellValidateValueInfo.Default;
				defaultStyle.NumericUpDown = GridNumericUpDownCellInfo.Default;
				defaultStyle.TextMargins = GridMarginsInfo.Default;
				defaultStyle.BorderMargins = GridMarginsInfo.Empty;
				defaultStyle.MaskEdit = GridMaskEditInfo.Default;
				defaultStyle.ProgressBar = GridProgressBarInfo.Default;
				defaultStyle.CurrencyEdit = GridCurrencyEditInfo.Default;
				defaultStyle.ImageSizeMode = GridImageSizeMode.CenterImage;
			}
			return defaultStyle;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridCellModelBase CellModel
	{
		get
		{
			if (base.Identity is GridStyleInfoIdentity gridStyleInfoIdentity)
			{
				return gridStyleInfoIdentity.LookupCellModel(CellType);
			}
			return null;
		}
	}

	[ReadOnly(true)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Font GdipFont
	{
		[DebuggerStepThrough]
		get
		{
			if (HasFont && !Font.IsEmpty)
			{
				return Font.GdipFont;
			}
			if (base.Identity != null && base.Identity.GetBaseStyleNotEmptyExpandable(this, GridStyleInfoStore.FontProperty) is GridStyleInfo gridStyleInfo)
			{
				return gridStyleInfo.GdipFont;
			}
			return Default.GdipFont;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[XmlIgnore]
	[Browsable(false)]
	public GridFontInfo ReadOnlyFont
	{
		get
		{
			if (HasFont && !Font.IsEmpty)
			{
				return Font;
			}
			if (base.Identity != null && base.Identity.GetBaseStyleNotEmptyExpandable(this, GridStyleInfoStore.FontProperty) is GridStyleInfo gridStyleInfo)
			{
				if (fixSubObjectsDerivedFromRowandColStyle && IsRowOrColumnStyle(gridStyleInfo))
				{
					return Font;
				}
				return gridStyleInfo.Font;
			}
			return Default.Font;
		}
	}

	[SRCategory("StyleCategoryAppearance")]
	[Description("The font for drawing text.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	public GridFontInfo Font
	{
		[DebuggerStepThrough]
		get
		{
			return (GridFontInfo)GetValue(GridStyleInfoStore.FontProperty);
		}
		set
		{
			SetValue(GridStyleInfoStore.FontProperty, value);
		}
	}

	[XmlIgnore]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasFont
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.FontProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Description("Top, left, bottom, and right border settings.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[SRCategory("StyleCategoryAppearance")]
	public GridBordersInfo Borders
	{
		[DebuggerStepThrough]
		get
		{
			return (GridBordersInfo)GetValue(GridStyleInfoStore.BordersProperty);
		}
		set
		{
			SetValue(GridStyleInfoStore.BordersProperty, value);
		}
	}

	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[XmlIgnore]
	[Browsable(false)]
	public GridBordersInfo ReadOnlyBorders
	{
		get
		{
			if (HasBorders && !Borders.IsEmpty)
			{
				return Borders;
			}
			if (base.Identity != null && base.Identity.GetBaseStyleNotEmptyExpandable(this, GridStyleInfoStore.BordersProperty) is GridStyleInfo gridStyleInfo)
			{
				if (fixSubObjectsDerivedFromRowandColStyle && IsRowOrColumnStyle(gridStyleInfo))
				{
					return Borders;
				}
				return gridStyleInfo.Borders;
			}
			return Default.Borders;
		}
	}

	[Browsable(false)]
	[XmlIgnore]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public static bool FixSubObjectsDerivedFromRowandColStyle
	{
		get
		{
			return fixSubObjectsDerivedFromRowandColStyle;
		}
		set
		{
			fixSubObjectsDerivedFromRowandColStyle = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[XmlIgnore]
	[Browsable(false)]
	public bool HasBorders
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.BordersProperty);
		}
	}

	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	[Description("Lets you specify a solid backcolor, gradient, or pattern style with both back and forecolor for a cell's background.")]
	public BrushInfo Interior
	{
		[DebuggerStepThrough]
		get
		{
			return (BrushInfo)GetValue(GridStyleInfoStore.InteriorProperty);
		}
		set
		{
			SetValue(GridStyleInfoStore.InteriorProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasInterior
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.InteriorProperty);
		}
	}

	[Description("Provides a shortcut to get the backcolor of a cell instead of using Interior.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public Color BackColor
	{
		[DebuggerStepThrough]
		get
		{
			return Interior.BackColor;
		}
		[DebuggerStepThrough]
		set
		{
			Interior = new BrushInfo(value);
		}
	}

	[Browsable(true)]
	[Description("Contains text color of a cell.")]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public Color TextColor
	{
		[DebuggerStepThrough]
		get
		{
			return (Color)GetValue(GridStyleInfoStore.TextColorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.TextColorProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasTextColor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.TextColorProperty);
		}
	}

	[SRCategory("StyleCategoryBehavior")]
	[Browsable(true)]
	[NotifyParentProperty(true)]
	[Description("Specifies if cell contents can be modified by the user. You can programmatically change Read-only cells by setting IgnoreReadOnly to True.")]
	public bool ReadOnly
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.ReadOnlyProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ReadOnlyProperty, value ? 1 : 0);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasReadOnly
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ReadOnlyProperty);
		}
	}

	[SRCategory("StyleCategoryBehavior")]
	[NotifyParentProperty(true)]
	[Description("Specifies if cell content reads from right to left.")]
	[Browsable(true)]
	public RightToLeft RightToLeft
	{
		get
		{
			return (RightToLeft)GetShortValue(GridStyleInfoStore.RightToLeftProperty);
		}
		set
		{
			SetValue(GridStyleInfoStore.RightToLeftProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasRightToLeft => HasValue(GridStyleInfoStore.RightToLeftProperty);

	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	[Description("Specifies if cell types that support Windows XP themes should be drawn themed.")]
	public bool Themed
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.ThemedProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ThemedProperty, value ? 1 : 0);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasThemed
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ThemedProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Browsable(true)]
	[Description("Specifies if the user can click on any cell button elements in this renderer.")]
	[SRCategory("StyleCategoryBehavior")]
	public bool Clickable
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.ClickableProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ClickableProperty, value ? 1 : 0);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasClickable
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ClickableProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Description("Contains hotkey prefix information of a cell.")]
	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	public HotkeyPrefix HotkeyPrefix
	{
		[DebuggerStepThrough]
		get
		{
			return (HotkeyPrefix)GetShortValue(GridStyleInfoStore.HotkeyPrefixProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.HotkeyPrefixProperty, (short)value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasHotkeyPrefix
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.HotkeyPrefixProperty);
		}
	}

	[Browsable(true)]
	[Description("Indicates how text is trimmed when it exceeds the edges of the cell text rectangle.")]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public StringTrimming Trimming
	{
		[DebuggerStepThrough]
		get
		{
			return (StringTrimming)GetShortValue(GridStyleInfoStore.TrimmingProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.TrimmingProperty, (short)value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasTrimming
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.TrimmingProperty);
		}
	}

	[SRCategory("StyleCategoryAppearance")]
	[Description("Specifies horizontal alignment of text in the cell.")]
	[Browsable(true)]
	[NotifyParentProperty(true)]
	public GridHorizontalAlignment HorizontalAlignment
	{
		[DebuggerStepThrough]
		get
		{
			return (GridHorizontalAlignment)GetShortValue(GridStyleInfoStore.HorizontalAlignmentProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.HorizontalAlignmentProperty, (short)value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasHorizontalAlignment
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.HorizontalAlignmentProperty);
		}
	}

	[Description("Specifies if cell control modifies the case of characters as they are typed.")]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	public CharacterCasing CharacterCasing
	{
		[DebuggerStepThrough]
		get
		{
			return (CharacterCasing)GetShortValue(GridStyleInfoStore.CharacterCasingProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.CharacterCasingProperty, (short)value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasCharacterCasing
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.CharacterCasingProperty);
		}
	}

	[Browsable(true)]
	[Description("Specifies vertical alignment of text in the cell.")]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public GridVerticalAlignment VerticalAlignment
	{
		[DebuggerStepThrough]
		get
		{
			return (GridVerticalAlignment)GetShortValue(GridStyleInfoStore.VerticalAlignmentProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.VerticalAlignmentProperty, (short)value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasVerticalAlignment
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.VerticalAlignmentProperty);
		}
	}

	[Browsable(true)]
	[Description("Align text left of button elements (which is typical for combo boxes). Or align text right of button elements.")]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public GridTextAlign TextAlign
	{
		[DebuggerStepThrough]
		get
		{
			return (GridTextAlign)GetShortValue(GridStyleInfoStore.TextAlignProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.TextAlignProperty, (short)value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasTextAlign
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.TextAlignProperty);
		}
	}

	[TypeConverter(typeof(GridBaseStyleNameConverter))]
	[NotifyParentProperty(true)]
	[SRCategory("StyleCategoryStyle")]
	[Browsable(true)]
	[Description("The base style for this style instance with default values for properties that are not initialized for this style object.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public string BaseStyle
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridStyleInfoStore.BaseStyleProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.BaseStyleProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBaseStyle
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.BaseStyleProperty);
		}
	}

	[SRCategory("StyleCategoryBehavior")]
	[NotifyParentProperty(true)]
	[Description("Specifies if text should be wrapped when it does not fit into a single line.")]
	[Browsable(true)]
	public bool WrapText
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.WrapTextProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.WrapTextProperty, value ? 1 : 0);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasWrapText
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.WrapTextProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Browsable(true)]
	[Description("Specifies if text box should show a vertical scrollbar when text is being edited and does not fit in cell. WrapText must be initialized to True.")]
	[SRCategory("StyleCategoryBehavior")]
	public bool VerticalScrollbar
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.VerticalScrollbarProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.VerticalScrollbarProperty, value ? 1 : 0);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasVerticalScrollbar
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.VerticalScrollbarProperty);
		}
	}

	[Description("Specifies if the cell height should automatically increase when the edited text does not fit into the cell and WrapText is True. If WrapText is False, AutoSize will affect the column width.")]
	[Browsable(true)]
	[NotifyParentProperty(true)]
	[SRCategory("StyleCategoryBehavior")]
	public bool AutoSize
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.AutoSizeProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.AutoSizeProperty, value ? 1 : 0);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasAutoSize
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.AutoSizeProperty);
		}
	}

	[Description("Specifies if pressing the <Enter>-Key should insert a new line into the edited text.")]
	[Browsable(true)]
	[NotifyParentProperty(true)]
	[SRCategory("StyleCategoryBehavior")]
	public bool AllowEnter
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.AllowEnterProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.AllowEnterProperty, value ? 1 : 0);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasAllowEnter
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.AllowEnterProperty);
		}
	}

	[Description("Specifies if the cell can be activated as current cell or if the cell should be skipped when moving the current cell.")]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	[SRCategory("StyleCategoryBehavior")]
	public bool Enabled
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.EnabledProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.EnabledProperty, value ? 1 : 0);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasEnabled
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.EnabledProperty);
		}
	}

	[Description("Specifies if this checkbox is a Tristate check box that has an additional indeterminated state.")]
	[Browsable(true)]
	[SRCategory("StyleCategoryBehavior")]
	[NotifyParentProperty(true)]
	public bool TriState
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.TriStateProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.TriStateProperty, value ? 1 : 0);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasTriState
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.TriStateProperty);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[NotifyParentProperty(true)]
	[SRCategory("StyleCategoryValue")]
	[Description("Specifies if user input is restricted to items from the ChoiceList or DataSource")]
	public bool ExclusiveChoiceList
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.ExclusiveChoiceListProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ExclusiveChoiceListProperty, value ? 1 : 0);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasExclusiveChoiceList
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ExclusiveChoiceListProperty);
		}
	}

	[NotifyParentProperty(true)]
	[SRCategory("StyleCategoryValue")]
	[Description("Specifies if user input is restricted to items from the ChoiceList or DataSource.")]
	[Browsable(true)]
	public GridDropDownStyle DropDownStyle
	{
		[DebuggerStepThrough]
		get
		{
			GridDropDownStyle gridDropDownStyle = GridDropDownStyle.Editable;
			if (GetShortValue(GridStyleInfoStore.ExclusiveChoiceListProperty) == 1)
			{
				gridDropDownStyle |= GridDropDownStyle.Exclusive;
			}
			if (GetShortValue(GridStyleInfoStore.AutoCompleteProperty) == 1)
			{
				gridDropDownStyle |= GridDropDownStyle.AutoComplete;
			}
			return gridDropDownStyle;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ExclusiveChoiceListProperty, ((value & GridDropDownStyle.Exclusive) == GridDropDownStyle.Exclusive) ? 1 : 0);
			SetValue(GridStyleInfoStore.AutoCompleteProperty, ((value & GridDropDownStyle.AutoComplete) == GridDropDownStyle.AutoComplete) ? 1 : 0);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasDropDownStyle
	{
		[DebuggerStepThrough]
		get
		{
			if (!HasValue(GridStyleInfoStore.AutoCompleteProperty))
			{
				return HasValue(GridStyleInfoStore.ExclusiveChoiceListProperty);
			}
			return true;
		}
	}

	[SRCategory("StyleCategoryValue")]
	[Browsable(true)]
	[Description("Specifies if user input is restricted to items from the ChoiceList or DataSource.")]
	internal bool AutoComplete
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.AutoCompleteProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.AutoCompleteProperty, value ? 1 : 0);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	internal bool HasAutoComplete
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.AutoCompleteProperty);
		}
	}

	[Description("Gets / sets if text can float into the boundaries of a neighboring cell.")]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	[SRCategory("StyleCategoryBehavior")]
	public bool FloatCell
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.FloatCellProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.FloatCellProperty, value ? 1 : 0);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasFloatCell
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.FloatCellProperty);
		}
	}

	[SRCategory("StyleCategoryBehavior")]
	[Browsable(true)]
	[Description("Gets / sets if this cell can be flooded by a previous cell.")]
	[NotifyParentProperty(true)]
	public bool FloodCell
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.FloodCellProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.FloodCellProperty, value ? 1 : 0);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasFloodCell
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.FloodCellProperty);
		}
	}

	[SRCategory("StyleCategoryAppearance")]
	[Browsable(true)]
	[Description("Specifies if cell edges shall be drawn raised, sunken, or flat (default).")]
	[NotifyParentProperty(true)]
	public GridMergeCellDirection MergeCell
	{
		[DebuggerStepThrough]
		get
		{
			return (GridMergeCellDirection)GetShortValue(GridStyleInfoStore.MergeCellProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.MergeCellProperty, (short)value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasMergeCell
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.MergeCellProperty);
		}
	}

	[Description("Specifies if cell edges shall be drawn raised, sunken, or flat (default).")]
	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public GridCellAppearance CellAppearance
	{
		[DebuggerStepThrough]
		get
		{
			return (GridCellAppearance)GetShortValue(GridStyleInfoStore.CellAppearanceProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.CellAppearanceProperty, (short)value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasCellAppearance
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.CellAppearanceProperty);
		}
	}

	[Description("Limits the number of characters the user can type into the cell. Note: When selecting a text from a choice list or when pasting text, the text can be longer. Additional validation is necessary on your side.")]
	[Browsable(true)]
	[SRCategory("StyleCategoryBehavior")]
	[NotifyParentProperty(true)]
	public int MaxLength
	{
		[DebuggerStepThrough]
		get
		{
			return (int)GetValue(GridStyleInfoStore.MaxLengthProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.MaxLengthProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasMaxLength
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.MaxLengthProperty);
		}
	}

	[SRCategory("StyleCategoryAppearance")]
	[Browsable(true)]
	[TypeConverter(typeof(GridCellTypeNameConverter))]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Contains cell type information of a cell.")]
	[NotifyParentProperty(true)]
	public string CellType
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridStyleInfoStore.CellTypeProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.CellTypeProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasCellType
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.CellTypeProperty);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Editor("System.Windows.Forms.Design.StringCollectionEditor, System.Design", "System.Drawing.Design.UITypeEditor, System.Drawing")]
	[Description("Specifies items to be displayed in a drop-down list.")]
	[Browsable(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[SRCategory("StyleCategoryValue")]
	[NotifyParentProperty(true)]
	public StringCollection ChoiceList
	{
		[DebuggerStepThrough]
		get
		{
			return (StringCollection)GetValue(GridStyleInfoStore.ChoiceListProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ChoiceListProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasChoiceList
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ChoiceListProperty);
		}
	}

	[SRCategory("StyleCategoryValue")]
	[Browsable(true)]
	[Description("Gets / sets the text that is shown in check box or pushbuttons.")]
	[NotifyParentProperty(true)]
	public string Description
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridStyleInfoStore.DescriptionProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.DescriptionProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasDescription
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.DescriptionProperty);
		}
	}

	[Editor(typeof(GridCellFormatEditor), typeof(UITypeEditor))]
	[Browsable(true)]
	[Description("Contains format information of a cell.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[SRCategory("StyleCategoryValue")]
	[NotifyParentProperty(true)]
	public string Format
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridStyleInfoStore.FormatProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.FormatProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasFormat
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.FormatProperty);
		}
	}

	[Editor("System.Windows.Forms.Design.DataMemberFieldEditor, System.Design", "System.Drawing.Design.UITypeEditor, System.Drawing")]
	[Category("Data")]
	[TypeConverter("System.Windows.Forms.Design.DataMemberFieldConverter, System.Design")]
	[Description("Indicates the property to display for the items in this control.")]
	[NotifyParentProperty(true)]
	public string DisplayMember
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridStyleInfoStore.DisplayMemberProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.DisplayMemberProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasDisplayMember
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.DisplayMemberProperty);
		}
	}

	[Editor("System.Windows.Forms.Design.DataMemberFieldEditor, System.Design", "System.Drawing.Design.UITypeEditor, System.Drawing")]
	[Category("Data")]
	[Description("Indicates the property to use as the actual value for the items in the control.")]
	[NotifyParentProperty(true)]
	public string ValueMember
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridStyleInfoStore.ValueMemberProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ValueMemberProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasValueMember
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ValueMemberProperty);
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Data")]
	[Description("Indicates the list that this cell will use to get its items.")]
	[TypeConverter("System.Windows.Forms.Design.DataSourceConverter, System.Design")]
	[CloneableProperty(false)]
	[DisposeableProperty(false)]
	[NotifyParentProperty(true)]
	public object DataSource
	{
		[DebuggerStepThrough]
		get
		{
			return GetValue(GridStyleInfoStore.DataSourceProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.DataSourceProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasDataSource
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.DataSourceProperty);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public PropertyDescriptor PropertyDescriptor
	{
		[DebuggerStepThrough]
		get
		{
			return (PropertyDescriptor)GetValue(GridStyleInfoStore.PropertyDescriptorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.PropertyDescriptorProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasPropertyDescriptor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.PropertyDescriptorProperty);
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Gets / sets the value as a string.")]
	[Browsable(true)]
	[SRCategory("StyleCategoryValue")]
	[NotifyParentProperty(true)]
	public string Text
	{
		[DebuggerStepThrough]
		get
		{
			_ = CellValue;
			return GetText(CellValue);
		}
		[DebuggerStepThrough]
		set
		{
			ApplyText(value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasText
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.CellValueProperty);
		}
	}

	[Description("Contains cell value information of a cell.")]
	[Browsable(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[SRCategory("StyleCategoryValue")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public object CellValue
	{
		[DebuggerStepThrough]
		get
		{
			return GetValue(GridStyleInfoStore.CellValueProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.CellValueProperty, value);
			if (HasError)
			{
				ResetError();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasCellValue
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.CellValueProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Browsable(true)]
	[TypeConverter(typeof(GridCellValueTypeConverter))]
	[RefreshProperties(RefreshProperties.Repaint)]
	[SRCategory("StyleCategoryValue")]
	[Description("Contains cell value type information of a cell.")]
	public Type CellValueType
	{
		[DebuggerStepThrough]
		get
		{
			return (Type)GetValue(GridStyleInfoStore.CellValueTypeProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.CellValueTypeProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasCellValueType
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.CellValueTypeProperty);
		}
	}

	[Browsable(true)]
	[Description("Specifies if cells should check whether a byte array can be converted to a image.")]
	[SRCategory("StyleCategoryValue")]
	[NotifyParentProperty(true)]
	public bool ImageFromByteArray
	{
		get
		{
			return GetShortValue(GridStyleInfoStore.ImageFromByteArrayProperty) != 0;
		}
		set
		{
			SetValue(GridStyleInfoStore.ImageFromByteArrayProperty, value ? 1 : 0);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasImageFromByteArray => HasValue(GridStyleInfoStore.ImageFromByteArrayProperty);

	[Description("Holds error information if a text could not be converted to the Type specified with CellValueType.")]
	[Browsable(false)]
	[SRCategory("StyleCategoryValue")]
	public string Error
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridStyleInfoStore.ErrorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ErrorProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasError
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ErrorProperty);
		}
	}

	[SRCategory("StyleCategoryValue")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(true)]
	[NotifyParentProperty(true)]
	public bool StrictValueType
	{
		[DebuggerStepThrough]
		get
		{
			return GetShortValue(GridStyleInfoStore.StrictValueTypeProperty) != 0;
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.StrictValueTypeProperty, value ? 1 : 0);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasStrictValueType
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.StrictValueTypeProperty);
		}
	}

	[Description("A custom tag you can associate with a cell.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[SRCategory("StyleCategoryValue")]
	[Browsable(false)]
	public object Tag
	{
		[DebuggerStepThrough]
		get
		{
			return GetValue(GridStyleInfoStore.TagProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.TagProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasTag
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.TagProperty);
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("A custom control you can associate with a cell.")]
	[Browsable(false)]
	[SRCategory("StyleCategoryValue")]
	[CloneableProperty(false)]
	[DisposeableProperty(false)]
	public Control Control
	{
		[DebuggerStepThrough]
		get
		{
			return (Control)GetValue(GridStyleInfoStore.ControlProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ControlProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasControl
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ControlProperty);
		}
	}

	[SerializeProperty(true)]
	[Description("A custom tag you can associate with a cell.")]
	[Browsable(false)]
	[SRCategory("StyleCategoryValue")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridFormulaTag FormulaTag
	{
		[DebuggerStepThrough]
		get
		{
			return (GridFormulaTag)GetValue(GridStyleInfoStore.FormulaTagProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.FormulaTagProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasFormulaTag
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.FormulaTagProperty);
		}
	}

	[DisposeableProperty(false)]
	[CloneableProperty(false)]
	[Description("The culture information holds rules for parsing and formatting the cell's value.")]
	[Browsable(true)]
	[TypeConverter(typeof(CultureInfoConverter))]
	[RefreshProperties(RefreshProperties.Repaint)]
	[SRCategory("StyleCategoryValue")]
	[ImmutableObject(true)]
	[NotifyParentProperty(true)]
	public CultureInfo CultureInfo
	{
		[DebuggerStepThrough]
		get
		{
			return (CultureInfo)GetValue(GridStyleInfoStore.CultureInfoProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.CultureInfoProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasCultureInfo
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.CultureInfoProperty);
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[SRCategory("StyleCategoryValue")]
	[NotifyParentProperty(true)]
	[Description("Holds validation rules for the cell values that are being checked before any user changes are committed to the grid cells style object..")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridCellValidateValueInfo ValidateValue
	{
		[DebuggerStepThrough]
		get
		{
			return (GridCellValidateValueInfo)GetValue(GridStyleInfoStore.ValidateValueProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ValidateValueProperty, value);
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[NotifyParentProperty(true)]
	public GridCellValidateValueInfo ReadOnlyValidateValue
	{
		get
		{
			if (HasValidateValue && !ValidateValue.IsEmpty)
			{
				return ValidateValue;
			}
			if (base.Identity != null && base.Identity.GetBaseStyleNotEmptyExpandable(this, GridStyleInfoStore.ValidateValueProperty) is GridStyleInfo gridStyleInfo)
			{
				if (fixSubObjectsDerivedFromRowandColStyle && IsRowOrColumnStyle(gridStyleInfo))
				{
					return ValidateValue;
				}
				return gridStyleInfo.ValidateValue;
			}
			return Default.ValidateValue;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasValidateValue
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ValidateValueProperty);
		}
	}

	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(true)]
	[Description("CurrencyEdit state.")]
	[Category("Custom")]
	public GridCurrencyEditInfo CurrencyEdit
	{
		get
		{
			return (GridCurrencyEditInfo)GetValue(GridStyleInfoStore.CurrencyEditProperty);
		}
		set
		{
			SetValue(GridStyleInfoStore.CurrencyEditProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasCurrencyEdit => HasValue(GridStyleInfoStore.CurrencyEditProperty);

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(true)]
	[NotifyParentProperty(true)]
	[Description("MaskedEdit state.")]
	[Category("Custom")]
	public GridMaskEditInfo MaskEdit
	{
		get
		{
			return (GridMaskEditInfo)GetValue(GridStyleInfoStore.MaskEditProperty);
		}
		set
		{
			SetValue(GridStyleInfoStore.MaskEditProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasMaskEdit => HasValue(GridStyleInfoStore.MaskEditProperty);

	[NotifyParentProperty(true)]
	[Description("ProgressBar state.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Custom")]
	public GridProgressBarInfo ProgressBar
	{
		get
		{
			return (GridProgressBarInfo)GetValue(GridStyleInfoStore.ProgressBarProperty);
		}
		set
		{
			SetValue(GridStyleInfoStore.ProgressBarProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasProgressBar => HasValue(GridStyleInfoStore.ProgressBarProperty);

	[SRCategory("StyleCategoryValue")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Contains numeric up and down information for a cell.")]
	[NotifyParentProperty(true)]
	public GridNumericUpDownCellInfo NumericUpDown
	{
		[DebuggerStepThrough]
		get
		{
			return (GridNumericUpDownCellInfo)GetValue(GridStyleInfoStore.NumericUpDownProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.NumericUpDownProperty, value);
		}
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridNumericUpDownCellInfo ReadOnlyNumericUpDown
	{
		get
		{
			if (HasNumericUpDown && !NumericUpDown.IsEmpty)
			{
				return NumericUpDown;
			}
			if (base.Identity != null && base.Identity.GetBaseStyleNotEmptyExpandable(this, GridStyleInfoStore.NumericUpDownProperty) is GridStyleInfo gridStyleInfo)
			{
				if (fixSubObjectsDerivedFromRowandColStyle && IsRowOrColumnStyle(gridStyleInfo))
				{
					return NumericUpDown;
				}
				return gridStyleInfo.NumericUpDown;
			}
			return Default.NumericUpDown;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasNumericUpDown
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.NumericUpDownProperty);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[NotifyParentProperty(true)]
	[Description("Contains check box options of a cell.")]
	[SRCategory("StyleCategoryValue")]
	[Browsable(true)]
	public GridCheckBoxCellInfo CheckBoxOptions
	{
		[DebuggerStepThrough]
		get
		{
			return (GridCheckBoxCellInfo)GetValue(GridStyleInfoStore.CheckBoxOptionsProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.CheckBoxOptionsProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[DocumentationExclude]
	[Browsable(false)]
	public GridCheckBoxCellInfo ReadOnlyCheckBoxOptions
	{
		get
		{
			if (HasCheckBoxOptions && !CheckBoxOptions.IsEmpty)
			{
				return CheckBoxOptions;
			}
			if (base.Identity != null && base.Identity.GetBaseStyleNotEmptyExpandable(this, GridStyleInfoStore.CheckBoxOptionsProperty) is GridStyleInfo gridStyleInfo)
			{
				if (fixSubObjectsDerivedFromRowandColStyle && IsRowOrColumnStyle(gridStyleInfo))
				{
					return CheckBoxOptions;
				}
				return gridStyleInfo.CheckBoxOptions;
			}
			return Default.CheckBoxOptions;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasCheckBoxOptions
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.CheckBoxOptionsProperty);
		}
	}

	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	[Description("Holds text margins in pixels. When drawing a cell, this specifies the empty area between the text rectangle and the client rectangle of the cell without borders and cell buttons.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridMarginsInfo TextMargins
	{
		[DebuggerStepThrough]
		get
		{
			return (GridMarginsInfo)GetValue(GridStyleInfoStore.TextMarginsProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.TextMarginsProperty, value);
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridMarginsInfo ReadOnlyTextMargins
	{
		get
		{
			if (HasTextMargins && !TextMargins.IsEmpty)
			{
				return TextMargins;
			}
			if (base.Identity != null && base.Identity.GetBaseStyleNotEmptyExpandable(this, GridStyleInfoStore.TextMarginsProperty) is GridStyleInfo gridStyleInfo)
			{
				if (fixSubObjectsDerivedFromRowandColStyle && IsRowOrColumnStyle(gridStyleInfo))
				{
					return TextMargins;
				}
				return gridStyleInfo.TextMargins;
			}
			return Default.TextMargins;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasTextMargins
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.TextMarginsProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Description("Holds extra border margins in pixels. ")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[SRCategory("StyleCategoryAppearance")]
	public GridMarginsInfo BorderMargins
	{
		[DebuggerStepThrough]
		get
		{
			return (GridMarginsInfo)GetValue(GridStyleInfoStore.BorderMarginsProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.BorderMarginsProperty, value);
		}
	}

	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Browsable(false)]
	public GridMarginsInfo ReadOnlyBorderMargins
	{
		get
		{
			if (HasBorderMargins && !BorderMargins.IsEmpty)
			{
				return BorderMargins;
			}
			if (base.Identity != null && base.Identity.GetBaseStyleNotEmptyExpandable(this, GridStyleInfoStore.BorderMarginsProperty) is GridStyleInfo gridStyleInfo)
			{
				if (fixSubObjectsDerivedFromRowandColStyle && IsRowOrColumnStyle(gridStyleInfo))
				{
					return BorderMargins;
				}
				return gridStyleInfo.BorderMargins;
			}
			return Default.BorderMargins;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBorderMargins
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.BorderMarginsProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Description("Specifies when to show or display the cell buttons. Possible choices are: show the button only for the current cell, always show buttons, or never show buttons.")]
	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	public GridShowButtons ShowButtons
	{
		[DebuggerStepThrough]
		get
		{
			return (GridShowButtons)GetShortValue(GridStyleInfoStore.ShowButtonsProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ShowButtonsProperty, (short)value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasShowButtons
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ShowButtonsProperty);
		}
	}

	[Browsable(true)]
	[Description("The character used to mask characters of a password in a password-entry cell.")]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public char PasswordChar
	{
		[DebuggerStepThrough]
		get
		{
			return (char)GetValue(GridStyleInfoStore.PasswordCharProperty);
		}
		[DebuggerStepThrough]
		set
		{
			if (value.Equals('\0'))
			{
				ResetPasswordChar();
			}
			else
			{
				SetValue(GridStyleInfoStore.PasswordCharProperty, value);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasPasswordChar
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.PasswordCharProperty);
		}
	}

	[Browsable(true)]
	[Description("ToolTip text to be displayed when user hovers mouse over cell.")]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public string CellTipText
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridStyleInfoStore.CellTipTextProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.CellTipTextProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasCellTipText
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.CellTipTextProperty);
		}
	}

	[Browsable(true)]
	[Description("Holds an image index that specifies an image inside an image list.")]
	[NotifyParentProperty(true)]
	[Category("Image")]
	[TypeConverter(typeof(ImageIndexConverter))]
	[Editor(typeof(ImageIndexEditor), typeof(UITypeEditor))]
	public int ImageIndex
	{
		[DebuggerStepThrough]
		get
		{
			return (int)GetValue(GridStyleInfoStore.ImageIndexProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ImageIndexProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasImageIndex
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ImageIndexProperty);
		}
	}

	[Category("Image")]
	[Browsable(true)]
	[Description("Indicates how the image is displayed.")]
	[NotifyParentProperty(true)]
	public GridImageSizeMode ImageSizeMode
	{
		[DebuggerStepThrough]
		get
		{
			return (GridImageSizeMode)GetValue(GridStyleInfoStore.ImageSizeModeProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ImageSizeModeProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasImageSizeMode
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ImageSizeModeProperty);
		}
	}

	[Description("A list of images.")]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Image")]
	[CloneableProperty(false)]
	[DisposeableProperty(false)]
	[NotifyParentProperty(true)]
	public ImageList ImageList
	{
		[DebuggerStepThrough]
		get
		{
			return (ImageList)GetValue(GridStyleInfoStore.ImageListProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ImageListProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasImageList
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ImageListProperty);
		}
	}

	[Category("Image")]
	[Description("Indicates how the image is displayed.")]
	[Browsable(true)]
	[NotifyParentProperty(true)]
	public GridBackgroundImageMode BackgroundImageMode
	{
		get
		{
			return (GridBackgroundImageMode)GetShortValue(GridStyleInfoStore.BackgroundImageModeProperty);
		}
		set
		{
			SetValue(GridStyleInfoStore.BackgroundImageModeProperty, (short)value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasBackgroundImageMode => HasValue(GridStyleInfoStore.BackgroundImageModeProperty);

	[Browsable(false)]
	[Description("Gets / sets the namespace id for the image to be displayed.")]
	[Category("Image")]
	public string BackgroundImageID
	{
		get
		{
			return (string)GetValue(GridStyleInfoStore.BackgroundImageIDProperty);
		}
		set
		{
			SetValue(GridStyleInfoStore.BackgroundImageIDProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBackgroundImageID => HasValue(GridStyleInfoStore.BackgroundImageIDProperty);

	[Description("Gets / sets the image that the PictureBox displays.")]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	[Category("Image")]
	public Image BackgroundImage
	{
		get
		{
			return (Image)GetValue(GridStyleInfoStore.BackgroundImageProperty);
		}
		set
		{
			SetValue(GridStyleInfoStore.BackgroundImageProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasBackgroundImage => HasValue(GridStyleInfoStore.BackgroundImageProperty);

	[Browsable(false)]
	[Description("Specifies the permissible formats used to parse a user entry.")]
	[SRCategory("StyleCategoryValue")]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string[] ParseFormats
	{
		[DebuggerStepThrough]
		get
		{
			return (string[])GetValue(GridStyleInfoStore.ParseFormatsProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridStyleInfoStore.ParseFormatsProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasParseFormats
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridStyleInfoStore.ParseFormatsProperty);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Returns a formatted text for the default value for a specified Cell")]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[SRCategory("StyleCategoryValue")]
	public string FormatPreview
	{
		[DebuggerStepThrough]
		get
		{
			object defaultValue = ValueConvert.GetDefaultValue(CellValueType);
			if (defaultValue != null)
			{
				return GetFormattedText(defaultValue);
			}
			return string.Empty;
		}
	}

	[Description("Gets the formatted text value")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[SRCategory("StyleCategoryValue")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(true)]
	[NotifyParentProperty(true)]
	public string FormattedText
	{
		get
		{
			object cellValue = CellValue;
			try
			{
				return GetFormattedText(cellValue, 0);
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw;
				}
				return (cellValue != null) ? cellValue.ToString() : string.Empty;
			}
		}
		set
		{
			if (!ApplyFormattedText(value, 0))
			{
				throw new ArgumentException();
			}
		}
	}

	static GridStyleInfo()
	{
		defaultStyle = null;
		Empty = new GridStyleInfo();
		fixSubObjectsDerivedFromRowandColStyle = true;
	}

	[DebuggerStepThrough]
	public GridStyleInfo()
		: base(new GridStyleInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridStyleInfo(GridStyleInfo style)
		: base(style.Store)
	{
	}

	[DebuggerStepThrough]
	public GridStyleInfo(GridStyleInfoStore store)
		: base(store)
	{
	}

	[DebuggerStepThrough]
	public GridStyleInfo(StyleInfoIdentityBase identity)
		: base(identity, new GridStyleInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridStyleInfo(StyleInfoIdentityBase identity, GridStyleInfoStore store)
		: base(identity, store)
	{
	}

	[DebuggerStepThrough]
	public GridStyleInfo(StyleInfoIdentityBase identity, GridStyleInfoStore store, bool cacheValues)
		: base(identity, store, cacheValues)
	{
	}

	public GridModel GetGridModel()
	{
		return (base.Identity is GridStyleInfoIdentity gridStyleInfoIdentity) ? gridStyleInfoIdentity.GetGridModel() : null;
	}

	public GridControlBase GetActiveGridView()
	{
		return (base.Identity is GridStyleInfoIdentity gridStyleInfoIdentity) ? gridStyleInfoIdentity.GetActiveGridView() : null;
	}

	public override void ModifyStyle(IStyleInfo istyle, StyleModifyType mt)
	{
		if (!(base.Identity is GridStyleInfoIdentity { OffLine: false } gridStyleInfoIdentity) || base.Updating)
		{
			base.ModifyStyle(istyle, mt);
			return;
		}
		GridStyleInfo gridStyleInfo = istyle as GridStyleInfo;
		if (gridStyleInfo == null && istyle is GridStyleInfoStore store)
		{
			gridStyleInfo = new GridStyleInfo(store);
		}
		gridStyleInfoIdentity.GetGridModel().SetCellInfo(gridStyleInfoIdentity.RowIndex, gridStyleInfoIdentity.ColIndex, gridStyleInfo, mt);
	}

	[DebuggerStepThrough]
	public override StyleInfoSubObjectIdentity CreateSubObjectIdentity(StyleInfoProperty sip)
	{
		return new GridStyleInfoSubObjectIdentity(this, sip);
	}

	[DebuggerStepThrough]
	public GridStyleInfo GetOffLineCopy()
	{
		return new GridStyleInfo(((GridStyleInfoIdentity)base.Identity).MakeOfflineIdentity(), (GridStyleInfoStore)Store.Clone());
	}

	private bool ShouldSerializeCustomProperties()
	{
		return CustomProperties.Count > 0;
	}

	protected override void OnStyleChanged(StyleInfoProperty sip)
	{
		if (!Locked)
		{
			cpl = null;
			base.OnStyleChanged(sip);
		}
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		return Default;
	}

	[DebuggerStepThrough]
	public void ResetFont()
	{
		ResetValue(GridStyleInfoStore.FontProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeFont()
	{
		return HasValue(GridStyleInfoStore.FontProperty);
	}

	private bool IsRowOrColumnStyle(GridStyleInfo info)
	{
		if (info.CellIdentity != null && ((info.CellIdentity.ColIndex == -1 && info.CellIdentity.RowIndex >= 0) || (info.CellIdentity.ColIndex >= 0 && info.CellIdentity.RowIndex == -1)))
		{
			return true;
		}
		return false;
	}

	[DebuggerStepThrough]
	public void ResetBorders()
	{
		ResetValue(GridStyleInfoStore.BordersProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBorders()
	{
		return HasValue(GridStyleInfoStore.BordersProperty);
	}

	[DebuggerStepThrough]
	public void ResetInterior()
	{
		ResetValue(GridStyleInfoStore.InteriorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeInterior()
	{
		return HasValue(GridStyleInfoStore.InteriorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackColor()
	{
		return ShouldSerializeInterior();
	}

	public void ResetBackColor()
	{
		ResetInterior();
	}

	[DebuggerStepThrough]
	public void ResetTextColor()
	{
		ResetValue(GridStyleInfoStore.TextColorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTextColor()
	{
		return HasValue(GridStyleInfoStore.TextColorProperty);
	}

	[DebuggerStepThrough]
	public void ResetReadOnly()
	{
		ResetValue(GridStyleInfoStore.ReadOnlyProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeReadOnly()
	{
		return HasValue(GridStyleInfoStore.ReadOnlyProperty);
	}

	public void ResetRightToLeft()
	{
		ResetValue(GridStyleInfoStore.RightToLeftProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeRightToLeft()
	{
		return HasRightToLeft;
	}

	[DebuggerStepThrough]
	public void ResetThemed()
	{
		ResetValue(GridStyleInfoStore.ThemedProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeThemed()
	{
		return HasValue(GridStyleInfoStore.ThemedProperty);
	}

	[DebuggerStepThrough]
	public void ResetClickable()
	{
		ResetValue(GridStyleInfoStore.ClickableProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeClickable()
	{
		return HasValue(GridStyleInfoStore.ClickableProperty);
	}

	[DebuggerStepThrough]
	public void ResetHotkeyPrefix()
	{
		ResetValue(GridStyleInfoStore.HotkeyPrefixProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeHotkeyPrefix()
	{
		return HasValue(GridStyleInfoStore.HotkeyPrefixProperty);
	}

	[DebuggerStepThrough]
	public void ResetTrimming()
	{
		ResetValue(GridStyleInfoStore.TrimmingProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTrimming()
	{
		return HasValue(GridStyleInfoStore.TrimmingProperty);
	}

	[DebuggerStepThrough]
	public void ResetHorizontalAlignment()
	{
		ResetValue(GridStyleInfoStore.HorizontalAlignmentProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeHorizontalAlignment()
	{
		return HasValue(GridStyleInfoStore.HorizontalAlignmentProperty);
	}

	[DebuggerStepThrough]
	public void ResetCharacterCasing()
	{
		ResetValue(GridStyleInfoStore.CharacterCasingProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCharacterCasing()
	{
		return HasValue(GridStyleInfoStore.CharacterCasingProperty);
	}

	[DebuggerStepThrough]
	public void ResetVerticalAlignment()
	{
		ResetValue(GridStyleInfoStore.VerticalAlignmentProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeVerticalAlignment()
	{
		return HasValue(GridStyleInfoStore.VerticalAlignmentProperty);
	}

	[DebuggerStepThrough]
	public void ResetTextAlign()
	{
		ResetValue(GridStyleInfoStore.TextAlignProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTextAlign()
	{
		return HasValue(GridStyleInfoStore.TextAlignProperty);
	}

	[DebuggerStepThrough]
	public void ResetBaseStyle()
	{
		ResetValue(GridStyleInfoStore.BaseStyleProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBaseStyle()
	{
		return HasValue(GridStyleInfoStore.BaseStyleProperty);
	}

	[DebuggerStepThrough]
	public void ResetWrapText()
	{
		ResetValue(GridStyleInfoStore.WrapTextProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeWrapText()
	{
		return HasValue(GridStyleInfoStore.WrapTextProperty);
	}

	[DebuggerStepThrough]
	public void ResetVerticalScrollbar()
	{
		ResetValue(GridStyleInfoStore.VerticalScrollbarProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeVerticalScrollbar()
	{
		return HasValue(GridStyleInfoStore.VerticalScrollbarProperty);
	}

	[DebuggerStepThrough]
	public void ResetAutoSize()
	{
		ResetValue(GridStyleInfoStore.AutoSizeProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeAutoSize()
	{
		return HasValue(GridStyleInfoStore.AutoSizeProperty);
	}

	[DebuggerStepThrough]
	public void ResetAllowEnter()
	{
		ResetValue(GridStyleInfoStore.AllowEnterProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeAllowEnter()
	{
		return HasValue(GridStyleInfoStore.AllowEnterProperty);
	}

	[DebuggerStepThrough]
	public void ResetEnabled()
	{
		ResetValue(GridStyleInfoStore.EnabledProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeEnabled()
	{
		return HasValue(GridStyleInfoStore.EnabledProperty);
	}

	[DebuggerStepThrough]
	public void ResetTriState()
	{
		ResetValue(GridStyleInfoStore.TriStateProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTriState()
	{
		return HasValue(GridStyleInfoStore.TriStateProperty);
	}

	[DebuggerStepThrough]
	public void ResetExclusiveChoiceList()
	{
		ResetValue(GridStyleInfoStore.ExclusiveChoiceListProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeExclusiveChoiceList()
	{
		return HasValue(GridStyleInfoStore.ExclusiveChoiceListProperty);
	}

	[DebuggerStepThrough]
	public void ResetDropDownStyle()
	{
		ResetValue(GridStyleInfoStore.AutoCompleteProperty);
		ResetValue(GridStyleInfoStore.ExclusiveChoiceListProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeDropDownStyle()
	{
		if (!HasValue(GridStyleInfoStore.AutoCompleteProperty))
		{
			return HasValue(GridStyleInfoStore.ExclusiveChoiceListProperty);
		}
		return true;
	}

	[DocumentationExclude]
	public bool IsAutoComplete()
	{
		return GetShortValue(GridStyleInfoStore.AutoCompleteProperty) != 0;
	}

	[DebuggerStepThrough]
	internal void ResetAutoComplete()
	{
		ResetValue(GridStyleInfoStore.AutoCompleteProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeAutoComplete()
	{
		return HasValue(GridStyleInfoStore.AutoCompleteProperty);
	}

	[DebuggerStepThrough]
	public void ResetFloatCell()
	{
		ResetValue(GridStyleInfoStore.FloatCellProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeFloatCell()
	{
		return HasValue(GridStyleInfoStore.FloatCellProperty);
	}

	[DebuggerStepThrough]
	public void ResetFloodCell()
	{
		ResetValue(GridStyleInfoStore.FloodCellProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeFloodCell()
	{
		return HasValue(GridStyleInfoStore.FloodCellProperty);
	}

	[DebuggerStepThrough]
	public void ResetMergeCell()
	{
		ResetValue(GridStyleInfoStore.MergeCellProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMergeCell()
	{
		return HasValue(GridStyleInfoStore.MergeCellProperty);
	}

	[DebuggerStepThrough]
	public void ResetCellAppearance()
	{
		ResetValue(GridStyleInfoStore.CellAppearanceProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCellAppearance()
	{
		return HasValue(GridStyleInfoStore.CellAppearanceProperty);
	}

	[DebuggerStepThrough]
	public void ResetMaxLength()
	{
		ResetValue(GridStyleInfoStore.MaxLengthProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMaxLength()
	{
		return HasValue(GridStyleInfoStore.MaxLengthProperty);
	}

	[DebuggerStepThrough]
	public void ResetCellType()
	{
		ResetValue(GridStyleInfoStore.CellTypeProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCellType()
	{
		return HasValue(GridStyleInfoStore.CellTypeProperty);
	}

	[DebuggerStepThrough]
	public void ResetChoiceList()
	{
		ResetValue(GridStyleInfoStore.ChoiceListProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeChoiceList()
	{
		return HasValue(GridStyleInfoStore.ChoiceListProperty);
	}

	[DebuggerStepThrough]
	public void ResetDescription()
	{
		ResetValue(GridStyleInfoStore.DescriptionProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeDescription()
	{
		return HasValue(GridStyleInfoStore.DescriptionProperty);
	}

	[DebuggerStepThrough]
	public void ResetFormat()
	{
		ResetValue(GridStyleInfoStore.FormatProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeFormat()
	{
		return HasValue(GridStyleInfoStore.FormatProperty);
	}

	[DebuggerStepThrough]
	public void ResetDisplayMember()
	{
		ResetValue(GridStyleInfoStore.DisplayMemberProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeDisplayMember()
	{
		return HasValue(GridStyleInfoStore.DisplayMemberProperty);
	}

	[DebuggerStepThrough]
	public void ResetValueMember()
	{
		ResetValue(GridStyleInfoStore.ValueMemberProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeValueMember()
	{
		return HasValue(GridStyleInfoStore.ValueMemberProperty);
	}

	[DebuggerStepThrough]
	public void ResetDataSource()
	{
		ResetValue(GridStyleInfoStore.DataSourceProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeDataSource()
	{
		return HasValue(GridStyleInfoStore.DataSourceProperty);
	}

	[DebuggerStepThrough]
	public void ResetPropertyDescriptor()
	{
		ResetValue(GridStyleInfoStore.PropertyDescriptorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializePropertyDescriptor()
	{
		return HasValue(GridStyleInfoStore.PropertyDescriptorProperty);
	}

	[DebuggerStepThrough]
	public void ResetText()
	{
		ResetValue(GridStyleInfoStore.CellValueProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeText()
	{
		return HasValue(GridStyleInfoStore.CellValueProperty);
	}

	[DebuggerStepThrough]
	public void ResetCellValue()
	{
		ResetValue(GridStyleInfoStore.CellValueProperty);
		ResetError();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCellValue()
	{
		return HasValue(GridStyleInfoStore.CellValueProperty);
	}

	[DebuggerStepThrough]
	public void ResetCellValueType()
	{
		ResetValue(GridStyleInfoStore.CellValueTypeProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCellValueType()
	{
		return HasValue(GridStyleInfoStore.CellValueTypeProperty);
	}

	public void ResetImageFromByteArray()
	{
		ResetValue(GridStyleInfoStore.ImageFromByteArrayProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeImageFromByteArray()
	{
		return HasImageFromByteArray;
	}

	[DebuggerStepThrough]
	public void ResetError()
	{
		ResetValue(GridStyleInfoStore.ErrorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeError()
	{
		return HasValue(GridStyleInfoStore.ErrorProperty);
	}

	[DebuggerStepThrough]
	public void ResetStrictValueType()
	{
		ResetValue(GridStyleInfoStore.StrictValueTypeProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeStrictValueType()
	{
		return HasValue(GridStyleInfoStore.StrictValueTypeProperty);
	}

	[DebuggerStepThrough]
	public void ResetTag()
	{
		ResetValue(GridStyleInfoStore.TagProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTag()
	{
		return HasValue(GridStyleInfoStore.TagProperty);
	}

	[DebuggerStepThrough]
	public void ResetControl()
	{
		ResetValue(GridStyleInfoStore.ControlProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeControl()
	{
		return HasValue(GridStyleInfoStore.ControlProperty);
	}

	[DebuggerStepThrough]
	public void ResetFormulaTag()
	{
		ResetValue(GridStyleInfoStore.FormulaTagProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeFormulaTag()
	{
		return HasValue(GridStyleInfoStore.FormulaTagProperty);
	}

	public CultureInfo GetCulture(bool useCurrentCultureIfNull)
	{
		CultureInfo cultureInfo = CultureInfo;
		if (cultureInfo == null)
		{
			cultureInfo = CultureInfo.CurrentCulture;
		}
		else if (!CurrencyEdit.UseCultureInfo && CellType == GridCellTypeName.Currency)
		{
			cultureInfo = CultureInfo.CurrentCulture;
		}
		return cultureInfo;
	}

	[DebuggerStepThrough]
	public void ResetCultureInfo()
	{
		ResetValue(GridStyleInfoStore.CultureInfoProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCultureInfo()
	{
		return HasValue(GridStyleInfoStore.CultureInfoProperty);
	}

	[DebuggerStepThrough]
	public void ResetValidateValue()
	{
		ResetValue(GridStyleInfoStore.ValidateValueProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeValidateValue()
	{
		return HasValue(GridStyleInfoStore.ValidateValueProperty);
	}

	public void ResetCurrencyEdit()
	{
		ResetValue(GridStyleInfoStore.CurrencyEditProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCurrencyEdit()
	{
		return HasValue(GridStyleInfoStore.CurrencyEditProperty);
	}

	public void ResetMaskEdit()
	{
		ResetValue(GridStyleInfoStore.MaskEditProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMaskEdit()
	{
		return HasValue(GridStyleInfoStore.MaskEditProperty);
	}

	public void ResetProgressBar()
	{
		ResetValue(GridStyleInfoStore.ProgressBarProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeProgressBar()
	{
		return HasValue(GridStyleInfoStore.ProgressBarProperty);
	}

	[DebuggerStepThrough]
	public void ResetNumericUpDown()
	{
		ResetValue(GridStyleInfoStore.NumericUpDownProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeNumericUpDown()
	{
		return HasValue(GridStyleInfoStore.NumericUpDownProperty);
	}

	[DebuggerStepThrough]
	public void ResetCheckBoxOptions()
	{
		ResetValue(GridStyleInfoStore.CheckBoxOptionsProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCheckBoxOptions()
	{
		return HasValue(GridStyleInfoStore.CheckBoxOptionsProperty);
	}

	[DebuggerStepThrough]
	public void ResetTextMargins()
	{
		ResetValue(GridStyleInfoStore.TextMarginsProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTextMargins()
	{
		return HasValue(GridStyleInfoStore.TextMarginsProperty);
	}

	[DebuggerStepThrough]
	public void ResetBorderMargins()
	{
		ResetValue(GridStyleInfoStore.BorderMarginsProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBorderMargins()
	{
		return HasValue(GridStyleInfoStore.BorderMarginsProperty);
	}

	[DebuggerStepThrough]
	public void ResetShowButtons()
	{
		ResetValue(GridStyleInfoStore.ShowButtonsProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeShowButtons()
	{
		return HasValue(GridStyleInfoStore.ShowButtonsProperty);
	}

	[DebuggerStepThrough]
	public void ResetPasswordChar()
	{
		ResetValue(GridStyleInfoStore.PasswordCharProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializePasswordChar()
	{
		return HasValue(GridStyleInfoStore.PasswordCharProperty);
	}

	[DebuggerStepThrough]
	public void ResetCellTipText()
	{
		ResetValue(GridStyleInfoStore.CellTipTextProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCellTipText()
	{
		return HasValue(GridStyleInfoStore.CellTipTextProperty);
	}

	[DebuggerStepThrough]
	public void ResetImageIndex()
	{
		ResetValue(GridStyleInfoStore.ImageIndexProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeImageIndex()
	{
		return HasValue(GridStyleInfoStore.ImageIndexProperty);
	}

	[DebuggerStepThrough]
	public void ResetImageSizeMode()
	{
		ResetValue(GridStyleInfoStore.ImageSizeModeProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeImageSizeMode()
	{
		return HasValue(GridStyleInfoStore.ImageSizeModeProperty);
	}

	[DebuggerStepThrough]
	public void ResetImageList()
	{
		ResetValue(GridStyleInfoStore.ImageListProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeImageList()
	{
		return HasValue(GridStyleInfoStore.ImageListProperty);
	}

	public void ResetBackgroundImageMode()
	{
		ResetValue(GridStyleInfoStore.BackgroundImageModeProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackgroundImageMode()
	{
		return HasValue(GridStyleInfoStore.BackgroundImageModeProperty);
	}

	public void ResetBackgroundImageID()
	{
		ResetValue(GridStyleInfoStore.BackgroundImageIDProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackgroundImageID()
	{
		return HasValue(GridStyleInfoStore.BackgroundImageIDProperty);
	}

	public void ResetBackgroundImage()
	{
		ResetValue(GridStyleInfoStore.BackgroundImageProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackgroundImage()
	{
		return HasValue(GridStyleInfoStore.BackgroundImageProperty);
	}

	[DebuggerStepThrough]
	public void ResetParseFormats()
	{
		ResetValue(GridStyleInfoStore.ParseFormatsProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeParseFormats()
	{
		return HasValue(GridStyleInfoStore.ParseFormatsProperty);
	}

	public string GetFormattedText(object value)
	{
		try
		{
			GridCellModelBase cellModel = CellModel;
			if (cellModel == null)
			{
				CultureInfo cultureInfo = CultureInfo;
				NumberFormatInfo nfi = cultureInfo?.NumberFormat;
				return ValueConvert.FormatValue(value, CellValueType, Format, cultureInfo, nfi);
			}
			return cellModel.GetFormattedText(this, value, 0);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			return (value != null) ? value.ToString() : string.Empty;
		}
	}

	public bool ApplyFormattedText(string text)
	{
		GridCellModelBase cellModel = CellModel;
		if (cellModel == null)
		{
			NumberFormatInfo provider = CultureInfo?.NumberFormat;
			try
			{
				CellValue = ValueConvert.Parse(text, CellValueType, provider, Format);
				ResetError();
			}
			catch (Exception ex)
			{
				Error = ex.Message;
				if (StrictValueType)
				{
					throw;
				}
				if (!(ex is FormatException) && !(ex.InnerException is FormatException))
				{
					throw;
				}
				CellValue = text;
			}
			return true;
		}
		return cellModel.ApplyFormattedText(this, text, 0);
	}

	public string GetFormattedText(object value, int textInfo)
	{
		GridCellModelBase cellModel = CellModel;
		if (cellModel == null)
		{
			CultureInfo cultureInfo = CultureInfo;
			NumberFormatInfo nfi = cultureInfo?.NumberFormat;
			return ValueConvert.FormatValue(value, CellValueType, Format, cultureInfo, nfi);
		}
		return cellModel.GetFormattedText(this, value, textInfo);
	}

	public bool ApplyFormattedText(string text, int textInfo)
	{
		GridCellModelBase cellModel = CellModel;
		if (cellModel == null)
		{
			NumberFormatInfo provider = CultureInfo?.NumberFormat;
			CellValue = ValueConvert.Parse(text, CellValueType, provider, Format);
			return true;
		}
		return cellModel.ApplyFormattedText(this, text, textInfo);
	}

	public string GetText(object value)
	{
		try
		{
			GridCellModelBase cellModel = CellModel;
			if (cellModel == null)
			{
				if (value == null)
				{
					return string.Empty;
				}
				return (string)ValueConvert.ChangeType(value, typeof(string), CultureInfo.CurrentCulture);
			}
			return cellModel.GetText(this, value);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			return (value != null) ? value.ToString() : string.Empty;
		}
	}

	public bool ApplyText(string text)
	{
		GridCellModelBase cellModel = CellModel;
		if (cellModel == null)
		{
			NumberFormatInfo provider = CultureInfo.CurrentCulture?.NumberFormat;
			try
			{
				CellValue = ValueConvert.Parse(text, CellValueType, provider, string.Empty);
				ResetError();
			}
			catch (Exception ex)
			{
				Error = ex.Message;
				if (StrictValueType)
				{
					throw;
				}
				if (!(ex is FormatException) && !(ex.InnerException is FormatException))
				{
					throw;
				}
				CellValue = text;
			}
			return true;
		}
		return cellModel.ApplyText(this, text);
	}
}
