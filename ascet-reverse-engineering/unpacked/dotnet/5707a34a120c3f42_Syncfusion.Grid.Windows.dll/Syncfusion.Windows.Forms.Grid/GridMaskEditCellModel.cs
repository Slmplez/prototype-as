using System;
using System.Runtime.Serialization;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridMaskEditCellModel : GridStaticCellModel
{
	private MaskedEditBox maskEditBox = new MaskedEditBox();

	public GridMaskEditCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = true;
	}

	protected GridMaskEditCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridMaskEditCellRenderer(control, this);
	}

	public override string GetText(GridStyleInfo style, object value)
	{
		if (style.MaskEdit.ClipMode == ClipModes.IncludeLiterals)
		{
			maskEditBox.Text = ((value != null && !(value is DBNull)) ? value.ToString() : string.Empty);
			return maskEditBox.Text;
		}
		return base.GetText(style, value);
	}

	public override string GetFormattedText(GridStyleInfo style, object value, int textInfo)
	{
		InitMaskedEditProperties(maskEditBox, style);
		maskEditBox.Text = ((value != null && !(value is DBNull)) ? value.ToString() : string.Empty);
		if (textInfo == 1 && style.MaskEdit.ClipMode == ClipModes.ExcludeLiterals)
		{
			return GetText(style, value);
		}
		return maskEditBox.FormattedText;
	}

	public static void InitMaskedEditProperties(MaskedEditBox mb, GridStyleInfo style)
	{
		GridMaskEditInfo maskEdit = style.MaskEdit;
		mb.BeginInit();
		mb.ReadOnly = false;
		mb.Culture = style.GetCulture(useCurrentCultureIfNull: true);
		mb.AllowPrompt = maskEdit.AllowPrompt;
		mb.ClipMode = maskEdit.ClipMode;
		mb.DateSeparator = maskEdit.DateSeparator;
		mb.DateTimeFormatInfoObject = maskEdit.DateTimeFormatInfoObject;
		mb.DecimalSeparator = maskEdit.DecimalSeparator;
		mb.Mask = maskEdit.Mask;
		mb.MaxValue = maskEdit.MaxValue;
		mb.MinValue = maskEdit.MinValue;
		mb.NumberFormatInfoObject = maskEdit.NumberFormatInfoObject;
		mb.PaddingCharacter = maskEdit.PaddingCharacter;
		mb.PassivePromptCharacter = maskEdit.PassivePromptCharacter;
		mb.PromptCharacter = maskEdit.PromptCharacter;
		mb.SpecialCultureValue = maskEdit.SpecialCultureValue;
		mb.ThousandSeparator = maskEdit.ThousandSeparator;
		mb.TimeSeparator = maskEdit.TimeSeparator;
		mb.UsageMode = maskEdit.UsageMode;
		mb.UseLocaleDefault = maskEdit.UseLocaleDefault;
		mb.UseUserOverride = maskEdit.UseUserOverride;
		mb.MaxLength = style.MaxLength;
		mb.EndInit();
		mb.Text = style.Text;
		mb.ReadOnly = style.ReadOnly;
	}
}
