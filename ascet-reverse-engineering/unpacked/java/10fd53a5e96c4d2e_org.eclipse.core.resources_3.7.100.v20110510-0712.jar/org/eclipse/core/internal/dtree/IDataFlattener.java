/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.dtree;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import org.eclipse.core.runtime.IPath;

public interface IDataFlattener {
    public Object readData(IPath var1, DataInput var2) throws IOException;

    public void writeData(IPath var1, Object var2, DataOutput var3) throws IOException;
}

