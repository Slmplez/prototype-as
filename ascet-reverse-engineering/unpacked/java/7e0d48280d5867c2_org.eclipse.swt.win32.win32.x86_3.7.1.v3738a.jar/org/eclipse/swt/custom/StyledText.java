/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleAttributeAdapter;
import org.eclipse.swt.accessibility.AccessibleAttributeEvent;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleEditableTextEvent;
import org.eclipse.swt.accessibility.AccessibleEditableTextListener;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleTextAttributeEvent;
import org.eclipse.swt.accessibility.AccessibleTextEvent;
import org.eclipse.swt.accessibility.AccessibleTextExtendedAdapter;
import org.eclipse.swt.custom.BidiSegmentListener;
import org.eclipse.swt.custom.Bullet;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.custom.CaretListener;
import org.eclipse.swt.custom.DefaultContent;
import org.eclipse.swt.custom.ExtendedModifyListener;
import org.eclipse.swt.custom.LineBackgroundListener;
import org.eclipse.swt.custom.LineStyleListener;
import org.eclipse.swt.custom.MovementListener;
import org.eclipse.swt.custom.PaintObjectListener;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledTextContent;
import org.eclipse.swt.custom.StyledTextDropTargetEffect;
import org.eclipse.swt.custom.StyledTextEvent;
import org.eclipse.swt.custom.StyledTextListener;
import org.eclipse.swt.custom.StyledTextPrintOptions;
import org.eclipse.swt.custom.StyledTextRenderer;
import org.eclipse.swt.custom.TextChangeListener;
import org.eclipse.swt.custom.TextChangedEvent;
import org.eclipse.swt.custom.TextChangingEvent;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.RTFTransfer;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GlyphMetrics;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.internal.BidiUtil;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.printing.Printer;
import org.eclipse.swt.printing.PrinterData;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Caret;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.IME;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.TypedListener;

