/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IPath;

public interface IAccessRule {
    public static final int K_ACCESSIBLE = 0;
    public static final int K_NON_ACCESSIBLE = 1;
    public static final int K_DISCOURAGED = 2;
    public static final int IGNORE_IF_BETTER = 256;

    public IPath getPattern();

    public int getKind();

    public boolean ignoreIfBetter();
}

