/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.compare.internal.core.patch;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.compare.internal.core.ComparePlugin;
import org.eclipse.compare.patch.ReaderCreator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.Platform;

public class LineReader {
    private boolean fHaveChar = false;
    private int fLastChar;
    private boolean fSawEOF = false;
    private BufferedReader fReader;
    private boolean fIgnoreSingleCR = false;
    private StringBuffer fBuffer = new StringBuffer();

    public static List load(ReaderCreator content, boolean create) {
        List lines;
        block16: {
            lines = null;
            BufferedReader bufferedReader = null;
            if (!create && content != null && content.canCreateReader()) {
                try {
                    try {
                        bufferedReader = new BufferedReader(content.createReader());
                        lines = LineReader.readLines(bufferedReader);
                    }
                    catch (CoreException ex) {
                        ComparePlugin.log(ex);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            }
                            catch (IOException iOException) {}
                        }
                        break block16;
                    }
                }
                catch (Throwable throwable) {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        }
                        catch (IOException iOException) {}
                    }
                    throw throwable;
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    }
                    catch (IOException iOException) {}
                }
            }
        }
        if (lines == null) {
            lines = new ArrayList();
        }
        return lines;
    }

    public static List readLines(BufferedReader reader) {
        LineReader lr = new LineReader(reader);
        if (!"carbon".equals(Platform.getWS())) {
            lr.ignoreSingleCR();
        }
        List lines = lr.readLines();
        return lines;
    }

    public static String createString(boolean preserveLineDelimeters, List lines) {
        StringBuffer sb = new StringBuffer();
        Iterator iter = lines.iterator();
        if (preserveLineDelimeters) {
            while (iter.hasNext()) {
                sb.append((String)iter.next());
            }
        } else {
            String lineSeparator = System.getProperty("line.separator");
            while (iter.hasNext()) {
                String line = (String)iter.next();
                int l = LineReader.length(line);
                if (l < line.length()) {
                    sb.append(line.substring(0, l));
                    sb.append(lineSeparator);
                    continue;
                }
                sb.append(line);
            }
        }
        return sb.toString();
    }

    static int length(String s) {
        int l = s.length();
        if (l > 0) {
            char c = s.charAt(l - 1);
            if (c == '\r') {
                return l - 1;
            }
            if (c == '\n') {
                if (l > 1 && s.charAt(l - 2) == '\r') {
                    return l - 2;
                }
                return l - 1;
            }
        }
        return l;
    }

    public LineReader(BufferedReader reader) {
        this.fReader = reader;
        Assert.isNotNull((Object)reader);
    }

    public void ignoreSingleCR() {
        this.fIgnoreSingleCR = true;
    }

    String readLine() throws IOException {
        try {
            while (!this.fSawEOF) {
                int c = this.readChar();
                if (c == -1) {
                    this.fSawEOF = true;
                    break;
                }
                this.fBuffer.append((char)c);
                if (c == 10) break;
                if (c != 13) continue;
                c = this.readChar();
                if (c == -1) {
                    this.fSawEOF = true;
                    break;
                }
                if (c != 10) {
                    if (this.fIgnoreSingleCR) {
                        this.fBuffer.append((char)c);
                        continue;
                    }
                    this.fHaveChar = true;
                    this.fLastChar = c;
                    break;
                }
                this.fBuffer.append((char)c);
                break;
            }
            if (this.fBuffer.length() != 0) {
                String string = this.fBuffer.toString();
                return string;
            }
            return null;
        }
        finally {
            this.fBuffer.setLength(0);
        }
    }

    void close() {
        try {
            this.fReader.close();
        }
        catch (IOException iOException) {}
    }

    public List readLines() {
        try {
            String line;
            ArrayList<String> lines = new ArrayList<String>();
            while ((line = this.readLine()) != null) {
                lines.add(line);
            }
            ArrayList<String> arrayList = lines;
            return arrayList;
        }
        catch (IOException iOException) {
        }
        finally {
            this.close();
        }
        return null;
    }

    int lineContentLength(String line) {
        if (line == null) {
            return 0;
        }
        int length = line.length();
        int i = length - 1;
        while (i >= 0) {
            char c = line.charAt(i);
            if (c != '\n' && c != '\r') break;
            --length;
            --i;
        }
        return length;
    }

    private int readChar() throws IOException {
        if (this.fHaveChar) {
            this.fHaveChar = false;
            return this.fLastChar;
        }
        return this.fReader.read();
    }
}

