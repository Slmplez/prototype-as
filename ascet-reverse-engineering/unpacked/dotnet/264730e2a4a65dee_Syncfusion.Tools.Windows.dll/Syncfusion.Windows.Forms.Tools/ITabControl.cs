using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public interface ITabControl
{
	Rectangle ClientRectangle { get; }

	ITabPanelRenderer Renderer { get; }

	ThemedTabDrawing ThemedDrawing { get; }

	bool ThemesEnabled { get; }

	bool UseMnemonic { get; }

	bool MultilineText { get; }

	Office2007Theme Office2007ColorScheme { get; }

	bool BorderVisible { get; }

	int BorderWidth { get; }

	void OnTabPanelBoundsAffected();

	void OnRepaint(RectangleF affectedRect);

	Graphics GetGraphics();

	Control GetControl();

	bool OnDrawItem(DrawTabEventArgs eventArgs);

	void OnScrollPositionChanged();

	bool IsDesignMode();

	bool ValidateFocusedTab();
}
