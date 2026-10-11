using System.Drawing;
using System.Reflection;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

internal sealed class ControlPaintHelper
{
	private const string DrawFlatCheckBoxMethodName = "DrawFlatCheckBox";

	private const string DrawFrameControlMethodName = "DrawFrameControl";

	private static readonly MethodInfo DrawFlatCheckBoxMethodInfo;

	private static readonly MethodInfo DrawFrameControlMethodInfo;

	static ControlPaintHelper()
	{
		MethodInfo[] methods = typeof(ControlPaint).GetMethods(BindingFlags.Static | BindingFlags.NonPublic);
		MethodInfo[] array = methods;
		foreach (MethodInfo methodInfo in array)
		{
			if (DrawFlatCheckBoxMethodInfo != null && DrawFrameControlMethodInfo != null)
			{
				break;
			}
			switch (methodInfo.Name)
			{
			case "DrawFlatCheckBox":
				if (methodInfo.GetParameters().Length > 3)
				{
					DrawFlatCheckBoxMethodInfo = methodInfo;
				}
				break;
			case "DrawFrameControl":
				if (methodInfo.GetParameters().Length > 7)
				{
					DrawFrameControlMethodInfo = methodInfo;
				}
				break;
			}
		}
	}

	public static void DrawCheckBox(Graphics g, Rectangle r, ButtonState bs, TreeNodeAdv tna)
	{
		Brush brush = (((bs & ButtonState.Inactive) == ButtonState.Inactive) ? tna.IntermediateCheckBoxBackGround : tna.CheckBoxBackGround);
		Color check = (((bs & ButtonState.Inactive) == ButtonState.Inactive) ? tna.IntermediateCheckColor : tna.CheckColor);
		DrawFlatCheckBox(g, r, check, brush, bs);
	}

	public static void DrawRadioButton(Graphics g, Rectangle r, ButtonState bs, TreeNodeAdv tna)
	{
		int state = (int)((ButtonState)4 | bs);
		DrawFrameControl(g, r.Left, r.Top, r.Width, r.Height, 4, state, tna.SelectedOptionButtonColor, tna.OptionButtonColor);
	}

	private static void DrawFlatCheckBox(Graphics g, Rectangle r, Color check, Brush brush, ButtonState bs)
	{
		if (DrawFlatCheckBoxMethodInfo != null)
		{
			DrawFlatCheckBoxMethodInfo.Invoke(null, new object[5] { g, r, check, brush, bs });
		}
	}

	private static void DrawFrameControl(Graphics g, int left, int top, int width, int height, int kind, int state, Color fore, Color back)
	{
		if (DrawFrameControlMethodInfo != null)
		{
			DrawFrameControlMethodInfo.Invoke(null, new object[9] { g, left, top, width, height, kind, state, fore, back });
		}
	}
}
