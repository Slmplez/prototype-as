using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Layouting;

public interface ILayouter : IDisposable
{
	BarLayoutInfoCollection BarLayoutInfos { get; }

	TextFormatFlags TextFormat { get; }

	Rectangle BorderBounds { get; }

	Bar RootLayoutBar { get; }

	Size MeasureText(NavigationView navView, Graphics g, string text);

	void UpdateLayout(NavigationView navView);

	LayoutInfo HitTest(Point point);

	LayoutInfo GetLayout(HitTestAreas area);
}
