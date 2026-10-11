using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104301C9-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(HTMLHelperFactoryClass))]
public interface HTMLHelperFactory : IHTMLHelperFactory
{
}
