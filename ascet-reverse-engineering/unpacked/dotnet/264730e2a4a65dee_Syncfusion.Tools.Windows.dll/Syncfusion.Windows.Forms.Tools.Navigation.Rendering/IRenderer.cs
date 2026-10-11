using System;
using System.Drawing;
using Syncfusion.Windows.Forms.Tools.Navigation.Layouting;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Rendering;

public interface IRenderer : IDisposable
{
	void RenderControl(NavigationView navView, Graphics g, ILayouter layouter, IAreasStateCache states);
}
