using System.Runtime.InteropServices;

namespace ETAS.StandardDialogs;

[Guid("D830A682-DC3A-43e9-A1AC-36CA5329542F")]
[ComVisible(true)]
public interface ILocation
{
	string Phone { get; set; }

	string Email { get; set; }
}
