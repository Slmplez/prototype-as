/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.text.edits;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.TextEditCopier;
import org.eclipse.text.edits.TextEditMessages;
import org.eclipse.text.edits.TextEditProcessor;
import org.eclipse.text.edits.TextEditVisitor;
import org.eclipse.text.edits.UndoEdit;

public abstract class TextEdit {
    public static final int NONE = 0;
    public static final int CREATE_UNDO = 1;
    public static final int UPDATE_REGIONS = 2;
    private static final TextEdit[] EMPTY_ARRAY = new TextEdit[0];
    private static final InsertionComparator INSERTION_COMPARATOR = new InsertionComparator();
    private static final int DELETED_VALUE = -1;
    private int fOffset;
    private int fLength;
    private TextEdit fParent;
    private List fChildren;
    int fDelta;

    protected TextEdit(int offset, int length) {
        Assert.isTrue((offset >= 0 && length >= 0 ? 1 : 0) != 0);
        this.fOffset = offset;
        this.fLength = length;
        this.fDelta = 0;
    }

    protected TextEdit(TextEdit source) {
        this.fOffset = source.fOffset;
        this.fLength = source.fLength;
        this.fDelta = 0;
    }

    public final IRegion getRegion() {
        return new Region(this.getOffset(), this.getLength());
    }

    public int getOffset() {
        return this.fOffset;
    }

    public int getLength() {
        return this.fLength;
    }

    public final int getInclusiveEnd() {
        return this.getOffset() + this.getLength() - 1;
    }

    public final int getExclusiveEnd() {
        return this.getOffset() + this.getLength();
    }

    public final boolean isDeleted() {
        return this.fOffset == -1 && this.fLength == -1;
    }

    public final void moveTree(int delta) {
        Assert.isTrue((this.fParent == null ? 1 : 0) != 0);
        Assert.isTrue((this.getOffset() + delta >= 0 ? 1 : 0) != 0);
        this.internalMoveTree(delta);
    }

    public boolean covers(TextEdit other) {
        int otherOffset;
        if (this.getLength() == 0 && !this.canZeroLengthCover()) {
            return false;
        }
        if (!other.isDefined()) {
            return true;
        }
        int thisOffset = this.getOffset();
        return thisOffset <= (otherOffset = other.getOffset()) && otherOffset + other.getLength() <= thisOffset + this.getLength();
    }

    protected boolean canZeroLengthCover() {
        return false;
    }

    boolean isDefined() {
        return true;
    }

    public final TextEdit getParent() {
        return this.fParent;
    }

    public final TextEdit getRoot() {
        TextEdit result = this;
        while (result.fParent != null) {
            result = result.fParent;
        }
        return result;
    }

    public final void addChild(TextEdit child) throws MalformedTreeException {
        this.internalAdd(child);
    }

    public final void addChildren(TextEdit[] edits) throws MalformedTreeException {
        int i = 0;
        while (i < edits.length) {
            this.internalAdd(edits[i]);
            ++i;
        }
    }

    public final TextEdit removeChild(int index) {
        if (this.fChildren == null) {
            throw new IndexOutOfBoundsException("Index: " + index + " Size: 0");
        }
        TextEdit result = (TextEdit)this.fChildren.remove(index);
        result.internalSetParent(null);
        if (this.fChildren.isEmpty()) {
            this.fChildren = null;
        }
        return result;
    }

    public final boolean removeChild(TextEdit child) {
        Assert.isNotNull((Object)child);
        if (this.fChildren == null) {
            return false;
        }
        boolean result = this.fChildren.remove(child);
        if (result) {
            child.internalSetParent(null);
            if (this.fChildren.isEmpty()) {
                this.fChildren = null;
            }
        }
        return result;
    }

    public final TextEdit[] removeChildren() {
        if (this.fChildren == null) {
            return EMPTY_ARRAY;
        }
        int size = this.fChildren.size();
        TextEdit[] result = new TextEdit[size];
        int i = 0;
        while (i < size) {
            result[i] = (TextEdit)this.fChildren.get(i);
            result[i].internalSetParent(null);
            ++i;
        }
        this.fChildren = null;
        return result;
    }

    public final boolean hasChildren() {
        return this.fChildren != null && !this.fChildren.isEmpty();
    }

    public final TextEdit[] getChildren() {
        if (this.fChildren == null) {
            return EMPTY_ARRAY;
        }
        return this.fChildren.toArray(new TextEdit[this.fChildren.size()]);
    }

    public final int getChildrenSize() {
        if (this.fChildren == null) {
            return 0;
        }
        return this.fChildren.size();
    }

