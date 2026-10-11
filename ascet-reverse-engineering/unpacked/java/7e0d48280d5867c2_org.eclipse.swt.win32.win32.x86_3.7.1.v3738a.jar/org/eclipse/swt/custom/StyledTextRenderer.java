/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.Bullet;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.custom.TextChangingEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GlyphMetrics;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.IME;
import org.eclipse.swt.widgets.ScrollBar;

class StyledTextRenderer {
    Device device;
    StyledText styledText;
    StyledTextContent content;
    Font regularFont;
    Font boldFont;
    Font italicFont;
    Font boldItalicFont;
    int tabWidth;
    int ascent;
    int descent;
    int averageCharWidth;
    int topIndex = -1;
    TextLayout[] layouts;
    int lineCount;
    int[] lineWidth;
    int[] lineHeight;
    LineInfo[] lines;
    int maxWidth;
    int maxWidthLineIndex;
    boolean idleRunning;
    Bullet[] bullets;
    int[] bulletsIndices;
    int[] redrawLines;
    int[] ranges;
    int styleCount;
    StyleRange[] styles;
    StyleRange[] stylesSet;
    int stylesSetCount = 0;
    boolean hasLinks;
    boolean fixedPitch;
    static final int BULLET_MARGIN = 8;
    static final boolean COMPACT_STYLES = true;
    static final boolean MERGE_STYLES = true;
    static final int GROW = 32;
    static final int IDLE_TIME = 50;
    static final int CACHE_SIZE = 128;
    static final int BACKGROUND = 1;
    static final int ALIGNMENT = 2;
    static final int INDENT = 4;
    static final int JUSTIFY = 8;
    static final int SEGMENTS = 32;
    static final int TABSTOPS = 64;
    static final int WRAP_INDENT = 128;
    static final int SEGMENT_CHARS = 256;

    StyledTextRenderer(Device device, StyledText styledText) {
        this.device = device;
        this.styledText = styledText;
    }

    int addMerge(int[] mergeRanges, StyleRange[] mergeStyles, int mergeCount, int modifyStart, int modifyEnd) {
        int grow;
        int rangeCount = this.styleCount << 1;
        StyleRange endStyle = null;
        int endStart = 0;
        int endLength = 0;
        if (modifyEnd < rangeCount) {
            endStyle = this.styles[modifyEnd >> 1];
            endStart = this.ranges[modifyEnd];
            endLength = this.ranges[modifyEnd + 1];
        }
        if (rangeCount + (grow = mergeCount - (modifyEnd - modifyStart)) >= this.ranges.length) {
            int[] tmpRanges = new int[this.ranges.length + grow + 64];
            System.arraycopy(this.ranges, 0, tmpRanges, 0, modifyStart);
            StyleRange[] tmpStyles = new StyleRange[this.styles.length + (grow >> 1) + 32];
            System.arraycopy(this.styles, 0, tmpStyles, 0, modifyStart >> 1);
            if (rangeCount > modifyEnd) {
                System.arraycopy(this.ranges, modifyEnd, tmpRanges, modifyStart + mergeCount, rangeCount - modifyEnd);
                System.arraycopy(this.styles, modifyEnd >> 1, tmpStyles, modifyStart + mergeCount >> 1, this.styleCount - (modifyEnd >> 1));
            }
            this.ranges = tmpRanges;
            this.styles = tmpStyles;
        } else if (rangeCount > modifyEnd) {
            System.arraycopy(this.ranges, modifyEnd, this.ranges, modifyStart + mergeCount, rangeCount - modifyEnd);
            System.arraycopy(this.styles, modifyEnd >> 1, this.styles, modifyStart + mergeCount >> 1, this.styleCount - (modifyEnd >> 1));
        }
        int j = modifyStart;
        int i = 0;
        while (i < mergeCount) {
            if (j > 0 && this.ranges[j - 2] + this.ranges[j - 1] == mergeRanges[i] && mergeStyles[i >> 1].similarTo(this.styles[j - 2 >> 1])) {
                int n = j - 1;
                this.ranges[n] = this.ranges[n] + mergeRanges[i + 1];
            } else {
                this.styles[j >> 1] = mergeStyles[i >> 1];
                this.ranges[j++] = mergeRanges[i];
                this.ranges[j++] = mergeRanges[i + 1];
            }
            i += 2;
        }
        if (endStyle != null && this.ranges[j - 2] + this.ranges[j - 1] == endStart && endStyle.similarTo(this.styles[j - 2 >> 1])) {
            int n = j - 1;
            this.ranges[n] = this.ranges[n] + endLength;
            modifyEnd += 2;
            mergeCount += 2;
        }
        if (rangeCount > modifyEnd) {
            System.arraycopy(this.ranges, modifyStart + mergeCount, this.ranges, j, rangeCount - modifyEnd);
            System.arraycopy(this.styles, modifyStart + mergeCount >> 1, this.styles, j >> 1, this.styleCount - (modifyEnd >> 1));
        }
        grow = j - modifyStart - (modifyEnd - modifyStart);
        this.styleCount += grow >> 1;
        return grow;
    }

    /*
     * Unable to fully structure code
     */
    int addMerge(StyleRange[] mergeStyles, int mergeCount, int modifyStart, int modifyEnd) {
        grow = mergeCount - (modifyEnd - modifyStart);
        endStyle = null;
        if (modifyEnd < this.styleCount) {
            endStyle = this.styles[modifyEnd];
        }
        if (this.styleCount + grow >= this.styles.length) {
            tmpStyles = new StyleRange[this.styles.length + grow + 32];
            System.arraycopy(this.styles, 0, tmpStyles, 0, modifyStart);
            if (this.styleCount > modifyEnd) {
                System.arraycopy(this.styles, modifyEnd, tmpStyles, modifyStart + mergeCount, this.styleCount - modifyEnd);
            }
            this.styles = tmpStyles;
        } else if (this.styleCount > modifyEnd) {
            System.arraycopy(this.styles, modifyEnd, this.styles, modifyStart + mergeCount, this.styleCount - modifyEnd);
        }
        j = modifyStart;
        i = 0;
        while (i < mergeCount) {
            newStyle = mergeStyles[i];
            if (j <= 0) ** GOTO lbl-1000
            style = this.styles[j - 1];
            if (style.start + style.length == newStyle.start && newStyle.similarTo(style)) {
                style.length += newStyle.length;
            } else lbl-1000:
            // 2 sources

            {
                this.styles[j++] = newStyle;
            }
            ++i;
        }
        style = this.styles[j - 1];
        if (endStyle != null && style.start + style.length == endStyle.start && endStyle.similarTo(style)) {
            style.length += endStyle.length;
            ++modifyEnd;
            ++mergeCount;
        }
        if (this.styleCount > modifyEnd) {
            System.arraycopy(this.styles, modifyStart + mergeCount, this.styles, j, this.styleCount - modifyEnd);
        }
        grow = j - modifyStart - (modifyEnd - modifyStart);
        this.styleCount += grow;
        return grow;
    }

    void calculate(int startLine, int lineCount) {
        int endLine = startLine + lineCount;
        if (startLine < 0 || endLine > this.lineWidth.length) {
            return;
        }
        int hTrim = this.styledText.leftMargin + this.styledText.rightMargin + this.styledText.getCaretWidth();
        int i = startLine;
        while (i < endLine) {
            if (this.lineWidth[i] == -1 || this.lineHeight[i] == -1) {
                TextLayout layout = this.getTextLayout(i);
                Rectangle rect = layout.getBounds();
                this.lineWidth[i] = rect.width + hTrim;
                this.lineHeight[i] = rect.height;
                this.disposeTextLayout(layout);
            }
            if (this.lineWidth[i] > this.maxWidth) {
                this.maxWidth = this.lineWidth[i];
                this.maxWidthLineIndex = i;
            }
            ++i;
        }
    }

    void calculateClientArea() {
        int index = this.styledText.getTopIndex();
        int lineCount = this.content.getLineCount();
        int height = this.styledText.getClientArea().height;
        int y = 0;
        while (height > y && lineCount > index) {
            this.calculate(index, 1);
            y += this.lineHeight[index++];
        }
    }

    void calculateIdle() {
        if (this.idleRunning) {
            return;
        }
        Runnable runnable = new Runnable(){

            public void run() {
                if (StyledTextRenderer.this.styledText == null) {
                    return;
                }
                long start = System.currentTimeMillis();
                int i = 0;
                while (i < StyledTextRenderer.this.lineCount) {
                    if (StyledTextRenderer.this.lineHeight[i] == -1 || StyledTextRenderer.this.lineWidth[i] == -1) {
                        StyledTextRenderer.this.calculate(i, 1);
                        if (System.currentTimeMillis() - start > 50L) break;
                    }
                    ++i;
                }
                if (i < StyledTextRenderer.this.lineCount) {
                    Display display = StyledTextRenderer.this.styledText.getDisplay();
                    display.asyncExec(this);
                } else {
                    StyledTextRenderer.this.idleRunning = false;
                    StyledTextRenderer.this.styledText.setScrollBars(true);
                    ScrollBar bar = StyledTextRenderer.this.styledText.getVerticalBar();
                    if (bar != null) {
                        bar.setSelection(StyledTextRenderer.this.styledText.getVerticalScrollOffset());
                    }
                }
            }
        };
        Display display = this.styledText.getDisplay();
        display.asyncExec(runnable);
        this.idleRunning = true;
    }

