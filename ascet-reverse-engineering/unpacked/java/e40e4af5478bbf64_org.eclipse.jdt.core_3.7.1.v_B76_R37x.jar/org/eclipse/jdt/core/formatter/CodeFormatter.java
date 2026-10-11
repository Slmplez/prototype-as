/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.core.formatter;

import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jface.text.IRegion;
import org.eclipse.text.edits.TextEdit;

public abstract class CodeFormatter {
    public static final int K_UNKNOWN = 0;
    public static final int K_EXPRESSION = 1;
    public static final int K_STATEMENTS = 2;
    public static final int K_CLASS_BODY_DECLARATIONS = 4;
    public static final int K_COMPILATION_UNIT = 8;
    public static final int K_SINGLE_LINE_COMMENT = 16;
    public static final int K_MULTI_LINE_COMMENT = 32;
    public static final int K_JAVA_DOC = 64;
    public static final int F_INCLUDE_COMMENTS = 4096;

    public abstract TextEdit format(int var1, String var2, int var3, int var4, int var5, String var6);

    public abstract TextEdit format(int var1, String var2, IRegion[] var3, int var4, String var5);

    public String createIndentationString(int indentationLevel) {
        return Util.EMPTY_STRING;
    }
}

