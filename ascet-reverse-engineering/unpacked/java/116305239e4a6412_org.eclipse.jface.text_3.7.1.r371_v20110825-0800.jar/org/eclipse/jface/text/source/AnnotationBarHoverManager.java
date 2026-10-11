/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.MouseTrackAdapter
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.events.ShellEvent
 *  org.eclipse.swt.events.ShellListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.jface.text.source;

import java.util.Iterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.text.InformationControlReplacer;
import org.eclipse.jface.internal.text.InternalAccessor;
import org.eclipse.jface.text.AbstractHoverInformationControlManager;
import org.eclipse.jface.text.AbstractInformationControlManager;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.ITextViewerExtension8;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.source.CompositeRuler;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationHoverExtension;
import org.eclipse.jface.text.source.IAnnotationHoverExtension2;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.IVerticalRuler;
import org.eclipse.jface.text.source.IVerticalRulerInfo;
import org.eclipse.jface.text.source.IVerticalRulerInfoExtension;
import org.eclipse.jface.text.source.LineNumberRulerColumn;
import org.eclipse.jface.text.source.LineRange;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackAdapter;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public class AnnotationBarHoverManager
extends AbstractHoverInformationControlManager {
    private ISourceViewer fSourceViewer;
    private IVerticalRulerInfo fVerticalRulerInfo;
    private IAnnotationHover fAnnotationHover;
    protected boolean fAllowMouseExit = false;
    private boolean fHideOnMouseWheel = true;
    private IAnnotationHover fCurrentHover;

    public AnnotationBarHoverManager(ISourceViewer sourceViewer, IVerticalRuler ruler, IAnnotationHover annotationHover, IInformationControlCreator creator) {
        this(ruler, sourceViewer, annotationHover, creator);
    }

    public AnnotationBarHoverManager(IVerticalRulerInfo rulerInfo, ISourceViewer sourceViewer, IAnnotationHover annotationHover, IInformationControlCreator creator) {
        super(creator);
        Assert.isNotNull((Object)sourceViewer);
        this.fSourceViewer = sourceViewer;
        this.fVerticalRulerInfo = rulerInfo;
        this.fAnnotationHover = annotationHover;
        this.setAnchor(ANCHOR_RIGHT);
        this.setMargins(5, 0);
    }

    protected void computeInformation() {
        this.fAllowMouseExit = false;
        MouseEvent event = this.getHoverEvent();
        if ((event.stateMask & SWT.BUTTON_MASK) != 0) {
            this.setInformation(null, null);
            return;
        }
        IAnnotationHover hover = this.getHover(event);
        if (hover == null) {
            this.setInformation(null, null);
            return;
        }
        int line = this.getHoverLine(event);
        if (hover instanceof IAnnotationHoverExtension) {
            IAnnotationHoverExtension extension = (IAnnotationHoverExtension)((Object)hover);
            ILineRange range = extension.getHoverLineRange(this.fSourceViewer, line);
            this.setCustomInformationControlCreator(extension.getHoverControlCreator());
            range = this.adaptLineRange(range, line);
            if (range != null) {
                this.setInformation(extension.getHoverInfo(this.fSourceViewer, range, this.computeNumberOfVisibleLines()), this.computeArea(range));
            } else {
                this.setInformation(null, null);
            }
        } else {
            this.setCustomInformationControlCreator(null);
            this.setInformation(hover.getHoverInfo(this.fSourceViewer, line), this.computeArea(line));
        }
    }

    protected void showInformationControl(Rectangle subjectArea) {
        super.showInformationControl(subjectArea);
        this.fCurrentHover = this.getHover(this.getHoverEvent());
    }

    protected void hideInformationControl() {
        this.fCurrentHover = null;
        super.hideInformationControl();
    }

    private ILineRange adaptLineRange(ILineRange lineRange, int line) {
        if (lineRange != null && (lineRange = this.adaptLineRangeToFolding(lineRange, line)) != null) {
            return this.adaptLineRangeToViewport(lineRange);
        }
        return null;
    }

    private ILineRange adaptLineRangeToFolding(ILineRange lineRange, int line) {
        if (this.fSourceViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fSourceViewer);
            try {
                IRegion container;
                IRegion region = this.convertToRegion(lineRange);
                IRegion[] coverage = extension.getCoveredModelRanges(region);
                if (coverage != null && coverage.length > 0 && (container = this.findRegionContainingLine(coverage, line)) != null) {
                    return this.convertToLineRange(container);
                }
            }
            catch (BadLocationException badLocationException) {}
            return null;
        }
        return lineRange;
    }

    private ILineRange adaptLineRangeToViewport(ILineRange lineRange) {
        try {
            StyledText text = this.fSourceViewer.getTextWidget();
            int topLine = text.getTopIndex();
            int rangeTopLine = this.getWidgetLineNumber(lineRange.getStartLine());
            int topDelta = Math.max(topLine - rangeTopLine, 0);
            Rectangle size = text.getClientArea();
            Rectangle trim = text.computeTrim(0, 0, 0, 0);
            int height = size.height - trim.height;
            int lines = JFaceTextUtil.getLineIndex(text, height) - text.getTopIndex();
            int bottomLine = topLine + lines;
            int rangeBottomLine = this.getWidgetLineNumber(lineRange.getStartLine() + lineRange.getNumberOfLines() - 1);
            int bottomDelta = Math.max(rangeBottomLine - bottomLine, 0);
            return new LineRange(lineRange.getStartLine() + topDelta, lineRange.getNumberOfLines() - bottomDelta - topDelta);
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
    }

    private IRegion convertToRegion(ILineRange lineRange) throws BadLocationException {
        IDocument document = this.fSourceViewer.getDocument();
        int startOffset = document.getLineOffset(lineRange.getStartLine());
        int endLine = lineRange.getStartLine() + Math.max(0, lineRange.getNumberOfLines() - 1);
        IRegion lineInfo = document.getLineInformation(endLine);
        int endOffset = lineInfo.getOffset() + lineInfo.getLength();
        return new Region(startOffset, endOffset - startOffset);
    }

    private IRegion findRegionContainingLine(IRegion[] regions, int line) throws BadLocationException {
        IDocument document = this.fSourceViewer.getDocument();
        IRegion lineInfo = document.getLineInformation(line);
        int i = 0;
        while (i < regions.length) {
            if (TextUtilities.overlaps((IRegion)regions[i], (IRegion)lineInfo)) {
                return regions[i];
            }
            ++i;
        }
        return null;
    }

    private ILineRange convertToLineRange(IRegion region) throws BadLocationException {
        IDocument document = this.fSourceViewer.getDocument();
        int startLine = document.getLineOfOffset(region.getOffset());
        int endLine = document.getLineOfOffset(region.getOffset() + region.getLength());
        return new LineRange(startLine, endLine - startLine + 1);
    }

    private Rectangle computeArea(ILineRange lineRange) {
        try {
            StyledText text = this.fSourceViewer.getTextWidget();
            int startLine = this.getWidgetLineNumber(lineRange.getStartLine());
            int y = JFaceTextUtil.computeLineHeight(text, 0, startLine, startLine) - text.getTopPixel();
            int height = JFaceTextUtil.computeLineHeight(text, startLine, startLine + lineRange.getNumberOfLines(), lineRange.getNumberOfLines());
            Point size = this.fVerticalRulerInfo.getControl().getSize();
            return new Rectangle(0, y, size.x, height);
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
    }

    private int computeNumberOfVisibleLines() {
        return LineNumberRulerColumn.getVisibleLinesInViewport(this.fSourceViewer.getTextWidget());
    }

    private IAnnotationHover getHover(MouseEvent event) {
        if (event == null || event.getSource() == null) {
            return this.fAnnotationHover;
        }
        if (this.fVerticalRulerInfo instanceof CompositeRuler) {
            CompositeRuler comp = (CompositeRuler)this.fVerticalRulerInfo;
            Iterator it = comp.getDecoratorIterator();
            while (it.hasNext()) {
                IAnnotationHover hover;
                Object o = it.next();
                if (!(o instanceof IVerticalRulerInfoExtension) || !(o instanceof IVerticalRulerInfo) || ((IVerticalRulerInfo)o).getControl() != event.getSource() || (hover = ((IVerticalRulerInfoExtension)o).getHover()) == null) continue;
                return hover;
            }
        }
        return this.fAnnotationHover;
    }

    private int getHoverLine(MouseEvent event) {
        return event == null ? -1 : this.fVerticalRulerInfo.toDocumentLineNumber(event.y);
    }

    private int getWidgetLineNumber(int line) throws BadLocationException {
        if (this.fSourceViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fSourceViewer);
            return extension.modelLine2WidgetLine(line);
        }
        IRegion region = this.fSourceViewer.getVisibleRegion();
        int firstLine = this.fSourceViewer.getDocument().getLineOfOffset(region.getOffset());
        return line - firstLine;
    }

    private Rectangle computeArea(int line) {
        try {
            StyledText text = this.fSourceViewer.getTextWidget();
            int widgetLine = this.getWidgetLineNumber(line);
            int y = JFaceTextUtil.computeLineHeight(text, 0, widgetLine, widgetLine) - text.getTopPixel();
            Point size = this.fVerticalRulerInfo.getControl().getSize();
            return new Rectangle(0, y, size.x, text.getLineHeight(text.getOffsetAtLine(widgetLine)));
        }
        catch (IllegalArgumentException illegalArgumentException) {
        }
        catch (BadLocationException badLocationException) {}
        return null;
    }

    protected IAnnotationHover getAnnotationHover() {
        return this.fAnnotationHover;
    }

    protected ISourceViewer getSourceViewer() {
        return this.fSourceViewer;
    }

    protected IVerticalRulerInfo getVerticalRulerInfo() {
        return this.fVerticalRulerInfo;
    }

    protected Point computeSizeConstraints(Control subjectControl, Rectangle subjectArea, IInformationControl informationControl) {
        Rectangle r;
        Point constraints = super.computeSizeConstraints(subjectControl, subjectArea, informationControl);
        StyledText styledText = this.fSourceViewer.getTextWidget();
        if (styledText != null && (r = styledText.getClientArea()) != null) {
            constraints.x = r.width;
            constraints.y = r.height;
        }
        return constraints;
    }

    protected Point computeInformationControlLocation(Rectangle subjectArea, Point controlSize) {
        IAnnotationHoverExtension extension;
        boolean allowMouseExit;
        MouseEvent event = this.getHoverEvent();
        IAnnotationHover hover = this.getHover(event);
        if (hover instanceof IAnnotationHoverExtension && (allowMouseExit = (extension = (IAnnotationHoverExtension)((Object)hover)).canHandleMouseCursor())) {
            return this.computeLocation(subjectArea, controlSize, ANCHOR_RIGHT);
        }
        return super.computeInformationControlLocation(subjectArea, controlSize);
    }

    protected Point computeLocation(Rectangle subjectArea, Point controlSize, AbstractInformationControlManager.Anchor anchor) {
        MouseEvent event = this.getHoverEvent();
        IAnnotationHover hover = this.getHover(event);
        boolean allowMouseExit = false;
        if (hover instanceof IAnnotationHoverExtension) {
            IAnnotationHoverExtension extension = (IAnnotationHoverExtension)((Object)hover);
            allowMouseExit = extension.canHandleMouseCursor();
        }
        boolean hideOnMouseWheel = true;
        if (hover instanceof IAnnotationHoverExtension2) {
            IAnnotationHoverExtension2 extension = (IAnnotationHoverExtension2)((Object)hover);
            hideOnMouseWheel = !extension.canHandleMouseWheel();
        }
        this.fHideOnMouseWheel = hideOnMouseWheel;
        if (allowMouseExit) {
            this.fAllowMouseExit = true;
            Control subjectControl = this.getSubjectControl();
            if (anchor == AbstractInformationControlManager.ANCHOR_RIGHT) {
                return subjectControl.toDisplay(subjectArea.x - 4, subjectArea.y - 2);
            }
            if (anchor == AbstractInformationControlManager.ANCHOR_LEFT) {
                return subjectControl.toDisplay(subjectArea.x + subjectArea.width - controlSize.x + 4, subjectArea.y - 2);
            }
        }
        this.fAllowMouseExit = false;
        return super.computeLocation(subjectArea, controlSize, anchor);
    }

    public IAnnotationHover getCurrentAnnotationHover() {
        return this.fCurrentHover;
    }

    public InternalAccessor getInternalAccessor() {
        return new InternalAccessor(){

            public IInformationControl getCurrentInformationControl() {
                return AnnotationBarHoverManager.super.getInternalAccessor().getCurrentInformationControl();
            }

            public void setInformationControlReplacer(InformationControlReplacer replacer) {
                AnnotationBarHoverManager.super.getInternalAccessor().setInformationControlReplacer(replacer);
            }

            public InformationControlReplacer getInformationControlReplacer() {
                return AnnotationBarHoverManager.super.getInternalAccessor().getInformationControlReplacer();
            }

            public boolean canReplace(IInformationControl control) {
                return AnnotationBarHoverManager.super.getInternalAccessor().canReplace(control);
            }

            public boolean isReplaceInProgress() {
                return AnnotationBarHoverManager.super.getInternalAccessor().isReplaceInProgress();
            }

            public void replaceInformationControl(boolean takeFocus) {
                AnnotationBarHoverManager.super.getInternalAccessor().replaceInformationControl(takeFocus);
            }

            public void cropToClosestMonitor(Rectangle bounds) {
                AnnotationBarHoverManager.super.getInternalAccessor().cropToClosestMonitor(bounds);
            }

            public void setHoverEnrichMode(ITextViewerExtension8.EnrichMode mode) {
                AnnotationBarHoverManager.super.getInternalAccessor().setHoverEnrichMode(mode);
            }

            public boolean getAllowMouseExit() {
                return AnnotationBarHoverManager.this.fAllowMouseExit;
            }
        };
    }

    protected class Closer
    extends MouseTrackAdapter
    implements AbstractInformationControlManager.IInformationControlCloser,
    MouseListener,
    MouseMoveListener,
    ControlListener,
    KeyListener,
    DisposeListener,
    ShellListener,
    Listener {
        private Control fSubjectControl;
        private Rectangle fSubjectArea;
        private boolean fIsActive = false;
        private IInformationControl fInformationControlToClose;
        private boolean fHasWheelFilter = false;
        private Display fDisplay;

        public void setSubjectControl(Control control) {
            this.fSubjectControl = control;
        }

        public void setInformationControl(IInformationControl control) {
            this.fInformationControlToClose = control;
        }

        public void start(Rectangle subjectArea) {
            if (this.fIsActive) {
                return;
            }
            this.fIsActive = true;
            this.fSubjectArea = subjectArea;
            this.fInformationControlToClose.addDisposeListener(this);
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
                this.fSubjectControl.addMouseListener((MouseListener)this);
                this.fSubjectControl.addMouseMoveListener((MouseMoveListener)this);
                this.fSubjectControl.addMouseTrackListener((MouseTrackListener)this);
                this.fSubjectControl.getShell().addShellListener((ShellListener)this);
                this.fSubjectControl.addControlListener((ControlListener)this);
                this.fSubjectControl.addKeyListener((KeyListener)this);
                this.fDisplay = this.fSubjectControl.getDisplay();
                if (!this.fDisplay.isDisposed() && AnnotationBarHoverManager.this.fHideOnMouseWheel) {
                    this.fHasWheelFilter = true;
                    this.fDisplay.addFilter(38, (Listener)this);
                    this.fDisplay.addFilter(37, (Listener)this);
                }
            }
        }

        public void stop() {
            if (!this.fIsActive) {
                return;
            }
            this.fIsActive = false;
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
                this.fSubjectControl.removeMouseListener((MouseListener)this);
                this.fSubjectControl.removeMouseMoveListener((MouseMoveListener)this);
                this.fSubjectControl.removeMouseTrackListener((MouseTrackListener)this);
                this.fSubjectControl.getShell().removeShellListener((ShellListener)this);
                this.fSubjectControl.removeControlListener((ControlListener)this);
                this.fSubjectControl.removeKeyListener((KeyListener)this);
            }
            if (this.fDisplay != null && !this.fDisplay.isDisposed() && this.fHasWheelFilter) {
                this.fDisplay.removeFilter(38, (Listener)this);
                this.fDisplay.removeFilter(37, (Listener)this);
            }
            this.fHasWheelFilter = false;
            this.fDisplay = null;
        }

        protected void stop(boolean delayRestart) {
            this.stop();
        }

        public void mouseMove(MouseEvent event) {
            if (!this.fSubjectArea.contains(event.x, event.y)) {
                AnnotationBarHoverManager.this.hideInformationControl();
            }
        }

        public void mouseUp(MouseEvent event) {
        }

        public void mouseDown(MouseEvent event) {
            AnnotationBarHoverManager.this.hideInformationControl();
        }

        public void mouseDoubleClick(MouseEvent event) {
            AnnotationBarHoverManager.this.hideInformationControl();
        }

        public void handleEvent(Event event) {
            if (event.type == 38 || event.type == 37) {
                AnnotationBarHoverManager.this.hideInformationControl();
            }
        }

        public void mouseExit(MouseEvent event) {
            if (!AnnotationBarHoverManager.this.fAllowMouseExit) {
                AnnotationBarHoverManager.this.hideInformationControl();
            }
        }

        public void controlResized(ControlEvent event) {
            AnnotationBarHoverManager.this.hideInformationControl();
        }

        public void controlMoved(ControlEvent event) {
            AnnotationBarHoverManager.this.hideInformationControl();
        }

        public void keyReleased(KeyEvent event) {
        }

        public void keyPressed(KeyEvent event) {
            AnnotationBarHoverManager.this.hideInformationControl();
        }

        public void shellActivated(ShellEvent e) {
        }

        public void shellClosed(ShellEvent e) {
        }

        public void shellDeactivated(ShellEvent e) {
            AnnotationBarHoverManager.this.hideInformationControl();
        }

        public void shellDeiconified(ShellEvent e) {
        }

        public void shellIconified(ShellEvent e) {
        }

        public void widgetDisposed(DisposeEvent e) {
            AnnotationBarHoverManager.this.hideInformationControl();
        }
    }
}

