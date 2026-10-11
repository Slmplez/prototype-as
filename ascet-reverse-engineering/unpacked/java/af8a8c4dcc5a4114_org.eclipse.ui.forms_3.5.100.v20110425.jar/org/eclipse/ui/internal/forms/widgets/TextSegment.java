/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.BreakIterator
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.forms.widgets;

import com.ibm.icu.text.BreakIterator;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Vector;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.internal.forms.widgets.Locator;
import org.eclipse.ui.internal.forms.widgets.ParagraphSegment;
import org.eclipse.ui.internal.forms.widgets.SelectionData;

public class TextSegment
extends ParagraphSegment {
    private String colorId;
    private String fontId;
    private String text;
    protected boolean underline;
    private boolean wrapAllowed = true;
    protected Vector areaRectangles = new Vector();
    private TextFragment[] textFragments;

    public TextSegment(String text, String fontId) {
        this(text, fontId, null, true);
    }

    public TextSegment(String text, String fontId, String colorId) {
        this(text, fontId, colorId, true);
    }

    public TextSegment(String text, String fontId, String colorId, boolean wrapAllowed) {
        this.text = this.cleanup(text);
        this.fontId = fontId;
        this.colorId = colorId;
        this.wrapAllowed = wrapAllowed;
    }

    private String cleanup(String text) {
        StringBuffer buf = new StringBuffer();
        int i = 0;
        while (i < text.length()) {
            char c = text.charAt(i);
            if (c == '\n' || c == '\r' || c == '\f') {
                if (i > 0) {
                    buf.append(' ');
                }
            } else {
                buf.append(c);
            }
            ++i;
        }
        return buf.toString();
    }

    public void setWordWrapAllowed(boolean value) {
        this.wrapAllowed = value;
    }

    public boolean isWordWrapAllowed() {
        return this.wrapAllowed;
    }

    public boolean isSelectable() {
        return false;
    }

    public String getColorId() {
        return this.colorId;
    }

    public String getText() {
        return this.text;
    }

    void setText(String text) {
        this.text = this.cleanup(text);
        this.textFragments = null;
    }

    void setColorId(String colorId) {
        this.colorId = colorId;
    }

    void setFontId(String fontId) {
        this.fontId = fontId;
        this.textFragments = null;
    }

    public boolean contains(int x, int y) {
        int i = 0;
        while (i < this.areaRectangles.size()) {
            AreaRectangle ar = (AreaRectangle)this.areaRectangles.get(i);
            if (ar.contains(x, y)) {
                return true;
            }
            if (i < this.areaRectangles.size() - 1) {
                Rectangle top = ar.rect;
                Rectangle bot = ((AreaRectangle)this.areaRectangles.get((int)(i + 1))).rect;
                if (y >= top.y + top.height && y < bot.y) {
                    int left = Math.max(top.x, bot.x);
                    int right = Math.min(top.x + top.width, bot.x + bot.width);
                    if (x >= left && x <= right) {
                        return true;
                    }
                }
            }
            ++i;
        }
        return false;
    }

    public boolean intersects(Rectangle rect) {
        int i = 0;
        while (i < this.areaRectangles.size()) {
            AreaRectangle ar = (AreaRectangle)this.areaRectangles.get(i);
            if (ar.intersects(rect)) {
                return true;
            }
            if (i < this.areaRectangles.size() - 1) {
                Rectangle top = ar.rect;
                Rectangle bot = ((AreaRectangle)this.areaRectangles.get((int)(i + 1))).rect;
                if (top.y + top.height < bot.y) {
                    int right;
                    int y = top.y + top.height;
                    int height = bot.y - y;
                    int left = Math.max(top.x, bot.x);
                    Rectangle gap = new Rectangle(left, y, (right = Math.min(top.x + top.width, bot.x + bot.width)) - left, height);
                    if (gap.intersects(rect)) {
                        return true;
                    }
                }
            }
            ++i;
        }
        return false;
    }

    public Rectangle getBounds() {
        if (this.areaRectangles.size() == 0) {
            return new Rectangle(0, 0, 0, 0);
        }
        AreaRectangle ar0 = (AreaRectangle)this.areaRectangles.get(0);
        Rectangle bounds = Geometry.copy((Rectangle)ar0.rect);
        int i = 1;
        while (i < this.areaRectangles.size()) {
            AreaRectangle ar = (AreaRectangle)this.areaRectangles.get(i);
            bounds.add(ar.rect);
            ++i;
        }
        return bounds;
    }

    public boolean advanceLocator(GC gc, int wHint, Locator locator, Hashtable objectTable, boolean computeHeightOnly) {
        Font oldFont = null;
        if (this.fontId != null) {
            oldFont = gc.getFont();
            Font newFont = (Font)objectTable.get(this.fontId);
            if (newFont != null) {
                gc.setFont(newFont);
            }
        }
        FontMetrics fm = gc.getFontMetrics();
        int lineHeight = fm.getHeight();
        boolean newLine = false;
        if (wHint == -1 || !this.wrapAllowed) {
            Point extent = gc.textExtent(this.text);
            int totalExtent = locator.x + extent.x;
            if (this.isSelectable()) {
                ++totalExtent;
            }
            if (wHint != -1 && totalExtent + locator.marginWidth > wHint) {
                locator.resetCaret();
                locator.y += locator.rowHeight;
                if (computeHeightOnly) {
                    locator.collectHeights();
                }
                locator.rowHeight = 0;
                locator.leading = 0;
                newLine = true;
            }
            int width = extent.x;
            if (this.isSelectable()) {
                ++width;
            }
            locator.x += width;
            locator.width = locator.x;
            locator.rowHeight = Math.max(locator.rowHeight, extent.y);
            locator.leading = Math.max(locator.leading, fm.getLeading());
            return newLine;
        }
        this.computeTextFragments(gc);
        int width = 0;
        Point lineExtent = new Point(0, 0);
        int i = 0;
        while (i < this.textFragments.length) {
            TextFragment textFragment = this.textFragments[i];
            int currentExtent = locator.x + lineExtent.x;
            if (this.isSelectable()) {
                ++currentExtent;
            }
            if ((i != 0 || locator.x > locator.getStartX() + (this.isSelectable() ? 1 : 0)) && currentExtent + textFragment.length > wHint) {
                int lineWidth = currentExtent;
                locator.rowHeight = Math.max(locator.rowHeight, lineExtent.y);
                locator.leading = Math.max(locator.leading, fm.getLeading());
                if (computeHeightOnly) {
                    locator.collectHeights();
                }
                locator.x = locator.indent;
                locator.y += locator.rowHeight;
                locator.rowHeight = 0;
                locator.leading = 0;
                lineExtent.x = 0;
                lineExtent.y = 0;
                width = Math.max(width, lineWidth);
                newLine = true;
            }
            lineExtent.x += textFragment.length;
            lineExtent.y = Math.max(lineHeight, lineExtent.y);
            width = Math.max(width, locator.x + lineExtent.x);
            ++i;
        }
        int lineWidth = lineExtent.x;
        if (this.isSelectable()) {
            ++lineWidth;
        }
        locator.x += lineWidth;
        locator.width = width;
        locator.rowHeight = Math.max(locator.rowHeight, lineExtent.y);
        locator.leading = Math.max(locator.leading, fm.getLeading());
        if (oldFont != null) {
            gc.setFont(oldFont);
        }
        return newLine;
    }

    private void layoutWithoutWrapping(GC gc, int width, Locator locator, boolean selected, FontMetrics fm, int lineHeight, int descent) {
        Point extent = gc.textExtent(this.text);
        int ewidth = extent.x;
        if (this.isSelectable()) {
            ++ewidth;
        }
        if (locator.x + ewidth > width - locator.marginWidth) {
            locator.resetCaret();
            locator.y += locator.rowHeight;
            locator.rowHeight = 0;
            ++locator.rowCounter;
        }
        int ly = locator.getBaseline(fm.getHeight() - fm.getLeading());
        Rectangle br = new Rectangle(locator.x, ly, ewidth, lineHeight - descent + 3);
        this.areaRectangles.add(new AreaRectangle(br, 0, -1));
        locator.x += ewidth;
        locator.width = ewidth;
        locator.rowHeight = Math.max(locator.rowHeight, extent.y);
    }

    protected int convertOffsetToStringIndex(GC gc, String s, int x, int swidth, int selOffset) {
        int index = s.length();
        while (index > 0 && x + swidth > selOffset) {
            String ss = s.substring(0, --index);
            swidth = gc.textExtent((String)ss).x;
        }
        return index;
    }

    public void paintFocus(GC gc, Color bg, Color fg, boolean selected, Rectangle repaintRegion) {
        if (this.areaRectangles == null) {
            return;
        }
        int i = 0;
        while (i < this.areaRectangles.size()) {
            AreaRectangle areaRectangle = (AreaRectangle)this.areaRectangles.get(i);
            Rectangle br = areaRectangle.rect;
            int bx = br.x;
            int by = br.y;
            if (repaintRegion != null) {
                bx -= repaintRegion.x;
                by -= repaintRegion.y;
            }
            if (selected) {
                gc.setBackground(bg);
                gc.setForeground(fg);
                gc.drawFocus(bx, by, br.width, br.height);
            } else {
                gc.setForeground(bg);
                gc.drawRectangle(bx, by, br.width - 1, br.height - 1);
            }
            ++i;
        }
    }

    public void paint(GC gc, boolean hover, Hashtable resourceTable, boolean selected, SelectionData selData, Rectangle repaintRegion) {
        this.paint(gc, hover, resourceTable, selected, false, selData, repaintRegion);
    }

    protected void paint(GC gc, boolean hover, Hashtable resourceTable, boolean selected, boolean rollover, SelectionData selData, Rectangle repaintRegion) {
        Font oldFont = null;
        Color oldColor = null;
        Color oldBg = null;
        if (this.fontId != null) {
            oldFont = gc.getFont();
            Font newFont = (Font)resourceTable.get(this.fontId);
            if (newFont != null) {
                gc.setFont(newFont);
            }
        }
        if (!hover && this.colorId != null) {
            oldColor = gc.getForeground();
            Color newColor = (Color)resourceTable.get(this.colorId);
            if (newColor != null) {
                gc.setForeground(newColor);
            }
        }
        oldBg = gc.getBackground();
        FontMetrics fm = gc.getFontMetrics();
        int lineHeight = fm.getHeight();
        int descent = fm.getDescent();
        int i = 0;
        while (i < this.areaRectangles.size()) {
            AreaRectangle areaRectangle = (AreaRectangle)this.areaRectangles.get(i);
            Rectangle rect = areaRectangle.rect;
            String text = areaRectangle.getText();
            Point extent = gc.textExtent(text);
            int textX = rect.x + (this.isSelectable() ? 1 : 0);
            int lineY = rect.y + lineHeight - descent + 1;
            this.paintString(gc, text, extent.x, textX, rect.y, lineY, selData, rect, hover, rollover, repaintRegion);
            if (selected) {
                int fx = rect.x;
                int fy = rect.y;
                if (repaintRegion != null) {
                    fx -= repaintRegion.x;
                    fy -= repaintRegion.y;
                }
                Color fg = gc.getForeground();
                gc.setForeground(oldBg);
                gc.drawRectangle(fx, fy, rect.width - 1, rect.height - 1);
                gc.setForeground(fg);
                gc.drawFocus(fx, fy, rect.width, rect.height);
            }
            ++i;
        }
        if (oldFont != null) {
            gc.setFont(oldFont);
        }
        if (oldColor != null) {
            gc.setForeground(oldColor);
        }
        if (oldBg != null) {
            gc.setBackground(oldBg);
        }
    }

    public void computeSelection(GC gc, Hashtable resourceTable, SelectionData selData) {
        Font oldFont = null;
        if (this.fontId != null) {
            oldFont = gc.getFont();
            Font newFont = (Font)resourceTable.get(this.fontId);
            if (newFont != null) {
                gc.setFont(newFont);
            }
        }
        int i = 0;
        while (i < this.areaRectangles.size()) {
            AreaRectangle areaRectangle = (AreaRectangle)this.areaRectangles.get(i);
            Rectangle rect = areaRectangle.rect;
            String text = areaRectangle.getText();
            Point extent = gc.textExtent(text);
            this.computeSelection(gc, text, extent.x, selData, rect);
            ++i;
        }
        if (oldFont != null) {
            gc.setFont(oldFont);
        }
    }

    private void paintString(GC gc, String s, int swidth, int x, int y, int lineY, SelectionData selData, Rectangle bounds, boolean hover, boolean rolloverMode, Rectangle repaintRegion) {
        if (selData != null && selData.isEnclosed()) {
            Color savedBg = gc.getBackground();
            Color savedFg = gc.getForeground();
            int leftOffset = selData.getLeftOffset(bounds.height);
            int rightOffset = selData.getRightOffset(bounds.height);
            boolean firstRow = selData.isFirstSelectionRow(bounds.y, bounds.height);
            boolean lastRow = selData.isLastSelectionRow(bounds.y, bounds.height);
            boolean selectedRow = selData.isSelectedRow(bounds.y, bounds.height);
            int sstart = -1;
            int sstop = -1;
            if (firstRow && x + swidth < leftOffset || lastRow && x > rightOffset) {
                this.paintStringSegment(gc, s, gc.textExtent((String)s).x, x, y, lineY, hover, rolloverMode, repaintRegion);
                return;
            }
            if (firstRow && bounds.x + swidth > leftOffset) {
                sstart = this.convertOffsetToStringIndex(gc, s, bounds.x, swidth, leftOffset);
            }
            if (lastRow && bounds.x + swidth > rightOffset) {
                sstop = this.convertOffsetToStringIndex(gc, s, bounds.x, swidth, rightOffset);
            }
            if (firstRow && sstart != -1) {
                String left = s.substring(0, sstart);
                int width = gc.textExtent((String)left).x;
                this.paintStringSegment(gc, left, width, x, y, lineY, hover, rolloverMode, repaintRegion);
                x += width;
            }
            if (selectedRow) {
                int lindex = sstart != -1 ? sstart : 0;
                int rindex = sstop != -1 ? sstop : s.length();
                String mid = s.substring(lindex, rindex);
                Point extent = gc.textExtent(mid);
                gc.setForeground(selData.fg);
                gc.setBackground(selData.bg);
                gc.fillRectangle(x, y, extent.x, extent.y);
                this.paintStringSegment(gc, mid, extent.x, x, y, lineY, hover, rolloverMode, repaintRegion);
                x += extent.x;
                gc.setForeground(savedFg);
                gc.setBackground(savedBg);
            } else {
                this.paintStringSegment(gc, s, gc.textExtent((String)s).x, x, y, lineY, hover, rolloverMode, repaintRegion);
            }
            if (lastRow && sstop != -1) {
                String right = s.substring(sstop);
                this.paintStringSegment(gc, right, gc.textExtent((String)right).x, x, y, lineY, hover, rolloverMode, repaintRegion);
            }
        } else {
            this.paintStringSegment(gc, s, gc.textExtent((String)s).x, x, y, lineY, hover, rolloverMode, repaintRegion);
        }
    }

    private void computeSelection(GC gc, String s, int swidth, SelectionData selData, Rectangle bounds) {
        int rindex;
        int lindex;
        String mid;
        int leftOffset = selData.getLeftOffset(bounds.height);
        int rightOffset = selData.getRightOffset(bounds.height);
        boolean firstRow = selData.isFirstSelectionRow(bounds.y, bounds.height);
        boolean lastRow = selData.isLastSelectionRow(bounds.y, bounds.height);
        boolean selectedRow = selData.isSelectedRow(bounds.y, bounds.height);
        int sstart = -1;
        int sstop = -1;
        if (firstRow && bounds.x < leftOffset) {
            sstart = this.convertOffsetToStringIndex(gc, s, bounds.x, swidth, leftOffset);
        }
        if (lastRow && bounds.x + swidth > rightOffset) {
            sstop = this.convertOffsetToStringIndex(gc, s, bounds.x, swidth, rightOffset);
        }
        if (selectedRow && (mid = s.substring(lindex = sstart != -1 ? sstart : 0, rindex = sstop != -1 ? sstop : s.length())).length() > 0) {
            selData.addSegment(mid);
        }
    }

    private void paintStringSegment(GC gc, String s, int swidth, int x, int y, int lineY, boolean hover, boolean rolloverMode, Rectangle repaintRegion) {
        boolean reverse = false;
        int clipX = x;
        int clipY = y;
        int clipLineY = lineY;
        if (repaintRegion != null) {
            clipX -= repaintRegion.x;
            clipY -= repaintRegion.y;
            clipLineY -= repaintRegion.y;
        }
        if (rolloverMode && !hover) {
            reverse = true;
        }
        if (reverse) {
            this.drawUnderline(gc, swidth, clipX, clipLineY, hover, rolloverMode);
            this.drawText(gc, s, clipX, clipY);
        } else {
            this.drawText(gc, s, clipX, clipY);
            this.drawUnderline(gc, swidth, clipX, clipLineY, hover, rolloverMode);
        }
    }

    protected void drawText(GC gc, String s, int clipX, int clipY) {
        gc.drawText(s, clipX, clipY, true);
    }

    private void drawUnderline(GC gc, int swidth, int x, int y, boolean hover, boolean rolloverMode) {
        if (this.underline || rolloverMode) {
            Color saved = null;
            if (rolloverMode && !hover) {
                saved = gc.getForeground();
                gc.setForeground(gc.getBackground());
            }
            gc.drawLine(x, y, x + swidth - 1, y);
            if (saved != null) {
                gc.setForeground(saved);
            }
        }
    }

    public void layout(GC gc, int width, Locator locator, Hashtable resourceTable, boolean selected) {
        Font oldFont = null;
        this.areaRectangles.clear();
        if (this.fontId != null) {
            oldFont = gc.getFont();
            Font newFont = (Font)resourceTable.get(this.fontId);
            if (newFont != null) {
                gc.setFont(newFont);
            }
        }
        FontMetrics fm = gc.getFontMetrics();
        int lineHeight = fm.getHeight();
        int descent = fm.getDescent();
        if (!this.wrapAllowed) {
            this.layoutWithoutWrapping(gc, width, locator, selected, fm, lineHeight, descent);
        } else {
            int lineStart = 0;
            short lastLoc = 0;
            Point lineExtent = new Point(0, 0);
            this.computeTextFragments(gc);
            int rightEdge = width - locator.marginWidth;
            int i = 0;
            while (i < this.textFragments.length) {
                TextFragment fragment = this.textFragments[i];
                short breakLoc = fragment.index;
                if (breakLoc != 0) {
                    if ((i != 0 || locator.x > locator.getStartX() + (this.isSelectable() ? 1 : 0)) && locator.x + lineExtent.x + fragment.length > rightEdge) {
                        if (i != 0) {
                            int ly = locator.getBaseline(lineHeight - fm.getLeading());
                            Rectangle br = new Rectangle(this.isSelectable() ? locator.x - 1 : locator.x, ly, this.isSelectable() ? lineExtent.x + 1 : lineExtent.x, lineHeight - descent + 3);
                            this.areaRectangles.add(new AreaRectangle(br, lineStart, lastLoc));
                        }
                        locator.rowHeight = Math.max(locator.rowHeight, lineExtent.y);
                        locator.resetCaret();
                        if (this.isSelectable()) {
                            ++locator.x;
                        }
                        locator.y += locator.rowHeight;
                        ++locator.rowCounter;
                        locator.rowHeight = 0;
                        lineStart = lastLoc;
                        lineExtent.x = 0;
                        lineExtent.y = 0;
                    }
                    lastLoc = breakLoc;
                    lineExtent.x += fragment.length;
                    lineExtent.y = Math.max(lineHeight, lineExtent.y);
                }
                ++i;
            }
            int ly = locator.getBaseline(lineHeight - fm.getLeading());
            int lastWidth = lineExtent.x;
            if (this.isSelectable()) {
                ++lastWidth;
            }
            Rectangle br = new Rectangle(this.isSelectable() ? locator.x - 1 : locator.x, ly, this.isSelectable() ? lineExtent.x + 1 : lineExtent.x, lineHeight - descent + 3);
            this.areaRectangles.add(new AreaRectangle(br, lineStart, lastLoc));
            locator.x += lastWidth;
            locator.rowHeight = Math.max(locator.rowHeight, lineExtent.y);
        }
        if (oldFont != null) {
            gc.setFont(oldFont);
        }
    }

    private void computeTextFragments(GC gc) {
        if (this.textFragments != null) {
            return;
        }
        ArrayList<TextFragment> list = new ArrayList<TextFragment>();
        BreakIterator wb = BreakIterator.getLineInstance();
        wb.setText(this.getText());
        int cursor = 0;
        int loc = wb.first();
        while (loc != -1) {
            if (loc != 0) {
                String word = this.text.substring(cursor, loc);
                Point extent = gc.textExtent(word);
                list.add(new TextFragment((short)loc, (short)extent.x));
                cursor = loc;
            }
            loc = wb.next();
        }
        this.textFragments = list.toArray(new TextFragment[list.size()]);
    }

    public void clearCache(String fontId) {
        if (fontId == null && (this.fontId == null || this.fontId.equals("f.____bold"))) {
            this.textFragments = null;
        } else if (fontId != null && this.fontId != null && fontId.equals(this.fontId)) {
            this.textFragments = null;
        }
    }

    class AreaRectangle {
        Rectangle rect;
        int from;
        int to;

        public AreaRectangle(Rectangle rect, int from, int to) {
            this.rect = rect;
            this.from = from;
            this.to = to;
        }

        public boolean contains(int x, int y) {
            return this.rect.contains(x, y);
        }

        public boolean intersects(Rectangle region) {
            return this.rect.intersects(region);
        }

        public String getText() {
            if (this.from == 0 && this.to == -1) {
                return TextSegment.this.getText();
            }
            if (this.from > 0 && this.to == -1) {
                return TextSegment.this.getText().substring(this.from);
            }
            return TextSegment.this.getText().substring(this.from, this.to);
        }
    }

    static class SelectionRange {
        public int start;
        public int stop;

        public SelectionRange() {
            this.reset();
        }

        public void reset() {
            this.start = -1;
            this.stop = -1;
        }
    }

    static class TextFragment {
        short index;
        short length;

        public TextFragment(short index, short length) {
            this.index = index;
            this.length = length;
        }
    }
}

