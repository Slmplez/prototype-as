/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xml.serialize;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XML11Char;
import org.apache.xerces.util.XMLChar;
import org.apache.xml.serialize.ElementState;
import org.apache.xml.serialize.OutputFormat;
import org.apache.xml.serialize.XMLSerializer;
import org.xml.sax.SAXException;

public class XML11Serializer
extends XMLSerializer {
    protected static final boolean DEBUG = false;
    protected NamespaceSupport fNSBinder;
    protected NamespaceSupport fLocalNSBinder;
    protected SymbolTable fSymbolTable;
    protected boolean fDOML1 = false;
    protected int fNamespaceCounter = 1;
    protected static final String PREFIX = "NS";
    protected boolean fNamespaces = false;

    public XML11Serializer() {
        this._format.setVersion("1.1");
    }

    public XML11Serializer(OutputFormat outputFormat) {
        super(outputFormat);
        this._format.setVersion("1.1");
    }

    public XML11Serializer(Writer writer, OutputFormat outputFormat) {
        super(writer, outputFormat);
        this._format.setVersion("1.1");
    }

    public XML11Serializer(OutputStream outputStream, OutputFormat outputFormat) {
        super(outputStream, outputFormat != null ? outputFormat : new OutputFormat("xml", null, false));
        this._format.setVersion("1.1");
    }

    public void characters(char[] cArray, int n, int n2) throws SAXException {
        try {
            ElementState elementState = this.content();
            if (elementState.inCData || elementState.doCData) {
                if (!elementState.inCData) {
                    this._printer.printText("<![CDATA[");
                    elementState.inCData = true;
                }
                int n3 = this._printer.getNextIndent();
                this._printer.setNextIndent(0);
                int n4 = n + n2;
                int n5 = n;
                while (n5 < n4) {
                    char c = cArray[n5];
                    if (c == ']' && n5 + 2 < n4 && cArray[n5 + 1] == ']' && cArray[n5 + 2] == '>') {
                        this._printer.printText("]]]]><![CDATA[>");
                        n5 += 2;
                    } else if (!XML11Char.isXML11Valid(c)) {
                        if (++n5 < n4) {
                            this.surrogates(c, cArray[n5], true);
                        } else {
                            this.fatalError("The character '" + c + "' is an invalid XML character");
                        }
                    } else if (this._encodingInfo.isPrintable(c) && XML11Char.isXML11ValidLiteral(c)) {
                        this._printer.printText(c);
                    } else {
                        this._printer.printText("]]>&#x");
                        this._printer.printText(Integer.toHexString(c));
                        this._printer.printText(";<![CDATA[");
                    }
                    ++n5;
                }
                this._printer.setNextIndent(n3);
            } else if (elementState.preserveSpace) {
                int n6 = this._printer.getNextIndent();
                this._printer.setNextIndent(0);
                this.printText(cArray, n, n2, true, elementState.unescaped);
                this._printer.setNextIndent(n6);
            } else {
                this.printText(cArray, n, n2, false, elementState.unescaped);
            }
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    protected void printEscaped(String string) throws IOException {
        int n = string.length();
        int n2 = 0;
        while (n2 < n) {
            char c = string.charAt(n2);
            if (!XML11Char.isXML11Valid(c)) {
                if (++n2 < n) {
                    this.surrogates(c, string.charAt(n2), false);
                } else {
                    this.fatalError("The character '" + (char)c + "' is an invalid XML character");
                }
            } else if (c == '\n' || c == '\r' || c == '\t' || c == '\u0085' || c == '\u2028') {
                this.printHex(c);
            } else if (c == '<') {
                this._printer.printText("&lt;");
            } else if (c == '&') {
                this._printer.printText("&amp;");
            } else if (c == '\"') {
                this._printer.printText("&quot;");
            } else if (c >= ' ' && this._encodingInfo.isPrintable(c)) {
                this._printer.printText(c);
            } else {
                this.printHex(c);
            }
            ++n2;
        }
    }

    protected final void printCDATAText(String string) throws IOException {
        int n = string.length();
        int n2 = 0;
        while (n2 < n) {
            char c = string.charAt(n2);
            if (c == ']' && n2 + 2 < n && string.charAt(n2 + 1) == ']' && string.charAt(n2 + 2) == '>') {
                if (this.fDOMErrorHandler != null) {
                    String string2;
                    if ((this.features & 0x10) == 0 && (this.features & 2) == 0) {
                        string2 = DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "EndingCDATA", null);
                        this.modifyDOMError(string2, (short)3, null, this.fCurrentNode);
                        boolean bl = this.fDOMErrorHandler.handleError(this.fDOMError);
                        if (!bl) {
                            throw new IOException();
                        }
                    } else {
                        string2 = DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "SplittingCDATA", null);
                        this.modifyDOMError(string2, (short)1, null, this.fCurrentNode);
                        this.fDOMErrorHandler.handleError(this.fDOMError);
                    }
                }
                this._printer.printText("]]]]><![CDATA[>");
                n2 += 2;
            } else if (!XML11Char.isXML11Valid(c)) {
                if (++n2 < n) {
                    this.surrogates(c, string.charAt(n2), true);
                } else {
                    this.fatalError("The character '" + c + "' is an invalid XML character");
                }
            } else if (this._encodingInfo.isPrintable(c) && XML11Char.isXML11ValidLiteral(c)) {
                this._printer.printText(c);
            } else {
                this._printer.printText("]]>&#x");
                this._printer.printText(Integer.toHexString(c));
                this._printer.printText(";<![CDATA[");
            }
            ++n2;
        }
    }

    protected final void printXMLChar(int n) throws IOException {
        if (n == 13 || n == 133 || n == 8232) {
            this.printHex(n);
        } else if (n == 60) {
            this._printer.printText("&lt;");
        } else if (n == 38) {
            this._printer.printText("&amp;");
        } else if (n == 62) {
            this._printer.printText("&gt;");
        } else if (this._encodingInfo.isPrintable((char)n) && XML11Char.isXML11ValidLiteral(n)) {
            this._printer.printText((char)n);
        } else {
            this.printHex(n);
        }
    }

    protected final void surrogates(int n, int n2, boolean bl) throws IOException {
        if (XMLChar.isHighSurrogate(n)) {
            if (!XMLChar.isLowSurrogate(n2)) {
                this.fatalError("The character '" + (char)n2 + "' is an invalid XML character");
            } else {
                int n3 = XMLChar.supplemental((char)n, (char)n2);
                if (!XML11Char.isXML11Valid(n3)) {
                    this.fatalError("The character '" + (char)n3 + "' is an invalid XML character");
                } else if (bl && this.content().inCData) {
                    this._printer.printText("]]>&#x");
                    this._printer.printText(Integer.toHexString(n3));
                    this._printer.printText(";<![CDATA[");
                } else {
                    this.printHex(n3);
                }
            }
        } else {
            this.fatalError("The character '" + (char)n + "' is an invalid XML character");
        }
    }

    protected void printText(String string, boolean bl, boolean bl2) throws IOException {
        int n = string.length();
        if (bl) {
            int n2 = 0;
            while (n2 < n) {
                char c = string.charAt(n2);
                if (!XML11Char.isXML11Valid(c)) {
                    if (++n2 < n) {
                        this.surrogates(c, string.charAt(n2), true);
                    } else {
                        this.fatalError("The character '" + c + "' is an invalid XML character");
                    }
                } else if (bl2 && XML11Char.isXML11ValidLiteral(c)) {
                    this._printer.printText(c);
                } else {
                    this.printXMLChar(c);
                }
                ++n2;
            }
        } else {
            int n3 = 0;
            while (n3 < n) {
                char c = string.charAt(n3);
                if (!XML11Char.isXML11Valid(c)) {
                    if (++n3 < n) {
                        this.surrogates(c, string.charAt(n3), true);
                    } else {
                        this.fatalError("The character '" + c + "' is an invalid XML character");
                    }
                } else if (bl2 && XML11Char.isXML11ValidLiteral(c)) {
                    this._printer.printText(c);
                } else {
                    this.printXMLChar(c);
                }
                ++n3;
            }
        }
    }

    /*
     * Unable to fully structure code
     */
    protected void printText(char[] var1_1, int var2_2, int var3_3, boolean var4_4, boolean var5_5) throws IOException {
        block8: {
            if (!var4_4) ** GOTO lbl25
            while (var3_3-- > 0) {
                if (!XML11Char.isXML11Valid(var6_6 = var1_1[var2_2++])) {
                    if (var3_3-- > 0) {
                        this.surrogates(var6_6, var1_1[var2_2++], true);
                        continue;
                    }
                    this.fatalError("The character '" + var6_6 + "' is an invalid XML character");
                    continue;
                }
                if (var5_5 && XML11Char.isXML11ValidLiteral(var6_6)) {
                    this._printer.printText(var6_6);
                    continue;
                }
                this.printXMLChar(var6_6);
            }
            break block8;
lbl-1000:
            // 1 sources

            {
                if (!XML11Char.isXML11Valid(var6_7 = var1_1[var2_2++])) {
                    if (var3_3-- > 0) {
                        this.surrogates(var6_7, var1_1[var2_2++], true);
                        continue;
                    }
                    this.fatalError("The character '" + var6_7 + "' is an invalid XML character");
                    continue;
                }
                if (var5_5 && XML11Char.isXML11ValidLiteral(var6_7)) {
                    this._printer.printText(var6_7);
                    continue;
                }
                this.printXMLChar(var6_7);
lbl25:
                // 5 sources

                ** while (var3_3-- > 0)
            }
        }
    }

    public boolean reset() {
        super.reset();
        return true;
    }
}

