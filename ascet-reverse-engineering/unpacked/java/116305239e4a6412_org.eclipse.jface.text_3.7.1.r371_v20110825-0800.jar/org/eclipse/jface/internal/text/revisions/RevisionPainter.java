/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 *  org.eclipse.jface.text.source.IAnnotationModelListener
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.internal.text.revisions;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.internal.text.html.BrowserInformationControl;
import org.eclipse.jface.internal.text.html.HTMLPrinter;
import org.eclipse.jface.internal.text.revisions.Colors;
import org.eclipse.jface.internal.text.revisions.Hunk;
import org.eclipse.jface.internal.text.revisions.HunkComputer;
import org.eclipse.jface.internal.text.revisions.RevisionSelectionProvider;
import org.eclipse.jface.text.AbstractReusableInformationControlCreator;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DefaultInformationControl;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.information.IInformationProviderExtension2;
import org.eclipse.jface.text.revisions.IRevisionListener;
import org.eclipse.jface.text.revisions.IRevisionRulerColumnExtension;
import org.eclipse.jface.text.revisions.Revision;
import org.eclipse.jface.text.revisions.RevisionEvent;
import org.eclipse.jface.text.revisions.RevisionInformation;
import org.eclipse.jface.text.revisions.RevisionRange;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.CompositeRuler;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationHoverExtension;
import org.eclipse.jface.text.source.IAnnotationHoverExtension2;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.IAnnotationModelListener;
import org.eclipse.jface.text.source.ILineDiffer;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.ISharedTextColors;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.IVerticalRulerColumn;
import org.eclipse.jface.text.source.LineRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;

public final class RevisionPainter {
    private static boolean DEBUG = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.jface.text.source/debug/RevisionRulerColumn"));
    private static final RGB BY_DATE_START_COLOR = new RGB(199, 134, 57);
    private static final RGB BY_DATE_END_COLOR = new RGB(241, 225, 206);
    private static final String fgStyleSheet = "/* Font definitions */\nbody, h1, h2, h3, h4, h5, h6, p, table, td, caption, th, ul, ol, dl, li, dd, dt {font-family: sans-serif; font-size: 9pt }\npre\t\t\t\t{ font-family: monospace; font-size: 9pt }\n\n/* Margins */\nbody\t     { overflow: auto; margin-top: 0; margin-bottom: 4; margin-left: 3; margin-right: 0 }\nh1           { margin-top: 5; margin-bottom: 1 }\t\nh2           { margin-top: 25; margin-bottom: 3 }\nh3           { margin-top: 20; margin-bottom: 3 }\nh4           { margin-top: 20; margin-bottom: 3 }\nh5           { margin-top: 0; margin-bottom: 0 }\np            { margin-top: 10px; margin-bottom: 10px }\npre\t         { margin-left: 6 }\nul\t         { margin-top: 0; margin-bottom: 10 }\nli\t         { margin-top: 0; margin-bottom: 0 } \nli p\t     { margin-top: 0; margin-bottom: 0 } \nol\t         { margin-top: 0; margin-bottom: 10 }\ndl\t         { margin-top: 0; margin-bottom: 10 }\ndt\t         { margin-top: 0; margin-bottom: 0; font-weight: bold }\ndd\t         { margin-top: 0; margin-bottom: 0 }\n\n/* Styles and colors */\na:link\t     { color: #0000FF }\na:hover\t     { color: #000080 }\na:visited    { text-decoration: underline }\nh4           { font-style: italic }\nstrong\t     { font-weight: bold }\nem\t         { font-style: italic }\nvar\t         { font-style: italic }\nth\t         { font-weight: bold }\n";
    private final ISharedTextColors fSharedColors;
    private final ColorTool fColorTool = new ColorTool();
    private final MouseHandler fMouseHandler = new MouseHandler();
    private final RevisionHover fHover = new RevisionHover();
    private final AnnotationListener fAnnotationListener = new AnnotationListener();
    private final RevisionSelectionProvider fRevisionSelectionProvider = new RevisionSelectionProvider(this);
    private final ListenerList fRevisionListeners = new ListenerList(1);
    private final IVerticalRulerColumn fColumn;
    private CompositeRuler fParentRuler;
    private Control fControl;
    private ITextViewer fViewer;
    private StyledText fWidget;
    private RevisionInformation fRevisionInfo;
    private ILineDiffer fLineDiffer = null;
    private IAnnotationModel fAnnotationModel = null;
    private Color fBackground;
    private List fRevisionRanges = null;
    private List fAnnotations = new ArrayList();
    private int fFocusLine = -1;
    private RevisionRange fFocusRange = null;
    private Revision fFocusRevision = null;
    private Revision fSelectedRevision = null;
    private boolean fWheelHandlerInstalled = false;
    private IRevisionRulerColumnExtension.RenderingMode fRenderingMode = IRevisionRulerColumnExtension.AUTHOR_SHADED_BY_AGE;
    private int fRequiredWidth = -1;
    private int fRevisionIdChars = 0;
    private boolean fShowRevision = false;
    private boolean fShowAuthor = false;
    private int fAuthorInset;
    private int fLastWidth = -1;

