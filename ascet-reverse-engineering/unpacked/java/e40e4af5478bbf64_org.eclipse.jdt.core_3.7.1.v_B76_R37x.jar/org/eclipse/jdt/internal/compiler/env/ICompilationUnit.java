/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.env;

import org.eclipse.jdt.internal.compiler.env.IDependent;

public interface ICompilationUnit
extends IDependent {
    public char[] getContents();

    public char[] getMainTypeName();

    public char[][] getPackageName();
}

