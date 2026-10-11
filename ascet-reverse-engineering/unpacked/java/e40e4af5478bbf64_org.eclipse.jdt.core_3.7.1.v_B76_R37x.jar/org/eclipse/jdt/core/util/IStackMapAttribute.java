/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IStackMapFrame;

public interface IStackMapAttribute
extends IClassFileAttribute {
    public int getNumberOfEntries();

    public IStackMapFrame[] getStackMapFrame();
}

