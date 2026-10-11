using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(TextReferenceClass))]
[Guid("104300F1-72AE-11D5-B316-0800309CC2CE")]
public interface TextReference : ITextReference
{
}
