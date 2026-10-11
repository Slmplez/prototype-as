using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public interface IVisualStylesDrawing
{
	GridVisualStyles VisualStyle { get; }

	void DrawHeaderStyle(Graphics g, Rectangle rect, ThemedHeaderDrawing.HeaderState state);

	bool GetHeaderBorderColors(out Color clrBottom, out Color clrRight, out Color clrInteriorFirst, out Color clrInteriorLast);

	void GetSortIconBrush(out Brush brush, out Pen pen);

	bool GetGroupDropAreaColors(out Color backColor, out Color headerBorderTop, out Color headerBorderLeft);

	void DrawPushButtonStyle(Graphics g, Rectangle rect, ButtonState state);

	void DrawComboBoxStyle(Graphics g, Rectangle rect, ThemedComboBoxDrawing.DropDownState state, Color clrBack);

	void DrawSpinButtonStyle(Graphics g, Rectangle rect, ButtonID btnId, ButtonState btnState, Color clrBack);

	void DrawCheckBoxStyle(Graphics g, Rectangle rect, ButtonState state, bool mixedState);

	void DrawRadioStyle(Graphics g, Rectangle rect, ButtonState state);
}
