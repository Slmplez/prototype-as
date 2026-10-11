using System.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal sealed class Switches
{
	public static TraceSwitch Timers;

	public static TraceSwitch GroupingEngine;

	public static TraceSwitch GroupingGrid;

	public static TraceSwitch CurCellNestedGrid;

	public static TraceSwitch MergeCells;

	public static TraceSwitch Serialization;

	public static TraceSwitch CommandStack;

	public static TraceSwitch CurrentCell;

	public static TraceSwitch CellRenderer;

	public static TraceSwitch GridListControl;

	public static TraceSwitch GridModel;

	public static TraceSwitch MouseController;

	public static TraceSwitch DragDrop;

	public static TraceSwitch Development;

	public static TraceSwitch GridBorderPaint;

	public static TraceSwitch GridControlBaseEvents;

	public static TraceSwitch GridModelEvents;

	public static TraceSwitch GridDataBoundGridEvents;

	public static TraceSwitch GridListControlEvents;

	public static TraceSwitch GridModelDataBinderEvents;

	public static TraceSwitch GridBoundColumnEvents;

	public static TraceSwitch GridCellModelBaseEvents;

	public static TraceSwitch GridCellButtonEvents;

	public static TraceSwitch GridFocus;

	public static TraceSwitch GridFocusEvents;

	public static TraceSwitch GridDataBoundGrid;

	public static TraceSwitch FormulaCell;

	public static TraceSwitch GridDesigner;

	private static TraceSwitch general;

	private static TraceSwitch beginEndUpdate;

	private static TraceSwitch volatileData;

	private static TraceSwitch valueConversion;

	private static TraceSwitch floatCells;

	private static TraceSwitch buttonChild;

	private static TraceSwitch keyboardEvents;

	private static TraceSwitch textBoxCellEvents;

	private static TraceSwitch selectRange;

	private static TraceSwitch printing;

	private static TraceSwitch resizeToFit;

	private static TraceSwitch dataExchange;

	private static TraceSwitch markEdit;

	private static TraceSwitch delayedRange;

	private static TraceSwitch gridLayout;

	private static TraceSwitch gridPaint;

	private static TraceSwitch gridScrolling;

	private static TraceSwitch scrolling;

	private static TraceSwitch mouseEvents;

	private static TraceSwitch tabBarControl;

	private static TraceSwitch checkBoxCellEvents;

	private static TraceSwitch userAttributeLifetime;

	public static TraceSwitch General
	{
		get
		{
			if (general == null)
			{
				general = new TraceSwitch("Grid.General", "Enable Tracing for the Grid Library");
			}
			return general;
		}
	}

	public static TraceSwitch VolatileData
	{
		get
		{
			if (volatileData == null)
			{
				volatileData = new TraceSwitch("Grid.VolatileData", "Debug VolatileData");
			}
			return volatileData;
		}
	}

	public static TraceSwitch ValueConversion
	{
		get
		{
			if (valueConversion == null)
			{
				valueConversion = new TraceSwitch("Grid.ValueConversion", "Debug Cell Value Conversion");
			}
			return valueConversion;
		}
	}

	public static TraceSwitch FloatCells
	{
		get
		{
			if (floatCells == null)
			{
				floatCells = new TraceSwitch("Grid.FloatCells", "Debug Floating Cells");
			}
			return floatCells;
		}
	}

	public static TraceSwitch ButtonChild
	{
		get
		{
			if (buttonChild == null)
			{
				buttonChild = new TraceSwitch("Grid.ButtonChild", "Debug GridButtonChild");
			}
			return buttonChild;
		}
	}

	public static TraceSwitch KeyboardEvents
	{
		get
		{
			if (keyboardEvents == null)
			{
				keyboardEvents = new TraceSwitch("Grid.KeyboardEvents", "Debug keyboard events");
			}
			return keyboardEvents;
		}
	}

	public static TraceSwitch TextBoxCellEvents
	{
		get
		{
			if (textBoxCellEvents == null)
			{
				textBoxCellEvents = new TraceSwitch("Grid.TextBoxCellEvents", "Debug textbox cell events");
			}
			return textBoxCellEvents;
		}
	}

	public static TraceSwitch SelectRange
	{
		get
		{
			if (selectRange == null)
			{
				selectRange = new TraceSwitch("Grid.SelectRange", "Debug SelectRange operations");
			}
			return selectRange;
		}
	}

	public static TraceSwitch Printing
	{
		get
		{
			if (printing == null)
			{
				printing = new TraceSwitch("Grid.Printing", "Debug Printing operations");
			}
			return printing;
		}
	}

	public static TraceSwitch ResizeToFit
	{
		get
		{
			if (resizeToFit == null)
			{
				resizeToFit = new TraceSwitch("Grid.ResizeToFit", "Debug ResizeToFit operations");
			}
			return resizeToFit;
		}
	}

	public static TraceSwitch DataExchange
	{
		get
		{
			if (dataExchange == null)
			{
				dataExchange = new TraceSwitch("Grid.DataExchange", "Debug DataExchange operations");
			}
			return dataExchange;
		}
	}

	public static TraceSwitch OutlineCurrentCellHeader
	{
		get
		{
			if (markEdit == null)
			{
				markEdit = new TraceSwitch("Grid.OutlineCurrentCellHeader", "Debug OutlineCurrentCellHeader operations");
			}
			return markEdit;
		}
	}

	public static TraceSwitch CustomStylePropertyLifetime
	{
		get
		{
			if (userAttributeLifetime == null)
			{
				userAttributeLifetime = new TraceSwitch("Grid.CustomStylePropertyLifetime", "Debug Userattribute creation and collection");
			}
			return userAttributeLifetime;
		}
	}

	public static TraceSwitch DelayedRange
	{
		get
		{
			if (delayedRange == null)
			{
				delayedRange = new TraceSwitch("Grid.DelayedRange", "Debug DelayedRange operations");
			}
			return delayedRange;
		}
	}

	public static TraceSwitch GridLayout
	{
		get
		{
			if (gridLayout == null)
			{
				gridLayout = new TraceSwitch("Grid.GridLayout", "Debug grid layout operations");
			}
			return gridLayout;
		}
	}

	public static TraceSwitch GridPaint
	{
		get
		{
			if (gridPaint == null)
			{
				gridPaint = new TraceSwitch("Grid.GridPaint", "Debug grid paint operations");
			}
			return gridPaint;
		}
	}

	public static TraceSwitch GridScrolling
	{
		get
		{
			if (gridScrolling == null)
			{
				gridScrolling = new TraceSwitch("Grid.GridScrolling", "Debug grid scrolling operations");
			}
			return gridScrolling;
		}
	}

	public static TraceSwitch Scrolling
	{
		get
		{
			if (scrolling == null)
			{
				scrolling = new TraceSwitch("Grid.Scrolling", "Debug scrolling operations");
			}
			return scrolling;
		}
	}

	public static TraceSwitch MouseEvents
	{
		get
		{
			if (mouseEvents == null)
			{
				mouseEvents = new TraceSwitch("Grid.MouseEvents", "Debug mouse events");
			}
			return mouseEvents;
		}
	}

	public static TraceSwitch TabBarControl
	{
		get
		{
			if (tabBarControl == null)
			{
				tabBarControl = new TraceSwitch("Grid.TabBarControl", "Debug TabBarControl operations");
			}
			return tabBarControl;
		}
	}

	public static TraceSwitch CheckBoxCellEvents
	{
		get
		{
			if (checkBoxCellEvents == null)
			{
				checkBoxCellEvents = new TraceSwitch("Grid.CheckBoxCellEvents", "Debug checkbox cell operations");
			}
			return checkBoxCellEvents;
		}
	}

	public static TraceSwitch BeginEndUpdate
	{
		get
		{
			if (beginEndUpdate == null)
			{
				beginEndUpdate = new TraceSwitch("Grid.BeginEndUpdate", "Debug BeginUpdate and EndUpdate operations");
			}
			return beginEndUpdate;
		}
	}

	static Switches()
	{
		Timers = new TraceSwitch("Grid.Timers", "Enable Tracing for Timer Start and Stop");
		GroupingEngine = new TraceSwitch("Grid.GroupingEngine", "Debug Grouping Ending");
		GroupingGrid = new TraceSwitch("Grid.GroupingGrid", "Debug Grouping Grid");
		CurCellNestedGrid = new TraceSwitch("Grid.CurCellNestedGrid", "Debug Grouping Grid");
		MergeCells = new TraceSwitch("Grid.MergeCells", "Debug Merge Cells");
		Serialization = new TraceSwitch("Grid.Serialization", "Debug Grid Serialization");
		CommandStack = new TraceSwitch("Grid.CommandStack", "Debug Undo and Redo operations");
		CurrentCell = new TraceSwitch("Grid.CurrentCell", "Debug CurrentCell operations");
		CellRenderer = new TraceSwitch("Grid.CellRenderer", "Debug Cell Renderer operations");
		GridListControl = new TraceSwitch("Grid.GridListControl", "Debug GridListControl operations");
		GridModel = new TraceSwitch("Grid.GridModel", "Debug GridModel operations");
		MouseController = new TraceSwitch("Grid.MouseController", "Debug MouseController operations");
		DragDrop = new TraceSwitch("Grid.DragDrop", "Debug DragDrop operations");
		Development = new TraceSwitch("Grid.Development", "Trace Helper for Development of EG");
		GridBorderPaint = new TraceSwitch("Grid.GridBorderPaint", "Trace Helper for GridBorderPaint methods");
		GridControlBaseEvents = new TraceSwitch("Grid.GridControlBaseEvents", "Trace Helper for all GridControlBase events");
		GridModelEvents = new TraceSwitch("Grid.GridModelEvents", "Trace Helper for all GridModel events");
		GridDataBoundGridEvents = new TraceSwitch("Grid.GridDataBoundGridEvents", "Trace Helper for all GridDataBoundGrid events");
		GridListControlEvents = new TraceSwitch("Grid.GridListControlEvents", "Trace Helper for all GridListControl events");
		GridModelDataBinderEvents = new TraceSwitch("Grid.GridModelDataBinderEvents", "Trace Helper for all GridModelDataBinder events");
		GridBoundColumnEvents = new TraceSwitch("Grid.GridBoundColumnEvents", "Trace Helper for all GridBoundColumn events");
		GridCellModelBaseEvents = new TraceSwitch("Grid.GridCellModelBaseEvents", "Trace Helper for all GridCellModelBase events");
		GridCellButtonEvents = new TraceSwitch("Grid.GridCellButtonEvents", "Trace Helper for all GridCellButton events");
		GridFocus = new TraceSwitch("Grid.Focus", "Trace Helper for inside focus");
		GridFocusEvents = new TraceSwitch("Grid.FocusEvents", "Trace Helper for all focus");
		GridDataBoundGrid = new TraceSwitch("Grid.GridDataBoundGrid", "Trace Helper for various GridDataBoundGrid method calls");
		FormulaCell = new TraceSwitch("Grid.FormulaCell", "Enable Tracing for Formula Cell");
		GridDesigner = new TraceSwitch("Grid.GridDesigner", "Enable Tracing for Grid Control designer");
	}
}
