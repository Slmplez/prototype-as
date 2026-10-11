using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IBlockDiagramHierarchy : IBlockDiagramElement, IAbstractBlockDiagramElement
{
	bool SaveAsBitmap(string fileName, string view);

	bool SaveAsGIF(string fileName, string view);

	bool SaveAsPostscript(string fileName, string view);

	bool SaveAsPostscriptAndRescale(string fileName, double scaleFactor, string view);

	bool SaveAsRTF(string fileName, string view);

	bool SwitchSequenceVisibilityOff();

	bool SwitchSequenceVisibilityOn();
}