    public static IRegion getCoverage(TextEdit[] edits) {
        Assert.isTrue((edits != null && edits.length > 0 ? 1 : 0) != 0);
        int offset = Integer.MAX_VALUE;
        int end = Integer.MIN_VALUE;
        int deleted = 0;
        int i = 0;
        while (i < edits.length) {
            TextEdit edit = edits[i];
            if (edit.isDeleted()) {
                ++deleted;
            } else {
                offset = Math.min(offset, edit.getOffset());
                end = Math.max(end, edit.getExclusiveEnd());
            }
            ++i;
        }
        if (edits.length == deleted) {
            return null;
        }
        return new Region(offset, end - offset);
    }

    void aboutToBeAdded(TextEdit parent) {
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        this.toStringWithChildren(buffer, 0);
        return buffer.toString();
    }

    void internalToString(StringBuffer buffer, int indent) {
        int i = indent;
        while (i > 0) {
            buffer.append("  ");
            --i;
        }
        buffer.append("{");
        String name = this.getClass().getName();
        int index = name.lastIndexOf(46);
        if (index != -1) {
            buffer.append(name.substring(index + 1));
        } else {
            buffer.append(name);
        }
        buffer.append("} ");
        if (this.isDeleted()) {
            buffer.append("[deleted]");
        } else {
            buffer.append("[");
            buffer.append(this.getOffset());
            buffer.append(",");
            buffer.append(this.getLength());
            buffer.append("]");
        }
    }

    private void toStringWithChildren(StringBuffer buffer, int indent) {
        this.internalToString(buffer, indent);
        if (this.fChildren != null) {
            Iterator iterator = this.fChildren.iterator();
            while (iterator.hasNext()) {
                TextEdit child = (TextEdit)iterator.next();
                buffer.append('\n');
                child.toStringWithChildren(buffer, indent + 1);
            }
        }
    }

    public final TextEdit copy() {
        TextEditCopier copier = new TextEditCopier(this);
        return copier.perform();
    }

    protected abstract TextEdit doCopy();

    protected void postProcessCopy(TextEditCopier copier) {
    }

    public final void accept(TextEditVisitor visitor) {
        Assert.isNotNull((Object)visitor);
        visitor.preVisit(this);
        this.accept0(visitor);
        visitor.postVisit(this);
    }

    protected abstract void accept0(TextEditVisitor var1);

    protected final void acceptChildren(TextEditVisitor visitor) {
        if (this.fChildren == null) {
            return;
        }
        Iterator iterator = this.fChildren.iterator();
        while (iterator.hasNext()) {
            TextEdit curr = (TextEdit)iterator.next();
            curr.accept(visitor);
        }
    }

    public final UndoEdit apply(IDocument document, int style) throws MalformedTreeException, BadLocationException {
        try {
            TextEditProcessor processor = new TextEditProcessor(document, this, style);
            UndoEdit undoEdit = processor.performEdits();
            return undoEdit;
        }
        finally {
            this.fParent = null;
        }
    }

    public final UndoEdit apply(IDocument document) throws MalformedTreeException, BadLocationException {
        return this.apply(document, 3);
    }

    UndoEdit dispatchPerformEdits(TextEditProcessor processor) throws BadLocationException {
        return processor.executeDo();
    }

    void dispatchCheckIntegrity(TextEditProcessor processor) throws MalformedTreeException {
        processor.checkIntegrityDo();
    }

    void internalSetParent(TextEdit parent) {
        if (parent != null) {
            Assert.isTrue((this.fParent == null ? 1 : 0) != 0);
        }
        this.fParent = parent;
    }

    void internalSetOffset(int offset) {
        Assert.isTrue((offset >= 0 ? 1 : 0) != 0);
        this.fOffset = offset;
    }

    void internalSetLength(int length) {
        Assert.isTrue((length >= 0 ? 1 : 0) != 0);
        this.fLength = length;
    }

    List internalGetChildren() {
        return this.fChildren;
    }

    void internalSetChildren(List children) {
        this.fChildren = children;
    }

