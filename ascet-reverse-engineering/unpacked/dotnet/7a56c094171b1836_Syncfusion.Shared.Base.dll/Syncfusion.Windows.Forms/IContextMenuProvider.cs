using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public interface IContextMenuProvider
{
	event EventHandler Popup;

	event EventHandler Collapse;

	void InitializeContextMenu();

	int GetItemsCount();

	bool NeedAddRemoveButtons();

	void SetVisualStyle(VisualStyle style);

	void AddContextMenuItem(string itemtext, EventHandler handler);

	void AddContextMenuItem(string parentitem, string itemtext, EventHandler handler);

	void SetContextMenuItemImage(string itemtext, ImageList imagelist, int image);

	void SetContextMenuItemShortcut(string itemtext, Shortcut key);

	Shortcut GetContextMenuItemShortcut(string itemtext);

	void SetContextMenuItemChecked(string itemtext, bool bchecked);

	bool GetContextMenuItemChecked(string itemtext);

	void SetContextMenuItemEnabled(string itemtext, bool benabled);

	bool GetContextMenuItemEnabled(string itemtext);

	void SetContextMenuItemSeparator(string itemtext, bool binsertseparator);

	void RemoveContextMenuItem(string itemtext);

	void ShowContextMenu(Control owner, Point pt);

	void DisposeContextMenu();

	void Clear();
}