    void clearLineBackground(int startLine, int count) {
        if (this.lines == null) {
            return;
        }
        int i = startLine;
        while (i < startLine + count) {
            LineInfo info = this.lines[i];
            if (info != null) {
                info.flags &= 0xFFFFFFFE;
                info.background = null;
                if (info.flags == 0) {
                    this.lines[i] = null;
                }
            }
            ++i;
        }
    }

    void clearLineStyle(int startLine, int count) {
        if (this.lines == null) {
            return;
        }
        int i = startLine;
        while (i < startLine + count) {
            LineInfo info = this.lines[i];
            if (info != null) {
                info.flags &= 0xFFFFFF31;
                if (info.flags == 0) {
                    this.lines[i] = null;
                }
            }
            ++i;
        }
    }

    void copyInto(StyledTextRenderer renderer) {
        int i;
        if (this.ranges != null) {
            renderer.ranges = new int[this.styleCount << 1];
            int[] newRanges = renderer.ranges;
            System.arraycopy(this.ranges, 0, newRanges, 0, newRanges.length);
        }
        if (this.styles != null) {
            renderer.styles = new StyleRange[this.styleCount];
            StyleRange[] newStyles = renderer.styles;
            i = 0;
            while (i < newStyles.length) {
                newStyles[i] = (StyleRange)this.styles[i].clone();
                ++i;
            }
            renderer.styleCount = this.styleCount;
        }
        if (this.lines != null) {
            renderer.lines = new LineInfo[this.lineCount];
            LineInfo[] newLines = renderer.lines;
            i = 0;
            while (i < newLines.length) {
                newLines[i] = new LineInfo(this.lines[i]);
                ++i;
            }
            renderer.lineCount = this.lineCount;
        }
    }

    void dispose() {
        if (this.boldFont != null) {
            this.boldFont.dispose();
        }
        if (this.italicFont != null) {
            this.italicFont.dispose();
        }
        if (this.boldItalicFont != null) {
            this.boldItalicFont.dispose();
        }
        this.boldItalicFont = null;
        this.italicFont = null;
        this.boldFont = null;
        this.reset();
        this.content = null;
        this.device = null;
        this.styledText = null;
    }

    void disposeTextLayout(TextLayout layout) {
        if (this.layouts != null) {
            int i = 0;
            while (i < this.layouts.length) {
                if (this.layouts[i] == layout) {
                    return;
                }
                ++i;
            }
        }
        layout.dispose();
    }

    void drawBullet(Bullet bullet, GC gc, int paintX, int paintY, int index, int lineAscent, int lineDescent) {
        StyleRange style = bullet.style;
        GlyphMetrics metrics = style.metrics;
        Color color = style.foreground;
        if (color != null) {
            gc.setForeground(color);
        }
        if ((bullet.type & 1) != 0 && StyledText.IS_MOTIF) {
            int size = Math.max(4, (lineAscent + lineDescent) / 4);
            if ((size & 1) == 0) {
                ++size;
            }
            if (color == null) {
                Display display = this.styledText.getDisplay();
                color = display.getSystemColor(2);
            }
            gc.setBackground(color);
            int x = paintX + Math.max(0, metrics.width - size - 8);
            gc.fillArc(x, paintY + size, size + 1, size + 1, 0, 360);
            return;
        }
        Font font = style.font;
        if (font != null) {
            gc.setFont(font);
        }
        String string = "";
        int type = bullet.type & 0xF;
        switch (type) {
            case 1: {
                string = "\u2022";
                break;
            }
            case 2: {
                string = String.valueOf(index + 1);
                break;
            }
            case 4: {
                string = String.valueOf((char)(index % 26 + 97));
                break;
            }
            case 8: {
                string = String.valueOf((char)(index % 26 + 65));
            }
        }
        if ((bullet.type & 0x10) != 0) {
            string = String.valueOf(string) + bullet.text;
        }
        Display display = this.styledText.getDisplay();
        TextLayout layout = new TextLayout(display);
        layout.setText(string);
        layout.setAscent(lineAscent);
        layout.setDescent(lineDescent);
        style = (StyleRange)style.clone();
        style.metrics = null;
        if (style.font == null) {
            style.font = this.getFont(style.fontStyle);
        }
        layout.setStyle(style, 0, string.length());
        int x = paintX + Math.max(0, metrics.width - layout.getBounds().width - 8);
        layout.draw(gc, x, paintY);
        layout.dispose();
    }

    int drawLine(int lineIndex, int paintX, int paintY, GC gc, Color widgetBackground, Color widgetForeground) {
        TextLayout layout = this.getTextLayout(lineIndex);
        String line = this.content.getLine(lineIndex);
        int lineOffset = this.content.getOffsetAtLine(lineIndex);
        int lineLength = line.length();
        Point selection = this.styledText.getSelection();
        int selectionStart = selection.x - lineOffset;
        int selectionEnd = selection.y - lineOffset;
        if (this.styledText.getBlockSelection()) {
            selectionEnd = 0;
            selectionStart = 0;
        }
        Rectangle client = this.styledText.getClientArea();
        Color lineBackground = this.getLineBackground(lineIndex, null);
        StyledTextEvent event = this.styledText.getLineBackgroundData(lineOffset, line);
        if (event != null && event.lineBackground != null) {
            lineBackground = event.lineBackground;
        }
        int height = layout.getBounds().height;
        if (lineBackground != null) {
            gc.setBackground(lineBackground);
            gc.fillRectangle(client.x, paintY, client.width, height);
        } else {
            gc.setBackground(widgetBackground);
            this.styledText.drawBackground(gc, client.x, paintY, client.width, height);
        }
        gc.setForeground(widgetForeground);
        if (selectionStart == selectionEnd || selectionEnd <= 0 && selectionStart > lineLength - 1) {
            layout.draw(gc, paintX, paintY);
        } else {
            int start = Math.max(0, selectionStart);
            int end = Math.min(lineLength, selectionEnd);
            Color selectionFg = this.styledText.getSelectionForeground();
            Color selectionBg = this.styledText.getSelectionBackground();
            int flags = (this.styledText.getStyle() & 0x10000) != 0 ? 65536 : 131072;
            if (selectionStart <= lineLength && lineLength < selectionEnd) {
                flags |= 0x100000;
            }
            layout.draw(gc, paintX, paintY, start, end - 1, selectionFg, selectionBg, flags);
        }
        Bullet bullet = null;
        int bulletIndex = -1;
        if (this.bullets != null) {
            if (this.bulletsIndices != null) {
                int index = lineIndex - this.topIndex;
                if (index >= 0 && index < 128) {
                    bullet = this.bullets[index];
                    bulletIndex = this.bulletsIndices[index];
                }
            } else {
                int i = 0;
                while (i < this.bullets.length) {
                    bullet = this.bullets[i];
                    bulletIndex = bullet.indexOf(lineIndex);
                    if (bulletIndex != -1) break;
                    ++i;
                }
            }
        }
        if (bulletIndex != -1 && bullet != null) {
            FontMetrics metrics = layout.getLineMetrics(0);
            int lineAscent = metrics.getAscent() + metrics.getLeading();
            if (bullet.type == 32) {
                bullet.style.start = lineOffset;
                this.styledText.paintObject(gc, paintX, paintY, lineAscent, metrics.getDescent(), bullet.style, bullet, bulletIndex);
            } else {
                this.drawBullet(bullet, gc, paintX, paintY, bulletIndex, lineAscent, metrics.getDescent());
            }
        }
        TextStyle[] styles = layout.getStyles();
        int[] ranges = null;
        int i = 0;
        while (i < styles.length) {
            if (styles[i].metrics != null) {
                if (ranges == null) {
                    ranges = layout.getRanges();
                }
                int start = ranges[i << 1];
                int length = ranges[(i << 1) + 1] - start + 1;
                Point point = layout.getLocation(start, false);
                FontMetrics metrics = layout.getLineMetrics(layout.getLineIndex(start));
                StyleRange style = (StyleRange)((StyleRange)styles[i]).clone();
                style.start = start + lineOffset;
                style.length = length;
                int lineAscent = metrics.getAscent() + metrics.getLeading();
                this.styledText.paintObject(gc, point.x + paintX, point.y + paintY, lineAscent, metrics.getDescent(), style, null, 0);
            }
            ++i;
        }
        this.disposeTextLayout(layout);
        return height;
    }

    int getBaseline() {
        return this.ascent;
    }

