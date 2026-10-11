/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.graphics.TextStyle
 */
package org.eclipse.jface.viewers;

import java.util.ArrayList;
import org.eclipse.jface.resource.ColorRegistry;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.graphics.TextStyle;

public class StyledString {
    public static final Styler QUALIFIER_STYLER = StyledString.createColorRegistryStyler("QUALIFIER_COLOR", null);
    public static final Styler COUNTER_STYLER = StyledString.createColorRegistryStyler("COUNTER_COLOR", null);
    public static final Styler DECORATIONS_STYLER = StyledString.createColorRegistryStyler("DECORATIONS_COLOR", null);
    private static final StyleRange[] EMPTY = new StyleRange[0];
    private StringBuffer fBuffer = new StringBuffer();
    private StyleRunList fStyleRuns = null;

    public static Styler createColorRegistryStyler(String foregroundColorName, String backgroundColorName) {
        return new DefaultStyler(foregroundColorName, backgroundColorName);
    }

    public StyledString() {
    }

    public StyledString(String string) {
        this(string, null);
    }

    public StyledString(String string, Styler styler) {
        this();
        this.append(string, styler);
    }

    public String getString() {
        return this.fBuffer.toString();
    }

    public String toString() {
        return this.getString();
    }

    public int length() {
        return this.fBuffer.length();
    }

    public StyledString append(String string) {
        return this.append(string, null);
    }

    public StyledString append(char[] chars) {
        return this.append(chars, null);
    }

    public StyledString append(char ch) {
        return this.append(String.valueOf(ch), null);
    }

    public StyledString append(StyledString string) {
        if (string.length() == 0) {
            return this;
        }
        int offset = this.fBuffer.length();
        this.fBuffer.append(string.toString());
        StyleRunList otherRuns = string.fStyleRuns;
        if (otherRuns != null && !otherRuns.isEmpty()) {
            int i = 0;
            while (i < otherRuns.size()) {
                StyleRun curr = (StyleRun)otherRuns.get(i);
                if (i == 0 && curr.offset != 0) {
                    this.appendStyleRun(null, offset);
                }
                this.appendStyleRun(curr.style, offset + curr.offset);
                ++i;
            }
        } else {
            this.appendStyleRun(null, offset);
        }
        return this;
    }

    public StyledString append(char ch, Styler styler) {
        return this.append(String.valueOf(ch), styler);
    }

    public StyledString append(String string, Styler styler) {
        if (string.length() == 0) {
            return this;
        }
        int offset = this.fBuffer.length();
        this.fBuffer.append(string);
        this.appendStyleRun(styler, offset);
        return this;
    }

    public StyledString append(char[] chars, Styler styler) {
        if (chars.length == 0) {
            return this;
        }
        int offset = this.fBuffer.length();
        this.fBuffer.append(chars);
        this.appendStyleRun(styler, offset);
        return this;
    }

    public StyledString insert(char ch, int offset) throws StringIndexOutOfBoundsException {
        if (offset < 0 || offset > this.fBuffer.length()) {
            throw new StringIndexOutOfBoundsException("Invalid offset (" + offset + ")");
        }
        if (this.hasRuns()) {
            int runIndex = this.findRun(offset);
            runIndex = runIndex < 0 ? -runIndex - 1 : ++runIndex;
            StyleRunList styleRuns = this.getStyleRuns();
            int size = styleRuns.size();
            int i = runIndex;
            while (i < size) {
                StyleRun run = styleRuns.getRun(i);
                ++run.offset;
                ++i;
            }
        }
        this.fBuffer.insert(offset, ch);
        return this;
    }

    public void setStyle(int offset, int length, Styler styler) throws StringIndexOutOfBoundsException {
        int startRun;
        if (offset < 0 || offset + length > this.fBuffer.length()) {
            throw new StringIndexOutOfBoundsException("Invalid offset (" + offset + ") or length (" + length + ")");
        }
        if (length == 0) {
            return;
        }
        StyleRun lastRun = this.getLastRun();
        if (lastRun == null || lastRun.offset <= offset) {
            Styler lastStyler = lastRun == null ? null : lastRun.style;
            this.appendStyleRun(styler, offset);
            if (offset + length != this.fBuffer.length()) {
                this.appendStyleRun(lastStyler, offset + length);
            }
            return;
        }
        int endRun = this.findRun(offset + length);
        if (endRun < 0) {
            endRun = -(endRun + 1);
            if (offset + length < this.fBuffer.length()) {
                Styler prevStyle = endRun > 0 ? this.fStyleRuns.getRun((int)(endRun - 1)).style : null;
                this.fStyleRuns.add(endRun, new StyleRun(offset + length, prevStyle));
            }
        }
        if ((startRun = this.findRun(offset)) >= 0) {
            StyleRun styleRun = this.fStyleRuns.getRun(startRun);
            styleRun.style = styler;
        } else {
            Styler prevStyle;
            Styler styler2 = prevStyle = (startRun = -(startRun + 1)) > 0 ? this.fStyleRuns.getRun((int)(startRun - 1)).style : null;
            if (this.isDifferentStyle(prevStyle, styler) || startRun == 0 && styler != null) {
                this.fStyleRuns.add(startRun, new StyleRun(offset, styler));
                ++endRun;
            } else {
                --startRun;
            }
        }
        if (startRun + 1 < endRun) {
            this.fStyleRuns.removeRange(startRun + 1, endRun);
        }
    }

