/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.custom.StyledText
 */
package org.eclipse.jface.text;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledText;

public class TextPresentation {
    private StyleRange fDefaultRange;
    private ArrayList fRanges;
    private IRegion fResultWindow;
    private IRegion fExtent;

    public static void applyTextPresentation(TextPresentation presentation, StyledText text) {
        StyleRange[] ranges = new StyleRange[presentation.getDenumerableRanges()];
        int i = 0;
        Iterator e = presentation.getAllStyleRangeIterator();
        while (e.hasNext()) {
            ranges[i++] = (StyleRange)e.next();
        }
        text.setStyleRanges(ranges);
    }

    public TextPresentation() {
        this.fRanges = new ArrayList(50);
    }

    public TextPresentation(int sizeHint) {
        Assert.isTrue((sizeHint > 0 ? 1 : 0) != 0);
        this.fRanges = new ArrayList(sizeHint);
    }

    public TextPresentation(IRegion extent, int sizeHint) {
        this(sizeHint);
        Assert.isNotNull((Object)extent);
        this.fExtent = extent;
    }

    public void setResultWindow(IRegion resultWindow) {
        this.fResultWindow = resultWindow;
    }

    public void setDefaultStyleRange(StyleRange range) {
        this.fDefaultRange = range;
    }

    public StyleRange getDefaultStyleRange() {
        StyleRange range = this.createWindowRelativeRange(this.fResultWindow, this.fDefaultRange);
        if (range == null) {
            return null;
        }
        return (StyleRange)range.clone();
    }

    public void addStyleRange(StyleRange range) {
        this.checkConsistency(range);
        this.fRanges.add(range);
    }

    public void replaceStyleRange(StyleRange range) {
        this.applyStyleRange(range, false);
    }

    public void mergeStyleRange(StyleRange range) {
        this.applyStyleRange(range, true);
    }

    private void applyStyleRange(StyleRange range, boolean merge) {
        if (range.length == 0) {
            return;
        }
        this.checkConsistency(range);
        int start = range.start;
        int length = range.length;
        int end = start + length;
        if (this.fRanges.size() == 0) {
            StyleRange defaultRange = this.getDefaultStyleRange();
            if (defaultRange == null) {
                defaultRange = range;
            }
            defaultRange.start = start;
            defaultRange.length = length;
            this.applyStyle(range, defaultRange, merge);
            this.fRanges.add(defaultRange);
        } else {
            Region rangeRegion = new Region(start, length);
            int first = this.getFirstIndexInWindow((IRegion)rangeRegion);
            if (first == this.fRanges.size()) {
                StyleRange defaultRange = this.getDefaultStyleRange();
                if (defaultRange == null) {
                    defaultRange = range;
                }
                defaultRange.start = start;
                defaultRange.length = length;
                this.applyStyle(range, defaultRange, merge);
                this.fRanges.add(defaultRange);
                return;
            }
            int last = this.getFirstIndexAfterWindow((IRegion)rangeRegion);
            int i = first;
            while (i < last && length > 0) {
                StyleRange current = (StyleRange)this.fRanges.get(i);
                int currentStart = current.start;
                int currentEnd = currentStart + current.length;
                if (end <= currentStart) {
                    this.fRanges.add(i, range);
                    return;
                }
                if (start < currentEnd) {
                    StyleRange currentCopy = null;
                    if (end < currentEnd) {
                        currentCopy = (StyleRange)current.clone();
                    }
                    if (start < currentStart) {
                        StyleRange defaultRange = this.getDefaultStyleRange();
                        if (defaultRange == null) {
                            defaultRange = new StyleRange();
                        }
                        defaultRange.start = start;
                        defaultRange.length = currentStart - start;
                        this.applyStyle(range, defaultRange, merge);
                        this.fRanges.add(i, defaultRange);
                        ++i;
                        ++last;
                        current.length = Math.min(end, currentEnd) - currentStart;
                        this.applyStyle(range, current, merge);
                    }
                    if (start >= currentStart) {
                        current.length = start - currentStart;
                        if (current.length > 0) {
                            current = (StyleRange)current.clone();
                            ++last;
                            this.fRanges.add(++i, current);
                        }
                        this.applyStyle(range, current, merge);
                        current.start = start;
                        current.length = Math.min(end, currentEnd) - start;
                    }
                    if (end < currentEnd) {
                        currentCopy.start = end;
                        currentCopy.length = currentEnd - end;
                        ++last;
                        this.fRanges.add(++i, currentCopy);
                    }
                    range.start = currentEnd;
                    range.length = Math.max(end - currentEnd, 0);
                    start = range.start;
                    length = range.length;
                }
                ++i;
            }
            if (length > 0) {
                StyleRange defaultRange = this.getDefaultStyleRange();
                if (defaultRange == null) {
                    defaultRange = range;
                }
                defaultRange.start = start;
                defaultRange.length = end - start;
                this.applyStyle(range, defaultRange, merge);
                this.fRanges.add(last, defaultRange);
            }
        }
    }

