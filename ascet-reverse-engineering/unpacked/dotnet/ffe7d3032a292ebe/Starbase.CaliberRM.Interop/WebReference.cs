using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043010B-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(WebReferenceClass))]
public interface WebReference : IWebReference
{
}
