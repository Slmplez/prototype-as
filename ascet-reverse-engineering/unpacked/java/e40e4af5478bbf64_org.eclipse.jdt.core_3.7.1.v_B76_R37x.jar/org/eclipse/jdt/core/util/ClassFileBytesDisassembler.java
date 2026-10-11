/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;

public abstract class ClassFileBytesDisassembler {
    public static final int DETAILED = 1;
    public static final int DEFAULT = 2;
    public static final int SYSTEM = 4;
    public static final int COMPACT = 8;
    public static final int WORKING_COPY = 16;

    public abstract String disassemble(byte[] var1, String var2) throws ClassFormatException;

    public abstract String disassemble(byte[] var1, String var2, int var3) throws ClassFormatException;

    public abstract String getDescription();
}

