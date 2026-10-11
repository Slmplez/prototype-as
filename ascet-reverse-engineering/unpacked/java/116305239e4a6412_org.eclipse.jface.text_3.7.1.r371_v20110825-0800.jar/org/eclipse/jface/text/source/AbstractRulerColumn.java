/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.text.source;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.IViewportListener;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.text.source.CompositeRuler;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.IVerticalRulerColumn;
import org.eclipse.jface.text.source.IVerticalRulerInfo;
import org.eclipse.jface.text.source.IVerticalRulerInfoExtension;
import org.eclipse.jface.text.source.IVerticalRulerListener;
import org.eclipse.jface.text.source.LineRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;

public abstract class AbstractRulerColumn
implements IVerticalRulerColumn,
IVerticalRulerInfo,
IVerticalRulerInfoExtension {
    private static final int DEFAULT_WIDTH = 12;
    private static final int DEFAULT_TEXT_INSET = 2;
    private final InternalListener fInternalListener = new InternalListener();
    private final MouseHandler fMouseHandler = new MouseHandler();
    private CompositeRuler fParentRuler;
    private Canvas fCanvas;
    private ITextViewer fTextViewer;
    private StyledText fStyledText;
    private int fLastTopPixel = -1;
    private boolean fWasShowingEntireContents = false;
    private int fWidth = 12;
    private int fTextInset = 2;
    private Color fBackground;
    private Font fFont;
    private IAnnotationModel fModel;
    private IAnnotationHover fHover;

    protected AbstractRulerColumn() {
    }

    public Control createControl(CompositeRuler parentRuler, Composite parentControl) {
        Assert.isLegal((parentControl != null ? 1 : 0) != 0);
        Assert.isLegal((parentRuler != null ? 1 : 0) != 0);
        Assert.isLegal((this.fParentRuler == null ? 1 : 0) != 0);
        this.fParentRuler = parentRuler;
        this.fTextViewer = this.getParentRuler().getTextViewer();
        this.fTextViewer.addViewportListener(this.fInternalListener);
        this.fTextViewer.addTextListener(this.fInternalListener);
        this.fStyledText = this.fTextViewer.getTextWidget();
        this.fCanvas = new Canvas(parentControl, this.getCanvasStyle());
        this.fCanvas.setBackground(this.getDefaultBackground());
        this.fCanvas.setFont(this.getFont());
        this.fCanvas.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent event) {
                AbstractRulerColumn.this.paintControl(event);
            }
        });
        this.fCanvas.addMouseListener((MouseListener)this.fMouseHandler);
        this.fCanvas.addMouseMoveListener((MouseMoveListener)this.fMouseHandler);
        return this.fCanvas;
    }

    protected int getCanvasStyle() {
        return 262144;
    }

    public final Control getControl() {
        return this.fCanvas;
    }

    protected final void setWidth(int width) {
        Assert.isLegal((width >= 0 ? 1 : 0) != 0);
        if (this.fWidth != width) {
            this.fWidth = width;
            CompositeRuler composite = this.getParentRuler();
            if (composite != null) {
                composite.relayout();
            }
        }
    }

    public final int getWidth() {
        return this.fWidth;
    }

    protected final CompositeRuler getParentRuler() {
        return this.fParentRuler;
    }

    public final void setFont(Font font) {
        if (this.fFont != font) {
            this.fFont = font;
            this.redraw();
        }
    }

    protected final Font getFont() {
        if (this.fFont != null) {
            return this.fFont;
        }
        if (this.fStyledText != null && !this.fStyledText.isDisposed()) {
            return this.fStyledText.getFont();
        }
        return JFaceResources.getTextFont();
    }

    protected final void setTextInset(int textInset) {
        if (textInset != this.fTextInset) {
            this.fTextInset = textInset;
            this.redraw();
        }
    }

    protected final int getTextInset() {
        return this.fTextInset;
    }

    public void setModel(IAnnotationModel model) {
        if (this.fModel != model) {
            this.fModel = model;
            this.redraw();
        }
    }

    public final IAnnotationModel getModel() {
        return this.fModel;
    }

    protected final void setDefaultBackground(Color background) {
        if (this.fBackground != background) {
            this.fBackground = background;
            if (this.fCanvas != null && !this.fCanvas.isDisposed()) {
                this.fCanvas.setBackground(this.getDefaultBackground());
            }
            this.redraw();
        }
    }

    protected final Color getDefaultBackground() {
        if (this.fBackground != null) {
            return this.fBackground;
        }
        if (this.fStyledText != null && !this.fStyledText.isDisposed()) {
            return this.fStyledText.getBackground();
        }
        Display display = this.fCanvas != null && !this.fCanvas.isDisposed() ? this.fCanvas.getDisplay() : Display.getCurrent();
        if (display != null) {
            return display.getSystemColor(25);
        }
        return null;
    }

    protected final void setHover(IAnnotationHover hover) {
        if (this.fHover != hover) {
            this.fHover = hover;
        }
    }

    public IAnnotationHover getHover() {
        return this.fHover;
    }

    public void dispose() {
        if (this.fTextViewer != null) {
            this.fTextViewer.removeViewportListener(this.fInternalListener);
            this.fTextViewer.removeTextListener(this.fInternalListener);
            this.fTextViewer = null;
        }
        if (this.fStyledText != null) {
            this.fStyledText = null;
        }
        if (this.fCanvas != null) {
            this.fCanvas.dispose();
            this.fCanvas = null;
        }
    }

    public final void redraw() {
        if (this.fCanvas != null && !this.fCanvas.isDisposed()) {
            this.fCanvas.redraw();
        }
    }

    protected final void redraw(ILineRange lines) {
        if (this.fCanvas == null || this.fCanvas.isDisposed()) {
            return;
        }
        int firstModelLine = lines.getStartLine();
        int lastModelLine = firstModelLine + lines.getNumberOfLines();
        int firstWidgetLine = JFaceTextUtil.modelLineToWidgetLine(this.fTextViewer, firstModelLine);
        int lastWidgetLine = JFaceTextUtil.modelLineToWidgetLine(this.fTextViewer, lastModelLine);
        int from = Math.max(0, this.fStyledText.getLinePixel(firstWidgetLine));
        int to = Math.min(this.fCanvas.getSize().y, this.fStyledText.getLinePixel(lastWidgetLine + 1));
        this.fCanvas.redraw(0, from, this.fWidth, to - from, false);
    }

    private void paintControl(PaintEvent event) {
        int firstEmpty;
        int lastEmpty;
        if (this.fTextViewer == null) {
            return;
        }
        this.fWasShowingEntireContents = JFaceTextUtil.isShowingEntireContents(this.fStyledText);
        this.fLastTopPixel = this.fStyledText.getTopPixel();
        ILineRange lines = this.computeDirtyWidgetLines(event);
        GC gc = event.gc;
        this.paint(gc, lines);
        if ((this.fCanvas.getStyle() & 0x40000) != 0 && (lastEmpty = event.y + event.height) > (firstEmpty = Math.max(event.y, this.fStyledText.getLinePixel(this.fStyledText.getLineCount())))) {
            gc.setBackground(this.getDefaultBackground());
            gc.fillRectangle(0, firstEmpty, this.getWidth(), lastEmpty - firstEmpty);
        }
    }

    private ILineRange computeDirtyWidgetLines(PaintEvent event) {
        int firstLine = this.fStyledText.getLineIndex(event.y);
        int lastLine = this.fStyledText.getLineIndex(event.y + event.height - 1);
        return new LineRange(firstLine, lastLine - firstLine + 1);
    }

    protected void paint(GC gc, ILineRange lines) {
        int firstLine = lines.getStartLine();
        int lastLine = firstLine + lines.getNumberOfLines();
        int line = firstLine;
        while (line < lastLine) {
            int modelLine = JFaceTextUtil.widgetLine2ModelLine(this.fTextViewer, line);
            if (modelLine != -1) {
                int linePixel = this.fStyledText.getLinePixel(line);
                int lineHeight = this.fStyledText.getLineHeight(this.fStyledText.getOffsetAtLine(line));
                this.paintLine(gc, modelLine, line, linePixel, lineHeight);
            }
            ++line;
        }
    }

    protected void paintLine(GC gc, int modelLine, int widgetLine, int linePixel, int lineHeight) {
        gc.setBackground(this.computeBackground(modelLine));
        gc.fillRectangle(0, linePixel, this.getWidth(), lineHeight);
        String text = this.computeText(modelLine);
        if (text != null) {
            gc.setForeground(this.computeForeground(modelLine));
            gc.drawString(text, this.getTextInset(), linePixel, true);
        }
    }

    protected String computeText(int line) {
        return null;
    }

    protected Color computeBackground(int line) {
        return this.getDefaultBackground();
    }

    protected Color computeForeground(int line) {
        return this.fStyledText.getDisplay().getSystemColor(16);
    }

    public final int getLineOfLastMouseButtonActivity() {
        return this.getParentRuler().getLineOfLastMouseButtonActivity();
    }

    public final int toDocumentLineNumber(int y_coordinate) {
        return this.getParentRuler().toDocumentLineNumber(y_coordinate);
    }

    public void addVerticalRulerListener(IVerticalRulerListener listener) {
        throw new UnsupportedOperationException();
    }

    public void removeVerticalRulerListener(IVerticalRulerListener listener) {
        throw new UnsupportedOperationException();
    }

    private boolean scrollVertical(int pixels) {
        if (pixels == 0 || this.fCanvas == null || this.fCanvas.isDisposed()) {
            return false;
        }
        int width = this.getWidth();
        int clientAreaHeight = this.fStyledText.getClientArea().height;
        if (pixels > 0) {
            int sourceY = 0 + pixels;
            int scrollHeight = clientAreaHeight - sourceY - 0;
            if (scrollHeight > 0) {
                this.fCanvas.scroll(0, 0, 0, sourceY, width, scrollHeight, true);
            }
            if (sourceY > scrollHeight) {
                int redrawY = Math.max(0, 0 + scrollHeight);
                int redrawHeight = Math.min(clientAreaHeight, pixels - scrollHeight);
                this.fCanvas.redraw(0, redrawY, width, redrawHeight, true);
            }
        } else {
            int destinationY = 0 - pixels;
            int scrollHeight = clientAreaHeight - destinationY - 0;
            if (scrollHeight > 0) {
                this.fCanvas.scroll(0, destinationY, 0, 0, width, scrollHeight, true);
            }
            if (destinationY > scrollHeight) {
                int redrawY = Math.max(0, 0 + scrollHeight);
                int redrawHeight = Math.min(clientAreaHeight, -pixels - scrollHeight);
                this.fCanvas.redraw(0, redrawY, width, redrawHeight, true);
            }
        }
        return true;
    }

    private final class InternalListener
    implements IViewportListener,
    ITextListener {
        private InternalListener() {
        }

        public void viewportChanged(int topPixel) {
            int delta = topPixel - AbstractRulerColumn.this.fLastTopPixel;
            if (AbstractRulerColumn.this.scrollVertical(delta)) {
                AbstractRulerColumn.this.fCanvas.update();
            }
        }

        public void textChanged(TextEvent event) {
            if (!event.getViewerRedrawState()) {
                return;
            }
            if (AbstractRulerColumn.this.fWasShowingEntireContents || event.getDocumentEvent() == null || JFaceTextUtil.isShowingEntireContents(AbstractRulerColumn.this.fStyledText)) {
                AbstractRulerColumn.this.redraw();
            }
        }
    }

    private final class MouseHandler
    implements MouseListener,
    MouseMoveListener {
        private MouseHandler() {
        }

        public void mouseUp(MouseEvent event) {
        }

        public void mouseDown(MouseEvent event) {
            AbstractRulerColumn.this.fParentRuler.setLocationOfLastMouseButtonActivity(event.x, event.y);
        }

        public void mouseDoubleClick(MouseEvent event) {
            AbstractRulerColumn.this.fParentRuler.setLocationOfLastMouseButtonActivity(event.x, event.y);
        }

        public void mouseMove(MouseEvent event) {
            AbstractRulerColumn.this.fParentRuler.setLocationOfLastMouseButtonActivity(event.x, event.y);
        }
    }
}

