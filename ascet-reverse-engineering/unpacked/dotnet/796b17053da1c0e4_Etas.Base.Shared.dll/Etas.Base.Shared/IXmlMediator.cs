using System.Runtime.InteropServices;

namespace Etas.Base.Shared;

[ComVisible(false)]
public interface IXmlMediator
{
	string LastErrorMessage { get; }

	bool LoadFromFile(string fileName);

	bool LoadFromString(string xmlString);

	bool LoadFromFile(string fileName, bool disableSchemaCheck);

	bool LoadFromString(string xmlString, bool disableSchemaCheck);

	bool WriteToFile(string fileName);

	string WriteToString();

	bool CheckAgainstSchema();

	bool ValidateFile(string fileName);

	bool ValidateString(string xmlString);
}
