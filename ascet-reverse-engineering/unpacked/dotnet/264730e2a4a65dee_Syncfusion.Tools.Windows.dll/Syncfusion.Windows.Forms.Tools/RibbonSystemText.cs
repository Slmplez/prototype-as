using System.ComponentModel;
using System.Globalization;

namespace Syncfusion.Windows.Forms.Tools;

[TypeConverter(typeof(ExpandableObjectConverter))]
public class RibbonSystemText
{
	private const string QA_ADDITEM = "QuickAccessAddItem";

	private const string QA_REMOVEITEM = "QuickAccessRemoveItem";

	private const string QA_CUSTOMIZE_MENU = "QuickAccessCustomizeMenu";

	private const string QA_CUSTOMIZE_CAPTION = "QuickAccessCustomizeCaption";

	private const string QA_PLACEBELOW = "QuickAccessPlaceBelowRibbon";

	private const string QA_MINIMIZE = "QuickAccessMinimizeTheRibbon";

	private const string QA_PLACEABOVE = "QuickAccessPlaceAboveRibbon";

	private const string QAD_COMMANDS = "QuickAccessDialogCommands";

	private const string QAD_ADD = "QuickAccessDialogButtonAdd";

	private const string QAD_REMOVE = "QuickAccessDialogButtonRemove";

	private const string QAD_OK = "QuickAccessDialogButtonOk";

	private const string QAD_CANCEL = "QuickAccessDialogButtonCancel";

	private const string QAD_RESET = "QuickAccessDialogButtonReset";

	private const string QAD_DROP_DOWN_NAME = "QuickAccessDialogDropDownName";

	private string m_sqaAddItemText;

	private string m_sqaRemoveItemText;

	private string m_sqaCustomizeMenuText;

	private string m_sqaCustomizeCaptionText;

	private string m_sqaPlaceBelowText;

	private string m_sqaPlaceAboveText;

	private string m_sqaMinimize;

	private string m_sqadCommandsText;

	private string m_sqadAddText;

	private string m_sqadRemoveText;

	private string m_sqadOkText;

	private string m_sqadCancelText;

	private string m_sqadResetText;

	private string m_sqadDopDownName;

	[Description("Gets or sets text of menu command to add new item to Quick access bar")]
	public string QuickAccessAddItemText
	{
		get
		{
			return m_sqaAddItemText;
		}
		set
		{
			m_sqaAddItemText = value;
		}
	}

	[Description("Gets or sets text of menu command to remove item from Quick access bar")]
	public string QuickAccessRemoveItemText
	{
		get
		{
			return m_sqaRemoveItemText;
		}
		set
		{
			m_sqaRemoveItemText = value;
		}
	}

	[Description("Gets or sets text of menu command to customize Quick access bar")]
	public string QuickAccessCustomizeMenuText
	{
		get
		{
			return m_sqaCustomizeMenuText;
		}
		set
		{
			m_sqaCustomizeMenuText = value;
		}
	}

	[Description("Gets or sets text of menu command to place Quick access bar below Ribbon")]
	public string QuickAccessPlaceBelowText
	{
		get
		{
			return m_sqaPlaceBelowText;
		}
		set
		{
			m_sqaPlaceBelowText = value;
		}
	}

	[Description("Gets or sets text of menu command to place Quick access bar above Ribbon")]
	public string QuickAccessPlaceAboveText
	{
		get
		{
			return m_sqaPlaceAboveText;
		}
		set
		{
			m_sqaPlaceAboveText = value;
		}
	}

	[Description("Gets or sets text of menu command to minimize Ribbon")]
	public string QuickAccessMinimizeRibbon
	{
		get
		{
			return m_sqaMinimize;
		}
		set
		{
			m_sqaMinimize = value;
		}
	}

	[Description("Gets or sets title of Quick access customize dialog")]
	public string QuickAccessCustomizeCaptionText
	{
		get
		{
			return m_sqaCustomizeCaptionText;
		}
		set
		{
			m_sqaCustomizeCaptionText = value;
		}
	}

	[Description("Gets or sets label of command selector in Quick access customize dialog")]
	public string QuickAccessDialogCommandsText
	{
		get
		{
			return m_sqadCommandsText;
		}
		set
		{
			m_sqadCommandsText = value;
		}
	}

