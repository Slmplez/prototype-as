using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal interface IResizable
{
	Size CalculateSize(Size parentSize, Size newParentSize);

	bool IsVerticallyResizable();

	bool IsHorizontallyResizable();
}
