/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.GlyphMetrics;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.gdip.Rect;
import org.eclipse.swt.internal.win32.EMR;
import org.eclipse.swt.internal.win32.EMREXTCREATEFONTINDIRECTW;
import org.eclipse.swt.internal.win32.LOGBRUSH;
import org.eclipse.swt.internal.win32.LOGFONT;
import org.eclipse.swt.internal.win32.LOGFONTA;
import org.eclipse.swt.internal.win32.LOGFONTW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.OUTLINETEXTMETRIC;
import org.eclipse.swt.internal.win32.OUTLINETEXTMETRICA;
import org.eclipse.swt.internal.win32.OUTLINETEXTMETRICW;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SCRIPT_ANALYSIS;
import org.eclipse.swt.internal.win32.SCRIPT_CONTROL;
import org.eclipse.swt.internal.win32.SCRIPT_FONTPROPERTIES;
import org.eclipse.swt.internal.win32.SCRIPT_ITEM;
import org.eclipse.swt.internal.win32.SCRIPT_LOGATTR;
import org.eclipse.swt.internal.win32.SCRIPT_PROPERTIES;
import org.eclipse.swt.internal.win32.SCRIPT_STATE;
import org.eclipse.swt.internal.win32.TEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICA;
import org.eclipse.swt.internal.win32.TEXTMETRICW;

