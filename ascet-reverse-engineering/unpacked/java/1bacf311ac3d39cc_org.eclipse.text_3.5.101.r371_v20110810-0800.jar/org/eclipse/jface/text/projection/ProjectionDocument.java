/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.projection;

import java.util.ArrayList;
import org.eclipse.jface.text.AbstractDocument;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultLineTracker;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension;
import org.eclipse.jface.text.IDocumentInformationMapping;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.projection.Fragment;
import org.eclipse.jface.text.projection.FragmentUpdater;
import org.eclipse.jface.text.projection.ProjectionDocumentEvent;
import org.eclipse.jface.text.projection.ProjectionMapping;
import org.eclipse.jface.text.projection.ProjectionTextStore;
import org.eclipse.jface.text.projection.Segment;
import org.eclipse.jface.text.projection.SegmentUpdater;

public class ProjectionDocument
extends AbstractDocument {
    private static final String FRAGMENTS_CATEGORY_PREFIX = "__fragmentsCategory";
    private static final String SEGMENTS_CATEGORY = "__segmentsCategory";
    private IDocument fMasterDocument;
    private IDocumentExtension fMasterDocumentExtension;
    private String fFragmentsCategory;
    private String fSegmentsCategory;
    private DocumentEvent fMasterEvent;
    private ProjectionDocumentEvent fSlaveEvent;
    private DocumentEvent fOriginalEvent;
    private boolean fIsUpdating = false;
    private boolean fIsAutoExpanding = false;
    private SegmentUpdater fSegmentUpdater;
    private FragmentUpdater fFragmentsUpdater;
    private ProjectionMapping fMapping;

    public ProjectionDocument(IDocument masterDocument) {
        this.fMasterDocument = masterDocument;
        if (this.fMasterDocument instanceof IDocumentExtension) {
            this.fMasterDocumentExtension = (IDocumentExtension)((Object)this.fMasterDocument);
        }
        this.fSegmentsCategory = SEGMENTS_CATEGORY;
        this.fFragmentsCategory = FRAGMENTS_CATEGORY_PREFIX + this.hashCode();
        this.fMasterDocument.addPositionCategory(this.fFragmentsCategory);
        this.fFragmentsUpdater = new FragmentUpdater(this.fFragmentsCategory);
        this.fMasterDocument.addPositionUpdater(this.fFragmentsUpdater);
        this.fMapping = new ProjectionMapping(masterDocument, this.fFragmentsCategory, this, this.fSegmentsCategory);
        ProjectionTextStore s = new ProjectionTextStore(masterDocument, this.fMapping);
        DefaultLineTracker tracker = new DefaultLineTracker();
        this.setTextStore(s);
        this.setLineTracker(tracker);
        this.completeInitialization();
        this.initializeProjection();
        tracker.set(s.get(0, s.getLength()));
    }

    public void dispose() {
        this.fMasterDocument.removePositionUpdater(this.fFragmentsUpdater);
        try {
            this.fMasterDocument.removePositionCategory(this.fFragmentsCategory);
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
    }

    private void internalError() {
        throw new IllegalStateException();
    }

    protected final Position[] getFragments() {
        try {
            return this.fMasterDocument.getPositions(this.fFragmentsCategory);
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
            this.internalError();
            return null;
        }
    }

    protected final Position[] getSegments() {
        try {
            return this.getPositions(this.fSegmentsCategory);
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
            this.internalError();
            return null;
        }
    }

    public ProjectionMapping getProjectionMapping() {
        return this.fMapping;
    }

    public IDocumentInformationMapping getDocumentInformationMapping() {
        return this.fMapping;
    }

    public IDocument getMasterDocument() {
        return this.fMasterDocument;
    }

    public String getDefaultLineDelimiter() {
        return TextUtilities.getDefaultLineDelimiter(this.fMasterDocument);
    }

    private void initializeProjection() {
        try {
            this.addPositionCategory(this.fSegmentsCategory);
            this.fSegmentUpdater = new SegmentUpdater(this.fSegmentsCategory);
            this.addPositionUpdater(this.fSegmentUpdater);
            int offset = 0;
            Position[] fragments = this.getFragments();
            int i = 0;
            while (i < fragments.length) {
                Fragment fragment = (Fragment)fragments[i];
                Segment segment = new Segment(offset, fragment.getLength());
                segment.fragment = fragment;
                this.addPosition(this.fSegmentsCategory, segment);
                offset += fragment.length;
                ++i;
            }
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
            this.internalError();
        }
        catch (BadLocationException badLocationException) {
            this.internalError();
        }
    }

    private Segment createSegmentFor(Fragment fragment, int index) throws BadLocationException, BadPositionCategoryException {
        int offset = 0;
        if (index > 0) {
            Position[] segments = this.getSegments();
            Segment segment = (Segment)segments[index - 1];
            offset = segment.getOffset() + segment.getLength();
        }
        Segment segment = new Segment(offset, 0);
        segment.fragment = fragment;
        fragment.segment = segment;
        this.addPosition(this.fSegmentsCategory, segment);
        return segment;
    }

    private void internalAddMasterDocumentRange(int offsetInMaster, int lengthInMaster, DocumentEvent masterDocumentEvent) throws BadLocationException {
        if (lengthInMaster == 0) {
            return;
        }
        try {
            Fragment fragment;
            Position[] fragments = this.getFragments();
            int index = this.fMasterDocument.computeIndexInCategory(this.fFragmentsCategory, offsetInMaster);
            Fragment left = null;
            Fragment right = null;
            if (index < fragments.length) {
                fragment = (Fragment)fragments[index];
                if (offsetInMaster == fragment.offset) {
                    if (fragment.length == 0) {
                        left = fragment;
                    } else {
                        throw new IllegalArgumentException("overlaps with existing fragment");
                    }
                }
                if (offsetInMaster + lengthInMaster == fragment.offset) {
                    right = fragment;
                }
            }
            if (index > 0 && index <= fragments.length) {
                fragment = (Fragment)fragments[index - 1];
                if (fragment.includes(offsetInMaster)) {
                    throw new IllegalArgumentException("overlaps with existing fragment");
                }
                if (fragment.getOffset() + fragment.getLength() == offsetInMaster) {
                    left = fragment;
                }
            }
            int offsetInSlave = 0;
            if (index > 0) {
                Fragment fragment2 = (Fragment)fragments[index - 1];
                Segment segment = fragment2.segment;
                offsetInSlave = segment.getOffset() + segment.getLength();
            }
            ProjectionDocumentEvent event = new ProjectionDocumentEvent(this, offsetInSlave, 0, this.fMasterDocument.get(offsetInMaster, lengthInMaster), offsetInMaster, lengthInMaster, masterDocumentEvent);
            super.fireDocumentAboutToBeChanged(event);
            if (left != null && right != null) {
                int endOffset = right.getOffset() + right.getLength();
                left.setLength(endOffset - left.getOffset());
                left.segment.setLength(left.segment.getLength() + right.segment.getLength());
                this.removePosition(this.fSegmentsCategory, right.segment);
                this.fMasterDocument.removePosition(this.fFragmentsCategory, right);
            } else if (left != null) {
                int endOffset = offsetInMaster + lengthInMaster;
                left.setLength(endOffset - left.getOffset());
                left.segment.markForStretch();
            } else if (right != null) {
                right.setOffset(right.getOffset() - lengthInMaster);
                right.setLength(right.getLength() + lengthInMaster);
                right.segment.markForStretch();
            } else {
                Fragment fragment3 = new Fragment(offsetInMaster, lengthInMaster);
                this.fMasterDocument.addPosition(this.fFragmentsCategory, fragment3);
                Segment segment = this.createSegmentFor(fragment3, index);
                segment.markForStretch();
            }
            this.getTracker().replace(event.getOffset(), event.getLength(), event.getText());
            super.fireDocumentChanged(event);
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
            this.internalError();
        }
    }

    private Fragment findFragment(int offsetInMaster, int lengthInMaster) {
        Position[] fragments = this.getFragments();
        int i = 0;
        while (i < fragments.length) {
            Fragment f = (Fragment)fragments[i];
            if (f.getOffset() <= offsetInMaster && offsetInMaster + lengthInMaster <= f.getOffset() + f.getLength()) {
                return f;
            }
            ++i;
        }
        return null;
    }

    private void internalRemoveMasterDocumentRange(int offsetInMaster, int lengthInMaster) throws BadLocationException {
        try {
            IRegion imageRegion = this.fMapping.toExactImageRegion(new Region(offsetInMaster, lengthInMaster));
            if (imageRegion == null) {
                throw new IllegalArgumentException();
            }
            Fragment fragment = this.findFragment(offsetInMaster, lengthInMaster);
            if (fragment == null) {
                throw new IllegalArgumentException();
            }
            ProjectionDocumentEvent event = new ProjectionDocumentEvent(this, imageRegion.getOffset(), imageRegion.getLength(), "", offsetInMaster, lengthInMaster);
            super.fireDocumentAboutToBeChanged(event);
            if (fragment.getOffset() == offsetInMaster) {
                fragment.setOffset(offsetInMaster + lengthInMaster);
                fragment.setLength(fragment.getLength() - lengthInMaster);
            } else {
                Segment segment;
                Fragment newFragment = new Fragment(offsetInMaster, lengthInMaster);
                newFragment.segment = segment = new Segment(imageRegion.getOffset(), imageRegion.getLength());
                segment.fragment = newFragment;
                this.fMasterDocument.addPosition(this.fFragmentsCategory, newFragment);
                this.addPosition(this.fSegmentsCategory, segment);
                int offset = offsetInMaster + lengthInMaster;
                newFragment = new Fragment(offset, fragment.getOffset() + fragment.getLength() - offset);
                offset = imageRegion.getOffset() + imageRegion.getLength();
                newFragment.segment = segment = new Segment(offset, fragment.segment.getOffset() + fragment.segment.getLength() - offset);
                segment.fragment = newFragment;
                this.fMasterDocument.addPosition(this.fFragmentsCategory, newFragment);
                this.addPosition(this.fSegmentsCategory, segment);
                fragment.setLength(offsetInMaster - fragment.getOffset());
                fragment.segment.setLength(imageRegion.getOffset() - fragment.segment.getOffset());
            }
            this.getTracker().replace(event.getOffset(), event.getLength(), event.getText());
            super.fireDocumentChanged(event);
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
            this.internalError();
        }
    }

    public final IRegion[] computeUnprojectedMasterRegions(int offsetInMaster, int lengthInMaster) throws BadLocationException {
        int rightEnd;
        IRegion[] fragments = null;
        IRegion imageRegion = this.fMapping.toImageRegion(new Region(offsetInMaster, lengthInMaster));
        if (imageRegion != null) {
            fragments = this.fMapping.toExactOriginRegions(imageRegion);
        }
        if (fragments == null || fragments.length == 0) {
            return new IRegion[]{new Region(offsetInMaster, lengthInMaster)};
        }
        ArrayList<Region> gaps = new ArrayList<Region>();
        IRegion region = fragments[0];
        if (offsetInMaster < region.getOffset()) {
            gaps.add(new Region(offsetInMaster, region.getOffset() - offsetInMaster));
        }
        int i = 0;
        while (i < fragments.length - 1) {
            IRegion left = fragments[i];
            IRegion right = fragments[i + 1];
            int leftEnd = left.getOffset() + left.getLength();
            if (leftEnd < right.getOffset()) {
                gaps.add(new Region(leftEnd, right.getOffset() - leftEnd));
            }
            ++i;
        }
        region = fragments[fragments.length - 1];
        int leftEnd = region.getOffset() + region.getLength();
        if (leftEnd < (rightEnd = offsetInMaster + lengthInMaster)) {
            gaps.add(new Region(leftEnd, rightEnd - leftEnd));
        }
        IRegion[] result = new IRegion[gaps.size()];
        gaps.toArray(result);
        return result;
    }

    private IRegion computeFirstUnprojectedMasterRegion(int offsetInMaster, int lengthInMaster) throws BadLocationException {
        int rightEnd;
        IRegion[] fragments = null;
        IRegion imageRegion = this.fMapping.toImageRegion(new Region(offsetInMaster, lengthInMaster));
        if (imageRegion != null) {
            fragments = this.fMapping.toExactOriginRegions(imageRegion);
        }
        if (fragments == null || fragments.length == 0) {
            return new Region(offsetInMaster, lengthInMaster);
        }
        IRegion region = fragments[0];
        if (offsetInMaster < region.getOffset()) {
            return new Region(offsetInMaster, region.getOffset() - offsetInMaster);
        }
        int i = 0;
        while (i < fragments.length - 1) {
            IRegion left = fragments[i];
            IRegion right = fragments[i + 1];
            int leftEnd = left.getOffset() + left.getLength();
            if (leftEnd < right.getOffset()) {
                return new Region(leftEnd, right.getOffset() - leftEnd);
            }
            ++i;
        }
        region = fragments[fragments.length - 1];
        int leftEnd = region.getOffset() + region.getLength();
        if (leftEnd < (rightEnd = offsetInMaster + lengthInMaster)) {
            return new Region(leftEnd, rightEnd - leftEnd);
        }
        return null;
    }

    public void addMasterDocumentRange(int offsetInMaster, int lengthInMaster) throws BadLocationException {
        this.addMasterDocumentRange(offsetInMaster, lengthInMaster, null);
    }

    private void addMasterDocumentRange(int offsetInMaster, int lengthInMaster, DocumentEvent masterDocumentEvent) throws BadLocationException {
        int limit = Math.max(this.getFragments().length * 2, 20);
        while (true) {
            if (limit-- < 0) {
                throw new IllegalArgumentException("safety loop termination");
            }
            IRegion gap = this.computeFirstUnprojectedMasterRegion(offsetInMaster, lengthInMaster);
            if (gap == null) {
                return;
            }
            this.internalAddMasterDocumentRange(gap.getOffset(), gap.getLength(), masterDocumentEvent);
        }
    }

    public void removeMasterDocumentRange(int offsetInMaster, int lengthInMaster) throws BadLocationException {
        IRegion[] fragments = this.computeProjectedMasterRegions(offsetInMaster, lengthInMaster);
        if (fragments == null || fragments.length == 0) {
            return;
        }
        int i = 0;
        while (i < fragments.length) {
            IRegion fragment = fragments[i];
            this.internalRemoveMasterDocumentRange(fragment.getOffset(), fragment.getLength());
            ++i;
        }
    }

    public final IRegion[] computeProjectedMasterRegions(int offsetInMaster, int lengthInMaster) throws BadLocationException {
        IRegion imageRegion = this.fMapping.toImageRegion(new Region(offsetInMaster, lengthInMaster));
        return imageRegion != null ? this.fMapping.toExactOriginRegions(imageRegion) : null;
    }

    protected boolean isUpdating() {
        return this.fIsUpdating;
    }

    public void replace(int offset, int length, String text) throws BadLocationException {
        try {
            this.fIsUpdating = true;
            if (this.fMasterDocumentExtension != null) {
                this.fMasterDocumentExtension.stopPostNotificationProcessing();
            }
            super.replace(offset, length, text);
        }
        finally {
            this.fIsUpdating = false;
            if (this.fMasterDocumentExtension != null) {
                this.fMasterDocumentExtension.resumePostNotificationProcessing();
            }
        }
    }

    public void set(String text) {
        try {
            this.fIsUpdating = true;
            if (this.fMasterDocumentExtension != null) {
                this.fMasterDocumentExtension.stopPostNotificationProcessing();
            }
            super.set(text);
        }
        finally {
            this.fIsUpdating = false;
            if (this.fMasterDocumentExtension != null) {
                this.fMasterDocumentExtension.resumePostNotificationProcessing();
            }
        }
    }

    private ProjectionDocumentEvent normalize(DocumentEvent masterEvent) throws BadLocationException {
        if (!this.isUpdating()) {
            IRegion imageRegion = this.fMapping.toExactImageRegion(new Region(masterEvent.getOffset(), masterEvent.getLength()));
            if (imageRegion != null) {
                return new ProjectionDocumentEvent(this, imageRegion.getOffset(), imageRegion.getLength(), masterEvent.getText(), masterEvent);
            }
            return null;
        }
        ProjectionDocumentEvent event = new ProjectionDocumentEvent(this, this.fOriginalEvent.getOffset(), this.fOriginalEvent.getLength(), this.fOriginalEvent.getText(), masterEvent);
        this.fOriginalEvent = null;
        return event;
    }

    protected final boolean adaptProjectionToMasterChange(DocumentEvent masterEvent) throws BadLocationException {
        Position[] fragments;
        if (!this.isUpdating() && this.fFragmentsUpdater.affectsPositions(masterEvent) || this.fIsAutoExpanding && masterEvent.getLength() > 0) {
            this.addMasterDocumentRange(masterEvent.getOffset(), masterEvent.getLength(), masterEvent);
            return true;
        }
        if (this.fMapping.getImageLength() == 0 && masterEvent.getLength() == 0 && (fragments = this.getFragments()).length == 0) {
            try {
                Fragment fragment = new Fragment(0, 0);
                this.fMasterDocument.addPosition(this.fFragmentsCategory, fragment);
                this.createSegmentFor(fragment, 0);
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
                this.internalError();
            }
        }
        return this.isUpdating();
    }

    public void masterDocumentAboutToBeChanged(DocumentEvent masterEvent) {
        try {
            boolean assertNotNull = this.adaptProjectionToMasterChange(masterEvent);
            this.fSlaveEvent = this.normalize(masterEvent);
            if (assertNotNull && this.fSlaveEvent == null) {
                this.internalError();
            }
            this.fMasterEvent = masterEvent;
            if (this.fSlaveEvent != null) {
                this.delayedFireDocumentAboutToBeChanged();
            }
        }
        catch (BadLocationException badLocationException) {
            this.internalError();
        }
    }

    public void masterDocumentChanged(DocumentEvent masterEvent) {
        if (!this.isUpdating() && masterEvent == this.fMasterEvent) {
            if (this.fSlaveEvent != null) {
                try {
                    this.getTracker().replace(this.fSlaveEvent.getOffset(), this.fSlaveEvent.getLength(), this.fSlaveEvent.getText());
                    this.fireDocumentChanged(this.fSlaveEvent);
                }
                catch (BadLocationException badLocationException) {
                    this.internalError();
                }
            } else if (this.ensureWellFormedSegmentation(masterEvent.getOffset())) {
                this.fMapping.projectionChanged();
            }
        }
    }

    protected void fireDocumentAboutToBeChanged(DocumentEvent event) {
        this.fOriginalEvent = event;
    }

    private void delayedFireDocumentAboutToBeChanged() {
        super.fireDocumentAboutToBeChanged(this.fSlaveEvent);
    }

    protected void fireDocumentChanged(DocumentEvent event) {
        super.fireDocumentChanged(this.fSlaveEvent);
    }

    protected void updateDocumentStructures(DocumentEvent event) {
        super.updateDocumentStructures(event);
        this.ensureWellFormedSegmentation(this.computeAnchor(event));
        this.fMapping.projectionChanged();
    }

    private int computeAnchor(DocumentEvent event) {
        if (event instanceof ProjectionDocumentEvent) {
            ProjectionDocumentEvent slave = (ProjectionDocumentEvent)event;
            Object changeType = slave.getChangeType();
            if (ProjectionDocumentEvent.CONTENT_CHANGE == changeType) {
                DocumentEvent master = slave.getMasterEvent();
                if (master != null) {
                    return master.getOffset();
                }
            } else if (ProjectionDocumentEvent.PROJECTION_CHANGE == changeType) {
                return slave.getMasterOffset();
            }
        }
        return -1;
    }

    private boolean ensureWellFormedSegmentation(int anchorOffset) {
        Position[] changedSegments;
        boolean changed = false;
        Position[] segments = this.getSegments();
        int i = 0;
        while (i < segments.length) {
            Fragment fragment;
            Segment next;
            Segment segment = (Segment)segments[i];
            if (segment.isDeleted() || segment.getLength() == 0 && (i < segments.length - 1 || i > 0 && segments[i - 1].isDeleted())) {
                try {
                    this.removePosition(this.fSegmentsCategory, segment);
                    this.fMasterDocument.removePosition(this.fFragmentsCategory, segment.fragment);
                    changed = true;
                }
                catch (BadPositionCategoryException badPositionCategoryException) {
                    this.internalError();
                }
            } else if (i < segments.length - 1 && !(next = (Segment)segments[i + 1]).isDeleted() && next.getLength() != 0 && (fragment = segment.fragment).getOffset() + fragment.getLength() == next.fragment.getOffset()) {
                segment.setLength(segment.getLength() + next.getLength());
                fragment.setLength(fragment.getLength() + next.fragment.getLength());
                next.delete();
            }
            ++i;
        }
        if (changed && anchorOffset != -1 && ((changedSegments = this.getSegments()) == null || changedSegments.length == 0)) {
            Fragment fragment = new Fragment(anchorOffset, 0);
            try {
                this.fMasterDocument.addPosition(this.fFragmentsCategory, fragment);
                this.createSegmentFor(fragment, 0);
            }
            catch (BadLocationException badLocationException) {
                this.internalError();
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
                this.internalError();
            }
        }
        return changed;
    }

    public void registerPostNotificationReplace(IDocumentListener owner, IDocumentExtension.IReplace replace) {
        if (!this.isUpdating()) {
            throw new UnsupportedOperationException();
        }
        super.registerPostNotificationReplace(owner, replace);
    }

    public void setAutoExpandMode(boolean autoExpandMode) {
        this.fIsAutoExpanding = autoExpandMode;
    }

    public void replaceMasterDocumentRanges(int offsetInMaster, int lengthInMaster) throws BadLocationException {
        try {
            ProjectionDocumentEvent event = new ProjectionDocumentEvent(this, 0, this.fMapping.getImageLength(), this.fMasterDocument.get(offsetInMaster, lengthInMaster), offsetInMaster, lengthInMaster);
            super.fireDocumentAboutToBeChanged(event);
            Position[] fragments = this.getFragments();
            int i = 0;
            while (i < fragments.length) {
                Fragment fragment = (Fragment)fragments[i];
                this.fMasterDocument.removePosition(this.fFragmentsCategory, fragment);
                this.removePosition(this.fSegmentsCategory, fragment.segment);
                ++i;
            }
            Fragment fragment = new Fragment(offsetInMaster, lengthInMaster);
            Segment segment = new Segment(0, 0);
            segment.fragment = fragment;
            fragment.segment = segment;
            this.fMasterDocument.addPosition(this.fFragmentsCategory, fragment);
            this.addPosition(this.fSegmentsCategory, segment);
            this.getTracker().set(this.fMasterDocument.get(offsetInMaster, lengthInMaster));
            super.fireDocumentChanged(event);
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
            this.internalError();
        }
    }
}

