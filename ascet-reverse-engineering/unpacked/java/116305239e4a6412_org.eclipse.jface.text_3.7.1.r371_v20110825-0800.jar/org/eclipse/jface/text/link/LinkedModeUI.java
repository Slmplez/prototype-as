/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPartitioningException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DefaultPositionUpdater
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentExtension3
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.link.ILinkedModeListener
 *  org.eclipse.jface.text.link.LinkedModeModel
 *  org.eclipse.jface.text.link.LinkedPosition
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 *  org.eclipse.jface.viewers.IPostSelectionProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.events.ShellEvent
 *  org.eclipse.swt.events.ShellListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.text.link;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.text.link.contentassist.ContentAssistant2;
import org.eclipse.jface.internal.text.link.contentassist.IProposalListener;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPartitioningException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.DocumentCommand;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IAutoEditStrategy;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension3;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IEditingSupport;
import org.eclipse.jface.text.IEditingSupportRegistry;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.IRewriteTarget;
import org.eclipse.jface.text.ITextInputListener;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.ITextViewerExtension2;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.link.ILinkedModeListener;
import org.eclipse.jface.text.link.LinkedModeModel;
import org.eclipse.jface.text.link.LinkedPosition;
import org.eclipse.jface.text.link.LinkedPositionAnnotations;
import org.eclipse.jface.text.link.ProposalPosition;
import org.eclipse.jface.text.link.TabStopIterator;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

public class LinkedModeUI {
    public static final Object CYCLE_NEVER = new Object();
    public static final Object CYCLE_ALWAYS = new Object();
    public static final Object CYCLE_WHEN_NO_PARENT = new Object();
    private LinkedModeUITarget fCurrentTarget;
    private LinkedModeModel fModel;
    private LinkedModeUITarget[] fTargets;
    private TabStopIterator fIterator;
    private Closer fCloser = new Closer();
    private ILinkedModeListener fLinkedListener = new ExitListener();
    private MySelectionListener fSelectionListener = new MySelectionListener();
    private ProposalListener fProposalListener = new ProposalListener();
    private IDocumentListener fDocumentListener = new DocumentListener();
    private final Position fCaretPosition = new Position(0, 0);
    private IExitPolicy fExitPolicy = new NullExitPolicy();
    private LinkedPosition fFramePosition;
    private LinkedPosition fPreviousPosition;
    private ContentAssistant2 fAssistant;
    private LinkedPosition fExitPosition;
    private boolean fIsActive = false;
    private IPositionUpdater fPositionUpdater = new DefaultPositionUpdater(this.getCategory());
    private boolean fDoContextInfo = false;
    private boolean fHasOpenCompoundChange = false;
    private ILinkedModeUIFocusListener fPositionListener = new EmtpyFocusListener();
    private IAutoEditStrategy fAutoEditVetoer = new IAutoEditStrategy(){

        public void customizeDocumentCommand(IDocument document, DocumentCommand command) {
            if (LinkedModeUI.this.fModel.anyPositionContains(command.offset)) {
                command.doit = false;
                command.caretOffset = command.offset + command.length;
            }
        }
    };
    private boolean fSimple;
    private boolean fIsColoredLabelsSupportEnabled = false;

    public LinkedModeUI(LinkedModeModel model, LinkedModeUITarget[] targets) {
        this.constructor(model, targets);
    }

    public LinkedModeUI(LinkedModeModel model, ITextViewer viewer) {
        this.constructor(model, new LinkedModeUITarget[]{new EmptyTarget(viewer)});
    }

    public LinkedModeUI(LinkedModeModel model, ITextViewer[] viewers) {
        LinkedModeUITarget[] array = new LinkedModeUITarget[viewers.length];
        int i = 0;
        while (i < array.length) {
            array[i] = new EmptyTarget(viewers[i]);
            ++i;
        }
        this.constructor(model, array);
    }

    public LinkedModeUI(LinkedModeModel model, LinkedModeUITarget target) {
        this.constructor(model, new LinkedModeUITarget[]{target});
    }

