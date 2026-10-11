/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DefaultPositionUpdater
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentPartitioner
 *  org.eclipse.jface.text.IDocumentPartitionerExtension
 *  org.eclipse.jface.text.IDocumentPartitionerExtension2
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITypedRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.text.TypedPosition
 *  org.eclipse.jface.text.TypedRegion
 */
package org.eclipse.jface.text.rules;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentPartitioner;
import org.eclipse.jface.text.IDocumentPartitionerExtension;
import org.eclipse.jface.text.IDocumentPartitionerExtension2;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.TypedPosition;
import org.eclipse.jface.text.TypedRegion;
import org.eclipse.jface.text.rules.IToken;
import org.eclipse.jface.text.rules.RuleBasedScanner;

public class RuleBasedPartitioner
implements IDocumentPartitioner,
IDocumentPartitionerExtension,
IDocumentPartitionerExtension2 {
    public static final String CONTENT_TYPES_CATEGORY = "__content_types_category";
    protected RuleBasedScanner fScanner;
    protected String[] fLegalContentTypes;
    protected IDocument fDocument;
    protected int fPreviousDocumentLength;
    protected DefaultPositionUpdater fPositionUpdater;
    protected int fStartOffset;
    protected int fEndOffset;
    protected int fDeleteOffset;
    private String fPositionCategory;

    public RuleBasedPartitioner(RuleBasedScanner scanner, String[] legalContentTypes) {
        this.fScanner = scanner;
        this.fLegalContentTypes = TextUtilities.copy((String[])legalContentTypes);
        this.fPositionCategory = CONTENT_TYPES_CATEGORY + this.hashCode();
        this.fPositionUpdater = new DefaultPositionUpdater(this.fPositionCategory);
    }

    public String[] getManagingPositionCategories() {
        return new String[]{this.fPositionCategory};
    }

    public void connect(IDocument document) {
        Assert.isNotNull((Object)document);
        Assert.isTrue((!document.containsPositionCategory(this.fPositionCategory) ? 1 : 0) != 0);
        this.fDocument = document;
        this.fDocument.addPositionCategory(this.fPositionCategory);
        this.initialize();
    }

    protected void initialize() {
        this.fScanner.setRange(this.fDocument, 0, this.fDocument.getLength());
        try {
            IToken token = this.fScanner.nextToken();
            while (!token.isEOF()) {
                String contentType = this.getTokenContentType(token);
                if (this.isSupportedContentType(contentType)) {
                    TypedPosition p = new TypedPosition(this.fScanner.getTokenOffset(), this.fScanner.getTokenLength(), contentType);
                    this.fDocument.addPosition(this.fPositionCategory, (Position)p);
                }
                token = this.fScanner.nextToken();
            }
        }
        catch (BadLocationException badLocationException) {
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
    }

    public void disconnect() {
        Assert.isTrue((boolean)this.fDocument.containsPositionCategory(this.fPositionCategory));
        try {
            this.fDocument.removePositionCategory(this.fPositionCategory);
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
    }

    public void documentAboutToBeChanged(DocumentEvent e) {
        Assert.isTrue((e.getDocument() == this.fDocument ? 1 : 0) != 0);
        this.fPreviousDocumentLength = e.getDocument().getLength();
        this.fStartOffset = -1;
        this.fEndOffset = -1;
        this.fDeleteOffset = -1;
    }

    public boolean documentChanged(DocumentEvent e) {
        IRegion region = this.documentChanged2(e);
        return region != null;
    }

    private void rememberRegion(int offset, int length) {
        if (this.fStartOffset == -1) {
            this.fStartOffset = offset;
        } else if (offset < this.fStartOffset) {
            this.fStartOffset = offset;
        }
        int endOffset = offset + length;
        if (this.fEndOffset == -1) {
            this.fEndOffset = endOffset;
        } else if (endOffset > this.fEndOffset) {
            this.fEndOffset = endOffset;
        }
    }

    private void rememberDeletedOffset(int offset) {
        this.fDeleteOffset = offset;
    }

    private IRegion createRegion() {
        if (this.fDeleteOffset == -1) {
            if (this.fStartOffset == -1 || this.fEndOffset == -1) {
                return null;
            }
            return new Region(this.fStartOffset, this.fEndOffset - this.fStartOffset);
        }
        if (this.fStartOffset == -1 || this.fEndOffset == -1) {
            return new Region(this.fDeleteOffset, 0);
        }
        int offset = Math.min(this.fDeleteOffset, this.fStartOffset);
        int endOffset = Math.max(this.fDeleteOffset, this.fEndOffset);
        return new Region(offset, endOffset - offset);
    }

    public IRegion documentChanged2(DocumentEvent e) {
        try {
            IDocument d = e.getDocument();
            Position[] category = d.getPositions(this.fPositionCategory);
            int first = 0;
            int reparseStart = 0;
            int originalSize = category.length;
            if (originalSize > 0) {
                first = d.computeIndexInCategory(this.fPositionCategory, e.getOffset());
                Position p = null;
                while (--first >= 0 && ((p = category[first]).overlapsWith(e.getOffset(), e.getLength()) || e.getOffset() == this.fPreviousDocumentLength && p.getOffset() + p.getLength() == this.fPreviousDocumentLength)) {
                }
                this.fPositionUpdater.update(e);
                int i = 0;
                while (i < category.length) {
                    p = category[i];
                    if (p.isDeleted) {
                        this.rememberDeletedOffset(e.getOffset());
                        break;
                    }
                    ++i;
                }
                category = d.getPositions(this.fPositionCategory);
                if (first >= 0) {
                    p = category[first];
                    reparseStart = p.getOffset() + p.getLength();
                }
                ++first;
            }
            this.fScanner.setRange(d, reparseStart, d.getLength() - reparseStart);
            int lastScannedPosition = reparseStart;
            IToken token = this.fScanner.nextToken();
            while (!token.isEOF()) {
                String contentType = this.getTokenContentType(token);
                if (!this.isSupportedContentType(contentType)) {
                    token = this.fScanner.nextToken();
                    continue;
                }
                int start = this.fScanner.getTokenOffset();
                int length = this.fScanner.getTokenLength();
                lastScannedPosition = start + length - 1;
                while (first < category.length) {
                    TypedPosition p = (TypedPosition)category[first];
                    if (lastScannedPosition < p.offset + p.length && (!p.overlapsWith(start, length) || d.containsPosition(this.fPositionCategory, start, length) && contentType.equals(p.getType()))) break;
                    this.rememberRegion(p.offset, p.length);
                    d.removePosition(this.fPositionCategory, (Position)p);
                    ++first;
                }
                if (d.containsPosition(this.fPositionCategory, start, length)) {
                    return this.createRegion();
                }
                try {
                    d.addPosition(this.fPositionCategory, (Position)new TypedPosition(start, length, contentType));
                    this.rememberRegion(start, length);
                }
                catch (BadPositionCategoryException badPositionCategoryException) {
                }
                catch (BadLocationException badLocationException) {}
                token = this.fScanner.nextToken();
            }
            if (lastScannedPosition != reparseStart) {
                ++lastScannedPosition;
            }
            first = d.computeIndexInCategory(this.fPositionCategory, lastScannedPosition);
            while (first < category.length) {
                TypedPosition p = (TypedPosition)category[first++];
                d.removePosition(this.fPositionCategory, (Position)p);
                this.rememberRegion(p.offset, p.length);
            }
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
        }
        catch (BadLocationException badLocationException) {}
        return this.createRegion();
    }

    protected TypedPosition findClosestPosition(int offset) {
        Position[] category;
        int index;
        block6: {
            index = this.fDocument.computeIndexInCategory(this.fPositionCategory, offset);
            category = this.fDocument.getPositions(this.fPositionCategory);
            if (category.length != 0) break block6;
            return null;
        }
        try {
            if (index < category.length && offset == category[index].offset) {
                return (TypedPosition)category[index];
            }
            if (index > 0) {
                --index;
            }
            return (TypedPosition)category[index];
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
        }
        catch (BadLocationException badLocationException) {}
        return null;
    }

    public String getContentType(int offset) {
        TypedPosition p = this.findClosestPosition(offset);
        if (p != null && p.includes(offset)) {
            return p.getType();
        }
        return "__dftl_partition_content_type";
    }

    public ITypedRegion getPartition(int offset) {
        try {
            Position[] category = this.fDocument.getPositions(this.fPositionCategory);
            if (category == null || category.length == 0) {
                return new TypedRegion(0, this.fDocument.getLength(), "__dftl_partition_content_type");
            }
            int index = this.fDocument.computeIndexInCategory(this.fPositionCategory, offset);
            if (index < category.length) {
                TypedPosition next = (TypedPosition)category[index];
                if (offset == next.offset) {
                    return new TypedRegion(next.getOffset(), next.getLength(), next.getType());
                }
                if (index == 0) {
                    return new TypedRegion(0, next.offset, "__dftl_partition_content_type");
                }
                TypedPosition previous = (TypedPosition)category[index - 1];
                if (previous.includes(offset)) {
                    return new TypedRegion(previous.getOffset(), previous.getLength(), previous.getType());
                }
                int endOffset = previous.getOffset() + previous.getLength();
                return new TypedRegion(endOffset, next.getOffset() - endOffset, "__dftl_partition_content_type");
            }
            TypedPosition previous = (TypedPosition)category[category.length - 1];
            if (previous.includes(offset)) {
                return new TypedRegion(previous.getOffset(), previous.getLength(), previous.getType());
            }
            int endOffset = previous.getOffset() + previous.getLength();
            return new TypedRegion(endOffset, this.fDocument.getLength() - endOffset, "__dftl_partition_content_type");
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
        }
        catch (BadLocationException badLocationException) {}
        return new TypedRegion(0, this.fDocument.getLength(), "__dftl_partition_content_type");
    }

    public ITypedRegion[] computePartitioning(int offset, int length) {
        return this.computePartitioning(offset, length, false);
    }

    public String[] getLegalContentTypes() {
        return TextUtilities.copy((String[])this.fLegalContentTypes);
    }

    protected boolean isSupportedContentType(String contentType) {
        if (contentType != null) {
            int i = 0;
            while (i < this.fLegalContentTypes.length) {
                if (this.fLegalContentTypes[i].equals(contentType)) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    protected String getTokenContentType(IToken token) {
        Object data = token.getData();
        if (data instanceof String) {
            return (String)data;
        }
        return null;
    }

    public String getContentType(int offset, boolean preferOpenPartitions) {
        return this.getPartition(offset, preferOpenPartitions).getType();
    }

    public ITypedRegion getPartition(int offset, boolean preferOpenPartitions) {
        ITypedRegion region = this.getPartition(offset);
        if (preferOpenPartitions && region.getOffset() == offset && !region.getType().equals("__dftl_partition_content_type")) {
            if (offset > 0 && (region = this.getPartition(offset - 1)).getType().equals("__dftl_partition_content_type")) {
                return region;
            }
            return new TypedRegion(offset, 0, "__dftl_partition_content_type");
        }
        return region;
    }

    public ITypedRegion[] computePartitioning(int offset, int length, boolean includeZeroLengthPartitions) {
        ArrayList<TypedRegion> list = new ArrayList<TypedRegion>();
        try {
            int end;
            int start;
            int gapOffset;
            int endOffset = offset + length;
            Position[] category = this.fDocument.getPositions(this.fPositionCategory);
            TypedPosition previous = null;
            TypedPosition current = null;
            Position gap = null;
            int i = 0;
            while (i < category.length) {
                current = (TypedPosition)category[i];
                gapOffset = previous != null ? previous.getOffset() + previous.getLength() : 0;
                gap = new Position(gapOffset, current.getOffset() - gapOffset);
                if ((includeZeroLengthPartitions || gap.getLength() > 0) && gap.overlapsWith(offset, length)) {
                    start = Math.max(offset, gapOffset);
                    end = Math.min(endOffset, gap.getOffset() + gap.getLength());
                    list.add(new TypedRegion(start, end - start, "__dftl_partition_content_type"));
                }
                if (current.overlapsWith(offset, length)) {
                    start = Math.max(offset, current.getOffset());
                    end = Math.min(endOffset, current.getOffset() + current.getLength());
                    list.add(new TypedRegion(start, end - start, current.getType()));
                }
                previous = current;
                ++i;
            }
            if (previous != null) {
                gapOffset = previous.getOffset() + previous.getLength();
                gap = new Position(gapOffset, this.fDocument.getLength() - gapOffset);
                if ((includeZeroLengthPartitions || gap.getLength() > 0) && (includeZeroLengthPartitions && offset + length == gapOffset && gap.length == 0 || gap.overlapsWith(offset, length))) {
                    start = Math.max(offset, gapOffset);
                    end = Math.min(endOffset, this.fDocument.getLength());
                    list.add(new TypedRegion(start, end - start, "__dftl_partition_content_type"));
                }
            }
            if (list.isEmpty()) {
                list.add(new TypedRegion(offset, length, "__dftl_partition_content_type"));
            }
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
        TypedRegion[] result = new TypedRegion[list.size()];
        list.toArray(result);
        return result;
    }
}

