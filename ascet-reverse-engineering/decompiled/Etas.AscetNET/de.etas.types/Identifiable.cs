using System.Runtime.InteropServices;

namespace de.etas.types;

[ComVisible(false)]
public interface Identifiable
{
	bool Registered { get; set; }

	long getIdentifier();

	bool nullHandle();

	void setIdentifier(long id);

	void setIdentifier(Identifiable id);
}
