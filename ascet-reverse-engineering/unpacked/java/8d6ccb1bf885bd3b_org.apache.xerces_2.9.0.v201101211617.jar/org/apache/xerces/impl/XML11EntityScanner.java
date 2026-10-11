/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl;

import java.io.IOException;
import org.apache.xerces.impl.XMLEntityScanner;
import org.apache.xerces.util.XML11Char;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLStringBuffer;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLString;

public class XML11EntityScanner
extends XMLEntityScanner {
    public int peekChar() throws IOException {
        if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
            this.load(0, true);
        }
        int n = this.fCurrentEntity.ch[this.fCurrentEntity.position];
        if (this.fCurrentEntity.isExternal()) {
            return n != 13 && n != 133 && n != 8232 ? n : 10;
        }
        return n;
    }

    public int scanChar() throws IOException {
        if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
            this.load(0, true);
        }
        int n = this.fCurrentEntity.ch[this.fCurrentEntity.position++];
        boolean bl = false;
        if (n == 10 || (n == 13 || n == 133 || n == 8232) && (bl = this.fCurrentEntity.isExternal())) {
            char c;
            ++this.fCurrentEntity.lineNumber;
            this.fCurrentEntity.columnNumber = 1;
            if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
                this.fCurrentEntity.ch[0] = (char)n;
                this.load(1, false);
            }
            if (n == 13 && bl && (c = this.fCurrentEntity.ch[this.fCurrentEntity.position++]) != '\n' && c != '\u0085') {
                --this.fCurrentEntity.position;
            }
            n = 10;
        }
        ++this.fCurrentEntity.columnNumber;
        return n;
    }

    public String scanNmtoken() throws IOException {
        char c;
        if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
            this.load(0, true);
        }
        int n = this.fCurrentEntity.position;
        while (true) {
            char c2;
            if (XML11Char.isXML11Name(c = this.fCurrentEntity.ch[this.fCurrentEntity.position])) {
                if (++this.fCurrentEntity.position != this.fCurrentEntity.count) continue;
                c2 = this.fCurrentEntity.position - n;
                if (c2 == this.fCurrentEntity.ch.length) {
                    char[] cArray = new char[this.fCurrentEntity.ch.length << 1];
                    System.arraycopy(this.fCurrentEntity.ch, n, cArray, 0, c2);
                    this.fCurrentEntity.ch = cArray;
                } else {
                    System.arraycopy(this.fCurrentEntity.ch, n, this.fCurrentEntity.ch, 0, c2);
                }
                n = 0;
                if (!this.load(c2, false)) continue;
                break;
            }
            if (!XML11Char.isXML11NameHighSurrogate(c)) break;
            if (++this.fCurrentEntity.position == this.fCurrentEntity.count) {
                c2 = this.fCurrentEntity.position - n;
                if (c2 == this.fCurrentEntity.ch.length) {
                    char[] cArray = new char[this.fCurrentEntity.ch.length << 1];
                    System.arraycopy(this.fCurrentEntity.ch, n, cArray, 0, c2);
                    this.fCurrentEntity.ch = cArray;
                } else {
                    System.arraycopy(this.fCurrentEntity.ch, n, this.fCurrentEntity.ch, 0, c2);
                }
                n = 0;
                if (this.load(c2, false)) {
                    --this.fCurrentEntity.startPosition;
                    --this.fCurrentEntity.position;
                    break;
                }
            }
            if (!XMLChar.isLowSurrogate(c2 = this.fCurrentEntity.ch[this.fCurrentEntity.position]) || !XML11Char.isXML11Name(XMLChar.supplemental(c, c2))) {
                --this.fCurrentEntity.position;
                break;
            }
            if (++this.fCurrentEntity.position != this.fCurrentEntity.count) continue;
            int n2 = this.fCurrentEntity.position - n;
            if (n2 == this.fCurrentEntity.ch.length) {
                char[] cArray = new char[this.fCurrentEntity.ch.length << 1];
                System.arraycopy(this.fCurrentEntity.ch, n, cArray, 0, n2);
                this.fCurrentEntity.ch = cArray;
            } else {
                System.arraycopy(this.fCurrentEntity.ch, n, this.fCurrentEntity.ch, 0, n2);
            }
            n = 0;
            if (this.load(n2, false)) break;
        }
        c = this.fCurrentEntity.position - n;
        this.fCurrentEntity.columnNumber += c;
        String string = null;
        if (c > '\u0000') {
            string = this.fSymbolTable.addSymbol(this.fCurrentEntity.ch, n, c);
        }
        return string;
    }

    public String scanName() throws IOException {
        char c;
        int n;
        char c2;
        if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
            this.load(0, true);
        }
        if (XML11Char.isXML11NameStart(c2 = this.fCurrentEntity.ch[n = this.fCurrentEntity.position++])) {
            if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
                this.fCurrentEntity.ch[0] = c2;
                n = 0;
                if (this.load(1, false)) {
                    ++this.fCurrentEntity.columnNumber;
                    String string = this.fSymbolTable.addSymbol(this.fCurrentEntity.ch, 0, 1);
                    return string;
                }
            }
        } else if (XML11Char.isXML11NameHighSurrogate(c2)) {
            if (++this.fCurrentEntity.position == this.fCurrentEntity.count) {
                this.fCurrentEntity.ch[0] = c2;
                n = 0;
                if (this.load(1, false)) {
                    --this.fCurrentEntity.position;
                    --this.fCurrentEntity.startPosition;
                    return null;
                }
            }
            if (!XMLChar.isLowSurrogate(c = this.fCurrentEntity.ch[this.fCurrentEntity.position]) || !XML11Char.isXML11NameStart(XMLChar.supplemental(c2, c))) {
                --this.fCurrentEntity.position;
                return null;
            }
            if (++this.fCurrentEntity.position == this.fCurrentEntity.count) {
                this.fCurrentEntity.ch[0] = c2;
                this.fCurrentEntity.ch[1] = c;
                n = 0;
                if (this.load(2, false)) {
                    this.fCurrentEntity.columnNumber += 2;
                    String string = this.fSymbolTable.addSymbol(this.fCurrentEntity.ch, 0, 2);
                    return string;
                }
            }
        } else {
            return null;
        }
        while (true) {
            if (XML11Char.isXML11Name(c2 = this.fCurrentEntity.ch[this.fCurrentEntity.position])) {
                if (++this.fCurrentEntity.position != this.fCurrentEntity.count) continue;
                c = this.fCurrentEntity.position - n;
                if (c == this.fCurrentEntity.ch.length) {
                    char[] cArray = new char[this.fCurrentEntity.ch.length << 1];
                    System.arraycopy(this.fCurrentEntity.ch, n, cArray, 0, c);
                    this.fCurrentEntity.ch = cArray;
                } else {
                    System.arraycopy(this.fCurrentEntity.ch, n, this.fCurrentEntity.ch, 0, c);
                }
                n = 0;
                if (!this.load(c, false)) continue;
                break;
            }
            if (!XML11Char.isXML11NameHighSurrogate(c2)) break;
            if (++this.fCurrentEntity.position == this.fCurrentEntity.count) {
                c = this.fCurrentEntity.position - n;
                if (c == this.fCurrentEntity.ch.length) {
                    char[] cArray = new char[this.fCurrentEntity.ch.length << 1];
                    System.arraycopy(this.fCurrentEntity.ch, n, cArray, 0, c);
                    this.fCurrentEntity.ch = cArray;
                } else {
                    System.arraycopy(this.fCurrentEntity.ch, n, this.fCurrentEntity.ch, 0, c);
                }
                n = 0;
                if (this.load(c, false)) {
                    --this.fCurrentEntity.position;
                    --this.fCurrentEntity.startPosition;
                    break;
                }
            }
            if (!XMLChar.isLowSurrogate(c = this.fCurrentEntity.ch[this.fCurrentEntity.position]) || !XML11Char.isXML11Name(XMLChar.supplemental(c2, c))) {
                --this.fCurrentEntity.position;
                break;
            }
            if (++this.fCurrentEntity.position != this.fCurrentEntity.count) continue;
            int n2 = this.fCurrentEntity.position - n;
            if (n2 == this.fCurrentEntity.ch.length) {
                char[] cArray = new char[this.fCurrentEntity.ch.length << 1];
                System.arraycopy(this.fCurrentEntity.ch, n, cArray, 0, n2);
                this.fCurrentEntity.ch = cArray;
            } else {
                System.arraycopy(this.fCurrentEntity.ch, n, this.fCurrentEntity.ch, 0, n2);
            }
            n = 0;
            if (this.load(n2, false)) break;
        }
        c = this.fCurrentEntity.position - n;
        this.fCurrentEntity.columnNumber += c;
        String string = null;
        if (c > '\u0000') {
            string = this.fSymbolTable.addSymbol(this.fCurrentEntity.ch, n, c);
        }
        return string;
    }

    public String scanNCName() throws IOException {
        char c;
        int n;
        char c2;
        if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
            this.load(0, true);
        }
        if (XML11Char.isXML11NCNameStart(c2 = this.fCurrentEntity.ch[n = this.fCurrentEntity.position++])) {
            if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
                this.fCurrentEntity.ch[0] = c2;
                n = 0;
                if (this.load(1, false)) {
                    ++this.fCurrentEntity.columnNumber;
                    String string = this.fSymbolTable.addSymbol(this.fCurrentEntity.ch, 0, 1);
                    return string;
                }
            }
        } else if (XML11Char.isXML11NameHighSurrogate(c2)) {
            if (++this.fCurrentEntity.position == this.fCurrentEntity.count) {
                this.fCurrentEntity.ch[0] = c2;
                n = 0;
                if (this.load(1, false)) {
                    --this.fCurrentEntity.position;
                    --this.fCurrentEntity.startPosition;
                    return null;
                }
            }
            if (!XMLChar.isLowSurrogate(c = this.fCurrentEntity.ch[this.fCurrentEntity.position]) || !XML11Char.isXML11NCNameStart(XMLChar.supplemental(c2, c))) {
                --this.fCurrentEntity.position;
                return null;
            }
            if (++this.fCurrentEntity.position == this.fCurrentEntity.count) {
                this.fCurrentEntity.ch[0] = c2;
                this.fCurrentEntity.ch[1] = c;
                n = 0;
                if (this.load(2, false)) {
                    this.fCurrentEntity.columnNumber += 2;
                    String string = this.fSymbolTable.addSymbol(this.fCurrentEntity.ch, 0, 2);
                    return string;
                }
            }
        } else {
            return null;
        }
        while (true) {
            if (XML11Char.isXML11NCName(c2 = this.fCurrentEntity.ch[this.fCurrentEntity.position])) {
                if (++this.fCurrentEntity.position != this.fCurrentEntity.count) continue;
                c = this.fCurrentEntity.position - n;
                if (c == this.fCurrentEntity.ch.length) {
                    char[] cArray = new char[this.fCurrentEntity.ch.length << 1];
                    System.arraycopy(this.fCurrentEntity.ch, n, cArray, 0, c);
                    this.fCurrentEntity.ch = cArray;
                } else {
                    System.arraycopy(this.fCurrentEntity.ch, n, this.fCurrentEntity.ch, 0, c);
                }
                n = 0;
                if (!this.load(c, false)) continue;
                break;
            }
            if (!XML11Char.isXML11NameHighSurrogate(c2)) break;
            if (++this.fCurrentEntity.position == this.fCurrentEntity.count) {
                c = this.fCurrentEntity.position - n;
                if (c == this.fCurrentEntity.ch.length) {
                    char[] cArray = new char[this.fCurrentEntity.ch.length << 1];
                    System.arraycopy(this.fCurrentEntity.ch, n, cArray, 0, c);
                    this.fCurrentEntity.ch = cArray;
                } else {
                    System.arraycopy(this.fCurrentEntity.ch, n, this.fCurrentEntity.ch, 0, c);
                }
                n = 0;
                if (this.load(c, false)) {
                    --this.fCurrentEntity.startPosition;
                    --this.fCurrentEntity.position;
                    break;
                }
            }
            if (!XMLChar.isLowSurrogate(c = this.fCurrentEntity.ch[this.fCurrentEntity.position]) || !XML11Char.isXML11NCName(XMLChar.supplemental(c2, c))) {
                --this.fCurrentEntity.position;
                break;
            }
            if (++this.fCurrentEntity.position != this.fCurrentEntity.count) continue;
            int n2 = this.fCurrentEntity.position - n;
            if (n2 == this.fCurrentEntity.ch.length) {
                char[] cArray = new char[this.fCurrentEntity.ch.length << 1];
                System.arraycopy(this.fCurrentEntity.ch, n, cArray, 0, n2);
                this.fCurrentEntity.ch = cArray;
            } else {
                System.arraycopy(this.fCurrentEntity.ch, n, this.fCurrentEntity.ch, 0, n2);
            }
            n = 0;
            if (this.load(n2, false)) break;
        }
        c = this.fCurrentEntity.position - n;
        this.fCurrentEntity.columnNumber += c;
        String string = null;
        if (c > '\u0000') {
            string = this.fSymbolTable.addSymbol(this.fCurrentEntity.ch, n, c);
        }
        return string;
    }

    public boolean scanQName(QName qName) throws IOException {
        Object object;
        char c;
        int n;
        int n2;
        char c2;
        if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
            this.load(0, true);
        }
        if (XML11Char.isXML11NCNameStart(c2 = this.fCurrentEntity.ch[n2 = this.fCurrentEntity.position++])) {
            if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
                this.fCurrentEntity.ch[0] = c2;
                n2 = 0;
                if (this.load(1, false)) {
                    ++this.fCurrentEntity.columnNumber;
                    String string = this.fSymbolTable.addSymbol(this.fCurrentEntity.ch, 0, 1);
                    qName.setValues(null, string, string, null);
                    return true;
                }
            }
        } else if (XML11Char.isXML11NameHighSurrogate(c2)) {
            if (++this.fCurrentEntity.position == this.fCurrentEntity.count) {
                this.fCurrentEntity.ch[0] = c2;
                n2 = 0;
                if (this.load(1, false)) {
                    --this.fCurrentEntity.startPosition;
                    --this.fCurrentEntity.position;
                    return false;
                }
            }
            if (!XMLChar.isLowSurrogate(n = this.fCurrentEntity.ch[this.fCurrentEntity.position]) || !XML11Char.isXML11NCNameStart(XMLChar.supplemental(c2, (char)n))) {
                --this.fCurrentEntity.position;
                return false;
            }
            if (++this.fCurrentEntity.position == this.fCurrentEntity.count) {
                this.fCurrentEntity.ch[0] = c2;
                this.fCurrentEntity.ch[1] = n;
                n2 = 0;
                if (this.load(2, false)) {
                    this.fCurrentEntity.columnNumber += 2;
                    String string = this.fSymbolTable.addSymbol(this.fCurrentEntity.ch, 0, 2);
                    qName.setValues(null, string, string, null);
                    return true;
                }
            }
        } else {
            return false;
        }
        n = -1;
        boolean bl = false;
        while (true) {
            if (XML11Char.isXML11Name(c2 = this.fCurrentEntity.ch[this.fCurrentEntity.position])) {
                if (c2 == ':') {
                    if (n != -1) break;
                    n = this.fCurrentEntity.position;
                }
                if (++this.fCurrentEntity.position != this.fCurrentEntity.count) continue;
                c = this.fCurrentEntity.position - n2;
                if (c == this.fCurrentEntity.ch.length) {
                    char[] cArray = new char[this.fCurrentEntity.ch.length << 1];
                    System.arraycopy(this.fCurrentEntity.ch, n2, cArray, 0, c);
                    this.fCurrentEntity.ch = cArray;
                } else {
                    System.arraycopy(this.fCurrentEntity.ch, n2, this.fCurrentEntity.ch, 0, c);
                }
                if (n != -1) {
                    n -= n2;
                }
                n2 = 0;
                if (!this.load(c, false)) continue;
                break;
            }
            if (!XML11Char.isXML11NameHighSurrogate(c2)) break;
            if (++this.fCurrentEntity.position == this.fCurrentEntity.count) {
                c = this.fCurrentEntity.position - n2;
                if (c == this.fCurrentEntity.ch.length) {
                    char[] cArray = new char[this.fCurrentEntity.ch.length << 1];
                    System.arraycopy(this.fCurrentEntity.ch, n2, cArray, 0, c);
                    this.fCurrentEntity.ch = cArray;
                } else {
                    System.arraycopy(this.fCurrentEntity.ch, n2, this.fCurrentEntity.ch, 0, c);
                }
                if (n != -1) {
                    n -= n2;
                }
                n2 = 0;
                if (this.load(c, false)) {
                    bl = true;
                    --this.fCurrentEntity.startPosition;
                    --this.fCurrentEntity.position;
                    break;
                }
            }
            if (!XMLChar.isLowSurrogate(c = this.fCurrentEntity.ch[this.fCurrentEntity.position]) || !XML11Char.isXML11Name(XMLChar.supplemental(c2, c))) {
                bl = true;
                --this.fCurrentEntity.position;
                break;
            }
            if (++this.fCurrentEntity.position != this.fCurrentEntity.count) continue;
            int n3 = this.fCurrentEntity.position - n2;
            if (n3 == this.fCurrentEntity.ch.length) {
                object = new char[this.fCurrentEntity.ch.length << 1];
                System.arraycopy(this.fCurrentEntity.ch, n2, object, 0, n3);
                this.fCurrentEntity.ch = (char[])object;
            } else {
                System.arraycopy(this.fCurrentEntity.ch, n2, this.fCurrentEntity.ch, 0, n3);
            }
            if (n != -1) {
                n -= n2;
            }
            n2 = 0;
            if (this.load(n3, false)) break;
        }
        c = this.fCurrentEntity.position - n2;
        this.fCurrentEntity.columnNumber += c;
        if (c > '\u0000') {
            String string = null;
            object = null;
            String string2 = this.fSymbolTable.addSymbol(this.fCurrentEntity.ch, n2, c);
            if (n != -1) {
                int n4 = n - n2;
                string = this.fSymbolTable.addSymbol(this.fCurrentEntity.ch, n2, n4);
                int n5 = c - n4 - 1;
                int n6 = n + 1;
                if (!(XML11Char.isXML11NCNameStart(this.fCurrentEntity.ch[n6]) || XML11Char.isXML11NameHighSurrogate(this.fCurrentEntity.ch[n6]) && !bl)) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "IllegalQName", null, (short)2);
                }
                object = this.fSymbolTable.addSymbol(this.fCurrentEntity.ch, n + 1, n5);
            } else {
                object = string2;
            }
            qName.setValues(string, (String)object, string2, null);
            return true;
        }
        return false;
    }

    /*
     * Unable to fully structure code
     */
    public int scanContent(XMLString var1_1) throws IOException {
        block16: {
            if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
                this.load(0, true);
            } else if (this.fCurrentEntity.position == this.fCurrentEntity.count - 1) {
                this.fCurrentEntity.ch[0] = this.fCurrentEntity.ch[this.fCurrentEntity.count - 1];
                this.load(1, false);
                this.fCurrentEntity.position = 0;
                this.fCurrentEntity.startPosition = 0;
            }
            var2_2 = this.fCurrentEntity.position;
            var3_3 = this.fCurrentEntity.ch[var2_2];
            var4_4 = 0;
            var5_5 = this.fCurrentEntity.isExternal();
            if (var3_3 == 10 || (var3_3 == 13 || var3_3 == 133 || var3_3 == 8232) && var5_5) {
                do {
                    if ((var3_3 = this.fCurrentEntity.ch[this.fCurrentEntity.position++]) == 13 && var5_5) {
                        ++var4_4;
                        ++this.fCurrentEntity.lineNumber;
                        this.fCurrentEntity.columnNumber = 1;
                        if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
                            var2_2 = 0;
                            this.fCurrentEntity.baseCharOffset += this.fCurrentEntity.position - this.fCurrentEntity.startPosition;
                            this.fCurrentEntity.position = var4_4;
                            this.fCurrentEntity.startPosition = var4_4;
                            if (this.load(var4_4, false)) break;
                        }
                        if ((var6_6 = this.fCurrentEntity.ch[this.fCurrentEntity.position]) == 10 || var6_6 == 133) {
                            ++this.fCurrentEntity.position;
                            ++var2_2;
                            continue;
                        }
                        ++var4_4;
                        continue;
                    }
                    if (var3_3 == 10 || (var3_3 == 133 || var3_3 == 8232) && var5_5) {
                        ++var4_4;
                        ++this.fCurrentEntity.lineNumber;
                        this.fCurrentEntity.columnNumber = 1;
                        if (this.fCurrentEntity.position != this.fCurrentEntity.count) continue;
                        var2_2 = 0;
                        this.fCurrentEntity.baseCharOffset += this.fCurrentEntity.position - this.fCurrentEntity.startPosition;
                        this.fCurrentEntity.position = var4_4;
                        this.fCurrentEntity.startPosition = var4_4;
                        if (!this.load(var4_4, false)) continue;
                        break;
                    }
                    --this.fCurrentEntity.position;
                    break;
                } while (this.fCurrentEntity.position < this.fCurrentEntity.count - 1);
                var6_6 = var2_2;
                while (var6_6 < this.fCurrentEntity.position) {
                    this.fCurrentEntity.ch[var6_6] = 10;
                    ++var6_6;
                }
                var7_7 = this.fCurrentEntity.position - var2_2;
                if (this.fCurrentEntity.position == this.fCurrentEntity.count - 1) {
                    var1_1.setValues(this.fCurrentEntity.ch, var2_2, var7_7);
                    return -1;
                }
            }
            if (!var5_5) ** GOTO lbl65
            while (this.fCurrentEntity.position < this.fCurrentEntity.count) {
                if (XML11Char.isXML11Content(var3_3 = this.fCurrentEntity.ch[this.fCurrentEntity.position++]) && var3_3 != 133 && var3_3 != 8232) continue;
                --this.fCurrentEntity.position;
                break block16;
            }
            break block16;
