using System.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Diagnostics;

[DocumentationExclude]
internal sealed class Switches
{
	private static TraceSwitch general;

	public static readonly TraceSwitch Styles = new TraceSwitch("Shared.Styles", "Debug Styles");

	public static readonly TraceSwitch Serialization = new TraceSwitch("Shared.Serialization", "Debug Shared Serialization");

	public static readonly TraceSwitch ScrollControl = new TraceSwitch("Shared.ScrollControl", "Enable Tracing for the ScrollControl");

	public static readonly TraceSwitch Timers = new TraceSwitch("Shared.Timers", "Enable Tracing for Timer Start and Stop");

	public static readonly TraceSwitch Workbook = new TraceSwitch("Shared.Workbook", "Enable Tracing for Workbooks");

	public static readonly TraceSwitch BeginEndUpdate = new TraceSwitch("Shared.BeginEndUpdate", "Enable Tracing for BeginUpdate and EndUpdate methods calls");

	public static readonly TraceSwitch MouseController = new TraceSwitch("Shared.MouseController", "Enable Tracing for MouseController");

	public static readonly TraceSwitch OperationFeedback = new TraceSwitch("Shared.OperationFeedback", "Enable Tracing for OperationFeedback");

	public static readonly TraceSwitch BrushPaint = new TraceSwitch("Shared.BrushPaint", "Enable Tracing for BrushPaint drawing methods");

	public static readonly TraceSwitch ArrowButtonBarEvents = new TraceSwitch("Shared.ArrowButtonBarEvents", "Enable Tracing for ArrowButtonBar events");

	public static readonly TraceSwitch ButtonBarEvents = new TraceSwitch("Shared.ButtonBarEvents", "Enable Tracing for ButtonBar events");

	public static readonly TraceSwitch RecordNavigationBarEvents = new TraceSwitch("Shared.RecordNavigationBarEvents", "Enable Tracing for RecordNavigationBar events");

	public static readonly TraceSwitch RecordNavigationControlEvents = new TraceSwitch("Shared.RecordNavigationControlEvents", "Enable Tracing for RecordNavigationControl events");

	public static readonly TraceSwitch SplitterControlEvents = new TraceSwitch("Shared.SplitterControlEvents", "Enable Tracing for SplitterControl events");

	public static readonly TraceSwitch TabBarEvents = new TraceSwitch("Shared.TabBarEvents", "Enable Tracing for TabBar events");

	public static readonly TraceSwitch TabBarSplitterControlEvents = new TraceSwitch("Shared.TabBarSplitterControlEvents", "Enable Tracing for TabBarSplitterControl events");

	public static readonly TraceSwitch MouseControllerDispatcherEvents = new TraceSwitch("Shared.MouseControllerDispatcherEvents", "Enable Tracing for MouseControllerDispatcher events");

	public static readonly TraceSwitch ScrollControlEvents = new TraceSwitch("Shared.ScrollControlEvents", "Enable Tracing for ScrollControl events");

	public static readonly TraceSwitch ScrollControlFocus = new TraceSwitch("Shared.ScrollControlFocus", "Enable Tracing for Focus events");

	public static TraceSwitch General
	{
		get
		{
			if (general == null)
			{
				general = new TraceSwitch("Shared.General", "Enable Tracing for the Syncfusion shared Library");
			}
			return general;
		}
	}
}