    Font getFont(int style) {
        switch (style) {
            case 1: {
                if (this.boldFont != null) {
                    return this.boldFont;
                }
                this.boldFont = new Font(this.device, this.getFontData(style));
                return this.boldFont;
            }
            case 2: {
                if (this.italicFont != null) {
                    return this.italicFont;
                }
                this.italicFont = new Font(this.device, this.getFontData(style));
                return this.italicFont;
            }
            case 3: {
                if (this.boldItalicFont != null) {
                    return this.boldItalicFont;
                }
                this.boldItalicFont = new Font(this.device, this.getFontData(style));
                return this.boldItalicFont;
            }
        }
        return this.regularFont;
    }

    FontData[] getFontData(int style) {
        FontData[] fontDatas = this.regularFont.getFontData();
        int i = 0;
        while (i < fontDatas.length) {
            fontDatas[i].setStyle(style);
            ++i;
        }
        return fontDatas;
    }

    int getHeight() {
        int defaultLineHeight = this.getLineHeight();
        if (this.styledText.isFixedLineHeight()) {
            return this.lineCount * defaultLineHeight + this.styledText.topMargin + this.styledText.bottomMargin;
        }
        int totalHeight = 0;
        int width = this.styledText.getWrapWidth();
        int i = 0;
        while (i < this.lineCount) {
            int height = this.lineHeight[i];
            if (height == -1) {
                if (width > 0) {
                    int length = this.content.getLine(i).length();
                    height = (length * this.averageCharWidth / width + 1) * defaultLineHeight;
                } else {
                    height = defaultLineHeight;
                }
            }
            totalHeight += height;
            ++i;
        }
        return totalHeight + this.styledText.topMargin + this.styledText.bottomMargin;
    }

    boolean hasLink(int offset) {
        String line;
        if (offset == -1) {
            return false;
        }
        int lineIndex = this.content.getLineAtOffset(offset);
        int lineOffset = this.content.getOffsetAtLine(lineIndex);
        StyledTextEvent event = this.styledText.getLineStyleData(lineOffset, line = this.content.getLine(lineIndex));
        if (event != null) {
            StyleRange[] styles = event.styles;
            if (styles != null) {
                int[] ranges = event.ranges;
                if (ranges != null) {
                    int i = 0;
                    while (i < ranges.length) {
                        if (ranges[i] <= offset && offset < ranges[i] + ranges[i + 1] && styles[i >> 1].underline && styles[i >> 1].underlineStyle == 4) {
                            return true;
                        }
                        i += 2;
                    }
                } else {
                    int i = 0;
                    while (i < styles.length) {
                        StyleRange style = styles[i];
                        if (style.start <= offset && offset < style.start + style.length && style.underline && style.underlineStyle == 4) {
                            return true;
                        }
                        ++i;
                    }
                }
            }
        } else if (this.ranges != null) {
            int rangeCount = this.styleCount << 1;
            int index = this.getRangeIndex(offset, -1, rangeCount);
            if (index >= rangeCount) {
                return false;
            }
            int rangeStart = this.ranges[index];
            int rangeLength = this.ranges[index + 1];
            StyleRange rangeStyle = this.styles[index >> 1];
            if (rangeStart <= offset && offset < rangeStart + rangeLength && rangeStyle.underline && rangeStyle.underlineStyle == 4) {
                return true;
            }
        }
        return false;
    }

    int getLineAlignment(int index, int defaultAlignment) {
        if (this.lines == null) {
            return defaultAlignment;
        }
        LineInfo info = this.lines[index];
        if (info != null && (info.flags & 2) != 0) {
            return info.alignment;
        }
        return defaultAlignment;
    }

    Color getLineBackground(int index, Color defaultBackground) {
        if (this.lines == null) {
            return defaultBackground;
        }
        LineInfo info = this.lines[index];
        if (info != null && (info.flags & 1) != 0) {
            return info.background;
        }
        return defaultBackground;
    }

    Bullet getLineBullet(int index, Bullet defaultBullet) {
        if (this.bullets == null) {
            return defaultBullet;
        }
        if (this.bulletsIndices != null) {
            return defaultBullet;
        }
        int i = 0;
        while (i < this.bullets.length) {
            Bullet bullet = this.bullets[i];
            if (bullet.indexOf(index) != -1) {
                return bullet;
            }
            ++i;
        }
        return defaultBullet;
    }

    int getLineHeight() {
        return this.ascent + this.descent;
    }

    int getLineHeight(int lineIndex) {
        if (this.lineHeight[lineIndex] == -1) {
            this.calculate(lineIndex, 1);
        }
        return this.lineHeight[lineIndex];
    }

    int getLineIndent(int index, int defaultIndent) {
        if (this.lines == null) {
            return defaultIndent;
        }
        LineInfo info = this.lines[index];
        if (info != null && (info.flags & 4) != 0) {
            return info.indent;
        }
        return defaultIndent;
    }

    int getLineWrapIndent(int index, int defaultWrapIndent) {
        if (this.lines == null) {
            return defaultWrapIndent;
        }
        LineInfo info = this.lines[index];
        if (info != null && (info.flags & 0x80) != 0) {
            return info.wrapIndent;
        }
        return defaultWrapIndent;
    }

    boolean getLineJustify(int index, boolean defaultJustify) {
        if (this.lines == null) {
            return defaultJustify;
        }
        LineInfo info = this.lines[index];
        if (info != null && (info.flags & 8) != 0) {
            return info.justify;
        }
        return defaultJustify;
    }

    int[] getLineTabStops(int index, int[] defaultTabStops) {
        if (this.lines == null) {
            return defaultTabStops;
        }
        LineInfo info = this.lines[index];
        if (info != null && (info.flags & 0x40) != 0) {
            return info.tabStops;
        }
        return defaultTabStops;
    }

    /*
     * Unable to fully structure code
     */
    int getRangeIndex(int offset, int low, int high) {
        block5: {
            if (this.styleCount == 0) {
                return 0;
            }
            if (this.ranges == null) ** GOTO lbl19
            while (high - low > 2) {
                index = (high + low) / 2 / 2 * 2;
                end = this.ranges[index] + this.ranges[index + 1];
                if (end > offset) {
                    high = index;
                    continue;
                }
                low = index;
            }
            break block5;
lbl-1000:
            // 1 sources

            {
                index = (high + low) / 2;
                end = this.styles[index].start + this.styles[index].length;
                if (end > offset) {
                    high = index;
                    continue;
                }
                low = index;
lbl19:
                // 3 sources

                ** while (high - low > 1)
            }
        }
        return high;
    }

    int[] getRanges(int start, int length) {
        int[] newRanges;
        if (length == 0) {
            return null;
        }
        int end = start + length - 1;
        if (this.ranges != null) {
            int rangeCount = this.styleCount << 1;
            int rangeStart = this.getRangeIndex(start, -1, rangeCount);
            if (rangeStart >= rangeCount) {
                return null;
            }
            if (this.ranges[rangeStart] > end) {
                return null;
            }
            int rangeEnd = Math.min(rangeCount - 2, this.getRangeIndex(end, rangeStart - 1, rangeCount));
            if (this.ranges[rangeEnd] > end) {
                rangeEnd = Math.max(rangeStart, rangeEnd - 2);
            }
            newRanges = new int[rangeEnd - rangeStart + 2];
            System.arraycopy(this.ranges, rangeStart, newRanges, 0, newRanges.length);
        } else {
            int rangeStart = this.getRangeIndex(start, -1, this.styleCount);
            if (rangeStart >= this.styleCount) {
                return null;
            }
            if (this.styles[rangeStart].start > end) {
                return null;
            }
            int rangeEnd = Math.min(this.styleCount - 1, this.getRangeIndex(end, rangeStart - 1, this.styleCount));
            if (this.styles[rangeEnd].start > end) {
                rangeEnd = Math.max(rangeStart, rangeEnd - 1);
            }
            newRanges = new int[rangeEnd - rangeStart + 1 << 1];
            int i = rangeStart;
            int j = 0;
            while (i <= rangeEnd) {
                StyleRange style = this.styles[i];
                newRanges[j] = style.start;
                newRanges[j + 1] = style.length;
                ++i;
                j += 2;
            }
        }
        if (start > newRanges[0]) {
            newRanges[1] = newRanges[0] + newRanges[1] - start;
            newRanges[0] = start;
        }
        if (end < newRanges[newRanges.length - 2] + newRanges[newRanges.length - 1] - 1) {
            newRanges[newRanges.length - 1] = end - newRanges[newRanges.length - 2] + 1;
        }
        return newRanges;
    }

