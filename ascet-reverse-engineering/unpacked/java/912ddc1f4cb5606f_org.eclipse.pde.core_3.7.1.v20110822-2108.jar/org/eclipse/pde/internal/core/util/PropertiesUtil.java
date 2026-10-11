/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.pde.internal.core.util;

import java.io.PrintWriter;
import java.util.Enumeration;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;

public class PropertiesUtil {
    private static final char[] HEX = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String createWritableName(String source) {
        if (source.indexOf(32) >= 0) {
            StringBuffer writableName = new StringBuffer();
            int i = 0;
            while (i < source.length()) {
                char c = source.charAt(i);
                if (c == ' ') {
                    writableName.append("\\ ");
                } else {
                    writableName.append(c);
                }
                ++i;
            }
            source = writableName.toString();
        }
        return PropertiesUtil.createEscapedValue(source);
    }

    public static String createEscapedValue(String value) {
        StringBuffer buf = new StringBuffer(value.length() * 2);
        int i = 0;
        while (i < value.length()) {
            char character = value.charAt(i);
            if (character == '\\' || character == '\t' || character == '\r' || character == '\n' || character == '\f') {
                buf.append('\\');
                buf.append(character);
            } else if (character < ' ' || character > '~') {
                buf.append('\\');
                buf.append('u');
                buf.append(HEX[character >> 12 & 0xF]);
                buf.append(HEX[character >> 8 & 0xF]);
                buf.append(HEX[character >> 4 & 0xF]);
                buf.append(HEX[character & 0xF]);
            } else {
                buf.append(character);
            }
            ++i;
        }
        return buf.toString();
    }

    public static String windEscapeChars(String s) {
        if (s == null) {
            return null;
        }
        int len = s.length();
        StringBuffer outBuffer = new StringBuffer(len);
        int x = 0;
        while (x < len) {
            char aChar;
            if ((aChar = s.charAt(x++)) == '\\') {
                if (x >= len) break;
                if ((aChar = s.charAt(x++)) == 'u') {
                    int value = 0;
                    int i = 0;
                    while (i < 4) {
                        if (x >= len) break;
                        aChar = s.charAt(x++);
                        switch (aChar) {
                            case '0': 
                            case '1': 
                            case '2': 
                            case '3': 
                            case '4': 
                            case '5': 
                            case '6': 
                            case '7': 
                            case '8': 
                            case '9': {
                                value = (value << 4) + aChar - 48;
                                break;
                            }
                            case 'a': 
                            case 'b': 
                            case 'c': 
                            case 'd': 
                            case 'e': 
                            case 'f': {
                                value = (value << 4) + 10 + aChar - 97;
                                break;
                            }
                            case 'A': 
                            case 'B': 
                            case 'C': 
                            case 'D': 
                            case 'E': 
                            case 'F': {
                                value = (value << 4) + 10 + aChar - 65;
                                break;
                            }
                            default: {
                                throw new IllegalArgumentException("Malformed \\uxxxx encoding.");
                            }
                        }
                        ++i;
                    }
                    outBuffer.append((char)value);
                    continue;
                }
                if (aChar == 't') {
                    outBuffer.append('\t');
                    continue;
                }
                if (aChar == 'r') {
                    outBuffer.append('\r');
                    continue;
                }
                if (aChar == 'n') {
                    outBuffer.append('\n');
                    continue;
                }
                if (aChar == 'f') {
                    outBuffer.append('\f');
                    continue;
                }
                outBuffer.append(aChar);
                continue;
            }
            outBuffer.append(aChar);
        }
        return outBuffer.toString();
    }

    public static void writeKeyValuePair(String indent, String name, String value, PrintWriter writer) {
        String writableName = PropertiesUtil.createWritableName(name);
        writer.print(String.valueOf(writableName) + " = ");
        writer.println(PropertiesUtil.createEscapedValue(value));
    }

    public static void writeKeyValuePair(String indent, String name, Enumeration tokens, PrintWriter writer) {
        String writableName = PropertiesUtil.createWritableName(name);
        writer.print(String.valueOf(writableName) + " = ");
        if (!tokens.hasMoreElements()) {
            writer.println();
            return;
        }
        int indentLength = name.length() + 3;
        while (tokens.hasMoreElements()) {
            String token = tokens.nextElement().toString();
            writer.print(PropertiesUtil.createEscapedValue(token));
            if (tokens.hasMoreElements()) {
                writer.println(",\\");
                int j = 0;
                while (j < indentLength) {
                    writer.print(" ");
                    ++j;
                }
                continue;
            }
            writer.println("");
        }
    }

    public static int getInsertOffset(IDocument doc) {
        int offset = doc.getLength();
        int i = doc.getNumberOfLines() - 1;
        while (i >= 0) {
            try {
                if (doc.get(doc.getLineOffset(i), doc.getLineLength(i)).trim().length() > 0) break;
                offset = doc.getLineOffset(i);
            }
            catch (BadLocationException badLocationException) {}
            --i;
        }
        return offset;
    }

    public static boolean isNewlineNeeded(IDocument doc) throws BadLocationException {
        int line = doc.getLineOfOffset(PropertiesUtil.getInsertOffset(doc));
        return doc.get(doc.getLineOffset(line), doc.getLineLength(line)).trim().length() > 0;
    }
}