    public void replaceStyleRanges(StyleRange[] ranges) {
        this.applyStyleRanges(ranges, false);
    }

    public void mergeStyleRanges(StyleRange[] ranges) {
        this.applyStyleRanges(ranges, true);
    }

    private void applyStyleRanges(StyleRange[] ranges, boolean merge) {
        int j = 0;
        ArrayList oldRanges = this.fRanges;
        ArrayList newRanges = new ArrayList(2 * ranges.length + oldRanges.size());
        int i = 0;
        int n = ranges.length;
        while (i < n) {
            StyleRange range = ranges[i];
            this.fRanges = oldRanges;
            int m = this.getFirstIndexAfterWindow((IRegion)new Region(range.start, range.length));
            while (j < m) {
                newRanges.add(oldRanges.get(j));
                ++j;
            }
            this.fRanges = newRanges;
            this.applyStyleRange(range, merge);
            ++i;
        }
        int m = oldRanges.size();
        while (j < m) {
            newRanges.add(oldRanges.get(j));
            ++j;
        }
        this.fRanges = newRanges;
    }

    private void applyStyle(StyleRange template, StyleRange target, boolean merge) {
        if (merge) {
            if (template.font != null) {
                target.font = template.font;
            }
            target.fontStyle |= template.fontStyle;
            if (template.metrics != null) {
                target.metrics = template.metrics;
            }
            if (template.foreground != null || template.underlineStyle == 4) {
                target.foreground = template.foreground;
            }
            if (template.background != null) {
                target.background = template.background;
            }
            target.strikeout |= template.strikeout;
            if (template.strikeoutColor != null) {
                target.strikeoutColor = template.strikeoutColor;
            }
            target.underline |= template.underline;
            if (template.underlineStyle != 0 && target.underlineStyle != 4) {
                target.underlineStyle = template.underlineStyle;
            }
            if (template.underlineColor != null) {
                target.underlineColor = template.underlineColor;
            }
            if (template.borderStyle != 0) {
                target.borderStyle = template.borderStyle;
            }
            if (template.borderColor != null) {
                target.borderColor = template.borderColor;
            }
        } else {
            target.font = template.font;
            target.fontStyle = template.fontStyle;
            target.metrics = template.metrics;
            target.foreground = template.foreground;
            target.background = template.background;
            target.strikeout = template.strikeout;
            target.strikeoutColor = template.strikeoutColor;
            target.underline = template.underline;
            target.underlineStyle = template.underlineStyle;
            target.underlineColor = template.underlineColor;
            target.borderStyle = template.borderStyle;
            target.borderColor = template.borderColor;
        }
    }

    private void checkConsistency(StyleRange range) {
        if (range == null) {
            throw new IllegalArgumentException();
        }
        if (this.fDefaultRange != null) {
            int defaultEnd;
            int end;
            if (range.start < this.fDefaultRange.start) {
                range.start = this.fDefaultRange.start;
            }
            if ((end = range.start + range.length) > (defaultEnd = this.fDefaultRange.start + this.fDefaultRange.length)) {
                range.length -= end - defaultEnd;
            }
        }
    }

    private int getFirstIndexInWindow(IRegion window) {
        if (window != null) {
            int start = window.getOffset();
            int i = -1;
            int j = this.fRanges.size();
            while (j - i > 1) {
                int k = i + j >> 1;
                StyleRange r = (StyleRange)this.fRanges.get(k);
                if (r.start + r.length > start) {
                    j = k;
                    continue;
                }
                i = k;
            }
            return j;
        }
        return 0;
    }

    private int getFirstIndexAfterWindow(IRegion window) {
        if (window != null) {
            int end = window.getOffset() + window.getLength();
            int i = -1;
            int j = this.fRanges.size();
            while (j - i > 1) {
                int k = i + j >> 1;
                StyleRange r = (StyleRange)this.fRanges.get(k);
                if (r.start < end) {
                    i = k;
                    continue;
                }
                j = k;
            }
            return j;
        }
        return this.fRanges.size();
    }

