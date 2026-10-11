/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.FindReplaceDocumentAdapter
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentInformationMappingExtension
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ISlaveDocumentManager
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.text.projection.ProjectionDocument
 *  org.eclipse.jface.text.projection.ProjectionDocumentEvent
 *  org.eclipse.jface.text.projection.ProjectionDocumentManager
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.AnnotationModelEvent
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 *  org.eclipse.jface.text.source.IAnnotationModelListener
 *  org.eclipse.jface.text.source.IAnnotationModelListenerExtension
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.swt.SWTError
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.text.source.projection;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.text.SelectionProcessor;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.FindReplaceDocumentAdapter;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentInformationMappingExtension;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ISlaveDocumentManager;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextSelection;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.projection.ProjectionDocument;
import org.eclipse.jface.text.projection.ProjectionDocumentEvent;
import org.eclipse.jface.text.projection.ProjectionDocumentManager;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.AnnotationModelEvent;
import org.eclipse.jface.text.source.CompositeRuler;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.IAnnotationModelListener;
import org.eclipse.jface.text.source.IAnnotationModelListenerExtension;
import org.eclipse.jface.text.source.IOverviewRuler;
import org.eclipse.jface.text.source.IVerticalRuler;
import org.eclipse.jface.text.source.IVerticalRulerColumn;
import org.eclipse.jface.text.source.SourceViewer;
import org.eclipse.jface.text.source.projection.IProjectionListener;
import org.eclipse.jface.text.source.projection.IProjectionPosition;
import org.eclipse.jface.text.source.projection.ProjectionAnnotation;
import org.eclipse.jface.text.source.projection.ProjectionAnnotationModel;
import org.eclipse.jface.text.source.projection.ProjectionSummary;
import org.eclipse.jface.text.source.projection.ProjectionSupport;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;

