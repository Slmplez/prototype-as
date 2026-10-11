using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscet : IEtasTool
{
	bool AddCodeGenMessages(string aXmlString);

	bool AscetLink(string asdLink);

	bool AsdLink(string asdLink);

	bool ClearCodeGenMessages();

	bool CloseAllOpenWindows();

	bool FileOutLoadedTargets(string filePathName);

	bool GenerateDokument(DataBaseItem item, bool recursive, string destinationPath, string fileName);

	View[] GetAllEditorsWithUnsavedChanges();

	View[] GetAllOpenWindows();

	View GetComponentManagerWindow();

	string[] GetAllViews();

	string GetCurrentUserDataKey();

	string GetDocumentorAuthor();

	string GetDocumentorLanguage();

	string GetDocumentorOutputFormat();

	string GetDocumentorTitle();

	string GetDocumentorView();

	bool InitializeUserDataKey();

	bool IsASCIIExportActive();

	bool IsDatabaseMode();

	bool IsExportForINCA();

	bool IsWorkspaceMode();

	bool IsXMLExportActive();

	View OpenListBrowserForItems(DataBaseItem[] items, string title);

	bool ReadToolOptionsFromXMLFile(string xmlFilePathName);

	bool SaveChangesInAllEditors();

	string SetCurrentUserDataKey(string userKey);

	bool SetDataBasePath(string newPath);

	bool SetDocumentorAuthor(string author);

	bool SetDocumentorLanguage(string language);

	bool SetDocumentorOutputFormat(string outputFormat);

	bool SetDocumentorTitle(string title);

	bool SetDocumentorView(string view);

	bool SetExportForINCA(bool flag);

	bool SetXMLExportActive(bool flag);

	bool SetASCIIExportActive(bool flag);

	bool WriteCodeGenerationErrorsToPath(string pathName);

	bool WriteCodeGenerationErrorsToPathUsingFileName(string pathName, string fileName);

	bool WriteToolOptionsToXMLFile(string xmlFilePathName);
}
