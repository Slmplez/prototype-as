/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl;

import java.io.IOException;
import org.apache.xerces.impl.XMLDTDScannerImpl;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XML11Char;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLStringBuffer;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;

public class XML11DTDScannerImpl
extends XMLDTDScannerImpl {
    private final XMLStringBuffer fStringBuffer = new XMLStringBuffer();

    public XML11DTDScannerImpl() {
    }

    public XML11DTDScannerImpl(SymbolTable symbolTable, XMLErrorReporter xMLErrorReporter, XMLEntityManager xMLEntityManager) {
        super(symbolTable, xMLErrorReporter, xMLEntityManager);
    }

    protected boolean scanPubidLiteral(XMLString xMLString) throws IOException, XNIException {
        int n = this.fEntityScanner.scanChar();
        if (n != 39 && n != 34) {
            this.reportFatalError("QuoteRequiredInPublicID", null);
            return false;
        }
        this.fStringBuffer.clear();
        boolean bl = true;
        boolean bl2 = true;
        while (true) {
            int n2;
            if ((n2 = this.fEntityScanner.scanChar()) == 32 || n2 == 10 || n2 == 13 || n2 == 133 || n2 == 8232) {
                if (bl) continue;
                this.fStringBuffer.append(' ');
                bl = true;
                continue;
            }
            if (n2 == n) {
                if (bl) {
                    --this.fStringBuffer.length;
                }
                break;
            }
            if (XMLChar.isPubid(n2)) {
                this.fStringBuffer.append((char)n2);
                bl = false;
                continue;
            }
            if (n2 == -1) {
                this.reportFatalError("PublicIDUnterminated", null);
                return false;
            }
            bl2 = false;
            this.reportFatalError("InvalidCharInPublicID", new Object[]{Integer.toHexString(n2)});
        }
        xMLString.setValues(this.fStringBuffer);
        return bl2;
    }

    protected void normalizeWhitespace(XMLString xMLString) {
        int n = xMLString.offset + xMLString.length;
        int n2 = xMLString.offset;
        while (n2 < n) {
            char c = xMLString.ch[n2];
            if (XMLChar.isSpace(c)) {
                xMLString.ch[n2] = 32;
            }
            ++n2;
        }
    }

    protected void normalizeWhitespace(XMLString xMLString, int n) {
        int n2 = xMLString.offset + xMLString.length;
        int n3 = xMLString.offset + n;
        while (n3 < n2) {
            char c = xMLString.ch[n3];
            if (XMLChar.isSpace(c)) {
                xMLString.ch[n3] = 32;
            }
            ++n3;
        }
    }

    protected int isUnchangedByNormalization(XMLString xMLString) {
        int n = xMLString.offset + xMLString.length;
        int n2 = xMLString.offset;
        while (n2 < n) {
            char c = xMLString.ch[n2];
            if (XMLChar.isSpace(c)) {
                return n2 - xMLString.offset;
            }
            ++n2;
        }
        return -1;
    }

    protected boolean isInvalid(int n) {
        return !XML11Char.isXML11Valid(n);
    }

    protected boolean isInvalidLiteral(int n) {
        return !XML11Char.isXML11ValidLiteral(n);
    }

    protected boolean isValidNameChar(int n) {
        return XML11Char.isXML11Name(n);
    }

    protected boolean isValidNameStartChar(int n) {
        return XML11Char.isXML11NameStart(n);
    }

    protected boolean isValidNCName(int n) {
        return XML11Char.isXML11NCName(n);
    }

    protected boolean isValidNameStartHighSurrogate(int n) {
        return XML11Char.isXML11NameHighSurrogate(n);
    }

    protected boolean versionSupported(String string) {
        return string.equals("1.1") || string.equals("1.0");
    }

    protected String getVersionNotSupportedKey() {
        return "VersionNotSupported11";
    }
}

