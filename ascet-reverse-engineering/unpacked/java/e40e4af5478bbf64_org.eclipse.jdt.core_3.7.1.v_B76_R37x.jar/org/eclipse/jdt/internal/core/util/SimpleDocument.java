/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IDocumentPartitioner
 *  org.eclipse.jface.text.IDocumentPartitioningListener
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITypedRegion
 *  org.eclipse.jface.text.Position
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IDocumentPartitioner;
import org.eclipse.jface.text.IDocumentPartitioningListener;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Position;

public class SimpleDocument
implements IDocument {
    private StringBuffer buffer;

    public SimpleDocument(String source) {
        this.buffer = new StringBuffer(source);
    }

    public char getChar(int offset) {
        return '\u0000';
    }

    public int getLength() {
        return this.buffer.length();
    }

    public String get() {
        return this.buffer.toString();
    }

    public String get(int offset, int length) {
        return this.buffer.substring(offset, offset + length);
    }

    public void set(String text) {
    }

    public void replace(int offset, int length, String text) {
        this.buffer.replace(offset, offset + length, text);
    }

    public void addDocumentListener(IDocumentListener listener) {
    }

    public void removeDocumentListener(IDocumentListener listener) {
    }

    public void addPrenotifiedDocumentListener(IDocumentListener documentAdapter) {
    }

    public void removePrenotifiedDocumentListener(IDocumentListener documentAdapter) {
    }

    public void addPositionCategory(String category) {
    }

    public void removePositionCategory(String category) {
    }

    public String[] getPositionCategories() {
        return null;
    }

    public boolean containsPositionCategory(String category) {
        return false;
    }

    public void addPosition(Position position) {
    }

    public void removePosition(Position position) {
    }

    public void addPosition(String category, Position position) {
    }

    public void removePosition(String category, Position position) {
    }

    public Position[] getPositions(String category) {
        return null;
    }

    public boolean containsPosition(String category, int offset, int length) {
        return false;
    }

    public int computeIndexInCategory(String category, int offset) {
        return 0;
    }

    public void addPositionUpdater(IPositionUpdater updater) {
    }

    public void removePositionUpdater(IPositionUpdater updater) {
    }

    public void insertPositionUpdater(IPositionUpdater updater, int index) {
    }

    public IPositionUpdater[] getPositionUpdaters() {
        return null;
    }

    public String[] getLegalContentTypes() {
        return null;
    }

    public String getContentType(int offset) {
        return null;
    }

    public ITypedRegion getPartition(int offset) {
        return null;
    }

    public ITypedRegion[] computePartitioning(int offset, int length) {
        return null;
    }

    public void addDocumentPartitioningListener(IDocumentPartitioningListener listener) {
    }

    public void removeDocumentPartitioningListener(IDocumentPartitioningListener listener) {
    }

    public void setDocumentPartitioner(IDocumentPartitioner partitioner) {
    }

    public IDocumentPartitioner getDocumentPartitioner() {
        return null;
    }

    public int getLineLength(int line) {
        return 0;
    }

    public int getLineOfOffset(int offset) {
        return 0;
    }

    public int getLineOffset(int line) {
        return 0;
    }

    public IRegion getLineInformation(int line) {
        return null;
    }

    public IRegion getLineInformationOfOffset(int offset) {
        return null;
    }

    public int getNumberOfLines() {
        return 0;
    }

    public int getNumberOfLines(int offset, int length) {
        return 0;
    }

    public int computeNumberOfLines(String text) {
        return 0;
    }

    public String[] getLegalLineDelimiters() {
        return null;
    }

    public String getLineDelimiter(int line) {
        return null;
    }

    public int search(int startOffset, String findString, boolean forwardSearch, boolean caseSensitive, boolean wholeWord) {
        return 0;
    }
}

