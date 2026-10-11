using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscetStateMachine : IAscetDiscreteComponent, IFunctionalComponent, ICodeComponent, IComponent, IDataBaseItem
{
	ActionConditionDiagram AddActionConditionDiagram(string name);
}
