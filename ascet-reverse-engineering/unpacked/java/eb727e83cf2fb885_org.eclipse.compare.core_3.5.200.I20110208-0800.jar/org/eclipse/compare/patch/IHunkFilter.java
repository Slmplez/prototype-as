/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.compare.patch;

import org.eclipse.compare.patch.IHunk;

public interface IHunkFilter {
    public boolean select(IHunk var1);
}