    private void constructor(LinkedModeModel model, LinkedModeUITarget[] targets) {
        Assert.isNotNull((Object)model);
        Assert.isNotNull((Object)targets);
        Assert.isTrue((targets.length > 0 ? 1 : 0) != 0);
        Assert.isTrue((model.getTabStopSequence().size() > 0 ? 1 : 0) != 0);
        this.fModel = model;
        this.fTargets = targets;
        this.fCurrentTarget = targets[0];
        this.fIterator = new TabStopIterator(this.fModel.getTabStopSequence());
        this.fIterator.setCycling(!this.fModel.isNested());
        this.fModel.addLinkingListener(this.fLinkedListener);
        this.fAssistant = new ContentAssistant2();
        this.fAssistant.addProposalListener(this.fProposalListener);
        this.fAssistant.enableColoredLabels(this.fIsColoredLabelsSupportEnabled);
        this.fCaretPosition.delete();
    }

    public void enter() {
        this.fIsActive = true;
        this.connect();
        this.next();
    }

    public void setExitPolicy(IExitPolicy policy) {
        this.fExitPolicy = policy;
    }

    public void setExitPosition(LinkedModeUITarget target, int offset, int length, int sequence) throws BadLocationException {
        IDocument doc;
        if (this.fExitPosition != null) {
            this.fExitPosition.getDocument().removePosition((Position)this.fExitPosition);
            this.fIterator.removePosition((Position)this.fExitPosition);
            this.fExitPosition = null;
        }
        if ((doc = target.getViewer().getDocument()) == null) {
            return;
        }
        this.fExitPosition = new LinkedPosition(doc, offset, length, sequence);
        doc.addPosition((Position)this.fExitPosition);
        if (sequence != -1) {
            this.fIterator.addPosition((Position)this.fExitPosition);
        }
    }

    public void setExitPosition(ITextViewer viewer, int offset, int length, int sequence) throws BadLocationException {
        this.setExitPosition(new EmptyTarget(viewer), offset, length, sequence);
    }

    public void setCyclingMode(Object mode) {
        if (mode != CYCLE_ALWAYS && mode != CYCLE_NEVER && mode != CYCLE_WHEN_NO_PARENT) {
            throw new IllegalArgumentException();
        }
        if (mode == CYCLE_ALWAYS || mode == CYCLE_WHEN_NO_PARENT && !this.fModel.isNested()) {
            this.fIterator.setCycling(true);
        } else {
            this.fIterator.setCycling(false);
        }
    }

    void next() {
        if (this.fIterator.hasNext(this.fFramePosition)) {
            this.switchPosition(this.fIterator.next(this.fFramePosition), true, true);
            return;
        }
        this.leave(2);
    }

    void previous() {
        if (this.fIterator.hasPrevious(this.fFramePosition)) {
            this.switchPosition(this.fIterator.previous(this.fFramePosition), true, true);
        } else {
            this.leave(4);
        }
    }

    private void triggerContextInfo() {
        this.fAssistant.showContextInformation();
    }

    private void triggerContentAssist() {
        ProposalPosition pp;
        ICompletionProposal[] choices;
        if (this.fFramePosition instanceof ProposalPosition && (choices = (pp = (ProposalPosition)this.fFramePosition).getChoices()) != null && choices.length > 0) {
            this.fAssistant.setCompletions(choices);
            this.fAssistant.showPossibleCompletions();
            return;
        }
        this.fAssistant.setCompletions(new ICompletionProposal[0]);
        this.fAssistant.hidePossibleCompletions();
    }