lbl-1000:
            // 1 sources

            {
                if (XML11Char.isXML11InternalEntityContent(var3_3 = this.fCurrentEntity.ch[this.fCurrentEntity.position++])) continue;
                --this.fCurrentEntity.position;
                break;
lbl65:
                // 2 sources

                ** while (this.fCurrentEntity.position < this.fCurrentEntity.count)
            }
        }
        var6_6 = this.fCurrentEntity.position - var2_2;
        this.fCurrentEntity.columnNumber += var6_6 - var4_4;
        var1_1.setValues(this.fCurrentEntity.ch, var2_2, var6_6);
        if (this.fCurrentEntity.position != this.fCurrentEntity.count) {
            var3_3 = this.fCurrentEntity.ch[this.fCurrentEntity.position];
            if ((var3_3 == 13 || var3_3 == 133 || var3_3 == 8232) && var5_5) {
                var3_3 = 10;
            }
        } else {
            var3_3 = -1;
        }
        return var3_3;
    }

    /*
     * Unable to fully structure code
     */
    public int scanLiteral(int var1_1, XMLString var2_2) throws IOException {
        block16: {
            if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
                this.load(0, true);
            } else if (this.fCurrentEntity.position == this.fCurrentEntity.count - 1) {
                this.fCurrentEntity.ch[0] = this.fCurrentEntity.ch[this.fCurrentEntity.count - 1];
                this.load(1, false);
                this.fCurrentEntity.startPosition = 0;
                this.fCurrentEntity.position = 0;
            }
            var3_3 = this.fCurrentEntity.position;
            var4_4 = this.fCurrentEntity.ch[var3_3];
            var5_5 = 0;
            var6_6 = this.fCurrentEntity.isExternal();
            if (var4_4 == 10 || (var4_4 == 13 || var4_4 == 133 || var4_4 == 8232) && var6_6) {
                do {
                    if ((var4_4 = this.fCurrentEntity.ch[this.fCurrentEntity.position++]) == 13 && var6_6) {
                        ++var5_5;
                        ++this.fCurrentEntity.lineNumber;
                        this.fCurrentEntity.columnNumber = 1;
                        if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
                            var3_3 = 0;
                            this.fCurrentEntity.baseCharOffset += this.fCurrentEntity.position - this.fCurrentEntity.startPosition;
                            this.fCurrentEntity.position = var5_5;
                            this.fCurrentEntity.startPosition = var5_5;
                            if (this.load(var5_5, false)) break;
                        }
                        if ((var7_7 = this.fCurrentEntity.ch[this.fCurrentEntity.position]) == 10 || var7_7 == 133) {
                            ++this.fCurrentEntity.position;
                            ++var3_3;
                            continue;
                        }
                        ++var5_5;
                        continue;
                    }
                    if (var4_4 == 10 || (var4_4 == 133 || var4_4 == 8232) && var6_6) {
                        ++var5_5;
                        ++this.fCurrentEntity.lineNumber;
                        this.fCurrentEntity.columnNumber = 1;
                        if (this.fCurrentEntity.position != this.fCurrentEntity.count) continue;
                        var3_3 = 0;
                        this.fCurrentEntity.baseCharOffset += this.fCurrentEntity.position - this.fCurrentEntity.startPosition;
                        this.fCurrentEntity.position = var5_5;
                        this.fCurrentEntity.startPosition = var5_5;
                        if (!this.load(var5_5, false)) continue;
                        break;
                    }
                    --this.fCurrentEntity.position;
                    break;
                } while (this.fCurrentEntity.position < this.fCurrentEntity.count - 1);
                var7_7 = var3_3;
                while (var7_7 < this.fCurrentEntity.position) {
                    this.fCurrentEntity.ch[var7_7] = 10;
                    ++var7_7;
                }
                var8_8 = this.fCurrentEntity.position - var3_3;
                if (this.fCurrentEntity.position == this.fCurrentEntity.count - 1) {
                    var2_2.setValues(this.fCurrentEntity.ch, var3_3, var8_8);
                    return -1;
                }
            }
            if (!var6_6) ** GOTO lbl65
            while (this.fCurrentEntity.position < this.fCurrentEntity.count) {
                if ((var4_4 = this.fCurrentEntity.ch[this.fCurrentEntity.position++]) != var1_1 && var4_4 != 37 && XML11Char.isXML11Content(var4_4) && var4_4 != 133 && var4_4 != 8232) continue;
                --this.fCurrentEntity.position;
                break block16;
            }
            break block16;
