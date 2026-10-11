/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl.duration.impl;

import com.ibm.icu.impl.duration.impl.RecordReader;
import com.ibm.icu.lang.UCharacter;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

public class XMLRecordReader
implements RecordReader {
    private Reader r;
    private List<String> nameStack;
    private boolean atTag;
    private String tag;

    public XMLRecordReader(Reader r) {
        this.r = r;
        this.nameStack = new ArrayList<String>();
        if (this.getTag().startsWith("?xml")) {
            this.advance();
        }
        if (this.getTag().startsWith("!--")) {
            this.advance();
        }
    }

    public boolean open(String title) {
        if (this.getTag().equals(title)) {
            this.nameStack.add(title);
            this.advance();
            return true;
        }
        return false;
    }

    public boolean close() {
        int ix = this.nameStack.size() - 1;
        String name = this.nameStack.get(ix);
        if (this.getTag().equals("/" + name)) {
            this.nameStack.remove(ix);
            this.advance();
            return true;
        }
        return false;
    }

    public boolean bool(String name) {
        String s = this.string(name);
        if (s != null) {
            return "true".equals(s);
        }
        return false;
    }

    public boolean[] boolArray(String name) {
        String[] sa = this.stringArray(name);
        if (sa != null) {
            boolean[] result = new boolean[sa.length];
            int i = 0;
            while (i < sa.length) {
                result[i] = "true".equals(sa[i]);
                ++i;
            }
            return result;
        }
        return null;
    }

    public char character(String name) {
        String s = this.string(name);
        if (s != null) {
            return s.charAt(0);
        }
        return '\uffff';
    }

    public char[] characterArray(String name) {
        String[] sa = this.stringArray(name);
        if (sa != null) {
            char[] result = new char[sa.length];
            int i = 0;
            while (i < sa.length) {
                result[i] = sa[i].charAt(0);
                ++i;
            }
            return result;
        }
        return null;
    }

    public byte namedIndex(String name, String[] names) {
        String sa = this.string(name);
        if (sa != null) {
            int i = 0;
            while (i < names.length) {
                if (sa.equals(names[i])) {
                    return (byte)i;
                }
                ++i;
            }
        }
        return -1;
    }

    public byte[] namedIndexArray(String name, String[] names) {
        String[] sa = this.stringArray(name);
        if (sa != null) {
            byte[] result = new byte[sa.length];
            int i = 0;
            while (i < sa.length) {
                block4: {
                    String s = sa[i];
                    int j = 0;
                    while (j < names.length) {
                        if (names[j].equals(s)) {
                            result[i] = (byte)j;
                            break block4;
                        }
                        ++j;
                    }
                    result[i] = -1;
                }
                ++i;
            }
            return result;
        }
        return null;
    }

    public String string(String name) {
        if (this.match(name)) {
            String result = this.readData();
            if (this.match("/" + name)) {
                return result;
            }
        }
        return null;
    }

    public String[] stringArray(String name) {
        if (this.match(String.valueOf(name) + "List")) {
            String s;
            ArrayList<String> list = new ArrayList<String>();
            while ((s = this.string(name)) != null) {
                if ("Null".equals(s)) {
                    s = null;
                }
                list.add(s);
            }
            if (this.match("/" + name + "List")) {
                return list.toArray(new String[list.size()]);
            }
        }
        return null;
    }

    public String[][] stringTable(String name) {
        if (this.match(String.valueOf(name) + "Table")) {
            String[] sa;
            ArrayList<String[]> list = new ArrayList<String[]>();
            while ((sa = this.stringArray(name)) != null) {
                list.add(sa);
            }
            if (this.match("/" + name + "Table")) {
                return (String[][])list.toArray((T[])new String[list.size()][]);
            }
        }
        return null;
    }

    private boolean match(String target) {
        if (this.getTag().equals(target)) {
            this.advance();
            return true;
        }
        return false;
    }

    private String getTag() {
        if (this.tag == null) {
            this.tag = this.readNextTag();
        }
        return this.tag;
    }

    private void advance() {
        this.tag = null;
    }

    private String readData() {
        int c;
        StringBuilder sb = new StringBuilder();
        boolean inWhitespace = false;
        while (true) {
            if ((c = this.readChar()) == -1 || c == 60) break;
            if (c == 38) {
                c = this.readChar();
                if (c == 35) {
                    StringBuilder numBuf = new StringBuilder();
                    int radix = 10;
                    c = this.readChar();
                    if (c == 120) {
                        radix = 16;
                        c = this.readChar();
                    }
                    while (c != 59 && c != -1) {
                        numBuf.append((char)c);
                        c = this.readChar();
                    }
                    try {
                        int num = Integer.parseInt(numBuf.toString(), radix);
                        c = (char)num;
                    }
                    catch (NumberFormatException ex) {
                        System.err.println("numbuf: " + numBuf.toString() + " radix: " + radix);
                        throw ex;
                    }
                } else {
                    StringBuilder charBuf = new StringBuilder();
                    while (c != 59 && c != -1) {
                        charBuf.append((char)c);
                        c = this.readChar();
                    }
                    String charName = charBuf.toString();
                    if (charName.equals("lt")) {
                        c = 60;
                    } else if (charName.equals("gt")) {
                        c = 62;
                    } else if (charName.equals("quot")) {
                        c = 34;
                    } else if (charName.equals("apos")) {
                        c = 39;
                    } else if (charName.equals("amp")) {
                        c = 38;
                    } else {
                        System.err.println("unrecognized character entity: '" + charName + "'");
                        continue;
                    }
                }
            }
            if (UCharacter.isWhitespace(c)) {
                if (inWhitespace) continue;
                c = 32;
                inWhitespace = true;
            } else {
                inWhitespace = false;
            }
            sb.append((char)c);
        }
        this.atTag = c == 60;
        return sb.toString();
    }

    private String readNextTag() {
        int c = 0;
        while (!this.atTag) {
            c = this.readChar();
            if (c == 60 || c == -1) {
                if (c != 60) break;
                this.atTag = true;
                break;
            }
            if (UCharacter.isWhitespace(c)) continue;
            System.err.println("Unexpected non-whitespace character " + Integer.toHexString(c));
            break;
        }
        if (this.atTag) {
            this.atTag = false;
            StringBuilder sb = new StringBuilder();
            while ((c = this.readChar()) != 62 && c != -1) {
                sb.append((char)c);
            }
            return sb.toString();
        }
        return null;
    }

    int readChar() {
        try {
            return this.r.read();
        }
        catch (IOException iOException) {
            return -1;
        }
    }
}