	[Description("Gets or sets text of 'Add' button in Quick access customize dialog")]
	public string QuickAccessDialogAddText
	{
		get
		{
			return m_sqadAddText;
		}
		set
		{
			m_sqadAddText = value;
		}
	}

	[Description("Gets or sets text of 'Remove' button in Quick access customize dialog")]
	public string QuickAccessDialogRemoveText
	{
		get
		{
			return m_sqadRemoveText;
		}
		set
		{
			m_sqadRemoveText = value;
		}
	}

	[Description("Gets or sets text of 'OK' button in Quick access customize dialog")]
	public string QuickAccessDialogOkText
	{
		get
		{
			return m_sqadOkText;
		}
		set
		{
			m_sqadOkText = value;
		}
	}

	[Description("Gets or sets text of 'Cancel' button in Quick access customize dialog")]
	public string QuickAccessDialogCancelText
	{
		get
		{
			return m_sqadCancelText;
		}
		set
		{
			m_sqadCancelText = value;
		}
	}

	[Description("Gets or sets text of 'Reset' button in Quick access customize dialog")]
	public string QuickAccessDialogResetText
	{
		get
		{
			return m_sqadResetText;
		}
		set
		{
			m_sqadResetText = value;
		}
	}

	[Description("Gets or sets the name of drop down in Quick access customize dialog.")]
	public string QuickAccessDialogDropDownName
	{
		get
		{
			return m_sqadDopDownName;
		}
		set
		{
			m_sqadDopDownName = value;
		}
	}

	public RibbonSystemText()
	{
		CultureInfo currentCulture = CultureInfo.CurrentCulture;
		m_sqaAddItemText = SR.GetString(currentCulture, "QuickAccessAddItem");
		m_sqaRemoveItemText = SR.GetString(currentCulture, "QuickAccessRemoveItem");
		m_sqaCustomizeMenuText = SR.GetString(currentCulture, "QuickAccessCustomizeMenu");
		m_sqaPlaceBelowText = SR.GetString(currentCulture, "QuickAccessPlaceBelowRibbon");
		m_sqaPlaceAboveText = SR.GetString(currentCulture, "QuickAccessPlaceAboveRibbon");
		m_sqaMinimize = SR.GetString(currentCulture, "QuickAccessMinimizeTheRibbon");
		m_sqaCustomizeCaptionText = SR.GetString(currentCulture, "QuickAccessCustomizeCaption");
		m_sqadCommandsText = SR.GetString(currentCulture, "QuickAccessDialogCommands");
		m_sqadAddText = SR.GetString(currentCulture, "QuickAccessDialogButtonAdd");
		m_sqadRemoveText = SR.GetString(currentCulture, "QuickAccessDialogButtonRemove");
		m_sqadOkText = SR.GetString(currentCulture, "QuickAccessDialogButtonOk");
		m_sqadCancelText = SR.GetString(currentCulture, "QuickAccessDialogButtonCancel");
		m_sqadResetText = SR.GetString(currentCulture, "QuickAccessDialogButtonReset");
		m_sqadDopDownName = SR.GetString(currentCulture, "QuickAccessDialogDropDownName");
	}

	private bool ShouldSerializeQuickAccessAddItemText()
	{
		return m_sqaAddItemText != SR.GetString(CultureInfo.CurrentCulture, "QuickAccessAddItem");
	}

	private void ResetQuickAccessAddItemText()
	{
		m_sqaAddItemText = SR.GetString(CultureInfo.CurrentCulture, "QuickAccessAddItem");
	}

	private bool ShouldSerializeQuickAccessRemoveItemText()
	{
		return m_sqaRemoveItemText != SR.GetString(CultureInfo.CurrentCulture, "QuickAccessRemoveItem");
	}

	private void ResetQuickAccessRemoveItemText()
	{
		m_sqaRemoveItemText = SR.GetString(CultureInfo.CurrentCulture, "QuickAccessRemoveItem");
	}

	private bool ShouldSerializeQuickAccessCustomizeMenuText()
	{
		return m_sqaCustomizeMenuText != SR.GetString(CultureInfo.CurrentCulture, "QuickAccessCustomizeMenu");
	}

	private void ResetQuickAccessCustomizeMenuText()
	{
		m_sqaCustomizeMenuText = SR.GetString(CultureInfo.CurrentCulture, "QuickAccessCustomizeMenu");
	}

