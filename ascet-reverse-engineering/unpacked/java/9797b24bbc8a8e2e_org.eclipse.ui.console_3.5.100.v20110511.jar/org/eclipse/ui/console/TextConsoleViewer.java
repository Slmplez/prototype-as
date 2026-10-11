/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.resource.ColorRegistry
 *  org.eclipse.jface.resource.JFaceColors
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentAdapter
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.TextViewer$WidgetCommand
 *  org.eclipse.jface.text.source.SourceViewer
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.custom.LineBackgroundEvent
 *  org.eclipse.swt.custom.LineBackgroundListener
 *  org.eclipse.swt.custom.LineStyleEvent
 *  org.eclipse.swt.custom.LineStyleListener
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.ui.progress.WorkbenchJob
 */
package org.eclipse.ui.console;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.resource.ColorRegistry;
import org.eclipse.jface.resource.JFaceColors;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentAdapter;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.TextViewer;
import org.eclipse.jface.text.source.SourceViewer;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.custom.LineBackgroundEvent;
import org.eclipse.swt.custom.LineBackgroundListener;
import org.eclipse.swt.custom.LineStyleEvent;
import org.eclipse.swt.custom.LineStyleListener;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsoleDocumentPartitioner;
import org.eclipse.ui.console.IHyperlink;
import org.eclipse.ui.console.IHyperlink2;
import org.eclipse.ui.console.TextConsole;
import org.eclipse.ui.internal.console.ConsoleDocumentAdapter;
import org.eclipse.ui.internal.console.ConsoleHyperlinkPosition;
import org.eclipse.ui.progress.WorkbenchJob;