    private void switchPosition(LinkedPosition pos, boolean select, boolean showProposals) {
        Assert.isNotNull((Object)pos);
        if (pos.equals((Object)this.fFramePosition)) {
            return;
        }
        if (this.fFramePosition != null && this.fCurrentTarget != null) {
            this.fPositionListener.linkingFocusLost(this.fFramePosition, this.fCurrentTarget);
        }
        this.endCompoundChange();
        this.redraw();
        IDocument oldDoc = this.fFramePosition == null ? null : this.fFramePosition.getDocument();
        IDocument newDoc = pos.getDocument();
        this.switchViewer(oldDoc, newDoc, pos);
        this.fFramePosition = pos;
        if (select) {
            this.select();
        }
        if (this.fFramePosition == this.fExitPosition && !this.fIterator.isCycling()) {
            this.leave(0);
        } else {
            this.redraw();
            this.ensureAnnotationModelInstalled();
        }
        if (showProposals) {
            this.triggerContentAssist();
        }
        if (this.fFramePosition != this.fExitPosition && this.fDoContextInfo) {
            this.triggerContextInfo();
        }
        if (this.fFramePosition != null && this.fCurrentTarget != null) {
            this.fPositionListener.linkingFocusGained(this.fFramePosition, this.fCurrentTarget);
        }
    }

    private void ensureAnnotationModelInstalled() {
        IAnnotationModelExtension ext;
        IAnnotationModel ourModel;
        ISourceViewer sv;
        IAnnotationModel model;
        ITextViewer viewer;
        LinkedPositionAnnotations lpa = this.fCurrentTarget.fAnnotationModel;
        if (lpa != null && (viewer = this.fCurrentTarget.getViewer()) instanceof ISourceViewer && (model = (sv = (ISourceViewer)viewer).getAnnotationModel()) instanceof IAnnotationModelExtension && (ourModel = (ext = (IAnnotationModelExtension)model).getAnnotationModel((Object)this.getUniqueKey())) == null) {
            ext.addAnnotationModel((Object)this.getUniqueKey(), (IAnnotationModel)lpa);
        }
    }

    private void uninstallAnnotationModel(LinkedModeUITarget target) {
        ISourceViewer sv;
        IAnnotationModel model;
        ITextViewer viewer = target.getViewer();
        if (viewer instanceof ISourceViewer && (model = (sv = (ISourceViewer)viewer).getAnnotationModel()) instanceof IAnnotationModelExtension) {
            IAnnotationModelExtension ext = (IAnnotationModelExtension)model;
            ext.removeAnnotationModel((Object)this.getUniqueKey());
        }
    }

    private void switchViewer(IDocument oldDoc, IDocument newDoc, LinkedPosition pos) {
        if (oldDoc != newDoc) {
            if (this.fCurrentTarget.fAnnotationModel != null) {
                this.fCurrentTarget.fAnnotationModel.switchToPosition(this.fModel, pos);
            }
            LinkedModeUITarget target = null;
            int i = 0;
            while (i < this.fTargets.length) {
                if (this.fTargets[i].getViewer().getDocument() == newDoc) {
                    target = this.fTargets[i];
                    break;
                }
                ++i;
            }
            if (target != this.fCurrentTarget) {
                this.disconnect();
                this.fCurrentTarget = target;
                target.linkingFocusLost(this.fFramePosition, target);
                this.connect();
                this.ensureAnnotationModelInstalled();
                if (this.fCurrentTarget != null) {
                    this.fCurrentTarget.linkingFocusGained(pos, this.fCurrentTarget);
                }
            }
        }
    }

    private void select() {
        ITextViewer viewer = this.fCurrentTarget.getViewer();
        if (viewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension5 = (ITextViewerExtension5)((Object)viewer);
            extension5.exposeModelRange((IRegion)new Region(this.fFramePosition.offset, this.fFramePosition.length));
        } else if (!viewer.overlapsWithVisibleRegion(this.fFramePosition.offset, this.fFramePosition.length)) {
            viewer.resetVisibleRegion();
        }
        viewer.revealRange(this.fFramePosition.offset, this.fFramePosition.length);
        viewer.setSelectedRange(this.fFramePosition.offset, this.fFramePosition.length);
    }

    private void redraw() {
        if (this.fCurrentTarget.fAnnotationModel != null) {
            this.fCurrentTarget.fAnnotationModel.switchToPosition(this.fModel, this.fFramePosition);
        }
    }

