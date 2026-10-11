/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileReader;

public interface IClassFileDisassembler {
    public static final int DETAILED = 1;
    public static final int DEFAULT = 2;

    public String disassemble(IClassFileReader var1, String var2);

    public String disassemble(IClassFileReader var1, String var2, int var3);
}

