/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IDocumentPartitioner;
import org.eclipse.jface.text.IDocumentPartitioningListener;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Position;

public interface IDocument {
    public static final String DEFAULT_CATEGORY = "__dflt_position_category";
    public static final String DEFAULT_CONTENT_TYPE = "__dftl_partition_content_type";

    public char getChar(int var1) throws BadLocationException;

    public int getLength();

    public String get();

    public String get(int var1, int var2) throws BadLocationException;

    public void set(String var1);

    public void replace(int var1, int var2, String var3) throws BadLocationException;

    public void addDocumentListener(IDocumentListener var1);

    public void removeDocumentListener(IDocumentListener var1);

    public void addPrenotifiedDocumentListener(IDocumentListener var1);

    public void removePrenotifiedDocumentListener(IDocumentListener var1);

    public void addPositionCategory(String var1);

    public void removePositionCategory(String var1) throws BadPositionCategoryException;

    public String[] getPositionCategories();

    public boolean containsPositionCategory(String var1);

    public void addPosition(Position var1) throws BadLocationException;

    public void removePosition(Position var1);

    public void addPosition(String var1, Position var2) throws BadLocationException, BadPositionCategoryException;

    public void removePosition(String var1, Position var2) throws BadPositionCategoryException;

    public Position[] getPositions(String var1) throws BadPositionCategoryException;

    public boolean containsPosition(String var1, int var2, int var3);

    public int computeIndexInCategory(String var1, int var2) throws BadLocationException, BadPositionCategoryException;

    public void addPositionUpdater(IPositionUpdater var1);

    public void removePositionUpdater(IPositionUpdater var1);

    public void insertPositionUpdater(IPositionUpdater var1, int var2);

    public IPositionUpdater[] getPositionUpdaters();

    public String[] getLegalContentTypes();

    public String getContentType(int var1) throws BadLocationException;

    public ITypedRegion getPartition(int var1) throws BadLocationException;

    public ITypedRegion[] computePartitioning(int var1, int var2) throws BadLocationException;

    public void addDocumentPartitioningListener(IDocumentPartitioningListener var1);

    public void removeDocumentPartitioningListener(IDocumentPartitioningListener var1);

    public void setDocumentPartitioner(IDocumentPartitioner var1);

    public IDocumentPartitioner getDocumentPartitioner();

    public int getLineLength(int var1) throws BadLocationException;

    public int getLineOfOffset(int var1) throws BadLocationException;

    public int getLineOffset(int var1) throws BadLocationException;

    public IRegion getLineInformation(int var1) throws BadLocationException;

    public IRegion getLineInformationOfOffset(int var1) throws BadLocationException;

    public int getNumberOfLines();

    public int getNumberOfLines(int var1, int var2) throws BadLocationException;

    public int computeNumberOfLines(String var1);

    public String[] getLegalLineDelimiters();

    public String getLineDelimiter(int var1) throws BadLocationException;

    public int search(int var1, String var2, boolean var3, boolean var4, boolean var5) throws BadLocationException;
}