    private void connect() {
        Assert.isNotNull((Object)this.fCurrentTarget);
        ITextViewer viewer = this.fCurrentTarget.getViewer();
        Assert.isNotNull((Object)viewer);
        this.fCurrentTarget.fWidget = viewer.getTextWidget();
        if (this.fCurrentTarget.fWidget == null) {
            this.leave(1);
        }
        if (this.fCurrentTarget.fKeyListener == null) {
            this.fCurrentTarget.fKeyListener = new KeyListener();
            ((ITextViewerExtension)((Object)viewer)).prependVerifyKeyListener(this.fCurrentTarget.fKeyListener);
        } else {
            this.fCurrentTarget.fKeyListener.setEnabled(true);
        }
        this.registerAutoEditVetoer(viewer);
        ((IPostSelectionProvider)viewer).addPostSelectionChangedListener((ISelectionChangedListener)this.fSelectionListener);
        this.createAnnotationModel();
        this.showSelection();
        this.fCurrentTarget.fShell = this.fCurrentTarget.fWidget.getShell();
        if (this.fCurrentTarget.fShell == null) {
            this.leave(1);
        }
        this.fCurrentTarget.fShell.addShellListener((ShellListener)this.fCloser);
        this.fAssistant.install(viewer);
        viewer.addTextInputListener(this.fCloser);
        viewer.getDocument().addDocumentListener(this.fDocumentListener);
    }

    private void showSelection() {
        final StyledText widget = this.fCurrentTarget.fWidget;
        if (widget == null || widget.isDisposed()) {
            return;
        }
        widget.getDisplay().asyncExec(new Runnable(){

            public void run() {
                if (!widget.isDisposed()) {
                    try {
                        widget.showSelection();
                    }
                    catch (IllegalArgumentException illegalArgumentException) {}
                }
            }
        });
    }

    private void registerAutoEditVetoer(ITextViewer viewer) {
        try {
            String[] contentTypes = this.getContentTypes(viewer.getDocument());
            if (viewer instanceof ITextViewerExtension2) {
                ITextViewerExtension2 vExtension = (ITextViewerExtension2)((Object)viewer);
                int i = 0;
                while (i < contentTypes.length) {
                    vExtension.prependAutoEditStrategy(this.fAutoEditVetoer, contentTypes[i]);
                    ++i;
                }
            } else {
                Assert.isTrue((boolean)false);
            }
        }
        catch (BadPartitioningException badPartitioningException) {
            this.leave(1);
        }
    }

    private void unregisterAutoEditVetoer(ITextViewer viewer) {
        try {
            String[] contentTypes = this.getContentTypes(viewer.getDocument());
            if (viewer instanceof ITextViewerExtension2) {
                ITextViewerExtension2 vExtension = (ITextViewerExtension2)((Object)viewer);
                int i = 0;
                while (i < contentTypes.length) {
                    vExtension.removeAutoEditStrategy(this.fAutoEditVetoer, contentTypes[i]);
                    ++i;
                }
            } else {
                Assert.isTrue((boolean)false);
            }
        }
        catch (BadPartitioningException badPartitioningException) {
            this.leave(1);
        }
    }

    private String[] getContentTypes(IDocument document) throws BadPartitioningException {
        if (document instanceof IDocumentExtension3) {
            IDocumentExtension3 ext = (IDocumentExtension3)document;
            String[] partitionings = ext.getPartitionings();
            HashSet<String> contentTypes = new HashSet<String>(20);
            int i = 0;
            while (i < partitionings.length) {
                contentTypes.addAll(Arrays.asList(ext.getLegalContentTypes(partitionings[i])));
                ++i;
            }
            contentTypes.add("__dftl_partition_content_type");
            return contentTypes.toArray(new String[contentTypes.size()]);
        }
        return document.getLegalContentTypes();
    }

    private void createAnnotationModel() {
        if (this.fCurrentTarget.fAnnotationModel == null) {
            LinkedPositionAnnotations lpa = new LinkedPositionAnnotations();
            if (this.fSimple) {
                lpa.markExitTarget(true);
                lpa.markFocus(false);
                lpa.markSlaves(false);
                lpa.markTargets(false);
            }
            lpa.setTargets((Position[])this.fIterator.getPositions());
            lpa.setExitTarget(this.fExitPosition);
            lpa.connect(this.fCurrentTarget.getViewer().getDocument());
            this.fCurrentTarget.fAnnotationModel = lpa;
        }
    }

