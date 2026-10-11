using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscetDiagram
{
	CodeComponent GetCodeComponent();

	string GetName();

	bool IsActionConditionDiagram();

	bool IsAscetDiagram();

	bool IsBlockDiagram();

	bool IsContinuousMethodDiagram();

	bool IsDiscreteMethodDiagram();

	bool IsProcessDiagram();

	bool IsStateMachineDiagram();

	bool SaveAsBitmap(string fileName, string view);

	bool SaveAsGIF(string fileName, string view);

	bool SaveAsPostscript(string fileName, string view);

	bool SaveAsPostscriptAndRescale(string fileName, double scaleFactor, string view);

	bool SaveAsRTF(string fileName, string view);

	bool SetName(string aName);

	bool StoreToCache();

	bool SwitchSequenceVisibilityOff();

	bool SwitchSequenceVisibilityOn();
}
