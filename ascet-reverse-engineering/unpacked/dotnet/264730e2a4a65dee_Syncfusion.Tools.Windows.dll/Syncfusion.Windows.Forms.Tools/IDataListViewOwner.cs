using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface IDataListViewOwner
{
	int GetImageColumnIndex();

	int GetColumnWidth(int columnIndex);
}
