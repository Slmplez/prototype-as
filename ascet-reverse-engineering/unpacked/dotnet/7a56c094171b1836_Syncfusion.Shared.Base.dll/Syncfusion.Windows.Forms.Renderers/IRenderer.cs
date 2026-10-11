using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Renderers;

public interface IRenderer
{
	void DrawBackground(Graphics g, Rectangle bounds, ButtonState state);

	void DrawArrowButton(Graphics g, Rectangle bounds, ScrollButton type, ButtonState state);

	void DrawThumb(Graphics g, Rectangle bounds, ButtonState state);
}