public class StyledText
extends Canvas {
    static final char TAB = '\t';
    static final String PlatformLineDelimiter = System.getProperty("line.separator");
    static final int BIDI_CARET_WIDTH = 3;
    static final int DEFAULT_WIDTH = 64;
    static final int DEFAULT_HEIGHT = 64;
    static final int V_SCROLL_RATE = 50;
    static final int H_SCROLL_RATE = 10;
    static final int ExtendedModify = 3000;
    static final int LineGetBackground = 3001;
    static final int LineGetStyle = 3002;
    static final int TextChanging = 3003;
    static final int TextSet = 3004;
    static final int VerifyKey = 3005;
    static final int TextChanged = 3006;
    static final int LineGetSegments = 3007;
    static final int PaintObject = 3008;
    static final int WordNext = 3009;
    static final int WordPrevious = 3010;
    static final int CaretMoved = 3011;
    static final int PREVIOUS_OFFSET_TRAILING = 0;
    static final int OFFSET_LEADING = 1;
    Color selectionBackground;
    Color selectionForeground;
    StyledTextContent content;
    StyledTextRenderer renderer;
    Listener listener;
    TextChangeListener textChangeListener;
    int verticalScrollOffset = 0;
    int horizontalScrollOffset = 0;
    int topIndex = 0;
    int topIndexY;
    int clientAreaHeight = 0;
    int clientAreaWidth = 0;
    int tabLength = 4;
    int[] tabs;
    int leftMargin;
    int topMargin;
    int rightMargin;
    int bottomMargin;
    Color marginColor;
    int columnX;
    int caretOffset;
    int caretAlignment;
    Point selection = new Point(0, 0);
    Point clipboardSelection;
    int selectionAnchor;
    Point doubleClickSelection;
    boolean editable = true;
    boolean wordWrap = false;
    boolean doubleClickEnabled = true;
    boolean overwrite = false;
    int textLimit = -1;
    Hashtable keyActionMap = new Hashtable();
    Color background = null;
    Color foreground = null;
    Clipboard clipboard;
    int clickCount;
    int autoScrollDirection = 0;
    int autoScrollDistance = 0;
    int lastTextChangeStart;
    int lastTextChangeNewLineCount;
    int lastTextChangeNewCharCount;
    int lastTextChangeReplaceLineCount;
    int lastTextChangeReplaceCharCount;
    int lastCharCount = 0;
    int lastLineBottom;
    boolean bidiColoring = false;
    Image leftCaretBitmap = null;
    Image rightCaretBitmap = null;
    int caretDirection = 0;
    int caretWidth = 0;
    Caret defaultCaret = null;
    boolean updateCaretDirection = true;
    boolean fixedLineHeight;
    boolean dragDetect = true;
    IME ime;
    Cursor cursor;
    int alignment;
    boolean justify;
    int indent;
    int wrapIndent;
    int lineSpacing;
    int alignmentMargin;
    int newOrientation = 0;
    int accCaretOffset;
    boolean blockSelection;
    int blockXAnchor = -1;
    int blockYAnchor = -1;
    int blockXLocation = -1;
    int blockYLocation = -1;
    static final boolean IS_MAC;
    static final boolean IS_GTK;
    static final boolean IS_MOTIF;

    static {
        String platform = SWT.getPlatform();
        IS_MAC = "carbon".equals(platform) || "cocoa".equals(platform);
        IS_GTK = "gtk".equals(platform);
        IS_MOTIF = "motif".equals(platform);
    }

    public StyledText(Composite parent, int style) {
        super(parent, StyledText.checkStyle(style));
        super.setForeground(this.getForeground());
        super.setDragDetect(false);
        Display display = this.getDisplay();
        this.fixedLineHeight = true;
        if ((style & 8) != 0) {
            this.setEditable(false);
        }
        this.rightMargin = this.isBidiCaret() ? 2 : 0;
        this.leftMargin = this.rightMargin;
        if ((style & 4) != 0 && (style & 0x800) != 0) {
            this.bottomMargin = 2;
            this.rightMargin = 2;
            this.topMargin = 2;
            this.leftMargin = 2;
        }
        this.alignment = style & 0x1024000;
        if (this.alignment == 0) {
            this.alignment = 16384;
        }
        this.clipboard = new Clipboard(display);
        this.installDefaultContent();
        this.renderer = new StyledTextRenderer(this.getDisplay(), this);
        this.renderer.setContent(this.content);
        this.renderer.setFont(this.getFont(), this.tabLength);
        this.ime = new IME(this, 0);
        this.defaultCaret = new Caret(this, 0);
        if ((style & 0x40) != 0) {
            this.setWordWrap(true);
        }
        if (this.isBidiCaret()) {
            this.createCaretBitmaps();
            Runnable runnable = new Runnable(){

                public void run() {
                    int direction;
                    int n = direction = BidiUtil.getKeyboardLanguage() == 1 ? 131072 : 16384;
                    if (direction == StyledText.this.caretDirection) {
                        return;
                    }
                    if (StyledText.this.getCaret() != StyledText.this.defaultCaret) {
                        return;
                    }
                    Point newCaretPos = StyledText.this.getPointAtOffset(StyledText.this.caretOffset);
                    StyledText.this.setCaretLocation(newCaretPos, direction);
                }
            };
            BidiUtil.addLanguageListener(this, runnable);
        }
        this.setCaret(this.defaultCaret);
        this.calculateScrollBars();
        this.createKeyBindings();
        super.setCursor(display.getSystemCursor(19));
        this.installListeners();
        this.initializeAccessible();
        this.setData("DEFAULT_DROP_TARGET_EFFECT", new StyledTextDropTargetEffect(this));
    }

    public void addExtendedModifyListener(ExtendedModifyListener extendedModifyListener) {
        this.checkWidget();
        if (extendedModifyListener == null) {
            SWT.error(4);
        }
        StyledTextListener typedListener = new StyledTextListener(extendedModifyListener);
        this.addListener(3000, typedListener);
    }

    public void addBidiSegmentListener(BidiSegmentListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.addListener(3007, new StyledTextListener(listener));
    }

    public void addCaretListener(CaretListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.addListener(3011, new StyledTextListener(listener));
    }

    public void addLineBackgroundListener(LineBackgroundListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        if (!this.isListening(3001)) {
            this.renderer.clearLineBackground(0, this.content.getLineCount());
        }
        this.addListener(3001, new StyledTextListener(listener));
    }

    public void addLineStyleListener(LineStyleListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        if (!this.isListening(3002)) {
            this.setStyleRanges(0, 0, null, null, true);
            this.renderer.clearLineStyle(0, this.content.getLineCount());
        }
        this.addListener(3002, new StyledTextListener(listener));
        this.setCaretLocation();
    }

    public void addModifyListener(ModifyListener modifyListener) {
        this.checkWidget();
        if (modifyListener == null) {
            SWT.error(4);
        }
        this.addListener(24, new TypedListener(modifyListener));
    }

    public void addPaintObjectListener(PaintObjectListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.addListener(3008, new StyledTextListener(listener));
    }

    public void addSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.addListener(13, new TypedListener(listener));
    }

    public void addVerifyKeyListener(VerifyKeyListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.addListener(3005, new StyledTextListener(listener));
    }

    public void addVerifyListener(VerifyListener verifyListener) {
        this.checkWidget();
        if (verifyListener == null) {
            SWT.error(4);
        }
        this.addListener(25, new TypedListener(verifyListener));
    }

    public void addWordMovementListener(MovementListener movementListener) {
        this.checkWidget();
        if (movementListener == null) {
            SWT.error(4);
        }
        this.addListener(3009, new StyledTextListener(movementListener));
        this.addListener(3010, new StyledTextListener(movementListener));
    }

    public void append(String string) {
        this.checkWidget();
        if (string == null) {
            SWT.error(4);
        }
        int lastChar = Math.max(this.getCharCount(), 0);
        this.replaceTextRange(lastChar, 0, string);
    }

    void calculateScrollBars() {
        ScrollBar horizontalBar = this.getHorizontalBar();
        ScrollBar verticalBar = this.getVerticalBar();
        this.setScrollBars(true);
        if (verticalBar != null) {
            verticalBar.setIncrement(this.getVerticalIncrement());
        }
        if (horizontalBar != null) {
            horizontalBar.setIncrement(this.getHorizontalIncrement());
        }
    }

    void calculateTopIndex(int delta) {
        int oldTopIndex = this.topIndex;
        int oldTopIndexY = this.topIndexY;
        if (this.isFixedLineHeight()) {
            int verticalIncrement = this.getVerticalIncrement();
            if (verticalIncrement == 0) {
                return;
            }
            this.topIndex = Compatibility.ceil(this.getVerticalScrollOffset(), verticalIncrement);
            if (this.topIndex > 0) {
                if (this.clientAreaHeight > 0) {
                    int fullLineTopPixel;
                    int bottomPixel = this.getVerticalScrollOffset() + this.clientAreaHeight;
                    int fullLineVisibleHeight = bottomPixel - (fullLineTopPixel = this.topIndex * verticalIncrement);
                    if (fullLineVisibleHeight < verticalIncrement) {
                        --this.topIndex;
                    }
                } else if (this.topIndex >= this.content.getLineCount()) {
                    this.topIndex = this.content.getLineCount() - 1;
                }
            }
        } else if (delta >= 0) {
            delta -= this.topIndexY;
            int lineIndex = this.topIndex;
            int lineCount = this.content.getLineCount();
            while (lineIndex < lineCount) {
                if (delta <= 0) break;
                delta -= this.renderer.getLineHeight(lineIndex++);
            }
            if (lineIndex < lineCount && -delta + this.renderer.getLineHeight(lineIndex) <= this.clientAreaHeight - this.topMargin - this.bottomMargin) {
                this.topIndex = lineIndex;
                this.topIndexY = -delta;
            } else {
                this.topIndex = lineIndex - 1;
                this.topIndexY = -this.renderer.getLineHeight(this.topIndex) - delta;
            }
        } else {
            delta -= this.topIndexY;
            int lineIndex = this.topIndex;
            while (lineIndex > 0) {
                int lineHeight = this.renderer.getLineHeight(lineIndex - 1);
                if (delta + lineHeight > 0) break;
                delta += lineHeight;
                --lineIndex;
            }
            if (lineIndex == 0 || -delta + this.renderer.getLineHeight(lineIndex) <= this.clientAreaHeight - this.topMargin - this.bottomMargin) {
                this.topIndex = lineIndex;
                this.topIndexY = -delta;
            } else {
                this.topIndex = lineIndex - 1;
                this.topIndexY = -this.renderer.getLineHeight(this.topIndex) - delta;
            }
        }
        if (this.topIndex != oldTopIndex || oldTopIndexY != this.topIndexY) {
            this.renderer.calculateClientArea();
            this.setScrollBars(false);
        }
    }

    static int checkStyle(int style) {
        if ((style & 4) != 0) {
            style &= 0xFFFFFCBD;
        } else if (((style |= 2) & 0x40) != 0) {
            style &= 0xFFFFFEFF;
        }
        return (style |= 0x20140000) & 0xFEFFFFFF;
    }

    void claimBottomFreeSpace() {
        if (this.ime.getCompositionOffset() != -1) {
            return;
        }
        if (this.isFixedLineHeight()) {
            int newVerticalOffset = Math.max(0, this.renderer.getHeight() - this.clientAreaHeight);
            if (newVerticalOffset < this.getVerticalScrollOffset()) {
                this.scrollVertical(newVerticalOffset - this.getVerticalScrollOffset(), true);
            }
        } else {
            int bottomIndex = this.getPartialBottomIndex();
            int height = this.getLinePixel(bottomIndex + 1);
            if (this.clientAreaHeight > height) {
                this.scrollVertical(-this.getAvailableHeightAbove(this.clientAreaHeight - height), true);
            }
        }
    }

    void claimRightFreeSpace() {
        int newHorizontalOffset = Math.max(0, this.renderer.getWidth() - this.clientAreaWidth);
        if (newHorizontalOffset < this.horizontalScrollOffset) {
            this.scrollHorizontal(newHorizontalOffset - this.horizontalScrollOffset, true);
        }
    }

    void clearBlockSelection(boolean reset, boolean sendEvent) {
        if (reset) {
            this.resetSelection();
        }
        this.blockYAnchor = -1;
        this.blockXAnchor = -1;
        this.blockYLocation = -1;
        this.blockXLocation = -1;
        this.caretDirection = 0;
        this.updateCaretVisibility();
        super.redraw();
        if (sendEvent) {
            this.sendSelectionEvent();
        }
    }

    void clearSelection(boolean sendEvent) {
        int selectionStart = this.selection.x;
        int selectionEnd = this.selection.y;
        this.resetSelection();
        if (selectionEnd - selectionStart > 0) {
            int length = this.content.getCharCount();
            int redrawStart = Math.min(selectionStart, length);
            int redrawEnd = Math.min(selectionEnd, length);
            if (redrawEnd - redrawStart > 0) {
                this.internalRedrawRange(redrawStart, redrawEnd - redrawStart);
            }
            if (sendEvent) {
                this.sendSelectionEvent();
            }
        }
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int lineCount = (this.getStyle() & 4) != 0 ? 1 : this.content.getLineCount();
        int width = 0;
        int height = 0;
        if (wHint == -1 || hHint == -1) {
            Display display = this.getDisplay();
            int maxHeight = display.getClientArea().height;
            int lineIndex = 0;
            while (lineIndex < lineCount) {
                TextLayout layout = this.renderer.getTextLayout(lineIndex);
                int wrapWidth = layout.getWidth();
                if (this.wordWrap) {
                    layout.setWidth(wHint == 0 ? 1 : wHint);
                }
                Rectangle rect = layout.getBounds();
                width = Math.max(width, rect.width);
                layout.setWidth(wrapWidth);
                this.renderer.disposeTextLayout(layout);
                if (this.isFixedLineHeight() && (height += rect.height) > maxHeight) break;
                ++lineIndex;
            }
            if (this.isFixedLineHeight()) {
                height = lineCount * this.renderer.getLineHeight();
            }
        }
        if (width == 0) {
            width = 64;
        }
        if (height == 0) {
            height = 64;
        }
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        int wTrim = this.leftMargin + this.rightMargin + this.getCaretWidth();
        int hTrim = this.topMargin + this.bottomMargin;
        Rectangle rect = this.computeTrim(0, 0, width + wTrim, height + hTrim);
        return new Point(rect.width, rect.height);
    }

    public void copy() {
        this.checkWidget();
        this.copySelection(1);
    }

    public void copy(int clipboardType) {
        this.checkWidget();
        this.copySelection(clipboardType);
    }

    boolean copySelection(int type) {
        block7: {
            block6: {
                if (type != 1 && type != 2) {
                    return false;
                }
                if (!this.blockSelection || this.blockXLocation == -1) break block6;
                String text = this.getBlockSelectionText(PlatformLineDelimiter);
                if (text.length() > 0) {
                    TextTransfer plainTextTransfer = TextTransfer.getInstance();
                    Object[] data = new Object[]{text};
                    Transfer[] types = new Transfer[]{plainTextTransfer};
                    this.clipboard.setContents(data, types, type);
                    return true;
                }
            }
            try {
                int length = this.selection.y - this.selection.x;
                if (length > 0) {
                    this.setClipboardContent(this.selection.x, length, type);
                    return true;
                }
            }
            catch (SWTError error) {
                if (error.code == 2002) break block7;
                throw error;
            }
        }
        return false;
    }

    public int getAlignment() {
        this.checkWidget();
        return this.alignment;
    }

    int getAvailableHeightAbove(int height) {
        int maxHeight = this.verticalScrollOffset;
        if (maxHeight == -1) {
            int lineIndex = this.topIndex - 1;
            maxHeight = -this.topIndexY;
            if (this.topIndexY > 0) {
                maxHeight += this.renderer.getLineHeight(lineIndex--);
            }
            while (height > maxHeight && lineIndex >= 0) {
                maxHeight += this.renderer.getLineHeight(lineIndex--);
            }
        }
        return Math.min(height, maxHeight);
    }

    int getAvailableHeightBellow(int height) {
        int partialBottomIndex = this.getPartialBottomIndex();
        int topY = this.getLinePixel(partialBottomIndex);
        int lineHeight = this.renderer.getLineHeight(partialBottomIndex);
        int availableHeight = 0;
        int clientAreaHeight = this.clientAreaHeight - this.topMargin - this.bottomMargin;
        if (topY + lineHeight > clientAreaHeight) {
            availableHeight = lineHeight - (clientAreaHeight - topY);
        }
        int lineIndex = partialBottomIndex + 1;
        int lineCount = this.content.getLineCount();
        while (height > availableHeight && lineIndex < lineCount) {
            availableHeight += this.renderer.getLineHeight(lineIndex++);
        }
        return Math.min(height, availableHeight);
    }

    public Color getMarginColor() {
        this.checkWidget();
        return this.marginColor != null ? this.marginColor : this.getBackground();
    }

    String getModelDelimitedText(String text) {
        int length = text.length();
        if (length == 0) {
            return text;
        }
        int crIndex = 0;
        int lfIndex = 0;
        int i = 0;
        StringBuffer convertedText = new StringBuffer(length);
        String delimiter = this.getLineDelimiter();
        while (i < length) {
            if (crIndex != -1) {
                crIndex = text.indexOf(13, i);
            }
            if (lfIndex != -1) {
                lfIndex = text.indexOf(10, i);
            }
            if (lfIndex == -1 && crIndex == -1) break;
            if (crIndex < lfIndex && crIndex != -1 || lfIndex == -1) {
                convertedText.append(text.substring(i, crIndex));
                i = lfIndex == crIndex + 1 ? lfIndex + 1 : crIndex + 1;
            } else {
                convertedText.append(text.substring(i, lfIndex));
                i = lfIndex + 1;
            }
            if (this.isSingleLine()) break;
            convertedText.append(delimiter);
        }
        if (!(i >= length || this.isSingleLine() && convertedText.length() != 0)) {
            convertedText.append(text.substring(i));
        }
        return convertedText.toString();
    }

    boolean checkDragDetect(Event event) {
        if (!this.isListening(29)) {
            return false;
        }
        if (IS_MOTIF ? event.button != 2 : event.button != 1) {
            return false;
        }
        if (this.blockSelection && this.blockXLocation != -1) {
            Rectangle rect = this.getBlockSelectionRectangle();
            if (rect.contains(event.x, event.y)) {
                return this.dragDetect(event);
            }
        } else {
            if (this.selection.x == this.selection.y) {
                return false;
            }
            int offset = this.getOffsetAtPoint(event.x, event.y, null, true);
            if (this.selection.x <= offset && offset < this.selection.y) {
                return this.dragDetect(event);
            }
        }
        return false;
    }

    void createKeyBindings() {
        int nextKey = this.isMirrored() ? 0x1000003 : 0x1000004;
        int previousKey = this.isMirrored() ? 0x1000004 : 0x1000003;
        this.setKeyBinding(0x1000001, 0x1000001);
        this.setKeyBinding(0x1000002, 0x1000002);
        if (IS_MAC) {
            this.setKeyBinding(previousKey | SWT.MOD1, 0x1000007);
            this.setKeyBinding(nextKey | SWT.MOD1, 0x1000008);
            this.setKeyBinding(0x1000007, 17039367);
            this.setKeyBinding(0x1000008, 17039368);
            this.setKeyBinding(0x1000001 | SWT.MOD1, 17039367);
            this.setKeyBinding(0x1000002 | SWT.MOD1, 17039368);
            this.setKeyBinding(nextKey | SWT.MOD3, 0x1040004);
            this.setKeyBinding(previousKey | SWT.MOD3, 17039363);
        } else {
            this.setKeyBinding(0x1000007, 0x1000007);
            this.setKeyBinding(0x1000008, 0x1000008);
            this.setKeyBinding(0x1000007 | SWT.MOD1, 17039367);
            this.setKeyBinding(0x1000008 | SWT.MOD1, 17039368);
            this.setKeyBinding(nextKey | SWT.MOD1, 0x1040004);
            this.setKeyBinding(previousKey | SWT.MOD1, 17039363);
        }
        this.setKeyBinding(0x1000005, 0x1000005);
        this.setKeyBinding(0x1000006, 0x1000006);
        this.setKeyBinding(0x1000005 | SWT.MOD1, 17039365);
        this.setKeyBinding(0x1000006 | SWT.MOD1, 17039366);
        this.setKeyBinding(nextKey, 0x1000004);
        this.setKeyBinding(previousKey, 0x1000003);
        this.setKeyBinding(0x1000001 | SWT.MOD2, 0x1020001);
        this.setKeyBinding(0x1000002 | SWT.MOD2, 0x1020002);
        if (IS_MAC) {
            this.setKeyBinding(previousKey | SWT.MOD1 | SWT.MOD2, 16908295);
            this.setKeyBinding(nextKey | SWT.MOD1 | SWT.MOD2, 16908296);
            this.setKeyBinding(0x1000007 | SWT.MOD2, 17170439);
            this.setKeyBinding(0x1000008 | SWT.MOD2, 17170440);
            this.setKeyBinding(0x1000001 | SWT.MOD1 | SWT.MOD2, 17170439);
            this.setKeyBinding(0x1000002 | SWT.MOD1 | SWT.MOD2, 17170440);
            this.setKeyBinding(nextKey | SWT.MOD2 | SWT.MOD3, 17170436);
            this.setKeyBinding(previousKey | SWT.MOD2 | SWT.MOD3, 17170435);
        } else {
            this.setKeyBinding(0x1000007 | SWT.MOD2, 16908295);
            this.setKeyBinding(0x1000008 | SWT.MOD2, 16908296);
            this.setKeyBinding(0x1000007 | SWT.MOD1 | SWT.MOD2, 17170439);
            this.setKeyBinding(0x1000008 | SWT.MOD1 | SWT.MOD2, 17170440);
            this.setKeyBinding(nextKey | SWT.MOD1 | SWT.MOD2, 17170436);
            this.setKeyBinding(previousKey | SWT.MOD1 | SWT.MOD2, 17170435);
        }
        this.setKeyBinding(0x1000005 | SWT.MOD2, 16908293);
        this.setKeyBinding(0x1000006 | SWT.MOD2, 16908294);
        this.setKeyBinding(0x1000005 | SWT.MOD1 | SWT.MOD2, 17170437);
        this.setKeyBinding(0x1000006 | SWT.MOD1 | SWT.MOD2, 0x1060006);
        this.setKeyBinding(nextKey | SWT.MOD2, 16908292);
        this.setKeyBinding(previousKey | SWT.MOD2, 16908291);
        this.setKeyBinding(0x58 | SWT.MOD1, 131199);
        this.setKeyBinding(0x43 | SWT.MOD1, 17039369);
        this.setKeyBinding(0x56 | SWT.MOD1, 16908297);
        if (IS_MAC) {
            this.setKeyBinding(0x7F | SWT.MOD2, 127);
            this.setKeyBinding(8 | SWT.MOD3, 262152);
            this.setKeyBinding(0x7F | SWT.MOD3, 262271);
        } else {
            this.setKeyBinding(0x7F | SWT.MOD2, 131199);
            this.setKeyBinding(0x1000009 | SWT.MOD1, 17039369);
            this.setKeyBinding(0x1000009 | SWT.MOD2, 16908297);
        }
        this.setKeyBinding(8 | SWT.MOD2, 8);
        this.setKeyBinding(8, 8);
        this.setKeyBinding(127, 127);
        this.setKeyBinding(8 | SWT.MOD1, 262152);
        this.setKeyBinding(0x7F | SWT.MOD1, 262271);
        this.setKeyBinding(0x1000009, 0x1000009);
    }

    void createCaretBitmaps() {
        int caretWidth = 3;
        Display display = this.getDisplay();
        if (this.leftCaretBitmap != null) {
            if (this.defaultCaret != null && this.leftCaretBitmap.equals(this.defaultCaret.getImage())) {
                this.defaultCaret.setImage(null);
            }
            this.leftCaretBitmap.dispose();
        }
        int lineHeight = this.renderer.getLineHeight();
        this.leftCaretBitmap = new Image((Device)display, caretWidth, lineHeight);
        GC gc = new GC(this.leftCaretBitmap);
        gc.setBackground(display.getSystemColor(2));
        gc.fillRectangle(0, 0, caretWidth, lineHeight);
        gc.setForeground(display.getSystemColor(1));
        gc.drawLine(0, 0, 0, lineHeight);
        gc.drawLine(0, 0, caretWidth - 1, 0);
        gc.drawLine(0, 1, 1, 1);
        gc.dispose();
        if (this.rightCaretBitmap != null) {
            if (this.defaultCaret != null && this.rightCaretBitmap.equals(this.defaultCaret.getImage())) {
                this.defaultCaret.setImage(null);
            }
            this.rightCaretBitmap.dispose();
        }
        this.rightCaretBitmap = new Image((Device)display, caretWidth, lineHeight);
        gc = new GC(this.rightCaretBitmap);
        gc.setBackground(display.getSystemColor(2));
        gc.fillRectangle(0, 0, caretWidth, lineHeight);
        gc.setForeground(display.getSystemColor(1));
        gc.drawLine(caretWidth - 1, 0, caretWidth - 1, lineHeight);
        gc.drawLine(0, 0, caretWidth - 1, 0);
        gc.drawLine(caretWidth - 1, 1, 1, 1);
        gc.dispose();
    }

    public void cut() {
        this.checkWidget();
        if (this.copySelection(1)) {
            if (this.blockSelection && this.blockXLocation != -1) {
                this.insertBlockSelectionText('\u0000', 0);
            } else {
                this.doDelete();
            }
        }
    }

    void doAutoScroll(Event event) {
        int caretLine = this.getCaretLine();
        if (event.y > this.clientAreaHeight - this.bottomMargin && caretLine != this.content.getLineCount() - 1) {
            this.doAutoScroll(1024, event.y - (this.clientAreaHeight - this.bottomMargin));
        } else if (event.y < this.topMargin && caretLine != 0) {
            this.doAutoScroll(128, this.topMargin - event.y);
        } else if (event.x < this.leftMargin && !this.wordWrap) {
            this.doAutoScroll(0x1000003, this.leftMargin - event.x);
        } else if (event.x > this.clientAreaWidth - this.rightMargin && !this.wordWrap) {
            this.doAutoScroll(0x1000004, event.x - (this.clientAreaWidth - this.rightMargin));
        } else {
            this.endAutoScroll();
        }
    }

    void doAutoScroll(int direction, int distance) {
        this.autoScrollDistance = distance;
        if (this.autoScrollDirection == direction) {
            return;
        }
        Runnable timer = null;
        final Display display = this.getDisplay();
        if (direction == 128) {
            timer = new Runnable(){

                public void run() {
                    if (StyledText.this.autoScrollDirection == 128) {
                        if (StyledText.this.blockSelection) {
                            int verticalScrollOffset = StyledText.this.getVerticalScrollOffset();
                            int y = StyledText.this.blockYLocation - verticalScrollOffset;
                            int pixels = Math.max(-StyledText.this.autoScrollDistance, -verticalScrollOffset);
                            if (pixels != 0) {
                                StyledText.this.setBlockSelectionLocation(StyledText.this.blockXLocation - StyledText.this.horizontalScrollOffset, y + pixels, true);
                                StyledText.this.scrollVertical(pixels, true);
                            }
                        } else {
                            StyledText.this.doSelectionPageUp(StyledText.this.autoScrollDistance);
                        }
                        display.timerExec(50, this);
                    }
                }
            };
            this.autoScrollDirection = direction;
            display.timerExec(50, timer);
        } else if (direction == 1024) {
            timer = new Runnable(){

                public void run() {
                    if (StyledText.this.autoScrollDirection == 1024) {
                        if (StyledText.this.blockSelection) {
                            int verticalScrollOffset = StyledText.this.getVerticalScrollOffset();
                            int y = StyledText.this.blockYLocation - verticalScrollOffset;
                            int max = StyledText.this.renderer.getHeight() - verticalScrollOffset - StyledText.this.clientAreaHeight;
                            int pixels = Math.min(StyledText.this.autoScrollDistance, Math.max(0, max));
                            if (pixels != 0) {
                                StyledText.this.setBlockSelectionLocation(StyledText.this.blockXLocation - StyledText.this.horizontalScrollOffset, y + pixels, true);
                                StyledText.this.scrollVertical(pixels, true);
                            }
                        } else {
                            StyledText.this.doSelectionPageDown(StyledText.this.autoScrollDistance);
                        }
                        display.timerExec(50, this);
                    }
                }
            };
            this.autoScrollDirection = direction;
            display.timerExec(50, timer);
        } else if (direction == 0x1000004) {
            timer = new Runnable(){

                public void run() {
                    if (StyledText.this.autoScrollDirection == 0x1000004) {
                        if (StyledText.this.blockSelection) {
                            int x = StyledText.this.blockXLocation - StyledText.this.horizontalScrollOffset;
                            int max = StyledText.this.renderer.getWidth() - StyledText.this.horizontalScrollOffset - StyledText.this.clientAreaWidth;
                            int pixels = Math.min(StyledText.this.autoScrollDistance, Math.max(0, max));
                            if (pixels != 0) {
                                StyledText.this.setBlockSelectionLocation(x + pixels, StyledText.this.blockYLocation - StyledText.this.getVerticalScrollOffset(), true);
                                StyledText.this.scrollHorizontal(pixels, true);
                            }
                        } else {
                            StyledText.this.doVisualNext();
                            StyledText.this.setMouseWordSelectionAnchor();
                            StyledText.this.doMouseSelection();
                        }
                        display.timerExec(10, this);
                    }
                }
            };
            this.autoScrollDirection = direction;
            display.timerExec(10, timer);
        } else if (direction == 0x1000003) {
            timer = new Runnable(){

                public void run() {
                    if (StyledText.this.autoScrollDirection == 0x1000003) {
                        if (StyledText.this.blockSelection) {
                            int x = StyledText.this.blockXLocation - StyledText.this.horizontalScrollOffset;
                            int pixels = Math.max(-StyledText.this.autoScrollDistance, -StyledText.this.horizontalScrollOffset);
                            if (pixels != 0) {
                                StyledText.this.setBlockSelectionLocation(x + pixels, StyledText.this.blockYLocation - StyledText.this.getVerticalScrollOffset(), true);
                                StyledText.this.scrollHorizontal(pixels, true);
                            }
                        } else {
                            StyledText.this.doVisualPrevious();
                            StyledText.this.setMouseWordSelectionAnchor();
                            StyledText.this.doMouseSelection();
                        }
                        display.timerExec(10, this);
                    }
                }
            };
            this.autoScrollDirection = direction;
            display.timerExec(10, timer);
        }
    }

    void doBackspace() {
        Event event = new Event();
        event.text = "";
        if (this.selection.x != this.selection.y) {
            event.start = this.selection.x;
            event.end = this.selection.y;
            this.sendKeyEvent(event);
        } else if (this.caretOffset > 0) {
            int lineIndex = this.content.getLineAtOffset(this.caretOffset);
            int lineOffset = this.content.getOffsetAtLine(lineIndex);
            if (this.caretOffset == lineOffset) {
                lineOffset = this.content.getOffsetAtLine(lineIndex - 1);
                event.start = lineOffset + this.content.getLine(lineIndex - 1).length();
                event.end = this.caretOffset;
            } else {
                boolean isSurrogate = false;
                String lineText = this.content.getLine(lineIndex);
                char ch = lineText.charAt(this.caretOffset - lineOffset - 1);
                if ('\udc00' <= ch && ch <= '\udfff' && this.caretOffset - lineOffset - 2 >= 0) {
                    ch = lineText.charAt(this.caretOffset - lineOffset - 2);
                    isSurrogate = '\ud800' <= ch && ch <= '\udbff';
                }
                TextLayout layout = this.renderer.getTextLayout(lineIndex);
                int start = layout.getPreviousOffset(this.caretOffset - lineOffset, isSurrogate ? 2 : 1);
                this.renderer.disposeTextLayout(layout);
                event.start = start + lineOffset;
                event.end = this.caretOffset;
            }
            this.sendKeyEvent(event);
        }
    }

    void doBlockColumn(boolean next) {
        int[] trailing;
        int y;
        int x;
        int offset;
        if (this.blockXLocation == -1) {
            this.setBlockSelectionOffset(this.caretOffset, false);
        }
        if ((offset = this.getOffsetAtPoint(x = this.blockXLocation - this.horizontalScrollOffset, y = this.blockYLocation - this.getVerticalScrollOffset(), trailing = new int[1], true)) != -1) {
            int lineIndex = this.content.getLineAtOffset(offset += trailing[0]);
            int newOffset = next ? this.getClusterNext(offset, lineIndex) : this.getClusterPrevious(offset, lineIndex);
            int n = offset = newOffset != offset ? newOffset : -1;
        }
        if (offset != -1) {
            this.setBlockSelectionOffset(offset, true);
            this.showCaret();
        } else {
            int width = next ? this.renderer.averageCharWidth : -this.renderer.averageCharWidth;
            int maxWidth = Math.max(this.clientAreaWidth - this.rightMargin - this.leftMargin, this.renderer.getWidth());
            x = Math.max(0, Math.min(this.blockXLocation + width, maxWidth)) - this.horizontalScrollOffset;
            this.setBlockSelectionLocation(x, y, true);
            Rectangle rect = new Rectangle(x, y, 0, 0);
            this.showLocation(rect, true);
        }
    }

    void doBlockWord(boolean next) {
        int[] trailing;
        int y;
        int x;
        int offset;
        if (this.blockXLocation == -1) {
            this.setBlockSelectionOffset(this.caretOffset, false);
        }
        if ((offset = this.getOffsetAtPoint(x = this.blockXLocation - this.horizontalScrollOffset, y = this.blockYLocation - this.getVerticalScrollOffset(), trailing = new int[1], true)) != -1) {
            int lineIndex = this.content.getLineAtOffset(offset += trailing[0]);
            int lineOffset = this.content.getOffsetAtLine(lineIndex);
            String lineText = this.content.getLine(lineIndex);
            int lineLength = lineText.length();
            int newOffset = offset;
            if (next) {
                if (offset < lineOffset + lineLength) {
                    newOffset = this.getWordNext(offset, 4);
                }
            } else if (offset > lineOffset) {
                newOffset = this.getWordPrevious(offset, 4);
            }
            int n = offset = newOffset != offset ? newOffset : -1;
        }
        if (offset != -1) {
            this.setBlockSelectionOffset(offset, true);
            this.showCaret();
        } else {
            int width = (next ? this.renderer.averageCharWidth : -this.renderer.averageCharWidth) * 6;
            int maxWidth = Math.max(this.clientAreaWidth - this.rightMargin - this.leftMargin, this.renderer.getWidth());
            x = Math.max(0, Math.min(this.blockXLocation + width, maxWidth)) - this.horizontalScrollOffset;
            this.setBlockSelectionLocation(x, y, true);
            Rectangle rect = new Rectangle(x, y, 0, 0);
            this.showLocation(rect, true);
        }
    }

    void doBlockLineVertical(boolean up) {
        if (this.blockXLocation == -1) {
            this.setBlockSelectionOffset(this.caretOffset, false);
        }
        int y = this.blockYLocation - this.getVerticalScrollOffset();
        int lineIndex = this.getLineIndex(y);
        if (up) {
            if (lineIndex > 0) {
                y = this.getLinePixel(lineIndex - 1);
                this.setBlockSelectionLocation(this.blockXLocation - this.horizontalScrollOffset, y, true);
                if (y < this.topMargin) {
                    this.scrollVertical(y - this.topMargin, true);
                }
            }
        } else {
            int lineCount = this.content.getLineCount();
            if (lineIndex + 1 < lineCount) {
                y = this.getLinePixel(lineIndex + 2) - 1;
                this.setBlockSelectionLocation(this.blockXLocation - this.horizontalScrollOffset, y, true);
                int bottom = this.clientAreaHeight - this.bottomMargin;
                if (y > bottom) {
                    this.scrollVertical(y - bottom, true);
                }
            }
        }
    }

    void doBlockLineHorizontal(boolean end) {
        if (this.blockXLocation == -1) {
            this.setBlockSelectionOffset(this.caretOffset, false);
        }
        int x = this.blockXLocation - this.horizontalScrollOffset;
        int y = this.blockYLocation - this.getVerticalScrollOffset();
        int lineIndex = this.getLineIndex(y);
        int lineOffset = this.content.getOffsetAtLine(lineIndex);
        String lineText = this.content.getLine(lineIndex);
        int lineLength = lineText.length();
        int[] trailing = new int[1];
        int offset = this.getOffsetAtPoint(x, y, trailing, true);
        if (offset != -1) {
            int newOffset = offset += trailing[0];
            if (end) {
                if (offset < lineOffset + lineLength) {
                    newOffset = lineOffset + lineLength;
                }
            } else if (offset > lineOffset) {
                newOffset = lineOffset;
            }
            offset = newOffset != offset ? newOffset : -1;
        } else if (!end) {
            offset = lineOffset + lineLength;
        }
        if (offset != -1) {
            this.setBlockSelectionOffset(offset, true);
            this.showCaret();
        } else {
            int maxWidth = Math.max(this.clientAreaWidth - this.rightMargin - this.leftMargin, this.renderer.getWidth());
            x = (end ? maxWidth : 0) - this.horizontalScrollOffset;
            this.setBlockSelectionLocation(x, y, true);
            Rectangle rect = new Rectangle(x, y, 0, 0);
            this.showLocation(rect, true);
        }
    }

    void doBlockSelection(boolean sendEvent) {
        if (this.caretOffset > this.selectionAnchor) {
            this.selection.x = this.selectionAnchor;
            this.selection.y = this.caretOffset;
        } else {
            this.selection.x = this.caretOffset;
            this.selection.y = this.selectionAnchor;
        }
        this.updateCaretVisibility();
        this.setCaretLocation();
        super.redraw();
        if (sendEvent) {
            this.sendSelectionEvent();
        }
        this.sendAccessibleTextCaretMoved();
    }

    void doContent(char key) {
        if (this.blockSelection && this.blockXLocation != -1) {
            this.insertBlockSelectionText(key, 0);
            return;
        }
        Event event = new Event();
        event.start = this.selection.x;
        event.end = this.selection.y;
        if (key == '\r' || key == '\n') {
            if (!this.isSingleLine()) {
                event.text = this.getLineDelimiter();
            }
        } else if (this.selection.x == this.selection.y && this.overwrite && key != '\t') {
            String line;
            int lineIndex = this.content.getLineAtOffset(event.end);
            int lineOffset = this.content.getOffsetAtLine(lineIndex);
            if (event.end < lineOffset + (line = this.content.getLine(lineIndex)).length()) {
                ++event.end;
            }
            event.text = new String(new char[]{key});
        } else {
            event.text = new String(new char[]{key});
        }
        if (event.text != null) {
            if (this.textLimit > 0 && this.content.getCharCount() - (event.end - event.start) >= this.textLimit) {
                return;
            }
            this.sendKeyEvent(event);
        }
    }

    void doContentEnd() {
        if (this.isSingleLine()) {
            this.doLineEnd();
        } else {
            int length = this.content.getCharCount();
            this.setCaretOffset(length, -1);
            this.showCaret();
        }
    }

    void doContentStart() {
        this.setCaretOffset(0, -1);
        this.showCaret();
    }

    void doCursorPrevious() {
        if (this.selection.y - this.selection.x > 0) {
            this.setCaretOffset(this.selection.x, 1);
            this.showCaret();
        } else {
            this.doSelectionCursorPrevious();
        }
    }

    void doCursorNext() {
        if (this.selection.y - this.selection.x > 0) {
            this.setCaretOffset(this.selection.y, 0);
            this.showCaret();
        } else {
            this.doSelectionCursorNext();
        }
    }

    void doDelete() {
        Event event = new Event();
        event.text = "";
        if (this.selection.x != this.selection.y) {
            event.start = this.selection.x;
            event.end = this.selection.y;
            this.sendKeyEvent(event);
        } else if (this.caretOffset < this.content.getCharCount()) {
            int lineLength;
            int line = this.content.getLineAtOffset(this.caretOffset);
            int lineOffset = this.content.getOffsetAtLine(line);
            if (this.caretOffset == lineOffset + (lineLength = this.content.getLine(line).length())) {
                event.start = this.caretOffset;
                event.end = this.content.getOffsetAtLine(line + 1);
            } else {
                event.start = this.caretOffset;
                event.end = this.getClusterNext(this.caretOffset, line);
            }
            this.sendKeyEvent(event);
        }
    }

    void doDeleteWordNext() {
        if (this.selection.x != this.selection.y) {
            this.doDelete();
        } else {
            Event event = new Event();
            event.text = "";
            event.start = this.caretOffset;
            event.end = this.getWordNext(this.caretOffset, 4);
            this.sendKeyEvent(event);
        }
    }

    void doDeleteWordPrevious() {
        if (this.selection.x != this.selection.y) {
            this.doBackspace();
        } else {
            Event event = new Event();
            event.text = "";
            event.start = this.getWordPrevious(this.caretOffset, 4);
            event.end = this.caretOffset;
            this.sendKeyEvent(event);
        }
    }

    void doLineDown(boolean select) {
        int caretLine = this.getCaretLine();
        int lineCount = this.content.getLineCount();
        int y = 0;
        boolean lastLine = false;
        if (this.wordWrap) {
            int layoutLineCount;
            int lineOffset = this.content.getOffsetAtLine(caretLine);
            int offsetInLine = this.caretOffset - lineOffset;
            TextLayout layout = this.renderer.getTextLayout(caretLine);
            int lineIndex = this.getVisualLineIndex(layout, offsetInLine);
            if (lineIndex == (layoutLineCount = layout.getLineCount()) - 1) {
                lastLine = caretLine == lineCount - 1;
                ++caretLine;
            } else {
                y = layout.getLineBounds((int)(lineIndex + 1)).y;
            }
            this.renderer.disposeTextLayout(layout);
        } else {
            lastLine = caretLine == lineCount - 1;
            ++caretLine;
        }
        if (lastLine) {
            if (select) {
                this.setCaretOffset(this.content.getCharCount(), -1);
            }
        } else {
            int[] alignment = new int[1];
            int offset = this.getOffsetAtPoint(this.columnX, y, caretLine, alignment);
            this.setCaretOffset(offset, alignment[0]);
        }
        int oldColumnX = this.columnX;
        int oldHScrollOffset = this.horizontalScrollOffset;
        if (select) {
            this.setMouseWordSelectionAnchor();
            this.doSelection(0x1000004);
        }
        this.showCaret();
        int hScrollChange = oldHScrollOffset - this.horizontalScrollOffset;
        this.columnX = oldColumnX + hScrollChange;
    }

    void doLineEnd() {
        int lineEndOffset;
        int caretLine = this.getCaretLine();
        int lineOffset = this.content.getOffsetAtLine(caretLine);
        if (this.wordWrap) {
            TextLayout layout = this.renderer.getTextLayout(caretLine);
            int offsetInLine = this.caretOffset - lineOffset;
            int lineIndex = this.getVisualLineIndex(layout, offsetInLine);
            int[] offsets = layout.getLineOffsets();
            lineEndOffset = lineOffset + offsets[lineIndex + 1];
            this.renderer.disposeTextLayout(layout);
        } else {
            int lineLength = this.content.getLine(caretLine).length();
            lineEndOffset = lineOffset + lineLength;
        }
        this.setCaretOffset(lineEndOffset, 0);
        this.showCaret();
    }

    void doLineStart() {
        int caretLine = this.getCaretLine();
        int lineOffset = this.content.getOffsetAtLine(caretLine);
        if (this.wordWrap) {
            TextLayout layout = this.renderer.getTextLayout(caretLine);
            int offsetInLine = this.caretOffset - lineOffset;
            int lineIndex = this.getVisualLineIndex(layout, offsetInLine);
            int[] offsets = layout.getLineOffsets();
            lineOffset += offsets[lineIndex];
            this.renderer.disposeTextLayout(layout);
        }
        this.setCaretOffset(lineOffset, 1);
        this.showCaret();
    }

    void doLineUp(boolean select) {
        int caretLine = this.getCaretLine();
        int y = 0;
        boolean firstLine = false;
        if (this.wordWrap) {
            int lineOffset = this.content.getOffsetAtLine(caretLine);
            int offsetInLine = this.caretOffset - lineOffset;
            TextLayout layout = this.renderer.getTextLayout(caretLine);
            int lineIndex = this.getVisualLineIndex(layout, offsetInLine);
            if (lineIndex == 0) {
                boolean bl = firstLine = caretLine == 0;
                if (!firstLine) {
                    y = this.renderer.getLineHeight(--caretLine) - 1;
                }
            } else {
                y = layout.getLineBounds((int)(lineIndex - 1)).y;
            }
            this.renderer.disposeTextLayout(layout);
        } else {
            firstLine = caretLine == 0;
            --caretLine;
        }
        if (firstLine) {
            if (select) {
                this.setCaretOffset(0, -1);
            }
        } else {
            int[] alignment = new int[1];
            int offset = this.getOffsetAtPoint(this.columnX, y, caretLine, alignment);
            this.setCaretOffset(offset, alignment[0]);
        }
        int oldColumnX = this.columnX;
        int oldHScrollOffset = this.horizontalScrollOffset;
        if (select) {
            this.setMouseWordSelectionAnchor();
        }
        this.showCaret();
        if (select) {
            this.doSelection(0x1000003);
        }
        int hScrollChange = oldHScrollOffset - this.horizontalScrollOffset;
        this.columnX = oldColumnX + hScrollChange;
    }

    void doMouseLinkCursor() {
        Display display = this.getDisplay();
        Point point = display.getCursorLocation();
        point = display.map(null, (Control)this, point);
        this.doMouseLinkCursor(point.x, point.y);
    }

    void doMouseLinkCursor(int x, int y) {
        int offset = this.getOffsetAtPoint(x, y, null, true);
        Display display = this.getDisplay();
        Cursor newCursor = this.cursor;
        if (this.renderer.hasLink(offset)) {
            newCursor = display.getSystemCursor(21);
        } else if (this.cursor == null) {
            int type = this.blockSelection ? 2 : 19;
            newCursor = display.getSystemCursor(type);
        }
        if (newCursor != this.getCursor()) {
            super.setCursor(newCursor);
        }
    }

    void doMouseLocationChange(int x, int y, boolean select) {
        boolean hchange;
        int line = this.getLineIndex(y);
        this.updateCaretDirection = true;
        if (this.blockSelection) {
            int[] trailing;
            int offset;
            x = Math.max(this.leftMargin, Math.min(x, this.clientAreaWidth - this.rightMargin));
            y = Math.max(this.topMargin, Math.min(y, this.clientAreaHeight - this.bottomMargin));
            if (this.doubleClickEnabled && this.clickCount > 1) {
                boolean wordSelect;
                boolean bl = wordSelect = (this.clickCount & 1) == 0;
                if (wordSelect) {
                    Point left = this.getPointAtOffset(this.doubleClickSelection.x);
                    int[] trailing2 = new int[1];
                    int offset2 = this.getOffsetAtPoint(x, y, trailing2, true);
                    if (offset2 != -1) {
                        if (x > left.x) {
                            offset2 = this.getWordNext(offset2 + trailing2[0], 8);
                            this.setBlockSelectionOffset(this.doubleClickSelection.x, offset2, true);
                        } else {
                            offset2 = this.getWordPrevious(offset2 + trailing2[0], 16);
                            this.setBlockSelectionOffset(this.doubleClickSelection.y, offset2, true);
                        }
                    } else if (x > left.x) {
                        this.setBlockSelectionLocation(left.x, left.y, x, y, true);
                    } else {
                        Point right = this.getPointAtOffset(this.doubleClickSelection.y);
                        this.setBlockSelectionLocation(right.x, right.y, x, y, true);
                    }
                } else {
                    this.setBlockSelectionLocation(this.blockXLocation, y, true);
                }
                return;
            }
            if (select) {
                if (this.blockXLocation == -1) {
                    this.setBlockSelectionOffset(this.caretOffset, false);
                }
            } else {
                this.clearBlockSelection(true, false);
            }
            if ((offset = this.getOffsetAtPoint(x, y, trailing = new int[1], true)) != -1) {
                if (select) {
                    this.setBlockSelectionOffset(offset + trailing[0], true);
                    return;
                }
            } else {
                if (this.isFixedLineHeight() && this.renderer.fixedPitch) {
                    int avg = this.renderer.averageCharWidth;
                    x = (x + avg / 2 - this.leftMargin + this.horizontalScrollOffset) / avg * avg + this.leftMargin - this.horizontalScrollOffset;
                }
                this.setBlockSelectionLocation(x, y, true);
                return;
            }
        }
        if (line < 0 || this.isSingleLine() && line > 0) {
            return;
        }
        int[] alignment = new int[1];
        int newCaretOffset = this.getOffsetAtPoint(x, y, alignment);
        int newCaretAlignemnt = alignment[0];
        if (this.doubleClickEnabled && this.clickCount > 1) {
            newCaretOffset = this.doMouseWordSelect(x, newCaretOffset, line);
        }
        int newCaretLine = this.content.getLineAtOffset(newCaretOffset);
        boolean vchange = y >= 0 && y < this.clientAreaHeight || newCaretLine == 0 || newCaretLine == this.content.getLineCount() - 1;
        boolean bl = hchange = x >= 0 && x < this.clientAreaWidth || this.wordWrap || newCaretLine != this.content.getLineAtOffset(this.caretOffset);
        if (vchange && hchange && (newCaretOffset != this.caretOffset || newCaretAlignemnt != this.caretAlignment)) {
            this.setCaretOffset(newCaretOffset, newCaretAlignemnt);
            if (select) {
                this.doMouseSelection();
            }
            this.showCaret();
        }
        if (!select) {
            this.setCaretOffset(newCaretOffset, newCaretAlignemnt);
            this.clearSelection(true);
        }
    }

    void doMouseSelection() {
        if (this.caretOffset <= this.selection.x || this.caretOffset > this.selection.x && this.caretOffset < this.selection.y && this.selectionAnchor == this.selection.x) {
            this.doSelection(0x1000003);
        } else {
            this.doSelection(0x1000004);
        }
    }

    int doMouseWordSelect(int x, int newCaretOffset, int line) {
        if (newCaretOffset < this.selectionAnchor && this.selectionAnchor == this.selection.x) {
            this.selectionAnchor = this.doubleClickSelection.y;
        } else if (newCaretOffset > this.selectionAnchor && this.selectionAnchor == this.selection.y) {
            this.selectionAnchor = this.doubleClickSelection.x;
        }
        if (x >= 0 && x < this.clientAreaWidth) {
            boolean wordSelect;
            boolean bl = wordSelect = (this.clickCount & 1) == 0;
            if (this.caretOffset == this.selection.x) {
                newCaretOffset = wordSelect ? this.getWordPrevious(newCaretOffset, 16) : this.content.getOffsetAtLine(line);
            } else if (wordSelect) {
                newCaretOffset = this.getWordNext(newCaretOffset, 8);
            } else {
                int lineEnd = this.content.getCharCount();
                if (line + 1 < this.content.getLineCount()) {
                    lineEnd = this.content.getOffsetAtLine(line + 1);
                }
                newCaretOffset = lineEnd;
            }
        }
        return newCaretOffset;
    }

    void doPageDown(boolean select, int height) {
        int lineCount;
        if (this.isSingleLine()) {
            return;
        }
        int oldColumnX = this.columnX;
        int oldHScrollOffset = this.horizontalScrollOffset;
        if (this.isFixedLineHeight()) {
            lineCount = this.content.getLineCount();
            int caretLine = this.getCaretLine();
            if (caretLine < lineCount - 1) {
                int lineHeight = this.renderer.getLineHeight();
                int lines = (height == -1 ? this.clientAreaHeight : height) / lineHeight;
                int scrollLines = Math.min(lineCount - caretLine - 1, lines);
                scrollLines = Math.max(1, scrollLines);
                int[] alignment = new int[1];
                int offset = this.getOffsetAtPoint(this.columnX, this.getLinePixel(caretLine + scrollLines), alignment);
                this.setCaretOffset(offset, alignment[0]);
                if (select) {
                    this.doSelection(0x1000004);
                }
                int verticalMaximum = lineCount * this.getVerticalIncrement();
                int pageSize = this.clientAreaHeight;
                int verticalScrollOffset = this.getVerticalScrollOffset();
                int scrollOffset = verticalScrollOffset + scrollLines * this.getVerticalIncrement();
                if (scrollOffset + pageSize > verticalMaximum) {
                    scrollOffset = verticalMaximum - pageSize;
                }
                if (scrollOffset > verticalScrollOffset) {
                    this.scrollVertical(scrollOffset - verticalScrollOffset, true);
                }
            }
        } else {
            Rectangle bounds;
            int i;
            int y;
            TextLayout layout;
            int lineHeight;
            int lineIndex;
            lineCount = this.content.getLineCount();
            int caretLine = this.getCaretLine();
            if (height == -1) {
                lineIndex = this.getPartialBottomIndex();
                int topY = this.getLinePixel(lineIndex);
                lineHeight = this.renderer.getLineHeight(lineIndex);
                height = topY;
                if (topY + lineHeight <= this.clientAreaHeight) {
                    height += lineHeight;
                } else if (this.wordWrap) {
                    layout = this.renderer.getTextLayout(lineIndex);
                    y = this.clientAreaHeight - topY;
                    i = 0;
                    while (i < layout.getLineCount()) {
                        bounds = layout.getLineBounds(i);
                        if (bounds.contains(bounds.x, y)) {
                            height += bounds.y;
                            break;
                        }
                        ++i;
                    }
                    this.renderer.disposeTextLayout(layout);
                }
            } else {
                lineIndex = this.getLineIndex(height);
                int topLineY = this.getLinePixel(lineIndex);
                if (this.wordWrap) {
                    layout = this.renderer.getTextLayout(lineIndex);
                    y = height - topLineY;
                    i = 0;
                    while (i < layout.getLineCount()) {
                        bounds = layout.getLineBounds(i);
                        if (bounds.contains(bounds.x, y)) {
                            height = topLineY + bounds.y + bounds.height;
                            break;
                        }
                        ++i;
                    }
                    this.renderer.disposeTextLayout(layout);
                } else {
                    height = topLineY + this.renderer.getLineHeight(lineIndex);
                }
            }
            int caretHeight = height;
            if (this.wordWrap) {
                layout = this.renderer.getTextLayout(caretLine);
                int offsetInLine = this.caretOffset - this.content.getOffsetAtLine(caretLine);
                lineIndex = this.getVisualLineIndex(layout, offsetInLine);
                caretHeight += layout.getLineBounds((int)lineIndex).y;
                this.renderer.disposeTextLayout(layout);
            }
            lineIndex = caretLine;
            lineHeight = this.renderer.getLineHeight(lineIndex);
            while (caretHeight - lineHeight >= 0 && lineIndex < lineCount - 1) {
                caretHeight -= lineHeight;
                lineHeight = this.renderer.getLineHeight(++lineIndex);
            }
            int[] alignment = new int[1];
            int offset = this.getOffsetAtPoint(this.columnX, caretHeight, lineIndex, alignment);
            this.setCaretOffset(offset, alignment[0]);
            if (select) {
                this.doSelection(0x1000004);
            }
            height = this.getAvailableHeightBellow(height);
            this.scrollVertical(height, true);
            if (height == 0) {
                this.setCaretLocation();
            }
        }
        this.showCaret();
        int hScrollChange = oldHScrollOffset - this.horizontalScrollOffset;
        this.columnX = oldColumnX + hScrollChange;
    }

    void doPageEnd() {
        if (this.isSingleLine()) {
            this.doLineEnd();
        } else {
            int bottomOffset;
            if (this.wordWrap) {
                int lineIndex = this.getPartialBottomIndex();
                TextLayout layout = this.renderer.getTextLayout(lineIndex);
                int y = this.clientAreaHeight - this.bottomMargin - this.getLinePixel(lineIndex);
                int index = layout.getLineCount() - 1;
                while (index >= 0) {
                    Rectangle bounds = layout.getLineBounds(index);
                    if (y >= bounds.y + bounds.height) break;
                    --index;
                }
                bottomOffset = index == -1 && lineIndex > 0 ? this.content.getOffsetAtLine(lineIndex - 1) + this.content.getLine(lineIndex - 1).length() : this.content.getOffsetAtLine(lineIndex) + Math.max(0, layout.getLineOffsets()[index + 1] - 1);
                this.renderer.disposeTextLayout(layout);
            } else {
                int lineIndex = this.getBottomIndex();
                bottomOffset = this.content.getOffsetAtLine(lineIndex) + this.content.getLine(lineIndex).length();
            }
            if (this.caretOffset < bottomOffset) {
                this.setCaretOffset(bottomOffset, 1);
                this.showCaret();
            }
        }
    }

    void doPageStart() {
        int topOffset;
        if (this.wordWrap) {
            int y;
            int lineIndex;
            if (this.topIndexY > 0) {
                lineIndex = this.topIndex - 1;
                y = this.renderer.getLineHeight(lineIndex) - this.topIndexY;
            } else {
                lineIndex = this.topIndex;
                y = -this.topIndexY;
            }
            TextLayout layout = this.renderer.getTextLayout(lineIndex);
            int index = 0;
            int lineCount = layout.getLineCount();
            while (index < lineCount) {
                Rectangle bounds = layout.getLineBounds(index);
                if (y <= bounds.y) break;
                ++index;
            }
            topOffset = index == lineCount ? this.content.getOffsetAtLine(lineIndex + 1) : this.content.getOffsetAtLine(lineIndex) + layout.getLineOffsets()[index];
            this.renderer.disposeTextLayout(layout);
        } else {
            topOffset = this.content.getOffsetAtLine(this.topIndex);
        }
        if (this.caretOffset > topOffset) {
            this.setCaretOffset(topOffset, 1);
            this.showCaret();
        }
    }

    void doPageUp(boolean select, int height) {
        int caretLine;
        if (this.isSingleLine()) {
            return;
        }
        int oldHScrollOffset = this.horizontalScrollOffset;
        int oldColumnX = this.columnX;
        if (this.isFixedLineHeight()) {
            caretLine = this.getCaretLine();
            if (caretLine > 0) {
                int verticalScrollOffset;
                int scrollOffset;
                int lineHeight = this.renderer.getLineHeight();
                int lines = (height == -1 ? this.clientAreaHeight : height) / lineHeight;
                int scrollLines = Math.max(1, Math.min(caretLine, lines));
                int[] alignment = new int[1];
                int offset = this.getOffsetAtPoint(this.columnX, this.getLinePixel(caretLine -= scrollLines), alignment);
                this.setCaretOffset(offset, alignment[0]);
                if (select) {
                    this.doSelection(0x1000003);
                }
                if ((scrollOffset = Math.max(0, (verticalScrollOffset = this.getVerticalScrollOffset()) - scrollLines * this.getVerticalIncrement())) < verticalScrollOffset) {
                    this.scrollVertical(scrollOffset - verticalScrollOffset, true);
                }
            }
        } else {
            TextLayout layout;
            int lineHeight;
            int lineIndex;
            caretLine = this.getCaretLine();
            if (height == -1) {
                if (this.topIndexY == 0) {
                    height = this.clientAreaHeight;
                } else {
                    int y;
                    if (this.topIndex > 0) {
                        lineIndex = this.topIndex - 1;
                        lineHeight = this.renderer.getLineHeight(lineIndex);
                        height = this.clientAreaHeight - this.topIndexY;
                        y = lineHeight - this.topIndexY;
                    } else {
                        lineIndex = this.topIndex;
                        lineHeight = this.renderer.getLineHeight(lineIndex);
                        height = this.clientAreaHeight - (lineHeight + this.topIndexY);
                        y = -this.topIndexY;
                    }
                    if (this.wordWrap) {
                        layout = this.renderer.getTextLayout(lineIndex);
                        int i = 0;
                        while (i < layout.getLineCount()) {
                            Rectangle bounds = layout.getLineBounds(i);
                            if (bounds.contains(bounds.x, y)) {
                                height += lineHeight - (bounds.y + bounds.height);
                                break;
                            }
                            ++i;
                        }
                        this.renderer.disposeTextLayout(layout);
                    }
                }
            } else {
                lineIndex = this.getLineIndex(this.clientAreaHeight - height);
                int topLineY = this.getLinePixel(lineIndex);
                if (this.wordWrap) {
                    layout = this.renderer.getTextLayout(lineIndex);
                    int y = topLineY;
                    int i = 0;
                    while (i < layout.getLineCount()) {
                        Rectangle bounds = layout.getLineBounds(i);
                        if (bounds.contains(bounds.x, y)) {
                            height = this.clientAreaHeight - (topLineY + bounds.y);
                            break;
                        }
                        ++i;
                    }
                    this.renderer.disposeTextLayout(layout);
                } else {
                    height = this.clientAreaHeight - topLineY;
                }
            }
            int caretHeight = height;
            if (this.wordWrap) {
                layout = this.renderer.getTextLayout(caretLine);
                int offsetInLine = this.caretOffset - this.content.getOffsetAtLine(caretLine);
                lineIndex = this.getVisualLineIndex(layout, offsetInLine);
                caretHeight += layout.getBounds().height - layout.getLineBounds((int)lineIndex).y;
                this.renderer.disposeTextLayout(layout);
            }
            lineIndex = caretLine;
            lineHeight = this.renderer.getLineHeight(lineIndex);
            while (caretHeight - lineHeight >= 0 && lineIndex > 0) {
                caretHeight -= lineHeight;
                lineHeight = this.renderer.getLineHeight(--lineIndex);
            }
            lineHeight = this.renderer.getLineHeight(lineIndex);
            int[] alignment = new int[1];
            int offset = this.getOffsetAtPoint(this.columnX, lineHeight - caretHeight, lineIndex, alignment);
            this.setCaretOffset(offset, alignment[0]);
            if (select) {
                this.doSelection(0x1000003);
            }
            height = this.getAvailableHeightAbove(height);
            this.scrollVertical(-height, true);
            if (height == 0) {
                this.setCaretLocation();
            }
        }
        this.showCaret();
        int hScrollChange = oldHScrollOffset - this.horizontalScrollOffset;
        this.columnX = oldColumnX + hScrollChange;
    }

    void doSelection(int direction) {
        int redrawStart = -1;
        int redrawEnd = -1;
        if (this.selectionAnchor == -1) {
            this.selectionAnchor = this.selection.x;
        }
        if (direction == 0x1000003) {
            if (this.caretOffset < this.selection.x) {
                redrawEnd = this.selection.x;
                redrawStart = this.selection.x = this.caretOffset;
                if (this.selection.y != this.selectionAnchor) {
                    redrawEnd = this.selection.y;
                    this.selection.y = this.selectionAnchor;
                }
            } else if (this.selectionAnchor == this.selection.x && this.caretOffset < this.selection.y) {
                redrawEnd = this.selection.y;
                redrawStart = this.selection.y = this.caretOffset;
            }
        } else if (this.caretOffset > this.selection.y) {
            redrawStart = this.selection.y;
            redrawEnd = this.selection.y = this.caretOffset;
            if (this.selection.x != this.selectionAnchor) {
                redrawStart = this.selection.x;
                this.selection.x = this.selectionAnchor;
            }
        } else if (this.selectionAnchor == this.selection.y && this.caretOffset > this.selection.x) {
            redrawStart = this.selection.x;
            redrawEnd = this.selection.x = this.caretOffset;
        }
        if (redrawStart != -1 && redrawEnd != -1) {
            this.internalRedrawRange(redrawStart, redrawEnd - redrawStart);
            this.sendSelectionEvent();
        }
        this.sendAccessibleTextCaretMoved();
    }

    void doSelectionCursorNext() {
        int caretLine = this.getCaretLine();
        int lineOffset = this.content.getOffsetAtLine(caretLine);
        int offsetInLine = this.caretOffset - lineOffset;
        if (offsetInLine < this.content.getLine(caretLine).length()) {
            TextLayout layout = this.renderer.getTextLayout(caretLine);
            offsetInLine = layout.getNextOffset(offsetInLine, 2);
            int lineStart = layout.getLineOffsets()[layout.getLineIndex(offsetInLine)];
            this.renderer.disposeTextLayout(layout);
            int offset = offsetInLine + lineOffset;
            int alignment = offsetInLine == lineStart ? 1 : 0;
            this.setCaretOffset(offset, alignment);
            this.showCaret();
        } else if (caretLine < this.content.getLineCount() - 1 && !this.isSingleLine()) {
            int offset = this.content.getOffsetAtLine(++caretLine);
            int alignment = 0;
            this.setCaretOffset(offset, alignment);
            this.showCaret();
        }
    }

    void doSelectionCursorPrevious() {
        int caretLine = this.getCaretLine();
        int lineOffset = this.content.getOffsetAtLine(caretLine);
        int offsetInLine = this.caretOffset - lineOffset;
        if (offsetInLine > 0) {
            int offset = this.getClusterPrevious(this.caretOffset, caretLine);
            this.setCaretOffset(offset, 1);
            this.showCaret();
        } else if (caretLine > 0) {
            lineOffset = this.content.getOffsetAtLine(--caretLine);
            int offset = lineOffset + this.content.getLine(caretLine).length();
            this.setCaretOffset(offset, 1);
            this.showCaret();
        }
    }

    void doSelectionLineDown() {
        int oldColumnX = this.columnX = this.getPointAtOffset((int)this.caretOffset).x;
        this.doLineDown(true);
        this.columnX = oldColumnX;
    }

    void doSelectionLineUp() {
        int oldColumnX = this.columnX = this.getPointAtOffset((int)this.caretOffset).x;
        this.doLineUp(true);
        this.columnX = oldColumnX;
    }

    void doSelectionPageDown(int pixels) {
        int oldColumnX = this.columnX = this.getPointAtOffset((int)this.caretOffset).x;
        this.doPageDown(true, pixels);
        this.columnX = oldColumnX;
    }

    void doSelectionPageUp(int pixels) {
        int oldColumnX = this.columnX = this.getPointAtOffset((int)this.caretOffset).x;
        this.doPageUp(true, pixels);
        this.columnX = oldColumnX;
    }

    void doSelectionWordNext() {
        int offset = this.getWordNext(this.caretOffset, 4);
        if (!this.isSingleLine() || this.content.getLineAtOffset(this.caretOffset) == this.content.getLineAtOffset(offset)) {
            this.setCaretOffset(offset, 1);
            this.showCaret();
        }
    }

    void doSelectionWordPrevious() {
        int offset = this.getWordPrevious(this.caretOffset, 4);
        this.setCaretOffset(offset, 1);
        this.showCaret();
    }

    void doVisualPrevious() {
        int offset = this.getClusterPrevious(this.caretOffset, this.getCaretLine());
        this.setCaretOffset(offset, -1);
        this.showCaret();
    }

    void doVisualNext() {
        int offset = this.getClusterNext(this.caretOffset, this.getCaretLine());
        this.setCaretOffset(offset, -1);
        this.showCaret();
    }

    void doWordNext() {
        if (this.selection.y - this.selection.x > 0) {
            this.setCaretOffset(this.selection.y, -1);
            this.showCaret();
        } else {
            this.doSelectionWordNext();
        }
    }

    void doWordPrevious() {
        if (this.selection.y - this.selection.x > 0) {
            this.setCaretOffset(this.selection.x, -1);
            this.showCaret();
        } else {
            this.doSelectionWordPrevious();
        }
    }

    void endAutoScroll() {
        this.autoScrollDirection = 0;
    }

    public Color getBackground() {
        this.checkWidget();
        if (this.background == null) {
            return this.getDisplay().getSystemColor(25);
        }
        return this.background;
    }

    public int getBaseline() {
        this.checkWidget();
        return this.renderer.getBaseline();
    }

    public int getBaseline(int offset) {
        this.checkWidget();
        if (offset < 0 || offset > this.content.getCharCount()) {
            SWT.error(6);
        }
        if (this.isFixedLineHeight()) {
            return this.renderer.getBaseline();
        }
        int lineIndex = this.content.getLineAtOffset(offset);
        int lineOffset = this.content.getOffsetAtLine(lineIndex);
        TextLayout layout = this.renderer.getTextLayout(lineIndex);
        int lineInParagraph = layout.getLineIndex(Math.min(offset - lineOffset, layout.getText().length()));
        FontMetrics metrics = layout.getLineMetrics(lineInParagraph);
        this.renderer.disposeTextLayout(layout);
        return metrics.getAscent() + metrics.getLeading();
    }

    public boolean getBidiColoring() {
        this.checkWidget();
        return this.bidiColoring;
    }

    public boolean getBlockSelection() {
        this.checkWidget();
        return this.blockSelection;
    }

    Rectangle getBlockSelectionPosition() {
        int right;
        int left;
        int lastLine;
        int firstLine = this.getLineIndex(this.blockYAnchor - this.getVerticalScrollOffset());
        if (firstLine > (lastLine = this.getLineIndex(this.blockYLocation - this.getVerticalScrollOffset()))) {
            int temp = firstLine;
            firstLine = lastLine;
            lastLine = temp;
        }
        if ((left = this.blockXAnchor) > (right = this.blockXLocation)) {
            left = this.blockXLocation;
            right = this.blockXAnchor;
        }
        return new Rectangle(left - this.horizontalScrollOffset, firstLine, right - this.horizontalScrollOffset, lastLine);
    }

    public Rectangle getBlockSelectionBounds() {
        Rectangle rect;
        if (this.blockSelection && this.blockXLocation != -1) {
            rect = this.getBlockSelectionRectangle();
        } else {
            Point startPoint = this.getPointAtOffset(this.selection.x);
            Point endPoint = this.getPointAtOffset(this.selection.y);
            int height = this.getLineHeight(this.selection.y);
            rect = new Rectangle(startPoint.x, startPoint.y, endPoint.x - startPoint.x, endPoint.y + height - startPoint.y);
            if (this.selection.x == this.selection.y) {
                rect.width = this.getCaretWidth();
            }
        }
        rect.x += this.horizontalScrollOffset;
        rect.y += this.getVerticalScrollOffset();
        return rect;
    }

    Rectangle getBlockSelectionRectangle() {
        Rectangle rect = this.getBlockSelectionPosition();
        rect.y = this.getLinePixel(rect.y);
        rect.width -= rect.x;
        rect.height = this.getLinePixel(rect.height + 1) - rect.y;
        return rect;
    }

    String getBlockSelectionText(String delimiter) {
        Rectangle rect = this.getBlockSelectionPosition();
        int firstLine = rect.y;
        int lastLine = rect.height;
        int left = rect.x;
        int right = rect.width;
        StringBuffer buffer = new StringBuffer();
        int lineIndex = firstLine;
        while (lineIndex <= lastLine) {
            int end;
            int start = this.getOffsetAtPoint(left, 0, lineIndex, null);
            if (start > (end = this.getOffsetAtPoint(right, 0, lineIndex, null))) {
                int temp = start;
                start = end;
                end = temp;
            }
            String text = this.content.getTextRange(start, end - start);
            buffer.append(text);
            if (lineIndex < lastLine) {
                buffer.append(delimiter);
            }
            ++lineIndex;
        }
        return buffer.toString();
    }

    int getBottomIndex() {
        int bottomIndex;
        if (this.isFixedLineHeight()) {
            int lineCount = 1;
            int lineHeight = this.renderer.getLineHeight();
            if (lineHeight != 0) {
                int partialTopLineHeight = this.topIndex * lineHeight - this.getVerticalScrollOffset();
                lineCount = (this.clientAreaHeight - partialTopLineHeight) / lineHeight;
            }
            bottomIndex = Math.min(this.content.getLineCount() - 1, this.topIndex + Math.max(0, lineCount - 1));
        } else {
            int lineHeight;
            int linePixel;
            int clientAreaHeight = this.clientAreaHeight - this.bottomMargin;
            bottomIndex = this.getLineIndex(clientAreaHeight);
            if (bottomIndex > 0 && (linePixel = this.getLinePixel(bottomIndex)) + (lineHeight = this.renderer.getLineHeight(bottomIndex)) > clientAreaHeight && this.getLinePixel(bottomIndex - 1) >= this.topMargin) {
                --bottomIndex;
            }
        }
        return bottomIndex;
    }

    public int getBottomMargin() {
        this.checkWidget();
        return this.bottomMargin;
    }

    Rectangle getBoundsAtOffset(int offset) {
        int lineEnd;
        Rectangle bounds;
        int lineIndex = this.content.getLineAtOffset(offset);
        int lineOffset = this.content.getOffsetAtLine(lineIndex);
        String line = this.content.getLine(lineIndex);
        if (line.length() != 0) {
            int offsetInLine = offset - lineOffset;
            TextLayout layout = this.renderer.getTextLayout(lineIndex);
            bounds = layout.getBounds(offsetInLine, offsetInLine);
            this.renderer.disposeTextLayout(layout);
        } else {
            bounds = new Rectangle(0, 0, 0, this.renderer.getLineHeight());
        }
        if (offset == this.caretOffset && !this.wordWrap && offset == (lineEnd = lineOffset + line.length())) {
            bounds.width += this.getCaretWidth();
        }
        bounds.x += this.leftMargin - this.horizontalScrollOffset;
        bounds.y += this.getLinePixel(lineIndex);
        return bounds;
    }

    public int getCaretOffset() {
        this.checkWidget();
        return this.caretOffset;
    }

    int getCaretWidth() {
        Caret caret = this.getCaret();
        if (caret == null) {
            return 0;
        }
        return caret.getSize().x;
    }

    Object getClipboardContent(int clipboardType) {
        TextTransfer plainTextTransfer = TextTransfer.getInstance();
        return this.clipboard.getContents(plainTextTransfer, clipboardType);
    }

    int getClusterNext(int offset, int lineIndex) {
        int lineOffset = this.content.getOffsetAtLine(lineIndex);
        TextLayout layout = this.renderer.getTextLayout(lineIndex);
        offset -= lineOffset;
        offset = layout.getNextOffset(offset, 2);
        this.renderer.disposeTextLayout(layout);
        return offset += lineOffset;
    }

    int getClusterPrevious(int offset, int lineIndex) {
        int lineOffset = this.content.getOffsetAtLine(lineIndex);
        TextLayout layout = this.renderer.getTextLayout(lineIndex);
        offset -= lineOffset;
        offset = layout.getPreviousOffset(offset, 2);
        this.renderer.disposeTextLayout(layout);
        return offset += lineOffset;
    }

    public StyledTextContent getContent() {
        this.checkWidget();
        return this.content;
    }

    public boolean getDragDetect() {
        this.checkWidget();
        return this.dragDetect;
    }

    public boolean getDoubleClickEnabled() {
        this.checkWidget();
        return this.doubleClickEnabled;
    }

    public boolean getEditable() {
        this.checkWidget();
        return this.editable;
    }

    public Color getForeground() {
        this.checkWidget();
        if (this.foreground == null) {
            return this.getDisplay().getSystemColor(24);
        }
        return this.foreground;
    }

    int getHorizontalIncrement() {
        return this.renderer.averageCharWidth;
    }

    public int getHorizontalIndex() {
        this.checkWidget();
        return this.horizontalScrollOffset / this.getHorizontalIncrement();
    }

    public int getHorizontalPixel() {
        this.checkWidget();
        return this.horizontalScrollOffset;
    }

    public int getIndent() {
        this.checkWidget();
        return this.indent;
    }

    public boolean getJustify() {
        this.checkWidget();
        return this.justify;
    }

    public int getKeyBinding(int key) {
        this.checkWidget();
        Integer action = (Integer)this.keyActionMap.get(new Integer(key));
        return action == null ? 0 : action;
    }

    public int getCharCount() {
        this.checkWidget();
        return this.content.getCharCount();
    }

    public String getLine(int lineIndex) {
        this.checkWidget();
        if (lineIndex < 0 || lineIndex > 0 && lineIndex >= this.content.getLineCount()) {
            SWT.error(6);
        }
        return this.content.getLine(lineIndex);
    }

    public int getLineAlignment(int index) {
        this.checkWidget();
        if (index < 0 || index > this.content.getLineCount()) {
            SWT.error(5);
        }
        return this.renderer.getLineAlignment(index, this.alignment);
    }

    public int getLineAtOffset(int offset) {
        this.checkWidget();
        if (offset < 0 || offset > this.getCharCount()) {
            SWT.error(6);
        }
        return this.content.getLineAtOffset(offset);
    }

    public Color getLineBackground(int index) {
        this.checkWidget();
        if (index < 0 || index > this.content.getLineCount()) {
            SWT.error(5);
        }
        return this.isListening(3001) ? null : this.renderer.getLineBackground(index, null);
    }

    public Bullet getLineBullet(int index) {
        this.checkWidget();
        if (index < 0 || index > this.content.getLineCount()) {
            SWT.error(5);
        }
        return this.isListening(3002) ? null : this.renderer.getLineBullet(index, null);
    }

    StyledTextEvent getLineBackgroundData(int lineOffset, String line) {
        return this.sendLineEvent(3001, lineOffset, line);
    }

    public int getLineCount() {
        this.checkWidget();
        return this.content.getLineCount();
    }

    int getLineCountWhole() {
        if (this.isFixedLineHeight()) {
            int lineHeight = this.renderer.getLineHeight();
            return lineHeight != 0 ? this.clientAreaHeight / lineHeight : 1;
        }
        return this.getBottomIndex() - this.topIndex + 1;
    }

    public String getLineDelimiter() {
        this.checkWidget();
        return this.content.getLineDelimiter();
    }

    public int getLineHeight() {
        this.checkWidget();
        return this.renderer.getLineHeight();
    }

    public int getLineHeight(int offset) {
        this.checkWidget();
        if (offset < 0 || offset > this.content.getCharCount()) {
            SWT.error(6);
        }
        if (this.isFixedLineHeight()) {
            return this.renderer.getLineHeight();
        }
        int lineIndex = this.content.getLineAtOffset(offset);
        int lineOffset = this.content.getOffsetAtLine(lineIndex);
        TextLayout layout = this.renderer.getTextLayout(lineIndex);
        int lineInParagraph = layout.getLineIndex(Math.min(offset - lineOffset, layout.getText().length()));
        int height = layout.getLineBounds((int)lineInParagraph).height;
        this.renderer.disposeTextLayout(layout);
        return height;
    }

    public int getLineIndent(int index) {
        this.checkWidget();
        if (index < 0 || index > this.content.getLineCount()) {
            SWT.error(5);
        }
        return this.isListening(3002) ? 0 : this.renderer.getLineIndent(index, this.indent);
    }

    public boolean getLineJustify(int index) {
        this.checkWidget();
        if (index < 0 || index > this.content.getLineCount()) {
            SWT.error(5);
        }
        return this.isListening(3002) ? false : this.renderer.getLineJustify(index, this.justify);
    }

    public int getLineSpacing() {
        this.checkWidget();
        return this.lineSpacing;
    }

    StyledTextEvent getLineStyleData(int lineOffset, String line) {
        return this.sendLineEvent(3002, lineOffset, line);
    }

    public int getLinePixel(int lineIndex) {
        this.checkWidget();
        int lineCount = this.content.getLineCount();
        lineIndex = Math.max(0, Math.min(lineCount, lineIndex));
        if (this.isFixedLineHeight()) {
            int lineHeight = this.renderer.getLineHeight();
            return lineIndex * lineHeight - this.getVerticalScrollOffset() + this.topMargin;
        }
        if (lineIndex == this.topIndex) {
            return this.topIndexY + this.topMargin;
        }
        int height = this.topIndexY;
        if (lineIndex > this.topIndex) {
            int i = this.topIndex;
            while (i < lineIndex) {
                height += this.renderer.getLineHeight(i);
                ++i;
            }
        } else {
            int i = this.topIndex - 1;
            while (i >= lineIndex) {
                height -= this.renderer.getLineHeight(i);
                --i;
            }
        }
        return height + this.topMargin;
    }

    public int getLineIndex(int y) {
        this.checkWidget();
        y -= this.topMargin;
        if (this.isFixedLineHeight()) {
            int lineHeight = this.renderer.getLineHeight();
            int lineIndex = (y + this.getVerticalScrollOffset()) / lineHeight;
            int lineCount = this.content.getLineCount();
            lineIndex = Math.max(0, Math.min(lineCount - 1, lineIndex));
            return lineIndex;
        }
        if (y == this.topIndexY) {
            return this.topIndex;
        }
        int line = this.topIndex;
        if (y < this.topIndexY) {
            while (y < this.topIndexY && line > 0) {
                y += this.renderer.getLineHeight(--line);
            }
        } else {
            int lineCount = this.content.getLineCount();
            int lineHeight = this.renderer.getLineHeight(line);
            while (y - lineHeight >= this.topIndexY && line < lineCount - 1) {
                y -= lineHeight;
                lineHeight = this.renderer.getLineHeight(++line);
            }
        }
        return line;
    }

    public int[] getLineTabStops(int index) {
        this.checkWidget();
        if (index < 0 || index > this.content.getLineCount()) {
            SWT.error(5);
        }
        if (this.isListening(3002)) {
            return null;
        }
        int[] tabs = this.renderer.getLineTabStops(index, null);
        if (tabs == null) {
            tabs = this.tabs;
        }
        if (tabs == null) {
            return new int[]{this.renderer.tabWidth};
        }
        int[] result = new int[tabs.length];
        System.arraycopy(tabs, 0, result, 0, tabs.length);
        return result;
    }

    public int getLineWrapIndent(int index) {
        this.checkWidget();
        if (index < 0 || index > this.content.getLineCount()) {
            SWT.error(5);
        }
        return this.isListening(3002) ? 0 : this.renderer.getLineWrapIndent(index, this.wrapIndent);
    }

    public int getLeftMargin() {
        this.checkWidget();
        return this.leftMargin - this.alignmentMargin;
    }

    public Point getLocationAtOffset(int offset) {
        this.checkWidget();
        if (offset < 0 || offset > this.getCharCount()) {
            SWT.error(6);
        }
        return this.getPointAtOffset(offset);
    }

    public int getOffsetAtLine(int lineIndex) {
        this.checkWidget();
        if (lineIndex < 0 || lineIndex > 0 && lineIndex >= this.content.getLineCount()) {
            SWT.error(6);
        }
        return this.content.getOffsetAtLine(lineIndex);
    }

    public int getOffsetAtLocation(Point point) {
        int[] trailing;
        int offset;
        this.checkWidget();
        if (point == null) {
            SWT.error(4);
        }
        if ((offset = this.getOffsetAtPoint(point.x, point.y, trailing = new int[1], true)) == -1) {
            SWT.error(5);
        }
        return offset + trailing[0];
    }

    int getOffsetAtPoint(int x, int y, int[] alignment) {
        int lineIndex = this.getLineIndex(y);
        return this.getOffsetAtPoint(x, y -= this.getLinePixel(lineIndex), lineIndex, alignment);
    }

    int getOffsetAtPoint(int x, int y, int lineIndex, int[] alignment) {
        TextLayout layout = this.renderer.getTextLayout(lineIndex);
        int[] trailing = new int[1];
        int offsetInLine = layout.getOffset(x += this.horizontalScrollOffset - this.leftMargin, y, trailing);
        if (alignment != null) {
            alignment[0] = 1;
        }
        if (trailing[0] != 0) {
            int lineInParagraph = layout.getLineIndex(offsetInLine + trailing[0]);
            int lineStart = layout.getLineOffsets()[lineInParagraph];
            if (offsetInLine + trailing[0] == lineStart) {
                offsetInLine += trailing[0];
                if (alignment != null) {
                    alignment[0] = 0;
                }
            } else {
                String line = this.content.getLine(lineIndex);
                int level = 0;
                if (alignment != null) {
                    int offset = offsetInLine;
                    while (offset > 0 && Character.isDigit(line.charAt(offset))) {
                        --offset;
                    }
                    level = offset == 0 && Character.isDigit(line.charAt(offset)) ? (this.isMirrored() ? 1 : 0) : layout.getLevel(offset) & 1;
                }
                offsetInLine += trailing[0];
                if (alignment != null) {
                    int trailingLevel = layout.getLevel(offsetInLine) & 1;
                    alignment[0] = (level ^ trailingLevel) != 0 ? 0 : 1;
                }
            }
        }
        this.renderer.disposeTextLayout(layout);
        return offsetInLine + this.content.getOffsetAtLine(lineIndex);
    }

    int getOffsetAtPoint(int x, int y, int[] trailing, boolean inTextOnly) {
        if (inTextOnly && y + this.getVerticalScrollOffset() < 0 || x + this.horizontalScrollOffset < 0) {
            return -1;
        }
        int bottomIndex = this.getPartialBottomIndex();
        int height = this.getLinePixel(bottomIndex + 1);
        if (inTextOnly && y > height) {
            return -1;
        }
        int lineIndex = this.getLineIndex(y);
        int lineOffset = this.content.getOffsetAtLine(lineIndex);
        TextLayout layout = this.renderer.getTextLayout(lineIndex);
        int offset = layout.getOffset(x += this.horizontalScrollOffset - this.leftMargin, y -= this.getLinePixel(lineIndex), trailing);
        Rectangle rect = layout.getLineBounds(layout.getLineIndex(offset));
        this.renderer.disposeTextLayout(layout);
        if (inTextOnly && (rect.x > x || x > rect.x + rect.width)) {
            return -1;
        }
        return offset + lineOffset;
    }

    public int getOrientation() {
        return super.getOrientation();
    }

    int getPartialBottomIndex() {
        if (this.isFixedLineHeight()) {
            int lineHeight = this.renderer.getLineHeight();
            int partialLineCount = Compatibility.ceil(this.clientAreaHeight, lineHeight);
            return Math.max(0, Math.min(this.content.getLineCount(), this.topIndex + partialLineCount) - 1);
        }
        return this.getLineIndex(this.clientAreaHeight - this.bottomMargin);
    }

    int getPartialTopIndex() {
        if (this.isFixedLineHeight()) {
            int lineHeight = this.renderer.getLineHeight();
            return this.getVerticalScrollOffset() / lineHeight;
        }
        return this.topIndexY <= 0 ? this.topIndex : this.topIndex - 1;
    }

    String getPlatformDelimitedText(TextWriter writer) {
        int end = writer.getStart() + writer.getCharCount();
        int startLine = this.content.getLineAtOffset(writer.getStart());
        int endLine = this.content.getLineAtOffset(end);
        String endLineText = this.content.getLine(endLine);
        int endLineOffset = this.content.getOffsetAtLine(endLine);
        int i = startLine;
        while (i <= endLine) {
            writer.writeLine(this.content.getLine(i), this.content.getOffsetAtLine(i));
            if (i < endLine) {
                writer.writeLineDelimiter(PlatformLineDelimiter);
            }
            ++i;
        }
        if (end > endLineOffset + endLineText.length()) {
            writer.writeLineDelimiter(PlatformLineDelimiter);
        }
        writer.close();
        return writer.toString();
    }

    public int[] getRanges() {
        int[] ranges;
        this.checkWidget();
        if (!this.isListening(3002) && (ranges = this.renderer.getRanges(0, this.content.getCharCount())) != null) {
            return ranges;
        }
        return new int[0];
    }

    public int[] getRanges(int start, int length) {
        int[] ranges;
        this.checkWidget();
        int contentLength = this.getCharCount();
        int end = start + length;
        if (start > end || start < 0 || end > contentLength) {
            SWT.error(6);
        }
        if (!this.isListening(3002) && (ranges = this.renderer.getRanges(start, length)) != null) {
            return ranges;
        }
        return new int[0];
    }

    public int getRightMargin() {
        this.checkWidget();
        return this.rightMargin;
    }

    public Point getSelection() {
        this.checkWidget();
        return new Point(this.selection.x, this.selection.y);
    }

    public Point getSelectionRange() {
        this.checkWidget();
        return new Point(this.selection.x, this.selection.y - this.selection.x);
    }

    public int[] getSelectionRanges() {
        this.checkWidget();
        if (this.blockSelection && this.blockXLocation != -1) {
            Rectangle rect = this.getBlockSelectionPosition();
            int firstLine = rect.y;
            int lastLine = rect.height;
            int left = rect.x;
            int right = rect.width;
            int[] ranges = new int[(lastLine - firstLine + 1) * 2];
            int index = 0;
            int lineIndex = firstLine;
            while (lineIndex <= lastLine) {
                int end;
                int start = this.getOffsetAtPoint(left, 0, lineIndex, null);
                if (start > (end = this.getOffsetAtPoint(right, 0, lineIndex, null))) {
                    int temp = start;
                    start = end;
                    end = temp;
                }
                ranges[index++] = start;
                ranges[index++] = end - start;
                ++lineIndex;
            }
            return ranges;
        }
        return new int[]{this.selection.x, this.selection.y - this.selection.x};
    }

    public Color getSelectionBackground() {
        this.checkWidget();
        if (this.selectionBackground == null) {
            return this.getDisplay().getSystemColor(26);
        }
        return this.selectionBackground;
    }

    public int getSelectionCount() {
        this.checkWidget();
        if (this.blockSelection && this.blockXLocation != -1) {
            return this.getBlockSelectionText(this.content.getLineDelimiter()).length();
        }
        return this.getSelectionRange().y;
    }

    public Color getSelectionForeground() {
        this.checkWidget();
        if (this.selectionForeground == null) {
            return this.getDisplay().getSystemColor(27);
        }
        return this.selectionForeground;
    }

    public String getSelectionText() {
        this.checkWidget();
        if (this.blockSelection && this.blockXLocation != -1) {
            return this.getBlockSelectionText(this.content.getLineDelimiter());
        }
        return this.content.getTextRange(this.selection.x, this.selection.y - this.selection.x);
    }

    StyledTextEvent getBidiSegments(int lineOffset, String line) {
        if (!this.isBidi()) {
            return null;
        }
        if (!this.isListening(3007)) {
            StyledTextEvent event = new StyledTextEvent(this.content);
            event.segments = this.getBidiSegmentsCompatibility(line, lineOffset);
            return event;
        }
        StyledTextEvent event = this.sendLineEvent(3007, lineOffset, line);
        if (event == null || event.segments == null || event.segments.length == 0) {
            return null;
        }
        int lineLength = line.length();
        int[] segments = event.segments;
        int segmentCount = segments.length;
        if (event.segmentsChars == null) {
            if (segments[0] != 0) {
                SWT.error(5);
            }
            int i = 1;
            while (i < segmentCount) {
                if (segments[i] <= segments[i - 1] || segments[i] > lineLength) {
                    SWT.error(5);
                }
                ++i;
            }
            if (segments[segmentCount - 1] != lineLength) {
                segments = new int[segmentCount + 1];
                System.arraycopy(event.segments, 0, segments, 0, segmentCount);
                segments[segmentCount] = lineLength;
            }
            event.segments = segments;
        } else {
            int i = 1;
            while (i < segmentCount) {
                if (event.segments[i] < event.segments[i - 1] || event.segments[i] > lineLength) {
                    SWT.error(5);
                }
                ++i;
            }
        }
        return event;
    }

    int[] getBidiSegmentsCompatibility(String line, int lineOffset) {
        int lineLength = line.length();
        if (!this.bidiColoring) {
            int[] nArray = new int[2];
            nArray[1] = lineLength;
            return nArray;
        }
        StyleRange[] styles = null;
        StyledTextEvent event = this.getLineStyleData(lineOffset, line);
        styles = event != null ? event.styles : this.renderer.getStyleRanges(lineOffset, lineLength, true);
        if (styles == null || styles.length == 0) {
            int[] nArray = new int[2];
            nArray[1] = lineLength;
            return nArray;
        }
        int k = 0;
        int count = 1;
        while (k < styles.length && styles[k].start == 0 && styles[k].length == lineLength) {
            ++k;
        }
        int[] offsets = new int[(styles.length - k) * 2 + 2];
        int i = k;
        while (i < styles.length) {
            StyleRange style = styles[i];
            int styleLineStart = Math.max(style.start - lineOffset, 0);
            int styleLineEnd = Math.max(style.start + style.length - lineOffset, styleLineStart);
            styleLineEnd = Math.min(styleLineEnd, line.length());
            if (i > 0 && count > 1 && (styleLineStart >= offsets[count - 2] && styleLineStart <= offsets[count - 1] || styleLineEnd >= offsets[count - 2] && styleLineEnd <= offsets[count - 1]) && style.similarTo(styles[i - 1])) {
                offsets[count - 2] = Math.min(offsets[count - 2], styleLineStart);
                offsets[count - 1] = Math.max(offsets[count - 1], styleLineEnd);
            } else {
                if (styleLineStart > offsets[count - 1]) {
                    offsets[count] = styleLineStart;
                    ++count;
                }
                offsets[count] = styleLineEnd;
                ++count;
            }
            ++i;
        }
        if (lineLength > offsets[count - 1]) {
            offsets[count] = lineLength;
            ++count;
        }
        if (count == offsets.length) {
            return offsets;
        }
        int[] result = new int[count];
        System.arraycopy(offsets, 0, result, 0, count);
        return result;
    }

    public StyleRange getStyleRangeAtOffset(int offset) {
        StyleRange[] ranges;
        this.checkWidget();
        if (offset < 0 || offset >= this.getCharCount()) {
            SWT.error(5);
        }
        if (!this.isListening(3002) && (ranges = this.renderer.getStyleRanges(offset, 1, true)) != null) {
            return ranges[0];
        }
        return null;
    }

    public StyleRange[] getStyleRanges() {
        this.checkWidget();
        return this.getStyleRanges(0, this.content.getCharCount(), true);
    }

    public StyleRange[] getStyleRanges(boolean includeRanges) {
        this.checkWidget();
        return this.getStyleRanges(0, this.content.getCharCount(), includeRanges);
    }

    public StyleRange[] getStyleRanges(int start, int length) {
        this.checkWidget();
        return this.getStyleRanges(start, length, true);
    }

    public StyleRange[] getStyleRanges(int start, int length, boolean includeRanges) {
        StyleRange[] ranges;
        this.checkWidget();
        int contentLength = this.getCharCount();
        int end = start + length;
        if (start > end || start < 0 || end > contentLength) {
            SWT.error(6);
        }
        if (!this.isListening(3002) && (ranges = this.renderer.getStyleRanges(start, length, includeRanges)) != null) {
            return ranges;
        }
        return new StyleRange[0];
    }

    public int getTabs() {
        this.checkWidget();
        return this.tabLength;
    }

    public int[] getTabStops() {
        this.checkWidget();
        if (this.tabs == null) {
            return new int[]{this.renderer.tabWidth};
        }
        int[] result = new int[this.tabs.length];
        System.arraycopy(this.tabs, 0, result, 0, this.tabs.length);
        return result;
    }

    public String getText() {
        this.checkWidget();
        return this.content.getTextRange(0, this.getCharCount());
    }

    public String getText(int start, int end) {
        this.checkWidget();
        int contentLength = this.getCharCount();
        if (start < 0 || start >= contentLength || end < 0 || end >= contentLength || start > end) {
            SWT.error(6);
        }
        return this.content.getTextRange(start, end - start + 1);
    }

    public Rectangle getTextBounds(int start, int end) {
        Rectangle rect;
        this.checkWidget();
        int contentLength = this.getCharCount();
        if (start < 0 || start >= contentLength || end < 0 || end >= contentLength || start > end) {
            SWT.error(6);
        }
        int lineStart = this.content.getLineAtOffset(start);
        int lineEnd = this.content.getLineAtOffset(end);
        int y = this.getLinePixel(lineStart);
        int height = 0;
        int left = Integer.MAX_VALUE;
        int right = 0;
        int i = lineStart;
        while (i <= lineEnd) {
            int lineOffset = this.content.getOffsetAtLine(i);
            TextLayout layout = this.renderer.getTextLayout(i);
            int length = layout.getText().length();
            if (length > 0) {
                if (i == lineStart) {
                    rect = i == lineEnd ? layout.getBounds(start - lineOffset, end - lineOffset) : layout.getBounds(start - lineOffset, length);
                    y += rect.y;
                } else {
                    rect = i == lineEnd ? layout.getBounds(0, end - lineOffset) : layout.getBounds();
                }
                left = Math.min(left, rect.x);
                right = Math.max(right, rect.x + rect.width);
                height += rect.height;
            } else {
                height += this.renderer.getLineHeight();
            }
            this.renderer.disposeTextLayout(layout);
            ++i;
        }
        rect = new Rectangle(left, y, right - left, height);
        rect.x += this.leftMargin - this.horizontalScrollOffset;
        return rect;
    }

    public String getTextRange(int start, int length) {
        this.checkWidget();
        int contentLength = this.getCharCount();
        int end = start + length;
        if (start > end || start < 0 || end > contentLength) {
            SWT.error(6);
        }
        return this.content.getTextRange(start, length);
    }

    public int getTextLimit() {
        this.checkWidget();
        return this.textLimit;
    }

    public int getTopIndex() {
        this.checkWidget();
        return this.topIndex;
    }

    public int getTopMargin() {
        this.checkWidget();
        return this.topMargin;
    }

    public int getTopPixel() {
        this.checkWidget();
        return this.getVerticalScrollOffset();
    }

    int getVerticalIncrement() {
        return this.renderer.getLineHeight();
    }

    int getVerticalScrollOffset() {
        if (this.verticalScrollOffset == -1) {
            this.renderer.calculate(0, this.topIndex);
            int height = 0;
            int i = 0;
            while (i < this.topIndex) {
                height += this.renderer.getLineHeight(i);
                ++i;
            }
            this.verticalScrollOffset = height -= this.topIndexY;
        }
        return this.verticalScrollOffset;
    }

    int getVisualLineIndex(TextLayout layout, int offsetInLine) {
        int lineIndex = layout.getLineIndex(offsetInLine);
        int[] offsets = layout.getLineOffsets();
        if (lineIndex != 0 && offsetInLine == offsets[lineIndex]) {
            int lineY = layout.getLineBounds((int)lineIndex).y;
            int caretY = this.getCaret().getLocation().y - this.topMargin - this.getLinePixel(this.getCaretLine());
            if (lineY > caretY) {
                --lineIndex;
            }
            this.caretAlignment = 1;
        }
        return lineIndex;
    }

    int getCaretDirection() {
        if (!this.isBidiCaret()) {
            return -1;
        }
        if (this.ime.getCompositionOffset() != -1) {
            return -1;
        }
        if (!this.updateCaretDirection && this.caretDirection != 0) {
            return this.caretDirection;
        }
        this.updateCaretDirection = false;
        int caretLine = this.getCaretLine();
        int lineOffset = this.content.getOffsetAtLine(caretLine);
        String line = this.content.getLine(caretLine);
        int offset = this.caretOffset - lineOffset;
        int lineLength = line.length();
        if (lineLength == 0) {
            return this.isMirrored() ? 131072 : 16384;
        }
        if (this.caretAlignment == 0 && offset > 0) {
            --offset;
        }
        if (offset == lineLength && offset > 0) {
            --offset;
        }
        while (offset > 0 && Character.isDigit(line.charAt(offset))) {
            --offset;
        }
        if (offset == 0 && Character.isDigit(line.charAt(offset))) {
            return this.isMirrored() ? 131072 : 16384;
        }
        TextLayout layout = this.renderer.getTextLayout(caretLine);
        int level = layout.getLevel(offset);
        this.renderer.disposeTextLayout(layout);
        return (level & 1) != 0 ? 131072 : 16384;
    }

    int getCaretLine() {
        return this.content.getLineAtOffset(this.caretOffset);
    }

    int getWrapWidth() {
        if (this.wordWrap && !this.isSingleLine()) {
            int width = this.clientAreaWidth - this.leftMargin - this.rightMargin;
            return width > 0 ? width : 1;
        }
        return -1;
    }

    int getWordNext(int offset, int movement) {
        return this.getWordNext(offset, movement, false);
    }

    int getWordNext(int offset, int movement, boolean ignoreListener) {
        String lineText;
        int lineOffset;
        int newOffset;
        if (offset >= this.getCharCount()) {
            newOffset = offset;
            int lineIndex = this.content.getLineCount() - 1;
            lineOffset = this.content.getOffsetAtLine(lineIndex);
            lineText = this.content.getLine(lineIndex);
        } else {
            int lineLength;
            int lineIndex = this.content.getLineAtOffset(offset);
            lineOffset = this.content.getOffsetAtLine(lineIndex);
            if (offset >= lineOffset + (lineLength = (lineText = this.content.getLine(lineIndex)).length())) {
                newOffset = this.content.getOffsetAtLine(lineIndex + 1);
            } else {
                TextLayout layout = this.renderer.getTextLayout(lineIndex);
                newOffset = lineOffset + layout.getNextOffset(offset - lineOffset, movement);
                this.renderer.disposeTextLayout(layout);
            }
        }
        if (ignoreListener) {
            return newOffset;
        }
        return this.sendWordBoundaryEvent(3009, movement, offset, newOffset, lineText, lineOffset);
    }

    int getWordPrevious(int offset, int movement) {
        return this.getWordPrevious(offset, movement, false);
    }

    int getWordPrevious(int offset, int movement, boolean ignoreListener) {
        String lineText;
        int lineOffset;
        int newOffset;
        if (offset <= 0) {
            newOffset = 0;
            int lineIndex = this.content.getLineAtOffset(newOffset);
            lineOffset = this.content.getOffsetAtLine(lineIndex);
            lineText = this.content.getLine(lineIndex);
        } else {
            int lineIndex = this.content.getLineAtOffset(offset);
            lineOffset = this.content.getOffsetAtLine(lineIndex);
            lineText = this.content.getLine(lineIndex);
            if (offset == lineOffset) {
                String nextLineText = this.content.getLine(lineIndex - 1);
                int nextLineOffset = this.content.getOffsetAtLine(lineIndex - 1);
                newOffset = nextLineOffset + nextLineText.length();
            } else {
                int layoutOffset = Math.min(offset - lineOffset, lineText.length());
                TextLayout layout = this.renderer.getTextLayout(lineIndex);
                newOffset = lineOffset + layout.getPreviousOffset(layoutOffset, movement);
                this.renderer.disposeTextLayout(layout);
            }
        }
        if (ignoreListener) {
            return newOffset;
        }
        return this.sendWordBoundaryEvent(3010, movement, offset, newOffset, lineText, lineOffset);
    }

    public boolean getWordWrap() {
        this.checkWidget();
        return this.wordWrap;
    }

    public int getWrapIndent() {
        this.checkWidget();
        return this.wrapIndent;
    }

    Point getPointAtOffset(int offset) {
        Point point;
        int lineIndex = this.content.getLineAtOffset(offset);
        String line = this.content.getLine(lineIndex);
        int lineOffset = this.content.getOffsetAtLine(lineIndex);
        int offsetInLine = offset - lineOffset;
        int lineLength = line.length();
        if (lineIndex < this.content.getLineCount() - 1) {
            int endLineOffset = this.content.getOffsetAtLine(lineIndex + 1) - 1;
            if (lineLength < offsetInLine && offsetInLine <= endLineOffset) {
                offsetInLine = lineLength;
            }
        }
        TextLayout layout = this.renderer.getTextLayout(lineIndex);
        if (lineLength != 0 && offsetInLine <= lineLength) {
            if (offsetInLine == lineLength) {
                offsetInLine = layout.getPreviousOffset(offsetInLine, 2);
                point = layout.getLocation(offsetInLine, true);
            } else {
                switch (this.caretAlignment) {
                    case 1: {
                        point = layout.getLocation(offsetInLine, false);
                        break;
                    }
                    default: {
                        if (offsetInLine == 0) {
                            point = layout.getLocation(offsetInLine, false);
                            break;
                        }
                        offsetInLine = layout.getPreviousOffset(offsetInLine, 2);
                        point = layout.getLocation(offsetInLine, true);
                        break;
                    }
                }
            }
        } else {
            point = new Point(layout.getIndent(), 0);
        }
        this.renderer.disposeTextLayout(layout);
        point.x += this.leftMargin - this.horizontalScrollOffset;
        point.y += this.getLinePixel(lineIndex);
        return point;
    }

    public void insert(String string) {
        this.checkWidget();
        if (string == null) {
            SWT.error(4);
        }
        if (this.blockSelection) {
            this.insertBlockSelectionText(string, false);
        } else {
            Point sel = this.getSelectionRange();
            this.replaceTextRange(sel.x, sel.y, string);
        }
    }

    int insertBlockSelectionText(String text, boolean fillWithSpaces) {
        int right;
        int left;
        int lastLine;
        int firstLine;
        int lineCount = 1;
        int i = 0;
        while (i < text.length()) {
            char ch = text.charAt(i);
            if (ch == '\n' || ch == '\r') {
                ++lineCount;
                if (ch == '\r' && i + 1 < text.length() && text.charAt(i + 1) == '\n') {
                    ++i;
                }
            }
            ++i;
        }
        String[] lines = new String[lineCount];
        int start = 0;
        lineCount = 0;
        int i2 = 0;
        while (i2 < text.length()) {
            char ch = text.charAt(i2);
            if (ch == '\n' || ch == '\r') {
                lines[lineCount++] = text.substring(start, i2);
                if (ch == '\r' && i2 + 1 < text.length() && text.charAt(i2 + 1) == '\n') {
                    ++i2;
                }
                start = i2 + 1;
            }
            ++i2;
        }
        lines[lineCount++] = text.substring(start);
        if (fillWithSpaces) {
            int maxLength = 0;
            int i3 = 0;
            while (i3 < lines.length) {
                int length = lines[i3].length();
                maxLength = Math.max(maxLength, length);
                ++i3;
            }
            i3 = 0;
            while (i3 < lines.length) {
                String line = lines[i3];
                int length = line.length();
                if (length < maxLength) {
                    int numSpaces = maxLength - length;
                    StringBuffer buffer = new StringBuffer(length + numSpaces);
                    buffer.append(line);
                    int j = 0;
                    while (j < numSpaces) {
                        buffer.append(' ');
                        ++j;
                    }
                    lines[i3] = buffer.toString();
                }
                ++i3;
            }
        }
        if (this.blockXLocation != -1) {
            Rectangle rect = this.getBlockSelectionPosition();
            firstLine = rect.y;
            lastLine = rect.height;
            left = rect.x;
            right = rect.width;
        } else {
            firstLine = lastLine = this.getCaretLine();
            left = right = this.getPointAtOffset((int)this.caretOffset).x;
        }
        start = this.caretOffset;
        int caretLine = this.getCaretLine();
        int index = 0;
        int lineIndex = firstLine;
        while (lineIndex <= lastLine) {
            String string = index < lineCount ? lines[index++] : "";
            int lineStart = this.sendTextEvent(left, right, lineIndex, string, fillWithSpaces);
            if (lineIndex == caretLine) {
                start = lineStart;
            }
            ++lineIndex;
        }
        while (index < lineCount) {
            int lineStart = this.sendTextEvent(left, left, lineIndex, lines[index++], fillWithSpaces);
            if (lineIndex == caretLine) {
                start = lineStart;
            }
            ++lineIndex;
        }
        return start;
    }

    void insertBlockSelectionText(char key, int action) {
        if (key == '\r' || key == '\n') {
            return;
        }
        Rectangle rect = this.getBlockSelectionPosition();
        int firstLine = rect.y;
        int lastLine = rect.height;
        int left = rect.x;
        int right = rect.width;
        int[] trailing = new int[1];
        int offset = 0;
        int delta = 0;
        String text = key != '\u0000' ? new String(new char[]{key}) : "";
        int length = text.length();
        int lineIndex = firstLine;
        while (lineIndex <= lastLine) {
            boolean outOfLine;
            String line = this.content.getLine(lineIndex);
            int lineOffset = this.content.getOffsetAtLine(lineIndex);
            int lineEndOffset = lineOffset + line.length();
            int linePixel = this.getLinePixel(lineIndex);
            int start = this.getOffsetAtPoint(left, linePixel, trailing, true);
            boolean bl = outOfLine = start == -1;
            start = outOfLine ? (left < this.leftMargin ? lineOffset : lineEndOffset) : (start += trailing[0]);
            int end = this.getOffsetAtPoint(right, linePixel, trailing, true);
            end = end == -1 ? (right < this.leftMargin ? lineOffset : lineEndOffset) : (end += trailing[0]);
            if (start > end) {
                int temp = start;
                start = end;
                end = temp;
            }
            if (start == end && !outOfLine) {
                switch (action) {
                    case 8: {
                        if (start <= lineOffset) break;
                        start = this.getClusterPrevious(start, lineIndex);
                        break;
                    }
                    case 127: {
                        if (end >= lineEndOffset) break;
                        end = this.getClusterNext(end, lineIndex);
                    }
                }
            }
            if (outOfLine) {
                if (line.length() >= delta) {
                    delta = line.length();
                    offset = lineEndOffset + length;
                }
            } else {
                offset = start + length;
                delta = this.content.getCharCount();
            }
            Event event = new Event();
            event.text = text;
            event.start = start;
            event.end = end;
            this.sendKeyEvent(event);
            ++lineIndex;
        }
        int x = this.getPointAtOffset((int)offset).x;
        int verticalScrollOffset = this.getVerticalScrollOffset();
        this.setBlockSelectionLocation(x, this.blockYAnchor - verticalScrollOffset, x, this.blockYLocation - verticalScrollOffset, false);
    }

    void installDefaultContent() {
        this.textChangeListener = new TextChangeListener(){

            public void textChanging(TextChangingEvent event) {
                StyledText.this.handleTextChanging(event);
            }

            public void textChanged(TextChangedEvent event) {
                StyledText.this.handleTextChanged(event);
            }

            public void textSet(TextChangedEvent event) {
                StyledText.this.handleTextSet(event);
            }
        };
        this.content = new DefaultContent();
        this.content.addTextChangeListener(this.textChangeListener);
    }

    void installListeners() {
        ScrollBar verticalBar = this.getVerticalBar();
        ScrollBar horizontalBar = this.getHorizontalBar();
        this.listener = new Listener(){

            public void handleEvent(Event event) {
                switch (event.type) {
                    case 12: {
                        StyledText.this.handleDispose(event);
                        break;
                    }
                    case 1: {
                        StyledText.this.handleKeyDown(event);
                        break;
                    }
                    case 2: {
                        StyledText.this.handleKeyUp(event);
                        break;
                    }
                    case 3: {
                        StyledText.this.handleMouseDown(event);
                        break;
                    }
                    case 4: {
                        StyledText.this.handleMouseUp(event);
                        break;
                    }
                    case 5: {
                        StyledText.this.handleMouseMove(event);
                        break;
                    }
                    case 9: {
                        StyledText.this.handlePaint(event);
                        break;
                    }
                    case 11: {
                        StyledText.this.handleResize(event);
                        break;
                    }
                    case 31: {
                        StyledText.this.handleTraverse(event);
                    }
                }
            }
        };
        this.addListener(12, this.listener);
        this.addListener(1, this.listener);
        this.addListener(2, this.listener);
        this.addListener(3, this.listener);
        this.addListener(4, this.listener);
        this.addListener(5, this.listener);
        this.addListener(9, this.listener);
        this.addListener(11, this.listener);
        this.addListener(31, this.listener);
        this.ime.addListener(43, new Listener(){

            public void handleEvent(Event event) {
                switch (event.detail) {
                    case 3: {
                        StyledText.this.handleCompositionSelection(event);
                        break;
                    }
                    case 1: {
                        StyledText.this.handleCompositionChanged(event);
                        break;
                    }
                    case 2: {
                        StyledText.this.handleCompositionOffset(event);
                    }
                }
            }
        });
        if (verticalBar != null) {
            verticalBar.addListener(13, new Listener(){

                public void handleEvent(Event event) {
                    StyledText.this.handleVerticalScroll(event);
                }
            });
        }
        if (horizontalBar != null) {
            horizontalBar.addListener(13, new Listener(){

                public void handleEvent(Event event) {
                    StyledText.this.handleHorizontalScroll(event);
                }
            });
        }
    }

    void internalRedrawRange(int start, int length) {
        int endIndex;
        if (length <= 0) {
            return;
        }
        int end = start + length;
        int startLine = this.content.getLineAtOffset(start);
        int endLine = this.content.getLineAtOffset(end);
        int partialBottomIndex = this.getPartialBottomIndex();
        int partialTopIndex = this.getPartialTopIndex();
        if (startLine > partialBottomIndex || endLine < partialTopIndex) {
            return;
        }
        if (partialTopIndex > startLine) {
            startLine = partialTopIndex;
            start = 0;
        } else {
            start -= this.content.getOffsetAtLine(startLine);
        }
        if (partialBottomIndex < endLine) {
            endLine = partialBottomIndex + 1;
            end = 0;
        } else {
            end -= this.content.getOffsetAtLine(endLine);
        }
        TextLayout layout = this.renderer.getTextLayout(startLine);
        int lineX = this.leftMargin - this.horizontalScrollOffset;
        int startLineY = this.getLinePixel(startLine);
        int[] offsets = layout.getLineOffsets();
        int startIndex = layout.getLineIndex(Math.min(start, layout.getText().length()));
        if (this.wordWrap && startIndex > 0 && offsets[startIndex] == start) {
            Rectangle rect = layout.getLineBounds(startIndex - 1);
            rect.x = rect.width;
            rect.width = this.clientAreaWidth - this.rightMargin - rect.x;
            rect.x += lineX;
            rect.y += startLineY;
            super.redraw(rect.x, rect.y, rect.width, rect.height, false);
        }
        if (startLine == endLine && startIndex == (endIndex = layout.getLineIndex(Math.min(end, layout.getText().length())))) {
            Rectangle rect = layout.getBounds(start, end - 1);
            rect.x += lineX;
            rect.y += startLineY;
            super.redraw(rect.x, rect.y, rect.width, rect.height, false);
            this.renderer.disposeTextLayout(layout);
            return;
        }
        Rectangle startRect = layout.getBounds(start, offsets[startIndex + 1] - 1);
        if (startRect.height == 0) {
            Rectangle bounds = layout.getLineBounds(startIndex);
            startRect.x = bounds.width;
            startRect.y = bounds.y;
            startRect.height = bounds.height;
        }
        startRect.x += lineX;
        startRect.y += startLineY;
        startRect.width = this.clientAreaWidth - this.rightMargin - startRect.x;
        super.redraw(startRect.x, startRect.y, startRect.width, startRect.height, false);
        if (startLine != endLine) {
            this.renderer.disposeTextLayout(layout);
            layout = this.renderer.getTextLayout(endLine);
            offsets = layout.getLineOffsets();
        }
        int endIndex2 = layout.getLineIndex(Math.min(end, layout.getText().length()));
        Rectangle endRect = layout.getBounds(offsets[endIndex2], end - 1);
        if (endRect.height == 0) {
            Rectangle bounds = layout.getLineBounds(endIndex2);
            endRect.y = bounds.y;
            endRect.height = bounds.height;
        }
        endRect.x += lineX;
        endRect.y += this.getLinePixel(endLine);
        super.redraw(endRect.x, endRect.y, endRect.width, endRect.height, false);
        this.renderer.disposeTextLayout(layout);
        int y = startRect.y + startRect.height;
        if (endRect.y > y) {
            super.redraw(this.leftMargin, y, this.clientAreaWidth - this.rightMargin - this.leftMargin, endRect.y - y, false);
        }
    }

    void handleCompositionOffset(Event event) {
        int[] trailing = new int[1];
        event.index = this.getOffsetAtPoint(event.x, event.y, trailing, true);
        event.count = trailing[0];
    }

    void handleCompositionSelection(Event event) {
        event.start = this.selection.x;
        event.end = this.selection.y;
        event.text = this.getSelectionText();
    }

    void handleCompositionChanged(Event event) {
        String text = event.text;
        int start = event.start;
        int end = event.end;
        int length = text.length();
        if (length == this.ime.getCommitCount()) {
            this.content.replaceTextRange(start, end - start, "");
            this.setCaretOffset(this.ime.getCompositionOffset(), -1);
            this.caretWidth = 0;
            this.caretDirection = 0;
        } else {
            this.content.replaceTextRange(start, end - start, text);
            int alignment = -1;
            if (this.ime.getWideCaret()) {
                start = this.ime.getCompositionOffset();
                int lineIndex = this.getCaretLine();
                int lineOffset = this.content.getOffsetAtLine(lineIndex);
                TextLayout layout = this.renderer.getTextLayout(lineIndex);
                this.caretWidth = layout.getBounds((int)(start - lineOffset), (int)(start + length - 1 - lineOffset)).width;
                this.renderer.disposeTextLayout(layout);
                alignment = 1;
            }
            this.setCaretOffset(this.ime.getCaretOffset(), alignment);
        }
        this.showCaret();
    }

    void handleDispose(Event event) {
        this.removeListener(12, this.listener);
        this.notifyListeners(12, event);
        event.type = 0;
        this.clipboard.dispose();
        if (this.renderer != null) {
            this.renderer.dispose();
            this.renderer = null;
        }
        if (this.content != null) {
            this.content.removeTextChangeListener(this.textChangeListener);
            this.content = null;
        }
        if (this.defaultCaret != null) {
            this.defaultCaret.dispose();
            this.defaultCaret = null;
        }
        if (this.leftCaretBitmap != null) {
            this.leftCaretBitmap.dispose();
            this.leftCaretBitmap = null;
        }
        if (this.rightCaretBitmap != null) {
            this.rightCaretBitmap.dispose();
            this.rightCaretBitmap = null;
        }
        if (this.isBidiCaret()) {
            BidiUtil.removeLanguageListener(this);
        }
        this.selectionBackground = null;
        this.selectionForeground = null;
        this.marginColor = null;
        this.textChangeListener = null;
        this.selection = null;
        this.doubleClickSelection = null;
        this.keyActionMap = null;
        this.background = null;
        this.foreground = null;
        this.clipboard = null;
        this.tabs = null;
    }

    void handleHorizontalScroll(Event event) {
        int scrollPixel = this.getHorizontalBar().getSelection() - this.horizontalScrollOffset;
        this.scrollHorizontal(scrollPixel, false);
    }

    void handleKey(Event event) {
        int action;
        this.caretAlignment = 0;
        if (event.keyCode != 0) {
            action = this.getKeyBinding(event.keyCode | event.stateMask);
        } else {
            action = this.getKeyBinding(event.character | event.stateMask);
            if (action == 0 && (event.stateMask & 0x40000) != 0 && event.character <= '\u001f') {
                int c = event.character + 64;
                action = this.getKeyBinding(c | event.stateMask);
            }
        }
        if (action == 0) {
            boolean ignore = false;
            if (IS_MAC) {
                ignore = (event.stateMask ^ 0x400000) == 0 || (event.stateMask ^ 0x420000) == 0;
            } else if (IS_MOTIF) {
                ignore = (event.stateMask ^ 0x40000) == 0 || (event.stateMask ^ 0x60000) == 0;
            } else {
                boolean bl = ignore = (event.stateMask ^ 0x10000) == 0 || (event.stateMask ^ 0x40000) == 0 || (event.stateMask ^ 0x30000) == 0 || (event.stateMask ^ 0x60000) == 0;
            }
            if (!ignore && event.character > '\u001f' && event.character != '\u007f' || event.character == '\r' || event.character == '\n' || event.character == '\t') {
                this.doContent(event.character);
                this.update();
            }
        } else {
            this.invokeAction(action);
        }
    }

    void handleKeyDown(Event event) {
        if (this.clipboardSelection == null) {
            this.clipboardSelection = new Point(this.selection.x, this.selection.y);
        }
        this.newOrientation = 0;
        Event verifyEvent = new Event();
        verifyEvent.character = event.character;
        verifyEvent.keyCode = event.keyCode;
        verifyEvent.keyLocation = event.keyLocation;
        verifyEvent.stateMask = event.stateMask;
        verifyEvent.doit = true;
        this.notifyListeners(3005, verifyEvent);
        if (verifyEvent.doit) {
            if ((event.stateMask & SWT.MODIFIER_MASK) == 262144 && event.keyCode == 131072 && this.isBidiCaret()) {
                this.newOrientation = event.keyLocation == 16384 ? 0x2000000 : 0x4000000;
            }
            this.handleKey(event);
        }
    }

    void handleKeyUp(Event event) {
        if (this.clipboardSelection != null && (this.clipboardSelection.x != this.selection.x || this.clipboardSelection.y != this.selection.y)) {
            this.copySelection(2);
        }
        this.clipboardSelection = null;
        if (this.newOrientation != 0) {
            if (this.newOrientation != this.getOrientation()) {
                Event e = new Event();
                e.doit = true;
                this.notifyListeners(44, e);
                if (e.doit) {
                    this.setOrientation(this.newOrientation);
                }
            }
            this.newOrientation = 0;
        }
    }

    void handleMouseDown(Event event) {
        String text;
        this.forceFocus();
        if (this.dragDetect && this.checkDragDetect(event)) {
            return;
        }
        if (event.button == 2 && (text = (String)this.getClipboardContent(2)) != null && text.length() > 0) {
            this.doMouseLocationChange(event.x, event.y, false);
            Event e = new Event();
            e.start = this.selection.x;
            e.end = this.selection.y;
            e.text = this.getModelDelimitedText(text);
            this.sendKeyEvent(e);
        }
        if (event.button != 1 || IS_MAC && (event.stateMask & SWT.MOD4) != 0) {
            return;
        }
        this.clickCount = event.count;
        if (this.clickCount == 1) {
            boolean select = (event.stateMask & SWT.MOD2) != 0;
            this.doMouseLocationChange(event.x, event.y, select);
        } else if (this.doubleClickEnabled) {
            boolean wordSelect = (this.clickCount & 1) == 0;
            int offset = this.getOffsetAtPoint(event.x, event.y, null);
            int lineIndex = this.content.getLineAtOffset(offset);
            int lineOffset = this.content.getOffsetAtLine(lineIndex);
            if (wordSelect) {
                int min = this.blockSelection ? lineOffset : 0;
                int max = this.blockSelection ? lineOffset + this.content.getLine(lineIndex).length() : this.content.getCharCount();
                int start = Math.max(min, this.getWordPrevious(offset, 16));
                int end = Math.min(max, this.getWordNext(start, 8));
                this.setSelection(start, end - start, false, true);
                this.sendSelectionEvent();
            } else if (this.blockSelection) {
                this.setBlockSelectionLocation(this.leftMargin, event.y, this.clientAreaWidth - this.rightMargin, event.y, true);
            } else {
                int lineEnd = this.content.getCharCount();
                if (lineIndex + 1 < this.content.getLineCount()) {
                    lineEnd = this.content.getOffsetAtLine(lineIndex + 1);
                }
                this.setSelection(lineOffset, lineEnd - lineOffset, false, false);
                this.sendSelectionEvent();
            }
            this.doubleClickSelection = new Point(this.selection.x, this.selection.y);
            this.showCaret();
        }
    }

    void handleMouseMove(Event event) {
        if (this.clickCount > 0) {
            this.update();
            this.doAutoScroll(event);
            this.doMouseLocationChange(event.x, event.y, true);
        }
        if (this.renderer.hasLinks) {
            this.doMouseLinkCursor(event.x, event.y);
        }
    }

    void handleMouseUp(Event event) {
        this.clickCount = 0;
        this.endAutoScroll();
        if (event.button == 1) {
            this.copySelection(2);
        }
    }

    void handlePaint(Event event) {
        if (event.width == 0 || event.height == 0) {
            return;
        }
        if (this.clientAreaWidth == 0 || this.clientAreaHeight == 0) {
            return;
        }
        int startLine = this.getLineIndex(event.y);
        int y = this.getLinePixel(startLine);
        int endY = event.y + event.height;
        GC gc = event.gc;
        Color background = this.getBackground();
        Color foreground = this.getForeground();
        if (endY > 0) {
            int lineCount = this.isSingleLine() ? 1 : this.content.getLineCount();
            int x = this.leftMargin - this.horizontalScrollOffset;
            int i = startLine;
            while (y < endY && i < lineCount) {
                y += this.renderer.drawLine(i, x, y, gc, background, foreground);
                ++i;
            }
            if (y < endY) {
                gc.setBackground(background);
                this.drawBackground(gc, 0, y, this.clientAreaWidth, endY - y);
            }
        }
        if (this.blockSelection && this.blockXLocation != -1) {
            gc.setBackground(this.getSelectionBackground());
            Rectangle rect = this.getBlockSelectionRectangle();
            gc.drawRectangle(rect.x, rect.y, Math.max(1, rect.width - 1), Math.max(1, rect.height - 1));
            gc.setAdvanced(true);
            if (gc.getAdvanced()) {
                gc.setAlpha(100);
                gc.fillRectangle(rect);
                gc.setAdvanced(false);
            }
        }
        gc.setBackground(this.marginColor != null ? this.marginColor : background);
        if (this.topMargin > 0) {
            this.drawBackground(gc, 0, 0, this.clientAreaWidth, this.topMargin);
        }
        if (this.bottomMargin > 0) {
            this.drawBackground(gc, 0, this.clientAreaHeight - this.bottomMargin, this.clientAreaWidth, this.bottomMargin);
        }
        if (this.leftMargin - this.alignmentMargin > 0) {
            this.drawBackground(gc, 0, 0, this.leftMargin - this.alignmentMargin, this.clientAreaHeight);
        }
        if (this.rightMargin > 0) {
            this.drawBackground(gc, this.clientAreaWidth - this.rightMargin, 0, this.rightMargin, this.clientAreaHeight);
        }
    }

    void handleResize(Event event) {
        int oldHeight = this.clientAreaHeight;
        int oldWidth = this.clientAreaWidth;
        Rectangle clientArea = this.getClientArea();
        this.clientAreaHeight = clientArea.height;
        this.clientAreaWidth = clientArea.width;
        if (oldWidth != this.clientAreaWidth && this.rightMargin > 0) {
            int x = (oldWidth < this.clientAreaWidth ? oldWidth : this.clientAreaWidth) - this.rightMargin;
            super.redraw(x, 0, this.rightMargin, oldHeight, false);
        }
        if (oldHeight != this.clientAreaHeight && this.bottomMargin > 0) {
            int y = (oldHeight < this.clientAreaHeight ? oldHeight : this.clientAreaHeight) - this.bottomMargin;
            super.redraw(0, y, oldWidth, this.bottomMargin, false);
        }
        if (this.wordWrap) {
            if (oldWidth != this.clientAreaWidth) {
                this.renderer.reset(0, this.content.getLineCount());
                this.verticalScrollOffset = -1;
                this.renderer.calculateIdle();
                super.redraw();
            }
            if (oldHeight != this.clientAreaHeight) {
                if (oldHeight == 0) {
                    this.topIndexY = 0;
                }
                this.setScrollBars(true);
            }
            this.setCaretLocation();
        } else {
            ScrollBar horizontalBar;
            this.renderer.calculateClientArea();
            this.setScrollBars(true);
            this.claimRightFreeSpace();
            if (this.clientAreaWidth != 0 && (horizontalBar = this.getHorizontalBar()) != null && horizontalBar.getVisible() && this.horizontalScrollOffset != horizontalBar.getSelection()) {
                horizontalBar.setSelection(this.horizontalScrollOffset);
                this.horizontalScrollOffset = horizontalBar.getSelection();
            }
        }
        this.updateCaretVisibility();
        this.claimBottomFreeSpace();
        this.setAlignment();
    }

    void handleTextChanged(TextChangedEvent event) {
        int offset = this.ime.getCompositionOffset();
        if (offset != -1 && this.lastTextChangeStart < offset) {
            this.ime.setCompositionOffset(offset + this.lastTextChangeNewCharCount - this.lastTextChangeReplaceCharCount);
        }
        int firstLine = this.content.getLineAtOffset(this.lastTextChangeStart);
        this.resetCache(firstLine, 0);
        if (!this.isFixedLineHeight() && this.topIndex > firstLine) {
            this.topIndex = firstLine;
            this.topIndexY = 0;
            super.redraw();
        } else {
            int lastLine = firstLine + this.lastTextChangeNewLineCount;
            int firstLineTop = this.getLinePixel(firstLine);
            int newLastLineBottom = this.getLinePixel(lastLine + 1);
            if (this.lastLineBottom != newLastLineBottom) {
                super.redraw();
            } else {
                super.redraw(0, firstLineTop, this.clientAreaWidth, newLastLineBottom - firstLineTop, false);
                this.redrawLinesBullet(this.renderer.redrawLines);
            }
        }
        this.renderer.redrawLines = null;
        if (!this.blockSelection || this.blockXLocation == -1) {
            this.updateSelection(this.lastTextChangeStart, this.lastTextChangeReplaceCharCount, this.lastTextChangeNewCharCount);
        }
        if (this.lastTextChangeReplaceLineCount > 0 || this.wordWrap) {
            this.claimBottomFreeSpace();
        }
        if (this.lastTextChangeReplaceCharCount > 0) {
            this.claimRightFreeSpace();
        }
        this.sendAccessibleTextChanged(this.lastTextChangeStart, this.lastTextChangeNewCharCount, 0);
        this.lastCharCount += this.lastTextChangeNewCharCount;
        this.lastCharCount -= this.lastTextChangeReplaceCharCount;
        this.setAlignment();
    }

    void handleTextChanging(TextChangingEvent event) {
        int destY;
        if (event.replaceCharCount < 0) {
            event.start += event.replaceCharCount;
            event.replaceCharCount *= -1;
        }
        this.lastTextChangeStart = event.start;
        this.lastTextChangeNewLineCount = event.newLineCount;
        this.lastTextChangeNewCharCount = event.newCharCount;
        this.lastTextChangeReplaceLineCount = event.replaceLineCount;
        this.lastTextChangeReplaceCharCount = event.replaceCharCount;
        int lineIndex = this.content.getLineAtOffset(event.start);
        int srcY = this.getLinePixel(lineIndex + event.replaceLineCount + 1);
        this.lastLineBottom = destY = this.getLinePixel(lineIndex + 1) + event.newLineCount * this.renderer.getLineHeight();
        if (srcY < 0 && destY < 0) {
            this.lastLineBottom += srcY - destY;
            this.verticalScrollOffset += destY - srcY;
            this.calculateTopIndex(destY - srcY);
            this.setScrollBars(true);
        } else {
            this.scrollText(srcY, destY);
        }
        this.sendAccessibleTextChanged(this.lastTextChangeStart, 0, this.lastTextChangeReplaceCharCount);
        this.renderer.textChanging(event);
        int newEndOfText = this.content.getCharCount() - event.replaceCharCount + event.newCharCount;
        if (this.caretOffset > newEndOfText) {
            this.setCaretOffset(newEndOfText, -1);
        }
    }

    void handleTextSet(TextChangedEvent event) {
        this.reset();
        int newCharCount = this.getCharCount();
        this.sendAccessibleTextChanged(0, newCharCount, this.lastCharCount);
        this.lastCharCount = newCharCount;
        this.setAlignment();
    }

    void handleTraverse(Event event) {
        switch (event.detail) {
            case 2: 
            case 256: 
            case 512: {
                event.doit = true;
                break;
            }
            case 4: 
            case 8: 
            case 16: {
                if ((this.getStyle() & 4) != 0) {
                    event.doit = true;
                    break;
                }
                if (this.editable && (event.stateMask & SWT.MODIFIER_MASK) == 0) break;
                event.doit = true;
            }
        }
    }

    void handleVerticalScroll(Event event) {
        int scrollPixel = this.getVerticalBar().getSelection() - this.getVerticalScrollOffset();
        this.scrollVertical(scrollPixel, false);
    }

    void initializeAccessible() {
        final Accessible accessible = this.getAccessible();
        accessible.addAccessibleListener(new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                String name = null;
                String text = StyledText.this.getAssociatedLabel();
                if (text != null) {
                    name = StyledText.this.stripMnemonic(text);
                }
                e.result = name;
            }

            public void getHelp(AccessibleEvent e) {
                e.result = StyledText.this.getToolTipText();
            }

            public void getKeyboardShortcut(AccessibleEvent e) {
                char mnemonic;
                String shortcut = null;
                String text = StyledText.this.getAssociatedLabel();
                if (text != null && (mnemonic = StyledText.this._findMnemonic(text)) != '\u0000') {
                    shortcut = "Alt+" + mnemonic;
                }
                e.result = shortcut;
            }
        });
        accessible.addAccessibleTextListener(new AccessibleTextExtendedAdapter(){

            public void getCaretOffset(AccessibleTextEvent e) {
                e.offset = StyledText.this.getCaretOffset();
            }

            public void setCaretOffset(AccessibleTextEvent e) {
                StyledText.this.setCaretOffset(e.offset);
                e.result = "OK";
            }

            public void getSelectionRange(AccessibleTextEvent e) {
                Point selection = StyledText.this.getSelectionRange();
                e.offset = selection.x;
                e.length = selection.y;
            }

            public void addSelection(AccessibleTextEvent e) {
                StyledText st = StyledText.this;
                Point point = st.getSelection();
                if (point.x == point.y) {
                    int end = e.end;
                    if (end == -1) {
                        end = st.getCharCount();
                    }
                    st.setSelection(e.start, end);
                    e.result = "OK";
                }
            }

            public void getSelection(AccessibleTextEvent e) {
                StyledText st = StyledText.this;
                if (st.blockSelection && st.blockXLocation != -1) {
                    Rectangle rect = st.getBlockSelectionPosition();
                    int lineIndex = rect.y + e.index;
                    int linePixel = st.getLinePixel(lineIndex);
                    e.ranges = this.getRanges(rect.x, linePixel, rect.width, linePixel);
                    if (e.ranges.length > 0) {
                        e.start = e.ranges[0];
                        e.end = e.ranges[e.ranges.length - 1];
                    }
                } else if (e.index == 0) {
                    Point point = st.getSelection();
                    e.start = point.x;
                    e.end = point.y;
                    if (e.start > e.end) {
                        int temp = e.start;
                        e.start = e.end;
                        e.end = temp;
                    }
                }
            }

            public void getSelectionCount(AccessibleTextEvent e) {
                StyledText st = StyledText.this;
                if (st.blockSelection && st.blockXLocation != -1) {
                    Rectangle rect = st.getBlockSelectionPosition();
                    e.count = rect.height - rect.y + 1;
                } else {
                    Point point = st.getSelection();
                    e.count = point.x == point.y ? 0 : 1;
                }
            }

            public void removeSelection(AccessibleTextEvent e) {
                StyledText st = StyledText.this;
                if (e.index == 0) {
                    if (st.blockSelection) {
                        st.clearBlockSelection(true, false);
                    } else {
                        st.clearSelection(false);
                    }
                    e.result = "OK";
                }
            }

            public void setSelection(AccessibleTextEvent e) {
                if (e.index != 0) {
                    return;
                }
                StyledText st = StyledText.this;
                Point point = st.getSelection();
                if (point.x == point.y) {
                    return;
                }
                int end = e.end;
                if (end == -1) {
                    end = st.getCharCount();
                }
                st.setSelection(e.start, end);
                e.result = "OK";
            }

            public void getCharacterCount(AccessibleTextEvent e) {
                e.count = StyledText.this.getCharCount();
            }

            public void getOffsetAtPoint(AccessibleTextEvent e) {
                StyledText st = StyledText.this;
                Point point = new Point(e.x, e.y);
                Display display = st.getDisplay();
                point = display.map(null, (Control)st, point);
                e.offset = st.getOffsetAtPoint(point.x, point.y, null, true);
            }

            public void getTextBounds(AccessibleTextEvent e) {
                StyledText st = StyledText.this;
                int start = e.start;
                int end = e.end;
                int contentLength = st.getCharCount();
                if ((start = Math.max(0, Math.min(start, contentLength))) > (end = Math.max(0, Math.min(end, contentLength)))) {
                    int temp = start;
                    start = end;
                    end = temp;
                }
                int startLine = st.getLineAtOffset(start);
                int endLine = st.getLineAtOffset(end);
                Rectangle[] rects = new Rectangle[endLine - startLine + 1];
                Rectangle bounds = null;
                int index = 0;
                Display display = st.getDisplay();
                int lineIndex = startLine;
                while (lineIndex <= endLine) {
                    Rectangle rect = new Rectangle(0, 0, 0, 0);
                    rect.y = st.getLinePixel(lineIndex);
                    rect.height = st.renderer.getLineHeight(lineIndex);
                    rect.x = lineIndex == startLine ? st.getPointAtOffset((int)start).x : st.leftMargin - st.horizontalScrollOffset;
                    if (lineIndex == endLine) {
                        rect.width = st.getPointAtOffset((int)end).x - rect.x;
                    } else {
                        TextLayout layout = st.renderer.getTextLayout(lineIndex);
                        rect.width = layout.getBounds().width - rect.x;
                        st.renderer.disposeTextLayout(layout);
                    }
                    rects[index++] = rect = display.map((Control)st, null, rect);
                    if (bounds == null) {
                        bounds = new Rectangle(rect.x, rect.y, rect.width, rect.height);
                    } else {
                        bounds.add(rect);
                    }
                    ++lineIndex;
                }
                e.rectangles = rects;
                if (bounds != null) {
                    e.x = bounds.x;
                    e.y = bounds.y;
                    e.width = bounds.width;
                    e.height = bounds.height;
                }
            }

            int[] getRanges(int left, int top, int right, int bottom) {
                StyledText st = StyledText.this;
                int lineStart = st.getLineIndex(top);
                int lineEnd = st.getLineIndex(bottom);
                int count = lineEnd - lineStart + 1;
                int[] ranges = new int[count * 2];
                int index = 0;
                int lineIndex = lineStart;
                while (lineIndex <= lineEnd) {
                    int[] trailing;
                    int end;
                    String line = st.content.getLine(lineIndex);
                    int lineOffset = st.content.getOffsetAtLine(lineIndex);
                    int lineEndOffset = lineOffset + line.length();
                    int linePixel = st.getLinePixel(lineIndex);
                    int start = st.getOffsetAtPoint(left, linePixel, null, true);
                    if (start == -1) {
                        int n = start = left < st.leftMargin ? lineOffset : lineEndOffset;
                    }
                    end = (end = st.getOffsetAtPoint(right, linePixel, trailing = new int[1], true)) == -1 ? (right < st.leftMargin ? lineOffset : lineEndOffset) : (end += trailing[0]);
                    if (start > end) {
                        int temp = start;
                        start = end;
                        end = temp;
                    }
                    ranges[index++] = start;
                    ranges[index++] = end;
                    ++lineIndex;
                }
                return ranges;
            }

            public void getRanges(AccessibleTextEvent e) {
                StyledText st = StyledText.this;
                Point point = new Point(e.x, e.y);
                Display display = st.getDisplay();
                point = display.map(null, (Control)st, point);
                e.ranges = this.getRanges(point.x, point.y, point.x + e.width, point.y + e.height);
                if (e.ranges.length > 0) {
                    e.start = e.ranges[0];
                    e.end = e.ranges[e.ranges.length - 1];
                }
            }

            /*
             * Unable to fully structure code
             */
            public void getText(AccessibleTextEvent e) {
                st = StyledText.this;
                start = e.start;
                end = e.end;
                contentLength = st.getCharCount();
                if (end == -1) {
                    end = contentLength;
                }
                if ((start = Math.max(0, Math.min(start, contentLength))) > (end = Math.max(0, Math.min(end, contentLength)))) {
                    temp = start;
                    start = end;
                    end = temp;
                }
                count = e.count;
                switch (e.type) {
                    case 5: {
                        break;
                    }
                    case 0: {
                        newCount = 0;
                        if (count <= 0) ** GOTO lbl30
                        while (count-- > 0) {
                            newEnd = st.getWordNext(end, 2);
                            if (newEnd == contentLength || newEnd == end) break;
                            end = newEnd;
                            ++newCount;
                        }
                        start = end;
                        end = st.getWordNext(end, 2);
                        ** GOTO lbl32
                        while ((newStart = st.getWordPrevious(start, 2)) != start) {
                            start = newStart;
                            --newCount;
lbl30:
                            // 2 sources

                            if (count++ < 0) continue;
                        }
                        end = st.getWordNext(start, 2);
lbl32:
                        // 2 sources

                        count = newCount;
                        break;
                    }
                    case 1: {
                        newCount = 0;
                        if (count > 0) {
                            while (count-- > 0) {
                                newEnd = st.getWordNext(end, 16, true);
                                if (newEnd == end) break;
                                ++newCount;
                                end = newEnd;
                            }
                            start = end;
                            end = st.getWordNext(start, 8, true);
                        } else {
                            if (st.getWordPrevious(Math.min(start + 1, contentLength), 16, true) == start) {
                                ++count;
                            }
                            while (count <= 0) {
                                newStart = st.getWordPrevious(start, 16, true);
                                if (newStart == start) break;
                                start = newStart;
                                if (++count == 0) continue;
                                --newCount;
                            }
                            end = count <= 0 && start == 0 ? start : st.getWordNext(start, 8, true);
                        }
                        count = newCount;
                        break;
                    }
                    case 2: 
                    case 3: 
                    case 4: {
                        offset = count > 0 ? end : start;
                        lineIndex = st.getLineAtOffset(offset) + count;
                        lineIndex = Math.max(0, Math.min(lineIndex, st.getLineCount() - 1));
                        start = st.getOffsetAtLine(lineIndex);
                        line = st.getLine(lineIndex);
                        end = start + line.length();
                        count = lineIndex - st.getLineAtOffset(offset);
                    }
                }
                e.start = start;
                e.end = end;
                e.count = count;
                e.result = st.content.getTextRange(start, end - start);
            }

            public void getVisibleRanges(AccessibleTextEvent e) {
                e.ranges = this.getRanges(StyledText.this.leftMargin, StyledText.this.topMargin, StyledText.this.clientAreaWidth - StyledText.this.rightMargin, StyledText.this.clientAreaHeight - StyledText.this.bottomMargin);
                if (e.ranges.length > 0) {
                    e.start = e.ranges[0];
                    e.end = e.ranges[e.ranges.length - 1];
                }
            }

            public void scrollText(AccessibleTextEvent e) {
                StyledText st = StyledText.this;
                int topPixel = StyledText.this.getTopPixel();
                int horizontalPixel = st.getHorizontalPixel();
                switch (e.type) {
                    case 0: 
                    case 2: 
                    case 4: 
                    case 6: {
                        Rectangle rect = st.getBoundsAtOffset(e.start);
                        if (e.type != 2) {
                            horizontalPixel = horizontalPixel + rect.x - st.leftMargin;
                        }
                        if (e.type == 4) break;
                        topPixel = topPixel + rect.y - st.topMargin;
                        break;
                    }
                    case 1: 
                    case 3: 
                    case 5: {
                        Rectangle rect = st.getBoundsAtOffset(e.end - 1);
                        if (e.type != 3) {
                            horizontalPixel = horizontalPixel - st.clientAreaWidth + rect.x + rect.width + st.rightMargin;
                        }
                        if (e.type == 5) break;
                        topPixel = topPixel - st.clientAreaHeight + rect.y + rect.height + st.bottomMargin;
                        break;
                    }
                    case 7: {
                        Point point = new Point(e.x, e.y);
                        Display display = st.getDisplay();
                        point = display.map(null, (Control)st, point);
                        Rectangle rect = st.getBoundsAtOffset(e.start);
                        topPixel = topPixel - point.y + rect.y;
                        horizontalPixel = horizontalPixel - point.x + rect.x;
                    }
                }
                st.setTopPixel(topPixel);
                st.setHorizontalPixel(horizontalPixel);
                e.result = "OK";
            }
        });
        accessible.addAccessibleEditableTextListener(new AccessibleEditableTextListener(){

            public void setTextAttributes(AccessibleTextAttributeEvent e) {
                e.result = "OK";
            }

            public void replaceText(AccessibleEditableTextEvent e) {
                StyledText st = StyledText.this;
                st.replaceTextRange(e.start, e.end - e.start, e.string);
                e.result = "OK";
            }

            public void pasteText(AccessibleEditableTextEvent e) {
                StyledText st = StyledText.this;
                st.setSelection(e.start);
                st.paste();
                e.result = "OK";
            }

            public void cutText(AccessibleEditableTextEvent e) {
                StyledText st = StyledText.this;
                st.setSelection(e.start, e.end);
                st.cut();
                e.result = "OK";
            }

            public void copyText(AccessibleEditableTextEvent e) {
                StyledText st = StyledText.this;
                st.setSelection(e.start, e.end);
                st.copy();
                e.result = "OK";
            }
        });
        accessible.addAccessibleAttributeListener(new AccessibleAttributeAdapter(){

            public void getAttributes(AccessibleAttributeEvent e) {
                StyledText st = StyledText.this;
                e.leftMargin = st.getLeftMargin();
                e.topMargin = st.getTopMargin();
                e.rightMargin = st.getRightMargin();
                e.bottomMargin = st.getBottomMargin();
                e.tabStops = st.getTabStops();
                e.justify = st.getJustify();
                e.alignment = st.getAlignment();
                e.indent = st.getIndent();
            }

            public void getTextAttributes(AccessibleTextAttributeEvent e) {
                StyledText st = StyledText.this;
                int contentLength = st.getCharCount();
                if (!StyledText.this.isListening(3002) && st.renderer.styleCount == 0) {
                    e.start = 0;
                    e.end = contentLength;
                    e.textStyle = new TextStyle(st.getFont(), st.foreground, st.background);
                    return;
                }
                int offset = Math.max(0, Math.min(e.offset, contentLength - 1));
                int lineIndex = st.getLineAtOffset(offset);
                int lineOffset = st.getOffsetAtLine(lineIndex);
                int lineCount = st.getLineCount();
                offset -= lineOffset;
                TextLayout layout = st.renderer.getTextLayout(lineIndex);
                int lineLength = layout.getText().length();
                if (lineLength > 0) {
                    e.textStyle = layout.getStyle(Math.max(0, Math.min(offset, lineLength - 1)));
                }
                if (e.textStyle == null) {
                    e.textStyle = new TextStyle(st.getFont(), st.foreground, st.background);
                } else if (e.textStyle.foreground == null || e.textStyle.background == null || e.textStyle.font == null) {
                    TextStyle textStyle = new TextStyle(e.textStyle);
                    if (textStyle.foreground == null) {
                        textStyle.foreground = st.foreground;
                    }
                    if (textStyle.background == null) {
                        textStyle.background = st.background;
                    }
                    if (textStyle.font == null) {
                        textStyle.font = st.getFont();
                    }
                    e.textStyle = textStyle;
                }
                if (offset >= lineLength) {
                    e.start = lineOffset + lineLength;
                    e.end = lineIndex + 1 < lineCount ? st.getOffsetAtLine(lineIndex + 1) : contentLength;
                    return;
                }
                int[] ranges = layout.getRanges();
                st.renderer.disposeTextLayout(layout);
                int index = 0;
                int end = 0;
                while (index < ranges.length) {
                    int styleStart = ranges[index++];
                    int styleEnd = ranges[index++];
                    if (styleStart <= offset && offset <= styleEnd) {
                        e.start = lineOffset + styleStart;
                        e.end = lineOffset + styleEnd + 1;
                        return;
                    }
                    if (styleStart > offset) {
                        e.start = lineOffset + end;
                        e.end = lineOffset + styleStart;
                        return;
                    }
                    end = styleEnd + 1;
                }
                if (index == ranges.length) {
                    e.start = lineOffset + end;
                    e.end = lineIndex + 1 < lineCount ? st.getOffsetAtLine(lineIndex + 1) : contentLength;
                }
            }
        });
        accessible.addAccessibleControlListener(new AccessibleControlAdapter(){

            public void getRole(AccessibleControlEvent e) {
                e.detail = 42;
            }

            public void getState(AccessibleControlEvent e) {
                int state = 0;
                if (StyledText.this.isEnabled()) {
                    state |= 0x100000;
                }
                if (StyledText.this.isFocusControl()) {
                    state |= 4;
                }
                if (!StyledText.this.isVisible()) {
                    state |= 0x8000;
                }
                if (!StyledText.this.getEditable()) {
                    state |= 0x40;
                }
                state = StyledText.this.isSingleLine() ? (state |= 0x8000000) : (state |= 0x10000000);
                e.detail = state;
            }

            public void getValue(AccessibleControlEvent e) {
                e.result = StyledText.this.getText();
            }
        });
        this.addListener(15, new Listener(){

            public void handleEvent(Event event) {
                accessible.setFocus(-1);
            }
        });
    }

    String getAssociatedLabel() {
        Control[] siblings = this.getParent().getChildren();
        int i = 0;
        while (i < siblings.length) {
            if (siblings[i] == this) {
                if (i <= 0) break;
                Control sibling = siblings[i - 1];
                if (sibling instanceof Label) {
                    return ((Label)sibling).getText();
                }
                if (!(sibling instanceof CLabel)) break;
                return ((CLabel)sibling).getText();
            }
            ++i;
        }
        return null;
    }

    String stripMnemonic(String string) {
        int index = 0;
        int length = string.length();
        while (true) {
            if (index < length && string.charAt(index) != '&') {
                ++index;
                continue;
            }
            if (++index >= length) {
                return string;
            }
            if (string.charAt(index) != '&') {
                return String.valueOf(string.substring(0, index - 1)) + string.substring(index, length);
            }
            if (++index >= length) break;
        }
        return string;
    }

    char _findMnemonic(String string) {
        if (string == null) {
            return '\u0000';
        }
        int index = 0;
        int length = string.length();
        while (true) {
            if (index < length && string.charAt(index) != '&') {
                ++index;
                continue;
            }
            if (++index >= length) {
                return '\u0000';
            }
            if (string.charAt(index) != '&') {
                return Character.toLowerCase(string.charAt(index));
            }
            if (++index >= length) break;
        }
        return '\u0000';
    }

    public void invokeAction(int action) {
        this.checkWidget();
        if (this.blockSelection && this.invokeBlockAction(action)) {
            return;
        }
        this.updateCaretDirection = true;
        switch (action) {
            case 0x1000001: {
                this.doLineUp(false);
                this.clearSelection(true);
                break;
            }
            case 0x1000002: {
                this.doLineDown(false);
                this.clearSelection(true);
                break;
            }
            case 0x1000007: {
                this.doLineStart();
                this.clearSelection(true);
                break;
            }
            case 0x1000008: {
                this.doLineEnd();
                this.clearSelection(true);
                break;
            }
            case 0x1000003: {
                this.doCursorPrevious();
                this.clearSelection(true);
                break;
            }
            case 0x1000004: {
                this.doCursorNext();
                this.clearSelection(true);
                break;
            }
            case 0x1000005: {
                this.doPageUp(false, -1);
                this.clearSelection(true);
                break;
            }
            case 0x1000006: {
                this.doPageDown(false, -1);
                this.clearSelection(true);
                break;
            }
            case 17039363: {
                this.doWordPrevious();
                this.clearSelection(true);
                break;
            }
            case 0x1040004: {
                this.doWordNext();
                this.clearSelection(true);
                break;
            }
            case 17039367: {
                this.doContentStart();
                this.clearSelection(true);
                break;
            }
            case 17039368: {
                this.doContentEnd();
                this.clearSelection(true);
                break;
            }
            case 17039365: {
                this.doPageStart();
                this.clearSelection(true);
                break;
            }
            case 17039366: {
                this.doPageEnd();
                this.clearSelection(true);
                break;
            }
            case 0x1020001: {
                this.doSelectionLineUp();
                break;
            }
            case 262209: {
                this.selectAll();
                break;
            }
            case 0x1020002: {
                this.doSelectionLineDown();
                break;
            }
            case 16908295: {
                this.doLineStart();
                this.doSelection(0x1000003);
                break;
            }
            case 16908296: {
                this.doLineEnd();
                this.doSelection(0x1000004);
                break;
            }
            case 16908291: {
                this.doSelectionCursorPrevious();
                this.doSelection(0x1000003);
                break;
            }
            case 16908292: {
                this.doSelectionCursorNext();
                this.doSelection(0x1000004);
                break;
            }
            case 16908293: {
                this.doSelectionPageUp(-1);
                break;
            }
            case 16908294: {
                this.doSelectionPageDown(-1);
                break;
            }
            case 17170435: {
                this.doSelectionWordPrevious();
                this.doSelection(0x1000003);
                break;
            }
            case 17170436: {
                this.doSelectionWordNext();
                this.doSelection(0x1000004);
                break;
            }
            case 17170439: {
                this.doContentStart();
                this.doSelection(0x1000003);
                break;
            }
            case 17170440: {
                this.doContentEnd();
                this.doSelection(0x1000004);
                break;
            }
            case 17170437: {
                this.doPageStart();
                this.doSelection(0x1000003);
                break;
            }
            case 0x1060006: {
                this.doPageEnd();
                this.doSelection(0x1000004);
                break;
            }
            case 131199: {
                this.cut();
                break;
            }
            case 17039369: {
                this.copy();
                break;
            }
            case 16908297: {
                this.paste();
                break;
            }
            case 8: {
                this.doBackspace();
                break;
            }
            case 127: {
                this.doDelete();
                break;
            }
            case 262152: {
                this.doDeleteWordPrevious();
                break;
            }
            case 262271: {
                this.doDeleteWordNext();
                break;
            }
            case 0x1000009: {
                this.overwrite = !this.overwrite;
                break;
            }
            case 0x100000A: {
                this.setBlockSelection(!this.blockSelection);
            }
        }
    }

    boolean invokeBlockAction(int action) {
        switch (action) {
            case 0x1000001: 
            case 0x1000002: 
            case 0x1000003: 
            case 0x1000004: 
            case 0x1000005: 
            case 0x1000006: 
            case 0x1000007: 
            case 0x1000008: 
            case 17039363: 
            case 0x1040004: 
            case 17039365: 
            case 17039366: 
            case 17039367: 
            case 17039368: {
                this.clearBlockSelection(false, false);
                return false;
            }
            case 0x1020001: {
                this.doBlockLineVertical(true);
                return true;
            }
            case 0x1020002: {
                this.doBlockLineVertical(false);
                return true;
            }
            case 16908295: {
                this.doBlockLineHorizontal(false);
                return true;
            }
            case 16908296: {
                this.doBlockLineHorizontal(true);
                return false;
            }
            case 16908291: {
                this.doBlockColumn(false);
                return true;
            }
            case 16908292: {
                this.doBlockColumn(true);
                return true;
            }
            case 17170435: {
                this.doBlockWord(false);
                return true;
            }
            case 17170436: {
                this.doBlockWord(true);
                return true;
            }
            case 262209: {
                return false;
            }
            case 16908293: 
            case 16908294: 
            case 17170437: 
            case 0x1060006: 
            case 17170439: 
            case 17170440: {
                return true;
            }
            case 131199: 
            case 16908297: 
            case 17039369: {
                return false;
            }
            case 8: 
            case 127: {
                if (this.blockXLocation != -1) {
                    this.insertBlockSelectionText('\u0000', action);
                    return true;
                }
                return false;
            }
            case 262152: 
            case 262271: {
                return this.blockXLocation != -1;
            }
        }
        return false;
    }

    boolean isBidi() {
        return IS_GTK || IS_MAC || BidiUtil.isBidiPlatform() || this.isMirrored();
    }

    boolean isBidiCaret() {
        return BidiUtil.isBidiPlatform();
    }

    boolean isFixedLineHeight() {
        return this.fixedLineHeight;
    }

    boolean isLineDelimiter(int offset) {
        int line = this.content.getLineAtOffset(offset);
        int lineOffset = this.content.getOffsetAtLine(line);
        int offsetInLine = offset - lineOffset;
        return offsetInLine > this.content.getLine(line).length();
    }

    boolean isMirrored() {
        return (this.getStyle() & 0x8000000) != 0;
    }

    boolean isSingleLine() {
        return (this.getStyle() & 4) != 0;
    }

    void modifyContent(Event event, boolean updateCaret) {
        event.doit = true;
        this.notifyListeners(25, event);
        if (event.doit) {
            StyledTextEvent styledTextEvent = null;
            int replacedLength = event.end - event.start;
            if (this.isListening(3000)) {
                styledTextEvent = new StyledTextEvent(this.content);
                styledTextEvent.start = event.start;
                styledTextEvent.end = event.start + event.text.length();
                styledTextEvent.text = this.content.getTextRange(event.start, replacedLength);
            }
            if (updateCaret && event.text.length() == 0) {
                int lineIndex = this.content.getLineAtOffset(event.start);
                int lineOffset = this.content.getOffsetAtLine(lineIndex);
                TextLayout layout = this.renderer.getTextLayout(lineIndex);
                int levelStart = layout.getLevel(event.start - lineOffset);
                int lineIndexEnd = this.content.getLineAtOffset(event.end);
                if (lineIndex != lineIndexEnd) {
                    this.renderer.disposeTextLayout(layout);
                    lineOffset = this.content.getOffsetAtLine(lineIndexEnd);
                    layout = this.renderer.getTextLayout(lineIndexEnd);
                }
                int levelEnd = layout.getLevel(event.end - lineOffset);
                this.renderer.disposeTextLayout(layout);
                this.caretAlignment = levelStart != levelEnd ? 0 : 1;
            }
            this.content.replaceTextRange(event.start, replacedLength, event.text);
            if (updateCaret && (!this.blockSelection || this.blockXLocation == -1)) {
                this.setSelection(event.start + event.text.length(), 0, true, false);
                this.showCaret();
            }
            this.notifyListeners(24, event);
            if (this.isListening(3000)) {
                this.notifyListeners(3000, styledTextEvent);
            }
        }
    }

    void paintObject(GC gc, int x, int y, int ascent, int descent, StyleRange style, Bullet bullet, int bulletIndex) {
        if (this.isListening(3008)) {
            StyledTextEvent event = new StyledTextEvent(this.content);
            event.gc = gc;
            event.x = x;
            event.y = y;
            event.ascent = ascent;
            event.descent = descent;
            event.style = style;
            event.bullet = bullet;
            event.bulletIndex = bulletIndex;
            this.notifyListeners(3008, event);
        }
    }

    public void paste() {
        this.checkWidget();
        String text = (String)this.getClipboardContent(1);
        if (text != null && text.length() > 0) {
            if (this.blockSelection) {
                boolean fillWithSpaces = this.isFixedLineHeight() && this.renderer.fixedPitch;
                int offset = this.insertBlockSelectionText(text, fillWithSpaces);
                this.setCaretOffset(offset, -1);
                this.clearBlockSelection(true, true);
                this.setCaretLocation();
                return;
            }
            Event event = new Event();
            event.start = this.selection.x;
            event.end = this.selection.y;
            event.text = this.getModelDelimitedText(text);
            this.sendKeyEvent(event);
        }
    }

    public void print() {
        this.checkWidget();
        Printer printer = new Printer();
        StyledTextPrintOptions options = new StyledTextPrintOptions();
        options.printTextForeground = true;
        options.printTextBackground = true;
        options.printTextFontStyle = true;
        options.printLineBackground = true;
        new Printing(this, printer, options).run();
        printer.dispose();
    }

    public Runnable print(Printer printer) {
        this.checkWidget();
        if (printer == null) {
            SWT.error(4);
        }
        StyledTextPrintOptions options = new StyledTextPrintOptions();
        options.printTextForeground = true;
        options.printTextBackground = true;
        options.printTextFontStyle = true;
        options.printLineBackground = true;
        return this.print(printer, options);
    }

    public Runnable print(Printer printer, StyledTextPrintOptions options) {
        this.checkWidget();
        if (printer == null || options == null) {
            SWT.error(4);
        }
        return new Printing(this, printer, options);
    }

    public void redraw() {
        super.redraw();
        int itemCount = this.getPartialBottomIndex() - this.topIndex + 1;
        this.renderer.reset(this.topIndex, itemCount);
        this.renderer.calculate(this.topIndex, itemCount);
        this.setScrollBars(false);
        this.doMouseLinkCursor();
    }

    public void redraw(int x, int y, int width, int height, boolean all) {
        super.redraw(x, y, width, height, all);
        if (height > 0) {
            int firstLine = this.getLineIndex(y);
            int lastLine = this.getLineIndex(y + height);
            this.resetCache(firstLine, lastLine - firstLine + 1);
            this.doMouseLinkCursor();
        }
    }

    void redrawLines(int startLine, int lineCount, boolean bottomChanged) {
        int endLine = startLine + lineCount - 1;
        int partialBottomIndex = this.getPartialBottomIndex();
        int partialTopIndex = this.getPartialTopIndex();
        if (startLine > partialBottomIndex || endLine < partialTopIndex) {
            return;
        }
        if (startLine < partialTopIndex) {
            startLine = partialTopIndex;
        }
        if (endLine > partialBottomIndex) {
            endLine = partialBottomIndex;
        }
        int redrawTop = this.getLinePixel(startLine);
        int redrawBottom = this.getLinePixel(endLine + 1);
        if (bottomChanged) {
            redrawBottom = this.clientAreaHeight - this.bottomMargin;
        }
        int redrawWidth = this.clientAreaWidth - this.leftMargin - this.rightMargin;
        super.redraw(this.leftMargin, redrawTop, redrawWidth, redrawBottom - redrawTop, true);
    }

    void redrawLinesBullet(int[] redrawLines) {
        if (redrawLines == null) {
            return;
        }
        int topIndex = this.getPartialTopIndex();
        int bottomIndex = this.getPartialBottomIndex();
        int i = 0;
        while (i < redrawLines.length) {
            int lineIndex = redrawLines[i];
            if (topIndex <= lineIndex && lineIndex <= bottomIndex) {
                int width = -1;
                Bullet bullet = this.renderer.getLineBullet(lineIndex, null);
                if (bullet != null) {
                    StyleRange style = bullet.style;
                    GlyphMetrics metrics = style.metrics;
                    width = metrics.width;
                }
                if (width == -1) {
                    width = this.getClientArea().width;
                }
                int height = this.renderer.getLineHeight(lineIndex);
                int y = this.getLinePixel(lineIndex);
                super.redraw(0, y, width, height, false);
            }
            ++i;
        }
    }

    public void redrawRange(int start, int length, boolean clearBackground) {
        this.checkWidget();
        int end = start + length;
        int contentLength = this.content.getCharCount();
        if (start > end || start < 0 || end > contentLength) {
            SWT.error(6);
        }
        int firstLine = this.content.getLineAtOffset(start);
        int lastLine = this.content.getLineAtOffset(end);
        this.resetCache(firstLine, lastLine - firstLine + 1);
        this.internalRedrawRange(start, length);
        this.doMouseLinkCursor();
    }

    public void removeBidiSegmentListener(BidiSegmentListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(3007, listener);
    }

    public void removeCaretListener(CaretListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(3011, listener);
    }

    public void removeExtendedModifyListener(ExtendedModifyListener extendedModifyListener) {
        this.checkWidget();
        if (extendedModifyListener == null) {
            SWT.error(4);
        }
        this.removeListener(3000, extendedModifyListener);
    }

    public void removeLineBackgroundListener(LineBackgroundListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(3001, listener);
    }

    public void removeLineStyleListener(LineStyleListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(3002, listener);
        this.setCaretLocation();
    }

    public void removeModifyListener(ModifyListener modifyListener) {
        this.checkWidget();
        if (modifyListener == null) {
            SWT.error(4);
        }
        this.removeListener(24, modifyListener);
    }

    public void removePaintObjectListener(PaintObjectListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(3008, listener);
    }

    public void removeSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(13, listener);
    }

    public void removeVerifyListener(VerifyListener verifyListener) {
        this.checkWidget();
        if (verifyListener == null) {
            SWT.error(4);
        }
        this.removeListener(25, verifyListener);
    }

    public void removeVerifyKeyListener(VerifyKeyListener listener) {
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(3005, listener);
    }

    public void removeWordMovementListener(MovementListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(3009, listener);
        this.removeListener(3010, listener);
    }

    public void replaceStyleRanges(int start, int length, StyleRange[] ranges) {
        this.checkWidget();
        if (this.isListening(3002)) {
            return;
        }
        if (ranges == null) {
            SWT.error(4);
        }
        this.setStyleRanges(start, length, null, ranges, false);
    }

    public void replaceTextRange(int start, int length, String text) {
        this.checkWidget();
        if (text == null) {
            SWT.error(4);
        }
        int contentLength = this.getCharCount();
        int end = start + length;
        if (start > end || start < 0 || end > contentLength) {
            SWT.error(6);
        }
        Event event = new Event();
        event.start = start;
        event.end = end;
        event.text = text;
        this.modifyContent(event, false);
    }

    void reset() {
        ScrollBar verticalBar = this.getVerticalBar();
        ScrollBar horizontalBar = this.getHorizontalBar();
        this.setCaretOffset(0, -1);
        this.topIndex = 0;
        this.topIndexY = 0;
        this.verticalScrollOffset = 0;
        this.horizontalScrollOffset = 0;
        this.resetSelection();
        this.renderer.setContent(this.content);
        if (verticalBar != null) {
            verticalBar.setSelection(0);
        }
        if (horizontalBar != null) {
            horizontalBar.setSelection(0);
        }
        this.resetCache(0, 0);
        this.setCaretLocation();
        super.redraw();
    }

    void resetCache(int firstLine, int count) {
        int maxLineIndex = this.renderer.maxWidthLineIndex;
        this.renderer.reset(firstLine, count);
        this.renderer.calculateClientArea();
        if (maxLineIndex >= 0 && maxLineIndex < this.content.getLineCount()) {
            this.renderer.calculate(maxLineIndex, 1);
        }
        this.setScrollBars(true);
        if (!this.isFixedLineHeight()) {
            if (this.topIndex > firstLine) {
                this.verticalScrollOffset = -1;
            }
            this.renderer.calculateIdle();
        }
    }

    void resetSelection() {
        this.selection.x = this.selection.y = this.caretOffset;
        this.selectionAnchor = -1;
        this.sendAccessibleTextCaretMoved();
    }

    public void scroll(int destX, int destY, int x, int y, int width, int height, boolean all) {
        super.scroll(destX, destY, x, y, width, height, false);
        if (all) {
            int deltaX = destX - x;
            int deltaY = destY - y;
            Control[] children = this.getChildren();
            int i = 0;
            while (i < children.length) {
                Control child = children[i];
                Rectangle rect = child.getBounds();
                child.setLocation(rect.x + deltaX, rect.y + deltaY);
                ++i;
            }
        }
    }

    boolean scrollHorizontal(int pixels, boolean adjustScrollBar) {
        if (pixels == 0) {
            return false;
        }
        if (this.wordWrap) {
            return false;
        }
        ScrollBar horizontalBar = this.getHorizontalBar();
        if (horizontalBar != null && adjustScrollBar) {
            horizontalBar.setSelection(this.horizontalScrollOffset + pixels);
        }
        int scrollHeight = this.clientAreaHeight - this.topMargin - this.bottomMargin;
        if (pixels > 0) {
            int sourceX = this.leftMargin + pixels;
            int scrollWidth = this.clientAreaWidth - sourceX - this.rightMargin;
            if (scrollWidth > 0) {
                this.scroll(this.leftMargin, this.topMargin, sourceX, this.topMargin, scrollWidth, scrollHeight, true);
            }
            if (sourceX > scrollWidth) {
                super.redraw(this.leftMargin + scrollWidth, this.topMargin, pixels - scrollWidth, scrollHeight, true);
            }
        } else {
            int destinationX = this.leftMargin - pixels;
            int scrollWidth = this.clientAreaWidth - destinationX - this.rightMargin;
            if (scrollWidth > 0) {
                this.scroll(destinationX, this.topMargin, this.leftMargin, this.topMargin, scrollWidth, scrollHeight, true);
            }
            if (destinationX > scrollWidth) {
                super.redraw(this.leftMargin + scrollWidth, this.topMargin, -pixels - scrollWidth, scrollHeight, true);
            }
        }
        this.horizontalScrollOffset += pixels;
        this.setCaretLocation();
        return true;
    }

    boolean scrollVertical(int pixels, boolean adjustScrollBar) {
        if (pixels == 0) {
            return false;
        }
        if (this.verticalScrollOffset != -1) {
            ScrollBar verticalBar = this.getVerticalBar();
            if (verticalBar != null && adjustScrollBar) {
                verticalBar.setSelection(this.verticalScrollOffset + pixels);
            }
            int scrollWidth = this.clientAreaWidth - this.leftMargin - this.rightMargin;
            if (pixels > 0) {
                int sourceY = this.topMargin + pixels;
                int scrollHeight = this.clientAreaHeight - sourceY - this.bottomMargin;
                if (scrollHeight > 0) {
                    this.scroll(this.leftMargin, this.topMargin, this.leftMargin, sourceY, scrollWidth, scrollHeight, true);
                }
                if (sourceY > scrollHeight) {
                    int redrawY = Math.max(0, this.topMargin + scrollHeight);
                    int redrawHeight = Math.min(this.clientAreaHeight, pixels - scrollHeight);
                    super.redraw(this.leftMargin, redrawY, scrollWidth, redrawHeight, true);
                }
            } else {
                int destinationY = this.topMargin - pixels;
                int scrollHeight = this.clientAreaHeight - destinationY - this.bottomMargin;
                if (scrollHeight > 0) {
                    this.scroll(this.leftMargin, destinationY, this.leftMargin, this.topMargin, scrollWidth, scrollHeight, true);
                }
                if (destinationY > scrollHeight) {
                    int redrawY = Math.max(0, this.topMargin + scrollHeight);
                    int redrawHeight = Math.min(this.clientAreaHeight, -pixels - scrollHeight);
                    super.redraw(this.leftMargin, redrawY, scrollWidth, redrawHeight, true);
                }
            }
            this.verticalScrollOffset += pixels;
            this.calculateTopIndex(pixels);
        } else {
            this.calculateTopIndex(pixels);
            super.redraw();
        }
        this.setCaretLocation();
        return true;
    }

    void scrollText(int srcY, int destY) {
        if (srcY == destY) {
            return;
        }
        int deltaY = destY - srcY;
        int scrollWidth = this.clientAreaWidth - this.leftMargin - this.rightMargin;
        int scrollHeight = deltaY > 0 ? this.clientAreaHeight - srcY - this.bottomMargin : this.clientAreaHeight - destY - this.bottomMargin;
        this.scroll(this.leftMargin, destY, this.leftMargin, srcY, scrollWidth, scrollHeight, true);
        if (srcY + scrollHeight > 0 && this.topMargin > srcY) {
            super.redraw(this.leftMargin, deltaY, scrollWidth, this.topMargin, false);
        }
        if (destY + scrollHeight > 0 && this.topMargin > destY) {
            super.redraw(this.leftMargin, 0, scrollWidth, this.topMargin, false);
        }
        if (this.clientAreaHeight - this.bottomMargin < srcY + scrollHeight && this.clientAreaHeight > srcY) {
            super.redraw(this.leftMargin, this.clientAreaHeight - this.bottomMargin + deltaY, scrollWidth, this.bottomMargin, false);
        }
        if (this.clientAreaHeight - this.bottomMargin < destY + scrollHeight && this.clientAreaHeight > destY) {
            super.redraw(this.leftMargin, this.clientAreaHeight - this.bottomMargin, scrollWidth, this.bottomMargin, false);
        }
    }

    void sendAccessibleTextCaretMoved() {
        if (this.caretOffset != this.accCaretOffset) {
            this.accCaretOffset = this.caretOffset;
            this.getAccessible().textCaretMoved(this.caretOffset);
        }
    }

    void sendAccessibleTextChanged(int start, int newCharCount, int replaceCharCount) {
        Accessible accessible = this.getAccessible();
        if (replaceCharCount != 0) {
            accessible.textChanged(1, start, replaceCharCount);
        }
        if (newCharCount != 0) {
            accessible.textChanged(0, start, newCharCount);
        }
    }

    public void selectAll() {
        this.checkWidget();
        if (this.blockSelection) {
            this.renderer.calculate(0, this.content.getLineCount());
            this.setScrollBars(false);
            int verticalScrollOffset = this.getVerticalScrollOffset();
            int left = this.leftMargin - this.horizontalScrollOffset;
            int top = this.topMargin - verticalScrollOffset;
            int right = this.renderer.getWidth() - this.rightMargin - this.horizontalScrollOffset;
            int bottom = this.renderer.getHeight() - this.bottomMargin - verticalScrollOffset;
            this.setBlockSelectionLocation(left, top, right, bottom, false);
            return;
        }
        this.setSelection(0, Math.max(this.getCharCount(), 0));
    }

    void sendKeyEvent(Event event) {
        if (this.editable) {
            this.modifyContent(event, true);
        }
    }

    StyledTextEvent sendLineEvent(int eventType, int lineOffset, String line) {
        StyledTextEvent event = null;
        if (this.isListening(eventType)) {
            event = new StyledTextEvent(this.content);
            event.detail = lineOffset;
            event.text = line;
            event.alignment = this.alignment;
            event.indent = this.indent;
            event.wrapIndent = this.wrapIndent;
            event.justify = this.justify;
            this.notifyListeners(eventType, event);
        }
        return event;
    }

    void sendSelectionEvent() {
        this.getAccessible().textSelectionChanged();
        Event event = new Event();
        event.x = this.selection.x;
        event.y = this.selection.y;
        this.notifyListeners(13, event);
    }

    int sendTextEvent(int left, int right, int lineIndex, String text, boolean fillWithSpaces) {
        int end;
        int start;
        int lineWidth = 0;
        StringBuffer buffer = new StringBuffer();
        if (lineIndex < this.content.getLineCount()) {
            int[] trailing = new int[1];
            start = this.getOffsetAtPoint(left, this.getLinePixel(lineIndex), trailing, true);
            if (start == -1) {
                int lineOffset = this.content.getOffsetAtLine(lineIndex);
                int lineLegth = this.content.getLine(lineIndex).length();
                start = end = lineOffset + lineLegth;
                if (fillWithSpaces) {
                    TextLayout layout = this.renderer.getTextLayout(lineIndex);
                    lineWidth = layout.getBounds().width;
                    this.renderer.disposeTextLayout(layout);
                }
            } else {
                end = left == right ? (start += trailing[0]) : this.getOffsetAtPoint(right, 0, lineIndex, null);
                fillWithSpaces = false;
            }
        } else {
            start = end = this.content.getCharCount();
            buffer.append(this.content.getLineDelimiter());
        }
        if (start > end) {
            int temp = start;
            start = end;
            end = temp;
        }
        if (fillWithSpaces) {
            int spacesWidth = left - lineWidth + this.horizontalScrollOffset - this.leftMargin;
            int spacesCount = spacesWidth / this.renderer.averageCharWidth;
            int i = 0;
            while (i < spacesCount) {
                buffer.append(' ');
                ++i;
            }
        }
        buffer.append(text);
        Event event = new Event();
        event.start = start;
        event.end = end;
        event.text = buffer.toString();
        this.sendKeyEvent(event);
        return event.start + event.text.length();
    }

    int sendWordBoundaryEvent(int eventType, int movement, int offset, int newOffset, String lineText, int lineOffset) {
        if (this.isListening(eventType)) {
            StyledTextEvent event = new StyledTextEvent(this.content);
            event.detail = lineOffset;
            event.text = lineText;
            event.count = movement;
            event.start = offset;
            event.end = newOffset;
            this.notifyListeners(eventType, event);
            offset = event.end;
            if (offset != newOffset) {
                int length = this.getCharCount();
                if (offset < 0) {
                    offset = 0;
                } else if (offset > length) {
                    offset = length;
                } else if (this.isLineDelimiter(offset)) {
                    SWT.error(5);
                }
            }
            return offset;
        }
        return newOffset;
    }

    void setAlignment() {
        if ((this.getStyle() & 4) == 0) {
            return;
        }
        int alignment = this.renderer.getLineAlignment(0, this.alignment);
        int newAlignmentMargin = 0;
        if (alignment != 16384) {
            this.renderer.calculate(0, 1);
            int width = this.renderer.getWidth() - this.alignmentMargin;
            newAlignmentMargin = this.clientAreaWidth - width;
            if (newAlignmentMargin < 0) {
                newAlignmentMargin = 0;
            }
            if (alignment == 0x1000000) {
                newAlignmentMargin /= 2;
            }
        }
        if (this.alignmentMargin != newAlignmentMargin) {
            this.leftMargin -= this.alignmentMargin;
            this.leftMargin += newAlignmentMargin;
            this.alignmentMargin = newAlignmentMargin;
            this.resetCache(0, 1);
            this.setCaretLocation();
            super.redraw();
        }
    }

    public void setAlignment(int alignment) {
        this.checkWidget();
        if ((alignment &= 0x1024000) == 0 || this.alignment == alignment) {
            return;
        }
        this.alignment = alignment;
        this.resetCache(0, this.content.getLineCount());
        this.setCaretLocation();
        this.setAlignment();
        super.redraw();
    }

    public void setBackground(Color color) {
        this.checkWidget();
        this.background = color;
        super.setBackground(color);
        this.resetCache(0, this.content.getLineCount());
        this.setCaretLocation();
        super.redraw();
    }

    public void setBlockSelection(boolean blockSelection) {
        this.checkWidget();
        if ((this.getStyle() & 4) != 0) {
            return;
        }
        if (blockSelection == this.blockSelection) {
            return;
        }
        if (this.wordWrap) {
            return;
        }
        this.blockSelection = blockSelection;
        if (this.cursor == null) {
            Display display = this.getDisplay();
            int type = blockSelection ? 2 : 19;
            super.setCursor(display.getSystemCursor(type));
        }
        if (blockSelection) {
            int start = this.selection.x;
            int end = this.selection.y;
            if (start != end) {
                this.setBlockSelectionOffset(start, end, false);
            }
        } else {
            this.clearBlockSelection(false, false);
        }
    }

    public void setBlockSelectionBounds(Rectangle rect) {
        this.checkWidget();
        if (rect == null) {
            SWT.error(4);
        }
        this.setBlockSelectionBounds(rect.x, rect.y, rect.width, rect.height);
    }

    public void setBlockSelectionBounds(int x, int y, int width, int height) {
        this.checkWidget();
        int verticalScrollOffset = this.getVerticalScrollOffset();
        if (!this.blockSelection) {
            int start = this.getOffsetAtPoint(x -= this.horizontalScrollOffset, y -= verticalScrollOffset, null);
            int end = this.getOffsetAtPoint(x + width - 1, y + height - 1, null);
            this.setSelection(start, end - start, false, false);
            this.setCaretLocation();
            return;
        }
        int minY = this.topMargin;
        int minX = this.leftMargin;
        int maxY = this.renderer.getHeight() - this.bottomMargin;
        int maxX = Math.max(this.clientAreaWidth, this.renderer.getWidth()) - this.rightMargin;
        int anchorX = Math.max(minX, Math.min(maxX, x)) - this.horizontalScrollOffset;
        int anchorY = Math.max(minY, Math.min(maxY, y)) - verticalScrollOffset;
        int locationX = Math.max(minX, Math.min(maxX, x + width)) - this.horizontalScrollOffset;
        int locationY = Math.max(minY, Math.min(maxY, y + height - 1)) - verticalScrollOffset;
        if (this.isFixedLineHeight() && this.renderer.fixedPitch) {
            int avg = this.renderer.averageCharWidth;
            anchorX = (anchorX - this.leftMargin + this.horizontalScrollOffset) / avg * avg + this.leftMargin - this.horizontalScrollOffset;
            locationX = (locationX + avg / 2 - this.leftMargin + this.horizontalScrollOffset) / avg * avg + this.leftMargin - this.horizontalScrollOffset;
        }
        this.setBlockSelectionLocation(anchorX, anchorY, locationX, locationY, false);
    }

    void setBlockSelectionLocation(int x, int y, boolean sendEvent) {
        int verticalScrollOffset = this.getVerticalScrollOffset();
        this.blockXLocation = x + this.horizontalScrollOffset;
        this.blockYLocation = y + verticalScrollOffset;
        int[] alignment = new int[1];
        int offset = this.getOffsetAtPoint(x, y, alignment);
        this.setCaretOffset(offset, alignment[0]);
        if (this.blockXAnchor == -1) {
            this.blockXAnchor = this.blockXLocation;
            this.blockYAnchor = this.blockYLocation;
            this.selectionAnchor = this.caretOffset;
        }
        this.doBlockSelection(sendEvent);
    }

    void setBlockSelectionLocation(int anchorX, int anchorY, int x, int y, boolean sendEvent) {
        int verticalScrollOffset = this.getVerticalScrollOffset();
        this.blockXAnchor = anchorX + this.horizontalScrollOffset;
        this.blockYAnchor = anchorY + verticalScrollOffset;
        this.selectionAnchor = this.getOffsetAtPoint(anchorX, anchorY, null);
        this.setBlockSelectionLocation(x, y, sendEvent);
    }

    void setBlockSelectionOffset(int offset, boolean sendEvent) {
        Point point = this.getPointAtOffset(offset);
        int verticalScrollOffset = this.getVerticalScrollOffset();
        this.blockXLocation = point.x + this.horizontalScrollOffset;
        this.blockYLocation = point.y + verticalScrollOffset;
        this.setCaretOffset(offset, -1);
        if (this.blockXAnchor == -1) {
            this.blockXAnchor = this.blockXLocation;
            this.blockYAnchor = this.blockYLocation;
            this.selectionAnchor = this.caretOffset;
        }
        this.doBlockSelection(sendEvent);
    }

    void setBlockSelectionOffset(int anchorOffset, int offset, boolean sendEvent) {
        int verticalScrollOffset = this.getVerticalScrollOffset();
        Point anchorPoint = this.getPointAtOffset(anchorOffset);
        this.blockXAnchor = anchorPoint.x + this.horizontalScrollOffset;
        this.blockYAnchor = anchorPoint.y + verticalScrollOffset;
        this.selectionAnchor = anchorOffset;
        this.setBlockSelectionOffset(offset, sendEvent);
    }

    public void setCaret(Caret caret) {
        this.checkWidget();
        super.setCaret(caret);
        this.caretDirection = 0;
        if (caret != null) {
            this.setCaretLocation();
        }
    }

    public void setBidiColoring(boolean mode) {
        this.checkWidget();
        this.bidiColoring = mode;
    }

    public void setBottomMargin(int bottomMargin) {
        this.checkWidget();
        this.setMargins(this.leftMargin, this.topMargin, this.rightMargin, bottomMargin);
    }

    void setCaretLocation() {
        Point newCaretPos = this.getPointAtOffset(this.caretOffset);
        this.setCaretLocation(newCaretPos, this.getCaretDirection());
    }

    void setCaretLocation(Point location, int direction) {
        Caret caret = this.getCaret();
        if (caret != null) {
            int lineHeight;
            boolean isDefaultCaret = caret == this.defaultCaret;
            int caretHeight = lineHeight = this.renderer.getLineHeight();
            if (!this.isFixedLineHeight() && isDefaultCaret && (caretHeight = this.getBoundsAtOffset((int)this.caretOffset).height) != lineHeight) {
                direction = -1;
            }
            int imageDirection = direction;
            if (this.isMirrored()) {
                if (imageDirection == 16384) {
                    imageDirection = 131072;
                } else if (imageDirection == 131072) {
                    imageDirection = 16384;
                }
            }
            if (isDefaultCaret && imageDirection == 131072) {
                location.x -= caret.getSize().x - 1;
            }
            if (isDefaultCaret) {
                caret.setBounds(location.x, location.y, this.caretWidth, caretHeight);
            } else {
                caret.setLocation(location);
            }
            if (direction != this.caretDirection) {
                this.caretDirection = direction;
                if (isDefaultCaret) {
                    if (imageDirection == -1) {
                        this.defaultCaret.setImage(null);
                    } else if (imageDirection == 16384) {
                        this.defaultCaret.setImage(this.leftCaretBitmap);
                    } else if (imageDirection == 131072) {
                        this.defaultCaret.setImage(this.rightCaretBitmap);
                    }
                }
                if (this.caretDirection == 16384) {
                    BidiUtil.setKeyboardLanguage(0);
                } else if (this.caretDirection == 131072) {
                    BidiUtil.setKeyboardLanguage(1);
                }
            }
            this.updateCaretVisibility();
        }
        this.columnX = location.x;
    }

    public void setCaretOffset(int offset) {
        this.checkWidget();
        int length = this.getCharCount();
        if (length > 0 && offset != this.caretOffset) {
            if (offset < 0) {
                offset = 0;
            } else if (offset > length) {
                offset = length;
            } else if (this.isLineDelimiter(offset)) {
                SWT.error(5);
            }
            this.setCaretOffset(offset, 0);
            if (this.blockSelection) {
                this.clearBlockSelection(true, false);
            } else {
                this.clearSelection(false);
            }
        }
        this.setCaretLocation();
    }

    void setCaretOffset(int offset, int alignment) {
        if (this.caretOffset != offset) {
            this.caretOffset = offset;
            if (this.isListening(3011)) {
                StyledTextEvent event = new StyledTextEvent(this.content);
                event.end = this.caretOffset;
                this.notifyListeners(3011, event);
            }
        }
        if (alignment != -1) {
            this.caretAlignment = alignment;
        }
    }

    void setClipboardContent(int start, int length, int clipboardType) throws SWTError {
        Transfer[] types;
        Object[] data;
        if (clipboardType == 2 && !IS_MOTIF && !IS_GTK) {
            return;
        }
        TextTransfer plainTextTransfer = TextTransfer.getInstance();
        TextWriter plainTextWriter = new TextWriter(start, length);
        String plainText = this.getPlatformDelimitedText(plainTextWriter);
        if (clipboardType == 2) {
            data = new Object[]{plainText};
            types = new Transfer[]{plainTextTransfer};
        } else {
            RTFTransfer rtfTransfer = RTFTransfer.getInstance();
            RTFWriter rtfWriter = new RTFWriter(start, length);
            String rtfText = this.getPlatformDelimitedText(rtfWriter);
            data = new Object[]{rtfText, plainText};
            types = new Transfer[]{rtfTransfer, plainTextTransfer};
        }
        this.clipboard.setContents(data, types, clipboardType);
    }

    public void setContent(StyledTextContent newContent) {
        this.checkWidget();
        if (newContent == null) {
            SWT.error(4);
        }
        if (this.content != null) {
            this.content.removeTextChangeListener(this.textChangeListener);
        }
        this.content = newContent;
        this.content.addTextChangeListener(this.textChangeListener);
        this.reset();
    }

    public void setCursor(Cursor cursor) {
        this.checkWidget();
        if (cursor != null && cursor.isDisposed()) {
            SWT.error(5);
        }
        this.cursor = cursor;
        if (cursor == null) {
            Display display = this.getDisplay();
            int type = this.blockSelection ? 2 : 19;
            super.setCursor(display.getSystemCursor(type));
        } else {
            super.setCursor(cursor);
        }
    }

    public void setDoubleClickEnabled(boolean enable) {
        this.checkWidget();
        this.doubleClickEnabled = enable;
    }

    public void setDragDetect(boolean dragDetect) {
        this.checkWidget();
        this.dragDetect = dragDetect;
    }

    public void setEditable(boolean editable) {
        this.checkWidget();
        this.editable = editable;
    }

    public void setFont(Font font) {
        int lineHeight;
        this.checkWidget();
        int oldLineHeight = this.renderer.getLineHeight();
        super.setFont(font);
        this.renderer.setFont(this.getFont(), this.tabLength);
        if (this.isFixedLineHeight() && (lineHeight = this.renderer.getLineHeight()) != oldLineHeight) {
            int vscroll = this.getVerticalScrollOffset() * lineHeight / oldLineHeight - this.getVerticalScrollOffset();
            this.scrollVertical(vscroll, true);
        }
        this.resetCache(0, this.content.getLineCount());
        this.claimBottomFreeSpace();
        this.calculateScrollBars();
        if (this.isBidiCaret()) {
            this.createCaretBitmaps();
        }
        this.caretDirection = 0;
        this.setCaretLocation();
        super.redraw();
    }

    public void setForeground(Color color) {
        this.checkWidget();
        this.foreground = color;
        super.setForeground(this.getForeground());
        this.resetCache(0, this.content.getLineCount());
        this.setCaretLocation();
        super.redraw();
    }

    public void setHorizontalIndex(int offset) {
        int width;
        this.checkWidget();
        if (this.getCharCount() == 0) {
            return;
        }
        if (offset < 0) {
            offset = 0;
        }
        if (this.clientAreaWidth > 0 && (offset *= this.getHorizontalIncrement()) > (width = this.renderer.getWidth()) - this.clientAreaWidth) {
            offset = Math.max(0, width - this.clientAreaWidth);
        }
        this.scrollHorizontal(offset - this.horizontalScrollOffset, true);
    }

    public void setHorizontalPixel(int pixel) {
        int width;
        this.checkWidget();
        if (this.getCharCount() == 0) {
            return;
        }
        if (pixel < 0) {
            pixel = 0;
        }
        if (this.clientAreaWidth > 0 && pixel > (width = this.renderer.getWidth()) - this.clientAreaWidth) {
            pixel = Math.max(0, width - this.clientAreaWidth);
        }
        this.scrollHorizontal(pixel - this.horizontalScrollOffset, true);
    }

    public void setIndent(int indent) {
        this.checkWidget();
        if (this.indent == indent || indent < 0) {
            return;
        }
        this.indent = indent;
        this.resetCache(0, this.content.getLineCount());
        this.setCaretLocation();
        super.redraw();
    }

    public void setJustify(boolean justify) {
        this.checkWidget();
        if (this.justify == justify) {
            return;
        }
        this.justify = justify;
        this.resetCache(0, this.content.getLineCount());
        this.setCaretLocation();
        super.redraw();
    }

    public void setKeyBinding(int key, int action) {
        this.checkWidget();
        int modifierValue = key & SWT.MODIFIER_MASK;
        char keyChar = (char)(key & 0x100FFFF);
        if (Compatibility.isLetter(keyChar)) {
            char ch = Character.toUpperCase(keyChar);
            int newKey = ch | modifierValue;
            if (action == 0) {
                this.keyActionMap.remove(new Integer(newKey));
            } else {
                this.keyActionMap.put(new Integer(newKey), new Integer(action));
            }
            ch = Character.toLowerCase(keyChar);
            newKey = ch | modifierValue;
            if (action == 0) {
                this.keyActionMap.remove(new Integer(newKey));
            } else {
                this.keyActionMap.put(new Integer(newKey), new Integer(action));
            }
        } else if (action == 0) {
            this.keyActionMap.remove(new Integer(key));
        } else {
            this.keyActionMap.put(new Integer(key), new Integer(action));
        }
    }

    public void setLeftMargin(int leftMargin) {
        this.checkWidget();
        this.setMargins(leftMargin, this.topMargin, this.rightMargin, this.bottomMargin);
    }

    public void setLineAlignment(int startLine, int lineCount, int alignment) {
        this.checkWidget();
        if (this.isListening(3002)) {
            return;
        }
        if (startLine < 0 || startLine + lineCount > this.content.getLineCount()) {
            SWT.error(5);
        }
        this.renderer.setLineAlignment(startLine, lineCount, alignment);
        this.resetCache(startLine, lineCount);
        this.redrawLines(startLine, lineCount, false);
        int caretLine = this.getCaretLine();
        if (startLine <= caretLine && caretLine < startLine + lineCount) {
            this.setCaretLocation();
        }
        this.setAlignment();
    }

    public void setLineBackground(int startLine, int lineCount, Color background) {
        this.checkWidget();
        if (this.isListening(3001)) {
            return;
        }
        if (startLine < 0 || startLine + lineCount > this.content.getLineCount()) {
            SWT.error(5);
        }
        if (background != null) {
            this.renderer.setLineBackground(startLine, lineCount, background);
        } else {
            this.renderer.clearLineBackground(startLine, lineCount);
        }
        this.redrawLines(startLine, lineCount, false);
    }

    public void setLineBullet(int startLine, int lineCount, Bullet bullet) {
        this.checkWidget();
        if (this.isListening(3002)) {
            return;
        }
        if (startLine < 0 || startLine + lineCount > this.content.getLineCount()) {
            SWT.error(5);
        }
        int oldBottom = this.getLinePixel(startLine + lineCount);
        this.renderer.setLineBullet(startLine, lineCount, bullet);
        this.resetCache(startLine, lineCount);
        int newBottom = this.getLinePixel(startLine + lineCount);
        this.redrawLines(startLine, lineCount, oldBottom != newBottom);
        int caretLine = this.getCaretLine();
        if (startLine <= caretLine && caretLine < startLine + lineCount) {
            this.setCaretLocation();
        }
    }

    void setVariableLineHeight() {
        if (!this.fixedLineHeight) {
            return;
        }
        this.fixedLineHeight = false;
        this.renderer.calculateIdle();
    }

    public void setLineIndent(int startLine, int lineCount, int indent) {
        this.checkWidget();
        if (this.isListening(3002)) {
            return;
        }
        if (startLine < 0 || startLine + lineCount > this.content.getLineCount()) {
            SWT.error(5);
        }
        int oldBottom = this.getLinePixel(startLine + lineCount);
        this.renderer.setLineIndent(startLine, lineCount, indent);
        this.resetCache(startLine, lineCount);
        int newBottom = this.getLinePixel(startLine + lineCount);
        this.redrawLines(startLine, lineCount, oldBottom != newBottom);
        int caretLine = this.getCaretLine();
        if (startLine <= caretLine && caretLine < startLine + lineCount) {
            this.setCaretLocation();
        }
    }

    public void setLineJustify(int startLine, int lineCount, boolean justify) {
        this.checkWidget();
        if (this.isListening(3002)) {
            return;
        }
        if (startLine < 0 || startLine + lineCount > this.content.getLineCount()) {
            SWT.error(5);
        }
        this.renderer.setLineJustify(startLine, lineCount, justify);
        this.resetCache(startLine, lineCount);
        this.redrawLines(startLine, lineCount, false);
        int caretLine = this.getCaretLine();
        if (startLine <= caretLine && caretLine < startLine + lineCount) {
            this.setCaretLocation();
        }
    }

    public void setLineSpacing(int lineSpacing) {
        this.checkWidget();
        if (this.lineSpacing == lineSpacing || lineSpacing < 0) {
            return;
        }
        this.lineSpacing = lineSpacing;
        this.setVariableLineHeight();
        this.resetCache(0, this.content.getLineCount());
        this.setCaretLocation();
        super.redraw();
    }

    public void setLineTabStops(int startLine, int lineCount, int[] tabStops) {
        this.checkWidget();
        if (this.isListening(3002)) {
            return;
        }
        if (startLine < 0 || startLine + lineCount > this.content.getLineCount()) {
            SWT.error(5);
        }
        if (tabStops != null) {
            int pos = 0;
            int[] newTabs = new int[tabStops.length];
            int i = 0;
            while (i < tabStops.length) {
                if (tabStops[i] < pos) {
                    SWT.error(5);
                }
                newTabs[i] = pos = tabStops[i];
                ++i;
            }
            this.renderer.setLineTabStops(startLine, lineCount, newTabs);
        } else {
            this.renderer.setLineTabStops(startLine, lineCount, null);
        }
        this.resetCache(startLine, lineCount);
        this.redrawLines(startLine, lineCount, false);
        int caretLine = this.getCaretLine();
        if (startLine <= caretLine && caretLine < startLine + lineCount) {
            this.setCaretLocation();
        }
    }

    public void setLineWrapIndent(int startLine, int lineCount, int wrapIndent) {
        this.checkWidget();
        if (this.isListening(3002)) {
            return;
        }
        if (startLine < 0 || startLine + lineCount > this.content.getLineCount()) {
            SWT.error(5);
        }
        int oldBottom = this.getLinePixel(startLine + lineCount);
        this.renderer.setLineWrapIndent(startLine, lineCount, wrapIndent);
        this.resetCache(startLine, lineCount);
        int newBottom = this.getLinePixel(startLine + lineCount);
        this.redrawLines(startLine, lineCount, oldBottom != newBottom);
        int caretLine = this.getCaretLine();
        if (startLine <= caretLine && caretLine < startLine + lineCount) {
            this.setCaretLocation();
        }
    }

    public void setMarginColor(Color color) {
        this.checkWidget();
        if (color != null && color.isDisposed()) {
            SWT.error(5);
        }
        this.marginColor = color;
        super.redraw();
    }

    public void setMargins(int leftMargin, int topMargin, int rightMargin, int bottomMargin) {
        this.checkWidget();
        this.leftMargin = Math.max(0, leftMargin);
        this.topMargin = Math.max(0, topMargin);
        this.rightMargin = Math.max(0, rightMargin);
        this.bottomMargin = Math.max(0, bottomMargin);
        this.resetCache(0, this.content.getLineCount());
        this.setScrollBars(true);
        this.setCaretLocation();
        this.setAlignment();
        super.redraw();
    }

    void setMouseWordSelectionAnchor() {
        if (this.clickCount > 1) {
            if (this.caretOffset < this.doubleClickSelection.x) {
                this.selectionAnchor = this.doubleClickSelection.y;
            } else if (this.caretOffset > this.doubleClickSelection.y) {
                this.selectionAnchor = this.doubleClickSelection.x;
            }
        }
    }

    public void setOrientation(int orientation) {
        int oldOrientation = this.getOrientation();
        super.setOrientation(orientation);
        int newOrientation = this.getOrientation();
        if (oldOrientation != newOrientation) {
            this.caretDirection = 0;
            this.resetCache(0, this.content.getLineCount());
            this.setCaretLocation();
            this.keyActionMap.clear();
            this.createKeyBindings();
            super.redraw();
        }
    }

    public void setRightMargin(int rightMargin) {
        this.checkWidget();
        this.setMargins(this.leftMargin, this.topMargin, rightMargin, this.bottomMargin);
    }

    void setScrollBars(boolean vertical) {
        ScrollBar horizontalBar;
        int maximum;
        ScrollBar verticalBar;
        int inactive = 1;
        if ((vertical || !this.isFixedLineHeight()) && (verticalBar = this.getVerticalBar()) != null) {
            maximum = this.renderer.getHeight();
            if (this.clientAreaHeight < maximum) {
                verticalBar.setMaximum(maximum - this.topMargin - this.bottomMargin);
                verticalBar.setThumb(this.clientAreaHeight - this.topMargin - this.bottomMargin);
                verticalBar.setPageIncrement(this.clientAreaHeight - this.topMargin - this.bottomMargin);
            } else if (verticalBar.getThumb() != inactive || verticalBar.getMaximum() != inactive) {
                verticalBar.setValues(verticalBar.getSelection(), verticalBar.getMinimum(), inactive, inactive, verticalBar.getIncrement(), inactive);
            }
        }
        if ((horizontalBar = this.getHorizontalBar()) != null && horizontalBar.getVisible()) {
            maximum = this.renderer.getWidth();
            if (this.clientAreaWidth < maximum) {
                horizontalBar.setMaximum(maximum - this.leftMargin - this.rightMargin);
                horizontalBar.setThumb(this.clientAreaWidth - this.leftMargin - this.rightMargin);
                horizontalBar.setPageIncrement(this.clientAreaWidth - this.leftMargin - this.rightMargin);
            } else if (horizontalBar.getThumb() != inactive || horizontalBar.getMaximum() != inactive) {
                horizontalBar.setValues(horizontalBar.getSelection(), horizontalBar.getMinimum(), inactive, inactive, horizontalBar.getIncrement(), inactive);
            }
        }
    }

    public void setSelection(int start) {
        this.setSelection(start, start);
    }

    public void setSelection(Point point) {
        this.checkWidget();
        if (point == null) {
            SWT.error(4);
        }
        this.setSelection(point.x, point.y);
    }

    public void setSelectionBackground(Color color) {
        this.checkWidget();
        if (color != null && color.isDisposed()) {
            SWT.error(5);
        }
        this.selectionBackground = color;
        this.resetCache(0, this.content.getLineCount());
        this.setCaretLocation();
        super.redraw();
    }

    public void setSelectionForeground(Color color) {
        this.checkWidget();
        if (color != null && color.isDisposed()) {
            SWT.error(5);
        }
        this.selectionForeground = color;
        this.resetCache(0, this.content.getLineCount());
        this.setCaretLocation();
        super.redraw();
    }

    public void setSelection(int start, int end) {
        this.setSelectionRange(start, end - start);
        this.showSelection();
    }

    void setSelection(int start, int length, boolean sendEvent, boolean doBlock) {
        int end = start + length;
        if (start > end) {
            int temp = end;
            end = start;
            start = temp;
        }
        if (this.selection.x != start || this.selection.y != end || length > 0 && this.selectionAnchor != this.selection.x || length < 0 && this.selectionAnchor != this.selection.y) {
            if (this.blockSelection && doBlock) {
                this.setBlockSelectionOffset(start, end, sendEvent);
            } else {
                this.clearSelection(sendEvent);
                if (length < 0) {
                    this.selectionAnchor = this.selection.y = end;
                    this.selection.x = start;
                    this.setCaretOffset(start, 0);
                } else {
                    this.selectionAnchor = this.selection.x = start;
                    this.selection.y = end;
                    this.setCaretOffset(end, 0);
                }
                this.internalRedrawRange(this.selection.x, this.selection.y - this.selection.x);
                this.sendAccessibleTextCaretMoved();
            }
        }
    }

    public void setSelectionRange(int start, int length) {
        this.checkWidget();
        int contentLength = this.getCharCount();
        start = Math.max(0, Math.min(start, contentLength));
        int end = start + length;
        if (end < 0) {
            length = -start;
        } else if (end > contentLength) {
            length = contentLength - start;
        }
        if (this.isLineDelimiter(start) || this.isLineDelimiter(start + length)) {
            SWT.error(5);
        }
        this.setSelection(start, length, false, true);
        this.setCaretLocation();
    }

    public void setStyleRange(StyleRange range) {
        this.checkWidget();
        if (this.isListening(3002)) {
            return;
        }
        if (range != null) {
            if (range.isUnstyled()) {
                this.setStyleRanges(range.start, range.length, null, null, false);
            } else {
                this.setStyleRanges(range.start, 0, null, new StyleRange[]{range}, false);
            }
        } else {
            this.setStyleRanges(0, 0, null, null, true);
        }
    }

    public void setStyleRanges(int start, int length, int[] ranges, StyleRange[] styles) {
        this.checkWidget();
        if (this.isListening(3002)) {
            return;
        }
        if (ranges == null || styles == null) {
            this.setStyleRanges(start, length, null, null, false);
        } else {
            this.setStyleRanges(start, length, ranges, styles, false);
        }
    }

    public void setStyleRanges(int[] ranges, StyleRange[] styles) {
        this.checkWidget();
        if (this.isListening(3002)) {
            return;
        }
        if (ranges == null || styles == null) {
            this.setStyleRanges(0, 0, null, null, true);
        } else {
            this.setStyleRanges(0, 0, ranges, styles, true);
        }
    }

    void setStyleRanges(int start, int length, int[] ranges, StyleRange[] styles, boolean reset) {
        int charCount = this.content.getCharCount();
        int end = start + length;
        if (start > end || start < 0) {
            SWT.error(6);
        }
        if (styles != null) {
            if (end > charCount) {
                SWT.error(6);
            }
            if (ranges != null && ranges.length != styles.length << 1) {
                SWT.error(5);
            }
            int lastOffset = 0;
            boolean variableHeight = false;
            int i = 0;
            while (i < styles.length) {
                int rangeLength;
                int rangeStart;
                if (styles[i] == null) {
                    SWT.error(5);
                }
                if (ranges != null) {
                    rangeStart = ranges[i << 1];
                    rangeLength = ranges[(i << 1) + 1];
                } else {
                    rangeStart = styles[i].start;
                    rangeLength = styles[i].length;
                }
                if (rangeLength < 0) {
                    SWT.error(5);
                }
                if (rangeStart < 0 || rangeStart + rangeLength > charCount) {
                    SWT.error(5);
                }
                if (lastOffset > rangeStart) {
                    SWT.error(5);
                }
                variableHeight |= styles[i].isVariableHeight();
                lastOffset = rangeStart + rangeLength;
                ++i;
            }
            if (variableHeight) {
                this.setVariableLineHeight();
            }
        }
        int rangeStart = start;
        int rangeEnd = end;
        if (styles != null && styles.length > 0) {
            if (ranges != null) {
                rangeStart = ranges[0];
                rangeEnd = ranges[ranges.length - 2] + ranges[ranges.length - 1];
            } else {
                rangeStart = styles[0].start;
                rangeEnd = styles[styles.length - 1].start + styles[styles.length - 1].length;
            }
        }
        int expectedBottom = 0;
        if (!this.isFixedLineHeight() && !reset) {
            int lineEnd = this.content.getLineAtOffset(Math.max(end, rangeEnd));
            int partialTopIndex = this.getPartialTopIndex();
            int partialBottomIndex = this.getPartialBottomIndex();
            if (partialTopIndex <= lineEnd && lineEnd <= partialBottomIndex) {
                expectedBottom = this.getLinePixel(lineEnd + 1);
            }
        }
        if (reset) {
            this.renderer.setStyleRanges(null, null);
        } else {
            this.renderer.updateRanges(start, length, length);
        }
        if (styles != null && styles.length > 0) {
            this.renderer.setStyleRanges(ranges, styles);
        }
        if (reset) {
            this.resetCache(0, this.content.getLineCount());
            super.redraw();
        } else {
            int lineStart = this.content.getLineAtOffset(Math.min(start, rangeStart));
            int lineEnd = this.content.getLineAtOffset(Math.max(end, rangeEnd));
            this.resetCache(lineStart, lineEnd - lineStart + 1);
            int partialTopIndex = this.getPartialTopIndex();
            int partialBottomIndex = this.getPartialBottomIndex();
            if (lineStart <= partialBottomIndex && lineEnd >= partialTopIndex) {
                int top = 0;
                int bottom = this.clientAreaHeight;
                if (partialTopIndex <= lineStart && lineStart <= partialBottomIndex) {
                    top = Math.max(0, this.getLinePixel(lineStart));
                }
                if (partialTopIndex <= lineEnd && lineEnd <= partialBottomIndex) {
                    bottom = this.getLinePixel(lineEnd + 1);
                }
                if (!this.isFixedLineHeight() && bottom != expectedBottom) {
                    bottom = this.clientAreaHeight;
                }
                super.redraw(0, top, this.clientAreaWidth, bottom - top, false);
            }
        }
        int oldColumnX = this.columnX;
        this.setCaretLocation();
        this.columnX = oldColumnX;
        this.doMouseLinkCursor();
    }

    public void setStyleRanges(StyleRange[] ranges) {
        this.checkWidget();
        if (this.isListening(3002)) {
            return;
        }
        if (ranges == null) {
            SWT.error(4);
        }
        this.setStyleRanges(0, 0, null, ranges, true);
    }

    public void setTabs(int tabs) {
        this.checkWidget();
        this.tabLength = tabs;
        this.renderer.setFont(null, tabs);
        this.resetCache(0, this.content.getLineCount());
        this.setCaretLocation();
        super.redraw();
    }

    public void setTabStops(int[] tabs) {
        this.checkWidget();
        if (tabs != null) {
            int pos = 0;
            int[] newTabs = new int[tabs.length];
            int i = 0;
            while (i < tabs.length) {
                if (tabs[i] < pos) {
                    SWT.error(5);
                }
                newTabs[i] = pos = tabs[i];
                ++i;
            }
            this.tabs = newTabs;
        } else {
            this.tabs = null;
        }
        this.resetCache(0, this.content.getLineCount());
        this.setCaretLocation();
        super.redraw();
    }

    public void setText(String text) {
        this.checkWidget();
        if (text == null) {
            SWT.error(4);
        }
        Event event = new Event();
        event.start = 0;
        event.end = this.getCharCount();
        event.text = text;
        event.doit = true;
        this.notifyListeners(25, event);
        if (event.doit) {
            StyledTextEvent styledTextEvent = null;
            if (this.isListening(3000)) {
                styledTextEvent = new StyledTextEvent(this.content);
                styledTextEvent.start = event.start;
                styledTextEvent.end = event.start + event.text.length();
                styledTextEvent.text = this.content.getTextRange(event.start, event.end - event.start);
            }
            this.content.setText(event.text);
            this.notifyListeners(24, event);
            if (styledTextEvent != null) {
                this.notifyListeners(3000, styledTextEvent);
            }
        }
    }

    public void setTextLimit(int limit) {
        this.checkWidget();
        if (limit == 0) {
            SWT.error(7);
        }
        this.textLimit = limit;
    }

    public void setTopIndex(int topIndex) {
        int pixel;
        this.checkWidget();
        if (this.getCharCount() == 0) {
            return;
        }
        int lineCount = this.content.getLineCount();
        if (this.isFixedLineHeight()) {
            int pageSize = Math.max(1, Math.min(lineCount, this.getLineCountWhole()));
            if (topIndex < 0) {
                topIndex = 0;
            } else if (topIndex > lineCount - pageSize) {
                topIndex = lineCount - pageSize;
            }
            pixel = this.getLinePixel(topIndex);
        } else {
            pixel = this.getLinePixel(topIndex = Math.max(0, Math.min(lineCount - 1, topIndex)));
            pixel = pixel > 0 ? this.getAvailableHeightBellow(pixel) : this.getAvailableHeightAbove(pixel);
        }
        this.scrollVertical(pixel, true);
    }

    public void setTopMargin(int topMargin) {
        this.checkWidget();
        this.setMargins(this.leftMargin, topMargin, this.rightMargin, this.bottomMargin);
    }

    public void setTopPixel(int pixel) {
        this.checkWidget();
        if (this.getCharCount() == 0) {
            return;
        }
        if (pixel < 0) {
            pixel = 0;
        }
        int lineCount = this.content.getLineCount();
        int height = this.clientAreaHeight - this.topMargin - this.bottomMargin;
        int verticalOffset = this.getVerticalScrollOffset();
        if (this.isFixedLineHeight()) {
            int maxTopPixel = Math.max(0, lineCount * this.getVerticalIncrement() - height);
            if (pixel > maxTopPixel) {
                pixel = maxTopPixel;
            }
            pixel -= verticalOffset;
        } else if ((pixel -= verticalOffset) > 0) {
            pixel = this.getAvailableHeightBellow(pixel);
        }
        this.scrollVertical(pixel, true);
    }

    public void setWordWrap(boolean wrap) {
        this.checkWidget();
        if ((this.getStyle() & 4) != 0) {
            return;
        }
        if (this.wordWrap == wrap) {
            return;
        }
        if (this.wordWrap && this.blockSelection) {
            this.setBlockSelection(false);
        }
        this.wordWrap = wrap;
        this.setVariableLineHeight();
        this.resetCache(0, this.content.getLineCount());
        this.horizontalScrollOffset = 0;
        ScrollBar horizontalBar = this.getHorizontalBar();
        if (horizontalBar != null) {
            horizontalBar.setVisible(!this.wordWrap);
        }
        this.setScrollBars(true);
        this.setCaretLocation();
        super.redraw();
    }

    public void setWrapIndent(int wrapIndent) {
        this.checkWidget();
        if (this.wrapIndent == wrapIndent || wrapIndent < 0) {
            return;
        }
        this.wrapIndent = wrapIndent;
        this.resetCache(0, this.content.getLineCount());
        this.setCaretLocation();
        super.redraw();
    }

    boolean showLocation(Rectangle rect, boolean scrollPage) {
        boolean scrolled = false;
        if (rect.y < this.topMargin) {
            scrolled = this.scrollVertical(rect.y - this.topMargin, true);
        } else if (rect.y + rect.height > this.clientAreaHeight - this.bottomMargin) {
            scrolled = this.clientAreaHeight - this.topMargin - this.bottomMargin <= 0 ? this.scrollVertical(rect.y - this.topMargin, true) : this.scrollVertical(rect.y + rect.height - (this.clientAreaHeight - this.bottomMargin), true);
        }
        int width = this.clientAreaWidth - this.rightMargin - this.leftMargin;
        if (width > 0) {
            int minScroll;
            int n = minScroll = scrollPage ? width / 4 : 0;
            if (rect.x < this.leftMargin) {
                int scrollWidth = Math.max(this.leftMargin - rect.x, minScroll);
                int maxScroll = this.horizontalScrollOffset;
                scrolled = this.scrollHorizontal(-Math.min(maxScroll, scrollWidth), true);
            } else if (rect.x + rect.width > this.clientAreaWidth - this.rightMargin) {
                int scrollWidth = Math.max(rect.x + rect.width - (this.clientAreaWidth - this.rightMargin), minScroll);
                int maxScroll = this.renderer.getWidth() - this.horizontalScrollOffset - this.clientAreaWidth;
                scrolled = this.scrollHorizontal(Math.min(maxScroll, scrollWidth), true);
            }
        }
        return scrolled;
    }

    void showCaret() {
        Rectangle bounds = this.getBoundsAtOffset(this.caretOffset);
        if (!this.showLocation(bounds, true)) {
            this.setCaretLocation();
        }
    }

    public void showSelection() {
        boolean selectionFits;
        int endOffset;
        int startOffset;
        boolean rightToLeft;
        this.checkWidget();
        boolean bl = rightToLeft = this.caretOffset == this.selection.x;
        if (rightToLeft) {
            startOffset = this.selection.y;
            endOffset = this.selection.x;
        } else {
            startOffset = this.selection.x;
            endOffset = this.selection.y;
        }
        Rectangle startBounds = this.getBoundsAtOffset(startOffset);
        Rectangle endBounds = this.getBoundsAtOffset(endOffset);
        int w = this.clientAreaWidth - this.leftMargin - this.rightMargin;
        boolean bl2 = rightToLeft ? startBounds.x - endBounds.x <= w : (selectionFits = endBounds.x - startBounds.x <= w);
        if (selectionFits) {
            if (this.showLocation(startBounds, false)) {
                endBounds = this.getBoundsAtOffset(endOffset);
            }
            endBounds.width = endOffset == this.caretOffset ? this.getCaretWidth() : 0;
            this.showLocation(endBounds, false);
        } else {
            this.showLocation(endBounds, true);
        }
    }

    void updateCaretVisibility() {
        Caret caret = this.getCaret();
        if (caret != null) {
            if (this.blockSelection && this.blockXLocation != -1) {
                caret.setVisible(false);
            } else {
                Point location = caret.getLocation();
                Point size = caret.getSize();
                boolean visible = this.topMargin <= location.y + size.y && location.y <= this.clientAreaHeight - this.bottomMargin && this.leftMargin <= location.x + size.x && location.x <= this.clientAreaWidth - this.rightMargin;
                caret.setVisible(visible);
            }
        }
    }

    void updateSelection(int startOffset, int replacedLength, int newLength) {
        if (this.selection.y <= startOffset) {
            if (this.wordWrap) {
                this.setCaretLocation();
            }
            return;
        }
        if (this.selection.x < startOffset) {
            this.internalRedrawRange(this.selection.x, startOffset - this.selection.x);
        }
        if (this.selection.y > startOffset + replacedLength && this.selection.x < startOffset + replacedLength) {
            int netNewLength = newLength - replacedLength;
            int redrawStart = startOffset + newLength;
            this.internalRedrawRange(redrawStart, this.selection.y + netNewLength - redrawStart);
        }
        if (this.selection.y > startOffset && this.selection.x < startOffset + replacedLength) {
            this.setSelection(startOffset + newLength, 0, true, false);
        } else {
            this.setSelection(this.selection.x + newLength - replacedLength, this.selection.y - this.selection.x, true, false);
        }
        this.setCaretLocation();
    }

    static class Printing
    implements Runnable {
        static final int LEFT = 0;
        static final int CENTER = 1;
        static final int RIGHT = 2;
        Printer printer;
        StyledTextRenderer printerRenderer;
        StyledTextPrintOptions printOptions;
        Rectangle clientArea;
        FontData fontData;
        Font printerFont;
        Hashtable resources;
        int tabLength;
        GC gc;
        int pageWidth;
        int startPage;
        int endPage;
        int scope;
        int startLine;
        int endLine;
        boolean singleLine;
        Point selection = null;
        boolean mirrored;
        int lineSpacing;
        int printMargin;

        Printing(StyledText styledText, Printer printer, StyledTextPrintOptions printOptions) {
            this.printer = printer;
            this.printOptions = printOptions;
            this.mirrored = (styledText.getStyle() & 0x8000000) != 0;
            this.singleLine = styledText.isSingleLine();
            this.startPage = 1;
            this.endPage = Integer.MAX_VALUE;
            PrinterData data = printer.getPrinterData();
            this.scope = data.scope;
            if (this.scope == 1) {
                this.startPage = data.startPage;
                this.endPage = data.endPage;
                if (this.endPage < this.startPage) {
                    int temp = this.endPage;
                    this.endPage = this.startPage;
                    this.startPage = temp;
                }
            } else if (this.scope == 2) {
                this.selection = styledText.getSelectionRange();
            }
            this.printerRenderer = new StyledTextRenderer(printer, null);
            this.printerRenderer.setContent(this.copyContent(styledText.getContent()));
            this.cacheLineData(styledText);
        }

        void cacheLineData(StyledText styledText) {
            StyledTextRenderer renderer = styledText.renderer;
            renderer.copyInto(this.printerRenderer);
            this.fontData = styledText.getFont().getFontData()[0];
            this.tabLength = styledText.tabLength;
            int lineCount = this.printerRenderer.lineCount;
            if (styledText.isListening(3001) || styledText.isBidi() && styledText.isListening(3007) || styledText.isListening(3002)) {
                StyledTextContent content = this.printerRenderer.content;
                int i = 0;
                while (i < lineCount) {
                    String line = content.getLine(i);
                    int lineOffset = content.getOffsetAtLine(i);
                    StyledTextEvent event = styledText.getLineBackgroundData(lineOffset, line);
                    if (event != null && event.lineBackground != null) {
                        this.printerRenderer.setLineBackground(i, 1, event.lineBackground);
                    }
                    if (styledText.isBidi() && (event = styledText.getBidiSegments(lineOffset, line)) != null) {
                        this.printerRenderer.setLineSegments(i, 1, event.segments);
                        this.printerRenderer.setLineSegmentChars(i, 1, event.segmentsChars);
                    }
                    if ((event = styledText.getLineStyleData(lineOffset, line)) != null) {
                        this.printerRenderer.setLineIndent(i, 1, event.indent);
                        this.printerRenderer.setLineAlignment(i, 1, event.alignment);
                        this.printerRenderer.setLineJustify(i, 1, event.justify);
                        this.printerRenderer.setLineBullet(i, 1, event.bullet);
                        StyleRange[] styles = event.styles;
                        if (styles != null && styles.length > 0) {
                            this.printerRenderer.setStyleRanges(event.ranges, styles);
                        }
                    }
                    ++i;
                }
            }
            Point screenDPI = styledText.getDisplay().getDPI();
            Point printerDPI = this.printer.getDPI();
            this.resources = new Hashtable();
            int i = 0;
            while (i < lineCount) {
                int indent;
                Color color = this.printerRenderer.getLineBackground(i, null);
                if (color != null) {
                    if (this.printOptions.printLineBackground) {
                        Color printerColor = (Color)this.resources.get(color);
                        if (printerColor == null) {
                            printerColor = new Color(this.printer, color.getRGB());
                            this.resources.put(color, printerColor);
                        }
                        this.printerRenderer.setLineBackground(i, 1, printerColor);
                    } else {
                        this.printerRenderer.setLineBackground(i, 1, null);
                    }
                }
                if ((indent = this.printerRenderer.getLineIndent(i, 0)) != 0) {
                    this.printerRenderer.setLineIndent(i, 1, indent * printerDPI.x / screenDPI.x);
                }
                ++i;
            }
            StyleRange[] styles = this.printerRenderer.styles;
            int i2 = 0;
            while (i2 < this.printerRenderer.styleCount) {
                Color printerColor;
                Color color;
                StyleRange style = styles[i2];
                Font font = style.font;
                if (style.font != null) {
                    Font printerFont = (Font)this.resources.get(font);
                    if (printerFont == null) {
                        printerFont = new Font((Device)this.printer, font.getFontData());
                        this.resources.put(font, printerFont);
                    }
                    style.font = printerFont;
                }
                if ((color = style.foreground) != null) {
                    printerColor = (Color)this.resources.get(color);
                    if (this.printOptions.printTextForeground) {
                        if (printerColor == null) {
                            printerColor = new Color(this.printer, color.getRGB());
                            this.resources.put(color, printerColor);
                        }
                        style.foreground = printerColor;
                    } else {
                        style.foreground = null;
                    }
                }
                if ((color = style.background) != null) {
                    printerColor = (Color)this.resources.get(color);
                    if (this.printOptions.printTextBackground) {
                        if (printerColor == null) {
                            printerColor = new Color(this.printer, color.getRGB());
                            this.resources.put(color, printerColor);
                        }
                        style.background = printerColor;
                    } else {
                        style.background = null;
                    }
                }
                if (!this.printOptions.printTextFontStyle) {
                    style.fontStyle = 0;
                }
                style.rise = style.rise * printerDPI.y / screenDPI.y;
                GlyphMetrics metrics = style.metrics;
                if (metrics != null) {
                    metrics.ascent = metrics.ascent * printerDPI.y / screenDPI.y;
                    metrics.descent = metrics.descent * printerDPI.y / screenDPI.y;
                    metrics.width = metrics.width * printerDPI.x / screenDPI.x;
                }
                ++i2;
            }
            this.lineSpacing = styledText.lineSpacing * printerDPI.y / screenDPI.y;
            if (this.printOptions.printLineNumbers) {
                this.printMargin = 3 * printerDPI.x / screenDPI.x;
            }
        }

        StyledTextContent copyContent(StyledTextContent original) {
            DefaultContent printerContent = new DefaultContent();
            int insertOffset = 0;
            int i = 0;
            while (i < original.getLineCount()) {
                int insertEndOffset = i < original.getLineCount() - 1 ? original.getOffsetAtLine(i + 1) : original.getCharCount();
                printerContent.replaceTextRange(insertOffset, 0, original.getTextRange(insertOffset, insertEndOffset - insertOffset));
                insertOffset = insertEndOffset;
                ++i;
            }
            return printerContent;
        }

        void dispose() {
            if (this.gc != null) {
                this.gc.dispose();
                this.gc = null;
            }
            if (this.resources != null) {
                Enumeration enumeration = this.resources.elements();
                while (enumeration.hasMoreElements()) {
                    Resource resource = (Resource)enumeration.nextElement();
                    resource.dispose();
                }
                this.resources = null;
            }
            if (this.printerFont != null) {
                this.printerFont.dispose();
                this.printerFont = null;
            }
            if (this.printerRenderer != null) {
                this.printerRenderer.dispose();
                this.printerRenderer = null;
            }
        }

        void init() {
            Rectangle trim = this.printer.computeTrim(0, 0, 0, 0);
            Point dpi = this.printer.getDPI();
            this.printerFont = new Font((Device)this.printer, this.fontData.getName(), this.fontData.getHeight(), 0);
            this.clientArea = this.printer.getClientArea();
            this.pageWidth = this.clientArea.width;
            this.clientArea.x = dpi.x + trim.x;
            this.clientArea.y = dpi.y + trim.y;
            this.clientArea.width -= this.clientArea.x + trim.width;
            this.clientArea.height -= this.clientArea.y + trim.height;
            int style = this.mirrored ? 0x4000000 : 0x2000000;
            this.gc = new GC(this.printer, style);
            this.gc.setFont(this.printerFont);
            this.printerRenderer.setFont(this.printerFont, this.tabLength);
            int lineHeight = this.printerRenderer.getLineHeight();
            if (this.printOptions.header != null) {
                this.clientArea.y += lineHeight * 2;
                this.clientArea.height -= lineHeight * 2;
            }
            if (this.printOptions.footer != null) {
                this.clientArea.height -= lineHeight * 2;
            }
            StyledTextContent content = this.printerRenderer.content;
            this.startLine = 0;
            int n = this.endLine = this.singleLine ? 0 : content.getLineCount() - 1;
            if (this.scope == 1) {
                int pageSize = this.clientArea.height / lineHeight;
                this.startLine = (this.startPage - 1) * pageSize;
            } else if (this.scope == 2) {
                this.startLine = content.getLineAtOffset(this.selection.x);
                this.endLine = this.selection.y > 0 ? content.getLineAtOffset(this.selection.x + this.selection.y - 1) : this.startLine - 1;
            }
        }

        void print() {
            Color background = this.gc.getBackground();
            Color foreground = this.gc.getForeground();
            int paintY = this.clientArea.y;
            int paintX = this.clientArea.x;
            int width = this.clientArea.width;
            int page = this.startPage;
            int pageBottom = this.clientArea.y + this.clientArea.height;
            int orientation = this.gc.getStyle() & 0x6000000;
            TextLayout printLayout = null;
            if (this.printOptions.printLineNumbers || this.printOptions.header != null || this.printOptions.footer != null) {
                printLayout = new TextLayout(this.printer);
                printLayout.setFont(this.printerFont);
            }
            if (this.printOptions.printLineNumbers) {
                int numberingWidth = 0;
                int count = this.endLine - this.startLine + 1;
                String[] lineLabels = this.printOptions.lineLabels;
                if (lineLabels != null) {
                    int i = this.startLine;
                    while (i < Math.min(count, lineLabels.length)) {
                        if (lineLabels[i] != null) {
                            printLayout.setText(lineLabels[i]);
                            int lineWidth = printLayout.getBounds().width;
                            numberingWidth = Math.max(numberingWidth, lineWidth);
                        }
                        ++i;
                    }
                } else {
                    StringBuffer buffer = new StringBuffer("0");
                    while ((count /= 10) > 0) {
                        buffer.append("0");
                    }
                    printLayout.setText(buffer.toString());
                    numberingWidth = printLayout.getBounds().width;
                }
                if ((numberingWidth += this.printMargin) > width) {
                    numberingWidth = width;
                }
                paintX += numberingWidth;
                width -= numberingWidth;
            }
            int i = this.startLine;
            while (i <= this.endLine && page <= this.endPage) {
                if (paintY == this.clientArea.y) {
                    this.printer.startPage();
                    this.printDecoration(page, true, printLayout);
                }
                TextLayout layout = this.printerRenderer.getTextLayout(i, orientation, width, this.lineSpacing);
                Color lineBackground = this.printerRenderer.getLineBackground(i, background);
                int paragraphBottom = paintY + layout.getBounds().height;
                if (paragraphBottom <= pageBottom) {
                    this.printLine(paintX, paintY, this.gc, foreground, lineBackground, layout, printLayout, i);
                    paintY = paragraphBottom;
                } else {
                    int lineCount = layout.getLineCount();
                    while (paragraphBottom > pageBottom && lineCount > 0) {
                        paragraphBottom -= layout.getLineBounds((int)(--lineCount)).height + layout.getSpacing();
                    }
                    if (lineCount == 0) {
                        this.printDecoration(page, false, printLayout);
                        this.printer.endPage();
                        if (++page <= this.endPage) {
                            this.printer.startPage();
                            this.printDecoration(page, true, printLayout);
                            paintY = this.clientArea.y;
                            this.printLine(paintX, paintY, this.gc, foreground, lineBackground, layout, printLayout, i);
                            paintY += layout.getBounds().height;
                        }
                    } else {
                        int height = paragraphBottom - paintY;
                        this.gc.setClipping(this.clientArea.x, paintY, this.clientArea.width, height);
                        this.printLine(paintX, paintY, this.gc, foreground, lineBackground, layout, printLayout, i);
                        this.gc.setClipping((Rectangle)null);
                        this.printDecoration(page, false, printLayout);
                        this.printer.endPage();
                        if (++page <= this.endPage) {
                            this.printer.startPage();
                            this.printDecoration(page, true, printLayout);
                            paintY = this.clientArea.y - height;
                            int layoutHeight = layout.getBounds().height;
                            this.gc.setClipping(this.clientArea.x, this.clientArea.y, this.clientArea.width, layoutHeight - height);
                            this.printLine(paintX, paintY, this.gc, foreground, lineBackground, layout, printLayout, i);
                            this.gc.setClipping((Rectangle)null);
                            paintY += layoutHeight;
                        }
                    }
                }
                this.printerRenderer.disposeTextLayout(layout);
                ++i;
            }
            if (page <= this.endPage && paintY > this.clientArea.y) {
                this.printDecoration(page, false, printLayout);
                this.printer.endPage();
            }
            if (printLayout != null) {
                printLayout.dispose();
            }
        }

        void printDecoration(int page, boolean header, TextLayout layout) {
            String text;
            String string = text = header ? this.printOptions.header : this.printOptions.footer;
            if (text == null) {
                return;
            }
            int lastSegmentIndex = 0;
            int i = 0;
            while (i < 3) {
                String segment;
                int segmentIndex = text.indexOf("\t", lastSegmentIndex);
                if (segmentIndex == -1) {
                    segment = text.substring(lastSegmentIndex);
                    this.printDecorationSegment(segment, i, page, header, layout);
                    break;
                }
                segment = text.substring(lastSegmentIndex, segmentIndex);
                this.printDecorationSegment(segment, i, page, header, layout);
                lastSegmentIndex = segmentIndex + "\t".length();
                ++i;
            }
        }

        void printDecorationSegment(String segment, int alignment, int page, boolean header, TextLayout layout) {
            int pageIndex = segment.indexOf("<page>");
            if (pageIndex != -1) {
                int pageTagLength = "<page>".length();
                StringBuffer buffer = new StringBuffer(segment.substring(0, pageIndex));
                buffer.append(page);
                buffer.append(segment.substring(pageIndex + pageTagLength));
                segment = buffer.toString();
            }
            if (segment.length() > 0) {
                layout.setText(segment);
                int segmentWidth = layout.getBounds().width;
                int segmentHeight = this.printerRenderer.getLineHeight();
                int drawX = 0;
                if (alignment == 0) {
                    drawX = this.clientArea.x;
                } else if (alignment == 1) {
                    drawX = (this.pageWidth - segmentWidth) / 2;
                } else if (alignment == 2) {
                    drawX = this.clientArea.x + this.clientArea.width - segmentWidth;
                }
                int drawY = header ? this.clientArea.y - segmentHeight * 2 : this.clientArea.y + this.clientArea.height + segmentHeight;
                layout.draw(this.gc, drawX, drawY);
            }
        }

        void printLine(int x, int y, GC gc, Color foreground, Color background, TextLayout layout, TextLayout printLayout, int index) {
            if (background != null) {
                Rectangle rect = layout.getBounds();
                gc.setBackground(background);
                gc.fillRectangle(x, y, rect.width, rect.height);
            }
            if (this.printOptions.printLineNumbers) {
                FontMetrics metrics = layout.getLineMetrics(0);
                printLayout.setAscent(metrics.getAscent() + metrics.getLeading());
                printLayout.setDescent(metrics.getDescent());
                String[] lineLabels = this.printOptions.lineLabels;
                if (lineLabels != null) {
                    if (index >= 0 && index < lineLabels.length && lineLabels[index] != null) {
                        printLayout.setText(lineLabels[index]);
                    } else {
                        printLayout.setText("");
                    }
                } else {
                    printLayout.setText(String.valueOf(index));
                }
                int paintX = x - this.printMargin - printLayout.getBounds().width;
                printLayout.draw(gc, paintX, y);
                printLayout.setAscent(-1);
                printLayout.setDescent(-1);
            }
            gc.setForeground(foreground);
            layout.draw(gc, x, y);
        }

        public void run() {
            String jobName = this.printOptions.jobName;
            if (jobName == null) {
                jobName = "Printing";
            }
            if (this.printer.startJob(jobName)) {
                this.init();
                this.print();
                this.dispose();
                this.printer.endJob();
            }
        }
    }

    class RTFWriter
    extends TextWriter {
        static final int DEFAULT_FOREGROUND = 0;
        static final int DEFAULT_BACKGROUND = 1;
        Vector colorTable = new Vector();
        Vector fontTable = new Vector();
        boolean WriteUnicode;

        public RTFWriter(int start, int length) {
            super(start, length);
            this.colorTable.addElement(StyledText.this.getForeground());
            this.colorTable.addElement(StyledText.this.getBackground());
            this.fontTable.addElement(StyledText.this.getFont());
            this.setUnicode();
        }

        public void close() {
            if (!this.isClosed()) {
                this.writeHeader();
                this.write("\n}}\u0000");
                super.close();
            }
        }

        int getColorIndex(Color color, int defaultIndex) {
            if (color == null) {
                return defaultIndex;
            }
            int index = this.colorTable.indexOf(color);
            if (index == -1) {
                index = this.colorTable.size();
                this.colorTable.addElement(color);
            }
            return index;
        }

        int getFontIndex(Font font) {
            int index = this.fontTable.indexOf(font);
            if (index == -1) {
                index = this.fontTable.size();
                this.fontTable.addElement(font);
            }
            return index;
        }

        void setUnicode() {
            int majorIndex;
            String osName = System.getProperty("os.name").toLowerCase();
            String osVersion = System.getProperty("os.version");
            int majorVersion = 0;
            if (osName.startsWith("windows nt") && osVersion != null && (majorIndex = osVersion.indexOf(46)) != -1) {
                osVersion = osVersion.substring(0, majorIndex);
                try {
                    majorVersion = Integer.parseInt(osVersion);
                }
                catch (NumberFormatException numberFormatException) {}
            }
            this.WriteUnicode = !osName.startsWith("windows 95") && !osName.startsWith("windows 98") && !osName.startsWith("windows me") && (!osName.startsWith("windows nt") || majorVersion > 4);
        }

        void write(String string, int start, int end) {
            int index = start;
            while (index < end) {
                char ch = string.charAt(index);
                if (ch > '\u007f' && this.WriteUnicode) {
                    if (index > start) {
                        this.write(string.substring(start, index));
                    }
                    this.write("\\u");
                    this.write(Integer.toString((short)ch));
                    this.write('?');
                    start = index + 1;
                } else if (ch == '}' || ch == '{' || ch == '\\') {
                    if (index > start) {
                        this.write(string.substring(start, index));
                    }
                    this.write('\\');
                    this.write(ch);
                    start = index + 1;
                }
                ++index;
            }
            if (start < end) {
                this.write(string.substring(start, end));
            }
        }

        void writeHeader() {
            StringBuffer header = new StringBuffer();
            FontData fontData = StyledText.this.getFont().getFontData()[0];
            header.append("{\\rtf1\\ansi");
            String cpg = System.getProperty("file.encoding").toLowerCase();
            if (cpg.startsWith("cp") || cpg.startsWith("ms")) {
                cpg = cpg.substring(2, cpg.length());
                header.append("\\ansicpg");
                header.append(cpg);
            }
            header.append("\\uc1\\deff0{\\fonttbl{\\f0\\fnil ");
            header.append(fontData.getName());
            header.append(";");
            int i = 1;
            while (i < this.fontTable.size()) {
                header.append("\\f");
                header.append(i);
                header.append(" ");
                FontData fd = ((Font)this.fontTable.elementAt(i)).getFontData()[0];
                header.append(fd.getName());
                header.append(";");
                ++i;
            }
            header.append("}}\n{\\colortbl");
            i = 0;
            while (i < this.colorTable.size()) {
                Color color = (Color)this.colorTable.elementAt(i);
                header.append("\\red");
                header.append(color.getRed());
                header.append("\\green");
                header.append(color.getGreen());
                header.append("\\blue");
                header.append(color.getBlue());
                header.append(";");
                ++i;
            }
            header.append("}\n{\\f0\\fs");
            header.append(fontData.getHeight() * 2);
            header.append(" ");
            this.write(header.toString(), 0);
        }

        public void writeLine(String line, int lineOffset) {
            StyleRange[] styles;
            int[] ranges;
            boolean lineJustify;
            int lineIndent;
            int lineAlignment;
            if (this.isClosed()) {
                SWT.error(39);
            }
            int lineIndex = StyledText.this.content.getLineAtOffset(lineOffset);
            StyledTextEvent event = StyledText.this.getLineStyleData(lineOffset, line);
            if (event != null) {
                lineAlignment = event.alignment;
                lineIndent = event.indent;
                lineJustify = event.justify;
                ranges = event.ranges;
                styles = event.styles;
            } else {
                lineAlignment = StyledText.this.renderer.getLineAlignment(lineIndex, StyledText.this.alignment);
                lineIndent = StyledText.this.renderer.getLineIndent(lineIndex, StyledText.this.indent);
                lineJustify = StyledText.this.renderer.getLineJustify(lineIndex, StyledText.this.justify);
                ranges = StyledText.this.renderer.getRanges(lineOffset, line.length());
                styles = StyledText.this.renderer.getStyleRanges(lineOffset, line.length(), false);
            }
            if (styles == null) {
                styles = new StyleRange[]{};
            }
            Color lineBackground = StyledText.this.renderer.getLineBackground(lineIndex, null);
            event = StyledText.this.getLineBackgroundData(lineOffset, line);
            if (event != null && event.lineBackground != null) {
                lineBackground = event.lineBackground;
            }
            this.writeStyledLine(line, lineOffset, ranges, styles, lineBackground, lineIndent, lineAlignment, lineJustify);
        }

        public void writeLineDelimiter(String lineDelimiter) {
            if (this.isClosed()) {
                SWT.error(39);
            }
            this.write(lineDelimiter, 0, lineDelimiter.length());
            this.write("\\par ");
        }

        void writeStyledLine(String line, int lineOffset, int[] ranges, StyleRange[] styles, Color lineBackground, int indent, int alignment, boolean justify) {
            int lineLength = line.length();
            int startOffset = this.getStart();
            int writeOffset = startOffset - lineOffset;
            if (writeOffset >= lineLength) {
                return;
            }
            int lineIndex = Math.max(0, writeOffset);
            this.write("\\fi");
            this.write(indent);
            switch (alignment) {
                case 16384: {
                    this.write("\\ql");
                    break;
                }
                case 0x1000000: {
                    this.write("\\qc");
                    break;
                }
                case 131072: {
                    this.write("\\qr");
                }
            }
            if (justify) {
                this.write("\\qj");
            }
            this.write(" ");
            if (lineBackground != null) {
                this.write("{\\highlight");
                this.write(this.getColorIndex(lineBackground, 1));
                this.write(" ");
            }
            int endOffset = startOffset + super.getCharCount();
            int lineEndOffset = Math.min(lineLength, endOffset - lineOffset);
            int i = 0;
            while (i < styles.length) {
                int end;
                int start;
                StyleRange style = styles[i];
                if (ranges != null) {
                    start = ranges[i << 1] - lineOffset;
                    end = start + ranges[(i << 1) + 1];
                } else {
                    start = style.start - lineOffset;
                    end = start + style.length;
                }
                if (end >= writeOffset) {
                    if (start >= lineEndOffset) break;
                    if (lineIndex < start) {
                        this.write(line, lineIndex, start);
                        lineIndex = start;
                    }
                    this.write("{\\cf");
                    this.write(this.getColorIndex(style.foreground, 0));
                    int colorIndex = this.getColorIndex(style.background, 1);
                    if (colorIndex != 1) {
                        this.write("\\highlight");
                        this.write(colorIndex);
                    }
                    int fontStyle = style.fontStyle;
                    Font font = style.font;
                    if (font != null) {
                        int fontIndex = this.getFontIndex(font);
                        this.write("\\f");
                        this.write(fontIndex);
                        FontData fontData = font.getFontData()[0];
                        this.write("\\fs");
                        this.write(fontData.getHeight() * 2);
                        fontStyle = fontData.getStyle();
                    }
                    if ((fontStyle & 1) != 0) {
                        this.write("\\b");
                    }
                    if ((fontStyle & 2) != 0) {
                        this.write("\\i");
                    }
                    if (style.underline) {
                        this.write("\\ul");
                    }
                    if (style.strikeout) {
                        this.write("\\strike");
                    }
                    this.write(" ");
                    int copyEnd = Math.min(end, lineEndOffset);
                    copyEnd = Math.max(copyEnd, lineIndex);
                    this.write(line, lineIndex, copyEnd);
                    if ((fontStyle & 1) != 0) {
                        this.write("\\b0");
                    }
                    if ((style.fontStyle & 2) != 0) {
                        this.write("\\i0");
                    }
                    if (style.underline) {
                        this.write("\\ul0");
                    }
                    if (style.strikeout) {
                        this.write("\\strike0");
                    }
                    this.write("}");
                    lineIndex = copyEnd;
                }
                ++i;
            }
            if (lineIndex < lineEndOffset) {
                this.write(line, lineIndex, lineEndOffset);
            }
            if (lineBackground != null) {
                this.write("}");
            }
        }
    }

    class TextWriter {
        private StringBuffer buffer;
        private int startOffset;
        private int endOffset;
        private boolean isClosed = false;

        public TextWriter(int start, int length) {
            this.buffer = new StringBuffer(length);
            this.startOffset = start;
            this.endOffset = start + length;
        }

        public void close() {
            if (!this.isClosed) {
                this.isClosed = true;
            }
        }

        public int getCharCount() {
            return this.endOffset - this.startOffset;
        }

        public int getStart() {
            return this.startOffset;
        }

        public boolean isClosed() {
            return this.isClosed;
        }

        public String toString() {
            return this.buffer.toString();
        }

        void write(String string) {
            this.buffer.append(string);
        }

        void write(String string, int offset) {
            if (offset < 0 || offset > this.buffer.length()) {
                return;
            }
            this.buffer.insert(offset, string);
        }

        void write(int i) {
            this.buffer.append(i);
        }

        void write(char i) {
            this.buffer.append(i);
        }

        public void writeLine(String line, int lineOffset) {
            int copyEnd;
            int lineLength;
            int writeOffset;
            if (this.isClosed) {
                SWT.error(39);
            }
            if ((writeOffset = this.startOffset - lineOffset) >= (lineLength = line.length())) {
                return;
            }
            int lineIndex = writeOffset > 0 ? writeOffset : 0;
            if (lineIndex < (copyEnd = Math.min(lineLength, this.endOffset - lineOffset))) {
                this.write(line.substring(lineIndex, copyEnd));
            }
        }

        public void writeLineDelimiter(String lineDelimiter) {
            if (this.isClosed) {
                SWT.error(39);
            }
            this.write(lineDelimiter);
        }
    }
}

