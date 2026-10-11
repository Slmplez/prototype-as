/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.ITypedRegion;

public interface IDocumentPartitionerExtension2 {
    public String[] getManagingPositionCategories();

    public String getContentType(int var1, boolean var2);

    public ITypedRegion getPartition(int var1, boolean var2);

    public ITypedRegion[] computePartitioning(int var1, int var2, boolean var3);
}

