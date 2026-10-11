using System;

namespace Syncfusion.Windows.Forms.Tools;

public interface ITabData2 : ITabData, IDisposable
{
	ToolTipInfo SuperTooltip { get; set; }
}
