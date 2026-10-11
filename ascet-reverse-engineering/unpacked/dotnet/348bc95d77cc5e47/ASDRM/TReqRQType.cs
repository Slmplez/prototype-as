using System;
using System.CodeDom.Compiler;
using System.Xml.Serialization;

namespace ASDRM;

[Serializable]
[GeneratedCode("xsd", "2.0.50727.42")]
[XmlType(AnonymousType = true)]
public enum TReqRQType
{
	File,
	CaliberRM
}