lbl-1000:
            // 1 sources

            {
                if (((var4_4 = this.fCurrentEntity.ch[this.fCurrentEntity.position++]) != var1_1 || this.fCurrentEntity.literal) && var4_4 != 37 && XML11Char.isXML11InternalEntityContent(var4_4)) continue;
                --this.fCurrentEntity.position;
                break;
lbl65:
                // 2 sources

                ** while (this.fCurrentEntity.position < this.fCurrentEntity.count)
            }
        }
        var7_7 = this.fCurrentEntity.position - var3_3;
        this.fCurrentEntity.columnNumber += var7_7 - var5_5;
        var2_2.setValues(this.fCurrentEntity.ch, var3_3, var7_7);
        if (this.fCurrentEntity.position != this.fCurrentEntity.count) {
            var4_4 = this.fCurrentEntity.ch[this.fCurrentEntity.position];
            if (var4_4 == var1_1 && this.fCurrentEntity.literal) {
                var4_4 = -1;
            }
        } else {
            var4_4 = -1;
        }
        return var4_4;
    }

    /*
     * Unable to fully structure code
     */
    public boolean scanData(String var1_1, XMLStringBuffer var2_2) throws IOException {
        var3_3 = false;
        var4_4 = var1_1.length();
        var5_5 = var1_1.charAt(0);
        var6_6 = this.fCurrentEntity.isExternal();
        do {
            block25: {
                if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
                    this.load(0, true);
                }
                var7_7 = false;
                while (this.fCurrentEntity.position >= this.fCurrentEntity.count - var4_4 && !var7_7) {
                    System.arraycopy(this.fCurrentEntity.ch, this.fCurrentEntity.position, this.fCurrentEntity.ch, 0, this.fCurrentEntity.count - this.fCurrentEntity.position);
                    var7_7 = this.load(this.fCurrentEntity.count - this.fCurrentEntity.position, false);
                    this.fCurrentEntity.position = 0;
                    this.fCurrentEntity.startPosition = 0;
                }
                if (this.fCurrentEntity.position >= this.fCurrentEntity.count - var4_4) {
                    var8_8 = this.fCurrentEntity.count - this.fCurrentEntity.position;
                    var2_2.append(this.fCurrentEntity.ch, this.fCurrentEntity.position, var8_8);
                    this.fCurrentEntity.columnNumber += this.fCurrentEntity.count;
                    this.fCurrentEntity.baseCharOffset += this.fCurrentEntity.position - this.fCurrentEntity.startPosition;
                    this.fCurrentEntity.position = this.fCurrentEntity.count;
                    this.fCurrentEntity.startPosition = this.fCurrentEntity.count;
                    this.load(0, true);
                    return false;
                }
                var8_8 = this.fCurrentEntity.position;
                var9_9 = this.fCurrentEntity.ch[var8_8];
                var10_10 = 0;
                if (var9_9 == '\n' || (var9_9 == '\r' || var9_9 == '\u0085' || var9_9 == '\u2028') && var6_6) {
                    do {
                        if ((var9_9 = this.fCurrentEntity.ch[this.fCurrentEntity.position++]) == '\r' && var6_6) {
                            ++var10_10;
                            ++this.fCurrentEntity.lineNumber;
                            this.fCurrentEntity.columnNumber = 1;
                            if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
                                var8_8 = 0;
                                this.fCurrentEntity.baseCharOffset += this.fCurrentEntity.position - this.fCurrentEntity.startPosition;
                                this.fCurrentEntity.position = var10_10;
                                this.fCurrentEntity.startPosition = var10_10;
                                if (this.load(var10_10, false)) break;
                            }
                            if ((var11_11 = this.fCurrentEntity.ch[this.fCurrentEntity.position]) == 10 || var11_11 == 133) {
                                ++this.fCurrentEntity.position;
                                ++var8_8;
                                continue;
                            }
                            ++var10_10;
                            continue;
                        }
                        if (var9_9 == '\n' || (var9_9 == '\u0085' || var9_9 == '\u2028') && var6_6) {
                            ++var10_10;
                            ++this.fCurrentEntity.lineNumber;
                            this.fCurrentEntity.columnNumber = 1;
                            if (this.fCurrentEntity.position != this.fCurrentEntity.count) continue;
                            var8_8 = 0;
                            this.fCurrentEntity.baseCharOffset += this.fCurrentEntity.position - this.fCurrentEntity.startPosition;
                            this.fCurrentEntity.position = var10_10;
                            this.fCurrentEntity.startPosition = var10_10;
                            this.fCurrentEntity.count = var10_10;
                            if (!this.load(var10_10, false)) continue;
                            break;
                        }
                        --this.fCurrentEntity.position;
                        break;
                    } while (this.fCurrentEntity.position < this.fCurrentEntity.count - 1);
                    var11_11 = var8_8;
                    while (var11_11 < this.fCurrentEntity.position) {
                        this.fCurrentEntity.ch[var11_11] = 10;
                        ++var11_11;
                    }
                    var12_12 = this.fCurrentEntity.position - var8_8;
                    if (this.fCurrentEntity.position == this.fCurrentEntity.count - 1) {
                        var2_2.append(this.fCurrentEntity.ch, var8_8, var12_12);
                        return true;
                    }
                }
                if (!var6_6) ** GOTO lbl124
                while (this.fCurrentEntity.position < this.fCurrentEntity.count) {
                    if ((var9_9 = this.fCurrentEntity.ch[this.fCurrentEntity.position++]) == var5_5) {
                        var11_11 = this.fCurrentEntity.position - 1;
                        var12_12 = 1;
                        while (var12_12 < var4_4) {
                            if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
                                this.fCurrentEntity.position -= var12_12;
                                break block25;
                            }
                            var9_9 = this.fCurrentEntity.ch[this.fCurrentEntity.position++];
                            if (var1_1.charAt(var12_12) != var9_9) {
                                --this.fCurrentEntity.position;
                                break;
                            }
                            ++var12_12;
                        }
                        if (this.fCurrentEntity.position != var11_11 + var4_4) continue;
                        var3_3 = true;
                        break block25;
                    }
                    if (var9_9 == '\n' || var9_9 == '\r' || var9_9 == '\u0085' || var9_9 == '\u2028') {
                        --this.fCurrentEntity.position;
                        break block25;
                    }
                    if (XML11Char.isXML11ValidLiteral(var9_9)) continue;
                    --this.fCurrentEntity.position;
                    var11_11 = this.fCurrentEntity.position - var8_8;
                    this.fCurrentEntity.columnNumber += var11_11 - var10_10;
                    var2_2.append(this.fCurrentEntity.ch, var8_8, var11_11);
                    return true;
                }
                break block25;
