using System.Drawing;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public interface ITreeNodeAdvSubItemStyle
{
	string BaseStyle { get; set; }

	Font Font { get; set; }

	string Text { get; set; }

	Color TextColor { get; set; }

	string HelpText { get; set; }

	object Tag { get; set; }

	Image LeftImage { get; set; }

	int[] LeftImageIndices { get; set; }

	int LeftImagePadding { get; set; }

	Image RightImage { get; set; }

	int[] RightImageIndices { get; set; }

	int RightImagePadding { get; set; }

	BrushInfo Background { get; set; }

	void ResetBaseStyle();

	bool ShouldSerializeBaseStyle();

	void ResetFont();

	bool ShouldSerializeFont();

	void ResetText();

	bool ShouldSerializeText();

	void ResetTextColor();

	bool ShouldSerializeTextColor();

	void ResetHelpText();

	bool ShouldSerializeHelpText();

	void ResetTag();

	bool ShouldSerializeTag();

	void ResetLeftImage();

	bool ShouldSerializeLeftImage();

	void ResetLeftImageIndices();

	bool ShouldSerializeLeftImageIndices();

	void ResetLeftImagePadding();

	bool ShouldSerializeLeftImagePadding();

	void ResetRightImage();

	bool ShouldSerializeRightImage();

	void ResetRightImageIndices();

	bool ShouldSerializeRightImageIndices();

	void ResetRightImagePadding();

	bool ShouldSerializeRightImagePadding();

	void ResetBackground();

	bool ShouldSerializeBackground();
}
