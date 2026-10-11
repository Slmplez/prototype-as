/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.dtd;

import org.apache.xerces.impl.dtd.XMLDTDValidator;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XNIException;

public class XMLNSDTDValidator
extends XMLDTDValidator {
    private final QName fAttributeQName = new QName();

    protected final void startNamespaceScope(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        String string;
        String string2;
        this.fNamespaceContext.pushContext();
        if (qName.prefix == XMLSymbols.PREFIX_XMLNS) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "ElementXMLNSPrefix", new Object[]{qName.rawname}, (short)2);
        }
        int n = xMLAttributes.getLength();
        int n2 = 0;
        while (n2 < n) {
            string2 = xMLAttributes.getLocalName(n2);
            String string3 = xMLAttributes.getPrefix(n2);
            if (string3 == XMLSymbols.PREFIX_XMLNS || string3 == XMLSymbols.EMPTY_STRING && string2 == XMLSymbols.PREFIX_XMLNS) {
                string = this.fSymbolTable.addSymbol(xMLAttributes.getValue(n2));
                if (string3 == XMLSymbols.PREFIX_XMLNS && string2 == XMLSymbols.PREFIX_XMLNS) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXMLNS", new Object[]{xMLAttributes.getQName(n2)}, (short)2);
                }
                if (string == NamespaceContext.XMLNS_URI) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXMLNS", new Object[]{xMLAttributes.getQName(n2)}, (short)2);
                }
                if (string2 == XMLSymbols.PREFIX_XML) {
                    if (string != NamespaceContext.XML_URI) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXML", new Object[]{xMLAttributes.getQName(n2)}, (short)2);
                    }
                } else if (string == NamespaceContext.XML_URI) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXML", new Object[]{xMLAttributes.getQName(n2)}, (short)2);
                }
                String string4 = string3 = string2 != XMLSymbols.PREFIX_XMLNS ? string2 : XMLSymbols.EMPTY_STRING;
                if (string == XMLSymbols.EMPTY_STRING && string2 != XMLSymbols.PREFIX_XMLNS) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "EmptyPrefixedAttName", new Object[]{xMLAttributes.getQName(n2)}, (short)2);
                } else {
                    this.fNamespaceContext.declarePrefix(string3, string.length() != 0 ? string : null);
                }
            }
            ++n2;
        }
        string2 = qName.prefix != null ? qName.prefix : XMLSymbols.EMPTY_STRING;
        qName.uri = this.fNamespaceContext.getURI(string2);
        if (qName.prefix == null && qName.uri != null) {
            qName.prefix = XMLSymbols.EMPTY_STRING;
        }
        if (qName.prefix != null && qName.uri == null) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "ElementPrefixUnbound", new Object[]{qName.prefix, qName.rawname}, (short)2);
        }
        int n3 = 0;
        while (n3 < n) {
            xMLAttributes.getName(n3, this.fAttributeQName);
            string = this.fAttributeQName.prefix != null ? this.fAttributeQName.prefix : XMLSymbols.EMPTY_STRING;
            String string5 = this.fAttributeQName.rawname;
            if (string5 == XMLSymbols.PREFIX_XMLNS) {
                this.fAttributeQName.uri = this.fNamespaceContext.getURI(XMLSymbols.PREFIX_XMLNS);
                xMLAttributes.setName(n3, this.fAttributeQName);
            } else if (string != XMLSymbols.EMPTY_STRING) {
                this.fAttributeQName.uri = this.fNamespaceContext.getURI(string);
                if (this.fAttributeQName.uri == null) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributePrefixUnbound", new Object[]{qName.rawname, string5, string}, (short)2);
                }
                xMLAttributes.setName(n3, this.fAttributeQName);
            }
            ++n3;
        }
        int n4 = xMLAttributes.getLength();
        int n5 = 0;
        while (n5 < n4 - 1) {
            String string6 = xMLAttributes.getURI(n5);
            if (string6 != null && string6 != NamespaceContext.XMLNS_URI) {
                String string7 = xMLAttributes.getLocalName(n5);
                int n6 = n5 + 1;
                while (n6 < n4) {
                    String string8 = xMLAttributes.getLocalName(n6);
                    String string9 = xMLAttributes.getURI(n6);
                    if (string7 == string8 && string6 == string9) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributeNSNotUnique", new Object[]{qName.rawname, string7, string6}, (short)2);
                    }
                    ++n6;
                }
            }
            ++n5;
        }
    }

    protected void endNamespaceScope(QName qName, Augmentations augmentations, boolean bl) throws XNIException {
        String string = qName.prefix != null ? qName.prefix : XMLSymbols.EMPTY_STRING;
        qName.uri = this.fNamespaceContext.getURI(string);
        if (qName.uri != null) {
            qName.prefix = string;
        }
        if (this.fDocumentHandler != null && !bl) {
            this.fDocumentHandler.endElement(qName, augmentations);
        }
        this.fNamespaceContext.popContext();
    }
}