    private StyleRange createWindowRelativeRange(IRegion window, StyleRange range) {
        int windowEnd;
        int rangeEnd;
        if (window == null || range == null) {
            return range;
        }
        int start = range.start - window.getOffset();
        if (start < 0) {
            start = 0;
        }
        int end = (rangeEnd = range.start + range.length) > (windowEnd = window.getOffset() + window.getLength()) ? windowEnd : rangeEnd;
        StyleRange newRange = (StyleRange)range.clone();
        newRange.start = start;
        newRange.length = (end -= window.getOffset()) - start;
        return newRange;
    }

    private IRegion createWindowRelativeRegion(IRegion coverage) {
        int windowEnd;
        int rangeEnd;
        if (this.fResultWindow == null || coverage == null) {
            return coverage;
        }
        int start = coverage.getOffset() - this.fResultWindow.getOffset();
        if (start < 0) {
            start = 0;
        }
        int end = (rangeEnd = coverage.getOffset() + coverage.getLength()) > (windowEnd = this.fResultWindow.getOffset() + this.fResultWindow.getLength()) ? windowEnd : rangeEnd;
        return new Region(start, (end -= this.fResultWindow.getOffset()) - start);
    }

    public Iterator getNonDefaultStyleRangeIterator() {
        return new FilterIterator(this.fDefaultRange != null);
    }

    public Iterator getAllStyleRangeIterator() {
        return new FilterIterator(false);
    }

    public boolean isEmpty() {
        return this.fDefaultRange == null && this.getDenumerableRanges() == 0;
    }

    public int getDenumerableRanges() {
        int size = this.getFirstIndexAfterWindow(this.fResultWindow) - this.getFirstIndexInWindow(this.fResultWindow);
        return size < 0 ? 0 : size;
    }

    public StyleRange getFirstStyleRange() {
        try {
            StyleRange range = (StyleRange)this.fRanges.get(this.getFirstIndexInWindow(this.fResultWindow));
            return this.createWindowRelativeRange(this.fResultWindow, range);
        }
        catch (NoSuchElementException noSuchElementException) {
        }
        catch (IndexOutOfBoundsException indexOutOfBoundsException) {}
        return null;
    }

    public StyleRange getLastStyleRange() {
        try {
            StyleRange range = (StyleRange)this.fRanges.get(this.getFirstIndexAfterWindow(this.fResultWindow) - 1);
            return this.createWindowRelativeRange(this.fResultWindow, range);
        }
        catch (NoSuchElementException noSuchElementException) {
            return null;
        }
        catch (IndexOutOfBoundsException indexOutOfBoundsException) {
            return null;
        }
    }

    public IRegion getCoverage() {
        if (this.fDefaultRange != null) {
            StyleRange range = this.getDefaultStyleRange();
            return new Region(range.start, range.length);
        }
        StyleRange first = this.getFirstStyleRange();
        StyleRange last = this.getLastStyleRange();
        if (first == null || last == null) {
            return null;
        }
        return new Region(first.start, last.start - first.start + last.length);
    }

    public IRegion getExtent() {
        if (this.fExtent != null) {
            return this.createWindowRelativeRegion(this.fExtent);
        }
        return this.getCoverage();
    }

    public void clear() {
        this.fDefaultRange = null;
        this.fResultWindow = null;
        this.fRanges.clear();
    }

    class FilterIterator
    implements Iterator {
        protected int fIndex;
        protected int fLength;
        protected boolean fSkipDefaults;
        protected IRegion fWindow;

        protected FilterIterator(boolean skipDefaults) {
            this.fSkipDefaults = skipDefaults;
            this.fWindow = TextPresentation.this.fResultWindow;
            this.fIndex = TextPresentation.this.getFirstIndexInWindow(this.fWindow);
            this.fLength = TextPresentation.this.getFirstIndexAfterWindow(this.fWindow);
            if (this.fSkipDefaults) {
                this.computeIndex();
            }
        }

        public Object next() {
            try {
                StyleRange r = (StyleRange)TextPresentation.this.fRanges.get(this.fIndex++);
                StyleRange styleRange = TextPresentation.this.createWindowRelativeRange(this.fWindow, r);
                return styleRange;
            }
            catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
                throw new NoSuchElementException();
            }
            finally {
                if (this.fSkipDefaults) {
                    this.computeIndex();
                }
            }
        }

        public boolean hasNext() {
            return this.fIndex < this.fLength;
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }

        protected boolean skip(Object o) {
            StyleRange r = (StyleRange)o;
            return r.similarTo(TextPresentation.this.fDefaultRange);
        }

        protected void computeIndex() {
            while (this.fIndex < this.fLength && this.skip(TextPresentation.this.fRanges.get(this.fIndex))) {
                ++this.fIndex;
            }
        }
    }
}

