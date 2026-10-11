/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;

public interface ISourceAttribute
extends IClassFileAttribute {
    public int getSourceFileIndex();

    public char[] getSourceFileName();
}

