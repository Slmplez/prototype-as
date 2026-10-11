using System.Collections;
using System.ComponentModel.Design;
using System.IO;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface IDockingManagerDesignerInvoke
{
	MainFormController GetHostFormController();

	ArrayList GetEnableDockingList();

	ArrayList GetFFControllerList();

	ArrayList GetControllerList();

	ArrayList GetFreezeResizeControllers();

	Hashtable GetTextTable();

	Hashtable GetIconTable();

	Hashtable GetmIconTable();

	Hashtable GetDockAbilityTable();

	Hashtable GetOuterDockAbilityTable();

	DockHostController GetDHCInFocus();

	void SetDHCInFocus(DockHostController dhc);

	bool LoadFromStream(Stream file);

	void ApplyDHCFloatOnlySettings();

	object GetPrimarySelection();

	void SetSelectedComponents(ICollection clln, SelectionTypes seltype);

	ArrayList GetInheritedControlsList();
}
