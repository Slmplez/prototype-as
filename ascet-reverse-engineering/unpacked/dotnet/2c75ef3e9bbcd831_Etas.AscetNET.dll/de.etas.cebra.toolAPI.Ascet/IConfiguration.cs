using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IConfiguration
{
	bool IsConfiguration();

	bool IsDataConfiguration();

	bool IsImplConfiguration();

	string GetCustomerDataStringForElement(AscetModelElement element);

	string GetUserDataStringForElement(AscetModelElement element);

	bool SetCustomerDataStringForElement(string newContents, AscetModelElement element);

	bool SetUserDataStringForElement(string newContents, AscetModelElement element);
}
