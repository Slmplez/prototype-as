/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.util.CompactByteArray;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

class BreakDictionary {
    private char[] reverseColumnMap = null;
    private CompactByteArray columnMap = null;
    private int numCols;
    private short[] table = null;
    private short[] rowIndex = null;
    private int[] rowIndexFlags = null;
    private short[] rowIndexFlagsIndex = null;
    private byte[] rowIndexShifts = null;

    public static void main(String[] args) throws FileNotFoundException, UnsupportedEncodingException, IOException {
        String filename = args[0];
        BreakDictionary dictionary = new BreakDictionary(new FileInputStream(filename));
        PrintWriter out = null;
        if (args.length >= 2) {
            out = new PrintWriter(new OutputStreamWriter((OutputStream)new FileOutputStream(args[1]), "UnicodeLittle"));
        }
        dictionary.printWordList("", 0, out);
        if (out != null) {
            out.close();
        }
    }

    void printWordList(String partialWord, int state, PrintWriter out) throws IOException {
        if (state == 65535) {
            System.out.println(partialWord);
            if (out != null) {
                out.println(partialWord);
            }
        } else {
            int i = 0;
            while (i < this.numCols) {
                int newState = this.at(state, i) & 0xFFFF;
                if (newState != 0) {
                    char newChar = this.reverseColumnMap[i];
                    String newPartialWord = partialWord;
                    if (newChar != '\u0000') {
                        newPartialWord = String.valueOf(newPartialWord) + newChar;
                    }
                    this.printWordList(newPartialWord, newState, out);
                }
                ++i;
            }
        }
    }

    BreakDictionary(InputStream dictionaryStream) throws IOException {
        this.readDictionaryFile(new DataInputStream(dictionaryStream));
    }

    void readDictionaryFile(DataInputStream in) throws IOException {
        in.readInt();
        int l = in.readInt();
        char[] temp = new char[l];
        int i = 0;
        while (i < temp.length) {
            temp[i] = (char)in.readShort();
            ++i;
        }
        l = in.readInt();
        byte[] temp2 = new byte[l];
        int i2 = 0;
        while (i2 < temp2.length) {
            temp2[i2] = in.readByte();
            ++i2;
        }
        this.columnMap = new CompactByteArray(temp, temp2);
        this.numCols = in.readInt();
        in.readInt();
        l = in.readInt();
        this.rowIndex = new short[l];
        i2 = 0;
        while (i2 < this.rowIndex.length) {
            this.rowIndex[i2] = in.readShort();
            ++i2;
        }
        l = in.readInt();
        this.rowIndexFlagsIndex = new short[l];
        i2 = 0;
        while (i2 < this.rowIndexFlagsIndex.length) {
            this.rowIndexFlagsIndex[i2] = in.readShort();
            ++i2;
        }
        l = in.readInt();
        this.rowIndexFlags = new int[l];
        i2 = 0;
        while (i2 < this.rowIndexFlags.length) {
            this.rowIndexFlags[i2] = in.readInt();
            ++i2;
        }
        l = in.readInt();
        this.rowIndexShifts = new byte[l];
        i2 = 0;
        while (i2 < this.rowIndexShifts.length) {
            this.rowIndexShifts[i2] = in.readByte();
            ++i2;
        }
        l = in.readInt();
        this.table = new short[l];
        i2 = 0;
        while (i2 < this.table.length) {
            this.table[i2] = in.readShort();
            ++i2;
        }
        this.reverseColumnMap = new char[this.numCols];
        char c = '\u0000';
        while (c < '\uffff') {
            byte col = this.columnMap.elementAt(c);
            if (col != 0) {
                this.reverseColumnMap[col] = c;
            }
            c = (char)(c + '\u0001');
        }
        in.close();
    }

    final short at(int row, char ch) {
        byte col = this.columnMap.elementAt(ch);
        return this.at(row, col);
    }

    final short at(int row, int col) {
        if (this.cellIsPopulated(row, col)) {
            return this.internalAt(this.rowIndex[row], col + this.rowIndexShifts[row]);
        }
        return 0;
    }

    private final boolean cellIsPopulated(int row, int col) {
        if (this.rowIndexFlagsIndex[row] < 0) {
            return col == -this.rowIndexFlagsIndex[row];
        }
        int flags = this.rowIndexFlags[this.rowIndexFlagsIndex[row] + (col >> 5)];
        return (flags & 1 << (col & 0x1F)) != 0;
    }

    private final short internalAt(int row, int col) {
        return this.table[row * this.numCols + col];
    }
}

