/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text;

import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.internal.core.text.IDocumentRange;

public interface IDocumentKey
extends IWritable,
IDocumentRange {
    public void setName(String var1);

    public String getName();

    public void setOffset(int var1);

    public void setLength(int var1);

    public String write();
}

