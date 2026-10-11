using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

[DocumentationExclude]
public interface IControlStyleLayout
{
	bool IsMirrored { get; set; }

	Orientation CaptionOrientation { get; set; }

	bool CaptionEnabled { get; set; }

	bool Floating { get; set; }

	bool ImageEnabled { get; set; }

	CaptionButtonOptionsTable Table { get; set; }

	int BorderWidth { get; }

	int ThickBorderWidth { get; }

	int ThinBorderWidth { get; }

	int OuterBorderWidth { get; }

	int CaptionWidth { get; }

	int ActiveButtonIndex { get; }

	int PushedButtonIndex { get; }

	int TextRectHeight { get; set; }

	Rectangle ControlBounds { get; set; }

	Rectangle CaptionBounds { get; }

	Rectangle ThickBorderCaptionBounds { get; }

	Rectangle ThinBorderCaptionBounds { get; }

	Rectangle TextBounds { get; }

	Rectangle ImageBounds { get; }

	HitTestArea HitTest(MouseButtons button, Point point);

	int GetHitButtonIndex();

	CaptionButton GetHitButton();

	Rectangle GetButtonBounds(int index);

	Rectangle GetButtonImageBounds();

	void ResetCaptionButtonIndices();
}
