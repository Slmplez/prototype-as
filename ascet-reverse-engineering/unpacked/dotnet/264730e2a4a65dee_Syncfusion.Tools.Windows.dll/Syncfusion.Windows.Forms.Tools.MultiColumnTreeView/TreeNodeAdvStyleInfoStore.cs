using System;
using System.Collections;
using System.Drawing;
using System.Globalization;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[Serializable]
[DocumentationExclude]
public class TreeNodeAdvStyleInfoStore : StyleInfoStore
{
	internal static StaticData Sd = new StaticData(typeof(TreeNodeAdvStyleInfoStore), typeof(TreeNodeAdvStyleInfo), sortProperties: false);

	internal static readonly StyleInfoProperty FontProperty = Sd.CreateStyleInfoProperty(typeof(Font), "Font");

	internal static readonly StyleInfoProperty TextColorProperty = Sd.CreateStyleInfoProperty(typeof(Color), "TextColor");

	internal static readonly StyleInfoProperty BackgroundProperty = Sd.CreateStyleInfoProperty(typeof(BrushInfo), "Background");

	internal static readonly StyleInfoProperty TextProperty = Sd.CreateStyleInfoProperty(typeof(string), "Text");

	internal static readonly StyleInfoProperty HelpTextProperty = Sd.CreateStyleInfoProperty(typeof(string), "HelpText");

	internal static readonly StyleInfoProperty DisplayMemberProperty = Sd.CreateStyleInfoProperty(typeof(string), "DisplayMember");

	internal static readonly StyleInfoProperty HeightProperty = Sd.CreateStyleInfoProperty(typeof(int), "Height");

	internal static readonly StyleInfoProperty ShowCheckBoxProperty = Sd.CreateStyleInfoProperty(typeof(bool), "ShowCheckBox");

	internal static readonly StyleInfoProperty CheckColorProperty = Sd.CreateStyleInfoProperty(typeof(Color), "ActiveCheckColor");

	internal static readonly StyleInfoProperty IntermediateCheckColorProperty = Sd.CreateStyleInfoProperty(typeof(Color), "InActiveCheckColor");

	internal static readonly StyleInfoProperty CheckBoxBackGroundProperty = Sd.CreateStyleInfoProperty(typeof(Brush), "CheckBoxBackGround", (StyleInfoPropertyOptions)3);

	internal static readonly StyleInfoProperty IntermediateCheckBoxBackgroundProperty = Sd.CreateStyleInfoProperty(typeof(Brush), "IntermediateCheckBoxBackground");

	internal static readonly StyleInfoProperty SelectedOptionButtonColorProperty = Sd.CreateStyleInfoProperty(typeof(Color), "SelectedOptionButtonColor");

	internal static readonly StyleInfoProperty OptionButtonColorProperty = Sd.CreateStyleInfoProperty(typeof(Color), "OptionButtonColor");

	internal static readonly StyleInfoProperty TagProperty = Sd.CreateStyleInfoProperty(typeof(object), "Tag");

	internal static readonly StyleInfoProperty ShowPlusMinusProperty = Sd.CreateStyleInfoProperty(typeof(bool), "ShowPlusMinus");

	internal static readonly StyleInfoProperty ShowOptionButtonProperty = Sd.CreateStyleInfoProperty(typeof(bool), "ShowOptionButton");

	internal static readonly StyleInfoProperty LeftImageProperty = Sd.CreateStyleInfoProperty(typeof(Image), "LeftImage");

	internal static readonly StyleInfoProperty RightImageProperty = Sd.CreateStyleInfoProperty(typeof(Image), "RightImage");

	internal static readonly StyleInfoProperty OpenImageProperty = Sd.CreateStyleInfoProperty(typeof(Image), "StateOpenImage");

	internal static readonly StyleInfoProperty ClosedImageProperty = Sd.CreateStyleInfoProperty(typeof(Image), "StateClosedImage");

	internal static readonly StyleInfoProperty NoChildrenImageProperty = Sd.CreateStyleInfoProperty(typeof(Image), "StateNoChildrenImage");

	internal static readonly StyleInfoProperty ExpandedImageProperty = Sd.CreateStyleInfoProperty(typeof(Image), "ExpandedImage");

	internal static readonly StyleInfoProperty CollapsedImageProperty = Sd.CreateStyleInfoProperty(typeof(Image), "CollapsedImage");

