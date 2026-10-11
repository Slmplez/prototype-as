/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DocumentRewriteSession
 *  org.eclipse.jface.text.DocumentRewriteSessionType
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentExtension4
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ISlaveDocumentManager
 *  org.eclipse.jface.text.ISlaveDocumentManagerExtension
 *  org.eclipse.jface.text.ISynchronizable
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.projection.ChildDocument
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.AnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.ScrollBar
 */
package org.eclipse.jface.text.source;

import java.util.Iterator;
import java.util.Stack;
import org.eclipse.jface.internal.text.NonDeletingPositionUpdater;
import org.eclipse.jface.internal.text.StickyHoverManager;
import org.eclipse.jface.text.AbstractHoverInformationControlManager;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.BlockTextSelection;
import org.eclipse.jface.text.DocumentRewriteSession;
import org.eclipse.jface.text.DocumentRewriteSessionType;
import org.eclipse.jface.text.IBlockTextSelection;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension4;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.IRewriteTarget;
import org.eclipse.jface.text.ISlaveDocumentManager;
import org.eclipse.jface.text.ISlaveDocumentManagerExtension;
import org.eclipse.jface.text.ISynchronizable;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewerExtension8;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextViewer;
import org.eclipse.jface.text.contentassist.IContentAssistant;
import org.eclipse.jface.text.contentassist.IContentAssistantExtension2;
import org.eclipse.jface.text.contentassist.IContentAssistantExtension4;
import org.eclipse.jface.text.formatter.FormattingContext;
import org.eclipse.jface.text.formatter.IContentFormatter;
import org.eclipse.jface.text.formatter.IContentFormatterExtension;
import org.eclipse.jface.text.formatter.IFormattingContext;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetector;
import org.eclipse.jface.text.information.IInformationPresenter;
import org.eclipse.jface.text.presentation.IPresentationReconciler;
import org.eclipse.jface.text.projection.ChildDocument;
import org.eclipse.jface.text.quickassist.IQuickAssistAssistant;
import org.eclipse.jface.text.quickassist.IQuickAssistInvocationContext;
import org.eclipse.jface.text.reconciler.IReconciler;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.AnnotationBarHoverManager;
import org.eclipse.jface.text.source.AnnotationModel;
import org.eclipse.jface.text.source.AnnotationRulerColumn;
import org.eclipse.jface.text.source.CompositeRuler;
import org.eclipse.jface.text.source.ContentAssistantFacade;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.IOverviewRuler;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.ISourceViewerExtension;
import org.eclipse.jface.text.source.ISourceViewerExtension2;
import org.eclipse.jface.text.source.ISourceViewerExtension3;
import org.eclipse.jface.text.source.ISourceViewerExtension4;
import org.eclipse.jface.text.source.IVerticalRuler;
import org.eclipse.jface.text.source.OverviewRulerHoverManager;
import org.eclipse.jface.text.source.SourceViewerConfiguration;
import org.eclipse.jface.text.source.TextInvocationContext;
import org.eclipse.jface.text.source.VerticalRuler;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.ScrollBar;