public class TextConsoleViewer
extends SourceViewer
implements LineStyleListener,
LineBackgroundListener,
MouseTrackListener,
MouseMoveListener,
MouseListener {
    private ConsoleDocumentAdapter documentAdapter;
    private IHyperlink hyperlink;
    private Cursor handCursor;
    private Cursor textCursor;
    private int consoleWidth = -1;
    private TextConsole console;
    private IPropertyChangeListener propertyChangeListener;
    private IDocumentListener documentListener = new IDocumentListener(){

        public void documentAboutToBeChanged(DocumentEvent event) {
        }

        public void documentChanged(DocumentEvent event) {
            TextConsoleViewer.this.updateLinks(event.fOffset);
        }
    };
    private Listener mouseUpListener = new Listener(){

        public void handleEvent(Event event) {
            String selection;
            if (TextConsoleViewer.this.hyperlink != null && (selection = TextConsoleViewer.this.getTextWidget().getSelectionText()).length() <= 0 && event.button == 1) {
                if (TextConsoleViewer.this.hyperlink instanceof IHyperlink2) {
                    ((IHyperlink2)TextConsoleViewer.this.hyperlink).linkActivated(event);
                } else {
                    TextConsoleViewer.this.hyperlink.linkActivated();
                }
            }
        }
    };
    WorkbenchJob revealJob = new WorkbenchJob("Reveal End of Document"){

        public IStatus runInUIThread(IProgressMonitor monitor) {
            StyledText textWidget = TextConsoleViewer.this.getTextWidget();
            if (textWidget != null && !textWidget.isDisposed()) {
                int lineCount = textWidget.getLineCount();
                textWidget.setTopIndex(lineCount - 1);
            }
            return Status.OK_STATUS;
        }
    };
    private IPositionUpdater positionUpdater = new IPositionUpdater(){

        public void update(DocumentEvent event) {
            try {
                IDocument document = TextConsoleViewer.this.getDocument();
                if (document != null) {
                    Position[] positions = document.getPositions(ConsoleHyperlinkPosition.HYPER_LINK_CATEGORY);
                    int i = 0;
                    while (i < positions.length) {
                        Position position = positions[i];
                        if (position.offset == event.fOffset && position.length <= event.fLength) {
                            position.delete();
                        }
                        if (position.isDeleted) {
                            document.removePosition(ConsoleHyperlinkPosition.HYPER_LINK_CATEGORY, position);
                        }
                        ++i;
                    }
                }
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
        }
    };

    public TextConsoleViewer(Composite parent, TextConsole console) {
        super(parent, null, 768);
        this.console = console;
        IDocument document = console.getDocument();
        this.setDocument(document);
        StyledText styledText = this.getTextWidget();
        styledText.setDoubleClickEnabled(true);
        styledText.addLineStyleListener((LineStyleListener)this);
        styledText.addLineBackgroundListener((LineBackgroundListener)this);
        styledText.setEditable(true);
        this.setFont(console.getFont());
        styledText.addMouseTrackListener((MouseTrackListener)this);
        styledText.addListener(4, this.mouseUpListener);
        ColorRegistry colorRegistry = JFaceResources.getColorRegistry();
        this.propertyChangeListener = new HyperlinkColorChangeListener();
        colorRegistry.addListener(this.propertyChangeListener);
        this.revealJob.setSystem(true);
        document.addDocumentListener(this.documentListener);
        document.addPositionUpdater(this.positionUpdater);
    }

    public void setTabWidth(int tabWidth) {
        StyledText styledText = this.getTextWidget();
        int oldWidth = styledText.getTabs();
        if (tabWidth != oldWidth) {
            styledText.setTabs(tabWidth);
        }
    }

    public void setFont(Font font) {
        StyledText styledText = this.getTextWidget();
        Font oldFont = styledText.getFont();
        if (oldFont == font) {
            return;
        }
        if (font == null || !font.equals((Object)oldFont)) {
            styledText.setFont(font);
        }
    }

    protected void revealEndOfDocument() {
        this.revealJob.schedule(50L);
    }

    public void lineGetStyle(LineStyleEvent event) {
        IDocument document = this.getDocument();
        if (document != null && document.getLength() > 0) {
            ArrayList<StyleRange> ranges = new ArrayList<StyleRange>();
            int offset = event.lineOffset;
            int length = event.lineText.length();
            StyleRange[] partitionerStyles = ((IConsoleDocumentPartitioner)document.getDocumentPartitioner()).getStyleRanges(event.lineOffset, event.lineText.length());
            if (partitionerStyles != null) {
                int i = 0;
                while (i < partitionerStyles.length) {
                    ranges.add(partitionerStyles[i]);
                    ++i;
                }
            } else {
                ranges.add(new StyleRange(offset, length, null, null));
            }
            try {
                Position[] positions = this.getDocument().getPositions(ConsoleHyperlinkPosition.HYPER_LINK_CATEGORY);
                Position[] overlap = this.findPosition(offset, length, positions);
                Color color = JFaceColors.getHyperlinkText((Display)Display.getCurrent());
                if (overlap != null) {
                    int i = 0;
                    while (i < overlap.length) {
                        Position position = overlap[i];
                        StyleRange linkRange = new StyleRange(position.offset, position.length, color, null);
                        linkRange.underline = true;
                        this.override(ranges, linkRange);
                        ++i;
                    }
                }
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
            if (ranges.size() > 0) {
                event.styles = ranges.toArray(new StyleRange[ranges.size()]);
            }
        }
    }

    private void override(List ranges, StyleRange newRange) {
        if (ranges.isEmpty()) {
            ranges.add(newRange);
            return;
        }
        int start = newRange.start;
        int end = start + newRange.length;
        int i = 0;
        while (i < ranges.size()) {
            StyleRange existingRange = (StyleRange)ranges.get(i);
            int rEnd = existingRange.start + existingRange.length;
            if (end > existingRange.start && start < rEnd) {
                if (start < existingRange.start && end > existingRange.start) {
                    start = existingRange.start;
                }
                if (start >= existingRange.start && end <= rEnd) {
                    existingRange.length = start - existingRange.start;
                    ranges.add(++i, newRange);
                    if (end != rEnd) {
                        ranges.add(++i, new StyleRange(end, rEnd - end - 1, existingRange.foreground, existingRange.background));
                    }
                    return;
                }
                if (start >= existingRange.start && start < rEnd) {
                    existingRange.length = start - existingRange.start;
                    ranges.add(++i, newRange);
                } else if (end >= rEnd) {
                    ranges.remove(i);
                } else {
                    ranges.add(++i, new StyleRange(end + 1, rEnd - end + 1, existingRange.foreground, existingRange.background));
                }
            }
            ++i;
        }
    }

    private Position[] findPosition(int offset, int length, Position[] positions) {
        if (positions.length == 0) {
            return null;
        }
        int rangeEnd = offset + length;
        int left = 0;
        int right = positions.length - 1;
        int mid = 0;
        Position position = null;
        while (left < right) {
            mid = (left + right) / 2;
            position = positions[mid];
            if (rangeEnd < position.getOffset()) {
                if (left == mid) {
                    right = left;
                    continue;
                }
                right = mid - 1;
                continue;
            }
            if (offset > position.getOffset() + position.getLength() - 1) {
                if (right == mid) {
                    left = right;
                    continue;
                }
                left = mid + 1;
                continue;
            }
            left = right = mid;
        }
        ArrayList<Position> list = new ArrayList<Position>();
        int index = left - 1;
        if (index >= 0) {
            position = positions[index];
            while (index >= 0 && position.getOffset() + position.getLength() > offset) {
                if (--index <= 0) continue;
                position = positions[index];
            }
        }
        position = positions[++index];
        while (index < positions.length && position.getOffset() < rangeEnd) {
            list.add(position);
            if (++index >= positions.length) continue;
            position = positions[index];
        }
        if (list.isEmpty()) {
            return null;
        }
        return list.toArray(new Position[list.size()]);
    }

    public void lineGetBackground(LineBackgroundEvent event) {
        event.lineBackground = null;
    }

    protected Cursor getHandCursor() {
        if (this.handCursor == null) {
            this.handCursor = new Cursor((Device)ConsolePlugin.getStandardDisplay(), 21);
        }
        return this.handCursor;
    }

    protected Cursor getTextCursor() {
        if (this.textCursor == null) {
            this.textCursor = new Cursor((Device)ConsolePlugin.getStandardDisplay(), 19);
        }
        return this.textCursor;
    }

    protected void linkEntered(IHyperlink link) {
        StyledText control = this.getTextWidget();
        if (this.hyperlink != null) {
            this.linkExited(this.hyperlink);
        }
        this.hyperlink = link;
        this.hyperlink.linkEntered();
        control.setCursor(this.getHandCursor());
        control.redraw();
        control.addMouseListener((MouseListener)this);
    }

    protected void linkExited(IHyperlink link) {
        link.linkExited();
        this.hyperlink = null;
        StyledText control = this.getTextWidget();
        control.setCursor(this.getTextCursor());
        control.redraw();
        control.removeMouseListener((MouseListener)this);
    }

    public void mouseEnter(MouseEvent e) {
        this.getTextWidget().addMouseMoveListener((MouseMoveListener)this);
    }

    public void mouseExit(MouseEvent e) {
        this.getTextWidget().removeMouseMoveListener((MouseMoveListener)this);
        if (this.hyperlink != null) {
            this.linkExited(this.hyperlink);
        }
    }

    public void mouseHover(MouseEvent e) {
    }

    public void mouseMove(MouseEvent e) {
        int offset = -1;
        try {
            Point p = new Point(e.x, e.y);
            offset = this.getTextWidget().getOffsetAtLocation(p);
        }
        catch (IllegalArgumentException illegalArgumentException) {}
        this.updateLinks(offset);
    }

    protected void updateLinks(int offset) {
        IHyperlink link;
        if (offset >= 0 && (link = this.getHyperlink(offset)) != null) {
            if (link.equals(this.hyperlink)) {
                return;
            }
            this.linkEntered(link);
            return;
        }
        if (this.hyperlink != null) {
            this.linkExited(this.hyperlink);
        }
    }

    public IHyperlink getHyperlink() {
        return this.hyperlink;
    }

    public IHyperlink getHyperlink(int offset) {
        if (offset >= 0 && this.console != null) {
            return this.console.getHyperlink(offset);
        }
        return null;
    }

    public void mouseDoubleClick(MouseEvent e) {
    }

    public void mouseDown(MouseEvent e) {
    }

    public void mouseUp(MouseEvent e) {
    }

    protected IDocumentAdapter createDocumentAdapter() {
        if (this.documentAdapter == null) {
            this.consoleWidth = -1;
            this.documentAdapter = new ConsoleDocumentAdapter(-1);
        }
        return this.documentAdapter;
    }

    public void setConsoleWidth(int width) {
        if (this.consoleWidth != width) {
            this.consoleWidth = width;
            ConsolePlugin.getStandardDisplay().asyncExec(new Runnable(){

                public void run() {
                    if (TextConsoleViewer.this.documentAdapter != null) {
                        TextConsoleViewer.this.documentAdapter.setWidth(TextConsoleViewer.this.consoleWidth);
                    }
                }
            });
        }
    }

    protected void handleDispose() {
        IDocument document = this.getDocument();
        if (document != null) {
            document.removeDocumentListener(this.documentListener);
            document.removePositionUpdater(this.positionUpdater);
        }
        StyledText styledText = this.getTextWidget();
        styledText.removeLineStyleListener((LineStyleListener)this);
        styledText.removeLineBackgroundListener((LineBackgroundListener)this);
        styledText.removeMouseTrackListener((MouseTrackListener)this);
        if (this.handCursor != null) {
            this.handCursor.dispose();
        }
        this.handCursor = null;
        if (this.textCursor != null) {
            this.textCursor.dispose();
        }
        this.textCursor = null;
        this.hyperlink = null;
        this.console = null;
        ColorRegistry colorRegistry = JFaceResources.getColorRegistry();
        colorRegistry.removeListener(this.propertyChangeListener);
        super.handleDispose();
    }

    protected void updateTextListeners(TextViewer.WidgetCommand cmd) {
        super.updateTextListeners(cmd);
        cmd.preservedText = null;
        cmd.event = null;
        cmd.text = null;
    }

    protected void internalRevealRange(int start, int end) {
        StyledText textWidget = this.getTextWidget();
        int startLine = this.documentAdapter.getLineAtOffset(start);
        int endLine = this.documentAdapter.getLineAtOffset(end);
        int top = textWidget.getTopIndex();
        if (top > -1) {
            IRegion extent;
            int lines = this.getVisibleLinesInViewport();
            int bottom = top + lines;
            int bufferZone = 2;
            if (startLine < top + bufferZone || startLine > bottom - bufferZone || endLine < top + bufferZone || endLine > bottom - bufferZone) {
                int delta = Math.max(0, lines - (endLine - startLine));
                textWidget.setTopIndex(startLine - delta / 3);
                this.updateViewportListeners(6);
            }
            if (endLine < startLine) {
                endLine += startLine;
                startLine = endLine - startLine;
                endLine -= startLine;
            }
            int startPixel = -1;
            int endPixel = -1;
            if (endLine > startLine) {
                extent = this.getExtent(start, start);
                endPixel = startPixel = extent.getOffset() + textWidget.getHorizontalPixel();
            } else {
                extent = this.getExtent(start, end);
                startPixel = extent.getOffset() + textWidget.getHorizontalPixel();
                endPixel = startPixel + extent.getLength();
            }
            int visibleStart = textWidget.getHorizontalPixel();
            int visibleEnd = visibleStart + textWidget.getClientArea().width;
            if (startPixel < visibleStart || visibleEnd < endPixel) {
                bufferZone = 10;
                int newOffset = visibleStart;
                int visibleWidth = visibleEnd - visibleStart;
                int selectionPixelWidth = endPixel - startPixel;
                newOffset = startPixel < visibleStart ? startPixel : (selectionPixelWidth + bufferZone < visibleWidth ? endPixel + bufferZone - visibleWidth : startPixel);
                float index = (float)newOffset / (float)this.getAverageCharWidth();
                textWidget.setHorizontalIndex(Math.round(index));
            }
        }
    }

    class HyperlinkColorChangeListener
    implements IPropertyChangeListener {
        HyperlinkColorChangeListener() {
        }

        public void propertyChange(PropertyChangeEvent event) {
            if (event.getProperty().equals("ACTIVE_HYPERLINK_COLOR") || event.getProperty().equals("HYPERLINK_COLOR")) {
                TextConsoleViewer.this.getTextWidget().redraw();
            }
        }
    }
}

