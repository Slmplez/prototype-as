using System;
using System.Reflection;
using System.Windows.Forms;

namespace Syncfusion.ComponentModel;

public class ControlEventsHelper
{
	public static readonly object EventBackColor;

	public static readonly object EventBackgroundImage;

	public static readonly object EventBindingContext;

	public static readonly object EventCausesValidation;

	public static readonly object EventChangeUICues;

	public static readonly object EventClick;

	public static readonly object EventContextMenu;

	public static readonly object EventControlAdded;

	public static readonly object EventControlRemoved;

	public static readonly object EventCursor;

	public static readonly object EventDock;

	public static readonly object EventDoubleClick;

	public static readonly object EventDragDrop;

	public static readonly object EventDragEnter;

	public static readonly object EventDragLeave;

	public static readonly object EventDragOver;

	public static readonly object EventEnabled;

	public static readonly object EventEnabledChanged;

	public static readonly object EventEnter;

	public static readonly object EventFont;

	public static readonly object EventForeColor;

	public static readonly object EventGiveFeedback;

	public static readonly object EventGotFocus;

	public static readonly object EventHandleCreated;

	public static readonly object EventHandleDestroyed;

	public static readonly object EventHelpRequested;

	public static readonly object EventImeModeChanged;

	public static readonly object EventInvalidated;

	public static readonly object EventKeyDown;

	public static readonly object EventKeyPress;

	public static readonly object EventKeyUp;

	public static readonly object EventLayout;

	public static readonly object EventLeave;

	public static readonly object EventLocation;

	public static readonly object EventLostFocus;

	public static readonly object EventMouseDown;

	public static readonly object EventMouseEnter;

	public static readonly object EventMouseHover;

	public static readonly object EventMouseLeave;

	public static readonly object EventMouseMove;

	public static readonly object EventMouseUp;

	public static readonly object EventMouseWheel;

	public static readonly object EventMove;

	public static readonly object EventPaint;

	public static readonly object EventParent;

	public static readonly object EventQueryAccessibilityHelp;

	public static readonly object EventQueryContinueDrag;

	public static readonly object EventResize;

	public static readonly object EventRightToLeft;

	public static readonly object EventSize;

	public static readonly object EventStyleChanged;

	public static readonly object EventSystemColorsChanged;

	public static readonly object EventTabIndex;

	public static readonly object EventTabStop;

	public static readonly object EventText;

	public static readonly object EventValidated;

	public static readonly object EventValidating;

	public static readonly object EventVisible;

	public static readonly object EventVisibleChanged;

	static ControlEventsHelper()
	{
		Type typeFromHandle = typeof(Control);
		using Control obj = new Control();
		EventBackColor = typeFromHandle.GetField("EventBackColor", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventBackgroundImage = typeFromHandle.GetField("EventBackgroundImage", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventBindingContext = typeFromHandle.GetField("EventBindingContext", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventCausesValidation = typeFromHandle.GetField("EventCausesValidation", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventChangeUICues = typeFromHandle.GetField("EventChangeUICues", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventClick = typeFromHandle.GetField("EventClick", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventContextMenu = typeFromHandle.GetField("EventContextMenu", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventControlAdded = typeFromHandle.GetField("EventControlAdded", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventControlRemoved = typeFromHandle.GetField("EventControlRemoved", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventCursor = typeFromHandle.GetField("EventCursor", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventDock = typeFromHandle.GetField("EventDock", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventDoubleClick = typeFromHandle.GetField("EventDoubleClick", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventDragDrop = typeFromHandle.GetField("EventDragDrop", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventDragEnter = typeFromHandle.GetField("EventDragEnter", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventDragLeave = typeFromHandle.GetField("EventDragLeave", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventDragOver = typeFromHandle.GetField("EventDragOver", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventEnabled = typeFromHandle.GetField("EventEnabled", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventEnabledChanged = typeFromHandle.GetField("EventEnabledChanged", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventEnter = typeFromHandle.GetField("EventEnter", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventFont = typeFromHandle.GetField("EventFont", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventForeColor = typeFromHandle.GetField("EventForeColor", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventGiveFeedback = typeFromHandle.GetField("EventGiveFeedback", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventGotFocus = typeFromHandle.GetField("EventGotFocus", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventHandleCreated = typeFromHandle.GetField("EventHandleCreated", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventHandleDestroyed = typeFromHandle.GetField("EventHandleDestroyed", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventHelpRequested = typeFromHandle.GetField("EventHelpRequested", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventImeModeChanged = typeFromHandle.GetField("EventImeModeChanged", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventInvalidated = typeFromHandle.GetField("EventInvalidated", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventKeyDown = typeFromHandle.GetField("EventKeyDown", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventKeyPress = typeFromHandle.GetField("EventKeyPress", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventKeyUp = typeFromHandle.GetField("EventKeyUp", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventLayout = typeFromHandle.GetField("EventLayout", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventLeave = typeFromHandle.GetField("EventLeave", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventLocation = typeFromHandle.GetField("EventLocation", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventLostFocus = typeFromHandle.GetField("EventLostFocus", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventMouseDown = typeFromHandle.GetField("EventMouseDown", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventMouseEnter = typeFromHandle.GetField("EventMouseEnter", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventMouseHover = typeFromHandle.GetField("EventMouseHover", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventMouseLeave = typeFromHandle.GetField("EventMouseLeave", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventMouseMove = typeFromHandle.GetField("EventMouseMove", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventMouseUp = typeFromHandle.GetField("EventMouseUp", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventMouseWheel = typeFromHandle.GetField("EventMouseWheel", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventMove = typeFromHandle.GetField("EventMove", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventPaint = typeFromHandle.GetField("EventPaint", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventParent = typeFromHandle.GetField("EventParent", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventQueryAccessibilityHelp = typeFromHandle.GetField("EventQueryAccessibilityHelp", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventQueryContinueDrag = typeFromHandle.GetField("EventQueryContinueDrag", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventResize = typeFromHandle.GetField("EventResize", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventRightToLeft = typeFromHandle.GetField("EventRightToLeft", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventSize = typeFromHandle.GetField("EventSize", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventStyleChanged = typeFromHandle.GetField("EventStyleChanged", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventSystemColorsChanged = typeFromHandle.GetField("EventSystemColorsChanged", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventTabIndex = typeFromHandle.GetField("EventTabIndex", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventTabStop = typeFromHandle.GetField("EventTabStop", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventText = typeFromHandle.GetField("EventText", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventValidated = typeFromHandle.GetField("EventValidated", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventValidating = typeFromHandle.GetField("EventValidating", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventVisible = typeFromHandle.GetField("EventVisible", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
		EventVisibleChanged = typeFromHandle.GetField("EventVisibleChanged", BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.GetField).GetValue(obj);
	}
}
