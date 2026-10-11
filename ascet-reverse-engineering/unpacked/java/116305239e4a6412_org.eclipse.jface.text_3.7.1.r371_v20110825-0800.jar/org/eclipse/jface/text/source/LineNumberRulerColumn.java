/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.util.Util
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.internal.SWTEventListener
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.TypedListener
 */
package org.eclipse.jface.text.source;

import java.util.Arrays;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.IViewportListener;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.text.source.CompositeRuler;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.IVerticalRulerColumn;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.TypedListener;

public class LineNumberRulerColumn
implements IVerticalRulerColumn {
    private static final boolean IS_MAC = Util.isMac();
    private CompositeRuler fParentRuler;
    private ITextViewer fCachedTextViewer;
    private StyledText fCachedTextWidget;
    private Canvas fCanvas;
    private int fScrollPos;
    private Image fBuffer;
    private InternalListener fInternalListener = new InternalListener();
    private Font fFont;
    private int[] fIndentation;
    private boolean fSensitiveToTextChanges = false;
    private Color fForeground;
    private Color fBackground;
    private int fCachedNumberOfDigits = -1;
    private boolean fRelayoutRequired = false;
    private Object fRunnableLock = new Object();
    private boolean fIsRunnablePosted = false;
    private Runnable fRunnable = new Runnable(){

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void run() {
            Object object = LineNumberRulerColumn.this.fRunnableLock;
            synchronized (object) {
                LineNumberRulerColumn.this.fIsRunnablePosted = false;
            }
            LineNumberRulerColumn.this.redraw();
        }
    };
    private MouseHandler fMouseHandler;

    public void setForeground(Color foreground) {
        this.fForeground = foreground;
    }

    protected Color getForeground() {
        return this.fForeground;
    }

    public void setBackground(Color background) {
        this.fBackground = background;
        if (this.fCanvas != null && !this.fCanvas.isDisposed()) {
            this.fCanvas.setBackground(this.getBackground(this.fCanvas.getDisplay()));
        }
    }

    protected Color getBackground(Display display) {
        if (this.fBackground == null) {
            return display.getSystemColor(25);
        }
        return this.fBackground;
    }

    public Control getControl() {
        return this.fCanvas;
    }

    public int getWidth() {
        return this.fIndentation[0];
    }

    protected boolean updateNumberOfDigits() {
        if (this.fCachedTextViewer == null) {
            return false;
        }
        int digits = this.computeNumberOfDigits();
        if (this.fCachedNumberOfDigits != digits) {
            this.fCachedNumberOfDigits = digits;
            return true;
        }
        return false;
    }

    protected int computeNumberOfDigits() {
        IDocument document = this.fCachedTextViewer.getDocument();
        int lines = document == null ? 0 : document.getNumberOfLines();
        int digits = 2;
        while ((double)lines > Math.pow(10.0, digits) - 1.0) {
            ++digits;
        }
        return digits;
    }

    protected void layout(boolean redraw) {
        ITextViewerExtension extension;
        Control control;
        if (!redraw) {
            this.fRelayoutRequired = true;
            return;
        }
        this.fRelayoutRequired = false;
        if (this.fCachedTextViewer instanceof ITextViewerExtension && (control = (extension = (ITextViewerExtension)((Object)this.fCachedTextViewer)).getControl()) instanceof Composite && !control.isDisposed()) {
            Composite composite = (Composite)control;
            composite.layout(true);
        }
    }

    protected void computeIndentations() {
        if (this.fCanvas == null || this.fCanvas.isDisposed()) {
            return;
        }
        GC gc = new GC((Drawable)this.fCanvas);
        try {
            gc.setFont(this.fCanvas.getFont());
            this.fIndentation = new int[this.fCachedNumberOfDigits + 1];
            char[] nines = new char[this.fCachedNumberOfDigits];
            Arrays.fill(nines, '9');
            String nineString = new String(nines);
            Point p = gc.stringExtent(nineString);
            this.fIndentation[0] = p.x;
            int i = 1;
            while (i <= this.fCachedNumberOfDigits) {
                p = gc.stringExtent(nineString.substring(0, i));
                this.fIndentation[i] = this.fIndentation[0] - p.x;
                ++i;
            }
        }
        finally {
            gc.dispose();
        }
    }

    public Control createControl(CompositeRuler parentRuler, Composite parentControl) {
        this.fParentRuler = parentRuler;
        this.fCachedTextViewer = parentRuler.getTextViewer();
        this.fCachedTextWidget = this.fCachedTextViewer.getTextWidget();
        this.fCanvas = new Canvas(parentControl, 524288){

            public void addMouseListener(MouseListener listener) {
                if (listener == LineNumberRulerColumn.this.fMouseHandler) {
                    super.addMouseListener(listener);
                } else {
                    TypedListener typedListener = null;
                    if (listener != null) {
                        typedListener = new TypedListener((SWTEventListener)listener);
                    }
                    this.addListener(8, (Listener)typedListener);
                }
            }
        };
        this.fCanvas.setBackground(this.getBackground(this.fCanvas.getDisplay()));
        this.fCanvas.setForeground(this.fForeground);
        this.fCanvas.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent event) {
                if (LineNumberRulerColumn.this.fCachedTextViewer != null) {
                    LineNumberRulerColumn.this.doubleBufferPaint(event.gc);
                }
            }
        });
        this.fCanvas.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                LineNumberRulerColumn.this.handleDispose();
                LineNumberRulerColumn.this.fCachedTextViewer = null;
                LineNumberRulerColumn.this.fCachedTextWidget = null;
            }
        });
        this.fMouseHandler = new MouseHandler();
        this.fCanvas.addMouseListener((MouseListener)this.fMouseHandler);
        this.fCanvas.addMouseMoveListener((MouseMoveListener)this.fMouseHandler);
        if (this.fCachedTextViewer != null) {
            this.fCachedTextViewer.addViewportListener(this.fInternalListener);
            this.fCachedTextViewer.addTextListener(this.fInternalListener);
            if (this.fFont == null && this.fCachedTextWidget != null && !this.fCachedTextWidget.isDisposed()) {
                this.fFont = this.fCachedTextWidget.getFont();
            }
        }
        if (this.fFont != null) {
            this.fCanvas.setFont(this.fFont);
        }
        this.updateNumberOfDigits();
        this.computeIndentations();
        return this.fCanvas;
    }

    protected void handleDispose() {
        if (this.fCachedTextViewer != null) {
            this.fCachedTextViewer.removeViewportListener(this.fInternalListener);
            this.fCachedTextViewer.removeTextListener(this.fInternalListener);
        }
        if (this.fBuffer != null) {
            this.fBuffer.dispose();
            this.fBuffer = null;
        }
    }

    private void doubleBufferPaint(GC dest) {
        Point size = this.fCanvas.getSize();
        if (size.x <= 0 || size.y <= 0) {
            return;
        }
        if (this.fBuffer != null) {
            Rectangle r = this.fBuffer.getBounds();
            if (r.width != size.x || r.height != size.y) {
                this.fBuffer.dispose();
                this.fBuffer = null;
            }
        }
        if (this.fBuffer == null) {
            this.fBuffer = new Image((Device)this.fCanvas.getDisplay(), size.x, size.y);
        }
        GC gc = new GC((Drawable)this.fBuffer);
        gc.setFont(this.fCanvas.getFont());
        if (this.fForeground != null) {
            gc.setForeground(this.fForeground);
        }
        try {
            gc.setBackground(this.getBackground(this.fCanvas.getDisplay()));
            gc.fillRectangle(0, 0, size.x, size.y);
            ILineRange visibleLines = JFaceTextUtil.getVisibleModelLines(this.fCachedTextViewer);
            if (visibleLines == null) {
                return;
            }
            this.fScrollPos = this.fCachedTextWidget.getTopPixel();
            this.doPaint(gc, visibleLines);
        }
        finally {
            gc.dispose();
        }
        dest.drawImage(this.fBuffer, 0, 0);
    }

    protected int getVisibleLinesInViewport() {
        return LineNumberRulerColumn.getVisibleLinesInViewport(this.fCachedTextWidget);
    }

    protected final boolean isViewerCompletelyShown() {
        return JFaceTextUtil.isShowingEntireContents(this.fCachedTextWidget);
    }

    void doPaint(GC gc, ILineRange visibleLines) {
        Display display = this.fCachedTextWidget.getDisplay();
        int y = -JFaceTextUtil.getHiddenTopLinePixels(this.fCachedTextWidget);
        int lastLine = LineNumberRulerColumn.end(visibleLines);
        int line = visibleLines.getStartLine();
        while (line < lastLine) {
            int widgetLine = JFaceTextUtil.modelLineToWidgetLine(this.fCachedTextViewer, line);
            if (widgetLine != -1) {
                int lineHeight = this.fCachedTextWidget.getLineHeight(this.fCachedTextWidget.getOffsetAtLine(widgetLine));
                this.paintLine(line, y, lineHeight, gc, display);
                y += lineHeight;
            }
            ++line;
        }
    }

    private static int end(ILineRange range) {
        return range.getStartLine() + range.getNumberOfLines();
    }

    protected String createDisplayString(int line) {
        return Integer.toString(line + 1);
    }

    private int getBaselineBias(GC gc, int widgetLine) {
        int offset = this.fCachedTextWidget.getOffsetAtLine(widgetLine);
        int widgetBaseline = this.fCachedTextWidget.getBaseline(offset);
        FontMetrics fm = gc.getFontMetrics();
        int fontBaseline = fm.getAscent() + fm.getLeading();
        int baselineBias = widgetBaseline - fontBaseline;
        return Math.max(0, baselineBias);
    }

    protected void paintLine(int line, int y, int lineheight, GC gc, Display display) {
        int widgetLine = JFaceTextUtil.modelLineToWidgetLine(this.fCachedTextViewer, line);
        String s = this.createDisplayString(line);
        int indentation = this.fIndentation[s.length()];
        int baselineBias = this.getBaselineBias(gc, widgetLine);
        gc.drawString(s, indentation, y + baselineBias, true);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected final void postRedraw() {
        Display d;
        if (this.fCanvas != null && !this.fCanvas.isDisposed() && (d = this.fCanvas.getDisplay()) != null) {
            Object object = this.fRunnableLock;
            synchronized (object) {
                if (this.fIsRunnablePosted) {
                    return;
                }
                this.fIsRunnablePosted = true;
            }
            d.asyncExec(this.fRunnable);
        }
    }

    public void redraw() {
        if (this.fRelayoutRequired) {
            this.layout(true);
            return;
        }
        if (this.fCachedTextViewer != null && this.fCanvas != null && !this.fCanvas.isDisposed()) {
            if (IS_MAC) {
                this.fCanvas.redraw();
                this.fCanvas.update();
            } else {
                GC gc = new GC((Drawable)this.fCanvas);
                this.doubleBufferPaint(gc);
                gc.dispose();
            }
        }
    }

    public void setModel(IAnnotationModel model) {
    }

    public void setFont(Font font) {
        this.fFont = font;
        if (this.fCanvas != null && !this.fCanvas.isDisposed()) {
            this.fCanvas.setFont(this.fFont);
            this.updateNumberOfDigits();
            this.computeIndentations();
        }
    }

    protected CompositeRuler getParentRuler() {
        return this.fParentRuler;
    }

    static int getVisibleLinesInViewport(StyledText textWidget) {
        Rectangle clArea;
        if (textWidget != null && !(clArea = textWidget.getClientArea()).isEmpty()) {
            int firstPixel = 0;
            int lastPixel = clArea.height - 1;
            int first = JFaceTextUtil.getLineIndex(textWidget, firstPixel);
            int last = JFaceTextUtil.getLineIndex(textWidget, lastPixel);
            return last - first;
        }
        return -1;
    }

    class InternalListener
    implements IViewportListener,
    ITextListener {
        private boolean fCachedRedrawState = true;

        InternalListener() {
        }

        public void viewportChanged(int verticalPosition) {
            if (this.fCachedRedrawState && verticalPosition != LineNumberRulerColumn.this.fScrollPos) {
                LineNumberRulerColumn.this.redraw();
            }
        }

        public void textChanged(TextEvent event) {
            this.fCachedRedrawState = event.getViewerRedrawState();
            if (!this.fCachedRedrawState) {
                return;
            }
            if (LineNumberRulerColumn.this.updateNumberOfDigits()) {
                LineNumberRulerColumn.this.computeIndentations();
                LineNumberRulerColumn.this.layout(event.getViewerRedrawState());
                return;
            }
            boolean viewerCompletelyShown = LineNumberRulerColumn.this.isViewerCompletelyShown();
            if (viewerCompletelyShown || LineNumberRulerColumn.this.fSensitiveToTextChanges || event.getDocumentEvent() == null) {
                LineNumberRulerColumn.this.postRedraw();
            }
            LineNumberRulerColumn.this.fSensitiveToTextChanges = viewerCompletelyShown;
        }
    }

    class MouseHandler
    implements MouseListener,
    MouseMoveListener {
        private int fCachedViewportSize;
        private int fStartLineOffset;
        private int fStartLineNumber;
        private int fAutoScrollDirection;
        private boolean fIsListeningForMove = false;

        MouseHandler() {
        }

        public void mouseUp(MouseEvent event) {
            if (event.button == 1) {
                this.stopSelecting();
                this.stopAutoScroll();
            }
        }

        public void mouseDown(MouseEvent event) {
            LineNumberRulerColumn.this.fParentRuler.setLocationOfLastMouseButtonActivity(event.x, event.y);
            if (event.button == 1) {
                this.startSelecting((event.stateMask & 0x20000) != 0);
            }
        }

        public void mouseDoubleClick(MouseEvent event) {
            LineNumberRulerColumn.this.fParentRuler.setLocationOfLastMouseButtonActivity(event.x, event.y);
            this.stopSelecting();
            this.stopAutoScroll();
        }

        public void mouseMove(MouseEvent event) {
            if (this.fIsListeningForMove && !this.autoScroll(event)) {
                int newLine = LineNumberRulerColumn.this.fParentRuler.toDocumentLineNumber(event.y);
                this.expandSelection(newLine);
            }
            LineNumberRulerColumn.this.fParentRuler.setLocationOfLastMouseButtonActivity(event.x, event.y);
        }

        private void startSelecting(boolean expandExistingSelection) {
            try {
                IDocument document = LineNumberRulerColumn.this.fCachedTextViewer.getDocument();
                int lineNumber = LineNumberRulerColumn.this.fParentRuler.getLineOfLastMouseButtonActivity();
                StyledText textWidget = LineNumberRulerColumn.this.fCachedTextViewer.getTextWidget();
                if (textWidget != null && !textWidget.isFocusControl()) {
                    textWidget.setFocus();
                }
                if (expandExistingSelection && LineNumberRulerColumn.this.fCachedTextViewer instanceof ITextViewerExtension5 && textWidget != null) {
                    ITextViewerExtension5 extension5 = (ITextViewerExtension5)((Object)LineNumberRulerColumn.this.fCachedTextViewer);
                    int widgetCaret = textWidget.getCaretOffset();
                    int modelCaret = extension5.widgetOffset2ModelOffset(widgetCaret);
                    Point selection = LineNumberRulerColumn.this.fCachedTextViewer.getSelectedRange();
                    int startOffset = modelCaret == selection.x ? selection.x + selection.y : selection.x;
                    this.fStartLineNumber = document.getLineOfOffset(startOffset);
                    this.fStartLineOffset = startOffset;
                    this.expandSelection(lineNumber);
                } else {
                    this.fStartLineNumber = lineNumber;
                    this.fStartLineOffset = document.getLineInformation(this.fStartLineNumber).getOffset();
                    LineNumberRulerColumn.this.fCachedTextViewer.setSelectedRange(this.fStartLineOffset, 0);
                }
                this.fCachedViewportSize = LineNumberRulerColumn.this.getVisibleLinesInViewport();
                this.fIsListeningForMove = true;
            }
            catch (BadLocationException badLocationException) {}
        }

        private void stopSelecting() {
            this.fIsListeningForMove = false;
        }

        private void expandSelection(int lineNumber) {
            try {
                int offset;
                IDocument document = LineNumberRulerColumn.this.fCachedTextViewer.getDocument();
                IRegion lineInfo = document.getLineInformation(lineNumber);
                Display display = LineNumberRulerColumn.this.fCachedTextWidget.getDisplay();
                Point absolutePosition = display.getCursorLocation();
                Point relativePosition = LineNumberRulerColumn.this.fCachedTextWidget.toControl(absolutePosition);
                if (relativePosition.x < 0) {
                    offset = lineInfo.getOffset();
                } else {
                    try {
                        int widgetOffset = LineNumberRulerColumn.this.fCachedTextWidget.getOffsetAtLocation(relativePosition);
                        Point p = LineNumberRulerColumn.this.fCachedTextWidget.getLocationAtOffset(widgetOffset);
                        if (p.x > relativePosition.x) {
                            --widgetOffset;
                        }
                        if (LineNumberRulerColumn.this.fCachedTextViewer instanceof ITextViewerExtension5) {
                            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)LineNumberRulerColumn.this.fCachedTextViewer);
                            offset = extension.widgetOffset2ModelOffset(widgetOffset);
                        } else {
                            offset = widgetOffset + LineNumberRulerColumn.this.fCachedTextViewer.getVisibleRegion().getOffset();
                        }
                    }
                    catch (IllegalArgumentException illegalArgumentException) {
                        int lineEndWidgetOffset;
                        int lineEndOffset = lineInfo.getOffset() + lineInfo.getLength();
                        if (LineNumberRulerColumn.this.fCachedTextViewer instanceof ITextViewerExtension5) {
                            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)LineNumberRulerColumn.this.fCachedTextViewer);
                            lineEndWidgetOffset = extension.modelOffset2WidgetOffset(lineEndOffset);
                        } else {
                            lineEndWidgetOffset = lineEndOffset - LineNumberRulerColumn.this.fCachedTextViewer.getVisibleRegion().getOffset();
                        }
                        Point p = LineNumberRulerColumn.this.fCachedTextWidget.getLocationAtOffset(lineEndWidgetOffset);
                        offset = p.x < relativePosition.x ? lineEndOffset : lineInfo.getOffset();
                    }
                }
                int start = Math.min(this.fStartLineOffset, offset);
                int end = Math.max(this.fStartLineOffset, offset);
                if (lineNumber < this.fStartLineNumber) {
                    LineNumberRulerColumn.this.fCachedTextViewer.setSelectedRange(end, start - end);
                } else {
                    LineNumberRulerColumn.this.fCachedTextViewer.setSelectedRange(start, end - start);
                }
            }
            catch (BadLocationException badLocationException) {}
        }

        private void stopAutoScroll() {
            this.fAutoScrollDirection = 0;
        }

        private boolean autoScroll(MouseEvent event) {
            Rectangle area = LineNumberRulerColumn.this.fCanvas.getClientArea();
            if (event.y > area.height) {
                this.autoScroll(1024);
                return true;
            }
            if (event.y < 0) {
                this.autoScroll(128);
                return true;
            }
            this.stopAutoScroll();
            return false;
        }

        private void autoScroll(int direction) {
            if (this.fAutoScrollDirection == direction) {
                return;
            }
            Display display = LineNumberRulerColumn.this.fCanvas.getDisplay();
            Runnable timer = null;
            switch (direction) {
                case 128: {
                    timer = new Runnable(this, display){
                        final /* synthetic */ MouseHandler this$1;
                        private final /* synthetic */ Display val$display;
                        {
                            this.this$1 = mouseHandler;
                            this.val$display = display;
                        }

                        public void run() {
                            int top;
                            if (MouseHandler.access$0(this.this$1) == 128 && (top = MouseHandler.access$1(this.this$1)) > 0) {
                                LineNumberRulerColumn.access$6(MouseHandler.access$4(this.this$1)).setTopIndex(top - 1);
                                MouseHandler.access$2(this.this$1, top - 1);
                                this.val$display.timerExec(5, (Runnable)this);
                            }
                        }
                    };
                    break;
                }
                case 1024: {
                    timer = new Runnable(this, display){
                        final /* synthetic */ MouseHandler this$1;
                        private final /* synthetic */ Display val$display;
                        {
                            this.this$1 = mouseHandler;
                            this.val$display = display;
                        }

                        public void run() {
                            if (MouseHandler.access$0(this.this$1) == 1024) {
                                int top = MouseHandler.access$1(this.this$1);
                                LineNumberRulerColumn.access$6(MouseHandler.access$4(this.this$1)).setTopIndex(top + 1);
                                MouseHandler.access$2(this.this$1, top + 1 + MouseHandler.access$3(this.this$1));
                                this.val$display.timerExec(5, (Runnable)this);
                            }
                        }
                    };
                }
            }
            if (timer != null) {
                this.fAutoScrollDirection = direction;
                display.timerExec(5, timer);
            }
        }

        private int getInclusiveTopIndex() {
            if (LineNumberRulerColumn.this.fCachedTextWidget != null && !LineNumberRulerColumn.this.fCachedTextWidget.isDisposed()) {
                return JFaceTextUtil.getPartialTopIndex(LineNumberRulerColumn.this.fCachedTextViewer);
            }
            return -1;
        }

        static /* synthetic */ int access$0(MouseHandler mouseHandler) {
            return mouseHandler.fAutoScrollDirection;
        }

        static /* synthetic */ int access$1(MouseHandler mouseHandler) {
            return mouseHandler.getInclusiveTopIndex();
        }

        static /* synthetic */ void access$2(MouseHandler mouseHandler, int n) {
            mouseHandler.expandSelection(n);
        }

        static /* synthetic */ int access$3(MouseHandler mouseHandler) {
            return mouseHandler.fCachedViewportSize;
        }

        static /* synthetic */ LineNumberRulerColumn access$4(MouseHandler mouseHandler) {
            return mouseHandler.LineNumberRulerColumn.this;
        }
    }
}