    StyleRange[] getStyleRanges(int start, int length, boolean includeRanges) {
        StyleRange[] newStyles;
        if (length == 0) {
            return null;
        }
        int end = start + length - 1;
        if (this.ranges != null) {
            int rangeCount = this.styleCount << 1;
            int rangeStart = this.getRangeIndex(start, -1, rangeCount);
            if (rangeStart >= rangeCount) {
                return null;
            }
            if (this.ranges[rangeStart] > end) {
                return null;
            }
            int rangeEnd = Math.min(rangeCount - 2, this.getRangeIndex(end, rangeStart - 1, rangeCount));
            if (this.ranges[rangeEnd] > end) {
                rangeEnd = Math.max(rangeStart, rangeEnd - 2);
            }
            newStyles = new StyleRange[(rangeEnd - rangeStart >> 1) + 1];
            if (includeRanges) {
                int i = rangeStart;
                int j = 0;
                while (i <= rangeEnd) {
                    newStyles[j] = (StyleRange)this.styles[i >> 1].clone();
                    newStyles[j].start = this.ranges[i];
                    newStyles[j].length = this.ranges[i + 1];
                    i += 2;
                    ++j;
                }
            } else {
                System.arraycopy(this.styles, rangeStart >> 1, newStyles, 0, newStyles.length);
            }
        } else {
            int rangeStart = this.getRangeIndex(start, -1, this.styleCount);
            if (rangeStart >= this.styleCount) {
                return null;
            }
            if (this.styles[rangeStart].start > end) {
                return null;
            }
            int rangeEnd = Math.min(this.styleCount - 1, this.getRangeIndex(end, rangeStart - 1, this.styleCount));
            if (this.styles[rangeEnd].start > end) {
                rangeEnd = Math.max(rangeStart, rangeEnd - 1);
            }
            newStyles = new StyleRange[rangeEnd - rangeStart + 1];
            System.arraycopy(this.styles, rangeStart, newStyles, 0, newStyles.length);
        }
        if (includeRanges || this.ranges == null) {
            StyleRange style = newStyles[0];
            if (start > style.start) {
                newStyles[0] = style = (StyleRange)style.clone();
                style.length = style.start + style.length - start;
                style.start = start;
            }
            style = newStyles[newStyles.length - 1];
            if (end < style.start + style.length - 1) {
                newStyles[newStyles.length - 1] = style = (StyleRange)style.clone();
                style.length = end - style.start + 1;
            }
        }
        return newStyles;
    }

    StyleRange getStyleRange(StyleRange style) {
        if (style.underline && style.underlineStyle == 4) {
            this.hasLinks = true;
        }
        if (style.start == 0 && style.length == 0 && style.fontStyle == 0) {
            return style;
        }
        StyleRange clone = (StyleRange)style.clone();
        clone.length = 0;
        clone.start = 0;
        clone.fontStyle = 0;
        if (clone.font == null) {
            clone.font = this.getFont(style.fontStyle);
        }
        return clone;
    }

    TextLayout getTextLayout(int lineIndex) {
        return this.getTextLayout(lineIndex, this.styledText.getOrientation(), this.styledText.getWrapWidth(), this.styledText.lineSpacing);
    }

    TextLayout getTextLayout(int lineIndex, int orientation, int width, int lineSpacing) {
        IME ime;
        int compositionOffset;
        TextLayout layout = null;
        if (this.styledText != null) {
            int layoutIndex;
            int topIndex;
            int n = topIndex = this.styledText.topIndex > 0 ? this.styledText.topIndex - 1 : 0;
            if (this.layouts == null || topIndex != this.topIndex) {
                TextLayout[] newLayouts = new TextLayout[128];
                if (this.layouts != null) {
                    int i = 0;
                    while (i < this.layouts.length) {
                        if (this.layouts[i] != null) {
                            int layoutIndex2 = i + this.topIndex - topIndex;
                            if (layoutIndex2 >= 0 && layoutIndex2 < newLayouts.length) {
                                newLayouts[layoutIndex2] = this.layouts[i];
                            } else {
                                this.layouts[i].dispose();
                            }
                        }
                        ++i;
                    }
                }
                if (this.bullets != null && this.bulletsIndices != null && topIndex != this.topIndex) {
                    int i;
                    int delta = topIndex - this.topIndex;
                    if (delta > 0) {
                        int startIndex;
                        if (delta < this.bullets.length) {
                            System.arraycopy(this.bullets, delta, this.bullets, 0, this.bullets.length - delta);
                            System.arraycopy(this.bulletsIndices, delta, this.bulletsIndices, 0, this.bulletsIndices.length - delta);
                        }
                        i = startIndex = Math.max(0, this.bullets.length - delta);
                        while (i < this.bullets.length) {
                            this.bullets[i] = null;
                            ++i;
                        }
                    } else {
                        if (-delta < this.bullets.length) {
                            System.arraycopy(this.bullets, 0, this.bullets, -delta, this.bullets.length + delta);
                            System.arraycopy(this.bulletsIndices, 0, this.bulletsIndices, -delta, this.bulletsIndices.length + delta);
                        }
                        int endIndex = Math.min(this.bullets.length, -delta);
                        i = 0;
                        while (i < endIndex) {
                            this.bullets[i] = null;
                            ++i;
                        }
                    }
                }
                this.topIndex = topIndex;
                this.layouts = newLayouts;
            }
            if (this.layouts != null && (layoutIndex = lineIndex - topIndex) >= 0 && layoutIndex < this.layouts.length) {
                layout = this.layouts[layoutIndex];
                if (layout != null) {
                    if (this.lineWidth[lineIndex] != -1) {
                        return layout;
                    }
                } else {
                    layout = this.layouts[layoutIndex] = new TextLayout(this.device);
                }
            }
        }
        if (layout == null) {
            layout = new TextLayout(this.device);
        }
        String line = this.content.getLine(lineIndex);
        int lineOffset = this.content.getOffsetAtLine(lineIndex);
        int[] segments = null;
        char[] segmentChars = null;
        int indent = 0;
        int wrapIndent = 0;
        int alignment = 16384;
        boolean justify = false;
        int[] tabs = new int[]{this.tabWidth};
        Bullet bullet = null;
        int[] ranges = null;
        StyleRange[] styles = null;
        int rangeStart = 0;
        int styleCount = 0;
        StyledTextEvent event = null;
        if (this.styledText != null) {
            event = this.styledText.getBidiSegments(lineOffset, line);
            if (event != null) {
                segments = event.segments;
                segmentChars = event.segmentsChars;
            }
            event = this.styledText.getLineStyleData(lineOffset, line);
            indent = this.styledText.indent;
            wrapIndent = this.styledText.wrapIndent;
            alignment = this.styledText.alignment;
            justify = this.styledText.justify;
            if (this.styledText.tabs != null) {
                tabs = this.styledText.tabs;
            }
        }
        if (event != null) {
            int index;
            indent = event.indent;
            wrapIndent = event.wrapIndent;
            alignment = event.alignment;
            justify = event.justify;
            bullet = event.bullet;
            ranges = event.ranges;
            styles = event.styles;
            if (event.tabStops != null) {
                tabs = event.tabStops;
            }
            if (styles != null) {
                styleCount = styles.length;
                if (this.styledText.isFixedLineHeight()) {
                    int i = 0;
                    while (i < styleCount) {
                        if (styles[i].isVariableHeight()) {
                            this.styledText.verticalScrollOffset = -1;
                            this.styledText.setVariableLineHeight();
                            this.styledText.redraw();
                            break;
                        }
                        ++i;
                    }
                }
            }
            if (this.bullets == null || this.bulletsIndices == null) {
                this.bullets = new Bullet[128];
                this.bulletsIndices = new int[128];
            }
            if ((index = lineIndex - this.topIndex) >= 0 && index < 128) {
                this.bullets[index] = bullet;
                this.bulletsIndices[index] = event.bulletIndex;
            }
        } else {
            LineInfo info;
            if (this.lines != null && (info = this.lines[lineIndex]) != null) {
                if ((info.flags & 4) != 0) {
                    indent = info.indent;
                }
                if ((info.flags & 0x80) != 0) {
                    wrapIndent = info.wrapIndent;
                }
                if ((info.flags & 2) != 0) {
                    alignment = info.alignment;
                }
                if ((info.flags & 8) != 0) {
                    justify = info.justify;
                }
                if ((info.flags & 0x20) != 0) {
                    segments = info.segments;
                }
                if ((info.flags & 0x100) != 0) {
                    segmentChars = info.segmentsChars;
                }
                if ((info.flags & 0x40) != 0) {
                    tabs = info.tabStops;
                }
            }
            if (this.bulletsIndices != null) {
                this.bullets = null;
                this.bulletsIndices = null;
            }
            if (this.bullets != null) {
                int i = 0;
                while (i < this.bullets.length) {
                    if (this.bullets[i].indexOf(lineIndex) != -1) {
                        bullet = this.bullets[i];
                        break;
                    }
                    ++i;
                }
            }
            ranges = this.ranges;
            styles = this.styles;
            styleCount = this.styleCount;
            rangeStart = ranges != null ? this.getRangeIndex(lineOffset, -1, styleCount << 1) : this.getRangeIndex(lineOffset, -1, styleCount);
        }
        if (bullet != null) {
            StyleRange style = bullet.style;
            GlyphMetrics metrics = style.metrics;
            indent += metrics.width;
        }
        layout.setFont(this.regularFont);
        layout.setAscent(this.ascent);
        layout.setDescent(this.descent);
        layout.setText(line);
        layout.setOrientation(orientation);
        layout.setSegments(segments);
        layout.setSegmentsChars(segmentChars);
        layout.setWidth(width);
        layout.setSpacing(lineSpacing);
        layout.setTabs(tabs);
        layout.setIndent(indent);
        layout.setWrapIndent(wrapIndent);
        layout.setAlignment(alignment);
        layout.setJustify(justify);
        int lastOffset = 0;
        int length = line.length();
        if (styles != null) {
            if (ranges != null) {
                int rangeCount = styleCount << 1;
                int i = rangeStart;
                while (i < rangeCount) {
                    int end;
                    int start;
                    if (lineOffset > ranges[i]) {
                        start = 0;
                        end = Math.min(length, ranges[i + 1] - lineOffset + ranges[i]);
                    } else {
                        start = ranges[i] - lineOffset;
                        end = Math.min(length, start + ranges[i + 1]);
                    }
                    if (start < length) {
                        if (lastOffset < start) {
                            layout.setStyle(null, lastOffset, start - 1);
                        }
                        layout.setStyle(this.getStyleRange(styles[i >> 1]), start, end);
                        lastOffset = Math.max(lastOffset, end);
                        i += 2;
                        continue;
                    }
                    break;
                }
            } else {
                int i = rangeStart;
                while (i < styleCount) {
                    int end;
                    int start;
                    if (lineOffset > styles[i].start) {
                        start = 0;
                        end = Math.min(length, styles[i].length - lineOffset + styles[i].start);
                    } else {
                        start = styles[i].start - lineOffset;
                        end = Math.min(length, start + styles[i].length);
                    }
                    if (start < length) {
                        if (lastOffset < start) {
                            layout.setStyle(null, lastOffset, start - 1);
                        }
                        layout.setStyle(this.getStyleRange(styles[i]), start, end);
                        lastOffset = Math.max(lastOffset, end);
                        ++i;
                        continue;
                    }
                    break;
                }
            }
        }
        if (lastOffset < length) {
            layout.setStyle(null, lastOffset, length);
        }
        if (this.styledText != null && this.styledText.ime != null && (compositionOffset = (ime = this.styledText.ime).getCompositionOffset()) != -1) {
            int compositionLine;
            int commitCount = ime.getCommitCount();
            int compositionLength = ime.getText().length();
            if (compositionLength != commitCount && (compositionLine = this.content.getLineAtOffset(compositionOffset)) == lineIndex) {
                int[] imeRanges = ime.getRanges();
                TextStyle[] imeStyles = ime.getStyles();
                if (imeRanges.length > 0) {
                    int i = 0;
                    while (i < imeStyles.length) {
                        int start = imeRanges[i * 2] - lineOffset;
                        int end = imeRanges[i * 2 + 1] - lineOffset;
                        TextStyle imeStyle = imeStyles[i];
                        int j = start;
                        while (j <= end) {
                            TextStyle userStyle = layout.getStyle(j);
                            if (userStyle == null && j > 0) {
                                userStyle = layout.getStyle(j - 1);
                            }
                            if (userStyle == null && j + 1 < length) {
                                userStyle = layout.getStyle(j + 1);
                            }
                            if (userStyle == null) {
                                layout.setStyle(imeStyle, j, j);
                            } else {
                                TextStyle newStyle = new TextStyle(imeStyle);
                                if (newStyle.font == null) {
                                    newStyle.font = userStyle.font;
                                }
                                if (newStyle.foreground == null) {
                                    newStyle.foreground = userStyle.foreground;
                                }
                                if (newStyle.background == null) {
                                    newStyle.background = userStyle.background;
                                }
                                layout.setStyle(newStyle, j, j);
                            }
                            ++j;
                        }
                        ++i;
                    }
                } else {
                    int start = compositionOffset - lineOffset;
                    int end = start + compositionLength - 1;
                    TextStyle userStyle = layout.getStyle(start);
                    if (userStyle == null) {
                        if (start > 0) {
                            userStyle = layout.getStyle(start - 1);
                        }
                        if (userStyle == null && end + 1 < length) {
                            userStyle = layout.getStyle(end + 1);
                        }
                        if (userStyle != null) {
                            TextStyle newStyle = new TextStyle();
                            newStyle.font = userStyle.font;
                            newStyle.foreground = userStyle.foreground;
                            newStyle.background = userStyle.background;
                            layout.setStyle(newStyle, start, end);
                        }
                    }
                }
            }
        }
        if (this.styledText != null && this.styledText.isFixedLineHeight()) {
            int index = -1;
            int lineCount = layout.getLineCount();
            int height = this.getLineHeight();
            int i = 0;
            while (i < lineCount) {
                int lineHeight = layout.getLineBounds((int)i).height;
                if (lineHeight > height) {
                    height = lineHeight;
                    index = i;
                }
                ++i;
            }
            if (index != -1) {
                FontMetrics metrics = layout.getLineMetrics(index);
                this.ascent = metrics.getAscent() + metrics.getLeading();
                this.descent = metrics.getDescent();
                if (this.layouts != null) {
                    int i2 = 0;
                    while (i2 < this.layouts.length) {
                        if (this.layouts[i2] != null && this.layouts[i2] != layout) {
                            this.layouts[i2].setAscent(this.ascent);
                            this.layouts[i2].setDescent(this.descent);
                        }
                        ++i2;
                    }
                }
                if (this.styledText.verticalScrollOffset != 0) {
                    int topIndex = this.styledText.topIndex;
                    int topIndexY = this.styledText.topIndexY;
                    int lineHeight = this.getLineHeight();
                    this.styledText.verticalScrollOffset = topIndexY >= 0 ? (topIndex - 1) * lineHeight + lineHeight - topIndexY : topIndex * lineHeight - topIndexY;
                }
                this.styledText.calculateScrollBars();
                if (this.styledText.isBidiCaret()) {
                    this.styledText.createCaretBitmaps();
                }
                this.styledText.caretDirection = 0;
                this.styledText.setCaretLocation();
                this.styledText.redraw();
            }
        }
        return layout;
    }