    private String getUniqueKey() {
        return "linked.annotationmodelkey." + this.toString();
    }

    private void disconnect() {
        Assert.isNotNull((Object)this.fCurrentTarget);
        ITextViewer viewer = this.fCurrentTarget.getViewer();
        Assert.isNotNull((Object)viewer);
        viewer.getDocument().removeDocumentListener(this.fDocumentListener);
        this.fAssistant.uninstall();
        this.fAssistant.removeProposalListener(this.fProposalListener);
        this.fCurrentTarget.fWidget = null;
        Shell shell = this.fCurrentTarget.fShell;
        this.fCurrentTarget.fShell = null;
        if (shell != null && !shell.isDisposed()) {
            shell.removeShellListener((ShellListener)this.fCloser);
        }
        this.uninstallAnnotationModel(this.fCurrentTarget);
        this.unregisterAutoEditVetoer(viewer);
        if (this.fCurrentTarget.fKeyListener != null) {
            this.fCurrentTarget.fKeyListener.setEnabled(false);
        }
        ((IPostSelectionProvider)viewer).removePostSelectionChangedListener((ISelectionChangedListener)this.fSelectionListener);
        this.redraw();
    }

    void leave(final int flags) {
        if (!this.fIsActive) {
            return;
        }
        this.fIsActive = false;
        this.endCompoundChange();
        Display display = null;
        if (this.fCurrentTarget.fWidget != null && !this.fCurrentTarget.fWidget.isDisposed()) {
            display = this.fCurrentTarget.fWidget.getDisplay();
        }
        if (this.fCurrentTarget.fAnnotationModel != null) {
            this.fCurrentTarget.fAnnotationModel.removeAllAnnotations();
        }
        this.disconnect();
        int i = 0;
        while (i < this.fTargets.length) {
            LinkedModeUITarget target = this.fTargets[i];
            ITextViewer viewer = target.getViewer();
            if (target.fKeyListener != null) {
                ((ITextViewerExtension)((Object)viewer)).removeVerifyKeyListener(target.fKeyListener);
                target.fKeyListener = null;
            }
            viewer.removeTextInputListener(this.fCloser);
            ++i;
        }
        i = 0;
        while (i < this.fTargets.length) {
            if (this.fTargets[i].fAnnotationModel != null) {
                this.fTargets[i].fAnnotationModel.removeAllAnnotations();
                this.fTargets[i].fAnnotationModel.disconnect(this.fTargets[i].getViewer().getDocument());
                this.fTargets[i].fAnnotationModel = null;
            }
            this.uninstallAnnotationModel(this.fTargets[i]);
            ++i;
        }
        if ((flags & 2) != 0 && this.fExitPosition != null && this.fFramePosition != this.fExitPosition && !this.fExitPosition.isDeleted()) {
            this.switchPosition(this.fExitPosition, true, false);
        }
        final ArrayList<IDocument> docs = new ArrayList<IDocument>();
        int i2 = 0;
        while (i2 < this.fTargets.length) {
            IDocument doc = this.fTargets[i2].getViewer().getDocument();
            if (doc != null) {
                docs.add(doc);
            }
            ++i2;
        }
        this.fModel.stopForwarding(flags);
        Runnable runnable = new Runnable(){

            public void run() {
                if (LinkedModeUI.this.fExitPosition != null) {
                    LinkedModeUI.this.fExitPosition.getDocument().removePosition((Position)LinkedModeUI.this.fExitPosition);
                }
                Iterator iter = docs.iterator();
                while (iter.hasNext()) {
                    IDocument doc = (IDocument)iter.next();
                    doc.removePositionUpdater(LinkedModeUI.this.fPositionUpdater);
                    boolean uninstallCat = false;
                    String[] cats = doc.getPositionCategories();
                    int j = 0;
                    while (j < cats.length) {
                        if (LinkedModeUI.this.getCategory().equals(cats[j])) {
                            uninstallCat = true;
                            break;
                        }
                        ++j;
                    }
                    if (!uninstallCat) continue;
                    try {
                        doc.removePositionCategory(LinkedModeUI.this.getCategory());
                    }
                    catch (BadPositionCategoryException badPositionCategoryException) {}
                }
                LinkedModeUI.this.fModel.exit(flags);
            }
        };
        if (display != null) {
            display.asyncExec(runnable);
        } else {
            runnable.run();
        }
    }

