using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public interface ITabPanelData
{
	string TabStyle { get; }

	BorderStyle BorderStyle { get; }

	TabAlignment Alignment { get; }

	SizeF TabSize { get; }

	int TabGap { get; }

	TabVerticalAlignment VerticalAlignment { get; }

	bool Multiline { get; }

	bool KeepSelectedTabInFrontRow { get; }

	TabSizeMode SizeMode { get; }

	Color BackColor { get; }

	Color FixedSingleBorderColor { get; }

	Font Font { get; }

	Font ActiveTabFont { get; }

	Color ActiveTabColor { get; }

	Color InactiveTabColor { get; }

	ImageList ImageList { get; }

	int SelectedIndex { get; set; }

	StringAlignment TextAlignment { get; }

	StringAlignment TextLineAlignment { get; }

	RelativeImageAlignment ImageAlignmentR { get; }

	int ImageOffset { get; }

	int AdjustTopGap { get; }

	bool DisableInactivePageImage { get; }

	bool LevelTextAndImage { get; }

	bool RotateTextWhenVertical { get; }

	bool RotateText180WhenLeftAligned { get; }

	Point Padding { get; }

	bool HotTrack { get; }

	bool ShowToolTips { get; }

	bool UserMoveTabs { get; }

	TabDataCollection TabsData { get; }

	event TabPanelPropertyChangedEventHandler PropertyChanged;

	event SelectedIndexChangingEventHandler SelectedIndexChanging;

	bool IsTabSelectable(int tabIndex, bool visually);

	ITabData CreateNewTabData();

	void OnSelectedIndexChanged(int previousIndex, int curIndex);
}