    int getWidth() {
        return this.maxWidth;
    }

    void reset() {
        if (this.layouts != null) {
            int i = 0;
            while (i < this.layouts.length) {
                TextLayout layout = this.layouts[i];
                if (layout != null) {
                    layout.dispose();
                }
                ++i;
            }
            this.layouts = null;
        }
        this.topIndex = -1;
        this.lineCount = 0;
        this.styleCount = 0;
        this.stylesSetCount = 0;
        this.ranges = null;
        this.styles = null;
        this.stylesSet = null;
        this.lines = null;
        this.lineWidth = null;
        this.lineHeight = null;
        this.bullets = null;
        this.bulletsIndices = null;
        this.redrawLines = null;
        this.hasLinks = false;
    }

    void reset(int startLine, int lineCount) {
        int endLine = startLine + lineCount;
        if (startLine < 0 || endLine > this.lineWidth.length) {
            return;
        }
        int i = startLine;
        while (i < endLine) {
            this.lineWidth[i] = -1;
            this.lineHeight[i] = -1;
            ++i;
        }
        if (startLine <= this.maxWidthLineIndex && this.maxWidthLineIndex < endLine) {
            this.maxWidth = 0;
            this.maxWidthLineIndex = -1;
            if (lineCount != this.lineCount) {
                i = 0;
                while (i < this.lineCount) {
                    if (this.lineWidth[i] > this.maxWidth) {
                        this.maxWidth = this.lineWidth[i];
                        this.maxWidthLineIndex = i;
                    }
                    ++i;
                }
            }
        }
    }

    void setContent(StyledTextContent content) {
        this.reset();
        this.content = content;
        this.lineCount = content.getLineCount();
        this.lineWidth = new int[this.lineCount];
        this.lineHeight = new int[this.lineCount];
        this.reset(0, this.lineCount);
    }

    void setFont(Font font, int tabs) {
        TextLayout layout = new TextLayout(this.device);
        layout.setFont(this.regularFont);
        if (font != null) {
            if (this.boldFont != null) {
                this.boldFont.dispose();
            }
            if (this.italicFont != null) {
                this.italicFont.dispose();
            }
            if (this.boldItalicFont != null) {
                this.boldItalicFont.dispose();
            }
            this.boldItalicFont = null;
            this.italicFont = null;
            this.boldFont = null;
            this.regularFont = font;
            layout.setText("    ");
            layout.setFont(font);
            layout.setStyle(new TextStyle(this.getFont(0), null, null), 0, 0);
            layout.setStyle(new TextStyle(this.getFont(1), null, null), 1, 1);
            layout.setStyle(new TextStyle(this.getFont(2), null, null), 2, 2);
            layout.setStyle(new TextStyle(this.getFont(3), null, null), 3, 3);
            FontMetrics metrics = layout.getLineMetrics(0);
            this.ascent = metrics.getAscent() + metrics.getLeading();
            this.descent = metrics.getDescent();
            this.boldFont.dispose();
            this.italicFont.dispose();
            this.boldItalicFont.dispose();
            this.boldItalicFont = null;
            this.italicFont = null;
            this.boldFont = null;
        }
        layout.dispose();
        layout = new TextLayout(this.device);
        layout.setFont(this.regularFont);
        StringBuffer tabBuffer = new StringBuffer(tabs);
        int i = 0;
        while (i < tabs) {
            tabBuffer.append(' ');
            ++i;
        }
        layout.setText(tabBuffer.toString());
        this.tabWidth = layout.getBounds().width;
        layout.dispose();
        if (this.styledText != null) {
            GC gc = new GC(this.styledText);
            this.averageCharWidth = gc.getFontMetrics().getAverageCharWidth();
            this.fixedPitch = gc.stringExtent((String)"l").x == gc.stringExtent((String)"W").x;
            gc.dispose();
        }
    }

