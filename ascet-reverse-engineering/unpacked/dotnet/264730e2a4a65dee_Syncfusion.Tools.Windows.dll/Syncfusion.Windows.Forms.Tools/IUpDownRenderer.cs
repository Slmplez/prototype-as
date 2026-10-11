using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public interface IUpDownRenderer
{
	void DrawArrow(Graphics g, Rectangle buttonRectangle, ButtonState buttonState, bool upper);

	void DrawScrollButton(Graphics g, Rectangle buttonRectangle, ButtonState buttonState, ButtonID buttonID);

	void DrawScrollButtonBackground(Graphics g, Rectangle buttonRectangle, ButtonState buttonState);

	void Render(Graphics g, ButtonState upButtonState, ButtonState downButtonState);

	void DrawScrollButtonBorder(Graphics g, Rectangle buttonRectangle, ButtonState buttonState);

	void Layout();
}