public class SourceViewer
extends TextViewer
implements ISourceViewer,
ISourceViewerExtension,
ISourceViewerExtension2,
ISourceViewerExtension3,
ISourceViewerExtension4 {
    protected static final int GAP_SIZE = 2;
    protected static final int GAP_SIZE_1 = 1;
    protected static final String _SELECTION_POSITION_CATEGORY = "__selection_category";
    protected static final Object MODEL_ANNOTATION_MODEL = new Object();
    protected IContentAssistant fContentAssistant;
    private ContentAssistantFacade fContentAssistantFacade;
    protected boolean fContentAssistantInstalled;
    protected IQuickAssistAssistant fQuickAssistAssistant;
    protected boolean fQuickAssistAssistantInstalled;
    protected IContentFormatter fContentFormatter;
    protected IReconciler fReconciler;
    protected IPresentationReconciler fPresentationReconciler;
    protected IAnnotationHover fAnnotationHover;
    protected final Stack fSelections = new Stack();
    protected IPositionUpdater fSelectionUpdater = null;
    protected String fSelectionCategory;
    protected IAnnotationHover fOverviewRulerAnnotationHover;
    protected IInformationPresenter fInformationPresenter;
    private IVerticalRuler fVerticalRuler;
    private boolean fIsVerticalRulerVisible;
    private Composite fComposite;
    private IAnnotationModel fVisualAnnotationModel;
    private Annotation fRangeIndicator;
    private AnnotationBarHoverManager fVerticalRulerHoveringController;
    private AbstractHoverInformationControlManager fOverviewRulerHoveringController;
    private IOverviewRuler fOverviewRuler;
    private boolean fIsOverviewRulerVisible;

    public SourceViewer(Composite parent, IVerticalRuler ruler, int styles) {
        this(parent, ruler, null, false, styles);
    }

    public SourceViewer(Composite parent, IVerticalRuler verticalRuler, IOverviewRuler overviewRuler, boolean showAnnotationsOverview, int styles) {
        this.fVerticalRuler = verticalRuler;
        this.fIsVerticalRulerVisible = verticalRuler != null;
        this.fOverviewRuler = overviewRuler;
        this.fIsOverviewRulerVisible = showAnnotationsOverview && overviewRuler != null;
        this.createControl(parent, styles);
    }

    protected void createControl(Composite parent, int styles) {
        if (this.fVerticalRuler != null || this.fOverviewRuler != null) {
            styles &= 0xFFFFF7FF;
            this.fComposite = new Canvas(parent, 0);
            this.fComposite.setLayout(this.createLayout());
            parent = this.fComposite;
        }
        super.createControl(parent, styles);
        if (this.fVerticalRuler != null) {
            this.fVerticalRuler.createControl(this.fComposite, this);
        }
        if (this.fOverviewRuler != null) {
            this.fOverviewRuler.createControl(this.fComposite, this);
        }
    }

    protected Layout createLayout() {
        return new RulerLayout(1);
    }

    public Control getControl() {
        if (this.fComposite != null) {
            return this.fComposite;
        }
        return super.getControl();
    }

    public void setAnnotationHover(IAnnotationHover annotationHover) {
        this.fAnnotationHover = annotationHover;
    }

    public void setOverviewRulerAnnotationHover(IAnnotationHover annotationHover) {
        this.fOverviewRulerAnnotationHover = annotationHover;
    }

    public void configure(SourceViewerConfiguration configuration) {
        if (this.getTextWidget() == null) {
            return;
        }
        this.setDocumentPartitioning(configuration.getConfiguredDocumentPartitioning(this));
        this.fPresentationReconciler = configuration.getPresentationReconciler(this);
        if (this.fPresentationReconciler != null) {
            this.fPresentationReconciler.install(this);
        }
        this.fReconciler = configuration.getReconciler(this);
        if (this.fReconciler != null) {
            this.fReconciler.install(this);
        }
        this.fContentAssistant = configuration.getContentAssistant(this);
        if (this.fContentAssistant != null) {
            this.fContentAssistant.install(this);
            if (this.fContentAssistant instanceof IContentAssistantExtension2 && this.fContentAssistant instanceof IContentAssistantExtension4) {
                this.fContentAssistantFacade = new ContentAssistantFacade(this.fContentAssistant);
            }
            this.fContentAssistantInstalled = true;
        }
        this.fQuickAssistAssistant = configuration.getQuickAssistAssistant(this);
        if (this.fQuickAssistAssistant != null) {
            this.fQuickAssistAssistant.install(this);
            this.fQuickAssistAssistantInstalled = true;
        }
        this.fContentFormatter = configuration.getContentFormatter(this);
        this.fInformationPresenter = configuration.getInformationPresenter(this);
        if (this.fInformationPresenter != null) {
            this.fInformationPresenter.install(this);
        }
        this.setUndoManager(configuration.getUndoManager(this));
        this.getTextWidget().setTabs(configuration.getTabWidth(this));
        this.setAnnotationHover(configuration.getAnnotationHover(this));
        this.setOverviewRulerAnnotationHover(configuration.getOverviewRulerAnnotationHover(this));
        this.setHoverControlCreator(configuration.getInformationControlCreator(this));
        this.setHyperlinkPresenter(configuration.getHyperlinkPresenter(this));
        IHyperlinkDetector[] hyperlinkDetectors = configuration.getHyperlinkDetectors(this);
        int eventStateMask = configuration.getHyperlinkStateMask(this);
        this.setHyperlinkDetectors(hyperlinkDetectors, eventStateMask);
        String[] types = configuration.getConfiguredContentTypes(this);
        int i = 0;
        while (i < types.length) {
            String t = types[i];
            this.setAutoEditStrategies(configuration.getAutoEditStrategies(this, t), t);
            this.setTextDoubleClickStrategy(configuration.getDoubleClickStrategy(this, t), t);
            int[] stateMasks = configuration.getConfiguredTextHoverStateMasks(this, t);
            if (stateMasks != null) {
                int j = 0;
                while (j < stateMasks.length) {
                    int stateMask = stateMasks[j];
                    this.setTextHover(configuration.getTextHover(this, t, stateMask), t, stateMask);
                    ++j;
                }
            } else {
                this.setTextHover(configuration.getTextHover(this, t), t, 255);
            }
            String[] prefixes = configuration.getIndentPrefixes(this, t);
            if (prefixes != null && prefixes.length > 0) {
                this.setIndentPrefixes(prefixes, t);
            }
            if ((prefixes = configuration.getDefaultPrefixes(this, t)) != null && prefixes.length > 0) {
                this.setDefaultPrefixes(prefixes, t);
            }
            ++i;
        }
        this.activatePlugins();
    }

    protected void ensureAnnotationHoverManagerInstalled() {
        if (!(this.fVerticalRuler == null || this.fAnnotationHover == null && this.isVerticalRulerOnlyShowingAnnotations() || this.fVerticalRulerHoveringController != null || this.fHoverControlCreator == null)) {
            this.fVerticalRulerHoveringController = new AnnotationBarHoverManager(this.fVerticalRuler, this, this.fAnnotationHover, this.fHoverControlCreator);
            this.fVerticalRulerHoveringController.install(this.fVerticalRuler.getControl());
            this.fVerticalRulerHoveringController.getInternalAccessor().setInformationControlReplacer(new StickyHoverManager(this));
        }
    }

    protected void ensureOverviewHoverManagerInstalled() {
        if (this.fOverviewRuler != null && this.fOverviewRulerAnnotationHover != null && this.fOverviewRulerHoveringController == null && this.fHoverControlCreator != null) {
            this.fOverviewRulerHoveringController = new OverviewRulerHoverManager(this.fOverviewRuler, (ISourceViewer)this, this.fOverviewRulerAnnotationHover, this.fHoverControlCreator);
            this.fOverviewRulerHoveringController.install(this.fOverviewRuler.getControl());
            this.fOverviewRulerHoveringController.getInternalAccessor().setInformationControlReplacer(new StickyHoverManager(this));
        }
    }

    public void setHoverEnrichMode(ITextViewerExtension8.EnrichMode mode) {
        super.setHoverEnrichMode(mode);
        if (this.fVerticalRulerHoveringController != null) {
            this.fVerticalRulerHoveringController.getInternalAccessor().setHoverEnrichMode(mode);
        }
        if (this.fOverviewRulerHoveringController != null) {
            this.fOverviewRulerHoveringController.getInternalAccessor().setHoverEnrichMode(mode);
        }
    }

    public void activatePlugins() {
        this.ensureAnnotationHoverManagerInstalled();
        this.ensureOverviewHoverManagerInstalled();
        super.activatePlugins();
    }

    public void setDocument(IDocument document) {
        this.setDocument(document, null, -1, -1);
    }

    public void setDocument(IDocument document, int visibleRegionOffset, int visibleRegionLength) {
        this.setDocument(document, null, visibleRegionOffset, visibleRegionLength);
    }

    public void setDocument(IDocument document, IAnnotationModel annotationModel) {
        this.setDocument(document, annotationModel, -1, -1);
    }

    protected IAnnotationModel createVisualAnnotationModel(IAnnotationModel annotationModel) {
        AnnotationModel model = new AnnotationModel();
        model.addAnnotationModel(MODEL_ANNOTATION_MODEL, annotationModel);
        return (IAnnotationModel)model;
    }

    protected void disposeVisualAnnotationModel() {
        if (this.fVisualAnnotationModel != null) {
            if (this.getDocument() != null) {
                this.fVisualAnnotationModel.disconnect(this.getDocument());
            }
            if (this.fVisualAnnotationModel instanceof IAnnotationModelExtension) {
                ((IAnnotationModelExtension)this.fVisualAnnotationModel).removeAnnotationModel(MODEL_ANNOTATION_MODEL);
            }
            this.fVisualAnnotationModel = null;
        }
    }

    public void setDocument(IDocument document, IAnnotationModel annotationModel, int modelRangeOffset, int modelRangeLength) {
        this.disposeVisualAnnotationModel();
        if (annotationModel != null && document != null) {
            this.fVisualAnnotationModel = this.createVisualAnnotationModel(annotationModel);
            if (annotationModel instanceof ISynchronizable && this.fVisualAnnotationModel instanceof ISynchronizable) {
                ISynchronizable sync = (ISynchronizable)this.fVisualAnnotationModel;
                sync.setLockObject(((ISynchronizable)annotationModel).getLockObject());
            }
            this.fVisualAnnotationModel.connect(document);
        }
        if (modelRangeOffset == -1 && modelRangeLength == -1) {
            super.setDocument(document);
        } else {
            super.setDocument(document, modelRangeOffset, modelRangeLength);
        }
        if (this.fVerticalRuler != null) {
            this.fVerticalRuler.setModel(this.fVisualAnnotationModel);
        }
        if (this.fOverviewRuler != null) {
            this.fOverviewRuler.setModel(this.fVisualAnnotationModel);
        }
    }

    public IAnnotationModel getAnnotationModel() {
        if (this.fVisualAnnotationModel instanceof IAnnotationModelExtension) {
            IAnnotationModelExtension extension = (IAnnotationModelExtension)this.fVisualAnnotationModel;
            return extension.getAnnotationModel(MODEL_ANNOTATION_MODEL);
        }
        return null;
    }

    public IQuickAssistAssistant getQuickAssistAssistant() {
        return this.fQuickAssistAssistant;
    }

    public final ContentAssistantFacade getContentAssistantFacade() {
        return this.fContentAssistantFacade;
    }

    public IQuickAssistInvocationContext getQuickAssistInvocationContext() {
        Point selection = this.getSelectedRange();
        return new TextInvocationContext(this, selection.x, selection.y);
    }

    public IAnnotationModel getVisualAnnotationModel() {
        return this.fVisualAnnotationModel;
    }

    public void unconfigure() {
        this.clearRememberedSelection();
        if (this.fPresentationReconciler != null) {
            this.fPresentationReconciler.uninstall();
            this.fPresentationReconciler = null;
        }
        if (this.fReconciler != null) {
            this.fReconciler.uninstall();
            this.fReconciler = null;
        }
        if (this.fContentAssistant != null) {
            this.fContentAssistant.uninstall();
            this.fContentAssistantInstalled = false;
            this.fContentAssistant = null;
            if (this.fContentAssistantFacade != null) {
                this.fContentAssistantFacade = null;
            }
        }
        if (this.fQuickAssistAssistant != null) {
            this.fQuickAssistAssistant.uninstall();
            this.fQuickAssistAssistantInstalled = false;
            this.fQuickAssistAssistant = null;
        }
        this.fContentFormatter = null;
        if (this.fInformationPresenter != null) {
            this.fInformationPresenter.uninstall();
            this.fInformationPresenter = null;
        }
        this.fAutoIndentStrategies = null;
        this.fDoubleClickStrategies = null;
        this.fTextHovers = null;
        this.fIndentChars = null;
        this.fDefaultPrefixChars = null;
        if (this.fVerticalRulerHoveringController != null) {
            this.fVerticalRulerHoveringController.dispose();
            this.fVerticalRulerHoveringController = null;
        }
        if (this.fOverviewRulerHoveringController != null) {
            this.fOverviewRulerHoveringController.dispose();
            this.fOverviewRulerHoveringController = null;
        }
        if (this.fUndoManager != null) {
            this.fUndoManager.disconnect();
            this.fUndoManager = null;
        }
        this.setHyperlinkDetectors(null, 0);
    }

    protected void handleDispose() {
        this.unconfigure();
        this.disposeVisualAnnotationModel();
        this.fVerticalRuler = null;
        this.fOverviewRuler = null;
        this.fComposite = null;
        super.handleDispose();
    }

    public boolean canDoOperation(int operation) {
        if (this.getTextWidget() == null || !this.redraws() && operation != 15) {
            return false;
        }
        if (operation == 13) {
            return this.fContentAssistant != null && this.fContentAssistantInstalled && this.isEditable();
        }
        if (operation == 14) {
            return this.fContentAssistant != null && this.fContentAssistantInstalled && this.isEditable();
        }
        if (operation == 22) {
            return this.fQuickAssistAssistant != null && this.fQuickAssistAssistantInstalled && this.isEditable();
        }
        if (operation == 16) {
            return this.fInformationPresenter != null;
        }
        if (operation == 15) {
            return this.fContentFormatter != null && this.isEditable();
        }
        return super.canDoOperation(operation);
    }

    protected IFormattingContext createFormattingContext() {
        return new FormattingContext();
    }

    protected Point rememberSelection() {
        ITextSelection selection = (ITextSelection)this.getSelection();
        IDocument document = this.getDocument();
        if (this.fSelections.isEmpty()) {
            this.fSelectionCategory = _SELECTION_POSITION_CATEGORY + this.hashCode();
            this.fSelectionUpdater = new NonDeletingPositionUpdater(this.fSelectionCategory);
            document.addPositionCategory(this.fSelectionCategory);
            document.addPositionUpdater(this.fSelectionUpdater);
        }
        try {
            Position position = selection instanceof IBlockTextSelection ? new ColumnPosition(selection.getOffset(), selection.getLength(), ((IBlockTextSelection)selection).getStartColumn(), ((IBlockTextSelection)selection).getEndColumn()) : new Position(selection.getOffset(), selection.getLength());
            document.addPosition(this.fSelectionCategory, position);
            this.fSelections.push(position);
        }
        catch (BadLocationException badLocationException) {
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
        return new Point(selection.getOffset(), selection.getLength());
    }

    protected void restoreSelection() {
        if (!this.fSelections.isEmpty()) {
            IDocument document = this.getDocument();
            Position position = (Position)this.fSelections.pop();
            try {
                document.removePosition(this.fSelectionCategory, position);
                Point currentSelection = this.getSelectedRange();
                if (currentSelection == null || currentSelection.x != position.getOffset() || currentSelection.y != position.getLength()) {
                    if (position instanceof ColumnPosition && this.getTextWidget().getBlockSelection()) {
                        this.setSelection(new BlockTextSelection(document, document.getLineOfOffset(position.getOffset()), ((ColumnPosition)position).fStartColumn, document.getLineOfOffset(position.getOffset() + position.getLength()), ((ColumnPosition)position).fEndColumn, this.getTextWidget().getTabs()));
                    } else {
                        this.setSelectedRange(position.getOffset(), position.getLength());
                    }
                }
                if (this.fSelections.isEmpty()) {
                    this.clearRememberedSelection();
                }
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
            }
            catch (BadLocationException badLocationException) {}
        }
    }

    protected void clearRememberedSelection() {
        IDocument document;
        if (!this.fSelections.isEmpty()) {
            this.fSelections.clear();
        }
        if ((document = this.getDocument()) != null && this.fSelectionUpdater != null) {
            document.removePositionUpdater(this.fSelectionUpdater);
            try {
                document.removePositionCategory(this.fSelectionCategory);
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
        }
        this.fSelectionUpdater = null;
        this.fSelectionCategory = null;
    }

    public void doOperation(int operation) {
        if (this.getTextWidget() == null || !this.redraws() && operation != 15) {
            return;
        }
        switch (operation) {
            case 13: {
                this.fContentAssistant.showPossibleCompletions();
                return;
            }
            case 14: {
                this.fContentAssistant.showContextInformation();
                return;
            }
            case 22: {
                this.fQuickAssistAssistant.showPossibleQuickAssists();
                return;
            }
            case 16: {
                this.fInformationPresenter.showInformation();
                return;
            }
            case 15: {
                Point selection = this.rememberSelection();
                IRewriteTarget target = this.getRewriteTarget();
                IDocument document = this.getDocument();
                IFormattingContext context = null;
                DocumentRewriteSession rewriteSession = null;
                if (document instanceof IDocumentExtension4) {
                    IDocumentExtension4 extension = (IDocumentExtension4)document;
                    DocumentRewriteSessionType type = selection.y == 0 && document.getLength() > 1000 || selection.y > 1000 ? DocumentRewriteSessionType.SEQUENTIAL : DocumentRewriteSessionType.UNRESTRICTED_SMALL;
                    rewriteSession = extension.startRewriteSession(type);
                } else {
                    this.setRedraw(false);
                    target.beginCompoundChange();
                }
                try {
                    String rememberedContents = document.get();
                    try {
                        if (this.fContentFormatter instanceof IContentFormatterExtension) {
                            IContentFormatterExtension extension = (IContentFormatterExtension)((Object)this.fContentFormatter);
                            context = this.createFormattingContext();
                            if (selection.y == 0) {
                                context.setProperty("formatting.context.document", Boolean.TRUE);
                            } else {
                                context.setProperty("formatting.context.document", Boolean.FALSE);
                                context.setProperty("formatting.context.region", new Region(selection.x, selection.y));
                            }
                            extension.format(document, context);
                        } else {
                            IRegion coverage;
                            Object r = selection.y == 0 ? ((coverage = this.getModelCoverage()) == null ? new Region(0, 0) : coverage) : new Region(selection.x, selection.y);
                            this.fContentFormatter.format(document, (IRegion)r);
                        }
                        this.updateSlaveDocuments(document);
                    }
                    catch (RuntimeException x) {
                        document.set(rememberedContents);
                        throw x;
                    }
                }
                finally {
                    if (document instanceof IDocumentExtension4) {
                        IDocumentExtension4 extension = (IDocumentExtension4)document;
                        extension.stopRewriteSession(rewriteSession);
                    } else {
                        target.endCompoundChange();
                        this.setRedraw(true);
                    }
                    this.restoreSelection();
                    if (context != null) {
                        context.dispose();
                    }
                }
                return;
            }
        }
        super.doOperation(operation);
    }

    protected void updateSlaveDocuments(IDocument masterDocument) {
        ISlaveDocumentManagerExtension extension;
        IDocument[] slaves;
        ISlaveDocumentManager manager = this.getSlaveDocumentManager();
        if (manager instanceof ISlaveDocumentManagerExtension && (slaves = (extension = (ISlaveDocumentManagerExtension)manager).getSlaveDocuments(masterDocument)) != null) {
            int i = 0;
            while (i < slaves.length) {
                if (slaves[i] instanceof ChildDocument) {
                    ChildDocument child = (ChildDocument)slaves[i];
                    Position p = child.getParentDocumentRange();
                    try {
                        if (!this.updateSlaveDocument((IDocument)child, p.getOffset(), p.getLength())) {
                            child.repairLineInformation();
                        }
                    }
                    catch (BadLocationException badLocationException) {}
                }
                ++i;
            }
        }
    }

    public void enableOperation(int operation, boolean enable) {
        switch (operation) {
            case 13: 
            case 14: {
                if (this.fContentAssistant == null) {
                    return;
                }
                if (enable) {
                    if (this.fContentAssistantInstalled) break;
                    this.fContentAssistant.install(this);
                    this.fContentAssistantInstalled = true;
                    break;
                }
                if (!this.fContentAssistantInstalled) break;
                this.fContentAssistant.uninstall();
                this.fContentAssistantInstalled = false;
                break;
            }
            case 22: {
                if (this.fQuickAssistAssistant == null) {
                    return;
                }
                if (enable) {
                    if (this.fQuickAssistAssistantInstalled) break;
                    this.fQuickAssistAssistant.install(this);
                    this.fQuickAssistAssistantInstalled = true;
                    break;
                }
                if (!this.fQuickAssistAssistantInstalled) break;
                this.fQuickAssistAssistant.uninstall();
                this.fQuickAssistAssistantInstalled = false;
            }
        }
    }

    public void setRangeIndicator(Annotation rangeIndicator) {
        this.fRangeIndicator = rangeIndicator;
    }

    public void setRangeIndication(int start, int length, boolean moveCursor) {
        if (moveCursor) {
            this.setSelectedRange(start, 0);
            this.revealRange(start, length);
        }
        if (this.fRangeIndicator != null && this.fVisualAnnotationModel instanceof IAnnotationModelExtension) {
            IAnnotationModelExtension extension = (IAnnotationModelExtension)this.fVisualAnnotationModel;
            extension.modifyAnnotationPosition(this.fRangeIndicator, new Position(start, length));
        }
    }

    public IRegion getRangeIndication() {
        Position position;
        if (this.fRangeIndicator != null && this.fVisualAnnotationModel != null && (position = this.fVisualAnnotationModel.getPosition(this.fRangeIndicator)) != null) {
            return new Region(position.getOffset(), position.getLength());
        }
        return null;
    }

    public void removeRangeIndication() {
        if (this.fRangeIndicator != null && this.fVisualAnnotationModel != null) {
            this.fVisualAnnotationModel.removeAnnotation(this.fRangeIndicator);
        }
    }

    public void showAnnotations(boolean show) {
        boolean old = this.fIsVerticalRulerVisible;
        boolean bl = this.fIsVerticalRulerVisible = this.fVerticalRuler != null && (show || !this.isVerticalRulerOnlyShowingAnnotations());
        if (old != this.fIsVerticalRulerVisible && this.fComposite != null && !this.fComposite.isDisposed()) {
            this.fComposite.layout();
        }
        if (this.fIsVerticalRulerVisible && show) {
            this.ensureAnnotationHoverManagerInstalled();
        } else if (this.fVerticalRulerHoveringController != null) {
            this.fVerticalRulerHoveringController.dispose();
            this.fVerticalRulerHoveringController = null;
        }
    }

    private boolean isVerticalRulerOnlyShowingAnnotations() {
        if (this.fVerticalRuler instanceof VerticalRuler) {
            return true;
        }
        if (this.fVerticalRuler instanceof CompositeRuler) {
            Iterator iter = ((CompositeRuler)this.fVerticalRuler).getDecoratorIterator();
            return iter.hasNext() && iter.next() instanceof AnnotationRulerColumn && !iter.hasNext();
        }
        return false;
    }

    protected final IVerticalRuler getVerticalRuler() {
        return this.fVerticalRuler;
    }

    public void showAnnotationsOverview(boolean show) {
        boolean old = this.fIsOverviewRulerVisible;
        boolean bl = this.fIsOverviewRulerVisible = show && this.fOverviewRuler != null;
        if (old != this.fIsOverviewRulerVisible) {
            if (this.fComposite != null && !this.fComposite.isDisposed()) {
                this.fComposite.layout();
            }
            if (this.fIsOverviewRulerVisible) {
                this.ensureOverviewHoverManagerInstalled();
            } else if (this.fOverviewRulerHoveringController != null) {
                this.fOverviewRulerHoveringController.dispose();
                this.fOverviewRulerHoveringController = null;
            }
        }
    }

    public IAnnotationHover getCurrentAnnotationHover() {
        if (this.fVerticalRulerHoveringController == null) {
            return null;
        }
        return this.fVerticalRulerHoveringController.getCurrentAnnotationHover();
    }

    private static final class ColumnPosition
    extends Position {
        int fStartColumn;
        int fEndColumn;

        ColumnPosition(int offset, int length, int startColumn, int endColumn) {
            super(offset, length);
            this.fStartColumn = startColumn;
            this.fEndColumn = endColumn;
        }
    }

    protected class RulerLayout
    extends Layout {
        protected int fGap;
        private int[] fScrollArrowHeights;

        public RulerLayout(int gap) {
            this.fGap = gap;
        }

        protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
            Control[] children = composite.getChildren();
            Point s = children[children.length - 1].computeSize(-1, -1, flushCache);
            if (SourceViewer.this.fVerticalRuler != null && SourceViewer.this.fIsVerticalRulerVisible) {
                s.x += SourceViewer.this.fVerticalRuler.getWidth() + this.fGap;
            }
            return s;
        }

        protected void layout(Composite composite, boolean flushCache) {
            Rectangle clArea = composite.getClientArea();
            StyledText textWidget = SourceViewer.this.getTextWidget();
            Rectangle trim = textWidget.computeTrim(0, 0, 0, 0);
            int topTrim = -trim.y;
            int scrollbarHeight = trim.height - topTrim;
            int x = clArea.x;
            int width = clArea.width;
            int overviewRulerWidth = -1;
            if (SourceViewer.this.fOverviewRuler != null && SourceViewer.this.fIsOverviewRulerVisible) {
                overviewRulerWidth = SourceViewer.this.fOverviewRuler.getWidth();
                width -= overviewRulerWidth + this.fGap;
            }
            if (SourceViewer.this.fVerticalRuler != null && SourceViewer.this.fIsVerticalRulerVisible) {
                int verticalRulerWidth = SourceViewer.this.fVerticalRuler.getWidth();
                Control verticalRulerControl = SourceViewer.this.fVerticalRuler.getControl();
                int oldWidth = verticalRulerControl.getBounds().width;
                verticalRulerControl.setBounds(clArea.x, clArea.y + topTrim, verticalRulerWidth, clArea.height - scrollbarHeight - topTrim);
                if (flushCache && SourceViewer.this.getVisualAnnotationModel() != null && oldWidth == verticalRulerWidth) {
                    verticalRulerControl.redraw();
                }
                x += verticalRulerWidth + this.fGap;
                width -= verticalRulerWidth + this.fGap;
            }
            textWidget.setBounds(x, clArea.y, width, clArea.height);
            if (overviewRulerWidth != -1) {
                boolean noArrows;
                if (scrollbarHeight <= 0) {
                    scrollbarHeight = overviewRulerWidth;
                }
                int bottomOffset = clArea.y + clArea.height - scrollbarHeight;
                int[] arrowHeights = this.getVerticalScrollArrowHeights(textWidget, bottomOffset);
                int overviewRulerX = clArea.x + clArea.width - overviewRulerWidth - 1;
                SourceViewer.this.fOverviewRuler.getControl().setBounds(overviewRulerX, clArea.y + arrowHeights[0], overviewRulerWidth, clArea.height - arrowHeights[0] - arrowHeights[1] - scrollbarHeight);
                Control headerControl = SourceViewer.this.fOverviewRuler.getHeaderControl();
                boolean bl = noArrows = arrowHeights[0] < 6 && arrowHeights[1] < 6;
                if (noArrows || arrowHeights[0] < arrowHeights[1] && arrowHeights[0] < scrollbarHeight && arrowHeights[1] > scrollbarHeight) {
                    int headerHeight = noArrows ? scrollbarHeight : arrowHeights[1];
                    headerControl.setBounds(overviewRulerX, clArea.y + clArea.height - arrowHeights[1] - scrollbarHeight, overviewRulerWidth, headerHeight);
                } else {
                    headerControl.setBounds(overviewRulerX, clArea.y, overviewRulerWidth, arrowHeights[0]);
                }
                headerControl.redraw();
            }
        }

        private int[] getVerticalScrollArrowHeights(StyledText textWidget, int bottomOffset) {
            ScrollBar verticalBar = textWidget.getVerticalBar();
            if (verticalBar == null) {
                return new int[2];
            }
            int[] arrowHeights = this.computeScrollArrowHeights(textWidget, bottomOffset);
            if (arrowHeights[0] > 0 || arrowHeights[1] > 0) {
                this.fScrollArrowHeights = arrowHeights;
            } else {
                if (this.fScrollArrowHeights != null) {
                    return this.fScrollArrowHeights;
                }
                Point originalSize = textWidget.getSize();
                try {
                    int fakeHeight = 1000;
                    bottomOffset = bottomOffset - originalSize.y + fakeHeight;
                    textWidget.setSize(originalSize.x, fakeHeight);
                    verticalBar.setValues(0, 0, 0x40000000, 1, 10, 10);
                    arrowHeights = this.computeScrollArrowHeights(textWidget, bottomOffset);
                    this.fScrollArrowHeights = arrowHeights;
                }
                finally {
                    textWidget.setSize(originalSize);
                }
            }
            return arrowHeights;
        }

        private int[] computeScrollArrowHeights(StyledText textWidget, int bottomOffset) {
            ScrollBar verticalBar = textWidget.getVerticalBar();
            Rectangle thumbTrackBounds = verticalBar.getThumbTrackBounds();
            if (thumbTrackBounds.height == 0) {
                return new int[2];
            }
            int topArrowHeight = thumbTrackBounds.y;
            int bottomArrowHeight = bottomOffset - (thumbTrackBounds.y + thumbTrackBounds.height);
            return new int[]{topArrowHeight, bottomArrowHeight};
        }
    }
}

