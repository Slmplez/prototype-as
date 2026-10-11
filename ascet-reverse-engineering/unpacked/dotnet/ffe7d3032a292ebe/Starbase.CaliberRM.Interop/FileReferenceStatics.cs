using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043006D-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(FileReferenceStaticsClass))]
public interface FileReferenceStatics : IFileReferenceStatics
{
}
