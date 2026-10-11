using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(UserClass))]
[Guid("10430039-72AE-11D5-B316-0800309CC2CE")]
public interface User : IUser
{
}