    void internalAdd(TextEdit child) throws MalformedTreeException {
        child.aboutToBeAdded(this);
        if (child.isDeleted()) {
            throw new MalformedTreeException(this, child, TextEditMessages.getString("TextEdit.deleted_edit"));
        }
        if (!this.covers(child)) {
            throw new MalformedTreeException(this, child, TextEditMessages.getString("TextEdit.range_outside"));
        }
        if (this.fChildren == null) {
            this.fChildren = new ArrayList(2);
        }
        int index = this.computeInsertionIndex(child);
        this.fChildren.add(index, child);
        child.internalSetParent(this);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private int computeInsertionIndex(TextEdit edit) throws MalformedTreeException {
        int size = this.fChildren.size();
        if (size == 0) {
            return 0;
        }
        int lastIndex = size - 1;
        TextEdit last = (TextEdit)this.fChildren.get(lastIndex);
        if (last.getExclusiveEnd() <= edit.getOffset()) {
            return size;
        }
        try {
            int index = Collections.binarySearch(this.fChildren, edit, INSERTION_COMPARATOR);
            if (index < 0) {
                return -index - 1;
            }
            while (true) {
                if (index >= lastIndex || INSERTION_COMPARATOR.compare(this.fChildren.get(index), this.fChildren.get(index + 1)) != 0) {
                    return index + 1;
                }
                ++index;
            }
        }
        catch (MalformedTreeException e) {
            e.setParent(this);
            throw e;
        }
    }

    void adjustOffset(int delta) {
        if (this.isDeleted()) {
            return;
        }
        this.fOffset += delta;
        Assert.isTrue((this.fOffset >= 0 ? 1 : 0) != 0);
    }

    void adjustLength(int delta) {
        if (this.isDeleted()) {
            return;
        }
        this.fLength += delta;
        Assert.isTrue((this.fLength >= 0 ? 1 : 0) != 0);
    }

    void markAsDeleted() {
        this.fOffset = -1;
        this.fLength = -1;
    }

    int traverseConsistencyCheck(TextEditProcessor processor, IDocument document, List sourceEdits) {
        int result = 0;
        if (this.fChildren != null) {
            int i = this.fChildren.size() - 1;
            while (i >= 0) {
                TextEdit child = (TextEdit)this.fChildren.get(i);
                result = Math.max(result, child.traverseConsistencyCheck(processor, document, sourceEdits));
                --i;
            }
        }
        if (processor.considerEdit(this)) {
            this.performConsistencyCheck(processor, document);
        }
        return result;
    }

    void performConsistencyCheck(TextEditProcessor processor, IDocument document) {
    }

    void traverseSourceComputation(TextEditProcessor processor, IDocument document) {
    }

    void performSourceComputation(TextEditProcessor processor, IDocument document) {
    }

    int traverseDocumentUpdating(TextEditProcessor processor, IDocument document) throws BadLocationException {
        int delta = 0;
        if (this.fChildren != null) {
            int i = this.fChildren.size() - 1;
            while (i >= 0) {
                TextEdit child = (TextEdit)this.fChildren.get(i);
                delta += child.traverseDocumentUpdating(processor, document);
                this.childDocumentUpdated();
                --i;
            }
        }
        if (processor.considerEdit(this)) {
            int r;
            if (delta != 0) {
                this.adjustLength(delta);
            }
            if ((r = this.performDocumentUpdating(document)) != 0) {
                this.adjustLength(r);
            }
            delta += r;
        }
        return delta;
    }

    protected void childDocumentUpdated() {
    }

    abstract int performDocumentUpdating(IDocument var1) throws BadLocationException;

    int traverseRegionUpdating(TextEditProcessor processor, IDocument document, int accumulatedDelta, boolean delete) {
        this.performRegionUpdating(accumulatedDelta, delete);
        if (this.fChildren != null) {
            boolean childDelete = delete || this.deleteChildren();
            Iterator iter = this.fChildren.iterator();
            while (iter.hasNext()) {
                TextEdit child = (TextEdit)iter.next();
                accumulatedDelta = child.traverseRegionUpdating(processor, document, accumulatedDelta, childDelete);
                this.childRegionUpdated();
            }
        }
        return accumulatedDelta + this.fDelta;
    }

    protected void childRegionUpdated() {
    }

    void performRegionUpdating(int accumulatedDelta, boolean delete) {
        if (delete) {
            this.markAsDeleted();
        } else {
            this.adjustOffset(accumulatedDelta);
        }
    }

    abstract boolean deleteChildren();

    void internalMoveTree(int delta) {
        this.adjustOffset(delta);
        if (this.fChildren != null) {
            Iterator iter = this.fChildren.iterator();
            while (iter.hasNext()) {
                ((TextEdit)iter.next()).internalMoveTree(delta);
            }
        }
    }

    void deleteTree() {
        this.markAsDeleted();
        if (this.fChildren != null) {
            Iterator iter = this.fChildren.iterator();
            while (iter.hasNext()) {
                TextEdit child = (TextEdit)iter.next();
                child.deleteTree();
            }
        }
    }

    private static class InsertionComparator
    implements Comparator {
        private InsertionComparator() {
        }

        public int compare(Object o1, Object o2) throws MalformedTreeException {
            TextEdit edit1 = (TextEdit)o1;
            TextEdit edit2 = (TextEdit)o2;
            int offset1 = edit1.getOffset();
            int length1 = edit1.getLength();
            int offset2 = edit2.getOffset();
            int length2 = edit2.getLength();
            if (offset1 == offset2 && length1 == 0 && length2 == 0) {
                return 0;
            }
            if (offset1 + length1 <= offset2) {
                return -1;
            }
            if (offset2 + length2 <= offset1) {
                return 1;
            }
            throw new MalformedTreeException(null, edit1, TextEditMessages.getString("TextEdit.overlapping"));
        }
    }
}