public class ProjectionViewer
extends SourceViewer
implements ITextViewerExtension5 {
    private static final int BASE = 16;
    public static final int EXPAND = 17;
    public static final int COLLAPSE = 18;
    public static final int TOGGLE = 19;
    public static final int EXPAND_ALL = 20;
    public static final int COLLAPSE_ALL = 21;
    private ProjectionAnnotationModel fProjectionAnnotationModel;
    private IAnnotationModelListener fAnnotationModelListener = new AnnotationModelListener();
    private ProjectionSummary fProjectionSummary;
    private boolean fPendingAnnotationWorldChange = false;
    private boolean fHandleProjectionChanges = true;
    private List fProjectionListeners;
    private Object fLock = new Object();
    private List fPendingRequests = new ArrayList();
    private IDocument fReplaceVisibleDocumentExecutionTrigger;
    private boolean fWasProjectionEnabled;
    private ProjectionCommandQueue fCommandQueue;
    private int fDeletedLines;

    public ProjectionViewer(Composite parent, IVerticalRuler ruler, IOverviewRuler overviewRuler, boolean showsAnnotationOverview, int styles) {
        super(parent, ruler, overviewRuler, showsAnnotationOverview, styles);
    }

    public void setProjectionSummary(ProjectionSummary projectionSummary) {
        this.fProjectionSummary = projectionSummary;
    }

    private void addProjectionAnnotationModel(IAnnotationModel model) {
        if (model instanceof IAnnotationModelExtension) {
            IAnnotationModelExtension extension = (IAnnotationModelExtension)model;
            extension.addAnnotationModel(ProjectionSupport.PROJECTION, (IAnnotationModel)this.fProjectionAnnotationModel);
            model.addAnnotationModelListener(this.fAnnotationModelListener);
        }
    }

    private IAnnotationModel removeProjectionAnnotationModel(IAnnotationModel model) {
        if (model instanceof IAnnotationModelExtension) {
            model.removeAnnotationModelListener(this.fAnnotationModelListener);
            IAnnotationModelExtension extension = (IAnnotationModelExtension)model;
            return extension.removeAnnotationModel(ProjectionSupport.PROJECTION);
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setDocument(IDocument document, IAnnotationModel annotationModel, int modelRangeOffset, int modelRangeLength) {
        boolean wasProjectionEnabled = false;
        Object object = this.fLock;
        synchronized (object) {
            this.fPendingRequests.clear();
        }
        if (this.fProjectionAnnotationModel != null) {
            wasProjectionEnabled = this.removeProjectionAnnotationModel(this.getVisualAnnotationModel()) != null;
            this.fProjectionAnnotationModel = null;
        }
        super.setDocument(document, annotationModel, modelRangeOffset, modelRangeLength);
        if (wasProjectionEnabled && document != null) {
            this.enableProjection();
        }
    }

    protected IAnnotationModel createVisualAnnotationModel(IAnnotationModel annotationModel) {
        IAnnotationModel model = super.createVisualAnnotationModel(annotationModel);
        this.fProjectionAnnotationModel = new ProjectionAnnotationModel();
        return model;
    }

    public ProjectionAnnotationModel getProjectionAnnotationModel() {
        IAnnotationModel model = this.getVisualAnnotationModel();
        if (model instanceof IAnnotationModelExtension) {
            IAnnotationModelExtension extension = (IAnnotationModelExtension)model;
            return (ProjectionAnnotationModel)extension.getAnnotationModel(ProjectionSupport.PROJECTION);
        }
        return null;
    }

    protected ISlaveDocumentManager createSlaveDocumentManager() {
        return new ProjectionDocumentManager();
    }

    protected boolean updateSlaveDocument(IDocument slaveDocument, int modelRangeOffset, int modelRangeLength) throws BadLocationException {
        if (slaveDocument instanceof ProjectionDocument) {
            ProjectionDocument projection = (ProjectionDocument)slaveDocument;
            int offset = modelRangeOffset;
            int length = modelRangeLength;
            if (!this.isProjectionMode()) {
                IDocument master = projection.getMasterDocument();
                int line = master.getLineOfOffset(modelRangeOffset);
                offset = master.getLineOffset(line);
                length = modelRangeOffset - offset + modelRangeLength;
            }
            try {
                this.fHandleProjectionChanges = false;
                projection.replaceMasterDocumentRanges(offset, length);
            }
            finally {
                this.fHandleProjectionChanges = true;
            }
            return true;
        }
        return false;
    }

    public void addProjectionListener(IProjectionListener listener) {
        Assert.isNotNull((Object)listener);
        if (this.fProjectionListeners == null) {
            this.fProjectionListeners = new ArrayList();
        }
        if (!this.fProjectionListeners.contains(listener)) {
            this.fProjectionListeners.add(listener);
        }
    }

    public void removeProjectionListener(IProjectionListener listener) {
        Assert.isNotNull((Object)listener);
        if (this.fProjectionListeners != null) {
            this.fProjectionListeners.remove(listener);
            if (this.fProjectionListeners.size() == 0) {
                this.fProjectionListeners = null;
            }
        }
    }

    protected void fireProjectionEnabled() {
        if (this.fProjectionListeners != null) {
            Iterator e = new ArrayList(this.fProjectionListeners).iterator();
            while (e.hasNext()) {
                IProjectionListener l = (IProjectionListener)e.next();
                l.projectionEnabled();
            }
        }
    }

    protected void fireProjectionDisabled() {
        if (this.fProjectionListeners != null) {
            Iterator e = new ArrayList(this.fProjectionListeners).iterator();
            while (e.hasNext()) {
                IProjectionListener l = (IProjectionListener)e.next();
                l.projectionDisabled();
            }
        }
    }

    public final boolean isProjectionMode() {
        return this.getProjectionAnnotationModel() != null;
    }

    public final void disableProjection() {
        if (this.isProjectionMode()) {
            this.removeProjectionAnnotationModel(this.getVisualAnnotationModel());
            this.fProjectionAnnotationModel.removeAllAnnotations();
            this.fFindReplaceDocumentAdapter = null;
            this.fireProjectionDisabled();
        }
    }

    public final void enableProjection() {
        if (!this.isProjectionMode()) {
            this.addProjectionAnnotationModel(this.getVisualAnnotationModel());
            this.fFindReplaceDocumentAdapter = null;
            this.fireProjectionEnabled();
        }
    }

    private void expandAll() {
        int length;
        int offset = 0;
        IDocument doc = this.getDocument();
        int n = length = doc == null ? 0 : doc.getLength();
        if (this.isProjectionMode()) {
            this.fProjectionAnnotationModel.expandAll(offset, length);
        }
    }

    private void expand() {
        if (this.isProjectionMode()) {
            Position found = null;
            ProjectionAnnotation bestMatch = null;
            Point selection = this.getSelectedRange();
            Iterator e = this.fProjectionAnnotationModel.getAnnotationIterator();
            while (e.hasNext()) {
                Position position;
                ProjectionAnnotation annotation = (ProjectionAnnotation)e.next();
                if (!annotation.isCollapsed() || (position = this.fProjectionAnnotationModel.getPosition(annotation)) == null || !this.touches(selection, position) || found != null && (!position.includes(found.offset) || !position.includes(found.offset + found.length))) continue;
                found = position;
                bestMatch = annotation;
            }
            if (bestMatch != null) {
                this.fProjectionAnnotationModel.expand(bestMatch);
                this.revealRange(selection.x, selection.y);
            }
        }
    }

    private boolean touches(Point selection, Position position) {
        return position.overlapsWith(selection.x, selection.y) || selection.y == 0 && position.offset + position.length == selection.x + selection.y;
    }

    private void collapse() {
        if (this.isProjectionMode()) {
            Position found = null;
            ProjectionAnnotation bestMatch = null;
            Point selection = this.getSelectedRange();
            Iterator e = this.fProjectionAnnotationModel.getAnnotationIterator();
            while (e.hasNext()) {
                Position position;
                ProjectionAnnotation annotation = (ProjectionAnnotation)e.next();
                if (annotation.isCollapsed() || (position = this.fProjectionAnnotationModel.getPosition(annotation)) == null || !this.touches(selection, position) || found != null && (!found.includes(position.offset) || !found.includes(position.offset + position.length))) continue;
                found = position;
                bestMatch = annotation;
            }
            if (bestMatch != null) {
                this.fProjectionAnnotationModel.collapse(bestMatch);
                this.revealRange(selection.x, selection.y);
            }
        }
    }

    private void collapseAll() {
        int length;
        int offset = 0;
        IDocument doc = this.getDocument();
        int n = length = doc == null ? 0 : doc.getLength();
        if (this.isProjectionMode()) {
            this.fProjectionAnnotationModel.collapseAll(offset, length);
        }
    }

    private void addMasterDocumentRange(ProjectionDocument projection, int offset, int length) throws BadLocationException {
        if (this.fCommandQueue != null) {
            this.fCommandQueue.add(new ProjectionCommand(projection, 0, offset, length));
        } else {
            try {
                this.fHandleProjectionChanges = false;
                int end = offset + length;
                offset = this.toLineStart(projection.getMasterDocument(), offset, false);
                length = this.toLineStart(projection.getMasterDocument(), end, true) - offset;
                projection.addMasterDocumentRange(offset, length);
            }
            finally {
                this.fHandleProjectionChanges = true;
            }
        }
    }

    private void removeMasterDocumentRange(ProjectionDocument projection, int offset, int length) throws BadLocationException {
        if (this.fCommandQueue != null) {
            this.fCommandQueue.add(new ProjectionCommand(projection, 1, offset, length));
        } else {
            try {
                this.fHandleProjectionChanges = false;
                int end = offset + length;
                offset = this.toLineStart(projection.getMasterDocument(), offset, false);
                length = this.toLineStart(projection.getMasterDocument(), end, true) - offset;
                projection.removeMasterDocumentRange(offset, length);
            }
            finally {
                this.fHandleProjectionChanges = true;
            }
        }
    }

    private int toLineStart(IDocument document, int offset, boolean testLastLine) throws BadLocationException {
        if (document == null) {
            return offset;
        }
        if (testLastLine && offset >= document.getLineInformationOfOffset(document.getLength() - 1).getOffset()) {
            return offset;
        }
        return document.getLineInformationOfOffset(offset).getOffset();
    }

    public void setVisibleRegion(int start, int length) {
        this.fWasProjectionEnabled = this.isProjectionMode();
        this.disableProjection();
        super.setVisibleRegion(start, length);
    }

    protected void setVisibleDocument(IDocument document) {
        if (!this.isProjectionMode()) {
            super.setVisibleDocument(document);
            return;
        }
        FindReplaceDocumentAdapter adapter = this.fFindReplaceDocumentAdapter;
        super.setVisibleDocument(document);
        this.fFindReplaceDocumentAdapter = adapter;
    }

    public void resetVisibleRegion() {
        super.resetVisibleRegion();
        if (this.fWasProjectionEnabled) {
            this.enableProjection();
        }
    }

    public IRegion getVisibleRegion() {
        this.disableProjection();
        IRegion visibleRegion = this.getModelCoverage();
        if (visibleRegion == null) {
            visibleRegion = new Region(0, 0);
        }
        return visibleRegion;
    }

    public boolean overlapsWithVisibleRegion(int offset, int length) {
        boolean appending;
        this.disableProjection();
        IRegion coverage = this.getModelCoverage();
        if (coverage == null) {
            return false;
        }
        boolean bl = appending = offset == coverage.getOffset() + coverage.getLength() && length == 0;
        return appending || TextUtilities.overlaps((IRegion)coverage, (IRegion)new Region(offset, length));
    }

    private void replaceVisibleDocument(IDocument slave) {
        if (this.fReplaceVisibleDocumentExecutionTrigger != null) {
            ReplaceVisibleDocumentExecutor executor = new ReplaceVisibleDocumentExecutor(slave);
            executor.install(this.fReplaceVisibleDocumentExecutionTrigger);
        } else {
            this.executeReplaceVisibleDocument(slave);
        }
    }

    private void executeReplaceVisibleDocument(IDocument visibleDocument) {
        StyledText textWidget = this.getTextWidget();
        try {
            if (textWidget != null && !textWidget.isDisposed()) {
                textWidget.setRedraw(false);
            }
            int topIndex = this.getTopIndex();
            Point selection = this.getSelectedRange();
            this.setVisibleDocument(visibleDocument);
            Point currentSelection = this.getSelectedRange();
            if (currentSelection.x != selection.x || currentSelection.y != selection.y) {
                this.setSelectedRange(selection.x, selection.y);
            }
            this.setTopIndex(topIndex);
        }
        finally {
            if (textWidget != null && !textWidget.isDisposed()) {
                textWidget.setRedraw(true);
            }
        }
    }

    private void collapse(int offset, int length, boolean fireRedraw) throws BadLocationException {
        IDocument document;
        int line;
        ProjectionDocument projection = null;
        IDocument visibleDocument = this.getVisibleDocument();
        if (visibleDocument instanceof ProjectionDocument) {
            projection = (ProjectionDocument)visibleDocument;
        } else {
            IDocument master = this.getDocument();
            IDocument slave = this.createSlaveDocument(this.getDocument());
            if (slave instanceof ProjectionDocument) {
                projection = (ProjectionDocument)slave;
                this.addMasterDocumentRange(projection, 0, master.getLength());
                this.replaceVisibleDocument((IDocument)projection);
            }
        }
        if (projection != null) {
            this.removeMasterDocumentRange(projection, offset, length);
        }
        if (projection != null && fireRedraw && (line = (document = this.getDocument()).getLineOfOffset(offset)) > 0) {
            IRegion info = document.getLineInformation(line - 1);
            this.internalInvalidateTextPresentation(info.getOffset(), info.getLength());
        }
    }

    private void expand(int offset, int length, boolean fireRedraw) throws BadLocationException {
        IDocument slave = this.getVisibleDocument();
        if (slave instanceof ProjectionDocument) {
            ProjectionDocument projection = (ProjectionDocument)slave;
            this.addMasterDocumentRange(projection, offset, length);
            ProjectionAnnotation[] collapsed = this.computeCollapsedNestedAnnotations(offset, length);
            if (collapsed != null) {
                int i = 0;
                while (i < collapsed.length) {
                    IRegion[] regions = this.computeCollapsedRegions(this.fProjectionAnnotationModel.getPosition(collapsed[i]));
                    if (regions != null) {
                        int j = 0;
                        while (j < regions.length) {
                            this.removeMasterDocumentRange(projection, regions[j].getOffset(), regions[j].getLength());
                            ++j;
                        }
                    }
                    ++i;
                }
            }
            if (fireRedraw) {
                this.internalInvalidateTextPresentation(offset, length);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected final void processCatchupRequest(AnnotationModelEvent event) {
        if (Display.getCurrent() != null) {
            boolean run = false;
            Object object = this.fLock;
            synchronized (object) {
                run = this.fPendingRequests.isEmpty();
            }
            if (run) {
                try {
                    this.catchupWithProjectionAnnotationModel(event);
                }
                catch (BadLocationException badLocationException) {
                    throw new IllegalArgumentException();
                }
            } else {
                this.postCatchupRequest(event);
            }
        } else {
            this.postCatchupRequest(event);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected final void postCatchupRequest(AnnotationModelEvent event) {
        Object object = this.fLock;
        synchronized (object) {
            Display display;
            StyledText widget;
            this.fPendingRequests.add(event);
            if (this.fPendingRequests.size() == 1 && (widget = this.getTextWidget()) != null && (display = widget.getDisplay()) != null) {
                display.asyncExec(new Runnable(){

                    /*
                     * WARNING - Removed try catching itself - possible behaviour change.
                     */
                    public void run() {
                        try {
                            while (true) {
                                AnnotationModelEvent ame = null;
                                Object object = ProjectionViewer.this.fLock;
                                synchronized (object) {
                                    if (ProjectionViewer.this.fPendingRequests.size() == 0) {
                                        return;
                                    }
                                    ame = (AnnotationModelEvent)ProjectionViewer.this.fPendingRequests.remove(0);
                                }
                                ProjectionViewer.this.catchupWithProjectionAnnotationModel(ame);
                            }
                        }
                        catch (BadLocationException badLocationException) {
                            try {
                                try {
                                    ProjectionViewer.this.catchupWithProjectionAnnotationModel(null);
                                }
                                catch (BadLocationException badLocationException2) {
                                    throw new IllegalArgumentException();
                                }
                            }
                            catch (Throwable throwable) {
                                Object object = ProjectionViewer.this.fLock;
                                synchronized (object) {
                                    ProjectionViewer.this.fPendingRequests.clear();
                                }
                                throw throwable;
                            }
                            Object object = ProjectionViewer.this.fLock;
                            synchronized (object) {
                                ProjectionViewer.this.fPendingRequests.clear();
                            }
                            return;
                        }
                    }
                });
            }
        }
    }

    private boolean isVisibleMasterDocumentSameAsDocument() {
        IDocument visibleDocument = this.getVisibleDocument();
        return visibleDocument instanceof ProjectionDocument && ((ProjectionDocument)visibleDocument).getMasterDocument() == this.getDocument();
    }

    private void catchupWithProjectionAnnotationModel(AnnotationModelEvent event) throws BadLocationException {
        if (event == null || !this.isVisibleMasterDocumentSameAsDocument()) {
            this.fPendingAnnotationWorldChange = false;
            this.reinitializeProjection();
        } else if (event.isWorldChange()) {
            if (event.isValid()) {
                this.fPendingAnnotationWorldChange = false;
                this.reinitializeProjection();
            } else {
                this.fPendingAnnotationWorldChange = true;
            }
        } else if (this.fPendingAnnotationWorldChange) {
            if (event.isValid()) {
                this.fPendingAnnotationWorldChange = false;
                this.reinitializeProjection();
            }
        } else {
            Annotation[] addedAnnotations = event.getAddedAnnotations();
            Annotation[] changedAnnotation = event.getChangedAnnotations();
            Annotation[] removedAnnotations = event.getRemovedAnnotations();
            this.fCommandQueue = new ProjectionCommandQueue();
            boolean isRedrawing = this.redraws();
            int topIndex = isRedrawing ? this.getTopIndex() : -1;
            this.processDeletions(event, removedAnnotations, true);
            ArrayList coverage = new ArrayList();
            this.processChanges(addedAnnotations, true, coverage);
            this.processChanges(changedAnnotation, true, coverage);
            ProjectionCommandQueue commandQueue = this.fCommandQueue;
            this.fCommandQueue = null;
            if (commandQueue.passedRedrawCostsThreshold()) {
                this.setRedraw(false);
                try {
                    try {
                        this.executeProjectionCommands(commandQueue, false);
                    }
                    catch (IllegalArgumentException illegalArgumentException) {
                        this.reinitializeProjection();
                        this.setRedraw(true, topIndex);
                    }
                }
                finally {
                    this.setRedraw(true, topIndex);
                }
            } else {
                try {
                    boolean fireRedraw = !commandQueue.passedInvalidationCostsThreshold();
                    this.executeProjectionCommands(commandQueue, fireRedraw);
                    if (!fireRedraw) {
                        this.invalidateTextPresentation();
                    }
                }
                catch (IllegalArgumentException illegalArgumentException) {
                    this.reinitializeProjection();
                }
            }
        }
    }

    private void executeProjectionCommands(ProjectionCommandQueue commandQueue, boolean fireRedraw) throws BadLocationException {
        Iterator e = commandQueue.iterator();
        while (e.hasNext()) {
            ProjectionCommand command = (ProjectionCommand)e.next();
            switch (command.fType) {
                case 0: {
                    this.addMasterDocumentRange(command.fProjection, command.fOffset, command.fLength);
                    break;
                }
                case 1: {
                    this.removeMasterDocumentRange(command.fProjection, command.fOffset, command.fLength);
                    break;
                }
                case 2: {
                    if (!fireRedraw) break;
                    this.invalidateTextPresentation(command.fOffset, command.fLength);
                }
            }
        }
        commandQueue.clear();
    }

    private boolean covers(int offset, int length, Position position) {
        if (!(position.offset == offset && position.length == length || position.isDeleted())) {
            return offset <= position.getOffset() && position.getOffset() + position.getLength() <= offset + length;
        }
        return false;
    }

    private ProjectionAnnotation[] computeCollapsedNestedAnnotations(int offset, int length) {
        ArrayList<ProjectionAnnotation> annotations = new ArrayList<ProjectionAnnotation>(5);
        Iterator e = this.fProjectionAnnotationModel.getAnnotationIterator();
        while (e.hasNext()) {
            Position position;
            ProjectionAnnotation annotation = (ProjectionAnnotation)e.next();
            if (!annotation.isCollapsed() || (position = this.fProjectionAnnotationModel.getPosition(annotation)) == null || !this.covers(offset, length, position)) continue;
            annotations.add(annotation);
        }
        if (annotations.size() > 0) {
            ProjectionAnnotation[] result = new ProjectionAnnotation[annotations.size()];
            annotations.toArray(result);
            return result;
        }
        return null;
    }

    private void internalInvalidateTextPresentation(int offset, int length) {
        if (this.fCommandQueue != null) {
            this.fCommandQueue.add(new ProjectionCommand(offset, length));
        } else {
            this.invalidateTextPresentation(offset, length);
        }
    }

    private void processDeletions(AnnotationModelEvent event, Annotation[] removedAnnotations, boolean fireRedraw) throws BadLocationException {
        int i = 0;
        while (i < removedAnnotations.length) {
            ProjectionAnnotation annotation = (ProjectionAnnotation)removedAnnotations[i];
            if (annotation.isCollapsed()) {
                Position expanded = event.getPositionOfRemovedAnnotation((Annotation)annotation);
                this.expand(expanded.getOffset(), expanded.getLength(), fireRedraw);
            }
            ++i;
        }
    }

    public IRegion computeCollapsedRegion(Position position) {
        IDocument document;
        block4: {
            try {
                document = this.getDocument();
                if (document != null) break block4;
                return null;
            }
            catch (BadLocationException badLocationException) {}
        }
        int line = document.getLineOfOffset(position.getOffset());
        int offset = document.getLineOffset(line + 1);
        int length = position.getLength() - (offset - position.getOffset());
        if (length > 0) {
            return new Region(offset, length);
        }
        return null;
    }

    IRegion[] computeCollapsedRegions(Position position) {
        IDocument document;
        block5: {
            try {
                document = this.getDocument();
                if (document != null) break block5;
                return null;
            }
            catch (BadLocationException badLocationException) {
                return null;
            }
        }
        if (position instanceof IProjectionPosition) {
            IProjectionPosition projPosition = (IProjectionPosition)position;
            return projPosition.computeProjectionRegions(document);
        }
        int line = document.getLineOfOffset(position.getOffset());
        int offset = document.getLineOffset(line + 1);
        int length = position.getLength() - (offset - position.getOffset());
        if (length > 0) {
            return new IRegion[]{new Region(offset, length)};
        }
        return null;
    }

    public Position computeCollapsedRegionAnchor(Position position) {
        IDocument document;
        block4: {
            try {
                document = this.getDocument();
                if (document != null) break block4;
                return null;
            }
            catch (BadLocationException badLocationException) {
                return null;
            }
        }
        int captionOffset = position.getOffset();
        if (position instanceof IProjectionPosition) {
            captionOffset += ((IProjectionPosition)position).computeCaptionOffset(document);
        }
        IRegion lineInfo = document.getLineInformationOfOffset(captionOffset);
        return new Position(lineInfo.getOffset() + lineInfo.getLength(), 0);
    }

    private void processChanges(Annotation[] annotations, boolean fireRedraw, List coverage) throws BadLocationException {
        int i = 0;
        while (i < annotations.length) {
            ProjectionAnnotation annotation = (ProjectionAnnotation)annotations[i];
            Position position = this.fProjectionAnnotationModel.getPosition(annotation);
            if (position != null && !this.covers(coverage, position)) {
                if (annotation.isCollapsed()) {
                    coverage.add(position);
                    IRegion[] regions = this.computeCollapsedRegions(position);
                    if (regions != null) {
                        int j = 0;
                        while (j < regions.length) {
                            this.collapse(regions[j].getOffset(), regions[j].getLength(), fireRedraw);
                            ++j;
                        }
                    }
                } else {
                    this.expand(position.getOffset(), position.getLength(), fireRedraw);
                }
            }
            ++i;
        }
    }

    private boolean covers(List coverage, Position position) {
        Iterator e = coverage.iterator();
        while (e.hasNext()) {
            Position p = (Position)e.next();
            if (p.getOffset() > position.getOffset() || position.getOffset() + position.getLength() > p.getOffset() + p.getLength()) continue;
            return true;
        }
        return false;
    }

    public final void reinitializeProjection() throws BadLocationException {
        IDocument slave;
        IDocument master;
        ProjectionDocument projection = null;
        ISlaveDocumentManager manager = this.getSlaveDocumentManager();
        if (manager != null && (master = this.getDocument()) != null && (slave = manager.createSlaveDocument(master)) instanceof ProjectionDocument) {
            projection = (ProjectionDocument)slave;
            this.addMasterDocumentRange(projection, 0, master.getLength());
        }
        if (projection != null) {
            Iterator e = this.fProjectionAnnotationModel.getAnnotationIterator();
            while (e.hasNext()) {
                IRegion[] regions;
                Position position;
                ProjectionAnnotation annotation = (ProjectionAnnotation)e.next();
                if (!annotation.isCollapsed() || (position = this.fProjectionAnnotationModel.getPosition(annotation)) == null || (regions = this.computeCollapsedRegions(position)) == null) continue;
                int i = 0;
                while (i < regions.length) {
                    this.removeMasterDocumentRange(projection, regions[i].getOffset(), regions[i].getLength());
                    ++i;
                }
            }
        }
        this.replaceVisibleDocument((IDocument)projection);
    }

    protected void handleVerifyEvent(VerifyEvent e) {
        Object selection;
        if (this.getTextWidget().getBlockSelection()) {
            selection = (ITextSelection)this.getSelection();
            if (this.exposeModelRange((IRegion)new Region(selection.getOffset(), selection.getLength()))) {
                this.setSelection((ISelection)selection);
            }
            super.handleVerifyEvent(e);
        }
        selection = this.getSelectedRange();
        IRegion modelRange = this.event2ModelRange(e);
        if (this.exposeModelRange(modelRange)) {
            e.doit = false;
            try {
                if (((Point)selection).y == 0 && e.text.length() <= 1 && modelRange.getLength() == 1) {
                    ((Point)selection).y = 1;
                    if (((Point)selection).x - 1 == modelRange.getOffset()) {
                        --((Point)selection).x;
                    }
                }
                this.getDocument().replace(((Point)selection).x, ((Point)selection).y, e.text);
                this.setSelectedRange(((Point)selection).x + e.text.length(), 0);
            }
            catch (BadLocationException badLocationException) {}
        } else {
            super.handleVerifyEvent(e);
        }
    }

    public void addVerticalRulerColumn(IVerticalRulerColumn column) {
        IVerticalRuler ruler = this.getVerticalRuler();
        if (ruler instanceof CompositeRuler) {
            CompositeRuler compositeRuler = (CompositeRuler)ruler;
            compositeRuler.addDecorator(99, column);
        }
    }

    public void removeVerticalRulerColumn(IVerticalRulerColumn column) {
        IVerticalRuler ruler = this.getVerticalRuler();
        if (ruler instanceof CompositeRuler) {
            CompositeRuler compositeRuler = (CompositeRuler)ruler;
            compositeRuler.removeDecorator(column);
        }
    }

    public boolean exposeModelRange(IRegion modelRange) {
        if (this.isProjectionMode()) {
            return this.fProjectionAnnotationModel.expandAll(modelRange.getOffset(), modelRange.getLength());
        }
        if (!this.overlapsWithVisibleRegion(modelRange.getOffset(), modelRange.getLength())) {
            this.resetVisibleRegion();
            return true;
        }
        return false;
    }

    public void setRangeIndication(int offset, int length, boolean moveCursor) {
        IRegion rangeIndication = this.getRangeIndication();
        if (moveCursor && this.fProjectionAnnotationModel != null && (rangeIndication == null || offset != rangeIndication.getOffset() || length != rangeIndication.getLength())) {
            ArrayList<ProjectionAnnotation> expand = new ArrayList<ProjectionAnnotation>(2);
            Iterator iterator = this.fProjectionAnnotationModel.getAnnotationIterator();
            while (iterator.hasNext()) {
                ProjectionAnnotation annotation = (ProjectionAnnotation)iterator.next();
                if (!annotation.isCollapsed() || !this.willAutoExpand(this.fProjectionAnnotationModel.getPosition(annotation), offset, length)) continue;
                expand.add(annotation);
            }
            if (!expand.isEmpty()) {
                Iterator e = expand.iterator();
                while (e.hasNext()) {
                    this.fProjectionAnnotationModel.expand((Annotation)e.next());
                }
            }
        }
        super.setRangeIndication(offset, length, moveCursor);
    }

    private boolean willAutoExpand(Position position, int offset, int length) {
        if (position == null || position.isDeleted()) {
            return false;
        }
        if (position.getOffset() == offset || position.getOffset() + position.getLength() == offset + length) {
            return true;
        }
        return position.getOffset() < offset && offset + length < position.getOffset() + position.getLength();
    }

    protected void handleDispose() {
        this.fWasProjectionEnabled = false;
        super.handleDispose();
    }

    protected void handleVisibleDocumentChanged(DocumentEvent event) {
        block10: {
            if (this.fHandleProjectionChanges && event instanceof ProjectionDocumentEvent && this.isProjectionMode()) {
                ProjectionDocumentEvent e = (ProjectionDocumentEvent)event;
                DocumentEvent master = e.getMasterEvent();
                if (master != null) {
                    this.fReplaceVisibleDocumentExecutionTrigger = master.getDocument();
                }
                try {
                    int replaceLength;
                    int n = replaceLength = e.getText() == null ? 0 : e.getText().length();
                    if (ProjectionDocumentEvent.PROJECTION_CHANGE == e.getChangeType()) {
                        if (e.getLength() == 0 && replaceLength != 0) {
                            this.fProjectionAnnotationModel.expandAll(e.getMasterOffset(), e.getMasterLength());
                        }
                        break block10;
                    }
                    if (master == null || replaceLength <= 0 && this.fDeletedLines <= 1) break block10;
                    try {
                        int numberOfLines = e.getDocument().getNumberOfLines(e.getOffset(), replaceLength);
                        if (numberOfLines > 1 || this.fDeletedLines > 1) {
                            this.fProjectionAnnotationModel.expandAll(master.getOffset(), replaceLength);
                        }
                    }
                    catch (BadLocationException badLocationException) {}
                }
                finally {
                    this.fReplaceVisibleDocumentExecutionTrigger = null;
                }
            }
        }
    }

    protected void handleVisibleDocumentAboutToBeChanged(DocumentEvent event) {
        if (this.fHandleProjectionChanges && event instanceof ProjectionDocumentEvent && this.isProjectionMode()) {
            int deletedLines;
            try {
                deletedLines = event.getDocument().getNumberOfLines(event.getOffset(), event.getLength());
            }
            catch (BadLocationException badLocationException) {
                deletedLines = 0;
            }
            this.fDeletedLines = deletedLines;
        }
    }

    public IRegion[] getCoveredModelRanges(IRegion modelRange) {
        if (this.fInformationMapping == null) {
            return new IRegion[]{new Region(modelRange.getOffset(), modelRange.getLength())};
        }
        if (this.fInformationMapping instanceof IDocumentInformationMappingExtension) {
            IDocumentInformationMappingExtension extension = (IDocumentInformationMappingExtension)this.fInformationMapping;
            try {
                return extension.getExactCoverage(modelRange);
            }
            catch (BadLocationException badLocationException) {}
        }
        return null;
    }

    public void doOperation(int operation) {
        switch (operation) {
            case 19: {
                if (!this.canDoOperation(19)) break;
                if (!this.isProjectionMode()) {
                    this.enableProjection();
                } else {
                    this.expandAll();
                    this.disableProjection();
                }
                return;
            }
        }
        if (!this.isProjectionMode()) {
            super.doOperation(operation);
            return;
        }
        StyledText textWidget = this.getTextWidget();
        if (textWidget == null) {
            return;
        }
        ITextSelection selection = null;
        switch (operation) {
            case 3: {
                if (!this.redraws()) break;
                selection = (ITextSelection)this.getSelection();
                if (this.exposeModelRange((IRegion)new Region(selection.getOffset(), selection.getLength()))) {
                    return;
                }
                if (selection.getLength() == 0) {
                    this.copyMarkedRegion(true);
                } else {
                    this.copyToClipboard(selection, true, textWidget);
                }
                Point range = textWidget.getSelectionRange();
                this.fireSelectionChanged(range.x, range.y);
                break;
            }
            case 4: {
                if (!this.redraws()) break;
                selection = (ITextSelection)this.getSelection();
                if (selection.getLength() == 0) {
                    this.copyMarkedRegion(false);
                    break;
                }
                this.copyToClipboard(selection, false, textWidget);
                break;
            }
            case 6: {
                if (!this.redraws()) break;
                try {
                    selection = (ITextSelection)this.getSelection();
                    int length = selection.getLength();
                    if (!(textWidget.getBlockSelection() || length != 0 && length != textWidget.getSelectionRange().y)) {
                        this.getTextWidget().invokeAction(127);
                    } else {
                        this.deleteSelection(selection, textWidget);
                    }
                    Point range = textWidget.getSelectionRange();
                    this.fireSelectionChanged(range.x, range.y);
                }
                catch (BadLocationException badLocationException) {}
                break;
            }
            case 20: {
                if (!this.redraws()) break;
                this.expandAll();
                break;
            }
            case 17: {
                if (!this.redraws()) break;
                this.expand();
                break;
            }
            case 21: {
                if (!this.redraws()) break;
                this.collapseAll();
                break;
            }
            case 18: {
                if (!this.redraws()) break;
                this.collapse();
                break;
            }
            default: {
                super.doOperation(operation);
            }
        }
    }

    public boolean canDoOperation(int operation) {
        switch (operation) {
            case 17: 
            case 18: 
            case 20: 
            case 21: {
                return this.isProjectionMode();
            }
            case 19: {
                return this.isProjectionMode() || !this.isSegmented();
            }
        }
        return super.canDoOperation(operation);
    }

    private boolean isSegmented() {
        IDocument document = this.getDocument();
        int length = document == null ? 0 : document.getLength();
        IRegion visible = this.getModelCoverage();
        boolean isSegmented = visible != null && !visible.equals(new Region(0, length));
        return isSegmented;
    }

    private IRegion getMarkedRegion() {
        int end;
        if (this.getTextWidget() == null) {
            return null;
        }
        if (this.fMarkPosition == null || this.fMarkPosition.isDeleted()) {
            return null;
        }
        int start = this.fMarkPosition.getOffset();
        return start > (end = this.getSelectedRange().x) ? new Region(end, start - end) : new Region(start, end - start);
    }

    protected void copyMarkedRegion(boolean delete) {
        IRegion markedRegion = this.getMarkedRegion();
        if (markedRegion != null) {
            this.copyToClipboard(new TextSelection(this.getDocument(), markedRegion.getOffset(), markedRegion.getLength()), delete, this.getTextWidget());
        }
    }

    private void copyToClipboard(ITextSelection selection, boolean delete, StyledText textWidget) {
        String copyText = selection.getText();
        if (copyText == null) {
            textWidget.copy();
        }
        if (copyText != null && copyText.equals(textWidget.getSelectionText())) {
            textWidget.copy();
        } else if (copyText != null) {
            Clipboard clipboard = new Clipboard(textWidget.getDisplay());
            try {
                Transfer[] dataTypes = new Transfer[]{TextTransfer.getInstance()};
                Object[] data = new Object[]{copyText};
                try {
                    clipboard.setContents(data, dataTypes);
                }
                catch (SWTError e) {
                    if (e.code != 2002) {
                        throw e;
                    }
                    clipboard.dispose();
                    return;
                }
            }
            finally {
                clipboard.dispose();
            }
        }
        if (delete) {
            try {
                this.deleteSelection(selection, textWidget);
            }
            catch (BadLocationException badLocationException) {}
        }
    }

    private void deleteSelection(ITextSelection selection, StyledText textWidget) throws BadLocationException {
        new SelectionProcessor(this).doDelete(selection);
    }

    protected Point widgetSelection2ModelSelection(Point widgetSelection) {
        if (!this.isProjectionMode()) {
            return super.widgetSelection2ModelSelection(widgetSelection);
        }
        IRegion modelSelection = this.widgetRange2ModelRange((IRegion)new Region(widgetSelection.x, widgetSelection.y));
        if (modelSelection == null) {
            return null;
        }
        int modelOffset = modelSelection.getOffset();
        int modelEndOffset = modelOffset + modelSelection.getLength();
        if (widgetSelection.y == 0) {
            return new Point(modelEndOffset, 0);
        }
        int widgetSelectionExclusiveEnd = widgetSelection.x + widgetSelection.y;
        Position[] annotationPositions = this.computeOverlappingAnnotationPositions(modelSelection);
        int i = 0;
        while (i < annotationPositions.length) {
            IRegion[] regions = this.computeCollapsedRegions(annotationPositions[i]);
            if (regions != null) {
                int j = 0;
                while (j < regions.length) {
                    IRegion modelRange = regions[j];
                    IRegion widgetRange = this.modelRange2ClosestWidgetRange(modelRange);
                    if (widgetRange != null && widgetRange.getLength() == 0) {
                        int widgetOffset = widgetRange.getOffset();
                        if (widgetOffset == widgetSelection.x) {
                            modelOffset = Math.min(modelOffset, modelRange.getOffset());
                        } else if (widgetOffset == widgetSelectionExclusiveEnd) {
                            modelEndOffset = Math.max(modelEndOffset, modelRange.getOffset() + modelRange.getLength());
                        }
                    }
                    ++j;
                }
            }
            ++i;
        }
        return new Point(modelOffset, modelEndOffset - modelOffset);
    }

    private Position[] computeOverlappingAnnotationPositions(IRegion modelSelection) {
        ArrayList<Position> positions = new ArrayList<Position>();
        Iterator e = this.fProjectionAnnotationModel.getAnnotationIterator();
        while (e.hasNext()) {
            ProjectionAnnotation annotation = (ProjectionAnnotation)e.next();
            Position position = this.fProjectionAnnotationModel.getPosition(annotation);
            if (position == null || !position.overlapsWith(modelSelection.getOffset(), modelSelection.getLength()) || this.modelRange2WidgetRange(position) == null) continue;
            positions.add(position);
        }
        return positions.toArray(new Position[positions.size()]);
    }

    protected FindReplaceDocumentAdapter getFindReplaceDocumentAdapter() {
        if (this.fFindReplaceDocumentAdapter == null) {
            IDocument document = this.isProjectionMode() ? this.getDocument() : this.getVisibleDocument();
            this.fFindReplaceDocumentAdapter = new FindReplaceDocumentAdapter(document);
        }
        return this.fFindReplaceDocumentAdapter;
    }

    protected int findAndSelect(int startPosition, String findString, boolean forwardSearch, boolean caseSensitive, boolean wholeWord, boolean regExSearch) {
        if (!this.isProjectionMode()) {
            return super.findAndSelect(startPosition, findString, forwardSearch, caseSensitive, wholeWord, regExSearch);
        }
        StyledText textWidget = this.getTextWidget();
        if (textWidget == null) {
            return -1;
        }
        try {
            IRegion matchRegion = this.getFindReplaceDocumentAdapter().find(startPosition, findString, forwardSearch, caseSensitive, wholeWord, regExSearch);
            if (matchRegion != null) {
                this.exposeModelRange(matchRegion);
                this.revealRange(matchRegion.getOffset(), matchRegion.getLength());
                this.setSelectedRange(matchRegion.getOffset(), matchRegion.getLength());
                return matchRegion.getOffset();
            }
        }
        catch (BadLocationException badLocationException) {}
        return -1;
    }

    protected int findAndSelectInRange(int startPosition, String findString, boolean forwardSearch, boolean caseSensitive, boolean wholeWord, int rangeOffset, int rangeLength, boolean regExSearch) {
        if (!this.isProjectionMode()) {
            return super.findAndSelectInRange(startPosition, findString, forwardSearch, caseSensitive, wholeWord, rangeOffset, rangeLength, regExSearch);
        }
        StyledText textWidget = this.getTextWidget();
        if (textWidget == null) {
            return -1;
        }
        try {
            int modelOffset = startPosition;
            if (forwardSearch && (startPosition == -1 || startPosition < rangeOffset)) {
                modelOffset = rangeOffset;
            } else if (!(forwardSearch || startPosition != -1 && startPosition <= rangeOffset + rangeLength)) {
                modelOffset = rangeOffset + rangeLength;
            }
            IRegion matchRegion = this.getFindReplaceDocumentAdapter().find(modelOffset, findString, forwardSearch, caseSensitive, wholeWord, regExSearch);
            if (matchRegion != null) {
                int offset = matchRegion.getOffset();
                int length = matchRegion.getLength();
                if (rangeOffset <= offset && offset + length <= rangeOffset + rangeLength) {
                    this.exposeModelRange(matchRegion);
                    this.revealRange(offset, length);
                    this.setSelectedRange(offset, length);
                    return offset;
                }
            }
        }
        catch (BadLocationException badLocationException) {}
        return -1;
    }

    private class AnnotationModelListener
    implements IAnnotationModelListener,
    IAnnotationModelListenerExtension {
        private AnnotationModelListener() {
        }

        public void modelChanged(IAnnotationModel model) {
            this.processModelChanged(model, null);
        }

        public void modelChanged(AnnotationModelEvent event) {
            this.processModelChanged(event.getAnnotationModel(), event);
        }

        private void processModelChanged(IAnnotationModel model, AnnotationModelEvent event) {
            if (model == ProjectionViewer.this.fProjectionAnnotationModel) {
                if (ProjectionViewer.this.fProjectionSummary != null) {
                    ProjectionViewer.this.fProjectionSummary.updateSummaries();
                }
                ProjectionViewer.this.processCatchupRequest(event);
            } else if (model == ProjectionViewer.this.getAnnotationModel() && ProjectionViewer.this.fProjectionSummary != null) {
                ProjectionViewer.this.fProjectionSummary.updateSummaries();
            }
        }
    }

    private static class ProjectionCommand {
        static final int ADD = 0;
        static final int REMOVE = 1;
        static final int INVALIDATE_PRESENTATION = 2;
        ProjectionDocument fProjection;
        int fType;
        int fOffset;
        int fLength;

        ProjectionCommand(ProjectionDocument projection, int type, int offset, int length) {
            this.fProjection = projection;
            this.fType = type;
            this.fOffset = offset;
            this.fLength = length;
        }

        ProjectionCommand(int offset, int length) {
            this.fType = 2;
            this.fOffset = offset;
            this.fLength = length;
        }

        int computeExpectedCosts() {
            switch (this.fType) {
                case 0: {
                    try {
                        IRegion[] gaps = this.fProjection.computeUnprojectedMasterRegions(this.fOffset, this.fLength);
                        return gaps == null ? 0 : gaps.length;
                    }
                    catch (BadLocationException badLocationException) {
                        break;
                    }
                }
                case 1: {
                    try {
                        IRegion[] fragments = this.fProjection.computeProjectedMasterRegions(this.fOffset, this.fLength);
                        return fragments == null ? 0 : fragments.length;
                    }
                    catch (BadLocationException badLocationException) {}
                }
            }
            return 0;
        }
    }

    private static class ProjectionCommandQueue {
        static final int REDRAW_COSTS = 15;
        static final int INVALIDATION_COSTS = 10;
        List fList = new ArrayList(15);
        int fExpectedExecutionCosts = -1;

        private ProjectionCommandQueue() {
        }

        void add(ProjectionCommand command) {
            this.fList.add(command);
        }

        Iterator iterator() {
            return this.fList.iterator();
        }

        void clear() {
            this.fList.clear();
            this.fExpectedExecutionCosts = -1;
        }

        boolean passedRedrawCostsThreshold() {
            if (this.fExpectedExecutionCosts == -1) {
                this.computeExpectedExecutionCosts();
            }
            return this.fExpectedExecutionCosts > 15;
        }

        boolean passedInvalidationCostsThreshold() {
            if (this.fExpectedExecutionCosts == -1) {
                this.computeExpectedExecutionCosts();
            }
            return this.fExpectedExecutionCosts > 10;
        }

        private void computeExpectedExecutionCosts() {
            int max_costs = Math.max(15, 10);
            this.fExpectedExecutionCosts = this.fList.size();
            if (this.fExpectedExecutionCosts <= max_costs) {
                Iterator e = this.fList.iterator();
                while (e.hasNext()) {
                    ProjectionCommand command = (ProjectionCommand)e.next();
                    this.fExpectedExecutionCosts += command.computeExpectedCosts();
                    if (this.fExpectedExecutionCosts > max_costs) break;
                }
            }
        }
    }

    private class ReplaceVisibleDocumentExecutor
    implements IDocumentListener {
        private IDocument fSlaveDocument;
        private IDocument fExecutionTrigger;

        public ReplaceVisibleDocumentExecutor(IDocument slaveDocument) {
            this.fSlaveDocument = slaveDocument;
        }

        public void install(IDocument executionTrigger) {
            if (executionTrigger != null && this.fSlaveDocument != null) {
                this.fExecutionTrigger = executionTrigger;
                this.fExecutionTrigger.addDocumentListener((IDocumentListener)this);
            }
        }

        public void documentAboutToBeChanged(DocumentEvent event) {
        }

        public void documentChanged(DocumentEvent event) {
            this.fExecutionTrigger.removeDocumentListener((IDocumentListener)this);
            ProjectionViewer.this.executeReplaceVisibleDocument(this.fSlaveDocument);
        }
    }
}

