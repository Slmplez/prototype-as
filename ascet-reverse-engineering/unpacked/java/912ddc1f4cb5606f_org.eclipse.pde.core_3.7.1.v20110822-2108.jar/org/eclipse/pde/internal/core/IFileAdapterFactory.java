/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import org.eclipse.pde.internal.core.FileAdapter;

public interface IFileAdapterFactory {
    public Object createAdapterChild(FileAdapter var1, File var2);
}

