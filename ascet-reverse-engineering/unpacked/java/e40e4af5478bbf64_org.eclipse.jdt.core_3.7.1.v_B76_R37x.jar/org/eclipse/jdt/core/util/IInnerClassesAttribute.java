/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IInnerClassesAttributeEntry;

public interface IInnerClassesAttribute
extends IClassFileAttribute {
    public int getNumberOfClasses();

    public IInnerClassesAttributeEntry[] getInnerClassAttributesEntries();
}

