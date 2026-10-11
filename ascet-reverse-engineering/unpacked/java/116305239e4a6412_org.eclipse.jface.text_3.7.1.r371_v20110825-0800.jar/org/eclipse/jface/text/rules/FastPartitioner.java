/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DefaultPositionUpdater
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.DocumentRewriteSession
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentPartitioner
 *  org.eclipse.jface.text.IDocumentPartitionerExtension
 *  org.eclipse.jface.text.IDocumentPartitionerExtension2
 *  org.eclipse.jface.text.IDocumentPartitionerExtension3
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
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.DocumentRewriteSession;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentPartitioner;
import org.eclipse.jface.text.IDocumentPartitionerExtension;
import org.eclipse.jface.text.IDocumentPartitionerExtension2;
import org.eclipse.jface.text.IDocumentPartitionerExtension3;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.TypedPosition;
import org.eclipse.jface.text.TypedRegion;
import org.eclipse.jface.text.rules.IPartitionTokenScanner;
import org.eclipse.jface.text.rules.IToken;

public class FastPartitioner
implements IDocumentPartitioner,
IDocumentPartitionerExtension,
IDocumentPartitionerExtension2,
IDocumentPartitionerExtension3 {
    private static final String CONTENT_TYPES_CATEGORY = "__content_types_category";
    protected final IPartitionTokenScanner fScanner;
    protected final String[] fLegalContentTypes;
    protected IDocument fDocument;
    protected int fPreviousDocumentLength;
    protected final DefaultPositionUpdater fPositionUpdater;
    protected int fStartOffset;
    protected int fEndOffset;
    protected int fDeleteOffset;
    private final String fPositionCategory;
    private DocumentRewriteSession fActiveRewriteSession;
    private boolean fIsInitialized = false;
    private Position[] fCachedPositions = null;
    private static final boolean CHECK_CACHE_CONSISTENCY = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.jface.text/debug/FastPartitioner/PositionCache"));

    public FastPartitioner(IPartitionTokenScanner scanner, String[] legalContentTypes) {
        this.fScanner = scanner;
        this.fLegalContentTypes = TextUtilities.copy((String[])legalContentTypes);
        this.fPositionCategory = CONTENT_TYPES_CATEGORY + this.hashCode();
        this.fPositionUpdater = new DefaultPositionUpdater(this.fPositionCategory);
    }

    public String[] getManagingPositionCategories() {
        return new String[]{this.fPositionCategory};
    }

    public final void connect(IDocument document) {
        this.connect(document, false);
    }

    public void connect(IDocument document, boolean delayInitialization) {
        Assert.isNotNull((Object)document);
        Assert.isTrue((!document.containsPositionCategory(this.fPositionCategory) ? 1 : 0) != 0);
        this.fDocument = document;
        this.fDocument.addPositionCategory(this.fPositionCategory);
        this.fIsInitialized = false;
        if (!delayInitialization) {
            this.checkInitialization();
        }
    }

    protected final void checkInitialization() {
        if (!this.fIsInitialized) {
            this.initialize();
        }
    }

    protected void initialize() {
        this.fIsInitialized = true;
        this.clearPositionCache();
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
        if (this.fIsInitialized) {
            Assert.isTrue((e.getDocument() == this.fDocument ? 1 : 0) != 0);
            this.fPreviousDocumentLength = e.getDocument().getLength();
            this.fStartOffset = -1;
            this.fEndOffset = -1;
            this.fDeleteOffset = -1;
        }
    }

    public final boolean documentChanged(DocumentEvent e) {
        if (this.fIsInitialized) {
            IRegion region = this.documentChanged2(e);
            return region != null;
        }
        return false;
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

    /*
     * WARNING - Removed back jump from a try to a catch block - possible behaviour change.
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public IRegion documentChanged2(DocumentEvent e) {
        if (!this.fIsInitialized) {
            return null;
        }
        try {
            Assert.isTrue((boolean)(e.getDocument() == this.fDocument));
            category = this.getPositions();
            line = this.fDocument.getLineInformationOfOffset(e.getOffset());
            reparseStart = line.getOffset();
            partitionStart = -1;
            contentType = null;
            newLength = e.getText() == null ? 0 : e.getText().length();
            first = this.fDocument.computeIndexInCategory(this.fPositionCategory, reparseStart);
            if (first > 0) {
                partition = (TypedPosition)category[first - 1];
                if (partition.includes(reparseStart)) {
                    partitionStart = partition.getOffset();
                    contentType = partition.getType();
                    if (e.getOffset() == partition.getOffset() + partition.getLength()) {
                        reparseStart = partitionStart;
                    }
                    --first;
                } else if (reparseStart == e.getOffset() && reparseStart == partition.getOffset() + partition.getLength()) {
                    partitionStart = partition.getOffset();
                    contentType = partition.getType();
                    reparseStart = partitionStart;
                    --first;
                } else {
                    partitionStart = partition.getOffset() + partition.getLength();
                    contentType = "__dftl_partition_content_type";
                }
            }
            this.fPositionUpdater.update(e);
            i = first;
            while (i < category.length) {
                p = category[i];
                if (p.isDeleted) {
                    this.rememberDeletedOffset(e.getOffset());
                    break;
                }
                ++i;
            }
            this.clearPositionCache();
            category = this.getPositions();
            this.fScanner.setPartialRange(this.fDocument, reparseStart, this.fDocument.getLength() - reparseStart, contentType, partitionStart);
            behindLastScannedPosition = reparseStart;
            token = this.fScanner.nextToken();
            if (true) ** GOTO lbl69
        }
        catch (BadPositionCategoryException v0) {
            this.clearPositionCache();
            return this.createRegion();
        }
        catch (BadLocationException v1) {
            try {
                return this.createRegion();
            }
            catch (Throwable var15_18) {
                throw var15_18;
            }
            finally {
                this.clearPositionCache();
            }
        }
        {
            do {
                ++first;
                if (true) ** GOTO lbl67
                block13: do {
                    try {
                        this.fDocument.addPosition(this.fPositionCategory, (Position)new TypedPosition(start, length, contentType));
                        this.rememberRegion(start, length);
                    }
                    catch (BadPositionCategoryException v2) {
                    }
                    catch (BadLocationException v3) {}
                    token = this.fScanner.nextToken();
lbl69:
                    // 2 sources

                    while (true) {
                        block26: {
                            if (!token.isEOF()) break block26;
                            first = this.fDocument.computeIndexInCategory(this.fPositionCategory, behindLastScannedPosition);
                            this.clearPositionCache();
                            category = this.getPositions();
                            if (true) ** GOTO lbl100
                        }
                        contentType = this.getTokenContentType(token);
                        if (this.isSupportedContentType(contentType)) break;
                        token = this.fScanner.nextToken();
                    }
                    start = this.fScanner.getTokenOffset();
                    length = this.fScanner.getTokenLength();
                    behindLastScannedPosition = start + length;
                    lastScannedPosition = behindLastScannedPosition - 1;
                    while (first < category.length) {
                        p = (TypedPosition)category[first];
                        if (lastScannedPosition < p.offset + p.length && (!p.overlapsWith(start, length) || this.fDocument.containsPosition(this.fPositionCategory, start, length) && contentType.equals(p.getType()))) continue block13;
                        this.rememberRegion(p.offset, p.length);
                        this.fDocument.removePosition(this.fPositionCategory, (Position)p);
                        ++first;
                    }
                } while (!this.fDocument.containsPosition(this.fPositionCategory, start, length));
            } while (lastScannedPosition < e.getOffset() + newLength);
            var16_17 = this.createRegion();
            this.clearPositionCache();
            return var16_17;
            do {
                p = (TypedPosition)category[first++];
                this.fDocument.removePosition(this.fPositionCategory, (Position)p);
                this.rememberRegion(p.offset, p.length);
lbl100:
                // 2 sources

            } while (first < category.length);
        }
        this.clearPositionCache();
        return this.createRegion();
    }

    protected TypedPosition findClosestPosition(int offset) {
        Position[] category;
        int index;
        block6: {
            index = this.fDocument.computeIndexInCategory(this.fPositionCategory, offset);
            category = this.getPositions();
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
        this.checkInitialization();
        TypedPosition p = this.findClosestPosition(offset);
        if (p != null && p.includes(offset)) {
            return p.getType();
        }
        return "__dftl_partition_content_type";
    }

    public ITypedRegion getPartition(int offset) {
        this.checkInitialization();
        try {
            Position[] category = this.getPositions();
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

    public final ITypedRegion[] computePartitioning(int offset, int length) {
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
        this.checkInitialization();
        ArrayList<TypedRegion> list = new ArrayList<TypedRegion>();
        try {
            int end;
            int start;
            int gapOffset;
            int endOffset = offset + length;
            Position[] category = this.getPositions();
            TypedPosition previous = null;
            TypedPosition current = null;
            Position gap = new Position(0);
            int startIndex = this.getFirstIndexEndingAfterOffset(category, offset);
            int endIndex = this.getFirstIndexStartingAfterOffset(category, endOffset);
            int i = startIndex;
            while (i < endIndex) {
                current = (TypedPosition)category[i];
                gapOffset = previous != null ? previous.getOffset() + previous.getLength() : 0;
                gap.setOffset(gapOffset);
                gap.setLength(current.getOffset() - gapOffset);
                if (includeZeroLengthPartitions && this.overlapsOrTouches(gap, offset, length) || gap.getLength() > 0 && gap.overlapsWith(offset, length)) {
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
                gap.setOffset(gapOffset);
                gap.setLength(this.fDocument.getLength() - gapOffset);
                if (includeZeroLengthPartitions && this.overlapsOrTouches(gap, offset, length) || gap.getLength() > 0 && gap.overlapsWith(offset, length)) {
                    start = Math.max(offset, gapOffset);
                    end = Math.min(endOffset, this.fDocument.getLength());
                    list.add(new TypedRegion(start, end - start, "__dftl_partition_content_type"));
                }
            }
            if (list.isEmpty()) {
                list.add(new TypedRegion(offset, length, "__dftl_partition_content_type"));
            }
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
            this.clearPositionCache();
        }
        catch (RuntimeException ex) {
            this.clearPositionCache();
            throw ex;
        }
        TypedRegion[] result = new TypedRegion[list.size()];
        list.toArray(result);
        return result;
    }

    private boolean overlapsOrTouches(Position gap, int offset, int length) {
        return gap.getOffset() <= offset + length && offset <= gap.getOffset() + gap.getLength();
    }

    private int getFirstIndexEndingAfterOffset(Position[] positions, int offset) {
        int i = -1;
        int j = positions.length;
        while (j - i > 1) {
            int k = i + j >> 1;
            Position p = positions[k];
            if (p.getOffset() + p.getLength() > offset) {
                j = k;
                continue;
            }
            i = k;
        }
        return j;
    }

    private int getFirstIndexStartingAfterOffset(Position[] positions, int offset) {
        int i = -1;
        int j = positions.length;
        while (j - i > 1) {
            int k = i + j >> 1;
            Position p = positions[k];
            if (p.getOffset() >= offset) {
                j = k;
                continue;
            }
            i = k;
        }
        return j;
    }

    public void startRewriteSession(DocumentRewriteSession session) throws IllegalStateException {
        if (this.fActiveRewriteSession != null) {
            throw new IllegalStateException();
        }
        this.fActiveRewriteSession = session;
    }

    public void stopRewriteSession(DocumentRewriteSession session) {
        if (this.fActiveRewriteSession == session) {
            this.flushRewriteSession();
        }
    }

    public DocumentRewriteSession getActiveRewriteSession() {
        return this.fActiveRewriteSession;
    }

    protected final void flushRewriteSession() {
        this.fActiveRewriteSession = null;
        try {
            this.fDocument.removePositionCategory(this.fPositionCategory);
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
        this.fDocument.addPositionCategory(this.fPositionCategory);
        this.fIsInitialized = false;
    }

    protected final void clearPositionCache() {
        if (this.fCachedPositions != null) {
            this.fCachedPositions = null;
        }
    }

    protected final Position[] getPositions() throws BadPositionCategoryException {
        if (this.fCachedPositions == null) {
            this.fCachedPositions = this.fDocument.getPositions(this.fPositionCategory);
        } else if (CHECK_CACHE_CONSISTENCY) {
            Position[] positions = this.fDocument.getPositions(this.fPositionCategory);
            int len = Math.min(positions.length, this.fCachedPositions.length);
            int i = 0;
            while (i < len) {
                if (!positions[i].equals((Object)this.fCachedPositions[i])) {
                    System.err.println("FastPartitioner.getPositions(): cached position is not up to date: from document: " + this.toString(positions[i]) + " in cache: " + this.toString(this.fCachedPositions[i]));
                }
                ++i;
            }
            i = len;
            while (i < positions.length) {
                System.err.println("FastPartitioner.getPositions(): new position in document: " + this.toString(positions[i]));
                ++i;
            }
            i = len;
            while (i < this.fCachedPositions.length) {
                System.err.println("FastPartitioner.getPositions(): stale position in cache: " + this.toString(this.fCachedPositions[i]));
                ++i;
            }
        }
        return this.fCachedPositions;
    }

    private String toString(Position position) {
        return "P[" + position.getOffset() + "+" + position.getLength() + "]";
    }
}

