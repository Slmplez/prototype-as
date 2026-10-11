/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.projection;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentInformationMapping;
import org.eclipse.jface.text.IDocumentInformationMappingExtension;
import org.eclipse.jface.text.IDocumentInformationMappingExtension2;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.projection.Fragment;
import org.eclipse.jface.text.projection.IMinimalMapping;
import org.eclipse.jface.text.projection.Segment;

public class ProjectionMapping
implements IDocumentInformationMapping,
IDocumentInformationMappingExtension,
IDocumentInformationMappingExtension2,
IMinimalMapping {
    private static final int LEFT = -1;
    private static final int NONE = 0;
    private static final int RIGHT = 1;
    private IDocument fMasterDocument;
    private String fFragmentsCategory;
    private IDocument fSlaveDocument;
    private String fSegmentsCategory;
    private Position[] fCachedSegments;
    private Position[] fCachedFragments;

    public ProjectionMapping(IDocument masterDocument, String fragmentsCategory, IDocument slaveDocument, String segmentsCategory) {
        this.fMasterDocument = masterDocument;
        this.fFragmentsCategory = fragmentsCategory;
        this.fSlaveDocument = slaveDocument;
        this.fSegmentsCategory = segmentsCategory;
    }

    public void projectionChanged() {
        this.fCachedSegments = null;
        this.fCachedFragments = null;
    }

    private Position[] getSegments() {
        if (this.fCachedSegments == null) {
            try {
                this.fCachedSegments = this.fSlaveDocument.getPositions(this.fSegmentsCategory);
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
                return new Position[0];
            }
        }
        return this.fCachedSegments;
    }

    private Position[] getFragments() {
        if (this.fCachedFragments == null) {
            try {
                this.fCachedFragments = this.fMasterDocument.getPositions(this.fFragmentsCategory);
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
                return new Position[0];
            }
        }
        return this.fCachedFragments;
    }

    private int findSegmentIndex(int offset) throws BadLocationException {
        Position[] segments = this.getSegments();
        if (segments.length == 0) {
            if (offset > 0) {
                throw new BadLocationException();
            }
            return -1;
        }
        try {
            int index = this.fSlaveDocument.computeIndexInCategory(this.fSegmentsCategory, offset);
            if (index == segments.length && offset > this.exclusiveEnd(segments[index - 1])) {
                throw new BadLocationException();
            }
            if (index < segments.length && offset == segments[index].offset) {
                return index;
            }
            if (index > 0) {
                --index;
            }
            return index;
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
            throw new IllegalStateException();
        }
    }

    private Segment findSegment(int offset) throws BadLocationException {
        this.checkImageOffset(offset);
        int index = this.findSegmentIndex(offset);
        if (index == -1) {
            Fragment f;
            Segment s = new Segment(0, 0);
            s.fragment = f = new Fragment(0, 0);
            f.segment = s;
            return s;
        }
        Position[] segments = this.getSegments();
        return (Segment)segments[index];
    }

    private int findFragmentIndex(int offset, int extensionDirection) throws BadLocationException {
        Position[] fragments;
        block9: {
            try {
                fragments = this.getFragments();
                if (fragments.length != 0) break block9;
                return -1;
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
                throw new IllegalStateException();
            }
        }
        int index = this.fMasterDocument.computeIndexInCategory(this.fFragmentsCategory, offset);
        if (index < fragments.length && offset == fragments[index].offset) {
            return index;
        }
        if (index > 0 && index <= fragments.length && fragments[index - 1].includes(offset)) {
            return index - 1;
        }
        switch (extensionDirection) {
            case -1: {
                return index - 1;
            }
            case 1: {
                if (index >= fragments.length) break;
                return index;
            }
        }
        return -1;
    }

    private Fragment findFragment(int offset) throws BadLocationException {
        this.checkOriginOffset(offset);
        int index = this.findFragmentIndex(offset, 0);
        Position[] fragments = this.getFragments();
        if (index == -1) {
            Fragment last;
            if (fragments.length > 0 && this.exclusiveEnd(last = (Fragment)fragments[fragments.length - 1]) == offset) {
                return last;
            }
            return null;
        }
        return (Fragment)fragments[index];
    }

    private IRegion toImageRegion(IRegion originRegion, boolean exact, boolean takeClosestImage) throws BadLocationException {
        if (originRegion.getLength() == 0 && !takeClosestImage) {
            int imageOffset = this.toImageOffset(originRegion.getOffset());
            return imageOffset == -1 ? null : new Region(imageOffset, 0);
        }
        Fragment[] fragments = this.findFragments(originRegion, exact, takeClosestImage);
        if (fragments == null) {
            if (takeClosestImage) {
                Position[] allFragments = this.getFragments();
                if (allFragments.length > 0) {
                    if (this.exclusiveEnd(originRegion) <= allFragments[0].getOffset()) {
                        return new Region(0, 0);
                    }
                    Position last = allFragments[allFragments.length - 1];
                    if (originRegion.getOffset() >= this.exclusiveEnd(last)) {
                        return new Region(this.exclusiveEnd(((Fragment)last).segment), 0);
                    }
                }
                return new Region(0, 0);
            }
            return null;
        }
        int relative = originRegion.getOffset() - fragments[0].getOffset();
        if (relative < 0) {
            Assert.isTrue((!exact ? 1 : 0) != 0);
            relative = 0;
        }
        int imageOffset = fragments[0].segment.getOffset() + relative;
        relative = this.exclusiveEnd(originRegion) - fragments[1].getOffset();
        if (relative > fragments[1].getLength()) {
            Assert.isTrue((!exact ? 1 : 0) != 0);
            relative = fragments[1].getLength();
        }
        int exclusiveImageEndOffset = fragments[1].segment.getOffset() + relative;
        return new Region(imageOffset, exclusiveImageEndOffset - imageOffset);
    }

    private Fragment[] findFragments(IRegion originRegion, boolean exact, boolean takeClosestImage) throws BadLocationException {
        Position[] fragments = this.getFragments();
        if (fragments.length == 0) {
            return null;
        }
        this.checkOriginRegion(originRegion);
        int startFragmentIdx = this.findFragmentIndex(originRegion.getOffset(), exact ? 0 : 1);
        if (startFragmentIdx == -1) {
            return null;
        }
        int endFragmentIdx = this.findFragmentIndex(this.inclusiveEnd(originRegion), exact ? 0 : -1);
        if (!takeClosestImage && startFragmentIdx > endFragmentIdx || endFragmentIdx == -1) {
            return null;
        }
        Fragment[] result = new Fragment[]{(Fragment)fragments[startFragmentIdx], (Fragment)fragments[endFragmentIdx]};
        return result;
    }

    private IRegion createOriginStartRegion(Segment image, int offsetShift) {
        return new Region(image.fragment.getOffset() + offsetShift, image.fragment.getLength() - offsetShift);
    }

    private IRegion createOriginRegion(Segment image) {
        return new Region(image.fragment.getOffset(), image.fragment.getLength());
    }

    private IRegion createOriginEndRegion(Segment image, int lengthReduction) {
        return new Region(image.fragment.getOffset(), image.fragment.getLength() - lengthReduction);
    }

    private IRegion createImageStartRegion(Fragment origin, int offsetShift) {
        int shift = offsetShift > 0 ? offsetShift : 0;
        return new Region(origin.segment.getOffset() + shift, origin.segment.getLength() - shift);
    }

    private IRegion createImageRegion(Fragment origin) {
        return new Region(origin.segment.getOffset(), origin.segment.getLength());
    }

    private IRegion createImageEndRegion(Fragment origin, int lengthReduction) {
        int reduction = lengthReduction > 0 ? lengthReduction : 0;
        return new Region(origin.segment.getOffset(), origin.segment.getLength() - reduction);
    }

    private IRegion createOriginStartRegion(Fragment origin, int offsetShift) {
        int shift = offsetShift > 0 ? offsetShift : 0;
        return new Region(origin.getOffset() + shift, origin.getLength() - shift);
    }

    private IRegion createOriginRegion(Fragment origin) {
        return new Region(origin.getOffset(), origin.getLength());
    }

    private IRegion createOriginEndRegion(Fragment origin, int lengthReduction) {
        int reduction = lengthReduction > 0 ? lengthReduction : 0;
        return new Region(origin.getOffset(), origin.getLength() - reduction);
    }

    private IRegion getIntersectingRegion(IRegion left, IRegion right) {
        int offset = Math.max(left.getOffset(), right.getOffset());
        int exclusiveEndOffset = Math.min(this.exclusiveEnd(left), this.exclusiveEnd(right));
        if (exclusiveEndOffset < offset) {
            return null;
        }
        return new Region(offset, exclusiveEndOffset - offset);
    }

    public IRegion getCoverage() {
        Position[] fragments = this.getFragments();
        if (fragments != null && fragments.length > 0) {
            Position first = fragments[0];
            Position last = fragments[fragments.length - 1];
            return new Region(first.offset, this.exclusiveEnd(last) - first.offset);
        }
        return new Region(0, 0);
    }

    public int toOriginOffset(int imageOffset) throws BadLocationException {
        Segment segment = this.findSegment(imageOffset);
        int relative = imageOffset - segment.offset;
        return segment.fragment.offset + relative;
    }

    public IRegion toOriginRegion(IRegion imageRegion) throws BadLocationException {
        int imageOffset = imageRegion.getOffset();
        int imageLength = imageRegion.getLength();
        if (imageLength == 0) {
            Position[] fragments;
            if (imageOffset == 0 && ((fragments = this.getFragments()).length == 0 || fragments.length == 1 && fragments[0].getOffset() == 0 && fragments[0].getLength() == 0)) {
                return new Region(0, this.fMasterDocument.getLength());
            }
            return new Region(this.toOriginOffset(imageOffset), 0);
        }
        int originOffset = this.toOriginOffset(imageOffset);
        int inclusiveImageEndOffset = imageOffset + imageLength - 1;
        int inclusiveOriginEndOffset = this.toOriginOffset(inclusiveImageEndOffset);
        return new Region(originOffset, inclusiveOriginEndOffset + 1 - originOffset);
    }

    public IRegion toOriginLines(int imageLine) throws BadLocationException {
        IRegion imageRegion = this.fSlaveDocument.getLineInformation(imageLine);
        IRegion originRegion = this.toOriginRegion(imageRegion);
        int originStartLine = this.fMasterDocument.getLineOfOffset(originRegion.getOffset());
        if (originRegion.getLength() == 0) {
            return new Region(originStartLine, 1);
        }
        int originEndLine = this.fMasterDocument.getLineOfOffset(this.inclusiveEnd(originRegion));
        return new Region(originStartLine, originEndLine + 1 - originStartLine);
    }

    public int toOriginLine(int imageLine) throws BadLocationException {
        IRegion lines = this.toOriginLines(imageLine);
        return lines.getLength() > 1 ? -1 : lines.getOffset();
    }

    public int toImageOffset(int originOffset) throws BadLocationException {
        Fragment fragment = this.findFragment(originOffset);
        if (fragment != null) {
            int relative = originOffset - fragment.offset;
            return fragment.segment.offset + relative;
        }
        return -1;
    }

    public IRegion toExactImageRegion(IRegion originRegion) throws BadLocationException {
        return this.toImageRegion(originRegion, true, false);
    }

    public IRegion toImageRegion(IRegion originRegion) throws BadLocationException {
        return this.toImageRegion(originRegion, false, false);
    }

    public IRegion toClosestImageRegion(IRegion originRegion) throws BadLocationException {
        return this.toImageRegion(originRegion, false, true);
    }

    public int toImageLine(int originLine) throws BadLocationException {
        IRegion originRegion = this.fMasterDocument.getLineInformation(originLine);
        IRegion imageRegion = this.toImageRegion(originRegion);
        if (imageRegion == null) {
            int imageOffset = this.toImageOffset(originRegion.getOffset());
            if (imageOffset > -1) {
                imageRegion = new Region(imageOffset, 0);
            } else {
                return -1;
            }
        }
        int startLine = this.fSlaveDocument.getLineOfOffset(imageRegion.getOffset());
        if (imageRegion.getLength() == 0) {
            return startLine;
        }
        int endLine = this.fSlaveDocument.getLineOfOffset(imageRegion.getOffset() + imageRegion.getLength());
        if (endLine != startLine) {
            throw new IllegalStateException("startLine (" + startLine + ") does not match endLine (" + endLine + ")");
        }
        return startLine;
    }

    public int toClosestImageLine(int originLine) throws BadLocationException {
        Position[] fragments;
        block9: {
            try {
                int imageLine = this.toImageLine(originLine);
                if (imageLine > -1) {
                    return imageLine;
                }
                fragments = this.getFragments();
                if (fragments.length != 0) break block9;
                return -1;
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
                return -1;
            }
        }
        IRegion originLineRegion = this.fMasterDocument.getLineInformation(originLine);
        int index = this.fMasterDocument.computeIndexInCategory(this.fFragmentsCategory, originLineRegion.getOffset());
        if (index > 0 && index < fragments.length) {
            Fragment right;
            int rightDistance;
            Fragment left = (Fragment)fragments[index - 1];
            int leftDistance = originLineRegion.getOffset() - this.exclusiveEnd(left);
            originLine = leftDistance <= (rightDistance = (right = (Fragment)fragments[index]).getOffset() - this.exclusiveEnd(originLineRegion)) ? this.fMasterDocument.getLineOfOffset(left.getOffset() + Math.max(left.getLength() - 1, 0)) : this.fMasterDocument.getLineOfOffset(right.getOffset());
        } else if (index == 0) {
            Fragment right = (Fragment)fragments[index];
            originLine = this.fMasterDocument.getLineOfOffset(right.getOffset());
        } else if (index == fragments.length) {
            Fragment left = (Fragment)fragments[index - 1];
            originLine = this.fMasterDocument.getLineOfOffset(this.exclusiveEnd(left));
        }
        return this.toImageLine(originLine);
    }

    public IRegion[] toExactOriginRegions(IRegion imageRegion) throws BadLocationException {
        if (imageRegion.getLength() == 0) {
            return new IRegion[]{new Region(this.toOriginOffset(imageRegion.getOffset()), 0)};
        }
        int endOffset = this.exclusiveEnd(imageRegion);
        Position[] segments = this.getSegments();
        int firstIndex = this.findSegmentIndex(imageRegion.getOffset());
        int lastIndex = this.findSegmentIndex(endOffset - 1);
        int resultLength = lastIndex - firstIndex + 1;
        IRegion[] result = new IRegion[resultLength];
        result[0] = this.createOriginStartRegion((Segment)segments[firstIndex], imageRegion.getOffset() - segments[firstIndex].getOffset());
        int i = 1;
        while (i < resultLength - 1) {
            result[i] = this.createOriginRegion((Segment)segments[firstIndex + i]);
            ++i;
        }
        Segment last = (Segment)segments[lastIndex];
        int segmentEndOffset = this.exclusiveEnd(last);
        IRegion lastRegion = this.createOriginEndRegion(last, segmentEndOffset - endOffset);
        if (resultLength > 1) {
            result[resultLength - 1] = lastRegion;
        } else {
            IRegion intersection = this.getIntersectingRegion(result[0], lastRegion);
            if (intersection == null) {
                result = new IRegion[]{};
            } else {
                result[0] = intersection;
            }
        }
        return result;
    }

    public int getImageLength() {
        Position[] segments = this.getSegments();
        int length = 0;
        int i = 0;
        while (i < segments.length) {
            length += segments[i].length;
            ++i;
        }
        return length;
    }

    public IRegion[] toExactImageRegions(IRegion originRegion) throws BadLocationException {
        int offset = originRegion.getOffset();
        if (originRegion.getLength() == 0) {
            IRegion[] iRegionArray;
            int imageOffset = this.toImageOffset(offset);
            if (imageOffset > -1) {
                IRegion[] iRegionArray2 = new IRegion[1];
                iRegionArray = iRegionArray2;
                iRegionArray2[0] = new Region(imageOffset, 0);
            } else {
                iRegionArray = null;
            }
            return iRegionArray;
        }
        int endOffset = this.exclusiveEnd(originRegion);
        Position[] fragments = this.getFragments();
        int firstIndex = this.findFragmentIndex(offset, 1);
        int lastIndex = this.findFragmentIndex(endOffset - 1, -1);
        if (firstIndex == -1 || firstIndex > lastIndex) {
            return null;
        }
        int resultLength = lastIndex - firstIndex + 1;
        IRegion[] result = new IRegion[resultLength];
        result[0] = this.createImageStartRegion((Fragment)fragments[firstIndex], offset - fragments[firstIndex].getOffset());
        int i = 1;
        while (i < resultLength - 1) {
            result[i] = this.createImageRegion((Fragment)fragments[firstIndex + i]);
            ++i;
        }
        Fragment last = (Fragment)fragments[lastIndex];
        int fragmentEndOffset = this.exclusiveEnd(last);
        IRegion lastRegion = this.createImageEndRegion(last, fragmentEndOffset - endOffset);
        if (resultLength > 1) {
            result[resultLength - 1] = lastRegion;
        } else {
            IRegion intersection = this.getIntersectingRegion(result[0], lastRegion);
            if (intersection == null) {
                return null;
            }
            result[0] = intersection;
        }
        return result;
    }

    public IRegion[] getExactCoverage(IRegion originRegion) throws BadLocationException {
        int originOffset = originRegion.getOffset();
        int originLength = originRegion.getLength();
        if (originLength == 0) {
            IRegion[] iRegionArray;
            int imageOffset = this.toImageOffset(originOffset);
            if (imageOffset > -1) {
                IRegion[] iRegionArray2 = new IRegion[1];
                iRegionArray = iRegionArray2;
                iRegionArray2[0] = new Region(originOffset, 0);
            } else {
                iRegionArray = null;
            }
            return iRegionArray;
        }
        int endOffset = originOffset + originLength;
        Position[] fragments = this.getFragments();
        int firstIndex = this.findFragmentIndex(originOffset, 1);
        int lastIndex = this.findFragmentIndex(endOffset - 1, -1);
        if (firstIndex == -1 || firstIndex > lastIndex) {
            return null;
        }
        int resultLength = lastIndex - firstIndex + 1;
        IRegion[] result = new IRegion[resultLength];
        result[0] = this.createOriginStartRegion((Fragment)fragments[firstIndex], originOffset - fragments[firstIndex].getOffset());
        int i = 1;
        while (i < resultLength - 1) {
            result[i] = this.createOriginRegion((Fragment)fragments[firstIndex + i]);
            ++i;
        }
        Fragment last = (Fragment)fragments[lastIndex];
        int fragmentEndOffset = this.exclusiveEnd(last);
        IRegion lastRegion = this.createOriginEndRegion(last, fragmentEndOffset - endOffset);
        if (resultLength > 1) {
            result[resultLength - 1] = lastRegion;
        } else {
            IRegion intersection = this.getIntersectingRegion(result[0], lastRegion);
            if (intersection == null) {
                return null;
            }
            result[0] = intersection;
        }
        return result;
    }

    private final void checkOriginRegion(IRegion originRegion) throws BadLocationException {
        int offset = originRegion.getOffset();
        int endOffset = this.inclusiveEnd(originRegion);
        int max = this.fMasterDocument.getLength();
        if (offset < 0 || offset > max || endOffset < 0 || endOffset > max) {
            throw new BadLocationException();
        }
    }

    private final void checkOriginOffset(int originOffset) throws BadLocationException {
        if (originOffset < 0 || originOffset > this.fMasterDocument.getLength()) {
            throw new BadLocationException();
        }
    }

    private final void checkImageOffset(int imageOffset) throws BadLocationException {
        if (imageOffset < 0 || imageOffset > this.getImageLength()) {
            throw new BadLocationException();
        }
    }

    private final int exclusiveEnd(Position position) {
        return position.offset + position.length;
    }

    private final int exclusiveEnd(IRegion region) {
        return region.getOffset() + region.getLength();
    }

    private final int inclusiveEnd(IRegion region) {
        int length = region.getLength();
        if (length == 0) {
            return region.getOffset();
        }
        return region.getOffset() + length - 1;
    }
}

