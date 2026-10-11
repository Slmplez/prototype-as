using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscetConditionalTable : IAscetDiscreteComponent, IFunctionalComponent, ICodeComponent, IComponent, IDataBaseItem
{
	bool AddCondition(int index, PrimitiveModelElement anElement);

	bool AddInstruction(int index, PrimitiveModelElement anElement);

	bool AddRow();

	bool AddRowBehind(int aRowIndex);

	bool DeleteRow(int anIndex);

	string GetConditionValueAt(int x, int y);

	string GetInstructionValueAt(int x, int y);

	bool MoveConditionColumnLeft(int anIndex);

	bool MoveConditionColumnRight(int anIndex);

	bool MoveInstructionColumnLeft(int anIndex);

	bool MoveInstructionColumnRight(int anIndex);

	bool MoveRowDown(int anIndex);

	bool MoveRowUp(int anIndex);

	bool RemoveConditionColumn(int anIndex);

	bool RemoveInstructionColumn(int anIndex);

	bool SetConditionValueAt(string aValue, int x, int y);

	bool SetInstructionValueAt(string aValue, int x, int y);
}
