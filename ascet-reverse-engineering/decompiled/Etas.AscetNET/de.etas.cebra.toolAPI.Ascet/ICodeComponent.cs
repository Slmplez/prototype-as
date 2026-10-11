using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface ICodeComponent : IComponent, IDataBaseItem
{
	DataConfiguration AddData(string name);

	bool BuildAll();

	bool BuildAllWriteErrorsToPath(string pathName);

	bool BuildAllWriteErrorsToPathUsingFileName(string pathName, string fileName);

	bool FileOutGeneratedCodeFlat(string pathName);

	bool FileOutGeneratedCodeRecursive(string pathName);

	bool FileOutGenericCodeForExternalMakeFlat(string pathName);

	bool FileOutGenericCodeForExternalMakeRecursive(string pathName);

	bool GenerateCode();

	bool GenerateCodeForOfflineExperiment();

	bool GenerateCodeForOfflineExperimentWriteErrorsToPath(string pathName);

	bool GenerateCodeForOfflineExperimentWriteErrorsToPathUsingFileName(string pathName, string fileName);

	bool GenerateCodeWriteErrorsToPath(string pathName);

	bool GenerateCodeWriteErrorsToPathUsingFileName(string pathName, string fileName);

	AscetDiagram[] GetAllDiagrams();

	AscetDiagram GetDiagramWithName(string diagName);

	DataBaseItem[] GetReferencedItemsForExport();

	bool HasIcon();

	bool HasReferencedItemsForExport();

	bool RebuildAll();

	bool RebuildAllWriteErrorsToPath(string pathName);

	bool RebuildAllWriteErrorsToPathUsingFileName(string pathName, string fileName);

	bool RemoveData(string name);

	bool ReplaceComplexModelElement(ComplexModelElement element, AscetDiscreteComponent component);

	bool ReplaceComplexModelElementNamed(string name, AscetDiscreteComponent component);

	bool SetDefaultData(DataConfiguration dataConf);

	bool TouchFlat();

	bool TouchRecursive();

	bool WriteDCMToFile(string outputFilePathName, bool recursive);
}
