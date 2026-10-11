/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.core;

import java.io.PrintWriter;

public interface IEditable {
    public boolean isEditable();

    public boolean isDirty();

    public void save(PrintWriter var1);

    public void setDirty(boolean var1);
}

