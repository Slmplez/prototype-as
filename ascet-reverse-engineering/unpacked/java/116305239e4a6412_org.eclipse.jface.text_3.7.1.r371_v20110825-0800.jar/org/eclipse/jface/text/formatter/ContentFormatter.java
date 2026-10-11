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
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITypedRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.text.TypedPosition
 */
package org.eclipse.jface.text.formatter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.TypedPosition;
import org.eclipse.jface.text.formatter.IContentFormatter;
import org.eclipse.jface.text.formatter.IFormattingStrategy;

public class ContentFormatter
implements IContentFormatter {
    private static final String PARTITIONING = "__formatter_partitioning";
    private Map fStrategies;
    private boolean fIsPartitionAware = true;
    private String[] fPartitionManagingCategories;
    private List fOverlappingPositionReferences;
    private IPositionUpdater fPartitioningUpdater;
    private String fPartitioning = "__dftl_partitioning";
    private IDocument fDocument;
    private String[] fExternalPartitonManagingCategories;
    private boolean fNeedsComputation = true;

    public void setFormattingStrategy(IFormattingStrategy strategy, String contentType) {
        Assert.isNotNull((Object)contentType);
        if (this.fStrategies == null) {
            this.fStrategies = new HashMap();
        }
        if (strategy == null) {
            this.fStrategies.remove(contentType);
        } else {
            this.fStrategies.put(contentType, strategy);
        }
    }

    public void setPartitionManagingPositionCategories(String[] categories) {
        this.fExternalPartitonManagingCategories = TextUtilities.copy((String[])categories);
    }

    public void setDocumentPartitioning(String partitioning) {
        this.fPartitioning = partitioning;
    }

    public void enablePartitionAwareFormatting(boolean enable) {
        this.fIsPartitionAware = enable;
    }

    public IFormattingStrategy getFormattingStrategy(String contentType) {
        Assert.isNotNull((Object)contentType);
        if (this.fStrategies == null) {
            return null;
        }
        return (IFormattingStrategy)this.fStrategies.get(contentType);
    }

    public void format(IDocument document, IRegion region) {
        this.fNeedsComputation = true;
        this.fDocument = document;
        try {
            if (this.fIsPartitionAware) {
                this.formatPartitions(region);
            } else {
                this.formatRegion(region);
            }
        }
        finally {
            this.fNeedsComputation = true;
            this.fDocument = null;
        }
    }

    private void formatPartitions(IRegion region) {
        this.addPartitioningUpdater();
        try {
            TypedPosition[] ranges = this.getPartitioning(region);
            if (ranges != null) {
                this.start(ranges, this.getIndentation(region.getOffset()));
                this.format(ranges);
                this.stop(ranges);
            }
        }
        catch (BadLocationException badLocationException) {}
        this.removePartitioningUpdater();
    }

    private void formatRegion(IRegion region) {
        IFormattingStrategy strategy = this.getFormattingStrategy("__dftl_partition_content_type");
        if (strategy != null) {
            strategy.formatterStarts(this.getIndentation(region.getOffset()));
            this.format(strategy, new TypedPosition(region.getOffset(), region.getLength(), "__dftl_partition_content_type"));
            strategy.formatterStops();
        }
    }

    private TypedPosition[] getPartitioning(IRegion region) throws BadLocationException {
        ITypedRegion[] regions = TextUtilities.computePartitioning((IDocument)this.fDocument, (String)this.fPartitioning, (int)region.getOffset(), (int)region.getLength(), (boolean)false);
        TypedPosition[] positions = new TypedPosition[regions.length];
        int i = 0;
        while (i < regions.length) {
            positions[i] = new TypedPosition(regions[i]);
            try {
                this.fDocument.addPosition(PARTITIONING, (Position)positions[i]);
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
            ++i;
        }
        return positions;
    }

    private void start(TypedPosition[] regions, String indentation) {
        int i = 0;
        while (i < regions.length) {
            IFormattingStrategy s = this.getFormattingStrategy(regions[i].getType());
            if (s != null) {
                s.formatterStarts(indentation);
            }
            ++i;
        }
    }

    private void format(TypedPosition[] ranges) {
        int i = 0;
        while (i < ranges.length) {
            IFormattingStrategy s = this.getFormattingStrategy(ranges[i].getType());
            if (s != null) {
                this.format(s, ranges[i]);
            }
            ++i;
        }
    }

    private void format(IFormattingStrategy strategy, TypedPosition region) {
        try {
            int offset = region.getOffset();
            int length = region.getLength();
            String content = this.fDocument.get(offset, length);
            int[] positions = this.getAffectedPositions(offset, length);
            String formatted = strategy.format(content, this.isLineStart(offset), this.getIndentation(offset), positions);
            if (formatted != null && !formatted.equals(content)) {
                RemoveAffectedPositions first = new RemoveAffectedPositions();
                this.fDocument.insertPositionUpdater((IPositionUpdater)first, 0);
                UpdateAffectedPositions last = new UpdateAffectedPositions(positions, offset);
                this.fDocument.addPositionUpdater((IPositionUpdater)last);
                this.fDocument.replace(offset, length, formatted);
                this.fDocument.removePositionUpdater((IPositionUpdater)first);
                this.fDocument.removePositionUpdater((IPositionUpdater)last);
            }
        }
        catch (BadLocationException badLocationException) {}
    }

    private void stop(TypedPosition[] regions) {
        int i = 0;
        while (i < regions.length) {
            IFormattingStrategy s = this.getFormattingStrategy(regions[i].getType());
            if (s != null) {
                s.formatterStops();
            }
            ++i;
        }
    }

    private void addPartitioningUpdater() {
        this.fPartitioningUpdater = new NonDeletingPositionUpdater(PARTITIONING);
        this.fDocument.addPositionCategory(PARTITIONING);
        this.fDocument.addPositionUpdater(this.fPartitioningUpdater);
    }

    private void removePartitioningUpdater() {
        try {
            this.fDocument.removePositionUpdater(this.fPartitioningUpdater);
            this.fDocument.removePositionCategory(PARTITIONING);
            this.fPartitioningUpdater = null;
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
    }

    private String[] getPartitionManagingCategories() {
        if (this.fNeedsComputation) {
            this.fNeedsComputation = false;
            this.fPartitionManagingCategories = TextUtilities.computePartitionManagingCategories((IDocument)this.fDocument);
            if (this.fPartitionManagingCategories == null) {
                this.fPartitionManagingCategories = this.fExternalPartitonManagingCategories;
            }
        }
        return this.fPartitionManagingCategories;
    }

    private boolean ignoreCategory(String category) {
        if (PARTITIONING.equals(category)) {
            return true;
        }
        String[] categories = this.getPartitionManagingCategories();
        if (categories != null) {
            int i = 0;
            while (i < categories.length) {
                if (categories[i].equals(category)) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    private void determinePositionsToUpdate(int offset, int length) {
        String[] categories = this.fDocument.getPositionCategories();
        if (categories != null) {
            int i = 0;
            while (i < categories.length) {
                if (!this.ignoreCategory(categories[i])) {
                    try {
                        Position[] positions = this.fDocument.getPositions(categories[i]);
                        int j = 0;
                        while (j < positions.length) {
                            Position p = positions[j];
                            if (p.overlapsWith(offset, length)) {
                                if (offset < p.getOffset()) {
                                    this.fOverlappingPositionReferences.add(new PositionReference(p, true, categories[i]));
                                }
                                if (p.getOffset() + p.getLength() < offset + length) {
                                    this.fOverlappingPositionReferences.add(new PositionReference(p, false, categories[i]));
                                }
                            }
                            ++j;
                        }
                    }
                    catch (BadPositionCategoryException badPositionCategoryException) {}
                }
                ++i;
            }
        }
    }

    private int[] getAffectedPositions(int offset, int length) {
        this.fOverlappingPositionReferences = new ArrayList();
        this.determinePositionsToUpdate(offset, length);
        Collections.sort(this.fOverlappingPositionReferences);
        int[] positions = new int[this.fOverlappingPositionReferences.size()];
        int i = 0;
        while (i < positions.length) {
            PositionReference r = (PositionReference)this.fOverlappingPositionReferences.get(i);
            positions[i] = r.getCharacterPosition() - offset;
            ++i;
        }
        return positions;
    }

    private void removeAffectedPositions(IDocument document) {
        int size = this.fOverlappingPositionReferences.size();
        int i = 0;
        while (i < size) {
            PositionReference r = (PositionReference)this.fOverlappingPositionReferences.get(i);
            try {
                document.removePosition(r.getCategory(), r.getPosition());
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
            ++i;
        }
    }

    protected void updateAffectedPositions(IDocument document, int[] positions, int offset) {
        if (document != this.fDocument) {
            return;
        }
        if (positions.length == 0) {
            return;
        }
        int i = 0;
        while (i < positions.length) {
            PositionReference r = (PositionReference)this.fOverlappingPositionReferences.get(i);
            if (r.refersToOffset()) {
                r.setOffset(offset + positions[i]);
            } else {
                r.setLength(offset + positions[i] - r.getOffset());
            }
            Position p = r.getPosition();
            String category = r.getCategory();
            if (!document.containsPosition(category, p.offset, p.length)) {
                try {
                    if (this.positionAboutToBeAdded(document, category, p)) {
                        document.addPosition(r.getCategory(), p);
                    }
                }
                catch (BadPositionCategoryException badPositionCategoryException) {
                }
                catch (BadLocationException badLocationException) {}
            }
            ++i;
        }
        this.fOverlappingPositionReferences = null;
    }

    protected boolean positionAboutToBeAdded(IDocument document, String category, Position position) {
        return true;
    }

    private String getIndentation(int offset) {
        try {
            int start = this.fDocument.getLineOfOffset(offset);
            int end = start = this.fDocument.getLineOffset(start);
            char c = this.fDocument.getChar(end);
            while ('\t' == c || ' ' == c) {
                c = this.fDocument.getChar(++end);
            }
            return this.fDocument.get(start, end - start);
        }
        catch (BadLocationException badLocationException) {
            return "";
        }
    }

    private boolean isLineStart(int offset) throws BadLocationException {
        int start = this.fDocument.getLineOfOffset(offset);
        return (start = this.fDocument.getLineOffset(start)) == offset;
    }

    class NonDeletingPositionUpdater
    extends DefaultPositionUpdater {
        protected NonDeletingPositionUpdater(String category) {
            super(category);
        }

        protected boolean notDeleted() {
            return true;
        }
    }

    static class PositionReference
    implements Comparable {
        protected Position fPosition;
        protected boolean fRefersToOffset;
        protected String fCategory;

        protected PositionReference(Position position, boolean refersToOffset, String category) {
            this.fPosition = position;
            this.fRefersToOffset = refersToOffset;
            this.fCategory = category;
        }

        protected int getOffset() {
            return this.fPosition.getOffset();
        }

        protected void setOffset(int offset) {
            this.fPosition.setOffset(offset);
        }

        protected int getLength() {
            return this.fPosition.getLength();
        }

        protected void setLength(int length) {
            this.fPosition.setLength(length);
        }

        protected boolean refersToOffset() {
            return this.fRefersToOffset;
        }

        protected String getCategory() {
            return this.fCategory;
        }

        protected Position getPosition() {
            return this.fPosition;
        }

        protected int getCharacterPosition() {
            if (this.fRefersToOffset) {
                return this.getOffset();
            }
            return this.getOffset() + this.getLength();
        }

        public int compareTo(Object obj) {
            if (obj instanceof PositionReference) {
                PositionReference r = (PositionReference)obj;
                return this.getCharacterPosition() - r.getCharacterPosition();
            }
            throw new ClassCastException();
        }
    }

    class RemoveAffectedPositions
    implements IPositionUpdater {
        RemoveAffectedPositions() {
        }

        public void update(DocumentEvent event) {
            ContentFormatter.this.removeAffectedPositions(event.getDocument());
        }
    }

    class UpdateAffectedPositions
    implements IPositionUpdater {
        private int[] fPositions;
        private int fOffset;

        public UpdateAffectedPositions(int[] positions, int offset) {
            this.fPositions = positions;
            this.fOffset = offset;
        }

        public void update(DocumentEvent event) {
            ContentFormatter.this.updateAffectedPositions(event.getDocument(), this.fPositions, this.fOffset);
        }
    }
}

