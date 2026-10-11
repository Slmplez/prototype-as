/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.IOException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.util.Util;

public class CompilationUnit
implements ICompilationUnit {
    public char[] contents;
    public char[] fileName;
    public char[] mainTypeName;
    String encoding;
    public String destinationPath;

    public CompilationUnit(char[] contents, String fileName, String encoding) {
        this(contents, fileName, encoding, null);
    }

    public CompilationUnit(char[] contents, String fileName, String encoding, String destinationPath) {
        this.contents = contents;
        char[] fileNameCharArray = fileName.toCharArray();
        switch (File.separatorChar) {
            case '/': {
                if (CharOperation.indexOf('\\', fileNameCharArray) == -1) break;
                CharOperation.replace(fileNameCharArray, '\\', '/');
                break;
            }
            case '\\': {
                if (CharOperation.indexOf('/', fileNameCharArray) == -1) break;
                CharOperation.replace(fileNameCharArray, '/', '\\');
            }
        }
        this.fileName = fileNameCharArray;
        int start = CharOperation.lastIndexOf(File.separatorChar, fileNameCharArray) + 1;
        int end = CharOperation.lastIndexOf('.', fileNameCharArray);
        if (end == -1) {
            end = fileNameCharArray.length;
        }
        this.mainTypeName = CharOperation.subarray(fileNameCharArray, start, end);
        this.encoding = encoding;
        this.destinationPath = destinationPath;
    }

    public char[] getContents() {
        if (this.contents != null) {
            return this.contents;
        }
        try {
            return Util.getFileCharContent(new File(new String(this.fileName)), this.encoding);
        }
        catch (IOException e) {
            this.contents = CharOperation.NO_CHAR;
            throw new AbortCompilationUnit(null, e, this.encoding);
        }
    }

    public char[] getFileName() {
        return this.fileName;
    }

    public char[] getMainTypeName() {
        return this.mainTypeName;
    }

    public char[][] getPackageName() {
        return null;
    }

    public String toString() {
        return "CompilationUnit[" + new String(this.fileName) + "]";
    }
}