	private bool ShouldSerializeQuickAccessPlaceBelowText()
	{
		return m_sqaPlaceBelowText != SR.GetString(CultureInfo.CurrentCulture, "QuickAccessPlaceBelowRibbon");
	}

	private void ResetQuickAccessPlaceBelowText()
	{
		m_sqaPlaceBelowText = SR.GetString(CultureInfo.CurrentCulture, "QuickAccessPlaceBelowRibbon");
	}

	private bool ShouldSerializeQuickAccessMinimizeRibbon()
	{
		return m_sqaMinimize != SR.GetString(CultureInfo.CurrentCulture, "QuickAccessMinimizeTheRibbon");
	}

	private void ResetQuickAccessMinimizeRibbon()
	{
		m_sqaMinimize = SR.GetString(CultureInfo.CurrentCulture, "QuickAccessMinimizeTheRibbon");
	}

	private bool ShouldSerializeQuickAccessPlaceAboveText()
	{
		return m_sqaPlaceAboveText != SR.GetString(CultureInfo.CurrentCulture, "QuickAccessPlaceAboveRibbon");
	}

	private void ResetQuickAccessPlaceAboveText()
	{
		m_sqaPlaceAboveText = SR.GetString(CultureInfo.CurrentCulture, "QuickAccessPlaceAboveRibbon");
	}

	private bool ShouldSerializeQuickAccessCustomizeCaptionText()
	{
		return m_sqaCustomizeCaptionText != SR.GetString(CultureInfo.CurrentCulture, "QuickAccessCustomizeCaption");
	}

	private void ResetQuickAccessCustomizeCaptionText()
	{
		m_sqaCustomizeCaptionText = SR.GetString(CultureInfo.CurrentCulture, "QuickAccessCustomizeCaption");
	}

	private bool ShouldSerializeQuickAccessDialogCommandsText()
	{
		return m_sqadCommandsText != SR.GetString(CultureInfo.CurrentCulture, "QuickAccessDialogCommands");
	}

	private void ResetQuickAccessDialogCommandsText()
	{
		m_sqadCommandsText = SR.GetString(CultureInfo.CurrentCulture, "QuickAccessDialogCommands");
	}

	private bool ShouldSerializeQuickAccessDialogAddText()
	{
		return m_sqadAddText != SR.GetString(CultureInfo.CurrentCulture, "QuickAccessDialogButtonAdd");
	}

	private void ResetQuickAccessDialogAddText()
	{
		m_sqadAddText = SR.GetString(CultureInfo.CurrentCulture, "QuickAccessDialogButtonAdd");
	}

	private bool ShouldSerializeQuickAccessDialogRemoveText()
	{
		return m_sqadRemoveText != SR.GetString(CultureInfo.CurrentCulture, "QuickAccessDialogButtonRemove");
	}

	private void ResetQuickAccessDialogRemoveText()
	{
		m_sqadRemoveText = SR.GetString(CultureInfo.CurrentCulture, "QuickAccessDialogButtonRemove");
	}

	private bool ShouldSerializeQuickAccessDialogOkText()
	{
		return m_sqadOkText != SR.GetString(CultureInfo.CurrentCulture, "QuickAccessDialogButtonOk");
	}

	private void ResetQuickAccessDialogOkText()
	{
		m_sqadOkText = SR.GetString(CultureInfo.CurrentCulture, "QuickAccessDialogButtonOk");
	}

	private bool ShouldSerializeQuickAccessDialogCancelText()
	{
		return m_sqadCancelText != SR.GetString(CultureInfo.CurrentCulture, "QuickAccessDialogButtonCancel");
	}

	private void ResetQuickAccessDialogCancelText()
	{
		m_sqadCancelText = SR.GetString(CultureInfo.CurrentCulture, "QuickAccessDialogButtonCancel");
	}

	private bool ShouldSerializeQuickAccessDialogResetText()
	{
		return m_sqadResetText != SR.GetString(CultureInfo.CurrentCulture, "QuickAccessDialogButtonReset");
	}

	private void ResetQuickAccessDialogResetText()
	{
		m_sqadResetText = SR.GetString(CultureInfo.CurrentCulture, "QuickAccessDialogButtonReset");
	}
}