    private void endCompoundChange() {
        if (this.fHasOpenCompoundChange) {
            ITextViewerExtension extension = (ITextViewerExtension)((Object)this.fCurrentTarget.getViewer());
            IRewriteTarget target = extension.getRewriteTarget();
            target.endCompoundChange();
            this.fHasOpenCompoundChange = false;
        }
    }

    private void beginCompoundChange() {
        if (!this.fHasOpenCompoundChange) {
            ITextViewerExtension extension = (ITextViewerExtension)((Object)this.fCurrentTarget.getViewer());
            IRewriteTarget target = extension.getRewriteTarget();
            target.beginCompoundChange();
            this.fHasOpenCompoundChange = true;
        }
    }

    public IRegion getSelectedRegion() {
        if (this.fFramePosition != null) {
            return new Region(this.fFramePosition.getOffset(), this.fFramePosition.getLength());
        }
        if (this.fExitPosition != null) {
            return new Region(this.fExitPosition.getOffset(), this.fExitPosition.getLength());
        }
        return null;
    }

    private String getCategory() {
        return this.toString();
    }

    public void setDoContextInfo(boolean doContextInfo) {
        this.fDoContextInfo = doContextInfo;
    }

    protected void setPositionListener(ILinkedModeUIFocusListener listener) {
        Assert.isNotNull((Object)listener);
        this.fPositionListener = listener;
    }

    public void setSimpleMode(boolean simple) {
        this.fSimple = simple;
    }

    public void enableColoredLabels(boolean isEnabled) {
        this.fIsColoredLabelsSupportEnabled = isEnabled;
    }

    static /* synthetic */ boolean access$7(LinkedModeUI linkedModeUI) {
        return linkedModeUI.fIsActive;
    }

    private class Closer
    implements ShellListener,
    ITextInputListener {
        private Closer() {
        }

        public void shellActivated(ShellEvent e) {
        }

        public void shellClosed(ShellEvent e) {
            LinkedModeUI.this.leave(1);
        }

        public void shellDeactivated(ShellEvent e) {
            ITextViewer viewer;
            Display display;
            StyledText text;
            if (LinkedModeUI.this.fCurrentTarget == null || (text = ((LinkedModeUI)LinkedModeUI.this).fCurrentTarget.fWidget) == null || text.isDisposed() || (display = text.getDisplay()) == null || display.isDisposed() || (viewer = LinkedModeUI.this.fCurrentTarget.getViewer()) == null) {
                LinkedModeUI.this.leave(1);
            } else {
                display.asyncExec(new Runnable(this, viewer){
                    final /* synthetic */ Closer this$1;
                    private final /* synthetic */ ITextViewer val$viewer;
                    {
                        this.this$1 = closer;
                        this.val$viewer = iTextViewer;
                    }

                    public void run() {
                        if (LinkedModeUI.access$7(Closer.access$1(this.this$1)) && this.val$viewer instanceof IEditingSupportRegistry) {
                            IEditingSupport[] helpers = ((IEditingSupportRegistry)((Object)this.val$viewer)).getRegisteredSupports();
                            int i = 0;
                            while (i < helpers.length) {
                                if (helpers[i].ownsFocusShell()) {
                                    return;
                                }
                                ++i;
                            }
                        }
                        Closer.access$1(this.this$1).leave(1);
                    }
                });
            }
        }

        public void shellDeiconified(ShellEvent e) {
        }

        public void shellIconified(ShellEvent e) {
            LinkedModeUI.this.leave(1);
        }

        public void inputDocumentAboutToBeChanged(IDocument oldInput, IDocument newInput) {
            LinkedModeUI.this.leave(1);
        }

        public void inputDocumentChanged(IDocument oldInput, IDocument newInput) {
        }

        static /* synthetic */ LinkedModeUI access$1(Closer closer) {
            return closer.LinkedModeUI.this;
        }
    }