    void setLineAlignment(int startLine, int count, int alignment) {
        if (this.lines == null) {
            this.lines = new LineInfo[this.lineCount];
        }
        int i = startLine;
        while (i < startLine + count) {
            if (this.lines[i] == null) {
                this.lines[i] = new LineInfo();
            }
            this.lines[i].flags |= 2;
            this.lines[i].alignment = alignment;
            ++i;
        }
    }

    void setLineBackground(int startLine, int count, Color background) {
        if (this.lines == null) {
            this.lines = new LineInfo[this.lineCount];
        }
        int i = startLine;
        while (i < startLine + count) {
            if (this.lines[i] == null) {
                this.lines[i] = new LineInfo();
            }
            this.lines[i].flags |= 1;
            this.lines[i].background = background;
            ++i;
        }
    }

    void setLineBullet(int startLine, int count, Bullet bullet) {
        if (this.bulletsIndices != null) {
            this.bulletsIndices = null;
            this.bullets = null;
        }
        if (this.bullets == null) {
            if (bullet == null) {
                return;
            }
            this.bullets = new Bullet[1];
            this.bullets[0] = bullet;
        }
        int index = 0;
        while (index < this.bullets.length) {
            if (bullet == this.bullets[index]) break;
            ++index;
        }
        if (bullet != null) {
            if (index == this.bullets.length) {
                Bullet[] newBulletsList = new Bullet[this.bullets.length + 1];
                System.arraycopy(this.bullets, 0, newBulletsList, 0, this.bullets.length);
                newBulletsList[index] = bullet;
                this.bullets = newBulletsList;
            }
            bullet.addIndices(startLine, count);
        } else {
            this.updateBullets(startLine, count, 0, false);
            this.styledText.redrawLinesBullet(this.redrawLines);
            this.redrawLines = null;
        }
    }

    void setLineIndent(int startLine, int count, int indent) {
        if (this.lines == null) {
            this.lines = new LineInfo[this.lineCount];
        }
        int i = startLine;
        while (i < startLine + count) {
            if (this.lines[i] == null) {
                this.lines[i] = new LineInfo();
            }
            this.lines[i].flags |= 4;
            this.lines[i].indent = indent;
            ++i;
        }
    }

    void setLineWrapIndent(int startLine, int count, int wrapIndent) {
        if (this.lines == null) {
            this.lines = new LineInfo[this.lineCount];
        }
        int i = startLine;
        while (i < startLine + count) {
            if (this.lines[i] == null) {
                this.lines[i] = new LineInfo();
            }
            this.lines[i].flags |= 0x80;
            this.lines[i].wrapIndent = wrapIndent;
            ++i;
        }
    }

    void setLineJustify(int startLine, int count, boolean justify) {
        if (this.lines == null) {
            this.lines = new LineInfo[this.lineCount];
        }
        int i = startLine;
        while (i < startLine + count) {
            if (this.lines[i] == null) {
                this.lines[i] = new LineInfo();
            }
            this.lines[i].flags |= 8;
            this.lines[i].justify = justify;
            ++i;
        }
    }

    void setLineSegments(int startLine, int count, int[] segments) {
        if (this.lines == null) {
            this.lines = new LineInfo[this.lineCount];
        }
        int i = startLine;
        while (i < startLine + count) {
            if (this.lines[i] == null) {
                this.lines[i] = new LineInfo();
            }
            this.lines[i].flags |= 0x20;
            this.lines[i].segments = segments;
            ++i;
        }
    }

    void setLineSegmentChars(int startLine, int count, char[] segmentChars) {
        if (this.lines == null) {
            this.lines = new LineInfo[this.lineCount];
        }
        int i = startLine;
        while (i < startLine + count) {
            if (this.lines[i] == null) {
                this.lines[i] = new LineInfo();
            }
            this.lines[i].flags |= 0x100;
            this.lines[i].segmentsChars = segmentChars;
            ++i;
        }
    }

    void setLineTabStops(int startLine, int count, int[] tabStops) {
        if (this.lines == null) {
            this.lines = new LineInfo[this.lineCount];
        }
        int i = startLine;
        while (i < startLine + count) {
            if (this.lines[i] == null) {
                this.lines[i] = new LineInfo();
            }
            this.lines[i].flags |= 0x40;
            this.lines[i].tabStops = tabStops;
            ++i;
        }
    }

    void setStyleRanges(int[] newRanges, StyleRange[] newStyles) {
        int j;
        if (newStyles == null) {
            this.styleCount = 0;
            this.stylesSetCount = 0;
            this.ranges = null;
            this.styles = null;
            this.stylesSet = null;
            this.hasLinks = false;
            return;
        }
        if (newRanges == null) {
            newRanges = new int[newStyles.length << 1];
            StyleRange[] tmpStyles = new StyleRange[newStyles.length];
            if (this.stylesSet == null) {
                this.stylesSet = new StyleRange[4];
            }
            int i = 0;
            int j2 = 0;
            while (i < newStyles.length) {
                StyleRange newStyle = newStyles[i];
                newRanges[j2++] = newStyle.start;
                newRanges[j2++] = newStyle.length;
                int index = 0;
                while (index < this.stylesSetCount) {
                    if (this.stylesSet[index].similarTo(newStyle)) break;
                    ++index;
                }
                if (index == this.stylesSetCount) {
                    if (this.stylesSetCount == this.stylesSet.length) {
                        StyleRange[] tmpStylesSet = new StyleRange[this.stylesSetCount + 4];
                        System.arraycopy(this.stylesSet, 0, tmpStylesSet, 0, this.stylesSetCount);
                        this.stylesSet = tmpStylesSet;
                    }
                    this.stylesSet[this.stylesSetCount++] = newStyle;
                }
                tmpStyles[i] = this.stylesSet[index];
                ++i;
            }
            newStyles = tmpStyles;
        }
        if (this.styleCount == 0) {
            if (newRanges != null) {
                this.ranges = new int[newRanges.length];
                System.arraycopy(newRanges, 0, this.ranges, 0, this.ranges.length);
            }
            this.styles = new StyleRange[newStyles.length];
            System.arraycopy(newStyles, 0, this.styles, 0, this.styles.length);
            this.styleCount = newStyles.length;
            return;
        }
        if (newRanges != null && this.ranges == null) {
            this.ranges = new int[this.styles.length << 1];
            int i = 0;
            j = 0;
            while (i < this.styleCount) {
                this.ranges[j++] = this.styles[i].start;
                this.ranges[j++] = this.styles[i].length;
                ++i;
            }
        }
        if (newRanges == null && this.ranges != null) {
            newRanges = new int[newStyles.length << 1];
            int i = 0;
            j = 0;
            while (i < newStyles.length) {
                newRanges[j++] = newStyles[i].start;
                newRanges[j++] = newStyles[i].length;
                ++i;
            }
        }
        if (this.ranges != null) {
            boolean insert;
            int start = newRanges[0];
            int rangeCount = this.styleCount << 1;
            int modifyStart = this.getRangeIndex(start, -1, rangeCount);
            boolean bl = insert = modifyStart == rangeCount;
            if (!insert) {
                int end = newRanges[newRanges.length - 2] + newRanges[newRanges.length - 1];
                int modifyEnd = this.getRangeIndex(end, modifyStart - 1, rangeCount);
                boolean bl2 = insert = modifyStart == modifyEnd && this.ranges[modifyStart] >= end;
            }
            if (insert) {
                this.addMerge(newRanges, newStyles, newRanges.length, modifyStart, modifyStart);
                return;
            }
            int modifyEnd = modifyStart;
            int[] mergeRanges = new int[6];
            StyleRange[] mergeStyles = new StyleRange[3];
            int i = 0;
            while (i < newRanges.length) {
                int newStart = newRanges[i];
                int newEnd = newStart + newRanges[i + 1];
                if (newStart != newEnd) {
                    int modifyLast = 0;
                    int mergeCount = 0;
                    while (modifyEnd < rangeCount) {
                        if (newStart >= this.ranges[modifyStart] + this.ranges[modifyStart + 1]) {
                            modifyStart += 2;
                        }
                        if (this.ranges[modifyEnd] + this.ranges[modifyEnd + 1] > newEnd) break;
                        modifyEnd += 2;
                    }
                    if (this.ranges[modifyStart] < newStart && newStart < this.ranges[modifyStart] + this.ranges[modifyStart + 1]) {
                        mergeStyles[mergeCount >> 1] = this.styles[modifyStart >> 1];
                        mergeRanges[mergeCount] = this.ranges[modifyStart];
                        mergeRanges[mergeCount + 1] = newStart - this.ranges[modifyStart];
                        mergeCount += 2;
                    }
                    mergeStyles[mergeCount >> 1] = newStyles[i >> 1];
                    mergeRanges[mergeCount] = newStart;
                    mergeRanges[mergeCount + 1] = newRanges[i + 1];
                    mergeCount += 2;
                    if (modifyEnd < rangeCount && this.ranges[modifyEnd] < newEnd && newEnd < this.ranges[modifyEnd] + this.ranges[modifyEnd + 1]) {
                        mergeStyles[mergeCount >> 1] = this.styles[modifyEnd >> 1];
                        mergeRanges[mergeCount] = newEnd;
                        mergeRanges[mergeCount + 1] = this.ranges[modifyEnd] + this.ranges[modifyEnd + 1] - newEnd;
                        mergeCount += 2;
                        modifyLast = 2;
                    }
                    int grow = this.addMerge(mergeRanges, mergeStyles, mergeCount, modifyStart, modifyEnd + modifyLast);
                    rangeCount += grow;
                    modifyStart = modifyEnd += grow;
                }
                i += 2;
            }
        } else {
            int modifyEnd;
            boolean insert;
            int start = newStyles[0].start;
            int modifyStart = this.getRangeIndex(start, -1, this.styleCount);
            boolean bl = insert = modifyStart == this.styleCount;
            if (!insert) {
                int end = newStyles[newStyles.length - 1].start + newStyles[newStyles.length - 1].length;
                modifyEnd = this.getRangeIndex(end, modifyStart - 1, this.styleCount);
                boolean bl3 = insert = modifyStart == modifyEnd && this.styles[modifyStart].start >= end;
            }
            if (insert) {
                this.addMerge(newStyles, newStyles.length, modifyStart, modifyStart);
                return;
            }
            modifyEnd = modifyStart;
            StyleRange[] mergeStyles = new StyleRange[3];
            int i = 0;
            while (i < newStyles.length) {
                StyleRange newStyle = newStyles[i];
                int newStart = newStyle.start;
                int newEnd = newStart + newStyle.length;
                if (newStart != newEnd) {
                    int modifyLast = 0;
                    int mergeCount = 0;
                    while (modifyEnd < this.styleCount) {
                        if (newStart >= this.styles[modifyStart].start + this.styles[modifyStart].length) {
                            ++modifyStart;
                        }
                        if (this.styles[modifyEnd].start + this.styles[modifyEnd].length > newEnd) break;
                        ++modifyEnd;
                    }
                    StyleRange style = this.styles[modifyStart];
                    if (style.start < newStart && newStart < style.start + style.length) {
                        int n = mergeCount++;
                        StyleRange styleRange = (StyleRange)style.clone();
                        mergeStyles[n] = styleRange;
                        style = styleRange;
                        style.length = newStart - style.start;
                    }
                    mergeStyles[mergeCount++] = newStyle;
                    if (modifyEnd < this.styleCount) {
                        style = this.styles[modifyEnd];
                        if (style.start < newEnd && newEnd < style.start + style.length) {
                            int n = mergeCount++;
                            StyleRange styleRange = (StyleRange)style.clone();
                            mergeStyles[n] = styleRange;
                            style = styleRange;
                            style.length += style.start - newEnd;
                            style.start = newEnd;
                            modifyLast = 1;
                        }
                    }
                    int grow = this.addMerge(mergeStyles, mergeCount, modifyStart, modifyEnd + modifyLast);
                    modifyStart = modifyEnd += grow;
                }
                ++i;
            }
        }
    }

