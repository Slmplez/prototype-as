using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IDataBase
{
	void CreateApplicationError();

	void DisableAutoCommit();

	void EnableAutoCommit();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	string[] ImportDirectoryFor(string aFileName, string listMode);

	DataBaseItem[] ImportItemsFromFile(string aFileName, bool overwriteFlag, bool discardImplFlag);

	bool IsAscetDataBase();

	bool IsAutoCommit();

	bool IsIncaDataBase();

	bool IsToolErrorAvailable();
}