	internal static readonly StyleInfoProperty LeftImageIndicesProperty = Sd.CreateStyleInfoProperty(typeof(int[]), "LeftImageIndices");

	internal static readonly StyleInfoProperty RightImageIndicesProperty = Sd.CreateStyleInfoProperty(typeof(int[]), "RightImageIndices");

	internal static readonly StyleInfoProperty NoChildrenImgIndexProperty = Sd.CreateStyleInfoProperty(typeof(int), "NoChildrenImgIndex");

	internal static readonly StyleInfoProperty ClosedImgIndexProperty = Sd.CreateStyleInfoProperty(typeof(int), "ClosedImgIndex");

	internal static readonly StyleInfoProperty OpenImgIndexProperty = Sd.CreateStyleInfoProperty(typeof(int), "OpenImgIndex");

	internal static readonly StyleInfoProperty ExpandImageIndexProperty = Sd.CreateStyleInfoProperty(typeof(int), "ExpandImageIndex");

	internal static readonly StyleInfoProperty CollapseImageIndexProperty = Sd.CreateStyleInfoProperty(typeof(int), "CollapseImageIndex");

	internal static readonly StyleInfoProperty ThemesEnabledProperty = Sd.CreateStyleInfoProperty(typeof(bool), "ThemesEnabled");

	internal static readonly StyleInfoProperty InteractiveCheckBoxProperty = Sd.CreateStyleInfoProperty(typeof(bool), "InteractiveCheckBox");

	internal static readonly StyleInfoProperty SortTypeProperty = Sd.CreateStyleInfoProperty(typeof(TreeNodeAdvSortType), "SortType");

	internal static readonly StyleInfoProperty SortOrderProperty = Sd.CreateStyleInfoProperty(typeof(SortOrder), "SortOrder");

	internal static readonly StyleInfoProperty ComparerProperty = Sd.CreateStyleInfoProperty(typeof(IComparer), "Comparer");

	internal static readonly StyleInfoProperty CompareOptionsProperty = Sd.CreateStyleInfoProperty(typeof(CompareOptions), "CompareOptions");

	internal static readonly StyleInfoProperty CheckStateProperty = Sd.CreateStyleInfoProperty(typeof(CheckState), "CheckState");

	internal static readonly StyleInfoProperty BaseStyleProperty = Sd.CreateStyleInfoProperty(typeof(string), "BaseStyle");

	internal static readonly StyleInfoProperty EnabledProperty = Sd.CreateStyleInfoProperty(typeof(bool), "Enabled");

	internal static readonly StyleInfoProperty EnabledButtonsProperty = Sd.CreateStyleInfoProperty(typeof(bool), "EnabledButtons");

	internal static readonly StyleInfoProperty EnsureDefaultOptionedChildProperty = Sd.CreateStyleInfoProperty(typeof(bool), "EnsureDefaultOptionedChild");

	internal static readonly StyleInfoProperty CultureProperty = Sd.CreateStyleInfoProperty(typeof(CultureInfo), "Culture");

	internal static readonly StyleInfoProperty LeftImagePaddingProperty = Sd.CreateStyleInfoProperty(typeof(int), "LeftImagePadding");

	internal static readonly StyleInfoProperty RightImagePaddingProperty = Sd.CreateStyleInfoProperty(typeof(int), "RightImagePadding");

	internal static readonly StyleInfoProperty LeftStateImagePaddingProperty = Sd.CreateStyleInfoProperty(typeof(int), "LeftStateImagePadding");

	internal static readonly StyleInfoProperty RightStateImagePaddingProperty = Sd.CreateStyleInfoProperty(typeof(int), "RightStateImagePadding");

	internal static readonly StyleInfoProperty MultilineProperty = Sd.CreateStyleInfoProperty(typeof(bool), "Multiline");

	protected override StaticData StaticDataStore => Sd;

	public TreeNodeAdvStyleInfoStore()
	{
	}

	protected TreeNodeAdvStyleInfoStore(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		if (Sd.IsEmpty)
		{
			new TreeNodeAdvStyleInfo();
		}
	}

	public override object Clone()
	{
		StyleInfoStore styleInfoStore = new TreeNodeAdvStyleInfoStore();
		CopyTo(styleInfoStore);
		return styleInfoStore;
	}
}
