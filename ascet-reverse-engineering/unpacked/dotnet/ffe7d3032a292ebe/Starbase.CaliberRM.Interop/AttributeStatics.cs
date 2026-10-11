using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430113-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(AttributeStaticsClass))]
public interface AttributeStatics : IAttributeStatics
{
}
