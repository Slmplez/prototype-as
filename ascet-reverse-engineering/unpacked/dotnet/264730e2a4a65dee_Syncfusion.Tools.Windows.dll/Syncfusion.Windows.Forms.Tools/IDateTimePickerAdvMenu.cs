using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public interface IDateTimePickerAdvMenu
{
	bool ShowNoDateTime { get; set; }

	bool CopyEnabled { get; set; }

	bool CutEnabled { get; set; }

	bool PasteEnabled { get; set; }

	bool NoDateTimeEnabled { get; set; }

	bool NoDateTimeChecked { get; set; }

	event EventHandler Cut;

	event EventHandler Copy;

	event EventHandler Paste;

	event EventHandler NoDateTime;

	event EventHandler Popup;

	void ShowPopup(Control control, Point pt);
}