    public RevisionPainter(IVerticalRulerColumn column, ISharedTextColors sharedColors) {
        Assert.isLegal((column != null ? 1 : 0) != 0);
        Assert.isLegal((sharedColors != null ? 1 : 0) != 0);
        this.fColumn = column;
        this.fSharedColors = sharedColors;
    }

    public void setRevisionInformation(RevisionInformation info) {
        if (this.fRevisionInfo != info) {
            this.fRequiredWidth = -1;
            this.fRevisionIdChars = 0;
            this.fRevisionInfo = info;
            this.clearRangeCache();
            this.updateFocusRange(null);
            this.handleRevisionSelected((Revision)null);
            this.fColorTool.setInfo(info);
            this.postRedraw();
            this.informListeners();
        }
    }

    public void setRenderingMode(IRevisionRulerColumnExtension.RenderingMode renderingMode) {
        Assert.isLegal((renderingMode != null ? 1 : 0) != 0);
        if (this.fRenderingMode != renderingMode) {
            this.fRenderingMode = renderingMode;
            this.fColorTool.setInfo(this.fRevisionInfo);
            this.postRedraw();
        }
    }

    public void setBackground(Color background) {
        this.fBackground = background;
    }

    public void setParentRuler(CompositeRuler parentRuler) {
        this.fParentRuler = parentRuler;
    }

    public void paint(GC gc, ILineRange visibleLines) {
        int width;
        this.connectIfNeeded();
        if (!this.isConnected()) {
            return;
        }
        if (this.fShowAuthor && this.fShowRevision) {
            char[] string = new char[this.fRevisionIdChars + 1];
            Arrays.fill(string, '9');
            if (string.length > 1) {
                string[0] = 46;
                string[1] = 32;
            }
            this.fAuthorInset = gc.stringExtent((String)new String((char[])string)).x;
        }
        if ((width = this.getWidth()) != this.fLastWidth) {
            this.fColorTool.setInfo(this.fRevisionInfo);
            this.fLastWidth = width;
        }
        List ranges = this.getRanges(visibleLines);
        Iterator it = ranges.iterator();
        while (it.hasNext()) {
            RevisionRange region = (RevisionRange)it.next();
            this.paintRange(region, gc);
        }
    }

