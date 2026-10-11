/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPartitioningException;
import org.eclipse.jface.text.IDocumentPartitioner;
import org.eclipse.jface.text.ITypedRegion;

public interface IDocumentExtension3 {
    public static final String DEFAULT_PARTITIONING = "__dftl_partitioning";

    public String[] getPartitionings();

    public String[] getLegalContentTypes(String var1) throws BadPartitioningException;

    public String getContentType(String var1, int var2, boolean var3) throws BadLocationException, BadPartitioningException;

    public ITypedRegion getPartition(String var1, int var2, boolean var3) throws BadLocationException, BadPartitioningException;

    public ITypedRegion[] computePartitioning(String var1, int var2, int var3, boolean var4) throws BadLocationException, BadPartitioningException;

    public void setDocumentPartitioner(String var1, IDocumentPartitioner var2);

    public IDocumentPartitioner getDocumentPartitioner(String var1);
}

