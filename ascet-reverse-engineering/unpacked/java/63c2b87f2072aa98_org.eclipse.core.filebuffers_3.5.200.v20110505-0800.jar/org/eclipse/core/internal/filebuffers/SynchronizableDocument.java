/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPartitioningException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.Document
 *  org.eclipse.jface.text.DocumentRewriteSession
 *  org.eclipse.jface.text.DocumentRewriteSessionType
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ISynchronizable
 *  org.eclipse.jface.text.ITypedRegion
 *  org.eclipse.jface.text.Position
 */
package org.eclipse.core.internal.filebuffers;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPartitioningException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.Document;
import org.eclipse.jface.text.DocumentRewriteSession;
import org.eclipse.jface.text.DocumentRewriteSessionType;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ISynchronizable;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Position;

public class SynchronizableDocument
extends Document
implements ISynchronizable {
    private Object fLockObject;

    public synchronized void setLockObject(Object lockObject) {
        this.fLockObject = lockObject;
    }

    public synchronized Object getLockObject() {
        return this.fLockObject;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void startSequentialRewrite(boolean normalized) {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            super.startSequentialRewrite(normalized);
            return;
        }
        Object object = lockObject;
        synchronized (object) {
            super.startSequentialRewrite(normalized);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void stopSequentialRewrite() {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            super.stopSequentialRewrite();
            return;
        }
        Object object = lockObject;
        synchronized (object) {
            super.stopSequentialRewrite();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public DocumentRewriteSession startRewriteSession(DocumentRewriteSessionType sessionType) {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.startRewriteSession(sessionType);
        }
        Object object = lockObject;
        synchronized (object) {
            return super.startRewriteSession(sessionType);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void stopRewriteSession(DocumentRewriteSession session) {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            super.stopRewriteSession(session);
            return;
        }
        Object object = lockObject;
        synchronized (object) {
            super.stopRewriteSession(session);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String get() {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.get();
        }
        Object object = lockObject;
        synchronized (object) {
            return super.get();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String get(int offset, int length) throws BadLocationException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.get(offset, length);
        }
        Object object = lockObject;
        synchronized (object) {
            return super.get(offset, length);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public char getChar(int offset) throws BadLocationException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.getChar(offset);
        }
        Object object = lockObject;
        synchronized (object) {
            return super.getChar(offset);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public long getModificationStamp() {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.getModificationStamp();
        }
        Object object = lockObject;
        synchronized (object) {
            return super.getModificationStamp();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void replace(int offset, int length, String text) throws BadLocationException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            super.replace(offset, length, text);
            return;
        }
        Object object = lockObject;
        synchronized (object) {
            super.replace(offset, length, text);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void replace(int offset, int length, String text, long modificationStamp) throws BadLocationException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            super.replace(offset, length, text, modificationStamp);
            return;
        }
        Object object = lockObject;
        synchronized (object) {
            super.replace(offset, length, text, modificationStamp);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void set(String text) {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            super.set(text);
            return;
        }
        Object object = lockObject;
        synchronized (object) {
            super.set(text);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void set(String text, long modificationStamp) {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            super.set(text, modificationStamp);
            return;
        }
        Object object = lockObject;
        synchronized (object) {
            super.set(text, modificationStamp);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addPosition(String category, Position position) throws BadLocationException, BadPositionCategoryException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            super.addPosition(category, position);
            return;
        }
        Object object = lockObject;
        synchronized (object) {
            super.addPosition(category, position);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removePosition(String category, Position position) throws BadPositionCategoryException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            super.removePosition(category, position);
            return;
        }
        Object object = lockObject;
        synchronized (object) {
            super.removePosition(category, position);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Position[] getPositions(String category) throws BadPositionCategoryException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.getPositions(category);
        }
        Object object = lockObject;
        synchronized (object) {
            return super.getPositions(category);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Position[] getPositions(String category, int offset, int length, boolean canStartBefore, boolean canEndAfter) throws BadPositionCategoryException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.getPositions(category, offset, length, canStartBefore, canEndAfter);
        }
        Object object = lockObject;
        synchronized (object) {
            return super.getPositions(category, offset, length, canStartBefore, canEndAfter);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ITypedRegion[] computePartitioning(String partitioning, int offset, int length, boolean includeZeroLengthPartitions) throws BadLocationException, BadPartitioningException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.computePartitioning(partitioning, offset, length, includeZeroLengthPartitions);
        }
        Object object = lockObject;
        synchronized (object) {
            return super.computePartitioning(partitioning, offset, length, includeZeroLengthPartitions);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getLineDelimiter(int line) throws BadLocationException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.getLineDelimiter(line);
        }
        Object object = lockObject;
        synchronized (object) {
            return super.getLineDelimiter(line);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getDefaultLineDelimiter() {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.getDefaultLineDelimiter();
        }
        Object object = lockObject;
        synchronized (object) {
            return super.getDefaultLineDelimiter();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IRegion getLineInformation(int line) throws BadLocationException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.getLineInformation(line);
        }
        Object object = lockObject;
        synchronized (object) {
            return super.getLineInformation(line);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IRegion getLineInformationOfOffset(int offset) throws BadLocationException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.getLineInformationOfOffset(offset);
        }
        Object object = lockObject;
        synchronized (object) {
            return super.getLineInformationOfOffset(offset);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public int getLineLength(int line) throws BadLocationException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.getLineLength(line);
        }
        Object object = lockObject;
        synchronized (object) {
            return super.getLineLength(line);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public int getLineOffset(int line) throws BadLocationException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.getLineOffset(line);
        }
        Object object = lockObject;
        synchronized (object) {
            return super.getLineOffset(line);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public int getLineOfOffset(int pos) throws BadLocationException {
        Object lockObject = this.getLockObject();
        if (lockObject == null) {
            return super.getLineOfOffset(pos);
        }
        Object object = lockObject;
        synchronized (object) {
            return super.getLineOfOffset(pos);
        }
    }
}

