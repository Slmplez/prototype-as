using System.Drawing;
using System.Reflection;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class ControlPaintAdv
{
	public static void DrawCheckBox(TreeNodeAdv tna, Graphics g, Rectangle r, ButtonState bs)
	{
		Brush brush = (((bs & ButtonState.Inactive) == ButtonState.Inactive) ? tna.IntermediateCheckBoxBackGround : tna.CheckBoxBackGround);
		Color color = (((bs & ButtonState.Inactive) == ButtonState.Inactive) ? tna.IntermediateCheckColor : tna.CheckColor);
		MethodInfo[] methods = typeof(ControlPaint).GetMethods(BindingFlags.Static | BindingFlags.NonPublic);
		MethodInfo methodInfo = null;
		MethodInfo[] array = methods;
		foreach (MethodInfo methodInfo2 in array)
		{
			if (methodInfo2.Name == "DrawFlatCheckBox" && methodInfo2.GetParameters().Length > 3)
			{
				methodInfo = methodInfo2;
				break;
			}
		}
		methodInfo.Invoke(null, new object[5] { g, r, color, brush, bs });
	}

	public static void DrawRadioButton(TreeNodeAdv tna, Graphics g, Rectangle r, ButtonState bs)
	{
		MethodInfo[] methods = typeof(ControlPaint).GetMethods(BindingFlags.Static | BindingFlags.NonPublic);
		MethodInfo methodInfo = null;
		MethodInfo[] array = methods;
		foreach (MethodInfo methodInfo2 in array)
		{
			if (methodInfo2.Name == "DrawFrameControl" && methodInfo2.GetParameters().Length > 7)
			{
				methodInfo = methodInfo2;
				break;
			}
		}
		methodInfo.Invoke(null, new object[9]
		{
			g,
			r.Left,
			r.Top,
			r.Width,
			r.Height,
			4,
			(int)((ButtonState)4 | bs),
			tna.SelectedOptionButtonColor,
			tna.OptionButtonColor
		});
	}
}