lbl-1000:
                // 1 sources

                {
                    if ((var9_9 = this.fCurrentEntity.ch[this.fCurrentEntity.position++]) == var5_5) {
                        var11_11 = this.fCurrentEntity.position - 1;
                        var12_12 = 1;
                        while (var12_12 < var4_4) {
                            if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
                                this.fCurrentEntity.position -= var12_12;
                                break block6;
                            }
                            var9_9 = this.fCurrentEntity.ch[this.fCurrentEntity.position++];
                            if (var1_1.charAt(var12_12) != var9_9) {
                                --this.fCurrentEntity.position;
                                break;
                            }
                            ++var12_12;
                        }
                        if (this.fCurrentEntity.position != var11_11 + var4_4) continue;
                        var3_3 = true;
                        break;
                    }
                    if (var9_9 == '\n') {
                        --this.fCurrentEntity.position;
                        break;
                    }
                    if (XML11Char.isXML11Valid(var9_9)) continue;
                    --this.fCurrentEntity.position;
                    var11_11 = this.fCurrentEntity.position - var8_8;
                    this.fCurrentEntity.columnNumber += var11_11 - var10_10;
                    var2_2.append(this.fCurrentEntity.ch, var8_8, var11_11);
                    return true;
lbl124:
                    // 3 sources

                    ** while (this.fCurrentEntity.position < this.fCurrentEntity.count)
                }
            }
            var11_11 = this.fCurrentEntity.position - var8_8;
            this.fCurrentEntity.columnNumber += var11_11 - var10_10;
            if (var3_3) {
                var11_11 -= var4_4;
            }
            var2_2.append(this.fCurrentEntity.ch, var8_8, var11_11);
        } while (!var3_3);
        return var3_3 == false;
    }

    public boolean skipChar(int n) throws IOException {
        char c;
        if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
            this.load(0, true);
        }
        if ((c = this.fCurrentEntity.ch[this.fCurrentEntity.position]) == n) {
            ++this.fCurrentEntity.position;
            if (n == 10) {
                ++this.fCurrentEntity.lineNumber;
                this.fCurrentEntity.columnNumber = 1;
            } else {
                ++this.fCurrentEntity.columnNumber;
            }
            return true;
        }
        if (n == 10 && (c == '\u2028' || c == '\u0085') && this.fCurrentEntity.isExternal()) {
            ++this.fCurrentEntity.position;
            ++this.fCurrentEntity.lineNumber;
            this.fCurrentEntity.columnNumber = 1;
            return true;
        }
        if (n == 10 && c == '\r' && this.fCurrentEntity.isExternal()) {
            char c2;
            if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
                this.fCurrentEntity.ch[0] = c;
                this.load(1, false);
            }
            if ((c2 = this.fCurrentEntity.ch[++this.fCurrentEntity.position]) == '\n' || c2 == '\u0085') {
                ++this.fCurrentEntity.position;
            }
            ++this.fCurrentEntity.lineNumber;
            this.fCurrentEntity.columnNumber = 1;
            return true;
        }
        return false;
    }

    public boolean skipSpaces() throws IOException {
        if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
            this.load(0, true);
        }
        char c = this.fCurrentEntity.ch[this.fCurrentEntity.position];
        if (this.fCurrentEntity.isExternal()) {
            if (XML11Char.isXML11Space(c)) {
                do {
                    boolean bl = false;
                    if (c == '\n' || c == '\r' || c == '\u0085' || c == '\u2028') {
                        char c2;
                        ++this.fCurrentEntity.lineNumber;
                        this.fCurrentEntity.columnNumber = 1;
                        if (this.fCurrentEntity.position == this.fCurrentEntity.count - 1) {
                            this.fCurrentEntity.ch[0] = c;
                            bl = this.load(1, true);
                            if (!bl) {
                                this.fCurrentEntity.startPosition = 0;
                                this.fCurrentEntity.position = 0;
                            }
                        }
                        if (c == '\r' && (c2 = this.fCurrentEntity.ch[++this.fCurrentEntity.position]) != '\n' && c2 != '\u0085') {
                            --this.fCurrentEntity.position;
                        }
                    } else {
                        ++this.fCurrentEntity.columnNumber;
                    }
                    if (!bl) {
                        ++this.fCurrentEntity.position;
                    }
                    if (this.fCurrentEntity.position != this.fCurrentEntity.count) continue;
                    this.load(0, true);
                } while (XML11Char.isXML11Space(c = this.fCurrentEntity.ch[this.fCurrentEntity.position]));
                return true;
            }
        } else if (XMLChar.isSpace(c)) {
            do {
                boolean bl = false;
                if (c == '\n') {
                    ++this.fCurrentEntity.lineNumber;
                    this.fCurrentEntity.columnNumber = 1;
                    if (this.fCurrentEntity.position == this.fCurrentEntity.count - 1) {
                        this.fCurrentEntity.ch[0] = c;
                        bl = this.load(1, true);
                        if (!bl) {
                            this.fCurrentEntity.startPosition = 0;
                            this.fCurrentEntity.position = 0;
                        }
                    }
                } else {
                    ++this.fCurrentEntity.columnNumber;
                }
                if (!bl) {
                    ++this.fCurrentEntity.position;
                }
                if (this.fCurrentEntity.position != this.fCurrentEntity.count) continue;
                this.load(0, true);
            } while (XMLChar.isSpace(c = this.fCurrentEntity.ch[this.fCurrentEntity.position]));
            return true;
        }
        return false;
    }

    public boolean skipString(String string) throws IOException {
        if (this.fCurrentEntity.position == this.fCurrentEntity.count) {
            this.load(0, true);
        }
        int n = string.length();
        int n2 = 0;
        while (n2 < n) {
            char c;
            if ((c = this.fCurrentEntity.ch[this.fCurrentEntity.position++]) != string.charAt(n2)) {
                this.fCurrentEntity.position -= n2 + 1;
                return false;
            }
            if (n2 < n - 1 && this.fCurrentEntity.position == this.fCurrentEntity.count) {
                System.arraycopy(this.fCurrentEntity.ch, this.fCurrentEntity.count - n2 - 1, this.fCurrentEntity.ch, 0, n2 + 1);
                if (this.load(n2 + 1, false)) {
                    this.fCurrentEntity.startPosition -= n2 + 1;
                    this.fCurrentEntity.position -= n2 + 1;
                    return false;
                }
            }
            ++n2;
        }
        this.fCurrentEntity.columnNumber += n;
        return true;
    }
}