    void textChanging(TextChangingEvent event) {
        int start = event.start;
        int newCharCount = event.newCharCount;
        int replaceCharCount = event.replaceCharCount;
        int newLineCount = event.newLineCount;
        int replaceLineCount = event.replaceLineCount;
        this.updateRanges(start, replaceCharCount, newCharCount);
        int startLine = this.content.getLineAtOffset(start);
        if (replaceCharCount == this.content.getCharCount()) {
            this.lines = null;
        }
        if (replaceLineCount == this.lineCount) {
            this.lineCount = newLineCount;
            this.lineWidth = new int[this.lineCount];
            this.lineHeight = new int[this.lineCount];
            this.reset(0, this.lineCount);
        } else {
            int delta = newLineCount - replaceLineCount;
            if (this.lineCount + delta > this.lineWidth.length) {
                int[] newWidths = new int[this.lineCount + delta + 32];
                System.arraycopy(this.lineWidth, 0, newWidths, 0, this.lineCount);
                this.lineWidth = newWidths;
                int[] newHeights = new int[this.lineCount + delta + 32];
                System.arraycopy(this.lineHeight, 0, newHeights, 0, this.lineCount);
                this.lineHeight = newHeights;
            }
            if (this.lines != null && this.lineCount + delta > this.lines.length) {
                LineInfo[] newLines = new LineInfo[this.lineCount + delta + 32];
                System.arraycopy(this.lines, 0, newLines, 0, this.lineCount);
                this.lines = newLines;
            }
            int startIndex = startLine + replaceLineCount + 1;
            int endIndex = startLine + newLineCount + 1;
            System.arraycopy(this.lineWidth, startIndex, this.lineWidth, endIndex, this.lineCount - startIndex);
            System.arraycopy(this.lineHeight, startIndex, this.lineHeight, endIndex, this.lineCount - startIndex);
            int i = startLine;
            while (i < endIndex) {
                this.lineHeight[i] = -1;
                this.lineWidth[i] = -1;
                ++i;
            }
            i = this.lineCount + delta;
            while (i < this.lineCount) {
                this.lineHeight[i] = -1;
                this.lineWidth[i] = -1;
                ++i;
            }
            if (this.layouts != null) {
                int layoutStartLine = startLine - this.topIndex;
                int layoutEndLine = layoutStartLine + replaceLineCount + 1;
                int i2 = layoutStartLine;
                while (i2 < layoutEndLine) {
                    if (i2 >= 0 && i2 < this.layouts.length) {
                        if (this.layouts[i2] != null) {
                            this.layouts[i2].dispose();
                        }
                        this.layouts[i2] = null;
                        if (this.bullets != null && this.bulletsIndices != null) {
                            this.bullets[i2] = null;
                        }
                    }
                    ++i2;
                }
                if (delta > 0) {
                    i2 = this.layouts.length - 1;
                    while (i2 >= layoutEndLine) {
                        if (i2 >= 0 && i2 < this.layouts.length) {
                            endIndex = i2 + delta;
                            if (endIndex >= 0 && endIndex < this.layouts.length) {
                                this.layouts[endIndex] = this.layouts[i2];
                                this.layouts[i2] = null;
                                if (this.bullets != null && this.bulletsIndices != null) {
                                    this.bullets[endIndex] = this.bullets[i2];
                                    this.bulletsIndices[endIndex] = this.bulletsIndices[i2];
                                    this.bullets[i2] = null;
                                }
                            } else {
                                if (this.layouts[i2] != null) {
                                    this.layouts[i2].dispose();
                                }
                                this.layouts[i2] = null;
                                if (this.bullets != null && this.bulletsIndices != null) {
                                    this.bullets[i2] = null;
                                }
                            }
                        }
                        --i2;
                    }
                } else if (delta < 0) {
                    i2 = layoutEndLine;
                    while (i2 < this.layouts.length) {
                        if (i2 >= 0 && i2 < this.layouts.length) {
                            endIndex = i2 + delta;
                            if (endIndex >= 0 && endIndex < this.layouts.length) {
                                this.layouts[endIndex] = this.layouts[i2];
                                this.layouts[i2] = null;
                                if (this.bullets != null && this.bulletsIndices != null) {
                                    this.bullets[endIndex] = this.bullets[i2];
                                    this.bulletsIndices[endIndex] = this.bulletsIndices[i2];
                                    this.bullets[i2] = null;
                                }
                            } else {
                                if (this.layouts[i2] != null) {
                                    this.layouts[i2].dispose();
                                }
                                this.layouts[i2] = null;
                                if (this.bullets != null && this.bulletsIndices != null) {
                                    this.bullets[i2] = null;
                                }
                            }
                        }
                        ++i2;
                    }
                }
            }
            if (replaceLineCount != 0 || newLineCount != 0) {
                int startLineOffset = this.content.getOffsetAtLine(startLine);
                if (startLineOffset != start) {
                    ++startLine;
                }
                this.updateBullets(startLine, replaceLineCount, newLineCount, true);
                if (this.lines != null) {
                    startIndex = startLine + replaceLineCount;
                    endIndex = startLine + newLineCount;
                    System.arraycopy(this.lines, startIndex, this.lines, endIndex, this.lineCount - startIndex);
                    int i3 = startLine;
                    while (i3 < endIndex) {
                        this.lines[i3] = null;
                        ++i3;
                    }
                    i3 = this.lineCount + delta;
                    while (i3 < this.lineCount) {
                        this.lines[i3] = null;
                        ++i3;
                    }
                }
            }
            this.lineCount += delta;
            if (this.maxWidthLineIndex != -1 && startLine <= this.maxWidthLineIndex && this.maxWidthLineIndex <= startLine + replaceLineCount) {
                this.maxWidth = 0;
                this.maxWidthLineIndex = -1;
                i = 0;
                while (i < this.lineCount) {
                    if (this.lineWidth[i] > this.maxWidth) {
                        this.maxWidth = this.lineWidth[i];
                        this.maxWidthLineIndex = i;
                    }
                    ++i;
                }
            }
        }
    }

