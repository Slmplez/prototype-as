/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.filesystem;

public interface IFileInfo
extends Comparable,
Cloneable {
    public boolean exists();

    public boolean getAttribute(int var1);

    public String getStringAttribute(int var1);

    public long getLastModified();

    public long getLength();

    public String getName();

    public boolean isDirectory();

    public void setAttribute(int var1, boolean var2);

    public void setLastModified(long var1);
}