    private class DocumentListener
    implements IDocumentListener {
        private DocumentListener() {
        }

        public void documentAboutToBeChanged(DocumentEvent event) {
            int end = event.getOffset() + event.getLength();
            int offset = event.getOffset();
            while (offset <= end) {
                if (!LinkedModeUI.this.fModel.anyPositionContains(offset)) {
                    ITextViewer viewer = LinkedModeUI.this.fCurrentTarget.getViewer();
                    if (LinkedModeUI.this.fFramePosition != null && viewer instanceof IEditingSupportRegistry) {
                        IEditingSupport[] helpers = ((IEditingSupportRegistry)((Object)viewer)).getRegisteredSupports();
                        int i = 0;
                        while (i < helpers.length) {
                            if (helpers[i].isOriginator(null, (IRegion)new Region(LinkedModeUI.this.fFramePosition.getOffset(), LinkedModeUI.this.fFramePosition.getLength()))) {
                                return;
                            }
                            ++i;
                        }
                    }
                    LinkedModeUI.this.leave(8);
                    return;
                }
                ++offset;
            }
        }

        public void documentChanged(DocumentEvent event) {
        }
    }

    private static final class EmptyTarget
    extends LinkedModeUITarget {
        private ITextViewer fTextViewer;

        public EmptyTarget(ITextViewer viewer) {
            Assert.isNotNull((Object)viewer);
            this.fTextViewer = viewer;
        }

        public ITextViewer getViewer() {
            return this.fTextViewer;
        }

        public void linkingFocusLost(LinkedPosition position, LinkedModeUITarget target) {
        }

        public void linkingFocusGained(LinkedPosition position, LinkedModeUITarget target) {
        }
    }

    private static final class EmtpyFocusListener
    implements ILinkedModeUIFocusListener {
        private EmtpyFocusListener() {
        }

        public void linkingFocusGained(LinkedPosition position, LinkedModeUITarget target) {
        }

        public void linkingFocusLost(LinkedPosition position, LinkedModeUITarget target) {
        }
    }

    public static class ExitFlags {
        public int flags;
        public boolean doit;

        public ExitFlags(int flags, boolean doit) {
            this.flags = flags;
            this.doit = doit;
        }
    }

    private final class ExitListener
    implements ILinkedModeListener {
        private ExitListener() {
        }

        public void left(LinkedModeModel model, int flags) {
            LinkedModeUI.this.leave(1 | flags);
        }

        public void suspend(LinkedModeModel model) {
            LinkedModeUI.this.disconnect();
            LinkedModeUI.this.redraw();
        }

        public void resume(LinkedModeModel model, int flags) {
            if ((flags & 1) != 0) {
                LinkedModeUI.this.leave(flags);
            } else {
                LinkedModeUI.this.connect();
                if ((flags & 4) != 0) {
                    LinkedModeUI.this.select();
                }
                LinkedModeUI.this.ensureAnnotationModelInstalled();
                LinkedModeUI.this.redraw();
            }
        }
    }

    public static interface IExitPolicy {
        public ExitFlags doExit(LinkedModeModel var1, VerifyEvent var2, int var3, int var4);
    }

    public static interface ILinkedModeUIFocusListener {
        public void linkingFocusLost(LinkedPosition var1, LinkedModeUITarget var2);

        public void linkingFocusGained(LinkedPosition var1, LinkedModeUITarget var2);
    }