    void updateBullets(int startLine, int replaceLineCount, int newLineCount, boolean update) {
        if (this.bullets == null) {
            return;
        }
        if (this.bulletsIndices != null) {
            return;
        }
        int i = 0;
        while (i < this.bullets.length) {
            Bullet bullet = this.bullets[i];
            int[] lines = bullet.removeIndices(startLine, replaceLineCount, newLineCount, update);
            if (lines != null) {
                if (this.redrawLines == null) {
                    this.redrawLines = lines;
                } else {
                    int[] newRedrawBullets = new int[this.redrawLines.length + lines.length];
                    System.arraycopy(this.redrawLines, 0, newRedrawBullets, 0, this.redrawLines.length);
                    System.arraycopy(lines, 0, newRedrawBullets, this.redrawLines.length, lines.length);
                    this.redrawLines = newRedrawBullets;
                }
            }
            ++i;
        }
        int removed = 0;
        int i2 = 0;
        while (i2 < this.bullets.length) {
            if (this.bullets[i2].size() == 0) {
                ++removed;
            }
            ++i2;
        }
        if (removed > 0) {
            if (removed == this.bullets.length) {
                this.bullets = null;
            } else {
                Bullet[] newBulletsList = new Bullet[this.bullets.length - removed];
                int i3 = 0;
                int j = 0;
                while (i3 < this.bullets.length) {
                    Bullet bullet = this.bullets[i3];
                    if (bullet.size() > 0) {
                        newBulletsList[j++] = bullet;
                    }
                    ++i3;
                }
                this.bullets = newBulletsList;
            }
        }
    }

    void updateRanges(int start, int replaceCharCount, int newCharCount) {
        if (this.styleCount == 0 || replaceCharCount == 0 && newCharCount == 0) {
            return;
        }
        if (this.ranges != null) {
            int rangeCount = this.styleCount << 1;
            int modifyStart = this.getRangeIndex(start, -1, rangeCount);
            if (modifyStart == rangeCount) {
                return;
            }
            int end = start + replaceCharCount;
            int modifyEnd = this.getRangeIndex(end, modifyStart - 1, rangeCount);
            int offset = newCharCount - replaceCharCount;
            if (modifyStart == modifyEnd && this.ranges[modifyStart] < start && end < this.ranges[modifyEnd] + this.ranges[modifyEnd + 1]) {
                if (newCharCount == 0) {
                    int n = modifyStart + 1;
                    this.ranges[n] = this.ranges[n] - replaceCharCount;
                    modifyEnd += 2;
                } else {
                    if (rangeCount + 2 > this.ranges.length) {
                        int[] newRanges = new int[this.ranges.length + 64];
                        System.arraycopy(this.ranges, 0, newRanges, 0, rangeCount);
                        this.ranges = newRanges;
                        StyleRange[] newStyles = new StyleRange[this.styles.length + 32];
                        System.arraycopy(this.styles, 0, newStyles, 0, this.styleCount);
                        this.styles = newStyles;
                    }
                    System.arraycopy(this.ranges, modifyStart + 2, this.ranges, modifyStart + 4, rangeCount - (modifyStart + 2));
                    System.arraycopy(this.styles, modifyStart + 2 >> 1, this.styles, modifyStart + 4 >> 1, this.styleCount - (modifyStart + 2 >> 1));
                    this.ranges[modifyStart + 3] = this.ranges[modifyStart] + this.ranges[modifyStart + 1] - end;
                    this.ranges[modifyStart + 2] = start + newCharCount;
                    this.ranges[modifyStart + 1] = start - this.ranges[modifyStart];
                    this.styles[(modifyStart >> 1) + 1] = this.styles[modifyStart >> 1];
                    rangeCount += 2;
                    ++this.styleCount;
                    modifyEnd += 4;
                }
                if (offset != 0) {
                    int i = modifyEnd;
                    while (i < rangeCount) {
                        int n = i;
                        this.ranges[n] = this.ranges[n] + offset;
                        i += 2;
                    }
                }
            } else {
                if (this.ranges[modifyStart] < start && start < this.ranges[modifyStart] + this.ranges[modifyStart + 1]) {
                    this.ranges[modifyStart + 1] = start - this.ranges[modifyStart];
                    modifyStart += 2;
                }
                if (modifyEnd < rangeCount && this.ranges[modifyEnd] < end && end < this.ranges[modifyEnd] + this.ranges[modifyEnd + 1]) {
                    this.ranges[modifyEnd + 1] = this.ranges[modifyEnd] + this.ranges[modifyEnd + 1] - end;
                    this.ranges[modifyEnd] = end;
                }
                if (offset != 0) {
                    int i = modifyEnd;
                    while (i < rangeCount) {
                        int n = i;
                        this.ranges[n] = this.ranges[n] + offset;
                        i += 2;
                    }
                }
                System.arraycopy(this.ranges, modifyEnd, this.ranges, modifyStart, rangeCount - modifyEnd);
                System.arraycopy(this.styles, modifyEnd >> 1, this.styles, modifyStart >> 1, this.styleCount - (modifyEnd >> 1));
                this.styleCount -= modifyEnd - modifyStart >> 1;
            }
        } else {
            int modifyStart = this.getRangeIndex(start, -1, this.styleCount);
            if (modifyStart == this.styleCount) {
                return;
            }
            int end = start + replaceCharCount;
            int modifyEnd = this.getRangeIndex(end, modifyStart - 1, this.styleCount);
            int offset = newCharCount - replaceCharCount;
            if (modifyStart == modifyEnd && this.styles[modifyStart].start < start && end < this.styles[modifyEnd].start + this.styles[modifyEnd].length) {
                if (newCharCount == 0) {
                    this.styles[modifyStart].length -= replaceCharCount;
                    ++modifyEnd;
                } else {
                    if (this.styleCount + 1 > this.styles.length) {
                        StyleRange[] newStyles = new StyleRange[this.styles.length + 32];
                        System.arraycopy(this.styles, 0, newStyles, 0, this.styleCount);
                        this.styles = newStyles;
                    }
                    System.arraycopy(this.styles, modifyStart + 1, this.styles, modifyStart + 2, this.styleCount - (modifyStart + 1));
                    this.styles[modifyStart + 1] = (StyleRange)this.styles[modifyStart].clone();
                    this.styles[modifyStart + 1].length = this.styles[modifyStart].start + this.styles[modifyStart].length - end;
                    this.styles[modifyStart + 1].start = start + newCharCount;
                    this.styles[modifyStart].length = start - this.styles[modifyStart].start;
                    ++this.styleCount;
                    modifyEnd += 2;
                }
                if (offset != 0) {
                    int i = modifyEnd;
                    while (i < this.styleCount) {
                        this.styles[i].start += offset;
                        ++i;
                    }
                }
            } else {
                if (this.styles[modifyStart].start < start && start < this.styles[modifyStart].start + this.styles[modifyStart].length) {
                    this.styles[modifyStart].length = start - this.styles[modifyStart].start;
                    ++modifyStart;
                }
                if (modifyEnd < this.styleCount && this.styles[modifyEnd].start < end && end < this.styles[modifyEnd].start + this.styles[modifyEnd].length) {
                    this.styles[modifyEnd].length = this.styles[modifyEnd].start + this.styles[modifyEnd].length - end;
                    this.styles[modifyEnd].start = end;
                }
                if (offset != 0) {
                    int i = modifyEnd;
                    while (i < this.styleCount) {
                        this.styles[i].start += offset;
                        ++i;
                    }
                }
                System.arraycopy(this.styles, modifyEnd, this.styles, modifyStart, this.styleCount - modifyEnd);
                this.styleCount -= modifyEnd - modifyStart;
            }
        }
    }

    static class LineInfo {
        int flags;
        Color background;
        int alignment;
        int indent;
        int wrapIndent;
        boolean justify;
        int[] segments;
        char[] segmentsChars;
        int[] tabStops;

        public LineInfo() {
        }

        public LineInfo(LineInfo info) {
            if (info != null) {
                this.flags = info.flags;
                this.background = info.background;
                this.alignment = info.alignment;
                this.indent = info.indent;
                this.wrapIndent = info.wrapIndent;
                this.justify = info.justify;
                this.segments = info.segments;
                this.segmentsChars = info.segmentsChars;
                this.tabStops = info.tabStops;
            }
        }
    }
}