    public StyleRange[] getStyleRanges() {
        if (this.hasRuns()) {
            ArrayList<StyleRange> res = new ArrayList<StyleRange>();
            StyleRunList styleRuns = this.getStyleRuns();
            int offset = 0;
            Styler style = null;
            int i = 0;
            while (i < styleRuns.size()) {
                StyleRun curr = (StyleRun)styleRuns.get(i);
                if (this.isDifferentStyle(curr.style, style)) {
                    if (curr.offset > offset && style != null) {
                        res.add(this.createStyleRange(offset, curr.offset, style));
                    }
                    offset = curr.offset;
                    style = curr.style;
                }
                ++i;
            }
            if (this.fBuffer.length() > offset && style != null) {
                res.add(this.createStyleRange(offset, this.fBuffer.length(), style));
            }
            return res.toArray(new StyleRange[res.size()]);
        }
        return EMPTY;
    }

    private int findRun(int offset) {
        int low = 0;
        int high = this.fStyleRuns.size() - 1;
        while (low <= high) {
            int mid = (low + high) / 2;
            StyleRun styleRun = this.fStyleRuns.getRun(mid);
            if (styleRun.offset < offset) {
                low = mid + 1;
                continue;
            }
            if (styleRun.offset > offset) {
                high = mid - 1;
                continue;
            }
            return mid;
        }
        return -(low + 1);
    }

    private StyleRange createStyleRange(int start, int end, Styler style) {
        StyleRange styleRange = new StyleRange();
        styleRange.start = start;
        styleRange.length = end - start;
        style.applyStyles((TextStyle)styleRange);
        return styleRange;
    }

    private boolean hasRuns() {
        return this.fStyleRuns != null && !this.fStyleRuns.isEmpty();
    }

    private void appendStyleRun(Styler style, int offset) {
        StyleRun lastRun = this.getLastRun();
        if (lastRun != null && lastRun.offset == offset) {
            lastRun.style = style;
            return;
        }
        if (lastRun == null && style != null || lastRun != null && this.isDifferentStyle(style, lastRun.style)) {
            this.getStyleRuns().add(new StyleRun(offset, style));
        }
    }

    private boolean isDifferentStyle(Styler style1, Styler style2) {
        if (style1 == null) {
            return style2 != null;
        }
        return !style1.equals(style2);
    }

    private StyleRun getLastRun() {
        if (this.fStyleRuns == null || this.fStyleRuns.isEmpty()) {
            return null;
        }
        return this.fStyleRuns.getRun(this.fStyleRuns.size() - 1);
    }

    private StyleRunList getStyleRuns() {
        if (this.fStyleRuns == null) {
            this.fStyleRuns = new StyleRunList();
        }
        return this.fStyleRuns;
    }

    private static class DefaultStyler
    extends Styler {
        private final String fForegroundColorName;
        private final String fBackgroundColorName;

        public DefaultStyler(String foregroundColorName, String backgroundColorName) {
            this.fForegroundColorName = foregroundColorName;
            this.fBackgroundColorName = backgroundColorName;
        }

        public void applyStyles(TextStyle textStyle) {
            ColorRegistry colorRegistry = JFaceResources.getColorRegistry();
            if (this.fForegroundColorName != null) {
                textStyle.foreground = colorRegistry.get(this.fForegroundColorName);
            }
            if (this.fBackgroundColorName != null) {
                textStyle.background = colorRegistry.get(this.fBackgroundColorName);
            }
        }
    }

    private static class StyleRun {
        public int offset;
        public Styler style;

        public StyleRun(int offset, Styler style) {
            this.offset = offset;
            this.style = style;
        }

        public String toString() {
            return "Offset " + this.offset + ", style: " + this.style;
        }
    }

    private static class StyleRunList
    extends ArrayList {
        private static final long serialVersionUID = 123L;

        public StyleRunList() {
            super(3);
        }

        public StyleRun getRun(int index) {
            return (StyleRun)this.get(index);
        }

        public void removeRange(int fromIndex, int toIndex) {
            super.removeRange(fromIndex, toIndex);
        }
    }

    public static abstract class Styler {
        public abstract void applyStyles(TextStyle var1);
    }
}

