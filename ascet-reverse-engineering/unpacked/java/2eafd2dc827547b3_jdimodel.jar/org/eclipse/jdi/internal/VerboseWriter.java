/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.eclipse.jdi.internal.JDIMessages;

public class VerboseWriter {
    public static final int VERBOSE_DESCRIPTION_LENGTH = 21;
    public static final int VERBOSE_HEX_BYTES_PER_LINE = 16;
    public static final int VERBOSE_HEX_WIDTH = 50;
    int fExtraVerboseLines = 0;
    private PrintWriter fOutput;
    private List fLineBuffer;
    private int fPosition;
    private boolean fNewLine = true;

    public VerboseWriter(PrintWriter out) {
        this.fOutput = out;
        this.fLineBuffer = new ArrayList();
        this.fPosition = 0;
        this.fLineBuffer.add(new StringBuffer());
    }

    public void println() {
        while (this.fExtraVerboseLines > 0) {
            --this.fExtraVerboseLines;
            this.markLn();
        }
        this.markLn();
    }

    public void println(String description, byte value) {
        this.printDescription(description);
        this.printHex(value);
        this.println();
    }

    public void println(String description, short value) {
        this.printDescription(description);
        this.printHex(value);
        this.println();
    }

    public void println(String description, int value) {
        this.printDescription(description);
        this.printHex(value);
        this.println();
    }

    public void println(String description, long value) {
        this.printDescription(description);
        this.printHex(value);
        this.println();
    }

    public void println(String description, byte value, Map valueToString) {
        this.printDescription(description);
        this.printHex(value);
        this.printValue((int)value, valueToString);
        this.println();
    }

    public void println(String description, short value, Map valueToString) {
        this.printDescription(description);
        this.printHex(value);
        this.printValue((int)value, valueToString);
        this.println();
    }

    public void println(String description, int value, Map valueToString) {
        this.printDescription(description);
        this.printHex(value);
        this.printValue(value, valueToString);
        this.println();
    }

    public void println(String description, byte value, String[] bitNames) {
        this.printDescription(description);
        this.printHex(value);
        this.printValue(value, bitNames);
        this.println();
    }

    public void println(String description, short value, String[] bitNames) {
        this.printDescription(description);
        this.printHex(value);
        this.printValue(value, bitNames);
        this.println();
    }

    public void println(String description, int value, String[] bitNames) {
        this.printDescription(description);
        this.printHex(value);
        this.printValue(value, bitNames);
        this.println();
    }

    public void println(String description, String value) {
        this.printDescription(description);
        this.printHex(value);
        this.print(value);
        this.println();
    }

    public void println(String description, boolean value) {
        this.printDescription(description);
        this.printHex(value);
        this.print(Boolean.valueOf(value).toString());
        this.println();
    }

    public void println(String description, char value) {
        this.printDescription(description);
        this.printHex(value);
        this.print(value);
        this.println();
    }

    public void println(String description, double value) {
        this.printDescription(description);
        this.printHex(value);
        this.print(new Double(value).toString());
        this.println();
    }

    public void println(String description, float value) {
        this.printDescription(description);
        this.printHex(value);
        this.print(new Float(value).toString());
        this.println();
    }

    public void println(String description, byte[] value) {
        this.printDescription(description);
        this.printHex(value);
        this.println();
    }

    public void printWidth(String str, int width) {
        this.print(str);
        int spaces = width - str.length();
        if (spaces > 0) {
            int i = 0;
            while (i < spaces) {
                this.print(' ');
                ++i;
            }
        }
    }

    public void printDescription(String str) {
        this.printWidth(str, 21);
    }

    public void printHexSubstitution(String str) {
        this.print(' ');
        this.printWidth(str, 49);
    }

    private static void appendHexByte(byte b, char[] buffer, int pos) {
        int count = 2;
        int abspos = 3 * pos;
        buffer[abspos] = 32;
        do {
            int t;
            t = (t = b & 0xF) > 9 ? t - 10 + 97 : (t += 48);
            buffer[count-- + abspos] = (char)t;
            b = (byte)(b >>> 4);
        } while (count > 0);
    }

    private static void appendHexSpaces(char[] buffer, int pos) {
        int i = 3 * pos;
        while (i <= 47) {
            buffer[i] = 32;
            buffer[i + 1] = 32;
            buffer[i + 2] = 32;
            i += 3;
        }
        buffer[49] = 32;
        buffer[48] = 32;
    }

    public void printHex(byte b) {
        char[] buffer = new char[50];
        VerboseWriter.appendHexByte(b, buffer, 0);
        VerboseWriter.appendHexSpaces(buffer, 1);
        this.print(buffer);
    }

    public void printHex(short s) {
        char[] buffer = new char[50];
        int i = 1;
        while (i >= 0) {
            VerboseWriter.appendHexByte((byte)(s >>> i * 8), buffer, 1 - i);
            --i;
        }
        VerboseWriter.appendHexSpaces(buffer, 2);
        this.print(buffer);
    }

    public void printHex(int integer) {
        char[] buffer = new char[50];
        int i = 3;
        while (i >= 0) {
            VerboseWriter.appendHexByte((byte)(integer >>> i * 8), buffer, 3 - i);
            --i;
        }
        VerboseWriter.appendHexSpaces(buffer, 4);
        this.print(buffer);
    }