public final class TextLayout
extends Resource {
    Font font;
    String text;
    String segmentsText;
    int lineSpacing = 0;
    int ascent = -1;
    int descent = -1;
    int alignment;
    int wrapWidth = -1;
    int orientation = 0x2000000;
    int indent;
    int wrapIndent;
    boolean justify;
    int[] tabs;
    int[] segments;
    char[] segmentsChars;
    StyleItem[] styles = new StyleItem[2];
    int stylesCount;
    StyleItem[] allRuns;
    StyleItem[][] runs;
    int[] lineOffset;
    int[] lineY;
    int[] lineWidth;
    int mLangFontLink2;
    static final char LTR_MARK = '\u200e';
    static final char RTL_MARK = '\u200f';
    static final int SCRIPT_VISATTR_SIZEOF = 2;
    static final int GOFFSET_SIZEOF = 8;
    static final byte[] CLSID_CMultiLanguage = new byte[16];
    static final byte[] IID_IMLangFontLink2 = new byte[16];
    static final int MERGE_MAX = 512;
    static final int TOO_MANY_RUNS = 1024;
    static final int UNDERLINE_IME_DOT = 65536;
    static final int UNDERLINE_IME_DASH = 131072;
    static final int UNDERLINE_IME_THICK = 196608;

    static {
        OS.IIDFromString("{275c23e2-3747-11d0-9fea-00aa003f8646}\u0000".toCharArray(), CLSID_CMultiLanguage);
        OS.IIDFromString("{DCCFC162-2B38-11d2-B7EC-00C04F8F5D9A}\u0000".toCharArray(), IID_IMLangFontLink2);
    }

    public TextLayout(Device device) {
        super(device);
        this.styles[0] = new StyleItem();
        this.styles[1] = new StyleItem();
        this.stylesCount = 2;
        this.text = "";
        int[] ppv = new int[1];
        OS.OleInitialize(0);
        if (OS.CoCreateInstance(CLSID_CMultiLanguage, 0, 1, IID_IMLangFontLink2, ppv) == 0) {
            this.mLangFontLink2 = ppv[0];
        }
        this.init();
    }

    RECT addClipRect(StyleItem run, RECT clipRect, RECT rect, int selectionStart, int selectionEnd) {
        if (rect != null) {
            boolean isRTL;
            if (clipRect == null) {
                clipRect = new RECT();
                OS.SetRect(clipRect, -1, rect.top, -1, rect.bottom);
            }
            boolean bl = isRTL = (this.orientation & 0x4000000) != 0;
            if (run.start <= selectionStart && selectionStart <= run.start + run.length) {
                if (run.analysis.fRTL ^ isRTL) {
                    clipRect.right = rect.left;
                } else {
                    clipRect.left = rect.left;
                }
            }
            if (run.start <= selectionEnd && selectionEnd <= run.start + run.length) {
                if (run.analysis.fRTL ^ isRTL) {
                    clipRect.left = rect.right;
                } else {
                    clipRect.right = rect.right;
                }
            }
        }
        return clipRect;
    }

    void breakRun(StyleItem run) {
        if (run.psla != 0) {
            return;
        }
        char[] chars = new char[run.length];
        this.segmentsText.getChars(run.start, run.start + run.length, chars, 0);
        int hHeap = OS.GetProcessHeap();
        run.psla = OS.HeapAlloc(hHeap, 8, SCRIPT_LOGATTR.sizeof * chars.length);
        if (run.psla == 0) {
            SWT.error(2);
        }
        OS.ScriptBreak(chars, chars.length, run.analysis, run.psla);
    }

    void checkLayout() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
    }

    void computeRuns(GC gc) {
        if (this.runs != null) {
            return;
        }
        int hDC = gc != null ? gc.handle : this.device.internal_new_GC(null);
        int srcHdc = OS.CreateCompatibleDC(hDC);
        this.allRuns = this.itemize();
        int i = 0;
        while (i < this.allRuns.length - 1) {
            StyleItem run = this.allRuns[i];
            OS.SelectObject(srcHdc, this.getItemFont(run));
            this.shape(srcHdc, run);
            ++i;
        }
        SCRIPT_LOGATTR logAttr = new SCRIPT_LOGATTR();
        SCRIPT_PROPERTIES properties = new SCRIPT_PROPERTIES();
        int lineWidth = this.indent;
        int lineStart = 0;
        int lineCount = 1;
        int i2 = 0;
        while (i2 < this.allRuns.length - 1) {
            StyleItem run = this.allRuns[i2];
            if (this.tabs != null && run.tab) {
                int length;
                int tabsLength = this.tabs.length;
                int j = 0;
                while (j < tabsLength) {
                    if (this.tabs[j] > lineWidth) {
                        run.width = this.tabs[j] - lineWidth;
                        break;
                    }
                    ++j;
                }
                if (j == tabsLength) {
                    int lastTabWidth;
                    int tabX = this.tabs[tabsLength - 1];
                    int n = lastTabWidth = tabsLength > 1 ? this.tabs[tabsLength - 1] - this.tabs[tabsLength - 2] : this.tabs[0];
                    if (lastTabWidth > 0) {
                        while (tabX <= lineWidth) {
                            tabX += lastTabWidth;
                        }
                        run.width = tabX - lineWidth;
                    }
                }
                if ((length = run.length) > 1) {
                    int stop = j + length - 1;
                    if (stop < tabsLength) {
                        run.width += this.tabs[stop] - this.tabs[j];
                    } else {
                        if (j < tabsLength) {
                            run.width += this.tabs[tabsLength - 1] - this.tabs[j];
                            length -= tabsLength - 1 - j;
                        }
                        int lastTabWidth = tabsLength > 1 ? this.tabs[tabsLength - 1] - this.tabs[tabsLength - 2] : this.tabs[0];
                        run.width += lastTabWidth * (length - 1);
                    }
                }
            }
            if (this.wrapWidth != -1 && lineWidth + run.width > this.wrapWidth && !run.tab && !run.lineBreak) {
                boolean wrapEntireRun;
                int start = 0;
                int[] piDx = new int[run.length];
                if (run.style != null && run.style.metrics != null) {
                    piDx[0] = run.width;
                } else {
                    OS.ScriptGetLogicalWidths(run.analysis, run.length, run.glyphCount, run.advances, run.clusters, run.visAttrs, piDx);
                }
                int width = 0;
                int maxWidth = this.wrapWidth - lineWidth;
                while (width + piDx[start] < maxWidth) {
                    width += piDx[start++];
                }
                int firstStart = start;
                int firstIndice = i2;
                while (i2 >= lineStart) {
                    this.breakRun(run);
                    while (start >= 0) {
                        OS.MoveMemory(logAttr, run.psla + start * SCRIPT_LOGATTR.sizeof, SCRIPT_LOGATTR.sizeof);
                        if (logAttr.fSoftBreak || logAttr.fWhiteSpace) break;
                        --start;
                    }
                    if (start == 0 && i2 != lineStart && !run.tab && logAttr.fSoftBreak && !logAttr.fWhiteSpace) {
                        OS.MoveMemory(properties, this.device.scripts[run.analysis.eScript], SCRIPT_PROPERTIES.sizeof);
                        short langID = properties.langid;
                        StyleItem pRun = this.allRuns[i2 - 1];
                        OS.MoveMemory(properties, this.device.scripts[pRun.analysis.eScript], SCRIPT_PROPERTIES.sizeof);
                        if (properties.langid == langID || langID == 0 || properties.langid == 0) {
                            this.breakRun(pRun);
                            OS.MoveMemory(logAttr, pRun.psla + (pRun.length - 1) * SCRIPT_LOGATTR.sizeof, SCRIPT_LOGATTR.sizeof);
                            if (!logAttr.fWhiteSpace) {
                                start = -1;
                            }
                        }
                    }
                    if (start >= 0 || i2 == lineStart) break;
                    run = this.allRuns[--i2];
                    start = run.length - 1;
                }
                boolean bl = wrapEntireRun = start == 0 && i2 != lineStart && !run.tab;
                if (wrapEntireRun) {
                    this.breakRun(run);
                    OS.MoveMemory(logAttr, run.psla + start * SCRIPT_LOGATTR.sizeof, SCRIPT_LOGATTR.sizeof);
                    boolean bl2 = wrapEntireRun = !logAttr.fWhiteSpace;
                }
                if (wrapEntireRun) {
                    run = this.allRuns[--i2];
                    start = run.length;
                } else if (start <= 0 && i2 == lineStart) {
                    if (lineWidth == this.wrapWidth && firstIndice > 0) {
                        i2 = firstIndice - 1;
                        run = this.allRuns[i2];
                        start = run.length;
                    } else {
                        i2 = firstIndice;
                        run = this.allRuns[i2];
                        start = Math.max(1, firstStart);
                    }
                }
                this.breakRun(run);
                while (start < run.length) {
                    OS.MoveMemory(logAttr, run.psla + start * SCRIPT_LOGATTR.sizeof, SCRIPT_LOGATTR.sizeof);
                    if (!logAttr.fWhiteSpace) break;
                    ++start;
                }
                if (start > 0 && start < run.length) {
                    StyleItem newRun = new StyleItem();
                    newRun.start = run.start + start;
                    newRun.length = run.length - start;
                    newRun.style = run.style;
                    newRun.analysis = this.cloneScriptAnalysis(run.analysis);
                    run.free();
                    run.length = start;
                    OS.SelectObject(srcHdc, this.getItemFont(run));
                    run.analysis.fNoGlyphIndex = false;
                    this.shape(srcHdc, run);
                    OS.SelectObject(srcHdc, this.getItemFont(newRun));
                    newRun.analysis.fNoGlyphIndex = false;
                    this.shape(srcHdc, newRun);
                    StyleItem[] newAllRuns = new StyleItem[this.allRuns.length + 1];
                    System.arraycopy(this.allRuns, 0, newAllRuns, 0, i2 + 1);
                    System.arraycopy(this.allRuns, i2 + 1, newAllRuns, i2 + 2, this.allRuns.length - i2 - 1);
                    this.allRuns = newAllRuns;
                    this.allRuns[i2 + 1] = newRun;
                }
                if (i2 != this.allRuns.length - 2) {
                    run.lineBreak = true;
                    run.softBreak = true;
                }
            }
            lineWidth += run.width;
            if (run.lineBreak) {
                lineStart = i2 + 1;
                lineWidth = run.softBreak ? this.wrapIndent : this.indent;
                ++lineCount;
            }
            ++i2;
        }
        lineWidth = 0;
        this.runs = new StyleItem[lineCount][];
        this.lineOffset = new int[lineCount + 1];
        this.lineY = new int[lineCount + 1];
        this.lineWidth = new int[lineCount];
        int lineRunCount = 0;
        int line = 0;
        int ascent = Math.max(0, this.ascent);
        int descent = Math.max(0, this.descent);
        StyleItem[] lineRuns = new StyleItem[this.allRuns.length];
        int i3 = 0;
        while (i3 < this.allRuns.length) {
            StyleItem run = this.allRuns[i3];
            lineRuns[lineRunCount++] = run;
            lineWidth += run.width;
            ascent = Math.max(ascent, run.ascent);
            descent = Math.max(descent, run.descent);
            if (run.lineBreak || i3 == this.allRuns.length - 1) {
                if (!(lineRunCount != 1 || i3 != this.allRuns.length - 1 && run.softBreak)) {
                    TEXTMETRIC lptm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
                    OS.SelectObject(srcHdc, this.getItemFont(run));
                    OS.GetTextMetrics(srcHdc, lptm);
                    run.ascent = lptm.tmAscent;
                    run.descent = lptm.tmDescent;
                    ascent = Math.max(ascent, run.ascent);
                    descent = Math.max(descent, run.descent);
                }
                this.runs[line] = new StyleItem[lineRunCount];
                System.arraycopy(lineRuns, 0, this.runs[line], 0, lineRunCount);
                if (this.justify && this.wrapWidth != -1 && run.softBreak && lineWidth > 0) {
                    int lineIndent = this.wrapIndent;
                    if (line == 0) {
                        lineIndent = this.indent;
                    } else {
                        StyleItem[] previousLine = this.runs[line - 1];
                        StyleItem previousRun = previousLine[previousLine.length - 1];
                        if (previousRun.lineBreak && !previousRun.softBreak) {
                            lineIndent = this.indent;
                        }
                    }
                    lineWidth += lineIndent;
                    int hHeap = OS.GetProcessHeap();
                    int newLineWidth = 0;
                    int j = 0;
                    while (j < this.runs[line].length) {
                        StyleItem item = this.runs[line][j];
                        int iDx = item.width * this.wrapWidth / lineWidth;
                        if (iDx != item.width) {
                            item.justify = OS.HeapAlloc(hHeap, 8, item.glyphCount * 4);
                            if (item.justify == 0) {
                                SWT.error(2);
                            }
                            OS.ScriptJustify(item.visAttrs, item.advances, item.glyphCount, iDx - item.width, 2, item.justify);
                            item.width = iDx;
                        }
                        newLineWidth += item.width;
                        ++j;
                    }
                    lineWidth = newLineWidth;
                }
                this.lineWidth[line] = lineWidth;
                StyleItem lastRun = this.runs[line][lineRunCount - 1];
                int lastOffset = lastRun.start + lastRun.length;
                this.runs[line] = this.reorder(this.runs[line], i3 == this.allRuns.length - 1);
                lastRun = this.runs[line][lineRunCount - 1];
                if (run.softBreak && run != lastRun) {
                    run.lineBreak = false;
                    run.softBreak = false;
                    lastRun.lineBreak = true;
                    lastRun.softBreak = true;
                }
                lineWidth = this.getLineIndent(line);
                int j = 0;
                while (j < this.runs[line].length) {
                    this.runs[line][j].x = lineWidth;
                    lineWidth += this.runs[line][j].width;
                    ++j;
                }
                this.lineY[++line] = this.lineY[line - 1] + ascent + descent + this.lineSpacing;
                this.lineOffset[line] = lastOffset;
                lineWidth = 0;
                lineRunCount = 0;
                ascent = Math.max(0, this.ascent);
                descent = Math.max(0, this.descent);
            }
            ++i3;
        }
        if (srcHdc != 0) {
            OS.DeleteDC(srcHdc);
        }
        if (gc == null) {
            this.device.internal_dispose_GC(hDC, null);
        }
    }

    void destroy() {
        this.freeRuns();
        this.font = null;
        this.text = null;
        this.segmentsText = null;
        this.tabs = null;
        this.styles = null;
        this.runs = null;
        this.lineOffset = null;
        this.lineY = null;
        this.lineWidth = null;
        this.segments = null;
        this.segmentsChars = null;
        if (this.mLangFontLink2 != 0) {
            OS.VtblCall(2, this.mLangFontLink2);
            this.mLangFontLink2 = 0;
        }
        OS.OleUninitialize();
    }

    SCRIPT_ANALYSIS cloneScriptAnalysis(SCRIPT_ANALYSIS src) {
        SCRIPT_ANALYSIS dst = new SCRIPT_ANALYSIS();
        dst.eScript = src.eScript;
        dst.fRTL = src.fRTL;
        dst.fLayoutRTL = src.fLayoutRTL;
        dst.fLinkBefore = src.fLinkBefore;
        dst.fLinkAfter = src.fLinkAfter;
        dst.fLogicalOrder = src.fLogicalOrder;
        dst.fNoGlyphIndex = src.fNoGlyphIndex;
        dst.s = new SCRIPT_STATE();
        dst.s.uBidiLevel = src.s.uBidiLevel;
        dst.s.fOverrideDirection = src.s.fOverrideDirection;
        dst.s.fInhibitSymSwap = src.s.fInhibitSymSwap;
        dst.s.fCharShape = src.s.fCharShape;
        dst.s.fDigitSubstitute = src.s.fDigitSubstitute;
        dst.s.fInhibitLigate = src.s.fInhibitLigate;
        dst.s.fDisplayZWG = src.s.fDisplayZWG;
        dst.s.fArabicNumContext = src.s.fArabicNumContext;
        dst.s.fGcpClusters = src.s.fGcpClusters;
        dst.s.fReserved = src.s.fReserved;
        dst.s.fEngineReserved = src.s.fEngineReserved;
        return dst;
    }

    int[] computePolyline(int left, int top, int right, int bottom) {
        int length;
        int height = bottom - top;
        int width = 2 * height;
        int peaks = Compatibility.ceil(right - left, width);
        if (peaks == 0 && right - left > 2) {
            peaks = 1;
        }
        if ((length = (2 * peaks + 1) * 2) < 0) {
            return new int[0];
        }
        int[] coordinates = new int[length];
        int i = 0;
        while (i < peaks) {
            int index = 4 * i;
            coordinates[index] = left + width * i;
            coordinates[index + 1] = bottom;
            coordinates[index + 2] = coordinates[index] + width / 2;
            coordinates[index + 3] = top;
            ++i;
        }
        coordinates[length - 2] = left + width * peaks;
        coordinates[length - 1] = bottom;
        return coordinates;
    }

    int createGdipBrush(int pixel, int alpha) {
        int argb = (alpha & 0xFF) << 24 | pixel >> 16 & 0xFF | pixel & 0xFF00 | (pixel & 0xFF) << 16;
        int gdiColor = Gdip.Color_new(argb);
        int brush = Gdip.SolidBrush_new(gdiColor);
        Gdip.Color_delete(gdiColor);
        return brush;
    }

    int createGdipBrush(Color color, int alpha) {
        return this.createGdipBrush(color.handle, alpha);
    }

    public void draw(GC gc, int x, int y) {
        this.draw(gc, x, y, -1, -1, null, null);
    }

    public void draw(GC gc, int x, int y, int selectionStart, int selectionEnd, Color selectionForeground, Color selectionBackground) {
        this.draw(gc, x, y, selectionStart, selectionEnd, selectionForeground, selectionBackground, 0);
    }

    public void draw(GC gc, int x, int y, int selectionStart, int selectionEnd, Color selectionForeground, Color selectionBackground, int flags) {
        int length;
        this.checkLayout();
        this.computeRuns(gc);
        if (gc == null) {
            SWT.error(4);
        }
        if (gc.isDisposed()) {
            SWT.error(5);
        }
        if (selectionForeground != null && selectionForeground.isDisposed()) {
            SWT.error(5);
        }
        if (selectionBackground != null && selectionBackground.isDisposed()) {
            SWT.error(5);
        }
        if ((length = this.text.length()) == 0 && flags == 0) {
            return;
        }
        int hdc = gc.handle;
        Rectangle clip = gc.getClipping();
        GCData data = gc.data;
        int gdipGraphics = data.gdipGraphics;
        int foreground = data.foreground;
        int linkColor = OS.GetSysColor(OS.COLOR_HOTLIGHT);
        int alpha = data.alpha;
        boolean gdip = gdipGraphics != 0;
        int gdipForeground = 0;
        int gdipLinkColor = 0;
        int state = 0;
        if (gdip) {
            gc.checkGC(1);
            gdipForeground = gc.getFgBrush();
        } else {
            state = OS.SaveDC(hdc);
            if ((data.style & 0x8000000) != 0) {
                OS.SetLayout(hdc, OS.GetLayout(hdc) | 1);
            }
        }
        boolean hasSelection = selectionStart <= selectionEnd && selectionStart != -1 && selectionEnd != -1;
        int gdipSelBackground = 0;
        int gdipSelForeground = 0;
        int gdipFont = 0;
        int lastHFont = 0;
        int selBackground = 0;
        int selForeground = 0;
        if (hasSelection || (flags & 0x100000) != 0 && (flags & 0x30000) != 0) {
            int bgSel;
            int fgSel = selectionForeground != null ? selectionForeground.handle : OS.GetSysColor(OS.COLOR_HIGHLIGHTTEXT);
            int n = bgSel = selectionBackground != null ? selectionBackground.handle : OS.GetSysColor(OS.COLOR_HIGHLIGHT);
            if (gdip) {
                gdipSelBackground = this.createGdipBrush(bgSel, alpha);
                gdipSelForeground = this.createGdipBrush(fgSel, alpha);
            } else {
                selBackground = OS.CreateSolidBrush(bgSel);
                selForeground = fgSel;
            }
            if (hasSelection) {
                selectionStart = this.translateOffset(Math.min(Math.max(0, selectionStart), length - 1));
                selectionEnd = this.translateOffset(Math.min(Math.max(0, selectionEnd), length - 1));
            }
        }
        RECT rect = new RECT();
        OS.SetBkMode(hdc, 1);
        int line = 0;
        while (line < this.runs.length) {
            int drawX = x + this.getLineIndent(line);
            int drawY = y + this.lineY[line];
            StyleItem[] lineRuns = this.runs[line];
            int lineHeight = this.lineY[line + 1] - this.lineY[line] - this.lineSpacing;
            if ((flags & 0x30000) != 0 && (hasSelection || (flags & 0x100000) != 0)) {
                boolean extents = false;
                if (line == this.runs.length - 1 && (flags & 0x100000) != 0) {
                    extents = true;
                } else {
                    StyleItem run = lineRuns[lineRuns.length - 1];
                    if (run.lineBreak && !run.softBreak) {
                        if (selectionStart <= run.start && run.start <= selectionEnd) {
                            extents = true;
                        }
                    } else {
                        int endOffset = run.start + run.length - 1;
                        if (selectionStart <= endOffset && endOffset < selectionEnd && (flags & 0x10000) != 0) {
                            extents = true;
                        }
                    }
                }
                if (extents) {
                    int width = (flags & 0x10000) != 0 ? (OS.IsWin95 ? Short.MAX_VALUE : 0x6FFFFFF) : lineHeight / 3;
                    if (gdip) {
                        Gdip.Graphics_FillRectangle(gdipGraphics, gdipSelBackground, drawX + this.lineWidth[line], drawY, width, lineHeight);
                    } else {
                        OS.SelectObject(hdc, selBackground);
                        OS.PatBlt(hdc, drawX + this.lineWidth[line], drawY, width, lineHeight, 15728673);
                    }
                }
            }
            if (drawX <= clip.x + clip.width && drawX + this.lineWidth[line] >= clip.x) {
                int alignmentX = drawX;
                int i = 0;
                while (i < lineRuns.length) {
                    StyleItem run = lineRuns[i];
                    if (run.length != 0) {
                        if (drawX > clip.x + clip.width) break;
                        if (drawX + run.width >= clip.x && (!run.lineBreak || run.softBreak)) {
                            OS.SetRect(rect, drawX, drawY, drawX + run.width, drawY + lineHeight);
                            if (gdip) {
                                this.drawRunBackgroundGDIP(run, gdipGraphics, rect, selectionStart, selectionEnd, alpha, gdipSelBackground, hasSelection);
                            } else {
                                this.drawRunBackground(run, hdc, rect, selectionStart, selectionEnd, selBackground, hasSelection);
                            }
                        }
                        drawX += run.width;
                    }
                    ++i;
                }
                int baseline = Math.max(0, this.ascent);
                int lineUnderlinePos = 0;
                int i2 = 0;
                while (i2 < lineRuns.length) {
                    baseline = Math.max(baseline, lineRuns[i2].ascent);
                    lineUnderlinePos = Math.min(lineUnderlinePos, lineRuns[i2].underlinePos);
                    ++i2;
                }
                RECT borderClip = null;
                RECT underlineClip = null;
                RECT strikeoutClip = null;
                RECT pRect = null;
                drawX = alignmentX;
                int i3 = 0;
                while (i3 < lineRuns.length) {
                    boolean hasAdorners;
                    StyleItem run = lineRuns[i3];
                    TextStyle style = run.style;
                    boolean bl = hasAdorners = style != null && (style.underline || style.strikeout || style.borderStyle != 0);
                    if (run.length != 0) {
                        if (drawX > clip.x + clip.width) break;
                        if (drawX + run.width >= clip.x) {
                            boolean skipTab;
                            boolean bl2 = skipTab = run.tab && !hasAdorners;
                            if (!(skipTab || run.lineBreak && !run.softBreak || style != null && style.metrics != null)) {
                                OS.SetRect(rect, drawX, drawY, drawX + run.width, drawY + lineHeight);
                                if (gdip) {
                                    int hFont = this.getItemFont(run);
                                    if (hFont != lastHFont) {
                                        lastHFont = hFont;
                                        if (gdipFont != 0) {
                                            Gdip.Font_delete(gdipFont);
                                        }
                                        int oldFont = OS.SelectObject(hdc, hFont);
                                        gdipFont = Gdip.Font_new(hdc, hFont);
                                        OS.SelectObject(hdc, oldFont);
                                        if (gdipFont == 0) {
                                            SWT.error(2);
                                        }
                                        if (!Gdip.Font_IsAvailable(gdipFont)) {
                                            Gdip.Font_delete(gdipFont);
                                            gdipFont = 0;
                                        }
                                    }
                                    int gdipFg = gdipForeground;
                                    if (style != null && style.underline && style.underlineStyle == 4) {
                                        if (gdipLinkColor == 0) {
                                            gdipLinkColor = this.createGdipBrush(linkColor, alpha);
                                        }
                                        gdipFg = gdipLinkColor;
                                    }
                                    if (gdipFont != 0 && !run.analysis.fNoGlyphIndex) {
                                        pRect = this.drawRunTextGDIP(gdipGraphics, run, rect, gdipFont, baseline, gdipFg, gdipSelForeground, selectionStart, selectionEnd, alpha);
                                    } else {
                                        int fg = style != null && style.underline && style.underlineStyle == 4 ? linkColor : foreground;
                                        pRect = this.drawRunTextGDIPRaster(gdipGraphics, run, rect, baseline, fg, selForeground, selectionStart, selectionEnd);
                                    }
                                    underlineClip = this.drawUnderlineGDIP(gdipGraphics, x, drawY + baseline, lineUnderlinePos, drawY + lineHeight, lineRuns, i3, gdipFg, gdipSelForeground, underlineClip, pRect, selectionStart, selectionEnd, alpha, clip);
                                    strikeoutClip = this.drawStrikeoutGDIP(gdipGraphics, x, drawY + baseline, lineRuns, i3, gdipFg, gdipSelForeground, strikeoutClip, pRect, selectionStart, selectionEnd, alpha, clip);
                                    borderClip = this.drawBorderGDIP(gdipGraphics, x, drawY, lineHeight, lineRuns, i3, gdipFg, gdipSelForeground, borderClip, pRect, selectionStart, selectionEnd, alpha, clip);
                                } else {
                                    int fg = style != null && style.underline && style.underlineStyle == 4 ? linkColor : foreground;
                                    pRect = this.drawRunText(hdc, run, rect, baseline, fg, selForeground, selectionStart, selectionEnd);
                                    underlineClip = this.drawUnderline(hdc, x, drawY + baseline, lineUnderlinePos, drawY + lineHeight, lineRuns, i3, fg, selForeground, underlineClip, pRect, selectionStart, selectionEnd, clip);
                                    strikeoutClip = this.drawStrikeout(hdc, x, drawY + baseline, lineRuns, i3, fg, selForeground, strikeoutClip, pRect, selectionStart, selectionEnd, clip);
                                    borderClip = this.drawBorder(hdc, x, drawY, lineHeight, lineRuns, i3, fg, selForeground, borderClip, pRect, selectionStart, selectionEnd, clip);
                                }
                            }
                        }
                        drawX += run.width;
                    }
                    ++i3;
                }
            }
            ++line;
        }
        if (gdipSelBackground != 0) {
            Gdip.SolidBrush_delete(gdipSelBackground);
        }
        if (gdipSelForeground != 0) {
            Gdip.SolidBrush_delete(gdipSelForeground);
        }
        if (gdipLinkColor != 0) {
            Gdip.SolidBrush_delete(gdipLinkColor);
        }
        if (gdipFont != 0) {
            Gdip.Font_delete(gdipFont);
        }
        if (state != 0) {
            OS.RestoreDC(hdc, state);
        }
        if (selBackground != 0) {
            OS.DeleteObject(selBackground);
        }
    }

    RECT drawBorder(int hdc, int x, int y, int lineHeight, StyleItem[] line, int index, int color, int selectionColor, RECT clipRect, RECT pRect, int selectionStart, int selectionEnd, Rectangle drawClip) {
        boolean lastRunVisible;
        StyleItem run = line[index];
        TextStyle style = run.style;
        if (style == null) {
            return null;
        }
        if (style.borderStyle == 0) {
            return null;
        }
        clipRect = this.addClipRect(run, clipRect, pRect, selectionStart, selectionEnd);
        boolean bl = lastRunVisible = drawClip != null && x + run.x + run.width > drawClip.x + drawClip.width;
        if (index + 1 >= line.length || lastRunVisible || !style.isAdherentBorder(line[index + 1].style)) {
            boolean fullSelection;
            int left = run.x;
            int start = run.start;
            int end = run.start + run.length - 1;
            int i = index;
            while (i > 0 && style.isAdherentBorder(line[i - 1].style)) {
                left = line[i - 1].x;
                start = Math.min(start, line[i - 1].start);
                end = Math.max(end, line[i - 1].start + line[i - 1].length - 1);
                --i;
            }
            boolean hasSelection = selectionStart <= selectionEnd && selectionStart != -1 && selectionEnd != -1;
            boolean bl2 = fullSelection = hasSelection && selectionStart <= start && end <= selectionEnd;
            if (style.borderColor != null) {
                color = style.borderColor.handle;
                clipRect = null;
            } else if (fullSelection) {
                color = selectionColor;
                clipRect = null;
            } else if (style.foreground != null) {
                color = style.foreground.handle;
            }
            int lineWidth = 1;
            int pattern = 1;
            int lineStyle = 0;
            switch (style.borderStyle) {
                case 1: {
                    break;
                }
                case 2: {
                    lineStyle = 1;
                    pattern = 4;
                    break;
                }
                case 4: {
                    lineStyle = 2;
                    pattern = 2;
                }
            }
            int oldBrush = OS.SelectObject(hdc, OS.GetStockObject(5));
            LOGBRUSH logBrush = new LOGBRUSH();
            logBrush.lbStyle = 0;
            logBrush.lbColor = color;
            int newPen = OS.ExtCreatePen(lineStyle | 0x10000, lineWidth, logBrush, 0, null);
            int oldPen = OS.SelectObject(hdc, newPen);
            RECT drawRect = new RECT();
            OS.SetRect(drawRect, x + left, y, x + run.x + run.width, y + lineHeight);
            if (drawClip != null) {
                int remainder;
                if (drawRect.left < drawClip.x) {
                    remainder = drawRect.left % pattern;
                    drawRect.left = drawClip.x / pattern * pattern + remainder - pattern;
                }
                if (drawRect.right > drawClip.x + drawClip.width) {
                    remainder = drawRect.right % pattern;
                    drawRect.right = (drawClip.x + drawClip.width) / pattern * pattern + remainder + pattern;
                }
            }
            OS.Rectangle(hdc, drawRect.left, drawRect.top, drawRect.right, drawRect.bottom);
            OS.SelectObject(hdc, oldPen);
            OS.DeleteObject(newPen);
            if (clipRect != null) {
                int state = OS.SaveDC(hdc);
                if (clipRect.left == -1) {
                    clipRect.left = 0;
                }
                if (clipRect.right == -1) {
                    clipRect.right = 524287;
                }
                OS.IntersectClipRect(hdc, clipRect.left, clipRect.top, clipRect.right, clipRect.bottom);
                logBrush.lbColor = selectionColor;
                int selPen = OS.ExtCreatePen(lineStyle | 0x10000, lineWidth, logBrush, 0, null);
                oldPen = OS.SelectObject(hdc, selPen);
                OS.Rectangle(hdc, drawRect.left, drawRect.top, drawRect.right, drawRect.bottom);
                OS.RestoreDC(hdc, state);
                OS.SelectObject(hdc, oldPen);
                OS.DeleteObject(selPen);
            }
            OS.SelectObject(hdc, oldBrush);
            return null;
        }
        return clipRect;
    }

    RECT drawBorderGDIP(int graphics, int x, int y, int lineHeight, StyleItem[] line, int index, int color, int selectionColor, RECT clipRect, RECT pRect, int selectionStart, int selectionEnd, int alpha, Rectangle drawClip) {
        boolean lastRunVisible;
        StyleItem run = line[index];
        TextStyle style = run.style;
        if (style == null) {
            return null;
        }
        if (style.borderStyle == 0) {
            return null;
        }
        clipRect = this.addClipRect(run, clipRect, pRect, selectionStart, selectionEnd);
        boolean bl = lastRunVisible = drawClip != null && x + run.x + run.width > drawClip.x + drawClip.width;
        if (index + 1 >= line.length || lastRunVisible || !style.isAdherentBorder(line[index + 1].style)) {
            int left = run.x;
            int start = run.start;
            int end = run.start + run.length - 1;
            int i = index;
            while (i > 0 && style.isAdherentBorder(line[i - 1].style)) {
                left = line[i - 1].x;
                start = Math.min(start, line[i - 1].start);
                end = Math.max(end, line[i - 1].start + line[i - 1].length - 1);
                --i;
            }
            boolean hasSelection = selectionStart <= selectionEnd && selectionStart != -1 && selectionEnd != -1;
            boolean fullSelection = hasSelection && selectionStart <= start && end <= selectionEnd;
            int brush = color;
            if (style.borderColor != null) {
                brush = this.createGdipBrush(style.borderColor, alpha);
                clipRect = null;
            } else if (fullSelection) {
                brush = selectionColor;
                clipRect = null;
            } else if (style.foreground != null) {
                brush = this.createGdipBrush(style.foreground, alpha);
            }
            boolean lineWidth = true;
            int lineStyle = 0;
            switch (style.borderStyle) {
                case 1: {
                    break;
                }
                case 2: {
                    lineStyle = 1;
                    break;
                }
                case 4: {
                    lineStyle = 2;
                }
            }
            int pen = Gdip.Pen_new(brush, (float)lineWidth);
            Gdip.Pen_SetDashStyle(pen, lineStyle);
            Gdip.Graphics_SetPixelOffsetMode(graphics, 3);
            int smoothingMode = Gdip.Graphics_GetSmoothingMode(graphics);
            Gdip.Graphics_SetSmoothingMode(graphics, 3);
            if (clipRect != null) {
                int gstate = Gdip.Graphics_Save(graphics);
                if (clipRect.left == -1) {
                    clipRect.left = 0;
                }
                if (clipRect.right == -1) {
                    clipRect.right = 524287;
                }
                Rect gdipRect = new Rect();
                gdipRect.X = clipRect.left;
                gdipRect.Y = clipRect.top;
                gdipRect.Width = clipRect.right - clipRect.left;
                gdipRect.Height = clipRect.bottom - clipRect.top;
                Gdip.Graphics_SetClip(graphics, gdipRect, 4);
                Gdip.Graphics_DrawRectangle(graphics, pen, x + left, y, run.x + run.width - left - 1, lineHeight - 1);
                Gdip.Graphics_Restore(graphics, gstate);
                gstate = Gdip.Graphics_Save(graphics);
                Gdip.Graphics_SetClip(graphics, gdipRect, 1);
                int selPen = Gdip.Pen_new(selectionColor, (float)lineWidth);
                Gdip.Pen_SetDashStyle(selPen, lineStyle);
                Gdip.Graphics_DrawRectangle(graphics, selPen, x + left, y, run.x + run.width - left - 1, lineHeight - 1);
                Gdip.Pen_delete(selPen);
                Gdip.Graphics_Restore(graphics, gstate);
            } else {
                Gdip.Graphics_DrawRectangle(graphics, pen, x + left, y, run.x + run.width - left - 1, lineHeight - 1);
            }
            Gdip.Graphics_SetPixelOffsetMode(graphics, 4);
            Gdip.Graphics_SetSmoothingMode(graphics, smoothingMode);
            Gdip.Pen_delete(pen);
            if (brush != selectionColor && brush != color) {
                Gdip.SolidBrush_delete(brush);
            }
            return null;
        }
        return clipRect;
    }

    void drawRunBackground(StyleItem run, int hdc, RECT rect, int selectionStart, int selectionEnd, int selBrush, boolean hasSelection) {
        boolean fullSelection;
        int end = run.start + run.length - 1;
        boolean bl = fullSelection = hasSelection && selectionStart <= run.start && selectionEnd >= end;
        if (fullSelection) {
            OS.SelectObject(hdc, selBrush);
            OS.PatBlt(hdc, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, 15728673);
        } else {
            boolean partialSelection;
            if (run.style != null && run.style.background != null) {
                int bg = run.style.background.handle;
                int hBrush = OS.CreateSolidBrush(bg);
                int oldBrush = OS.SelectObject(hdc, hBrush);
                OS.PatBlt(hdc, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, 15728673);
                OS.SelectObject(hdc, oldBrush);
                OS.DeleteObject(hBrush);
            }
            boolean bl2 = partialSelection = hasSelection && selectionStart <= end && run.start <= selectionEnd;
            if (partialSelection) {
                this.getPartialSelection(run, selectionStart, selectionEnd, rect);
                OS.SelectObject(hdc, selBrush);
                OS.PatBlt(hdc, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, 15728673);
            }
        }
    }

    void drawRunBackgroundGDIP(StyleItem run, int graphics, RECT rect, int selectionStart, int selectionEnd, int alpha, int selBrush, boolean hasSelection) {
        boolean fullSelection;
        int end = run.start + run.length - 1;
        boolean bl = fullSelection = hasSelection && selectionStart <= run.start && selectionEnd >= end;
        if (fullSelection) {
            Gdip.Graphics_FillRectangle(graphics, selBrush, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top);
        } else {
            boolean partialSelection;
            if (run.style != null && run.style.background != null) {
                int brush = this.createGdipBrush(run.style.background, alpha);
                Gdip.Graphics_FillRectangle(graphics, brush, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top);
                Gdip.SolidBrush_delete(brush);
            }
            boolean bl2 = partialSelection = hasSelection && selectionStart <= end && run.start <= selectionEnd;
            if (partialSelection) {
                this.getPartialSelection(run, selectionStart, selectionEnd, rect);
                if (rect.left > rect.right) {
                    int tmp = rect.left;
                    rect.left = rect.right;
                    rect.right = tmp;
                }
                Gdip.Graphics_FillRectangle(graphics, selBrush, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top);
            }
        }
    }

    RECT drawRunText(int hdc, StyleItem run, RECT rect, int baseline, int color, int selectionColor, int selectionStart, int selectionEnd) {
        int end = run.start + run.length - 1;
        boolean hasSelection = selectionStart <= selectionEnd && selectionStart != -1 && selectionEnd != -1;
        boolean fullSelection = hasSelection && selectionStart <= run.start && selectionEnd >= end;
        boolean partialSelection = hasSelection && !fullSelection && selectionStart <= end && run.start <= selectionEnd;
        int offset = (this.orientation & 0x4000000) != 0 ? -1 : 0;
        int x = rect.left + offset;
        int y = rect.top + (baseline - run.ascent);
        int hFont = this.getItemFont(run);
        OS.SelectObject(hdc, hFont);
        if (fullSelection) {
            color = selectionColor;
        } else if (run.style != null && run.style.foreground != null) {
            color = run.style.foreground.handle;
        }
        OS.SetTextColor(hdc, color);
        OS.ScriptTextOut(hdc, run.psc, x, y, 0, null, run.analysis, 0, 0, run.glyphs, run.glyphCount, run.advances, run.justify, run.goffsets);
        if (partialSelection) {
            this.getPartialSelection(run, selectionStart, selectionEnd, rect);
            OS.SetTextColor(hdc, selectionColor);
            OS.ScriptTextOut(hdc, run.psc, x, y, 4, rect, run.analysis, 0, 0, run.glyphs, run.glyphCount, run.advances, run.justify, run.goffsets);
        }
        return fullSelection || partialSelection ? rect : null;
    }

    RECT drawRunTextGDIP(int graphics, StyleItem run, RECT rect, int gdipFont, int baseline, int color, int selectionColor, int selectionStart, int selectionEnd, int alpha) {
        boolean isMirrored;
        int end = run.start + run.length - 1;
        boolean hasSelection = selectionStart <= selectionEnd && selectionStart != -1 && selectionEnd != -1;
        boolean fullSelection = hasSelection && selectionStart <= run.start && selectionEnd >= end;
        boolean partialSelection = hasSelection && !fullSelection && selectionStart <= end && run.start <= selectionEnd;
        int drawY = rect.top + baseline;
        if (run.style != null && run.style.rise != 0) {
            drawY -= run.style.rise;
        }
        int drawX = rect.left;
        int brush = color;
        if (fullSelection) {
            brush = selectionColor;
        } else if (run.style != null && run.style.foreground != null) {
            brush = this.createGdipBrush(run.style.foreground, alpha);
        }
        int gstate = 0;
        Rect gdipRect = null;
        if (partialSelection) {
            gdipRect = new Rect();
            this.getPartialSelection(run, selectionStart, selectionEnd, rect);
            gdipRect.X = rect.left;
            gdipRect.Y = rect.top;
            gdipRect.Width = rect.right - rect.left;
            gdipRect.Height = rect.bottom - rect.top;
            gstate = Gdip.Graphics_Save(graphics);
            Gdip.Graphics_SetClip(graphics, gdipRect, 4);
        }
        int gstateMirrored = 0;
        boolean bl = isMirrored = (this.orientation & 0x4000000) != 0;
        if (isMirrored) {
            switch (Gdip.Brush_GetType(brush)) {
                case 4: {
                    Gdip.LinearGradientBrush_ScaleTransform(brush, -1.0f, 1.0f, 0);
                    Gdip.LinearGradientBrush_TranslateTransform(brush, -2 * drawX - run.width, 0.0f, 0);
                    break;
                }
                case 2: {
                    Gdip.TextureBrush_ScaleTransform(brush, -1.0f, 1.0f, 0);
                    Gdip.TextureBrush_TranslateTransform(brush, -2 * drawX - run.width, 0.0f, 0);
                }
            }
            gstateMirrored = Gdip.Graphics_Save(graphics);
            Gdip.Graphics_ScaleTransform(graphics, -1.0f, 1.0f, 0);
            Gdip.Graphics_TranslateTransform(graphics, -2 * drawX - run.width, 0.0f, 0);
        }
        int[] advances = new int[run.glyphCount];
        float[] points = new float[run.glyphCount * 2];
        OS.memmove(advances, run.justify != 0 ? run.justify : run.advances, run.glyphCount * 4);
        int glyphX = drawX;
        int h = 0;
        int j = 0;
        while (h < advances.length) {
            points[j++] = glyphX;
            points[j++] = drawY;
            glyphX += advances[h];
            ++h;
        }
        Gdip.Graphics_DrawDriverString(graphics, run.glyphs, run.glyphCount, gdipFont, brush, points, 0, 0);
        if (partialSelection) {
            if (isMirrored) {
                Gdip.Graphics_Restore(graphics, gstateMirrored);
            }
            Gdip.Graphics_Restore(graphics, gstate);
            gstate = Gdip.Graphics_Save(graphics);
            Gdip.Graphics_SetClip(graphics, gdipRect, 1);
            if (isMirrored) {
                gstateMirrored = Gdip.Graphics_Save(graphics);
                Gdip.Graphics_ScaleTransform(graphics, -1.0f, 1.0f, 0);
                Gdip.Graphics_TranslateTransform(graphics, -2 * drawX - run.width, 0.0f, 0);
            }
            Gdip.Graphics_DrawDriverString(graphics, run.glyphs, run.glyphCount, gdipFont, selectionColor, points, 0, 0);
            Gdip.Graphics_Restore(graphics, gstate);
        }
        if (isMirrored) {
            switch (Gdip.Brush_GetType(brush)) {
                case 4: {
                    Gdip.LinearGradientBrush_ResetTransform(brush);
                    break;
                }
                case 2: {
                    Gdip.TextureBrush_ResetTransform(brush);
                }
            }
            Gdip.Graphics_Restore(graphics, gstateMirrored);
        }
        if (brush != selectionColor && brush != color) {
            Gdip.SolidBrush_delete(brush);
        }
        return fullSelection || partialSelection ? rect : null;
    }

    RECT drawRunTextGDIPRaster(int graphics, StyleItem run, RECT rect, int baseline, int color, int selectionColor, int selectionStart, int selectionEnd) {
        int clipRgn = 0;
        Gdip.Graphics_SetPixelOffsetMode(graphics, 3);
        int rgn = Gdip.Region_new();
        if (rgn == 0) {
            SWT.error(2);
        }
        Gdip.Graphics_GetClip(graphics, rgn);
        if (!Gdip.Region_IsInfinite(rgn, graphics)) {
            clipRgn = Gdip.Region_GetHRGN(rgn, graphics);
        }
        Gdip.Region_delete(rgn);
        Gdip.Graphics_SetPixelOffsetMode(graphics, 4);
        float[] lpXform = null;
        int matrix = Gdip.Matrix_new(1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
        if (matrix == 0) {
            SWT.error(2);
        }
        Gdip.Graphics_GetTransform(graphics, matrix);
        if (!Gdip.Matrix_IsIdentity(matrix)) {
            lpXform = new float[6];
            Gdip.Matrix_GetElements(matrix, lpXform);
        }
        Gdip.Matrix_delete(matrix);
        int hdc = Gdip.Graphics_GetHDC(graphics);
        int state = OS.SaveDC(hdc);
        if (lpXform != null) {
            OS.SetGraphicsMode(hdc, 2);
            OS.SetWorldTransform(hdc, lpXform);
        }
        if (clipRgn != 0) {
            OS.SelectClipRgn(hdc, clipRgn);
            OS.DeleteObject(clipRgn);
        }
        if ((this.orientation & 0x4000000) != 0) {
            OS.SetLayout(hdc, OS.GetLayout(hdc) | 1);
        }
        OS.SetBkMode(hdc, 1);
        RECT pRect = this.drawRunText(hdc, run, rect, baseline, color, selectionColor, selectionStart, selectionEnd);
        OS.RestoreDC(hdc, state);
        Gdip.Graphics_ReleaseHDC(graphics, hdc);
        return pRect;
    }

    RECT drawStrikeout(int hdc, int x, int baseline, StyleItem[] line, int index, int color, int selectionColor, RECT clipRect, RECT pRect, int selectionStart, int selectionEnd, Rectangle drawClip) {
        boolean lastRunVisible;
        StyleItem run = line[index];
        TextStyle style = run.style;
        if (style == null) {
            return null;
        }
        if (!style.strikeout) {
            return null;
        }
        clipRect = this.addClipRect(run, clipRect, pRect, selectionStart, selectionEnd);
        boolean bl = lastRunVisible = drawClip != null && x + run.x + run.width > drawClip.x + drawClip.width;
        if (index + 1 >= line.length || lastRunVisible || !style.isAdherentStrikeout(line[index + 1].style)) {
            boolean fullSelection;
            int left = run.x;
            int start = run.start;
            int end = run.start + run.length - 1;
            int i = index;
            while (i > 0 && style.isAdherentStrikeout(line[i - 1].style)) {
                left = line[i - 1].x;
                start = Math.min(start, line[i - 1].start);
                end = Math.max(end, line[i - 1].start + line[i - 1].length - 1);
                --i;
            }
            boolean hasSelection = selectionStart <= selectionEnd && selectionStart != -1 && selectionEnd != -1;
            boolean bl2 = fullSelection = hasSelection && selectionStart <= start && end <= selectionEnd;
            if (style.strikeoutColor != null) {
                color = style.strikeoutColor.handle;
                clipRect = null;
            } else if (fullSelection) {
                color = selectionColor;
                clipRect = null;
            } else if (style.foreground != null) {
                color = style.foreground.handle;
            }
            RECT rect = new RECT();
            OS.SetRect(rect, x + left, baseline - run.strikeoutPos, x + run.x + run.width, baseline - run.strikeoutPos + run.strikeoutThickness);
            int brush = OS.CreateSolidBrush(color);
            OS.FillRect(hdc, rect, brush);
            OS.DeleteObject(brush);
            if (clipRect != null) {
                int selBrush = OS.CreateSolidBrush(selectionColor);
                if (clipRect.left == -1) {
                    clipRect.left = 0;
                }
                if (clipRect.right == -1) {
                    clipRect.right = 524287;
                }
                OS.SetRect(clipRect, Math.max(rect.left, clipRect.left), rect.top, Math.min(rect.right, clipRect.right), rect.bottom);
                OS.FillRect(hdc, clipRect, selBrush);
                OS.DeleteObject(selBrush);
            }
            return null;
        }
        return clipRect;
    }

    RECT drawStrikeoutGDIP(int graphics, int x, int baseline, StyleItem[] line, int index, int color, int selectionColor, RECT clipRect, RECT pRect, int selectionStart, int selectionEnd, int alpha, Rectangle drawClip) {
        boolean lastRunVisible;
        StyleItem run = line[index];
        TextStyle style = run.style;
        if (style == null) {
            return null;
        }
        if (!style.strikeout) {
            return null;
        }
        clipRect = this.addClipRect(run, clipRect, pRect, selectionStart, selectionEnd);
        boolean bl = lastRunVisible = drawClip != null && x + run.x + run.width > drawClip.x + drawClip.width;
        if (index + 1 >= line.length || lastRunVisible || !style.isAdherentStrikeout(line[index + 1].style)) {
            int left = run.x;
            int start = run.start;
            int end = run.start + run.length - 1;
            int i = index;
            while (i > 0 && style.isAdherentStrikeout(line[i - 1].style)) {
                left = line[i - 1].x;
                start = Math.min(start, line[i - 1].start);
                end = Math.max(end, line[i - 1].start + line[i - 1].length - 1);
                --i;
            }
            boolean hasSelection = selectionStart <= selectionEnd && selectionStart != -1 && selectionEnd != -1;
            boolean fullSelection = hasSelection && selectionStart <= start && end <= selectionEnd;
            int brush = color;
            if (style.strikeoutColor != null) {
                brush = this.createGdipBrush(style.strikeoutColor, alpha);
                clipRect = null;
            } else if (fullSelection) {
                brush = selectionColor;
                clipRect = null;
            } else if (style.foreground != null) {
                brush = this.createGdipBrush(style.foreground, alpha);
            }
            if (clipRect != null) {
                int gstate = Gdip.Graphics_Save(graphics);
                if (clipRect.left == -1) {
                    clipRect.left = 0;
                }
                if (clipRect.right == -1) {
                    clipRect.right = 524287;
                }
                Rect gdipRect = new Rect();
                gdipRect.X = clipRect.left;
                gdipRect.Y = clipRect.top;
                gdipRect.Width = clipRect.right - clipRect.left;
                gdipRect.Height = clipRect.bottom - clipRect.top;
                Gdip.Graphics_SetClip(graphics, gdipRect, 4);
                Gdip.Graphics_FillRectangle(graphics, brush, x + left, baseline - run.strikeoutPos, run.x + run.width - left, run.strikeoutThickness);
                Gdip.Graphics_Restore(graphics, gstate);
                gstate = Gdip.Graphics_Save(graphics);
                Gdip.Graphics_SetClip(graphics, gdipRect, 1);
                Gdip.Graphics_FillRectangle(graphics, selectionColor, x + left, baseline - run.strikeoutPos, run.x + run.width - left, run.strikeoutThickness);
                Gdip.Graphics_Restore(graphics, gstate);
            } else {
                Gdip.Graphics_FillRectangle(graphics, brush, x + left, baseline - run.strikeoutPos, run.x + run.width - left, run.strikeoutThickness);
            }
            if (brush != selectionColor && brush != color) {
                Gdip.SolidBrush_delete(brush);
            }
            return null;
        }
        return clipRect;
    }

    RECT drawUnderline(int hdc, int x, int baseline, int lineUnderlinePos, int lineBottom, StyleItem[] line, int index, int color, int selectionColor, RECT clipRect, RECT pRect, int selectionStart, int selectionEnd, Rectangle drawClip) {
        boolean lastRunVisible;
        StyleItem run = line[index];
        TextStyle style = run.style;
        if (style == null) {
            return null;
        }
        if (!style.underline) {
            return null;
        }
        clipRect = this.addClipRect(run, clipRect, pRect, selectionStart, selectionEnd);
        boolean bl = lastRunVisible = drawClip != null && x + run.x + run.width > drawClip.x + drawClip.width;
        if (index + 1 >= line.length || lastRunVisible || !style.isAdherentUnderline(line[index + 1].style)) {
            boolean fullSelection;
            int left = run.x;
            int start = run.start;
            int end = run.start + run.length - 1;
            int i = index;
            while (i > 0 && style.isAdherentUnderline(line[i - 1].style)) {
                left = line[i - 1].x;
                start = Math.min(start, line[i - 1].start);
                end = Math.max(end, line[i - 1].start + line[i - 1].length - 1);
                --i;
            }
            boolean hasSelection = selectionStart <= selectionEnd && selectionStart != -1 && selectionEnd != -1;
            boolean bl2 = fullSelection = hasSelection && selectionStart <= start && end <= selectionEnd;
            if (style.underlineColor != null) {
                color = style.underlineColor.handle;
                clipRect = null;
            } else if (fullSelection) {
                color = selectionColor;
                clipRect = null;
            } else if (style.foreground != null) {
                color = style.foreground.handle;
            }
            RECT rect = new RECT();
            OS.SetRect(rect, x + left, baseline - lineUnderlinePos, x + run.x + run.width, baseline - lineUnderlinePos + run.underlineThickness);
            if (clipRect != null) {
                if (clipRect.left == -1) {
                    clipRect.left = 0;
                }
                if (clipRect.right == -1) {
                    clipRect.right = 524287;
                }
                OS.SetRect(clipRect, Math.max(rect.left, clipRect.left), rect.top, Math.min(rect.right, clipRect.right), rect.bottom);
            }
            switch (style.underlineStyle) {
                case 2: 
                case 3: {
                    int squigglyThickness = 1;
                    int squigglyHeight = 2 * squigglyThickness;
                    int squigglyY = Math.min(rect.top - squigglyHeight / 2, lineBottom - squigglyHeight - 1);
                    int[] points = this.computePolyline(rect.left, squigglyY, rect.right, squigglyY + squigglyHeight);
                    int pen = OS.CreatePen(0, squigglyThickness, color);
                    int oldPen = OS.SelectObject(hdc, pen);
                    int state = OS.SaveDC(hdc);
                    OS.IntersectClipRect(hdc, rect.left, squigglyY, rect.right + 1, squigglyY + squigglyHeight + 1);
                    OS.Polyline(hdc, points, points.length / 2);
                    int length = points.length;
                    if (length >= 2 && squigglyThickness <= 1) {
                        OS.SetPixel(hdc, points[length - 2], points[length - 1], color);
                    }
                    OS.SelectObject(hdc, oldPen);
                    OS.DeleteObject(pen);
                    OS.RestoreDC(hdc, state);
                    if (clipRect == null) break;
                    pen = OS.CreatePen(0, squigglyThickness, selectionColor);
                    oldPen = OS.SelectObject(hdc, pen);
                    state = OS.SaveDC(hdc);
                    OS.IntersectClipRect(hdc, clipRect.left, squigglyY, clipRect.right + 1, squigglyY + squigglyHeight + 1);
                    OS.Polyline(hdc, points, points.length / 2);
                    if (length >= 2 && squigglyThickness <= 1) {
                        OS.SetPixel(hdc, points[length - 2], points[length - 1], selectionColor);
                    }
                    OS.SelectObject(hdc, oldPen);
                    OS.DeleteObject(pen);
                    OS.RestoreDC(hdc, state);
                    break;
                }
                case 0: 
                case 1: 
                case 4: 
                case 196608: {
                    int bottom;
                    if (style.underlineStyle == 196608) {
                        rect.top -= run.underlineThickness;
                        if (clipRect != null) {
                            clipRect.top -= run.underlineThickness;
                        }
                    }
                    int n = bottom = style.underlineStyle == 1 ? rect.bottom + run.underlineThickness * 2 : rect.bottom;
                    if (bottom > lineBottom) {
                        OS.OffsetRect(rect, 0, lineBottom - bottom);
                        if (clipRect != null) {
                            OS.OffsetRect(clipRect, 0, lineBottom - bottom);
                        }
                    }
                    int brush = OS.CreateSolidBrush(color);
                    OS.FillRect(hdc, rect, brush);
                    if (style.underlineStyle == 1) {
                        OS.SetRect(rect, rect.left, rect.top + run.underlineThickness * 2, rect.right, rect.bottom + run.underlineThickness * 2);
                        OS.FillRect(hdc, rect, brush);
                    }
                    OS.DeleteObject(brush);
                    if (clipRect == null) break;
                    int selBrush = OS.CreateSolidBrush(selectionColor);
                    OS.FillRect(hdc, clipRect, selBrush);
                    if (style.underlineStyle == 1) {
                        OS.SetRect(clipRect, clipRect.left, rect.top, clipRect.right, rect.bottom);
                        OS.FillRect(hdc, clipRect, selBrush);
                    }
                    OS.DeleteObject(selBrush);
                    break;
                }
                case 65536: 
                case 131072: {
                    int penStyle = style.underlineStyle == 131072 ? 1 : 2;
                    int pen = OS.CreatePen(penStyle, 1, color);
                    int oldPen = OS.SelectObject(hdc, pen);
                    OS.SetRect(rect, rect.left, baseline + run.descent, rect.right, baseline + run.descent + run.underlineThickness);
                    OS.MoveToEx(hdc, rect.left, rect.top, 0);
                    OS.LineTo(hdc, rect.right, rect.top);
                    OS.SelectObject(hdc, oldPen);
                    OS.DeleteObject(pen);
                    if (clipRect == null) break;
                    pen = OS.CreatePen(penStyle, 1, selectionColor);
                    oldPen = OS.SelectObject(hdc, pen);
                    OS.SetRect(clipRect, clipRect.left, rect.top, clipRect.right, rect.bottom);
                    OS.MoveToEx(hdc, clipRect.left, clipRect.top, 0);
                    OS.LineTo(hdc, clipRect.right, clipRect.top);
                    OS.SelectObject(hdc, oldPen);
                    OS.DeleteObject(pen);
                }
            }
            return null;
        }
        return clipRect;
    }

    RECT drawUnderlineGDIP(int graphics, int x, int baseline, int lineUnderlinePos, int lineBottom, StyleItem[] line, int index, int color, int selectionColor, RECT clipRect, RECT pRect, int selectionStart, int selectionEnd, int alpha, Rectangle drawClip) {
        boolean lastRunVisible;
        StyleItem run = line[index];
        TextStyle style = run.style;
        if (style == null) {
            return null;
        }
        if (!style.underline) {
            return null;
        }
        clipRect = this.addClipRect(run, clipRect, pRect, selectionStart, selectionEnd);
        boolean bl = lastRunVisible = drawClip != null && x + run.x + run.width > drawClip.x + drawClip.width;
        if (index + 1 >= line.length || lastRunVisible || !style.isAdherentUnderline(line[index + 1].style)) {
            int left = run.x;
            int start = run.start;
            int end = run.start + run.length - 1;
            int i = index;
            while (i > 0 && style.isAdherentUnderline(line[i - 1].style)) {
                left = line[i - 1].x;
                start = Math.min(start, line[i - 1].start);
                end = Math.max(end, line[i - 1].start + line[i - 1].length - 1);
                --i;
            }
            boolean hasSelection = selectionStart <= selectionEnd && selectionStart != -1 && selectionEnd != -1;
            boolean fullSelection = hasSelection && selectionStart <= start && end <= selectionEnd;
            int brush = color;
            if (style.underlineColor != null) {
                brush = this.createGdipBrush(style.underlineColor, alpha);
                clipRect = null;
            } else if (fullSelection) {
                brush = selectionColor;
                clipRect = null;
            } else if (style.foreground != null) {
                brush = this.createGdipBrush(style.foreground, alpha);
            }
            RECT rect = new RECT();
            OS.SetRect(rect, x + left, baseline - lineUnderlinePos, x + run.x + run.width, baseline - lineUnderlinePos + run.underlineThickness);
            Rect gdipRect = null;
            if (clipRect != null) {
                if (clipRect.left == -1) {
                    clipRect.left = 0;
                }
                if (clipRect.right == -1) {
                    clipRect.right = 524287;
                }
                OS.SetRect(clipRect, Math.max(rect.left, clipRect.left), rect.top, Math.min(rect.right, clipRect.right), rect.bottom);
                gdipRect = new Rect();
                gdipRect.X = clipRect.left;
                gdipRect.Y = clipRect.top;
                gdipRect.Width = clipRect.right - clipRect.left;
                gdipRect.Height = clipRect.bottom - clipRect.top;
            }
            int gstate = 0;
            Gdip.Graphics_SetPixelOffsetMode(graphics, 3);
            int smoothingMode = Gdip.Graphics_GetSmoothingMode(graphics);
            Gdip.Graphics_SetSmoothingMode(graphics, 3);
            switch (style.underlineStyle) {
                case 2: 
                case 3: {
                    int squigglyThickness = 1;
                    int squigglyHeight = 2 * squigglyThickness;
                    int squigglyY = Math.min(rect.top - squigglyHeight / 2, lineBottom - squigglyHeight - 1);
                    int[] points = this.computePolyline(rect.left, squigglyY, rect.right, squigglyY + squigglyHeight);
                    int pen = Gdip.Pen_new(brush, squigglyThickness);
                    gstate = Gdip.Graphics_Save(graphics);
                    if (gdipRect != null) {
                        Gdip.Graphics_SetClip(graphics, gdipRect, 4);
                    } else {
                        Rect r = new Rect();
                        r.X = rect.left;
                        r.Y = squigglyY;
                        r.Width = rect.right - rect.left;
                        r.Height = squigglyHeight + 1;
                        Gdip.Graphics_SetClip(graphics, r, 1);
                    }
                    Gdip.Graphics_DrawLines(graphics, pen, points, points.length / 2);
                    if (gdipRect != null) {
                        int selPen = Gdip.Pen_new(selectionColor, squigglyThickness);
                        Gdip.Graphics_Restore(graphics, gstate);
                        gstate = Gdip.Graphics_Save(graphics);
                        Gdip.Graphics_SetClip(graphics, gdipRect, 1);
                        Gdip.Graphics_DrawLines(graphics, selPen, points, points.length / 2);
                        Gdip.Pen_delete(selPen);
                    }
                    Gdip.Graphics_Restore(graphics, gstate);
                    Gdip.Pen_delete(pen);
                    if (gstate == 0) break;
                    Gdip.Graphics_Restore(graphics, gstate);
                    break;
                }
                case 0: 
                case 1: 
                case 4: 
                case 196608: {
                    int bottom;
                    if (style.underlineStyle == 196608) {
                        rect.top -= run.underlineThickness;
                    }
                    int n = bottom = style.underlineStyle == 1 ? rect.bottom + run.underlineThickness * 2 : rect.bottom;
                    if (bottom > lineBottom) {
                        OS.OffsetRect(rect, 0, lineBottom - bottom);
                    }
                    if (gdipRect != null) {
                        gdipRect.Y = rect.top;
                        if (style.underlineStyle == 196608) {
                            gdipRect.Height = run.underlineThickness * 2;
                        }
                        if (style.underlineStyle == 1) {
                            gdipRect.Height = run.underlineThickness * 3;
                        }
                        gstate = Gdip.Graphics_Save(graphics);
                        Gdip.Graphics_SetClip(graphics, gdipRect, 4);
                    }
                    Gdip.Graphics_FillRectangle(graphics, brush, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top);
                    if (style.underlineStyle == 1) {
                        Gdip.Graphics_FillRectangle(graphics, brush, rect.left, rect.top + run.underlineThickness * 2, rect.right - rect.left, rect.bottom - rect.top);
                    }
                    if (gdipRect == null) break;
                    Gdip.Graphics_Restore(graphics, gstate);
                    gstate = Gdip.Graphics_Save(graphics);
                    Gdip.Graphics_SetClip(graphics, gdipRect, 1);
                    Gdip.Graphics_FillRectangle(graphics, selectionColor, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top);
                    if (style.underlineStyle == 1) {
                        Gdip.Graphics_FillRectangle(graphics, selectionColor, rect.left, rect.top + run.underlineThickness * 2, rect.right - rect.left, rect.bottom - rect.top);
                    }
                    Gdip.Graphics_Restore(graphics, gstate);
                    break;
                }
                case 65536: 
                case 131072: {
                    int pen = Gdip.Pen_new(brush, 1.0f);
                    int dashStyle = style.underlineStyle == 65536 ? 2 : 1;
                    Gdip.Pen_SetDashStyle(pen, dashStyle);
                    if (gdipRect != null) {
                        gstate = Gdip.Graphics_Save(graphics);
                        Gdip.Graphics_SetClip(graphics, gdipRect, 4);
                    }
                    Gdip.Graphics_DrawLine(graphics, pen, rect.left, baseline + run.descent, run.width - run.length, baseline + run.descent);
                    if (gdipRect != null) {
                        Gdip.Graphics_Restore(graphics, gstate);
                        gstate = Gdip.Graphics_Save(graphics);
                        Gdip.Graphics_SetClip(graphics, gdipRect, 1);
                        int selPen = Gdip.Pen_new(brush, 1.0f);
                        Gdip.Pen_SetDashStyle(selPen, dashStyle);
                        Gdip.Graphics_DrawLine(graphics, selPen, rect.left, baseline + run.descent, run.width - run.length, baseline + run.descent);
                        Gdip.Graphics_Restore(graphics, gstate);
                        Gdip.Pen_delete(selPen);
                    }
                    Gdip.Pen_delete(pen);
                }
            }
            if (brush != selectionColor && brush != color) {
                Gdip.SolidBrush_delete(brush);
            }
            Gdip.Graphics_SetPixelOffsetMode(graphics, 4);
            Gdip.Graphics_SetSmoothingMode(graphics, smoothingMode);
            return null;
        }
        return clipRect;
    }

    void freeRuns() {
        if (this.allRuns == null) {
            return;
        }
        int i = 0;
        while (i < this.allRuns.length) {
            StyleItem run = this.allRuns[i];
            run.free();
            ++i;
        }
        this.allRuns = null;
        this.runs = null;
        this.segmentsText = null;
    }

    public int getAlignment() {
        this.checkLayout();
        return this.alignment;
    }

    public int getAscent() {
        this.checkLayout();
        return this.ascent;
    }

    public Rectangle getBounds() {
        this.checkLayout();
        this.computeRuns(null);
        int width = 0;
        if (this.wrapWidth != -1) {
            width = this.wrapWidth;
        } else {
            int line = 0;
            while (line < this.runs.length) {
                width = Math.max(width, this.lineWidth[line] + this.getLineIndent(line));
                ++line;
            }
        }
        return new Rectangle(0, 0, width, this.lineY[this.lineY.length - 1]);
    }

    public Rectangle getBounds(int start, int end) {
        this.checkLayout();
        this.computeRuns(null);
        int length = this.text.length();
        if (length == 0) {
            return new Rectangle(0, 0, 0, 0);
        }
        if (start > end) {
            return new Rectangle(0, 0, 0, 0);
        }
        start = Math.min(Math.max(0, start), length - 1);
        end = Math.min(Math.max(0, end), length - 1);
        start = this.translateOffset(start);
        end = this.translateOffset(end);
        length = this.segmentsText.length();
        char ch = this.segmentsText.charAt(start);
        if ('\udc00' <= ch && ch <= '\udfff' && start - 1 >= 0 && '\ud800' <= (ch = this.segmentsText.charAt(start - 1)) && ch <= '\udbff') {
            --start;
        }
        if ('\ud800' <= (ch = this.segmentsText.charAt(end)) && ch <= '\udbff' && end + 1 < length && '\udc00' <= (ch = this.segmentsText.charAt(end + 1)) && ch <= '\udfff') {
            ++end;
        }
        int left = Integer.MAX_VALUE;
        int right = 0;
        int top = Integer.MAX_VALUE;
        int bottom = 0;
        boolean isRTL = (this.orientation & 0x4000000) != 0;
        int i = 0;
        while (i < this.allRuns.length - 1) {
            StyleItem run = this.allRuns[i];
            int runEnd = run.start + run.length;
            if (runEnd > start) {
                int advances;
                int[] piX;
                GlyphMetrics metrics;
                int cx;
                if (run.start > end) break;
                int runLead = run.x;
                int runTrail = run.x + run.width;
                if (run.start <= start && start < runEnd) {
                    cx = 0;
                    if (run.style != null && run.style.metrics != null) {
                        metrics = run.style.metrics;
                        cx = metrics.width * (start - run.start);
                    } else if (!run.tab) {
                        piX = new int[1];
                        advances = run.justify != 0 ? run.justify : run.advances;
                        OS.ScriptCPtoX(start - run.start, false, run.length, run.glyphCount, run.clusters, run.visAttrs, advances, run.analysis, piX);
                        int n = cx = isRTL ? run.width - piX[0] : piX[0];
                    }
                    if (run.analysis.fRTL ^ isRTL) {
                        runTrail = run.x + cx;
                    } else {
                        runLead = run.x + cx;
                    }
                }
                if (run.start <= end && end < runEnd) {
                    cx = run.width;
                    if (run.style != null && run.style.metrics != null) {
                        metrics = run.style.metrics;
                        cx = metrics.width * (end - run.start + 1);
                    } else if (!run.tab) {
                        piX = new int[1];
                        advances = run.justify != 0 ? run.justify : run.advances;
                        OS.ScriptCPtoX(end - run.start, true, run.length, run.glyphCount, run.clusters, run.visAttrs, advances, run.analysis, piX);
                        int n = cx = isRTL ? run.width - piX[0] : piX[0];
                    }
                    if (run.analysis.fRTL ^ isRTL) {
                        runLead = run.x + cx;
                    } else {
                        runTrail = run.x + cx;
                    }
                }
                int lineIndex = 0;
                while (lineIndex < this.runs.length && this.lineOffset[lineIndex + 1] <= run.start) {
                    ++lineIndex;
                }
                left = Math.min(left, runLead);
                right = Math.max(right, runTrail);
                top = Math.min(top, this.lineY[lineIndex]);
                bottom = Math.max(bottom, this.lineY[lineIndex + 1] - this.lineSpacing);
            }
            ++i;
        }
        return new Rectangle(left, top, right - left, bottom - top);
    }

    public int getDescent() {
        this.checkLayout();
        return this.descent;
    }

    public Font getFont() {
        this.checkLayout();
        return this.font;
    }

    public int getIndent() {
        this.checkLayout();
        return this.indent;
    }

    public boolean getJustify() {
        this.checkLayout();
        return this.justify;
    }

    int getItemFont(StyleItem item) {
        if (item.fallbackFont != 0) {
            return item.fallbackFont;
        }
        if (item.style != null && item.style.font != null) {
            return item.style.font.handle;
        }
        if (this.font != null) {
            return this.font.handle;
        }
        return this.device.systemFont.handle;
    }

    public int getLevel(int offset) {
        this.checkLayout();
        this.computeRuns(null);
        int length = this.text.length();
        if (offset < 0 || offset > length) {
            SWT.error(6);
        }
        offset = this.translateOffset(offset);
        int i = 1;
        while (i < this.allRuns.length) {
            if (this.allRuns[i].start > offset) {
                return this.allRuns[i - 1].analysis.s.uBidiLevel;
            }
            ++i;
        }
        return (this.orientation & 0x4000000) != 0 ? 1 : 0;
    }

    public Rectangle getLineBounds(int lineIndex) {
        this.checkLayout();
        this.computeRuns(null);
        if (lineIndex < 0 || lineIndex >= this.runs.length) {
            SWT.error(6);
        }
        int x = this.getLineIndent(lineIndex);
        int y = this.lineY[lineIndex];
        int width = this.lineWidth[lineIndex];
        int height = this.lineY[lineIndex + 1] - y - this.lineSpacing;
        return new Rectangle(x, y, width, height);
    }

    public int getLineCount() {
        this.checkLayout();
        this.computeRuns(null);
        return this.runs.length;
    }

    int getLineIndent(int lineIndex) {
        int lineIndent = this.wrapIndent;
        if (lineIndex == 0) {
            lineIndent = this.indent;
        } else {
            StyleItem[] previousLine = this.runs[lineIndex - 1];
            StyleItem previousRun = previousLine[previousLine.length - 1];
            if (previousRun.lineBreak && !previousRun.softBreak) {
                lineIndent = this.indent;
            }
        }
        if (this.wrapWidth != -1) {
            boolean partialLine = true;
            if (this.justify) {
                StyleItem[] lineRun = this.runs[lineIndex];
                if (lineRun[lineRun.length - 1].softBreak) {
                    partialLine = false;
                }
            }
            if (partialLine) {
                int lineWidth = this.lineWidth[lineIndex] + lineIndent;
                switch (this.alignment) {
                    case 0x1000000: {
                        lineIndent += (this.wrapWidth - lineWidth) / 2;
                        break;
                    }
                    case 131072: {
                        lineIndent += this.wrapWidth - lineWidth;
                    }
                }
            }
        }
        return lineIndent;
    }

    public int getLineIndex(int offset) {
        this.checkLayout();
        this.computeRuns(null);
        int length = this.text.length();
        if (offset < 0 || offset > length) {
            SWT.error(6);
        }
        offset = this.translateOffset(offset);
        int line = 0;
        while (line < this.runs.length) {
            if (this.lineOffset[line + 1] > offset) {
                return line;
            }
            ++line;
        }
        return this.runs.length - 1;
    }

    public FontMetrics getLineMetrics(int lineIndex) {
        this.checkLayout();
        this.computeRuns(null);
        if (lineIndex < 0 || lineIndex >= this.runs.length) {
            SWT.error(6);
        }
        int hDC = this.device.internal_new_GC(null);
        int srcHdc = OS.CreateCompatibleDC(hDC);
        TEXTMETRIC lptm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
        OS.SelectObject(srcHdc, this.font != null ? this.font.handle : this.device.systemFont.handle);
        OS.GetTextMetrics(srcHdc, lptm);
        OS.DeleteDC(srcHdc);
        this.device.internal_dispose_GC(hDC, null);
        int ascent = Math.max(lptm.tmAscent, this.ascent);
        int descent = Math.max(lptm.tmDescent, this.descent);
        int leading = lptm.tmInternalLeading;
        if (this.text.length() != 0) {
            StyleItem[] lineRuns = this.runs[lineIndex];
            int i = 0;
            while (i < lineRuns.length) {
                StyleItem run = lineRuns[i];
                if (run.ascent > ascent) {
                    ascent = run.ascent;
                    leading = run.leading;
                }
                descent = Math.max(descent, run.descent);
                ++i;
            }
        }
        lptm.tmAscent = ascent;
        lptm.tmDescent = descent;
        lptm.tmHeight = ascent + descent;
        lptm.tmInternalLeading = leading;
        lptm.tmAveCharWidth = 0;
        return FontMetrics.win32_new(lptm);
    }

    public int[] getLineOffsets() {
        this.checkLayout();
        this.computeRuns(null);
        int[] offsets = new int[this.lineOffset.length];
        int i = 0;
        while (i < offsets.length) {
            offsets[i] = this.untranslateOffset(this.lineOffset[i]);
            ++i;
        }
        return offsets;
    }

    public Point getLocation(int offset, boolean trailing) {
        this.checkLayout();
        this.computeRuns(null);
        int length = this.text.length();
        if (offset < 0 || offset > length) {
            SWT.error(6);
        }
        length = this.segmentsText.length();
        offset = this.translateOffset(offset);
        int line = 0;
        while (line < this.runs.length) {
            if (this.lineOffset[line + 1] > offset) break;
            ++line;
        }
        line = Math.min(line, this.runs.length - 1);
        if (offset == length) {
            return new Point(this.getLineIndent(line) + this.lineWidth[line], this.lineY[line]);
        }
        char ch = this.segmentsText.charAt(offset);
        if (trailing) {
            if ('\ud800' <= ch && ch <= '\udbff' && offset + 1 < length && '\udc00' <= (ch = this.segmentsText.charAt(offset + 1)) && ch <= '\udfff') {
                ++offset;
            }
        } else if ('\udc00' <= ch && ch <= '\udfff' && offset - 1 >= 0 && '\ud800' <= (ch = this.segmentsText.charAt(offset - 1)) && ch <= '\udbff') {
            --offset;
        }
        int low = -1;
        int high = this.allRuns.length;
        while (high - low > 1) {
            int width;
            int index = (high + low) / 2;
            StyleItem run = this.allRuns[index];
            if (run.start > offset) {
                high = index;
                continue;
            }
            if (run.start + run.length <= offset) {
                low = index;
                continue;
            }
            if (run.style != null && run.style.metrics != null) {
                GlyphMetrics metrics = run.style.metrics;
                width = metrics.width * (offset - run.start + (trailing ? 1 : 0));
            } else if (run.tab) {
                width = trailing || offset == length ? run.width : 0;
            } else {
                int runOffset = offset - run.start;
                int cChars = run.length;
                int gGlyphs = run.glyphCount;
                int[] piX = new int[1];
                int advances = run.justify != 0 ? run.justify : run.advances;
                OS.ScriptCPtoX(runOffset, trailing, cChars, gGlyphs, run.clusters, run.visAttrs, advances, run.analysis, piX);
                width = (this.orientation & 0x4000000) != 0 ? run.width - piX[0] : piX[0];
            }
            return new Point(run.x + width, this.lineY[line]);
        }
        return new Point(0, 0);
    }

    public int getNextOffset(int offset, int movement) {
        this.checkLayout();
        return this._getOffset(offset, movement, true);
    }

    int _getOffset(int offset, int movement, boolean forward) {
        int step;
        this.computeRuns(null);
        int length = this.text.length();
        if (offset < 0 || offset > length) {
            SWT.error(6);
        }
        if (forward && offset == length) {
            return length;
        }
        if (!forward && offset == 0) {
            return 0;
        }
        int n = step = forward ? 1 : -1;
        if ((movement & 1) != 0) {
            return offset + step;
        }
        length = this.segmentsText.length();
        offset = this.translateOffset(offset);
        SCRIPT_LOGATTR logAttr = new SCRIPT_LOGATTR();
        SCRIPT_PROPERTIES properties = new SCRIPT_PROPERTIES();
        int i = forward ? 0 : this.allRuns.length - 1;
        offset = this.validadeOffset(offset, step);
        do {
            boolean isComplex;
            StyleItem run = this.allRuns[i];
            if (run.start > offset || offset >= run.start + run.length) continue;
            if (run.lineBreak && !run.softBreak) {
                return this.untranslateOffset(run.start);
            }
            if (run.tab) {
                return this.untranslateOffset(run.start);
            }
            OS.MoveMemory(properties, this.device.scripts[run.analysis.eScript], SCRIPT_PROPERTIES.sizeof);
            boolean bl = isComplex = properties.fNeedsCaretInfo || properties.fNeedsWordBreaking;
            if (isComplex) {
                this.breakRun(run);
            }
            while (run.start <= offset && offset < run.start + run.length) {
                if (isComplex) {
                    OS.MoveMemory(logAttr, run.psla + (offset - run.start) * SCRIPT_LOGATTR.sizeof, SCRIPT_LOGATTR.sizeof);
                }
                switch (movement) {
                    case 2: {
                        if (properties.fNeedsCaretInfo && (logAttr.fInvalid || !logAttr.fCharStop)) break;
                        char ch = this.segmentsText.charAt(offset);
                        if ('\udc00' <= ch && ch <= '\udfff' && offset > 0 && '\ud800' <= (ch = this.segmentsText.charAt(offset - 1)) && ch <= '\udbff') {
                            offset += step;
                        }
                        return this.untranslateOffset(offset);
                    }
                    case 4: 
                    case 16: {
                        boolean previousLetterOrDigit;
                        boolean letterOrDigit;
                        if (!(properties.fNeedsWordBreaking ? !logAttr.fInvalid && logAttr.fWordStop : offset > 0 && ((letterOrDigit = Compatibility.isLetterOrDigit(this.segmentsText.charAt(offset))) != (previousLetterOrDigit = Compatibility.isLetterOrDigit(this.segmentsText.charAt(offset - 1))) || !letterOrDigit) && !Compatibility.isWhitespace(this.segmentsText.charAt(offset)))) break;
                        return this.untranslateOffset(offset);
                    }
                    case 8: {
                        if (offset <= 0) break;
                        boolean isLetterOrDigit = Compatibility.isLetterOrDigit(this.segmentsText.charAt(offset));
                        boolean previousLetterOrDigit = Compatibility.isLetterOrDigit(this.segmentsText.charAt(offset - 1));
                        if (isLetterOrDigit || !previousLetterOrDigit) break;
                        return this.untranslateOffset(offset);
                    }
                }
                offset = this.validadeOffset(offset, step);
            }
        } while ((i += step) >= 0 && i < this.allRuns.length - 1 && offset >= 0 && offset < length);
        return forward ? this.text.length() : 0;
    }

    public int getOffset(Point point, int[] trailing) {
        this.checkLayout();
        if (point == null) {
            SWT.error(4);
        }
        return this.getOffset(point.x, point.y, trailing);
    }

    public int getOffset(int x, int y, int[] trailing) {
        this.checkLayout();
        this.computeRuns(null);
        if (trailing != null && trailing.length < 1) {
            SWT.error(5);
        }
        int lineCount = this.runs.length;
        int line = 0;
        while (line < lineCount) {
            if (this.lineY[line + 1] > y) break;
            ++line;
        }
        line = Math.min(line, this.runs.length - 1);
        StyleItem[] lineRuns = this.runs[line];
        int lineIndent = this.getLineIndent(line);
        if (x >= lineIndent + this.lineWidth[line]) {
            x = lineIndent + this.lineWidth[line] - 1;
        }
        if (x < lineIndent) {
            x = lineIndent;
        }
        int low = -1;
        int high = lineRuns.length;
        while (high - low > 1) {
            int index = (high + low) / 2;
            StyleItem run = lineRuns[index];
            if (run.x > x) {
                high = index;
                continue;
            }
            if (run.x + run.width <= x) {
                low = index;
                continue;
            }
            if (run.lineBreak && !run.softBreak) {
                return this.untranslateOffset(run.start);
            }
            int xRun = x - run.x;
            if (run.style != null && run.style.metrics != null) {
                GlyphMetrics metrics = run.style.metrics;
                if (metrics.width > 0) {
                    if (trailing != null) {
                        trailing[0] = xRun % metrics.width < metrics.width / 2 ? 0 : 1;
                    }
                    return this.untranslateOffset(run.start + xRun / metrics.width);
                }
            }
            if (run.tab) {
                if (trailing != null) {
                    trailing[0] = x < run.x + run.width / 2 ? 0 : 1;
                }
                return this.untranslateOffset(run.start);
            }
            int cChars = run.length;
            int cGlyphs = run.glyphCount;
            int[] piCP = new int[1];
            int[] piTrailing = new int[1];
            if ((this.orientation & 0x4000000) != 0) {
                xRun = run.width - xRun;
            }
            int advances = run.justify != 0 ? run.justify : run.advances;
            OS.ScriptXtoCP(xRun, cChars, cGlyphs, run.clusters, run.visAttrs, advances, run.analysis, piCP, piTrailing);
            int offset = run.start + piCP[0];
            char ch = this.segmentsText.charAt(offset);
            int length = this.segmentsText.length();
            if ('\ud800' <= ch && ch <= '\udbff') {
                if (offset + 1 < length && '\udc00' <= (ch = this.segmentsText.charAt(offset + 1)) && ch <= '\udfff' && trailing != null) {
                    trailing[0] = 0;
                }
            } else if ('\udc00' <= ch && ch <= '\udfff') {
                if (offset - 1 >= 0 && '\ud800' <= (ch = this.segmentsText.charAt(offset - 1)) && ch <= '\udbff') {
                    --offset;
                    if (trailing != null) {
                        trailing[0] = 2;
                    }
                }
            } else if (trailing != null) {
                trailing[0] = piTrailing[0];
            }
            return this.untranslateOffset(offset);
        }
        if (trailing != null) {
            trailing[0] = 0;
        }
        if (lineRuns.length == 1) {
            StyleItem run = lineRuns[0];
            if (run.lineBreak && !run.softBreak) {
                return this.untranslateOffset(run.start);
            }
        }
        return this.untranslateOffset(this.lineOffset[line + 1]);
    }

    public int getOrientation() {
        this.checkLayout();
        return this.orientation;
    }

    void getPartialSelection(StyleItem run, int selectionStart, int selectionEnd, RECT rect) {
        int end = run.start + run.length - 1;
        int selStart = Math.max(selectionStart, run.start) - run.start;
        int selEnd = Math.min(selectionEnd, end) - run.start;
        int cChars = run.length;
        int gGlyphs = run.glyphCount;
        int[] piX = new int[1];
        int x = rect.left;
        int advances = run.justify != 0 ? run.justify : run.advances;
        OS.ScriptCPtoX(selStart, false, cChars, gGlyphs, run.clusters, run.visAttrs, advances, run.analysis, piX);
        int runX = (this.orientation & 0x4000000) != 0 ? run.width - piX[0] : piX[0];
        rect.left = x + runX;
        OS.ScriptCPtoX(selEnd, true, cChars, gGlyphs, run.clusters, run.visAttrs, advances, run.analysis, piX);
        runX = (this.orientation & 0x4000000) != 0 ? run.width - piX[0] : piX[0];
        rect.right = x + runX;
    }

    public int getPreviousOffset(int offset, int movement) {
        this.checkLayout();
        return this._getOffset(offset, movement, false);
    }

    public int[] getRanges() {
        this.checkLayout();
        int[] result = new int[this.stylesCount * 2];
        int count = 0;
        int i = 0;
        while (i < this.stylesCount - 1) {
            if (this.styles[i].style != null) {
                result[count++] = this.styles[i].start;
                result[count++] = this.styles[i + 1].start - 1;
            }
            ++i;
        }
        if (count != result.length) {
            int[] newResult = new int[count];
            System.arraycopy(result, 0, newResult, 0, count);
            result = newResult;
        }
        return result;
    }

    public int[] getSegments() {
        this.checkLayout();
        return this.segments;
    }

    public char[] getSegmentsChars() {
        this.checkLayout();
        return this.segmentsChars;
    }

    String getSegmentsText() {
        int separator;
        int length = this.text.length();
        if (length == 0) {
            return this.text;
        }
        if (this.segments == null) {
            return this.text;
        }
        int nSegments = this.segments.length;
        if (nSegments == 0) {
            return this.text;
        }
        if (this.segmentsChars == null) {
            if (nSegments == 1) {
                return this.text;
            }
            if (nSegments == 2 && this.segments[0] == 0 && this.segments[1] == length) {
                return this.text;
            }
        }
        char[] oldChars = new char[length];
        this.text.getChars(0, length, oldChars, 0);
        char[] newChars = new char[length + nSegments];
        int charCount = 0;
        int segmentCount = 0;
        int defaultSeparator = this.orientation == 0x4000000 ? 8207 : 8206;
        while (charCount < length) {
            if (segmentCount < nSegments && charCount == this.segments[segmentCount]) {
                separator = this.segmentsChars != null && this.segmentsChars.length > segmentCount ? this.segmentsChars[segmentCount] : defaultSeparator;
                newChars[charCount + segmentCount++] = separator;
                continue;
            }
            newChars[charCount + segmentCount] = oldChars[charCount++];
        }
        while (segmentCount < nSegments) {
            this.segments[segmentCount] = charCount;
            separator = this.segmentsChars != null && this.segmentsChars.length > segmentCount ? this.segmentsChars[segmentCount] : defaultSeparator;
            newChars[charCount + segmentCount++] = separator;
        }
        return new String(newChars, 0, newChars.length);
    }

    public int getSpacing() {
        this.checkLayout();
        return this.lineSpacing;
    }

    public TextStyle getStyle(int offset) {
        this.checkLayout();
        int length = this.text.length();
        if (offset < 0 || offset >= length) {
            SWT.error(6);
        }
        int i = 1;
        while (i < this.stylesCount) {
            if (this.styles[i].start > offset) {
                return this.styles[i - 1].style;
            }
            ++i;
        }
        return null;
    }

    public TextStyle[] getStyles() {
        this.checkLayout();
        TextStyle[] result = new TextStyle[this.stylesCount];
        int count = 0;
        int i = 0;
        while (i < this.stylesCount) {
            if (this.styles[i].style != null) {
                result[count++] = this.styles[i].style;
            }
            ++i;
        }
        if (count != result.length) {
            TextStyle[] newResult = new TextStyle[count];
            System.arraycopy(result, 0, newResult, 0, count);
            result = newResult;
        }
        return result;
    }

    public int[] getTabs() {
        this.checkLayout();
        return this.tabs;
    }

    public String getText() {
        this.checkLayout();
        return this.text;
    }

    public int getWidth() {
        this.checkLayout();
        return this.wrapWidth;
    }

    public int getWrapIndent() {
        this.checkLayout();
        return this.wrapIndent;
    }

    public boolean isDisposed() {
        return this.device == null;
    }

    StyleItem[] itemize() {
        this.segmentsText = this.getSegmentsText();
        int length = this.segmentsText.length();
        SCRIPT_CONTROL scriptControl = new SCRIPT_CONTROL();
        SCRIPT_STATE scriptState = new SCRIPT_STATE();
        int MAX_ITEM = length + 1;
        if ((this.orientation & 0x4000000) != 0) {
            scriptState.uBidiLevel = 1;
            scriptState.fArabicNumContext = true;
        }
        OS.ScriptApplyDigitSubstitution(null, scriptControl, scriptState);
        int hHeap = OS.GetProcessHeap();
        int pItems = OS.HeapAlloc(hHeap, 8, MAX_ITEM * SCRIPT_ITEM.sizeof);
        if (pItems == 0) {
            SWT.error(2);
        }
        int[] pcItems = new int[1];
        char[] chars = new char[length];
        this.segmentsText.getChars(0, length, chars, 0);
        OS.ScriptItemize(chars, length, MAX_ITEM, scriptControl, scriptState, pItems, pcItems);
        StyleItem[] runs = this.merge(pItems, pcItems[0]);
        OS.HeapFree(hHeap, 0, pItems);
        return runs;
    }

    StyleItem[] merge(int items, int itemCount) {
        StyleItem item;
        if (this.styles.length > this.stylesCount) {
            StyleItem[] newStyles = new StyleItem[this.stylesCount];
            System.arraycopy(this.styles, 0, newStyles, 0, this.stylesCount);
            this.styles = newStyles;
        }
        int count = 0;
        int start = 0;
        int end = this.segmentsText.length();
        int itemIndex = 0;
        int styleIndex = 0;
        StyleItem[] runs = new StyleItem[itemCount + this.stylesCount];
        SCRIPT_ITEM scriptItem = new SCRIPT_ITEM();
        int itemLimit = -1;
        int nextItemIndex = 0;
        boolean linkBefore = false;
        boolean merge = itemCount > 1024;
        SCRIPT_PROPERTIES sp = new SCRIPT_PROPERTIES();
        while (start < end) {
            int styleLimit;
            item = new StyleItem();
            item.start = start;
            item.style = this.styles[styleIndex].style;
            runs[count++] = item;
            OS.MoveMemory(scriptItem, items + itemIndex * SCRIPT_ITEM.sizeof, SCRIPT_ITEM.sizeof);
            item.analysis = scriptItem.a;
            scriptItem.a = new SCRIPT_ANALYSIS();
            if (linkBefore) {
                item.analysis.fLinkBefore = true;
                linkBefore = false;
            }
            char ch = this.segmentsText.charAt(start);
            switch (ch) {
                case '\n': 
                case '\r': {
                    item.lineBreak = true;
                    break;
                }
                case '\t': {
                    item.tab = true;
                }
            }
            if (itemLimit == -1) {
                nextItemIndex = itemIndex + 1;
                OS.MoveMemory(scriptItem, items + nextItemIndex * SCRIPT_ITEM.sizeof, SCRIPT_ITEM.sizeof);
                itemLimit = scriptItem.iCharPos;
                if (nextItemIndex < itemCount && ch == '\r' && this.segmentsText.charAt(itemLimit) == '\n') {
                    nextItemIndex = itemIndex + 2;
                    OS.MoveMemory(scriptItem, items + nextItemIndex * SCRIPT_ITEM.sizeof, SCRIPT_ITEM.sizeof);
                    itemLimit = scriptItem.iCharPos;
                }
                if (nextItemIndex < itemCount && merge && !item.lineBreak) {
                    OS.MoveMemory(sp, this.device.scripts[item.analysis.eScript], SCRIPT_PROPERTIES.sizeof);
                    if (!sp.fComplex || item.tab) {
                        int i = 0;
                        while (i < 512) {
                            char c;
                            if (nextItemIndex == itemCount || (c = this.segmentsText.charAt(itemLimit)) == '\n' || c == '\r' || c == '\t' != item.tab) break;
                            OS.MoveMemory(sp, this.device.scripts[scriptItem.a.eScript], SCRIPT_PROPERTIES.sizeof);
                            if (!item.tab && sp.fComplex) break;
                            OS.MoveMemory(scriptItem, items + ++nextItemIndex * SCRIPT_ITEM.sizeof, SCRIPT_ITEM.sizeof);
                            itemLimit = scriptItem.iCharPos;
                            ++i;
                        }
                    }
                }
            }
            if ((styleLimit = this.translateOffset(this.styles[styleIndex + 1].start)) <= itemLimit) {
                ++styleIndex;
                start = styleLimit;
                if (start < itemLimit && start > 0 && start < end) {
                    char pChar = this.segmentsText.charAt(start - 1);
                    char tChar = this.segmentsText.charAt(start);
                    if (Compatibility.isLetter(pChar) && Compatibility.isLetter(tChar)) {
                        item.analysis.fLinkAfter = true;
                        linkBefore = true;
                    }
                }
            }
            if (itemLimit <= styleLimit) {
                itemIndex = nextItemIndex;
                start = itemLimit;
                itemLimit = -1;
            }
            item.length = start - item.start;
        }
        item = new StyleItem();
        item.start = end;
        OS.MoveMemory(scriptItem, items + itemCount * SCRIPT_ITEM.sizeof, SCRIPT_ITEM.sizeof);
        item.analysis = scriptItem.a;
        runs[count++] = item;
        if (runs.length != count) {
            StyleItem[] result = new StyleItem[count];
            System.arraycopy(runs, 0, result, 0, count);
            return result;
        }
        return runs;
    }

    StyleItem[] reorder(StyleItem[] runs, boolean terminate) {
        int length = runs.length;
        if (length <= 1) {
            return runs;
        }
        byte[] bidiLevels = new byte[length];
        int i = 0;
        while (i < length) {
            bidiLevels[i] = (byte)(runs[i].analysis.s.uBidiLevel & 0x1F);
            ++i;
        }
        StyleItem lastRun = runs[length - 1];
        if (lastRun.lineBreak && !lastRun.softBreak) {
            bidiLevels[length - 1] = 0;
        }
        int[] log2vis = new int[length];
        OS.ScriptLayout(length, bidiLevels, null, log2vis);
        StyleItem[] result = new StyleItem[length];
        int i2 = 0;
        while (i2 < length) {
            result[log2vis[i2]] = runs[i2];
            ++i2;
        }
        if ((this.orientation & 0x4000000) != 0) {
            if (terminate) {
                --length;
            }
            i2 = 0;
            while (i2 < length / 2) {
                StyleItem tmp = result[i2];
                result[i2] = result[length - i2 - 1];
                result[length - i2 - 1] = tmp;
                ++i2;
            }
        }
        return result;
    }

    public void setAlignment(int alignment) {
        this.checkLayout();
        int mask = 16924672;
        if ((alignment &= mask) == 0) {
            return;
        }
        if ((alignment & 0x4000) != 0) {
            alignment = 16384;
        }
        if ((alignment & 0x20000) != 0) {
            alignment = 131072;
        }
        if (this.alignment == alignment) {
            return;
        }
        this.freeRuns();
        this.alignment = alignment;
    }

    public void setAscent(int ascent) {
        this.checkLayout();
        if (ascent < -1) {
            SWT.error(5);
        }
        if (this.ascent == ascent) {
            return;
        }
        this.freeRuns();
        this.ascent = ascent;
    }

    public void setDescent(int descent) {
        this.checkLayout();
        if (descent < -1) {
            SWT.error(5);
        }
        if (this.descent == descent) {
            return;
        }
        this.freeRuns();
        this.descent = descent;
    }

    public void setFont(Font font) {
        Font oldFont;
        this.checkLayout();
        if (font != null && font.isDisposed()) {
            SWT.error(5);
        }
        if ((oldFont = this.font) == font) {
            return;
        }
        this.font = font;
        if (oldFont != null && oldFont.equals(font)) {
            return;
        }
        this.freeRuns();
    }

    public void setIndent(int indent) {
        this.checkLayout();
        if (indent < 0) {
            return;
        }
        if (this.indent == indent) {
            return;
        }
        this.freeRuns();
        this.indent = indent;
    }

    public void setJustify(boolean justify) {
        this.checkLayout();
        if (this.justify == justify) {
            return;
        }
        this.freeRuns();
        this.justify = justify;
    }

    public void setOrientation(int orientation) {
        this.checkLayout();
        int mask = 0x6000000;
        if ((orientation &= mask) == 0) {
            return;
        }
        if ((orientation & 0x2000000) != 0) {
            orientation = 0x2000000;
        }
        if (this.orientation == orientation) {
            return;
        }
        this.orientation = orientation;
        this.freeRuns();
    }

    public void setSegments(int[] segments) {
        this.checkLayout();
        if (this.segments == null && segments == null) {
            return;
        }
        if (this.segments != null && segments != null && this.segments.length == segments.length) {
            int i = 0;
            while (i < segments.length) {
                if (this.segments[i] != segments[i]) break;
                ++i;
            }
            if (i == segments.length) {
                return;
            }
        }
        this.freeRuns();
        this.segments = segments;
    }

    public void setSegmentsChars(char[] segmentsChars) {
        this.checkLayout();
        if (this.segmentsChars == null && segmentsChars == null) {
            return;
        }
        if (this.segmentsChars != null && segmentsChars != null && this.segmentsChars.length == segmentsChars.length) {
            int i = 0;
            while (i < segmentsChars.length) {
                if (this.segmentsChars[i] != segmentsChars[i]) break;
                ++i;
            }
            if (i == segmentsChars.length) {
                return;
            }
        }
        this.freeRuns();
        this.segmentsChars = segmentsChars;
    }

    public void setSpacing(int spacing) {
        this.checkLayout();
        if (spacing < 0) {
            SWT.error(5);
        }
        if (this.lineSpacing == spacing) {
            return;
        }
        this.freeRuns();
        this.lineSpacing = spacing;
    }

    public void setStyle(TextStyle style, int start, int end) {
        int newLength;
        int modifyStart;
        this.checkLayout();
        int length = this.text.length();
        if (length == 0) {
            return;
        }
        if (start > end) {
            return;
        }
        start = Math.min(Math.max(0, start), length - 1);
        end = Math.min(Math.max(0, end), length - 1);
        int low = -1;
        int high = this.stylesCount;
        while (high - low > 1) {
            int index = (high + low) / 2;
            if (this.styles[index + 1].start > start) {
                high = index;
                continue;
            }
            low = index;
        }
        if (high >= 0 && high < this.stylesCount) {
            StyleItem item = this.styles[high];
            if (item.start == start && this.styles[high + 1].start - 1 == end && (style == null ? item.style == null : style.equals(item.style))) {
                return;
            }
        }
        this.freeRuns();
        int modifyEnd = modifyStart = high;
        while (modifyEnd < this.stylesCount) {
            if (this.styles[modifyEnd + 1].start > end) break;
            ++modifyEnd;
        }
        if (modifyStart == modifyEnd) {
            int styleStart = this.styles[modifyStart].start;
            int styleEnd = this.styles[modifyEnd + 1].start - 1;
            if (styleStart == start && styleEnd == end) {
                this.styles[modifyStart].style = style;
                return;
            }
            if (styleStart != start && styleEnd != end) {
                int newLength2 = this.stylesCount + 2;
                if (newLength2 > this.styles.length) {
                    int newSize = Math.min(newLength2 + 1024, Math.max(64, newLength2 * 2));
                    StyleItem[] newStyles = new StyleItem[newSize];
                    System.arraycopy(this.styles, 0, newStyles, 0, this.stylesCount);
                    this.styles = newStyles;
                }
                System.arraycopy(this.styles, modifyEnd + 1, this.styles, modifyEnd + 3, this.stylesCount - modifyEnd - 1);
                StyleItem item = new StyleItem();
                item.start = start;
                item.style = style;
                this.styles[modifyStart + 1] = item;
                item = new StyleItem();
                item.start = end + 1;
                item.style = this.styles[modifyStart].style;
                this.styles[modifyStart + 2] = item;
                this.stylesCount = newLength2;
                return;
            }
        }
        if (start == this.styles[modifyStart].start) {
            --modifyStart;
        }
        if (end == this.styles[modifyEnd + 1].start - 1) {
            ++modifyEnd;
        }
        if ((newLength = this.stylesCount + 1 - (modifyEnd - modifyStart - 1)) > this.styles.length) {
            int newSize = Math.min(newLength + 1024, Math.max(64, newLength * 2));
            StyleItem[] newStyles = new StyleItem[newSize];
            System.arraycopy(this.styles, 0, newStyles, 0, this.stylesCount);
            this.styles = newStyles;
        }
        System.arraycopy(this.styles, modifyEnd, this.styles, modifyStart + 2, this.stylesCount - modifyEnd);
        StyleItem item = new StyleItem();
        item.start = start;
        item.style = style;
        this.styles[modifyStart + 1] = item;
        this.styles[modifyStart + 2].start = end + 1;
        this.stylesCount = newLength;
    }

    public void setTabs(int[] tabs) {
        this.checkLayout();
        if (this.tabs == null && tabs == null) {
            return;
        }
        if (this.tabs != null && tabs != null && this.tabs.length == tabs.length) {
            int i = 0;
            while (i < tabs.length) {
                if (this.tabs[i] != tabs[i]) break;
                ++i;
            }
            if (i == tabs.length) {
                return;
            }
        }
        this.freeRuns();
        this.tabs = tabs;
    }

    public void setText(String text) {
        this.checkLayout();
        if (text == null) {
            SWT.error(4);
        }
        if (text.equals(this.text)) {
            return;
        }
        this.freeRuns();
        this.text = text;
        this.styles = new StyleItem[2];
        this.styles[0] = new StyleItem();
        this.styles[1] = new StyleItem();
        this.styles[1].start = text.length();
        this.stylesCount = 2;
    }

    public void setWidth(int width) {
        this.checkLayout();
        if (width < -1 || width == 0) {
            SWT.error(5);
        }
        if (this.wrapWidth == width) {
            return;
        }
        this.freeRuns();
        this.wrapWidth = width;
    }

    public void setWrapIndent(int wrapIndent) {
        this.checkLayout();
        if (wrapIndent < 0) {
            return;
        }
        if (this.wrapIndent == wrapIndent) {
            return;
        }
        this.freeRuns();
        this.wrapIndent = wrapIndent;
    }

    boolean shape(int hdc, StyleItem run, char[] chars, int[] glyphCount, int maxGlyphs, SCRIPT_PROPERTIES sp) {
        short[] glyphs;
        boolean useCMAPcheck;
        boolean bl = useCMAPcheck = !sp.fComplex && !run.analysis.fNoGlyphIndex;
        if (useCMAPcheck && OS.ScriptGetCMap(hdc, run.psc, chars, chars.length, 0, glyphs = new short[chars.length]) != 0) {
            if (run.psc != 0) {
                OS.ScriptFreeCache(run.psc);
                glyphCount[0] = 0;
                OS.MoveMemory(run.psc, new int[1], OS.PTR_SIZEOF);
            }
            return false;
        }
        int hr = OS.ScriptShape(hdc, run.psc, chars, chars.length, maxGlyphs, run.analysis, run.glyphs, run.clusters, run.visAttrs, glyphCount);
        run.glyphCount = glyphCount[0];
        if (useCMAPcheck) {
            return true;
        }
        if (hr != -2147220992) {
            if (run.analysis.fNoGlyphIndex) {
                return true;
            }
            SCRIPT_FONTPROPERTIES fp = new SCRIPT_FONTPROPERTIES();
            fp.cBytes = SCRIPT_FONTPROPERTIES.sizeof;
            OS.ScriptGetFontProperties(hdc, run.psc, fp);
            short[] glyphs2 = new short[glyphCount[0]];
            OS.MoveMemory(glyphs2, run.glyphs, glyphs2.length * 2);
            int i = 0;
            while (i < glyphs2.length) {
                if (glyphs2[i] == fp.wgDefault) break;
                ++i;
            }
            if (i == glyphs2.length) {
                return true;
            }
        }
        if (run.psc != 0) {
            OS.ScriptFreeCache(run.psc);
            glyphCount[0] = 0;
            OS.MoveMemory(run.psc, new int[1], OS.PTR_SIZEOF);
        }
        run.glyphCount = 0;
        return false;
    }

    void shape(int hdc, StyleItem run) {
        if (run.tab || run.lineBreak) {
            return;
        }
        if (run.glyphs != 0) {
            return;
        }
        int[] buffer = new int[1];
        char[] chars = new char[run.length];
        this.segmentsText.getChars(run.start, run.start + run.length, chars, 0);
        int maxGlyphs = chars.length * 3 / 2 + 16;
        int hHeap = OS.GetProcessHeap();
        run.glyphs = OS.HeapAlloc(hHeap, 8, maxGlyphs * 2);
        if (run.glyphs == 0) {
            SWT.error(2);
        }
        run.clusters = OS.HeapAlloc(hHeap, 8, maxGlyphs * 2);
        if (run.clusters == 0) {
            SWT.error(2);
        }
        run.visAttrs = OS.HeapAlloc(hHeap, 8, maxGlyphs * 2);
        if (run.visAttrs == 0) {
            SWT.error(2);
        }
        run.psc = OS.HeapAlloc(hHeap, 8, OS.PTR_SIZEOF);
        if (run.psc == 0) {
            SWT.error(2);
        }
        short script = run.analysis.eScript;
        SCRIPT_PROPERTIES sp = new SCRIPT_PROPERTIES();
        OS.MoveMemory(sp, this.device.scripts[script], SCRIPT_PROPERTIES.sizeof);
        boolean shapeSucceed = this.shape(hdc, run, chars, buffer, maxGlyphs, sp);
        if (!shapeSucceed && sp.fPrivateUseArea) {
            run.analysis.fNoGlyphIndex = true;
            shapeSucceed = this.shape(hdc, run, chars, buffer, maxGlyphs, sp);
        }
        if (!shapeSucceed) {
            int hFont = OS.GetCurrentObject(hdc, 6);
            int newFont = 0;
            char[] sampleChars = new char[Math.min(chars.length, 2)];
            SCRIPT_LOGATTR logAttr = new SCRIPT_LOGATTR();
            this.breakRun(run);
            int count = 0;
            int i = 0;
            while (i < chars.length) {
                OS.MoveMemory(logAttr, run.psla + i * SCRIPT_LOGATTR.sizeof, SCRIPT_LOGATTR.sizeof);
                if (!logAttr.fWhiteSpace) {
                    sampleChars[count++] = chars[i];
                    if (count == sampleChars.length) break;
                }
                ++i;
            }
            if (count > 0) {
                Callback callback;
                int address;
                int ssa = OS.HeapAlloc(hHeap, 8, OS.SCRIPT_STRING_ANALYSIS_sizeof());
                int metaFileDc = OS.CreateEnhMetaFile(hdc, null, null, null);
                int oldMetaFont = OS.SelectObject(metaFileDc, hFont);
                int flags = 6304;
                if (OS.ScriptStringAnalyse(metaFileDc, sampleChars, count, 0, -1, flags, 0, null, null, 0, 0, 0, ssa) == 0) {
                    OS.ScriptStringOut(ssa, 0, 0, 0, null, 0, 0, false);
                    OS.ScriptStringFree(ssa);
                }
                OS.HeapFree(hHeap, 0, ssa);
                OS.SelectObject(metaFileDc, oldMetaFont);
                int metaFile = OS.CloseEnhMetaFile(metaFileDc);
                EMREXTCREATEFONTINDIRECTW emr = new EMREXTCREATEFONTINDIRECTW();
                class MetaFileEnumProc {
                    final /* synthetic */ TextLayout this$0;
                    private final /* synthetic */ EMREXTCREATEFONTINDIRECTW val$emr;

                    MetaFileEnumProc(TextLayout textLayout, EMREXTCREATEFONTINDIRECTW eMREXTCREATEFONTINDIRECTW) {
                        this.this$0 = textLayout;
                        this.val$emr = eMREXTCREATEFONTINDIRECTW;
                    }

                    int metaFileEnumProc(int hDC, int table, int record, int nObj, int lpData) {
                        OS.MoveMemory(this.val$emr.emr, record, EMR.sizeof);
                        switch (this.val$emr.emr.iType) {
                            case 82: {
                                OS.MoveMemory(this.val$emr, record, EMREXTCREATEFONTINDIRECTW.sizeof);
                                break;
                            }
                            case 84: {
                                return 0;
                            }
                        }
                        return 1;
                    }
                }
                MetaFileEnumProc object = new MetaFileEnumProc(this, emr);
                boolean compilerWarningWorkaround = false;
                if (compilerWarningWorkaround) {
                    object.metaFileEnumProc(0, 0, 0, 0, 0);
                }
                if ((address = (callback = new Callback(object, "metaFileEnumProc", 5)).getAddress()) == 0) {
                    SWT.error(3);
                }
                OS.EnumEnhMetaFile(0, metaFile, address, 0, null);
                OS.DeleteEnhMetaFile(metaFile);
                callback.dispose();
                newFont = OS.CreateFontIndirectW(emr.elfw.elfLogFont);
            } else {
                int index = 0;
                while (index < this.allRuns.length - 1) {
                    if (this.allRuns[index] == run) {
                        LOGFONT logFont;
                        if (index > 0) {
                            StyleItem pRun = this.allRuns[index - 1];
                            if (pRun.analysis.eScript == run.analysis.eScript) {
                                int pFont = this.getItemFont(pRun);
                                logFont = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
                                OS.GetObject(pFont, LOGFONT.sizeof, logFont);
                                newFont = OS.CreateFontIndirect(logFont);
                            }
                        }
                        if (newFont != 0 || index + 1 >= this.allRuns.length - 1) break;
                        StyleItem nRun = this.allRuns[index + 1];
                        if (nRun.analysis.eScript != run.analysis.eScript) break;
                        OS.SelectObject(hdc, this.getItemFont(nRun));
                        this.shape(hdc, nRun);
                        int nFont = this.getItemFont(nRun);
                        logFont = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
                        OS.GetObject(nFont, LOGFONT.sizeof, logFont);
                        newFont = OS.CreateFontIndirect(logFont);
                        break;
                    }
                    ++index;
                }
            }
            if (newFont != 0) {
                OS.SelectObject(hdc, newFont);
                shapeSucceed = this.shape(hdc, run, chars, buffer, maxGlyphs, sp);
                if (shapeSucceed) {
                    run.fallbackFont = newFont;
                }
            }
            if (!shapeSucceed && !sp.fComplex) {
                run.analysis.fNoGlyphIndex = true;
                shapeSucceed = this.shape(hdc, run, chars, buffer, maxGlyphs, sp);
                if (shapeSucceed) {
                    run.fallbackFont = newFont;
                } else {
                    run.analysis.fNoGlyphIndex = false;
                }
            }
            if (!shapeSucceed && this.mLangFontLink2 != 0) {
                int[] hNewFont = new int[1];
                int[] dwCodePages = new int[1];
                int[] cchCodePages = new int[1];
                OS.VtblCall(4, this.mLangFontLink2, chars, chars.length, 0, dwCodePages, cchCodePages);
                if (OS.VtblCall(10, this.mLangFontLink2, hdc, dwCodePages[0], (int)chars[0], hNewFont) == 0) {
                    LOGFONT logFont = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
                    OS.GetObject(hNewFont[0], LOGFONT.sizeof, logFont);
                    OS.VtblCall(8, this.mLangFontLink2, hNewFont[0]);
                    int mLangFont = OS.CreateFontIndirect(logFont);
                    int oldFont = OS.SelectObject(hdc, mLangFont);
                    shapeSucceed = this.shape(hdc, run, chars, buffer, maxGlyphs, sp);
                    if (shapeSucceed) {
                        run.fallbackFont = mLangFont;
                    } else {
                        OS.SelectObject(hdc, oldFont);
                        OS.DeleteObject(mLangFont);
                    }
                }
            }
            if (!shapeSucceed) {
                OS.SelectObject(hdc, hFont);
            }
            if (newFont != 0 && newFont != run.fallbackFont) {
                OS.DeleteObject(newFont);
            }
        }
        if (!shapeSucceed) {
            OS.ScriptShape(hdc, run.psc, chars, chars.length, maxGlyphs, run.analysis, run.glyphs, run.clusters, run.visAttrs, buffer);
            run.glyphCount = buffer[0];
        }
        int[] abc = new int[3];
        run.advances = OS.HeapAlloc(hHeap, 8, run.glyphCount * 4);
        if (run.advances == 0) {
            SWT.error(2);
        }
        run.goffsets = OS.HeapAlloc(hHeap, 8, run.glyphCount * 8);
        if (run.goffsets == 0) {
            SWT.error(2);
        }
        OS.ScriptPlace(hdc, run.psc, run.glyphs, run.glyphCount, run.visAttrs, run.analysis, run.advances, run.goffsets, abc);
        run.width = abc[0] + abc[1] + abc[2];
        TextStyle style = run.style;
        if (style != null) {
            OUTLINETEXTMETRIC lotm = null;
            if (style.underline || style.strikeout) {
                OUTLINETEXTMETRIC oUTLINETEXTMETRIC = lotm = OS.IsUnicode ? new OUTLINETEXTMETRICW() : new OUTLINETEXTMETRICA();
                if (OS.GetOutlineTextMetrics(hdc, OUTLINETEXTMETRIC.sizeof, lotm) == 0) {
                    lotm = null;
                }
            }
            if (style.metrics != null) {
                GlyphMetrics metrics = style.metrics;
                run.width = metrics.width * Math.max(1, run.glyphCount);
                run.ascent = metrics.ascent;
                run.descent = metrics.descent;
                run.leading = 0;
            } else {
                TEXTMETRIC lptm = null;
                if (lotm != null) {
                    lptm = OS.IsUnicode ? lotm.otmTextMetrics : ((OUTLINETEXTMETRICA)lotm).otmTextMetrics;
                } else {
                    lptm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
                    OS.GetTextMetrics(hdc, lptm);
                }
                run.ascent = lptm.tmAscent;
                run.descent = lptm.tmDescent;
                run.leading = lptm.tmInternalLeading;
            }
            if (lotm != null) {
                run.underlinePos = lotm.otmsUnderscorePosition;
                run.underlineThickness = Math.max(1, lotm.otmsUnderscoreSize);
                run.strikeoutPos = lotm.otmsStrikeoutPosition;
                run.strikeoutThickness = Math.max(1, lotm.otmsStrikeoutSize);
            } else {
                run.underlinePos = 1;
                run.underlineThickness = 1;
                run.strikeoutPos = run.ascent / 2;
                run.strikeoutThickness = 1;
            }
            run.ascent += style.rise;
            run.descent -= style.rise;
        } else {
            TEXTMETRIC lptm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
            OS.GetTextMetrics(hdc, lptm);
            run.ascent = lptm.tmAscent;
            run.descent = lptm.tmDescent;
            run.leading = lptm.tmInternalLeading;
        }
    }

    int validadeOffset(int offset, int step) {
        offset = this.untranslateOffset(offset);
        return this.translateOffset(offset + step);
    }

    public String toString() {
        if (this.isDisposed()) {
            return "TextLayout {*DISPOSED*}";
        }
        return "TextLayout {}";
    }

    int translateOffset(int offset) {
        int length = this.text.length();
        if (length == 0) {
            return offset;
        }
        if (this.segments == null) {
            return offset;
        }
        int nSegments = this.segments.length;
        if (nSegments == 0) {
            return offset;
        }
        if (this.segmentsChars == null) {
            if (nSegments == 1) {
                return offset;
            }
            if (nSegments == 2 && this.segments[0] == 0 && this.segments[1] == length) {
                return offset;
            }
        }
        int i = 0;
        while (i < nSegments && offset - i >= this.segments[i]) {
            ++offset;
            ++i;
        }
        return offset;
    }

    int untranslateOffset(int offset) {
        int length = this.text.length();
        if (length == 0) {
            return offset;
        }
        if (this.segments == null) {
            return offset;
        }
        int nSegments = this.segments.length;
        if (nSegments == 0) {
            return offset;
        }
        if (this.segmentsChars == null) {
            if (nSegments == 1) {
                return offset;
            }
            if (nSegments == 2 && this.segments[0] == 0 && this.segments[1] == length) {
                return offset;
            }
        }
        int i = 0;
        while (i < nSegments && offset > this.segments[i]) {
            --offset;
            ++i;
        }
        return offset;
    }

    class StyleItem {
        TextStyle style;
        int start;
        int length;
        boolean lineBreak;
        boolean softBreak;
        boolean tab;
        SCRIPT_ANALYSIS analysis;
        int psc = 0;
        int glyphs;
        int glyphCount;
        int clusters;
        int visAttrs;
        int advances;
        int goffsets;
        int width;
        int ascent;
        int descent;
        int leading;
        int x;
        int underlinePos;
        int underlineThickness;
        int strikeoutPos;
        int strikeoutThickness;
        int justify;
        int psla;
        int fallbackFont;

        StyleItem() {
        }

        void free() {
            int hHeap = OS.GetProcessHeap();
            if (this.psc != 0) {
                OS.ScriptFreeCache(this.psc);
                OS.HeapFree(hHeap, 0, this.psc);
                this.psc = 0;
            }
            if (this.glyphs != 0) {
                OS.HeapFree(hHeap, 0, this.glyphs);
                this.glyphs = 0;
                this.glyphCount = 0;
            }
            if (this.clusters != 0) {
                OS.HeapFree(hHeap, 0, this.clusters);
                this.clusters = 0;
            }
            if (this.visAttrs != 0) {
                OS.HeapFree(hHeap, 0, this.visAttrs);
                this.visAttrs = 0;
            }
            if (this.advances != 0) {
                OS.HeapFree(hHeap, 0, this.advances);
                this.advances = 0;
            }
            if (this.goffsets != 0) {
                OS.HeapFree(hHeap, 0, this.goffsets);
                this.goffsets = 0;
            }
            if (this.justify != 0) {
                OS.HeapFree(hHeap, 0, this.justify);
                this.justify = 0;
            }
            if (this.psla != 0) {
                OS.HeapFree(hHeap, 0, this.psla);
                this.psla = 0;
            }
            if (this.fallbackFont != 0) {
                OS.DeleteObject(this.fallbackFont);
                this.fallbackFont = 0;
            }
            this.x = 0;
            this.descent = 0;
            this.ascent = 0;
            this.width = 0;
            this.softBreak = false;
            this.lineBreak = false;
        }

        public String toString() {
            return "StyleItem {" + this.start + ", " + this.style + "}";
        }
    }
}

