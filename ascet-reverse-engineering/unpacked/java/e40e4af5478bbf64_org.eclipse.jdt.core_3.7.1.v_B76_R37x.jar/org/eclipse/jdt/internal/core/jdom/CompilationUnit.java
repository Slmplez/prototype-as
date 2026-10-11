/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;

public class CompilationUnit
implements ICompilationUnit {
    protected char[] fContents;
    protected char[] fFileName;
    protected char[] fMainTypeName;

    public CompilationUnit(char[] contents, char[] filename) {
        int end;
        this.fContents = contents;
        this.fFileName = filename;
        String file = new String(filename);
        int start = file.lastIndexOf("/") + 1;
        if (start == 0 || start < file.lastIndexOf("\\")) {
            start = file.lastIndexOf("\\") + 1;
        }
        if ((end = file.lastIndexOf(".")) == -1) {
            end = file.length();
        }
        this.fMainTypeName = file.substring(start, end).toCharArray();
    }

    public char[] getContents() {
        return this.fContents;
    }

    public char[] getFileName() {
        return this.fFileName;
    }

    public char[] getMainTypeName() {
        return this.fMainTypeName;
    }

    public char[][] getPackageName() {
        return null;
    }

    public String toString() {
        return "CompilationUnit[" + new String(this.fFileName) + "]";
    }
}

