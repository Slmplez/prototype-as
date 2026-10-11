using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IComponent : IDataBaseItem
{
	bool AddTextSegment(string textSegment, string[] views);

	bool AssignViewToTextSegment(string view, string textSegment);

	bool DeAssignViewFromTextSegment(string view, string textSegment);

	View Edit();

	View EditInFront();

	string GetDate();

	string GetNoteForTextSegment(string textSegment);

	string GetRequirementManagementDataString();

	string[] GetTextSegments();

	string GetVersion();

	string[] GetViewsForTextSegment(string textSegment);

	bool RemoveTextSegment(string textSegment);

	bool ResetVersion();

	bool SetNoteForTextSegment(string noteText, string textSegment);

	bool SetRequirementManagementDataString(string newContents);

	bool SetVersion(string version);
}
