using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAbstractBlockDiagramElement
{
	string[] GetAllAvailableViews();

	string[] GetAllAvailableViewTypes();

	CodeComponent GetCodeComponent();

	BlockDiagram GetDiagram();

	BlockDiagramHierarchy GetHierarchy();

	string GetViewTypeForViewNamed(string viewName);

	bool IsAbstractBlockDiagramElement();

	bool IsBlockDiagramComment();

	bool IsBlockDiagramElement();

	bool IsBlockDiagramFlowElement();

	string SetViewTypeForViewNamed(string viewType, string viewName);
}
