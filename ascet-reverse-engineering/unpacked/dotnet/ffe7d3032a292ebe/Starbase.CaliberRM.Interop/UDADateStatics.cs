using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430123-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(UDADateStaticsClass))]
public interface UDADateStatics : IUDADateStatics
{
}
