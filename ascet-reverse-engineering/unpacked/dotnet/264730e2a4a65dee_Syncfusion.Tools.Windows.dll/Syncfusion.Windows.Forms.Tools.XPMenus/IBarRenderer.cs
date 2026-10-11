using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public interface IBarRenderer : IPopupChild, INeedKeyboardMessages, INeedMouseMoveMessages, IMouseHookHLProcClient, IKeyboardProcHookClient, IPopupParent, IPopupItem, IDisposable
{
	bool HintViaHotKeyPrefix { get; set; }

	CommandBarDockState Alignment { get; set; }

	Bar Bar { get; set; }

	bool Customizing { get; }

	bool DndCustomizing { get; }

	RectangleF Bounds { get; set; }

	bool ThemesEnabled { get; set; }

	VisualStyle Style { get; set; }

	bool LargeIcons { get; }

	BarItem DelayedPerformClickOnBarItem { get; set; }

	void StartKeyboardNavigation();

	void StopKeyboardNavigation();

	void OnFormDeactivated();

	bool IsKeyboardNavigationOn();

	bool CanStartKeyboardNavigation();

	void Layout(IGraphicsProvider gs);

	bool IsShowingDropdown();

	void GetPreferredSize(IGraphicsProvider gp, ref SizeF size);

	void InvalidateCachedTextSizes();

	Rectangle GetBarItemBounds(int i);

	void OnPaint(Graphics g, Rectangle clipRect);

	int HitTestBarItems(PointF mousePosition);

	void OnMouseMove(MouseEventArgs e);

	void OnMouseLeave(EventArgs e);

	bool OnMouseDown(MouseEventArgs e);

	void OnMouseUp(MouseEventArgs e);

	void OnMouseWheel(MouseEventArgs e);

	bool ProcessMnemonic(char charCode);

	bool ProcessShortcut(char c);

	void OnDragOver(DragEventArgs drgevent);

	void OnDragDrop(DragEventArgs e);

	void OnDragLeave(EventArgs e);

	void OnGiveFeedback(GiveFeedbackEventArgs gfbevent);

	bool ProcessCmdKey(ref Message msg, Keys keyData);

	void ComputeBarItemPositions(IGraphicsProvider gp);

	IBarControl GetBarControl();

	void SetHotTrack(BarItemRenderer renderer, bool hotTrack);

	void RemoveRenderer(IBarItemRenderer renderer);

	void UpdateRenderers();

	PopupRelativeAlignment GetFirstPopupAlignPreference();
}