    private class KeyListener
    implements VerifyKeyListener {
        private boolean fIsEnabled = true;

        private KeyListener() {
        }

        public void verifyKey(VerifyEvent event) {
            if (!event.doit || !this.fIsEnabled) {
                return;
            }
            Point selection = LinkedModeUI.this.fCurrentTarget.getViewer().getSelectedRange();
            int offset = selection.x;
            int length = selection.y;
            ExitFlags exitFlags = LinkedModeUI.this.fExitPolicy.doExit(LinkedModeUI.this.fModel, event, offset, length);
            if (exitFlags != null) {
                LinkedModeUI.this.leave(exitFlags.flags);
                event.doit = exitFlags.doit;
                return;
            }
            switch (event.character) {
                case '\t': {
                    if (!(LinkedModeUI.this.fExitPosition != null && LinkedModeUI.this.fExitPosition.includes(offset) || LinkedModeUI.this.fModel.anyPositionContains(offset))) {
                        LinkedModeUI.this.leave(1);
                        break;
                    }
                    if (event.stateMask == 131072) {
                        LinkedModeUI.this.previous();
                    } else {
                        LinkedModeUI.this.next();
                    }
                    event.doit = false;
                    break;
                }
                case '\n': 
                case '\r': {
                    if (!LinkedModeUI.this.fModel.anyPositionContains(offset)) {
                        LinkedModeUI.this.leave(1);
                        break;
                    }
                    LinkedModeUI.this.leave(3);
                    event.doit = false;
                    break;
                }
                case '\u001b': {
                    LinkedModeUI.this.leave(1);
                    event.doit = false;
                    break;
                }
                default: {
                    if (event.character == '\u0000' || this.controlUndoBehavior(offset, length)) break;
                    LinkedModeUI.this.leave(1);
                }
            }
        }

        private boolean controlUndoBehavior(int offset, int length) {
            LinkedPosition position = LinkedModeUI.this.fModel.findPosition(new LinkedPosition(LinkedModeUI.this.fCurrentTarget.getViewer().getDocument(), offset, length, -1));
            if (position != null) {
                if (!position.equals((Object)LinkedModeUI.this.fPreviousPosition)) {
                    LinkedModeUI.this.endCompoundChange();
                }
                LinkedModeUI.this.beginCompoundChange();
            }
            LinkedModeUI.this.fPreviousPosition = position;
            return LinkedModeUI.this.fPreviousPosition != null;
        }

        public void setEnabled(boolean enabled) {
            this.fIsEnabled = enabled;
        }
    }

    public static abstract class LinkedModeUITarget
    implements ILinkedModeUIFocusListener {
        StyledText fWidget;
        Shell fShell;
        KeyListener fKeyListener;
        LinkedPositionAnnotations fAnnotationModel;

        public abstract ITextViewer getViewer();
    }

    private class MySelectionListener
    implements ISelectionChangedListener {
        private MySelectionListener() {
        }

        public void selectionChanged(SelectionChangedEvent event) {
            ISelection selection = event.getSelection();
            if (selection instanceof ITextSelection) {
                IDocument doc;
                ITextSelection textsel = (ITextSelection)selection;
                if (event.getSelectionProvider() instanceof ITextViewer && (doc = ((ITextViewer)event.getSelectionProvider()).getDocument()) != null) {
                    int offset = textsel.getOffset();
                    int length = textsel.getLength();
                    if (offset >= 0 && length >= 0) {
                        LinkedPosition find = new LinkedPosition(doc, offset, length, -1);
                        LinkedPosition pos = LinkedModeUI.this.fModel.findPosition(find);
                        if (pos == null && LinkedModeUI.this.fExitPosition != null && LinkedModeUI.this.fExitPosition.includes(find)) {
                            pos = LinkedModeUI.this.fExitPosition;
                        }
                        if (pos != null) {
                            LinkedModeUI.this.switchPosition(pos, false, false);
                        }
                    }
                }
            }
        }
    }

    private static class NullExitPolicy
    implements IExitPolicy {
        private NullExitPolicy() {
        }

        public ExitFlags doExit(LinkedModeModel model, VerifyEvent event, int offset, int length) {
            return null;
        }
    }

    private class ProposalListener
    implements IProposalListener {
        private ProposalListener() {
        }

        public void proposalChosen(ICompletionProposal proposal) {
            LinkedModeUI.this.next();
        }
    }
}