    public void printHex(long l) {
        char[] buffer = new char[50];
        int i = 7;
        while (i >= 0) {
            VerboseWriter.appendHexByte((byte)(l >>> i * 8), buffer, 7 - i);
            --i;
        }
        VerboseWriter.appendHexSpaces(buffer, 8);
        this.print(buffer);
    }

    public void printHex(boolean b) {
        this.printHexSubstitution("<boolean>");
    }

    public void printHex(char c) {
        this.printHexSubstitution("<char>");
    }

    public void printHex(double d) {
        this.printHexSubstitution("<double>");
    }

    public void printHex(float f) {
        this.printHexSubstitution("<float>");
    }

    public void printHex(String str) {
        this.printHexSubstitution("<string>");
    }

    public void printHex(byte[] bytes) {
        int startPosition = this.position();
        char[] linebuf = new char[50];
        int extraLines = 0;
        int byteOnLine = 0;
        int i = 0;
        while (i < bytes.length) {
            if (byteOnLine == 16) {
                VerboseWriter.appendHexSpaces(linebuf, 16);
                if (extraLines++ > 0) {
                    this.printDescription("");
                }
                this.print(linebuf);
                this.markLn();
                byteOnLine = 0;
            }
            VerboseWriter.appendHexByte(bytes[i], linebuf, byteOnLine++);
            ++i;
        }
        VerboseWriter.appendHexSpaces(linebuf, byteOnLine);
        if (extraLines > 0) {
            this.printDescription("");
        }
        this.fExtraVerboseLines += extraLines;
        this.print(linebuf);
        if (extraLines > 0) {
            this.gotoPosition(startPosition);
        }
    }

    public void printValue(int value, Map valueToString) {
        Integer val = new Integer(value);
        if (valueToString == null) {
            this.print(val.toString());
            return;
        }
        String result = (String)valueToString.get(val);
        if (result == null) {
            this.print(String.valueOf(val.toString()) + JDIMessages.VerboseWriter___unknown_value__1);
        } else {
            this.print(result);
        }
    }

    public void printValue(byte value, String[] bitNames) {
        this.printValue(value & 0xFF, bitNames);
    }

    public void printValue(short value, String[] bitNames) {
        this.printValue(value & 0xFFFF, bitNames);
    }

    public void printValue(int value, String[] bitNames) {
        Integer val = new Integer(value);
        if (bitNames == null) {
            this.print(val.toString());
            return;
        }
        boolean bitsSet = false;
        int i = 0;
        while (i < bitNames.length) {
            if ((1 << i & value) != 0) {
                String bitString = bitNames[i];
                if (bitString == null) {
                    bitString = JDIMessages.VerboseWriter__unknown_bit__2;
                }
                if (!bitsSet) {
                    this.print(bitString);
                } else {
                    this.print(" & ");
                    this.print(bitString);
                }
                bitsSet = true;
            }
            ++i;
        }
        if (!bitsSet) {
            this.print(JDIMessages.VerboseWriter__none__4);
        }
    }

    private void checkForNewLine() {
        if (this.fNewLine) {
            ((StringBuffer)this.fLineBuffer.get(this.fPosition)).setLength(0);
            this.fNewLine = false;
        }
    }

    public void print(String str) {
        this.checkForNewLine();
        ((StringBuffer)this.fLineBuffer.get(this.fPosition)).append(str);
    }

    public void print(char c) {
        this.checkForNewLine();
        ((StringBuffer)this.fLineBuffer.get(this.fPosition)).append(c);
    }

    public void print(char[] c) {
        this.checkForNewLine();
        ((StringBuffer)this.fLineBuffer.get(this.fPosition)).append(c);
    }

    public void println(String str) {
        this.print(str);
        this.println();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void flush() {
        PrintWriter printWriter = this.fOutput;
        synchronized (printWriter) {
            int bufSize = this.fLineBuffer.size();
            int i = 0;
            while (i < bufSize - 1) {
                this.fOutput.println(new String((StringBuffer)this.fLineBuffer.get(i)));
                ++i;
            }
            StringBuffer lastLine = (StringBuffer)this.fLineBuffer.get(bufSize - 1);
            if (lastLine.length() > 0) {
                this.fOutput.print(new String(lastLine));
            }
            this.fOutput.flush();
            this.fLineBuffer.clear();
            this.fPosition = 0;
            this.fLineBuffer.add(new StringBuffer());
        }
    }

    /*
     * Unable to fully structure code
     */
    public void gotoPosition(int pos) {
        block1: {
            delta = pos - this.fPosition;
            if (delta >= 0) ** GOTO lbl6
            this.fPosition = pos;
            break block1;
lbl-1000:
            // 1 sources

            {
                this.println();
lbl6:
                // 2 sources

                ** while (delta-- > 0)
            }
        }
    }

    public void printLines(int lines) {
        this.gotoPosition(this.fPosition + lines);
    }

    public int position() {
        return this.fPosition;
    }

    public void markLn() {
        if (++this.fPosition == this.fLineBuffer.size()) {
            this.fLineBuffer.add(new StringBuffer());
        }
        this.fNewLine = true;
    }
}

