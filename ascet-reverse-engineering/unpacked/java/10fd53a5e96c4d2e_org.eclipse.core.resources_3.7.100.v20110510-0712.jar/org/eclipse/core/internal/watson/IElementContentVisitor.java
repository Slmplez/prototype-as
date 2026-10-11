/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.watson;

import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.internal.watson.IPathRequestor;

public interface IElementContentVisitor {
    public boolean visitElement(ElementTree var1, IPathRequestor var2, Object var3);
}

