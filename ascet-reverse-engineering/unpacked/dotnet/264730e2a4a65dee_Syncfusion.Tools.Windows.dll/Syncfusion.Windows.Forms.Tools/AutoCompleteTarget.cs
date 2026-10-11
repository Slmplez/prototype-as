using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class AutoCompleteTarget
{
	private Control m_editControl;

	private AutoCompleteModes m_autoCompleteMode;

	[DocumentationExclude]
	public Control EditControl => m_editControl;

	[DocumentationExclude]
	public AutoCompleteModes AutoCompleteMode
	{
		get
		{
			return m_autoCompleteMode;
		}
		set
		{
			m_autoCompleteMode = value;
		}
	}

	public AutoCompleteTarget(Control editControl, AutoCompleteModes autoCompleteMode)
	{
		m_editControl = editControl;
		m_autoCompleteMode = autoCompleteMode;
	}
}
