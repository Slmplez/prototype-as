using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms;

public class GridVisualStylesSystemTheme : Disposable, IVisualStylesDrawing
{
	private GridVisualStyles visualStyle;

	private static IconPaint iconPainter;

	private ThemedHeaderDrawing themeHeaderDrawing;

	private ThemedPushButtonDrawing themedButtonDrawing;

	private ThemedComboBoxDrawing themedComboDrawing;

	private ThemedSpinButtonDrawing themedSpinDrawing;

	private ThemedCheckBoxDrawing themedCheckDrawing;

	private ThemedRadioButtonDrawing themedRadioDrawing;

	public GridVisualStyles VisualStyle => GridVisualStyles.SystemTheme;

	protected override void Dispose(bool disposing)
	{
		if (themeHeaderDrawing != null)
		{
			themeHeaderDrawing.Dispose();
			themeHeaderDrawing = null;
		}
		if (themedButtonDrawing != null)
		{
			themedButtonDrawing.Dispose();
			themedButtonDrawing = null;
		}
		if (themedComboDrawing != null)
		{
			themedComboDrawing.Dispose();
			themedComboDrawing = null;
		}
		if (themedSpinDrawing != null)
		{
			themedSpinDrawing.Dispose();
			themedSpinDrawing = null;
		}
		if (themedCheckDrawing != null)
		{
			themedCheckDrawing.Dispose();
			themedCheckDrawing = null;
		}
		if (themedRadioDrawing != null)
		{
			themedRadioDrawing.Dispose();
			themedRadioDrawing = null;
		}
		base.Dispose(disposing);
	}

	public GridVisualStylesSystemTheme(GridVisualStyles style)
	{
		visualStyle = style;
		if (iconPainter == null)
		{
			iconPainter = new IconPaint(SharedBaseAssembly.RootNamespace + ".Images.", SharedBaseAssembly.Assembly);
		}
	}

	public void DrawHeaderStyle(Graphics g, Rectangle rect, ThemedHeaderDrawing.HeaderState state)
	{
		if (themeHeaderDrawing == null)
		{
			themeHeaderDrawing = new ThemedHeaderDrawing();
		}
		themeHeaderDrawing.DrawHeader(g, rect, state);
	}

	public bool GetHeaderBorderColors(out Color clrBottom, out Color clrRight, out Color clrInteriorFirst, out Color clrInteriorLast)
	{
		clrBottom = Color.Empty;
		clrRight = Color.Empty;
		clrInteriorFirst = Color.Empty;
		clrInteriorLast = Color.Empty;
		return false;
	}

	public void GetSortIconBrush(out Brush brush, out Pen pen)
	{
		brush = new SolidBrush(SystemColors.ControlDark);
		pen = new Pen(SystemColors.WindowFrame);
	}

	public bool GetGroupDropAreaColors(out Color backColor, out Color headerBorderTop, out Color headerBorderLeft)
	{
		backColor = SystemColors.ControlDark;
		headerBorderTop = Color.Empty;
		headerBorderLeft = Color.Empty;
		return true;
	}

	public void DrawPushButtonStyle(Graphics g, Rectangle rect, ButtonState state)
	{
		if (themedButtonDrawing == null)
		{
			themedButtonDrawing = new ThemedPushButtonDrawing();
		}
		themedButtonDrawing.DrawPushButton(g, rect, state);
	}

	public void DrawComboBoxStyle(Graphics g, Rectangle rect, ThemedComboBoxDrawing.DropDownState state, Color clrBack)
	{
		if (themedComboDrawing == null)
		{
			themedComboDrawing = new ThemedComboBoxDrawing("COMBOBOX");
		}
		themedComboDrawing.DrawDropDownButton(g, state, rect);
	}

	public void DrawSpinButtonStyle(Graphics g, Rectangle rect, ButtonID btnId, ButtonState btnState, Color clrBack)
	{
		if (themedSpinDrawing == null)
		{
			themedSpinDrawing = new ThemedSpinButtonDrawing();
		}
		themedSpinDrawing.DrawScrollButton(g, rect, btnId, ScrollButtonAppearance.Vertical, btnState);
	}

	public void DrawCheckBoxStyle(Graphics g, Rectangle rect, ButtonState state, bool mixedState)
	{
		if (themedCheckDrawing == null)
		{
			themedCheckDrawing = new ThemedCheckBoxDrawing();
		}
		themedCheckDrawing.DrawCheckBox(g, rect, state, mixedState);
	}

	public void DrawRadioStyle(Graphics g, Rectangle rect, ButtonState state)
	{
		if (themedRadioDrawing == null)
		{
			themedRadioDrawing = new ThemedRadioButtonDrawing();
		}
		themedRadioDrawing.DrawRadio(g, rect, state, mixedStateSet: false);
	}
}
