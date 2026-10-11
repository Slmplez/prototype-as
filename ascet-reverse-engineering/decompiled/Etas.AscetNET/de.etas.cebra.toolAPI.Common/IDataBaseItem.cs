using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IDataBaseItem
{
	DataBaseItem CopyToFolder(string name, Folder folder);

	bool ExportXMLToFile(string filePath, bool references);

	bool ExportXMLToZipFile(string filePathAndName, bool references);

	DataBaseItem[] GetAllReferecedDataBaseItems();

	string GetComment();

	bool IsAsap2CanDB();

	bool IsAsap2Catalog();

	bool IsAsap2Item();

	bool IsAsap2Project();

	bool IsAsap2ProjectFolder();

	bool IsAscetAtomicSoftwareComponent();

	bool IsAscetContainer();

	bool IsAscetFolder();

	bool IsAscetInterface();

	bool IsAscetNetwork();

	bool IsAscetProject();

	bool IsAscetProtocol();

	bool IsClass();

	bool IsCodeComponent();

	bool IsComponent();

	bool IsConditionalTable();

	bool IsCTBlock();

	bool IsCTComponent();

	bool IsDataBaseItem();

	bool IsDataSet();

	bool IsDiscreteComponent();

	bool IsEnumeration();

	bool IsExperimentEnvironment();

	bool IsFolder();

	bool IsFunctionalComponent();

	bool IsHardwareConfiguration();

	bool IsIcon();

	bool IsIncaFolder();

	bool IsModule();

	bool IsProject();

	bool IsRecord();

	bool IsSignal();

	bool IsStateMachine();

	bool Move(Folder folder);

	bool SetComment(string comment);
}
