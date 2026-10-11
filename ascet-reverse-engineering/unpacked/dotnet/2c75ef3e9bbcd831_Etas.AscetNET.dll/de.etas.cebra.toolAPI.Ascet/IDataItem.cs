using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IDataItem : IConfigurationItem
{
	bool IsArray();

	bool IsDistribution();

	bool IsMatrix();

	bool IsOneDTable();

	bool IsScalar();

	bool IsTwoDTable();
}
