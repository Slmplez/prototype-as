using System.ComponentModel;
using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ThemedComboBoxDrawing : ThemedControlDrawing
{
	public enum DropDownState
	{
		Normal = 1,
		Hot,
		Pressed,
		Disabled
	}

	public ThemedComboBoxDrawing(string classNames)
		: base(classNames)
	{
	}

	public ThemedComboBoxDrawing(string classNames, IComponent component)
		: base(classNames, component)
	{
	}

	public void DrawDropDownButton(Graphics g, DropDownState state, Rectangle rect)
	{
		DrawThemeBackground(g, 1, (int)state, rect);
	}
}
