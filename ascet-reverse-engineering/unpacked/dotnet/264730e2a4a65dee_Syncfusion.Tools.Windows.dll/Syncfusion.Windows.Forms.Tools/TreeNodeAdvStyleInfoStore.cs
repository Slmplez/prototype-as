using System;
using System.Collections;
using System.Drawing;
using System.Globalization;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[DocumentationExclude]
public class TreeNodeAdvStyleInfoStore : StyleInfoStore
{
	private static StaticData sd = new StaticData(typeof(TreeNodeAdvStyleInfoStore), typeof(TreeNodeAdvStyleInfo), sortProperties: false);

	internal static readonly StyleInfoProperty FontProperty = sd.CreateStyleInfoProperty(typeof(Font), "Font");

	internal static readonly StyleInfoProperty TextColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "TextColor");

	internal static readonly StyleInfoProperty BackgroundProperty = sd.CreateStyleInfoProperty(typeof(BrushInfo), "Background");

	internal static readonly StyleInfoProperty TextProperty = sd.CreateStyleInfoProperty(typeof(string), "Text");

	internal static readonly StyleInfoProperty HelpTextProperty = sd.CreateStyleInfoProperty(typeof(string), "HelpText");

	internal static readonly StyleInfoProperty DisplayMemberProperty = sd.CreateStyleInfoProperty(typeof(string), "DisplayMember");

	internal static readonly StyleInfoProperty HeightProperty = sd.CreateStyleInfoProperty(typeof(int), "Height");

	internal static readonly StyleInfoProperty ShowCheckBoxProperty = sd.CreateStyleInfoProperty(typeof(bool), "ShowCheckBox");

	internal static readonly StyleInfoProperty CheckColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "ActiveCheckColor");

	internal static readonly StyleInfoProperty IntermediateCheckColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "InActiveCheckColor");

	internal static readonly StyleInfoProperty CheckBoxBackGroundProperty = sd.CreateStyleInfoProperty(typeof(Brush), "CheckBoxBackGround");

	internal static readonly StyleInfoProperty IntermediateCheckBoxBackgroundProperty = sd.CreateStyleInfoProperty(typeof(Brush), "IntermediateCheckBoxBackground");

	internal static readonly StyleInfoProperty SelectedOptionButtonColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "SelectedOptionButtonColor");

	internal static readonly StyleInfoProperty OptionButtonColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "OptionButtonColor");

	internal static readonly StyleInfoProperty TagProperty = sd.CreateStyleInfoProperty(typeof(object), "Tag");

	internal static readonly StyleInfoProperty ShowPlusMinusProperty = sd.CreateStyleInfoProperty(typeof(bool), "ShowPlusMinus");

	internal static readonly StyleInfoProperty ShowOptionButtonProperty = sd.CreateStyleInfoProperty(typeof(bool), "ShowOptionButton");

	internal static readonly StyleInfoProperty LeftImageIndicesProperty = sd.CreateStyleInfoProperty(typeof(int[]), "LeftImageIndices");

	internal static readonly StyleInfoProperty RightImageIndicesProperty = sd.CreateStyleInfoProperty(typeof(int[]), "RightImageIndices");

	internal static readonly StyleInfoProperty NoChildrenImgIndexProperty = sd.CreateStyleInfoProperty(typeof(int), "NoChildrenImgIndex");

	internal static readonly StyleInfoProperty ClosedImgIndexProperty = sd.CreateStyleInfoProperty(typeof(int), "ClosedImgIndex");

	internal static readonly StyleInfoProperty OpenImgIndexProperty = sd.CreateStyleInfoProperty(typeof(int), "OpenImgIndex");

	internal static readonly StyleInfoProperty ThemesEnabledProperty = sd.CreateStyleInfoProperty(typeof(bool), "ThemesEnabled");

	internal static readonly StyleInfoProperty InteractiveCheckBoxProperty = sd.CreateStyleInfoProperty(typeof(bool), "InteractiveCheckBox");

	internal static readonly StyleInfoProperty SortTypeProperty = sd.CreateStyleInfoProperty(typeof(TreeNodeAdvSortType), "SortType");

	internal static readonly StyleInfoProperty SortOrderProperty = sd.CreateStyleInfoProperty(typeof(SortOrder), "SortOrder");

	internal static readonly StyleInfoProperty ComparerProperty = sd.CreateStyleInfoProperty(typeof(IComparer), "Comparer");

	internal static readonly StyleInfoProperty CompareOptionsProperty = sd.CreateStyleInfoProperty(typeof(CompareOptions), "CompareOptions");

	internal static readonly StyleInfoProperty CheckStateProperty = sd.CreateStyleInfoProperty(typeof(CheckState), "CheckState");

	internal static readonly StyleInfoProperty BaseStyleProperty = sd.CreateStyleInfoProperty(typeof(string), "BaseStyle");

	internal static readonly StyleInfoProperty EnabledProperty = sd.CreateStyleInfoProperty(typeof(bool), "Enabled");

	internal static readonly StyleInfoProperty EnabledButtonsProperty = sd.CreateStyleInfoProperty(typeof(bool), "EnabledButtons");

	internal static readonly StyleInfoProperty EnsureDefaultOptionedChildProperty = sd.CreateStyleInfoProperty(typeof(bool), "EnsureDefaultOptionedChild");

	internal static readonly StyleInfoProperty CultureProperty = sd.CreateStyleInfoProperty(typeof(CultureInfo), "Culture");

	protected override StaticData StaticDataStore => sd;

	public override object Clone()
	{
		StyleInfoStore styleInfoStore = new TreeNodeAdvStyleInfoStore();
		CopyTo(styleInfoStore);
		return styleInfoStore;
	}

	public TreeNodeAdvStyleInfoStore()
	{
	}

	protected TreeNodeAdvStyleInfoStore(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		if (sd.IsEmpty)
		{
			new TreeNodeAdvStyleInfo();
		}
	}
}