    private void connectIfNeeded() {
        if (this.isConnected() || this.fParentRuler == null) {
            return;
        }
        this.fViewer = this.fParentRuler.getTextViewer();
        if (this.fViewer == null) {
            return;
        }
        this.fWidget = this.fViewer.getTextWidget();
        if (this.fWidget == null) {
            return;
        }
        this.fControl = this.fColumn.getControl();
        if (this.fControl == null) {
            return;
        }
        this.fControl.addMouseTrackListener((MouseTrackListener)this.fMouseHandler);
        this.fControl.addMouseMoveListener((MouseMoveListener)this.fMouseHandler);
        this.fControl.addListener(4, (Listener)this.fMouseHandler);
        this.fControl.addListener(3, (Listener)this.fMouseHandler);
        this.fControl.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                RevisionPainter.this.handleDispose();
            }
        });
        this.fRevisionSelectionProvider.install(this.fViewer);
    }

    private boolean isConnected() {
        return this.fControl != null;
    }

    public void setModel(IAnnotationModel model) {
        IAnnotationModel diffModel = model instanceof IAnnotationModelExtension ? ((IAnnotationModelExtension)model).getAnnotationModel((Object)"diff") : model;
        this.setDiffer(diffModel);
        this.setAnnotationModel(model);
    }

    private void setAnnotationModel(IAnnotationModel model) {
        if (this.fAnnotationModel != model) {
            this.fAnnotationModel = model;
        }
    }

    private void setDiffer(IAnnotationModel differ) {
        if ((differ instanceof ILineDiffer || differ == null) && this.fLineDiffer != differ) {
            if (this.fLineDiffer != null) {
                ((IAnnotationModel)this.fLineDiffer).removeAnnotationModelListener((IAnnotationModelListener)this.fAnnotationListener);
            }
            this.fLineDiffer = (ILineDiffer)differ;
            if (this.fLineDiffer != null) {
                ((IAnnotationModel)this.fLineDiffer).addAnnotationModelListener((IAnnotationModelListener)this.fAnnotationListener);
            }
        }
    }

    private void handleDispose() {
        this.updateFocusLine(-1);
        if (this.fLineDiffer != null) {
            ((IAnnotationModel)this.fLineDiffer).removeAnnotationModelListener((IAnnotationModelListener)this.fAnnotationListener);
            this.fLineDiffer = null;
        }
        this.fRevisionSelectionProvider.uninstall();
    }

    private void paintRange(RevisionRange range, GC gc) {
        Color focusColor;
        Color foreground;
        ILineRange widgetRange = this.modelLinesToWidgetLines(range);
        if (widgetRange == null) {
            return;
        }
        Revision revision = range.getRevision();
        boolean drawArmedFocus = range == this.fMouseHandler.fMouseDownRegion;
        boolean drawSelection = !drawArmedFocus && revision == this.fSelectedRevision;
        boolean drawFocus = !drawSelection && !drawArmedFocus && revision == this.fFocusRevision;
        Rectangle box = this.computeBoxBounds(widgetRange);
        gc.setBackground(this.lookupColor(revision, false));
        if (drawArmedFocus) {
            foreground = gc.getForeground();
            focusColor = this.lookupColor(revision, true);
            gc.setForeground(focusColor);
            gc.fillRectangle(box);
            gc.drawRectangle(box.x, box.y, box.width - 1, box.height - 1);
            gc.drawRectangle(box.x + 1, box.y + 1, box.width - 3, box.height - 3);
            gc.setForeground(foreground);
        } else if (drawFocus || drawSelection) {
            foreground = gc.getForeground();
            focusColor = this.lookupColor(revision, true);
            gc.setForeground(focusColor);
            gc.fillRectangle(box);
            gc.drawRectangle(box.x, box.y, box.width - 1, box.height - 1);
            gc.setForeground(foreground);
        } else {
            gc.fillRectangle(box);
        }
        if (this.fShowAuthor || this.fShowRevision) {
            int indentation = 1;
            int baselineBias = this.getBaselineBias(gc, widgetRange.getStartLine());
            if (this.fShowAuthor && this.fShowRevision) {
                gc.drawString(revision.getId(), indentation, box.y + baselineBias, true);
                gc.drawString(revision.getAuthor(), this.fAuthorInset, box.y + baselineBias, true);
            } else if (this.fShowAuthor) {
                gc.drawString(revision.getAuthor(), indentation, box.y + baselineBias, true);
            } else if (this.fShowRevision) {
                gc.drawString(revision.getId(), indentation, box.y + baselineBias, true);
            }
        }
    }

    private int getBaselineBias(GC gc, int widgetLine) {
        int offset = this.fWidget.getOffsetAtLine(widgetLine);
        int widgetBaseline = this.fWidget.getBaseline(offset);
        FontMetrics fm = gc.getFontMetrics();
        int fontBaseline = fm.getAscent() + fm.getLeading();
        int baselineBias = widgetBaseline - fontBaseline;
        return Math.max(0, baselineBias);
    }

    private Color lookupColor(Revision revision, boolean focus) {
        return this.fSharedColors.getColor(this.fColorTool.getColor(revision, focus));
    }

    private RevisionRange getRange(int line) {
        List ranges = this.getRangeCache();
        if (ranges.isEmpty() || line == -1) {
            return null;
        }
        Iterator it = ranges.iterator();
        while (it.hasNext()) {
            RevisionRange range = (RevisionRange)it.next();
            if (!RevisionPainter.contains(range, line)) continue;
            return range;
        }
        RevisionRange lastRegion = (RevisionRange)ranges.get(ranges.size() - 1);
        if (line == RevisionPainter.end(lastRegion)) {
            return lastRegion;
        }
        return null;
    }

    private List getRanges(ILineRange lines) {
        List ranges = this.getRangeCache();
        int end = RevisionPainter.end(lines);
        int first = -1;
        int last = -1;
        int i = 0;
        while (i < ranges.size()) {
            RevisionRange range = (RevisionRange)ranges.get(i);
            int rangeEnd = RevisionPainter.end(range);
            if (first == -1 && rangeEnd > lines.getStartLine()) {
                first = i;
            }
            if (first != -1 && rangeEnd > end) {
                last = i;
                break;
            }
            ++i;
        }
        if (first == -1) {
            return Collections.EMPTY_LIST;
        }
        if (last == -1) {
            last = ranges.size() - 1;
        }
        return ranges.subList(first, last + 1);
    }

    private List getRangeCache() {
        if (this.fRevisionRanges == null) {
            if (this.fRevisionInfo == null) {
                this.fRevisionRanges = Collections.EMPTY_LIST;
            } else {
                Hunk[] hunks = HunkComputer.computeHunks(this.fLineDiffer, this.fViewer.getDocument().getNumberOfLines());
                this.fRevisionInfo.applyDiff(hunks);
                this.fRevisionRanges = this.fRevisionInfo.getRanges();
                this.updateOverviewAnnotations();
                this.informListeners();
            }
        }
        return this.fRevisionRanges;
    }

    private void clearRangeCache() {
        this.fRevisionRanges = null;
    }

    private static boolean contains(ILineRange range, int line) {
        return range.getStartLine() <= line && RevisionPainter.end(range) > line;
    }

    private static int end(ILineRange range) {
        return range.getStartLine() + range.getNumberOfLines();
    }

    private ILineRange modelLinesToWidgetLines(ILineRange range) {
        int widgetStartLine = -1;
        int widgetEndLine = -1;
        if (this.fViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fViewer);
            int modelEndLine = RevisionPainter.end(range);
            int modelLine = range.getStartLine();
            while (modelLine < modelEndLine) {
                int widgetLine = extension.modelLine2WidgetLine(modelLine);
                if (widgetLine != -1) {
                    if (widgetStartLine == -1) {
                        widgetStartLine = widgetLine;
                    }
                    widgetEndLine = widgetLine;
                }
                ++modelLine;
            }
        } else {
            IRegion region = this.fViewer.getVisibleRegion();
            IDocument document = this.fViewer.getDocument();
            try {
                int visibleStartLine = document.getLineOfOffset(region.getOffset());
                int visibleEndLine = document.getLineOfOffset(region.getOffset() + region.getLength());
                widgetStartLine = Math.max(0, range.getStartLine() - visibleStartLine);
                widgetEndLine = Math.min(visibleEndLine, RevisionPainter.end(range) - 1);
            }
            catch (BadLocationException x) {
                x.printStackTrace();
            }
        }
        if (widgetStartLine == -1 || widgetEndLine == -1) {
            return null;
        }
        return new LineRange(widgetStartLine, widgetEndLine - widgetStartLine + 1);
    }

    public IAnnotationHover getHover() {
        return this.fHover;
    }

    private Rectangle computeBoxBounds(ILineRange range) {
        int y1 = this.fWidget.getLinePixel(range.getStartLine());
        int y2 = this.fWidget.getLinePixel(range.getStartLine() + range.getNumberOfLines());
        return new Rectangle(0, y1, this.getWidth(), y2 - y1 - 1);
    }

    private void updateOverviewAnnotations() {
        Iterator<Object> it;
        if (this.fAnnotationModel == null) {
            return;
        }
        Revision revision = this.fFocusRevision != null ? this.fFocusRevision : this.fSelectedRevision;
        HashMap<RevisionAnnotation, Position> added = null;
        if (revision != null) {
            added = new HashMap<RevisionAnnotation, Position>();
            it = revision.getRegions().iterator();
            while (it.hasNext()) {
                RevisionRange range = (RevisionRange)it.next();
                try {
                    IRegion charRegion = this.toCharRegion(range);
                    Position position = new Position(charRegion.getOffset(), charRegion.getLength());
                    RevisionAnnotation annotation = new RevisionAnnotation(revision.getId());
                    added.put(annotation, position);
                }
                catch (BadLocationException badLocationException) {}
            }
        }
        if (this.fAnnotationModel instanceof IAnnotationModelExtension) {
            IAnnotationModelExtension ext = (IAnnotationModelExtension)this.fAnnotationModel;
            ext.replaceAnnotations(this.fAnnotations.toArray(new Annotation[this.fAnnotations.size()]), added);
        } else {
            it = this.fAnnotations.iterator();
            while (it.hasNext()) {
                Annotation annotation = (Annotation)it.next();
                this.fAnnotationModel.removeAnnotation(annotation);
            }
            if (added != null) {
                it = added.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry)it.next();
                    this.fAnnotationModel.addAnnotation((Annotation)entry.getKey(), (Position)entry.getValue());
                }
            }
        }
        this.fAnnotations.clear();
        if (added != null) {
            this.fAnnotations.addAll(added.keySet());
        }
    }

    private IRegion toCharRegion(ILineRange lines) throws BadLocationException {
        IDocument document = this.fViewer.getDocument();
        int offset = document.getLineOffset(lines.getStartLine());
        int nextLine = RevisionPainter.end(lines);
        int endOffset = nextLine >= document.getNumberOfLines() ? document.getLength() : document.getLineOffset(nextLine);
        return new Region(offset, endOffset - offset);
    }

    void handleRevisionSelected(Revision revision) {
        this.fSelectedRevision = revision;
        this.fRevisionSelectionProvider.revisionSelected(revision);
        if (this.isConnected()) {
            this.updateOverviewAnnotations();
        }
        this.postRedraw();
    }

    void handleRevisionSelected(String id) {
        Assert.isLegal((id != null ? 1 : 0) != 0);
        if (this.fRevisionInfo == null) {
            return;
        }
        Iterator it = this.fRevisionInfo.getRevisions().iterator();
        while (it.hasNext()) {
            Revision revision = (Revision)it.next();
            if (!id.equals(revision.getId())) continue;
            this.handleRevisionSelected(revision);
            return;
        }
        this.handleRevisionSelected((Revision)null);
    }

    public RevisionSelectionProvider getRevisionSelectionProvider() {
        return this.fRevisionSelectionProvider;
    }

    private void updateFocusLine(int line) {
        if (this.fFocusLine != line) {
            this.onFocusLineChanged(this.fFocusLine, line);
        }
    }

    private void onFocusLineChanged(int previousLine, int nextLine) {
        if (DEBUG) {
            System.out.println("line: " + previousLine + " > " + nextLine);
        }
        this.fFocusLine = nextLine;
        RevisionRange region = this.getRange(nextLine);
        this.updateFocusRange(region);
    }

    private void updateFocusRange(RevisionRange range) {
        if (range != this.fFocusRange) {
            this.onFocusRangeChanged(this.fFocusRange, range);
        }
    }

    private void onFocusRangeChanged(RevisionRange previousRange, RevisionRange nextRange) {
        if (DEBUG) {
            System.out.println("range: " + previousRange + " > " + nextRange);
        }
        this.fFocusRange = nextRange;
        Revision revision = nextRange == null ? null : nextRange.getRevision();
        this.updateFocusRevision(revision);
    }

    private void updateFocusRevision(Revision revision) {
        if (this.fFocusRevision != revision) {
            this.onFocusRevisionChanged(this.fFocusRevision, revision);
        }
    }

    private void onFocusRevisionChanged(Revision previousRevision, Revision nextRevision) {
        if (DEBUG) {
            System.out.println("revision: " + previousRevision + " > " + nextRevision);
        }
        this.fFocusRevision = nextRevision;
        this.uninstallWheelHandler();
        this.installWheelHandler();
        this.updateOverviewAnnotations();
        this.redraw();
    }

    private void uninstallWheelHandler() {
        this.fControl.removeListener(37, (Listener)this.fMouseHandler);
        this.fWheelHandlerInstalled = false;
    }

    private void installWheelHandler() {
        if (this.fFocusRevision != null && !this.fWheelHandlerInstalled) {
            this.fControl.addListener(37, (Listener)this.fMouseHandler);
            this.fWheelHandlerInstalled = true;
        }
    }

    private void handleMouseWheel(Event event) {
        ILineRange widgetRange;
        RevisionRange range;
        Iterator it;
        boolean up = event.count > 0;
        int documentHoverLine = this.fFocusLine;
        ILineRange nextWidgetRange = null;
        ILineRange last = null;
        List ranges = this.fFocusRevision.getRegions();
        if (up) {
            it = ranges.iterator();
            while (it.hasNext()) {
                range = (RevisionRange)it.next();
                widgetRange = this.modelLinesToWidgetLines(range);
                if (RevisionPainter.contains(range, documentHoverLine)) {
                    nextWidgetRange = last;
                    break;
                }
                if (widgetRange == null) continue;
                last = widgetRange;
            }
        } else {
            it = ranges.listIterator(ranges.size());
            while (it.hasPrevious()) {
                range = (RevisionRange)it.previous();
                widgetRange = this.modelLinesToWidgetLines(range);
                if (RevisionPainter.contains(range, documentHoverLine)) {
                    nextWidgetRange = last;
                    break;
                }
                if (widgetRange == null) continue;
                last = widgetRange;
            }
        }
        if (nextWidgetRange == null) {
            return;
        }
        int widgetCurrentFocusLine = this.modelLinesToWidgetLines(new LineRange(documentHoverLine, 1)).getStartLine();
        int widgetNextFocusLine = nextWidgetRange.getStartLine();
        int newTopPixel = this.fWidget.getTopPixel() + JFaceTextUtil.computeLineHeight(this.fWidget, widgetCurrentFocusLine, widgetNextFocusLine, widgetNextFocusLine - widgetCurrentFocusLine);
        this.fWidget.setTopPixel(newTopPixel);
        if (newTopPixel < 0) {
            Point cursorLocation = this.fWidget.getDisplay().getCursorLocation();
            cursorLocation.y += newTopPixel;
            this.fWidget.getDisplay().setCursorLocation(cursorLocation);
        } else {
            int topPixel = this.fWidget.getTopPixel();
            if (topPixel < newTopPixel) {
                Point cursorLocation = this.fWidget.getDisplay().getCursorLocation();
                cursorLocation.y += newTopPixel - topPixel;
                this.fWidget.getDisplay().setCursorLocation(cursorLocation);
            }
        }
        this.updateFocusLine(this.toDocumentLineNumber(this.fWidget.toControl((Point)this.fWidget.getDisplay().getCursorLocation()).y));
        this.immediateUpdate();
    }

    private final void postRedraw() {
        Display d;
        if (this.isConnected() && !this.fControl.isDisposed() && (d = this.fControl.getDisplay()) != null) {
            d.asyncExec(new Runnable(){

                public void run() {
                    RevisionPainter.this.redraw();
                }
            });
        }
    }

    private int toDocumentLineNumber(int y) {
        return this.fParentRuler.toDocumentLineNumber(y);
    }

    private void redraw() {
        this.fColumn.redraw();
    }

    private void immediateUpdate() {
        this.fParentRuler.immediateUpdate();
    }

    private int getWidth() {
        return this.fColumn.getWidth();
    }

    private Color getBackground() {
        if (this.fBackground == null) {
            return this.fWidget.getDisplay().getSystemColor(25);
        }
        return this.fBackground;
    }

    public void setHover(IAnnotationHover hover) {
    }

    public boolean hasHover(int activeLine) {
        return this.fViewer instanceof ISourceViewer && this.fHover.getHoverLineRange((ISourceViewer)this.fViewer, activeLine) != null;
    }

    Revision getRevision(int offset) {
        RevisionRange range;
        int line;
        IDocument document = this.fViewer.getDocument();
        try {
            line = document.getLineOfOffset(offset);
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
        if (line != -1 && (range = this.getRange(line)) != null) {
            return range.getRevision();
        }
        return null;
    }

    public boolean hasInformation() {
        return this.fRevisionInfo != null;
    }

    public int getRequiredWidth() {
        if (this.fRequiredWidth == -1) {
            if (this.hasInformation() && (this.fShowRevision || this.fShowAuthor)) {
                int revisionWidth = 0;
                int authorWidth = 0;
                Iterator it = this.fRevisionInfo.getRevisions().iterator();
                while (it.hasNext()) {
                    Revision revision = (Revision)it.next();
                    revisionWidth = Math.max(revisionWidth, revision.getId().length());
                    authorWidth = Math.max(authorWidth, revision.getAuthor().length());
                }
                this.fRevisionIdChars = revisionWidth + 1;
                this.fRequiredWidth = this.fShowAuthor && this.fShowRevision ? revisionWidth + authorWidth + 2 : (this.fShowAuthor ? authorWidth + 1 : revisionWidth + 1);
            } else {
                this.fRequiredWidth = 0;
            }
        }
        return this.fRequiredWidth;
    }

    public void showRevisionId(boolean show) {
        if (this.fShowRevision != show) {
            this.fRequiredWidth = -1;
            this.fRevisionIdChars = 0;
            this.fShowRevision = show;
            this.postRedraw();
        }
    }

    public void showRevisionAuthor(boolean show) {
        if (this.fShowAuthor != show) {
            this.fRequiredWidth = -1;
            this.fRevisionIdChars = 0;
            this.fShowAuthor = show;
            this.postRedraw();
        }
    }

    public void addRevisionListener(IRevisionListener listener) {
        this.fRevisionListeners.add((Object)listener);
    }

    public void removeRevisionListener(IRevisionListener listener) {
        this.fRevisionListeners.remove((Object)listener);
    }

    private void informListeners() {
        if (this.fRevisionInfo == null || this.fRevisionListeners.isEmpty()) {
            return;
        }
        RevisionEvent event = new RevisionEvent(this.fRevisionInfo);
        Object[] listeners = this.fRevisionListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IRevisionListener listener = (IRevisionListener)listeners[i];
            listener.revisionInformationChanged(event);
            ++i;
        }
    }

    private class AnnotationListener
    implements IAnnotationModelListener {
        private AnnotationListener() {
        }

        public void modelChanged(IAnnotationModel model) {
            RevisionPainter.this.clearRangeCache();
            RevisionPainter.this.postRedraw();
        }
    }

    private final class ColorTool {
        private static final float AVERAGE_INTENSITY = 0.5f;
        private static final float MAX_SHADING = 0.7f;
        private static final float MIN_SHADING = 0.2f;
        private static final float FOCUS_COLOR_SHADING = 1.0f;
        private List fRevisions;
        private final Map fColors = new HashMap();
        private final Map fFocusColors = new HashMap();

        private ColorTool() {
        }

        public void setInfo(RevisionInformation info) {
            this.fRevisions = null;
            this.fColors.clear();
            this.fFocusColors.clear();
            if (info == null) {
                return;
            }
            ArrayList<Long> revisions = new ArrayList<Long>();
            Iterator it = info.getRevisions().iterator();
            while (it.hasNext()) {
                Revision revision = (Revision)it.next();
                revisions.add(new Long(this.computeAge(revision)));
            }
            Collections.sort(revisions);
            this.fRevisions = revisions;
        }

        private RGB adaptColor(Revision revision, boolean focus) {
            float scale;
            RGB rgb;
            if (RevisionPainter.this.fRenderingMode == IRevisionRulerColumnExtension.AGE) {
                int index = this.computeAgeIndex(revision);
                if (index == -1 || this.fRevisions.size() == 0) {
                    rgb = RevisionPainter.this.getBackground().getRGB();
                } else {
                    RGB[] gradient = Colors.palette(BY_DATE_START_COLOR, BY_DATE_END_COLOR, this.fRevisions.size());
                    rgb = gradient[gradient.length - index - 1];
                }
                scale = 0.99f;
            } else if (RevisionPainter.this.fRenderingMode == IRevisionRulerColumnExtension.AUTHOR) {
                rgb = revision.getColor();
                rgb = Colors.adjustBrightness(rgb, 0.5f);
                scale = 0.6f;
            } else if (RevisionPainter.this.fRenderingMode == IRevisionRulerColumnExtension.AUTHOR_SHADED_BY_AGE) {
                rgb = revision.getColor();
                rgb = Colors.adjustBrightness(rgb, 0.5f);
                int index = this.computeAgeIndex(revision);
                int size = this.fRevisions.size();
                scale = index == -1 || size < 2 ? 0.5f : (float)index / (float)(size - 1);
            } else {
                Assert.isTrue((boolean)false);
                return null;
            }
            rgb = this.getShadedColor(rgb, scale, focus);
            return rgb;
        }

        private int computeAgeIndex(Revision revision) {
            long age = this.computeAge(revision);
            int index = this.fRevisions.indexOf(new Long(age));
            return index;
        }

        private RGB getShadedColor(RGB color, float scale, boolean focus) {
            Assert.isLegal(((double)scale >= 0.0 ? 1 : 0) != 0);
            Assert.isLegal(((double)scale <= 1.0 ? 1 : 0) != 0);
            RGB background = RevisionPainter.this.getBackground().getRGB();
            boolean makeIntense = RevisionPainter.this.getWidth() <= 15;
            float intensityShift = makeIntense ? 0.3f : 0.0f;
            float max = 0.7f + intensityShift;
            float min = 0.2f + intensityShift;
            scale = (max - min) * scale + min;
            if (focus && (scale += 1.0f) > 1.0f) {
                background = new RGB(255 - background.red, 255 - background.green, 255 - background.blue);
                scale = 2.0f - scale;
            }
            return Colors.blend(background, color, scale);
        }

        private long computeAge(Revision revision) {
            return revision.getDate().getTime();
        }

        public RGB getColor(Revision revision, boolean focus) {
            Map map = focus ? this.fFocusColors : this.fColors;
            RGB color = (RGB)map.get(revision);
            if (color != null) {
                return color;
            }
            color = this.adaptColor(revision, focus);
            map.put(revision, color);
            return color;
        }
    }

    private static final class HoverInformationControlCreator
    extends AbstractReusableInformationControlCreator {
        private boolean fIsFocusable;

        public HoverInformationControlCreator(boolean isFocusable) {
            this.fIsFocusable = isFocusable;
        }

        protected IInformationControl doCreateInformationControl(Shell parent) {
            if (BrowserInformationControl.isAvailable((Composite)parent)) {
                return new BrowserInformationControl(this, parent, "org.eclipse.jface.dialogfont", this.fIsFocusable){
                    final /* synthetic */ HoverInformationControlCreator this$1;
                    {
                        this.this$1 = hoverInformationControlCreator;
                    }

                    public void setInformation(String content) {
                        content = this.addCSSToHTMLFragment(content);
                        super.setInformation(content);
                    }

                    private String addCSSToHTMLFragment(String html) {
                        int max = Math.min(100, html.length());
                        if (html.substring(0, max).indexOf("<html>") != -1) {
                            return html;
                        }
                        StringBuffer info = new StringBuffer(512 + html.length());
                        HTMLPrinter.insertPageProlog(info, 0, "/* Font definitions */\nbody, h1, h2, h3, h4, h5, h6, p, table, td, caption, th, ul, ol, dl, li, dd, dt {font-family: sans-serif; font-size: 9pt }\npre\t\t\t\t{ font-family: monospace; font-size: 9pt }\n\n/* Margins */\nbody\t     { overflow: auto; margin-top: 0; margin-bottom: 4; margin-left: 3; margin-right: 0 }\nh1           { margin-top: 5; margin-bottom: 1 }\t\nh2           { margin-top: 25; margin-bottom: 3 }\nh3           { margin-top: 20; margin-bottom: 3 }\nh4           { margin-top: 20; margin-bottom: 3 }\nh5           { margin-top: 0; margin-bottom: 0 }\np            { margin-top: 10px; margin-bottom: 10px }\npre\t         { margin-left: 6 }\nul\t         { margin-top: 0; margin-bottom: 10 }\nli\t         { margin-top: 0; margin-bottom: 0 } \nli p\t     { margin-top: 0; margin-bottom: 0 } \nol\t         { margin-top: 0; margin-bottom: 10 }\ndl\t         { margin-top: 0; margin-bottom: 10 }\ndt\t         { margin-top: 0; margin-bottom: 0; font-weight: bold }\ndd\t         { margin-top: 0; margin-bottom: 0 }\n\n/* Styles and colors */\na:link\t     { color: #0000FF }\na:hover\t     { color: #000080 }\na:visited    { text-decoration: underline }\nh4           { font-style: italic }\nstrong\t     { font-weight: bold }\nem\t         { font-style: italic }\nvar\t         { font-style: italic }\nth\t         { font-weight: bold }\n");
                        info.append(html);
                        HTMLPrinter.addPageEpilog(info);
                        return info.toString();
                    }
                };
            }
            return new DefaultInformationControl(parent, this.fIsFocusable);
        }

        public boolean canReplace(IInformationControlCreator creator) {
            return creator.getClass() == this.getClass() && ((HoverInformationControlCreator)creator).fIsFocusable == this.fIsFocusable;
        }
    }

    private class MouseHandler
    implements MouseMoveListener,
    MouseTrackListener,
    Listener {
        private RevisionRange fMouseDownRegion;

        private MouseHandler() {
        }

        private void handleMouseUp(Event e) {
            if (e.button == 1) {
                RevisionRange upRegion = RevisionPainter.this.fFocusRange;
                RevisionRange downRegion = this.fMouseDownRegion;
                this.fMouseDownRegion = null;
                if (upRegion == downRegion) {
                    Revision revision;
                    Revision revision2 = revision = upRegion == null ? null : upRegion.getRevision();
                    if (revision == RevisionPainter.this.fSelectedRevision) {
                        revision = null;
                    }
                    RevisionPainter.this.handleRevisionSelected(revision);
                }
            }
        }

        private void handleMouseDown(Event e) {
            if (e.button == 3) {
                RevisionPainter.this.updateFocusRevision(null);
            }
            if (e.button == 1) {
                this.fMouseDownRegion = RevisionPainter.this.fFocusRange;
                RevisionPainter.this.postRedraw();
            }
        }

        public void handleEvent(Event event) {
            switch (event.type) {
                case 37: {
                    RevisionPainter.this.handleMouseWheel(event);
                    break;
                }
                case 3: {
                    this.handleMouseDown(event);
                    break;
                }
                case 4: {
                    this.handleMouseUp(event);
                    break;
                }
                default: {
                    Assert.isLegal((boolean)false);
                }
            }
        }

        public void mouseEnter(MouseEvent e) {
            RevisionPainter.this.updateFocusLine(RevisionPainter.this.toDocumentLineNumber(e.y));
        }

        public void mouseExit(MouseEvent e) {
            RevisionPainter.this.updateFocusLine(-1);
        }

        public void mouseHover(MouseEvent e) {
        }

        public void mouseMove(MouseEvent e) {
            RevisionPainter.this.updateFocusLine(RevisionPainter.this.toDocumentLineNumber(e.y));
        }
    }

    private static final class RevisionAnnotation
    extends Annotation {
        public RevisionAnnotation(String text) {
            super("org.eclipse.ui.workbench.texteditor.revisionAnnotation", false, text);
        }
    }

    private final class RevisionHover
    implements IAnnotationHover,
    IAnnotationHoverExtension,
    IAnnotationHoverExtension2,
    IInformationProviderExtension2 {
        private RevisionHover() {
        }

        public String getHoverInfo(ISourceViewer sourceViewer, int lineNumber) {
            Object info = this.getHoverInfo(sourceViewer, this.getHoverLineRange(sourceViewer, lineNumber), 0);
            return info == null ? null : info.toString();
        }

        public IInformationControlCreator getHoverControlCreator() {
            IInformationControlCreator creator;
            RevisionInformation revisionInfo = RevisionPainter.this.fRevisionInfo;
            if (revisionInfo != null && (creator = revisionInfo.getHoverControlCreator()) != null) {
                return creator;
            }
            return new HoverInformationControlCreator(false);
        }

        public boolean canHandleMouseCursor() {
            return false;
        }

        public boolean canHandleMouseWheel() {
            return true;
        }

        public Object getHoverInfo(ISourceViewer sourceViewer, ILineRange lineRange, int visibleNumberOfLines) {
            RevisionRange range = RevisionPainter.this.getRange(lineRange.getStartLine());
            Object info = range == null ? null : range.getRevision().getHoverInfo();
            return info;
        }

        public ILineRange getHoverLineRange(ISourceViewer viewer, int lineNumber) {
            RevisionRange range = RevisionPainter.this.getRange(lineNumber);
            return range == null ? null : new LineRange(lineNumber, 1);
        }

        public IInformationControlCreator getInformationPresenterControlCreator() {
            IInformationControlCreator creator;
            RevisionInformation revisionInfo = RevisionPainter.this.fRevisionInfo;
            if (revisionInfo != null && (creator = revisionInfo.getInformationPresenterControlCreator()) != null) {
                return creator;
            }
            return new HoverInformationControlCreator(true);
        }
    }
}

