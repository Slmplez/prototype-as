/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.jface.util.OpenStrategy
 *  org.eclipse.swt.SWTError
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Monitor
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.text.contentassist;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.contentassist.IContentAssistSubjectControl;
import org.eclipse.jface.contentassist.ISubjectControlContentAssistProcessor;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IEventConsumer;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.IViewportListener;
import org.eclipse.jface.text.IWidgetTokenKeeper;
import org.eclipse.jface.text.IWidgetTokenKeeperExtension;
import org.eclipse.jface.text.IWidgetTokenOwner;
import org.eclipse.jface.text.IWidgetTokenOwnerExtension;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.contentassist.AdditionalInfoController;
import org.eclipse.jface.text.contentassist.CompletionProposalPopup;
import org.eclipse.jface.text.contentassist.ContentAssistEvent;
import org.eclipse.jface.text.contentassist.ContentAssistSubjectControlAdapter;
import org.eclipse.jface.text.contentassist.ContextInformationPopup;
import org.eclipse.jface.text.contentassist.Helper;
import org.eclipse.jface.text.contentassist.ICompletionListener;
import org.eclipse.jface.text.contentassist.ICompletionListenerExtension;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.IContentAssistListener;
import org.eclipse.jface.text.contentassist.IContentAssistProcessor;
import org.eclipse.jface.text.contentassist.IContentAssistant;
import org.eclipse.jface.text.contentassist.IContentAssistantExtension;
import org.eclipse.jface.text.contentassist.IContentAssistantExtension2;
import org.eclipse.jface.text.contentassist.IContentAssistantExtension3;
import org.eclipse.jface.text.contentassist.IContentAssistantExtension4;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.contentassist.IContextInformationPresenter;
import org.eclipse.jface.text.contentassist.IContextInformationValidator;
import org.eclipse.jface.text.contentassist.JFaceTextMessages;
import org.eclipse.jface.util.Geometry;
import org.eclipse.jface.util.OpenStrategy;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Monitor;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Widget;

public class ContentAssistant
implements IContentAssistant,
IContentAssistantExtension,
IContentAssistantExtension2,
IContentAssistantExtension3,
IContentAssistantExtension4,
IWidgetTokenKeeper,
IWidgetTokenKeeperExtension {
    public static final String SELECT_NEXT_PROPOSAL_COMMAND_ID = "org.eclipse.ui.edit.text.contentAssist.selectNextProposal";
    public static final String SELECT_PREVIOUS_PROPOSAL_COMMAND_ID = "org.eclipse.ui.edit.text.contentAssist.selectPreviousProposal";
    public static final String STORE_SIZE_X = "size.x";
    public static final String STORE_SIZE_Y = "size.y";
    static final int CONTEXT_SELECTOR = 0;
    static final int PROPOSAL_SELECTOR = 1;
    static final int CONTEXT_INFO_POPUP = 2;
    public static final int WIDGET_PRIORITY = 20;
    private static final int DEFAULT_AUTO_ACTIVATION_DELAY = 500;
    private IInformationControlCreator fInformationControlCreator;
    private int fAutoActivationDelay = 500;
    private boolean fIsAutoActivated = false;
    private boolean fIsAutoInserting = false;
    private int fProposalPopupOrientation = 10;
    private int fContextInfoPopupOrientation = 20;
    private Map fProcessors;
    private String fPartitioning = "__dftl_partitioning";
    private Color fContextInfoPopupBackground;
    private Color fContextInfoPopupForeground;
    private Color fContextSelectorBackground;
    private Color fContextSelectorForeground;
    private Color fProposalSelectorBackground;
    private Color fProposalSelectorForeground;
    private ITextViewer fViewer;
    private String fLastErrorMessage;
    private Closer fCloser;
    LayoutManager fLayoutManager;
    private AutoAssistListener fAutoAssistListener;
    private InternalListener fInternalListener;
    private CompletionProposalPopup fProposalPopup;
    private ContextInformationPopup fContextInfoPopup;
    private boolean fVerifyKeyListenerHooked = false;
    private IContentAssistListener[] fListeners = new IContentAssistListener[4];
    private IContentAssistSubjectControl fContentAssistSubjectControl;
    private Shell fContentAssistSubjectControlShell;
    private TraverseListener fCASCSTraverseListener;
    private ContentAssistSubjectControlAdapter fContentAssistSubjectControlAdapter;
    private IDialogSettings fDialogSettings;
    private boolean fIsPrefixCompletionEnabled = false;
    private ListenerList fCompletionListeners = new ListenerList(1);
    private String fMessage = "";
    private boolean fIsRepetitionMode = false;
    private boolean fShowEmptyList = false;
    private boolean fIsStatusLineVisible;
    private long fLastAutoActivation = Long.MIN_VALUE;
    private KeySequence fRepeatedInvocationKeySequence;
    private Map fHandlers;
    private boolean fIsColoredLabelsSupportEnabled = false;

    public void setDocumentPartitioning(String partitioning) {
        Assert.isNotNull((Object)partitioning);
        this.fPartitioning = partitioning;
    }

    public String getDocumentPartitioning() {
        return this.fPartitioning;
    }

    public void setContentAssistProcessor(IContentAssistProcessor processor, String contentType) {
        Assert.isNotNull((Object)contentType);
        if (this.fProcessors == null) {
            this.fProcessors = new HashMap();
        }
        if (processor == null) {
            this.fProcessors.remove(contentType);
        } else {
            this.fProcessors.put(contentType, processor);
        }
    }

    public IContentAssistProcessor getContentAssistProcessor(String contentType) {
        if (this.fProcessors == null) {
            return null;
        }
        return (IContentAssistProcessor)this.fProcessors.get(contentType);
    }

    private String computeAllAutoActivationTriggers() {
        if (this.fProcessors == null) {
            return "";
        }
        StringBuffer buf = new StringBuffer(5);
        Iterator iter = this.fProcessors.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = iter.next();
            IContentAssistProcessor processor = (IContentAssistProcessor)entry.getValue();
            char[] triggers = processor.getCompletionProposalAutoActivationCharacters();
            if (triggers != null) {
                buf.append(triggers);
            }
            if ((triggers = processor.getContextInformationAutoActivationCharacters()) == null) continue;
            buf.append(triggers);
        }
        return buf.toString();
    }

    public void enableAutoActivation(boolean enabled) {
        this.fIsAutoActivated = enabled;
        this.manageAutoActivation(this.fIsAutoActivated);
    }

    public void enableAutoInsert(boolean enabled) {
        this.fIsAutoInserting = enabled;
    }

    boolean isAutoInserting() {
        return this.fIsAutoInserting;
    }

    private void manageAutoActivation(boolean start) {
        if (start) {
            if (this.fContentAssistSubjectControlAdapter != null && this.fAutoAssistListener == null) {
                this.fAutoAssistListener = this.createAutoAssistListener();
                if (this.fContentAssistSubjectControlAdapter.supportsVerifyKeyListener()) {
                    this.fContentAssistSubjectControlAdapter.appendVerifyKeyListener(this.fAutoAssistListener);
                } else {
                    this.fContentAssistSubjectControlAdapter.addKeyListener((KeyListener)this.fAutoAssistListener);
                }
            }
        } else if (this.fAutoAssistListener != null) {
            if (this.fContentAssistSubjectControlAdapter.supportsVerifyKeyListener()) {
                this.fContentAssistSubjectControlAdapter.removeVerifyKeyListener(this.fAutoAssistListener);
            } else {
                this.fContentAssistSubjectControlAdapter.removeKeyListener((KeyListener)this.fAutoAssistListener);
            }
            this.fAutoAssistListener = null;
        }
    }

    protected AutoAssistListener createAutoAssistListener() {
        return new AutoAssistListener();
    }

    public void setAutoActivationDelay(int delay) {
        this.fAutoActivationDelay = Math.max(0, delay);
    }

    public int getAutoActivationDelay() {
        return this.fAutoActivationDelay;
    }

    public void setProposalPopupOrientation(int orientation) {
        this.fProposalPopupOrientation = orientation;
    }

    public void setContextInformationPopupOrientation(int orientation) {
        this.fContextInfoPopupOrientation = orientation;
    }

    public void setContextInformationPopupBackground(Color background) {
        this.fContextInfoPopupBackground = background;
    }

    Color getContextInformationPopupBackground() {
        return this.fContextInfoPopupBackground;
    }

    public void setContextInformationPopupForeground(Color foreground) {
        this.fContextInfoPopupForeground = foreground;
    }

    Color getContextInformationPopupForeground() {
        return this.fContextInfoPopupForeground;
    }

    public void setProposalSelectorBackground(Color background) {
        this.fProposalSelectorBackground = background;
    }

    Color getProposalSelectorBackground() {
        return this.fProposalSelectorBackground;
    }

    public void setProposalSelectorForeground(Color foreground) {
        this.fProposalSelectorForeground = foreground;
    }

    Color getProposalSelectorForeground() {
        return this.fProposalSelectorForeground;
    }

    public void setContextSelectorBackground(Color background) {
        this.fContextSelectorBackground = background;
    }

    Color getContextSelectorBackground() {
        return this.fContextSelectorBackground;
    }

    public void setContextSelectorForeground(Color foreground) {
        this.fContextSelectorForeground = foreground;
    }

    Color getContextSelectorForeground() {
        return this.fContextSelectorForeground;
    }

    public void setInformationControlCreator(IInformationControlCreator creator) {
        this.fInformationControlCreator = creator;
    }

    protected void install(IContentAssistSubjectControl contentAssistSubjectControl) {
        this.fContentAssistSubjectControl = contentAssistSubjectControl;
        this.fContentAssistSubjectControlAdapter = new ContentAssistSubjectControlAdapter(this.fContentAssistSubjectControl);
        this.install();
    }

    public void install(ITextViewer textViewer) {
        this.fViewer = textViewer;
        this.fContentAssistSubjectControlAdapter = new ContentAssistSubjectControlAdapter(this.fViewer);
        this.install();
    }

    protected void install() {
        this.fLayoutManager = new LayoutManager();
        this.fInternalListener = new InternalListener();
        AdditionalInfoController controller = null;
        if (this.fInformationControlCreator != null) {
            controller = new AdditionalInfoController(this.fInformationControlCreator, OpenStrategy.getPostSelectionDelay());
        }
        this.fContextInfoPopup = this.fContentAssistSubjectControlAdapter.createContextInfoPopup(this);
        this.fProposalPopup = this.fContentAssistSubjectControlAdapter.createCompletionProposalPopup(this, controller);
        this.registerHandler(SELECT_NEXT_PROPOSAL_COMMAND_ID, this.fProposalPopup.createProposalSelectionHandler(1));
        this.registerHandler(SELECT_PREVIOUS_PROPOSAL_COMMAND_ID, this.fProposalPopup.createProposalSelectionHandler(2));
        if (Helper.okToUse((Widget)this.fContentAssistSubjectControlAdapter.getControl())) {
            this.fContentAssistSubjectControlShell = this.fContentAssistSubjectControlAdapter.getControl().getShell();
            this.fCASCSTraverseListener = new TraverseListener(){

                public void keyTraversed(TraverseEvent e) {
                    if (e.detail == 2 && ContentAssistant.this.isProposalPopupActive()) {
                        e.doit = false;
                    }
                }
            };
            this.fContentAssistSubjectControlShell.addTraverseListener(this.fCASCSTraverseListener);
        }
        this.manageAutoActivation(this.fIsAutoActivated);
    }

    public void uninstall() {
        this.hide();
        this.manageAutoActivation(false);
        if (this.fHandlers != null) {
            this.fHandlers.clear();
            this.fHandlers = null;
        }
        if (this.fCloser != null) {
            this.fCloser.uninstall();
            this.fCloser = null;
        }
        if (Helper.okToUse((Widget)this.fContentAssistSubjectControlShell)) {
            this.fContentAssistSubjectControlShell.removeTraverseListener(this.fCASCSTraverseListener);
        }
        this.fCASCSTraverseListener = null;
        this.fContentAssistSubjectControlShell = null;
        this.fViewer = null;
        this.fContentAssistSubjectControl = null;
        this.fContentAssistSubjectControlAdapter = null;
    }

    void addToLayout(Object popup, Shell shell, int type, int visibleOffset) {
        this.fLayoutManager.add(popup, shell, type, visibleOffset);
    }

    void layout(int type, int visibleOffset) {
        this.fLayoutManager.layout(type, visibleOffset);
    }

    LayoutManager getLayoutManager() {
        return this.fLayoutManager;
    }

    void popupFocusLost(FocusEvent e) {
        this.fCloser.focusLost(e);
    }

    int getSelectionOffset() {
        return this.fContentAssistSubjectControlAdapter.getWidgetSelectionRange().x;
    }

    private boolean acquireWidgetToken(int type) {
        switch (type) {
            case 0: 
            case 1: {
                if (this.fContentAssistSubjectControl instanceof IWidgetTokenOwnerExtension) {
                    IWidgetTokenOwnerExtension extension = (IWidgetTokenOwnerExtension)((Object)this.fContentAssistSubjectControl);
                    return extension.requestWidgetToken(this, 20);
                }
                if (this.fContentAssistSubjectControl instanceof IWidgetTokenOwner) {
                    IWidgetTokenOwner owner = (IWidgetTokenOwner)((Object)this.fContentAssistSubjectControl);
                    return owner.requestWidgetToken(this);
                }
                if (this.fViewer instanceof IWidgetTokenOwnerExtension) {
                    IWidgetTokenOwnerExtension extension = (IWidgetTokenOwnerExtension)((Object)this.fViewer);
                    return extension.requestWidgetToken(this, 20);
                }
                if (!(this.fViewer instanceof IWidgetTokenOwner)) break;
                IWidgetTokenOwner owner = (IWidgetTokenOwner)((Object)this.fViewer);
                return owner.requestWidgetToken(this);
            }
        }
        return true;
    }

    boolean addContentAssistListener(IContentAssistListener listener, int type) {
        if (this.acquireWidgetToken(type)) {
            this.fListeners[type] = listener;
            if (this.fCloser == null && this.getNumberOfListeners() == 1) {
                this.fCloser = new Closer();
                this.fCloser.install();
                this.fContentAssistSubjectControlAdapter.setEventConsumer(this.fInternalListener);
                this.installKeyListener();
            } else {
                this.promoteKeyListener();
            }
            return true;
        }
        return false;
    }

    private void promoteKeyListener() {
        this.uninstallVerifyKeyListener();
        this.installKeyListener();
    }

    private void installKeyListener() {
        if (!this.fVerifyKeyListenerHooked && Helper.okToUse((Widget)this.fContentAssistSubjectControlAdapter.getControl())) {
            this.fVerifyKeyListenerHooked = this.fContentAssistSubjectControlAdapter.prependVerifyKeyListener(this.fInternalListener);
        }
    }

    private void releaseWidgetToken(int type) {
        if (this.fListeners[0] == null && this.fListeners[1] == null) {
            IWidgetTokenOwner owner = null;
            if (this.fContentAssistSubjectControl instanceof IWidgetTokenOwner) {
                owner = (IWidgetTokenOwner)((Object)this.fContentAssistSubjectControl);
            } else if (this.fViewer instanceof IWidgetTokenOwner) {
                owner = (IWidgetTokenOwner)((Object)this.fViewer);
            }
            if (owner != null) {
                owner.releaseWidgetToken(this);
            }
        }
    }

    void removeContentAssistListener(IContentAssistListener listener, int type) {
        this.fListeners[type] = null;
        if (this.getNumberOfListeners() == 0) {
            if (this.fCloser != null) {
                this.fCloser.uninstall();
                this.fCloser = null;
            }
            this.uninstallVerifyKeyListener();
            this.fContentAssistSubjectControlAdapter.setEventConsumer(null);
        }
        this.releaseWidgetToken(type);
    }

    private void uninstallVerifyKeyListener() {
        if (this.fVerifyKeyListenerHooked) {
            if (Helper.okToUse((Widget)this.fContentAssistSubjectControlAdapter.getControl())) {
                this.fContentAssistSubjectControlAdapter.removeVerifyKeyListener(this.fInternalListener);
            }
            this.fVerifyKeyListenerHooked = false;
        }
    }

    private int getNumberOfListeners() {
        int count = 0;
        int i = 0;
        while (i <= 2) {
            if (this.fListeners[i] != null) {
                ++count;
            }
            ++i;
        }
        return count;
    }

    public String showPossibleCompletions() {
        if (!this.prepareToShowCompletions(false)) {
            return null;
        }
        if (this.fIsPrefixCompletionEnabled) {
            return this.fProposalPopup.incrementalComplete();
        }
        return this.fProposalPopup.showProposals(false);
    }

    public String completePrefix() {
        if (!this.prepareToShowCompletions(false)) {
            return null;
        }
        return this.fProposalPopup.incrementalComplete();
    }

    private boolean prepareToShowCompletions(boolean isAutoActivated) {
        if (!isAutoActivated) {
            int gracePeriod = Math.max(this.fAutoActivationDelay, 200);
            if (System.currentTimeMillis() < this.fLastAutoActivation + (long)gracePeriod) {
                return false;
            }
        }
        this.promoteKeyListener();
        this.fireSessionBeginEvent(isAutoActivated);
        return true;
    }

    protected void possibleCompletionsClosed() {
        this.fLastAutoActivation = Long.MIN_VALUE;
        this.storeCompletionProposalPopupSize();
    }

    public String showContextInformation() {
        this.promoteKeyListener();
        if (this.fContextInfoPopup != null) {
            return this.fContextInfoPopup.showContextProposals(false);
        }
        return null;
    }

    protected void contextInformationClosed() {
    }

    void showContextInformation(IContextInformation contextInformation, int offset) {
        if (this.fContextInfoPopup != null) {
            this.fContextInfoPopup.showContextInformation(contextInformation, offset);
        }
    }

    String getErrorMessage() {
        return this.fLastErrorMessage;
    }

    private IContentAssistProcessor getProcessor(ITextViewer viewer, int offset) {
        try {
            IDocument document = viewer.getDocument();
            String type = TextUtilities.getContentType((IDocument)document, (String)this.getDocumentPartitioning(), (int)offset, (boolean)true);
            return this.getContentAssistProcessor(type);
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
    }

    private IContentAssistProcessor getProcessor(IContentAssistSubjectControl contentAssistSubjectControl, int offset) {
        try {
            IDocument document = contentAssistSubjectControl.getDocument();
            String type = document != null ? TextUtilities.getContentType((IDocument)document, (String)this.getDocumentPartitioning(), (int)offset, (boolean)true) : "__dftl_partition_content_type";
            return this.getContentAssistProcessor(type);
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
    }

    ICompletionProposal[] computeCompletionProposals(IContentAssistSubjectControl contentAssistSubjectControl, int offset) {
        this.fLastErrorMessage = null;
        ICompletionProposal[] result = null;
        IContentAssistProcessor p = this.getProcessor(contentAssistSubjectControl, offset);
        if (p instanceof ISubjectControlContentAssistProcessor) {
            result = ((ISubjectControlContentAssistProcessor)p).computeCompletionProposals(contentAssistSubjectControl, offset);
            this.fLastErrorMessage = p.getErrorMessage();
        }
        return result;
    }

    ICompletionProposal[] computeCompletionProposals(ITextViewer viewer, int offset) {
        this.fLastErrorMessage = null;
        ICompletionProposal[] result = null;
        IContentAssistProcessor p = this.getProcessor(viewer, offset);
        if (p != null) {
            result = p.computeCompletionProposals(viewer, offset);
            this.fLastErrorMessage = p.getErrorMessage();
        }
        return result;
    }

    IContextInformation[] computeContextInformation(ITextViewer viewer, int offset) {
        this.fLastErrorMessage = null;
        IContextInformation[] result = null;
        IContentAssistProcessor p = this.getProcessor(viewer, offset);
        if (p != null) {
            result = p.computeContextInformation(viewer, offset);
            this.fLastErrorMessage = p.getErrorMessage();
        }
        return result;
    }

    IContextInformation[] computeContextInformation(IContentAssistSubjectControl contentAssistSubjectControl, int offset) {
        this.fLastErrorMessage = null;
        IContextInformation[] result = null;
        IContentAssistProcessor p = this.getProcessor(contentAssistSubjectControl, offset);
        if (p instanceof ISubjectControlContentAssistProcessor) {
            result = ((ISubjectControlContentAssistProcessor)p).computeContextInformation(contentAssistSubjectControl, offset);
            this.fLastErrorMessage = p.getErrorMessage();
        }
        return result;
    }

    IContextInformationValidator getContextInformationValidator(ITextViewer viewer, int offset) {
        IContentAssistProcessor p = this.getProcessor(viewer, offset);
        return p != null ? p.getContextInformationValidator() : null;
    }

    IContextInformationValidator getContextInformationValidator(IContentAssistSubjectControl contentAssistSubjectControl, int offset) {
        IContentAssistProcessor p = this.getProcessor(contentAssistSubjectControl, offset);
        return p != null ? p.getContextInformationValidator() : null;
    }

    IContextInformationPresenter getContextInformationPresenter(ITextViewer viewer, int offset) {
        IContextInformationValidator validator = this.getContextInformationValidator(viewer, offset);
        if (validator instanceof IContextInformationPresenter) {
            return (IContextInformationPresenter)((Object)validator);
        }
        return null;
    }

    IContextInformationPresenter getContextInformationPresenter(IContentAssistSubjectControl contentAssistSubjectControl, int offset) {
        IContextInformationValidator validator = this.getContextInformationValidator(contentAssistSubjectControl, offset);
        if (validator instanceof IContextInformationPresenter) {
            return (IContextInformationPresenter)((Object)validator);
        }
        return null;
    }

    char[] getCompletionProposalAutoActivationCharacters(IContentAssistSubjectControl contentAssistSubjectControl, int offset) {
        IContentAssistProcessor p = this.getProcessor(contentAssistSubjectControl, offset);
        return p != null ? p.getCompletionProposalAutoActivationCharacters() : null;
    }

    char[] getCompletionProposalAutoActivationCharacters(ITextViewer viewer, int offset) {
        IContentAssistProcessor p = this.getProcessor(viewer, offset);
        return p != null ? p.getCompletionProposalAutoActivationCharacters() : null;
    }

    char[] getContextInformationAutoActivationCharacters(ITextViewer viewer, int offset) {
        IContentAssistProcessor p = this.getProcessor(viewer, offset);
        return p != null ? p.getContextInformationAutoActivationCharacters() : null;
    }

    char[] getContextInformationAutoActivationCharacters(IContentAssistSubjectControl contentAssistSubjectControl, int offset) {
        IContentAssistProcessor p = this.getProcessor(contentAssistSubjectControl, offset);
        return p != null ? p.getContextInformationAutoActivationCharacters() : null;
    }

    public boolean requestWidgetToken(IWidgetTokenOwner owner) {
        return false;
    }

    public boolean requestWidgetToken(IWidgetTokenOwner owner, int priority) {
        if (priority > 20) {
            this.hide();
            return true;
        }
        return false;
    }

    public boolean setFocus(IWidgetTokenOwner owner) {
        if (this.fProposalPopup != null) {
            this.fProposalPopup.setFocus();
            return this.fProposalPopup.hasFocus();
        }
        return false;
    }

    protected void hide() {
        if (this.fProposalPopup != null) {
            this.fProposalPopup.hide();
        }
        if (this.fContextInfoPopup != null) {
            this.fContextInfoPopup.hide();
        }
    }

    public void setRestoreCompletionProposalSize(IDialogSettings dialogSettings) {
        Assert.isTrue((dialogSettings != null ? 1 : 0) != 0);
        this.fDialogSettings = dialogSettings;
    }

    protected void storeCompletionProposalPopupSize() {
        if (this.fDialogSettings == null || this.fProposalPopup == null) {
            return;
        }
        Point size = this.fProposalPopup.getSize();
        if (size == null) {
            return;
        }
        this.fDialogSettings.put(STORE_SIZE_X, size.x);
        this.fDialogSettings.put(STORE_SIZE_Y, size.y);
    }

    protected Point restoreCompletionProposalPopupSize() {
        if (this.fDialogSettings == null) {
            return null;
        }
        Point size = new Point(-1, -1);
        try {
            size.x = this.fDialogSettings.getInt(STORE_SIZE_X);
            size.y = this.fDialogSettings.getInt(STORE_SIZE_Y);
        }
        catch (NumberFormatException numberFormatException) {
            size.x = -1;
            size.y = -1;
        }
        if (size.x == -1 && size.y == -1) {
            return null;
        }
        Rectangle maxBounds = null;
        if (this.fContentAssistSubjectControl != null && Helper.okToUse((Widget)this.fContentAssistSubjectControl.getControl())) {
            maxBounds = this.fContentAssistSubjectControl.getControl().getDisplay().getBounds();
        } else {
            Display display = Display.getCurrent();
            if (display == null) {
                display = Display.getDefault();
            }
            if (display != null && !display.isDisposed()) {
                maxBounds = display.getBounds();
            }
        }
        if (size.x > -1 && size.y > -1) {
            if (maxBounds != null) {
                size.x = Math.min(size.x, maxBounds.width);
                size.y = Math.min(size.y, maxBounds.height);
            }
            size.x = Math.max(size.x, 30);
            size.y = Math.max(size.y, 30);
        }
        return size;
    }

    public void enablePrefixCompletion(boolean enabled) {
        this.fIsPrefixCompletionEnabled = enabled;
    }

    boolean isPrefixCompletionEnabled() {
        return this.fIsPrefixCompletionEnabled;
    }

    public boolean hasProposalPopupFocus() {
        return this.fProposalPopup.hasFocus();
    }

    public void addCompletionListener(ICompletionListener listener) {
        Assert.isLegal((listener != null ? 1 : 0) != 0);
        this.fCompletionListeners.add((Object)listener);
    }

    public void removeCompletionListener(ICompletionListener listener) {
        this.fCompletionListeners.remove((Object)listener);
    }

    void fireSessionBeginEvent(boolean isAutoActivated) {
        if (this.fContentAssistSubjectControlAdapter != null && !this.isProposalPopupActive()) {
            IContentAssistProcessor processor = this.getProcessor(this.fContentAssistSubjectControlAdapter, this.fContentAssistSubjectControlAdapter.getSelectedRange().x);
            ContentAssistEvent event = new ContentAssistEvent(this, processor, isAutoActivated);
            Object[] listeners = this.fCompletionListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                ICompletionListener listener = (ICompletionListener)listeners[i];
                listener.assistSessionStarted(event);
                ++i;
            }
        }
    }

    void fireSessionRestartEvent() {
        if (this.fContentAssistSubjectControlAdapter != null) {
            IContentAssistProcessor processor = this.getProcessor(this.fContentAssistSubjectControlAdapter, this.fContentAssistSubjectControlAdapter.getSelectedRange().x);
            ContentAssistEvent event = new ContentAssistEvent(this, processor);
            Object[] listeners = this.fCompletionListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                ICompletionListener listener = (ICompletionListener)listeners[i];
                if (listener instanceof ICompletionListenerExtension) {
                    ((ICompletionListenerExtension)((Object)listener)).assistSessionRestarted(event);
                }
                ++i;
            }
        }
    }

    void fireSessionEndEvent() {
        if (this.fContentAssistSubjectControlAdapter != null) {
            IContentAssistProcessor processor = this.getProcessor(this.fContentAssistSubjectControlAdapter, this.fContentAssistSubjectControlAdapter.getSelectedRange().x);
            ContentAssistEvent event = new ContentAssistEvent(this, processor);
            Object[] listeners = this.fCompletionListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                ICompletionListener listener = (ICompletionListener)listeners[i];
                listener.assistSessionEnded(event);
                ++i;
            }
        }
    }

    public void setRepeatedInvocationMode(boolean cycling) {
        this.fIsRepetitionMode = cycling;
    }

    boolean isRepeatedInvocationMode() {
        return this.fIsRepetitionMode;
    }

    public void setShowEmptyList(boolean showEmpty) {
        this.fShowEmptyList = showEmpty;
    }

    boolean isShowEmptyList() {
        return this.fShowEmptyList;
    }

    public void setStatusLineVisible(boolean show) {
        this.fIsStatusLineVisible = show;
        if (this.fProposalPopup != null) {
            this.fProposalPopup.setStatusLineVisible(show);
        }
    }

    boolean isStatusLineVisible() {
        return this.fIsStatusLineVisible;
    }

    public void setStatusMessage(String message) {
        Assert.isLegal((message != null ? 1 : 0) != 0);
        this.fMessage = message;
        if (this.fProposalPopup != null) {
            this.fProposalPopup.setMessage(message);
        }
    }

    String getStatusMessage() {
        return this.fMessage;
    }

    public void setEmptyMessage(String message) {
        Assert.isLegal((message != null ? 1 : 0) != 0);
        if (this.fProposalPopup != null) {
            this.fProposalPopup.setEmptyMessage(message);
        }
    }

    void fireSelectionEvent(ICompletionProposal proposal, boolean smartToggle) {
        Object[] listeners = this.fCompletionListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ICompletionListener listener = (ICompletionListener)listeners[i];
            listener.selectionChanged(proposal, smartToggle);
            ++i;
        }
    }

    public void setRepeatedInvocationTrigger(KeySequence sequence) {
        this.fRepeatedInvocationKeySequence = sequence;
    }

    KeySequence getRepeatedInvocationKeySequence() {
        return this.fRepeatedInvocationKeySequence;
    }

    protected boolean isProposalPopupActive() {
        return this.fProposalPopup != null && this.fProposalPopup.isActive();
    }

    protected boolean isContextInfoPopupActive() {
        return this.fContextInfoPopup != null && this.fContextInfoPopup.isActive();
    }

    public final IHandler getHandler(String commandId) {
        if (this.fHandlers == null) {
            throw new IllegalStateException();
        }
        IHandler handler = (IHandler)this.fHandlers.get(commandId);
        if (handler != null) {
            return handler;
        }
        Assert.isLegal((boolean)false);
        return null;
    }

    protected final void registerHandler(String commandId, IHandler handler) {
        if (this.fHandlers == null) {
            this.fHandlers = new HashMap(2);
        }
        this.fHandlers.put(commandId, handler);
    }

    boolean isColoredLabelsSupportEnabled() {
        return this.fIsColoredLabelsSupportEnabled;
    }

    public void enableColoredLabels(boolean isEnabled) {
        this.fIsColoredLabelsSupportEnabled = isEnabled;
    }

    static /* synthetic */ CompletionProposalPopup access$2(ContentAssistant contentAssistant) {
        return contentAssistant.fProposalPopup;
    }

    static /* synthetic */ ContextInformationPopup access$3(ContentAssistant contentAssistant) {
        return contentAssistant.fContextInfoPopup;
    }

    static /* synthetic */ int access$4(ContentAssistant contentAssistant) {
        return contentAssistant.fAutoActivationDelay;
    }

    static /* synthetic */ boolean access$6(ContentAssistant contentAssistant, boolean bl) {
        return contentAssistant.prepareToShowCompletions(bl);
    }

    static /* synthetic */ void access$7(ContentAssistant contentAssistant, long l) {
        contentAssistant.fLastAutoActivation = l;
    }

    static /* synthetic */ void access$8(ContentAssistant contentAssistant) {
        contentAssistant.promoteKeyListener();
    }

    protected class AutoAssistListener
    extends KeyAdapter
    implements Runnable,
    VerifyKeyListener {
        private Thread fThread;
        private boolean fIsReset = false;
        private Object fMutex = new Object();
        private int fShowStyle;
        private static final int SHOW_PROPOSALS = 1;
        private static final int SHOW_CONTEXT_INFO = 2;

        protected AutoAssistListener() {
        }

        protected void start(int showStyle) {
            this.fShowStyle = showStyle;
            this.fThread = new Thread((Runnable)this, JFaceTextMessages.getString("ContentAssistant.assist_delay_timer_name"));
            this.fThread.start();
        }

        /*
         * Exception decompiling
         */
        public void run() {
            /*
             * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
             * 
             * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [5[UNCONDITIONALDOLOOP]], but top level block is 1[TRYBLOCK]
             *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
             *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
             *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
             *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
             *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
             *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
             *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
             *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:923)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1035)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
             *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
             *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
             *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
             *     at org.benf.cfr.reader.Main.main(Main.java:54)
             */
            throw new IllegalStateException("Decompilation failed");
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        protected void reset(int showStyle) {
            Object object = this.fMutex;
            synchronized (object) {
                this.fShowStyle = showStyle;
                this.fIsReset = true;
                this.fMutex.notifyAll();
            }
        }

        protected void stop() {
            Thread threadToStop = this.fThread;
            if (threadToStop != null && threadToStop.isAlive()) {
                threadToStop.interrupt();
            }
        }

        private boolean contains(char[] characters, char character) {
            if (characters != null) {
                int i = 0;
                while (i < characters.length) {
                    if (character == characters[i]) {
                        return true;
                    }
                    ++i;
                }
            }
            return false;
        }

        public void keyPressed(KeyEvent e) {
            int showStyle;
            if (e.character == '\u0000' && (e.keyCode & 0x1000000) == 0) {
                return;
            }
            if (e.character != '\u0000' && e.stateMask == 65536) {
                return;
            }
            if (ContentAssistant.this.computeAllAutoActivationTriggers().indexOf(e.character) < 0) {
                this.stop();
                return;
            }
            int pos = ((ContentAssistant)ContentAssistant.this).fContentAssistSubjectControlAdapter.getSelectedRange().x;
            char[] activation = ContentAssistant.this.fContentAssistSubjectControlAdapter.getCompletionProposalAutoActivationCharacters(ContentAssistant.this, pos);
            if (this.contains(activation, e.character) && !ContentAssistant.this.isProposalPopupActive()) {
                showStyle = 1;
            } else {
                activation = ContentAssistant.this.fContentAssistSubjectControlAdapter.getContextInformationAutoActivationCharacters(ContentAssistant.this, pos);
                if (this.contains(activation, e.character) && !ContentAssistant.this.isContextInfoPopupActive()) {
                    showStyle = 2;
                } else {
                    this.stop();
                    return;
                }
            }
            if (this.fThread != null && this.fThread.isAlive()) {
                this.reset(showStyle);
            } else {
                this.start(showStyle);
            }
        }

        public void verifyKey(VerifyEvent event) {
            this.keyPressed((KeyEvent)event);
        }

        protected void showAssist(int showStyle) {
            Control control = ContentAssistant.this.fContentAssistSubjectControlAdapter.getControl();
            if (control == null) {
                return;
            }
            Display d = control.getDisplay();
            if (d == null) {
                return;
            }
            try {
                d.syncExec(new Runnable(this, control, showStyle){
                    final /* synthetic */ AutoAssistListener this$1;
                    private final /* synthetic */ Control val$control;
                    private final /* synthetic */ int val$showStyle;
                    {
                        this.this$1 = autoAssistListener;
                        this.val$control = control;
                        this.val$showStyle = n;
                    }

                    public void run() {
                        if (AutoAssistListener.access$0(this.this$1).isProposalPopupActive()) {
                            return;
                        }
                        if (this.val$control.isDisposed() || !this.val$control.isFocusControl()) {
                            return;
                        }
                        if (this.val$showStyle == 1) {
                            if (!ContentAssistant.access$6(AutoAssistListener.access$0(this.this$1), true)) {
                                return;
                            }
                            ContentAssistant.access$2(AutoAssistListener.access$0(this.this$1)).showProposals(true);
                            ContentAssistant.access$7(AutoAssistListener.access$0(this.this$1), System.currentTimeMillis());
                        } else if (this.val$showStyle == 2 && ContentAssistant.access$3(AutoAssistListener.access$0(this.this$1)) != null) {
                            ContentAssistant.access$8(AutoAssistListener.access$0(this.this$1));
                            ContentAssistant.access$3(AutoAssistListener.access$0(this.this$1)).showContextProposals(true);
                        }
                    }
                });
            }
            catch (SWTError sWTError) {}
        }

        static /* synthetic */ ContentAssistant access$0(AutoAssistListener autoAssistListener) {
            return autoAssistListener.ContentAssistant.this;
        }
    }

    class Closer
    implements ControlListener,
    MouseListener,
    FocusListener,
    DisposeListener,
    IViewportListener {
        private Shell fShell;
        private Control fControl;

        Closer() {
        }

        protected void install() {
            Control control;
            this.fControl = control = ContentAssistant.this.fContentAssistSubjectControlAdapter.getControl();
            if (Helper.okToUse((Widget)control)) {
                Shell shell;
                this.fShell = shell = control.getShell();
                shell.addControlListener((ControlListener)this);
                control.addMouseListener((MouseListener)this);
                control.addFocusListener((FocusListener)this);
                control.addDisposeListener((DisposeListener)this);
            }
            if (ContentAssistant.this.fViewer != null) {
                ContentAssistant.this.fViewer.addViewportListener(this);
            }
        }

        protected void uninstall() {
            Shell shell = this.fShell;
            this.fShell = null;
            if (Helper.okToUse((Widget)shell)) {
                shell.removeControlListener((ControlListener)this);
            }
            Control control = this.fControl;
            this.fControl = null;
            if (Helper.okToUse((Widget)control)) {
                control.removeMouseListener((MouseListener)this);
                control.removeFocusListener((FocusListener)this);
                control.removeDisposeListener((DisposeListener)this);
            }
            if (ContentAssistant.this.fViewer != null) {
                ContentAssistant.this.fViewer.removeViewportListener(this);
            }
        }

        public void controlResized(ControlEvent e) {
            ContentAssistant.this.hide();
        }

        public void controlMoved(ControlEvent e) {
            ContentAssistant.this.hide();
        }

        public void mouseDown(MouseEvent e) {
            ContentAssistant.this.hide();
        }

        public void mouseUp(MouseEvent e) {
        }

        public void mouseDoubleClick(MouseEvent e) {
            ContentAssistant.this.hide();
        }

        public void focusGained(FocusEvent e) {
        }

        public void focusLost(FocusEvent e) {
            Display d;
            Control control = this.fControl;
            if (Helper.okToUse((Widget)control) && (d = control.getDisplay()) != null) {
                d.asyncExec(new Runnable(this){
                    final /* synthetic */ Closer this$1;
                    {
                        this.this$1 = closer;
                    }

                    public void run() {
                        if (!(ContentAssistant.access$2(Closer.access$0(this.this$1)).hasFocus() || ContentAssistant.access$3(Closer.access$0(this.this$1)) != null && ContentAssistant.access$3(Closer.access$0(this.this$1)).hasFocus())) {
                            Closer.access$0(this.this$1).hide();
                        }
                    }
                });
            }
        }

        public void widgetDisposed(DisposeEvent e) {
            ContentAssistant.this.hide();
        }

        public void viewportChanged(int topIndex) {
            ContentAssistant.this.hide();
        }

        static /* synthetic */ ContentAssistant access$0(Closer closer) {
            return closer.ContentAssistant.this;
        }
    }

    class InternalListener
    implements VerifyKeyListener,
    IEventConsumer {
        InternalListener() {
        }

        public void verifyKey(VerifyEvent e) {
            IContentAssistListener[] listeners = (IContentAssistListener[])ContentAssistant.this.fListeners.clone();
            int i = 0;
            while (i < listeners.length) {
                if (listeners[i] != null && (!listeners[i].verifyKey(e) || !e.doit)) break;
                ++i;
            }
            if (ContentAssistant.this.fAutoAssistListener != null) {
                ContentAssistant.this.fAutoAssistListener.keyPressed((KeyEvent)e);
            }
        }

        public void processEvent(VerifyEvent event) {
            ContentAssistant.this.installKeyListener();
            IContentAssistListener[] listeners = (IContentAssistListener[])ContentAssistant.this.fListeners.clone();
            int i = 0;
            while (i < listeners.length) {
                if (listeners[i] != null) {
                    listeners[i].processEvent(event);
                    if (!event.doit) {
                        return;
                    }
                }
                ++i;
            }
        }
    }

    class LayoutManager
    implements Listener {
        public static final int LAYOUT_PROPOSAL_SELECTOR = 0;
        public static final int LAYOUT_CONTEXT_SELECTOR = 1;
        public static final int LAYOUT_CONTEXT_INFO_POPUP = 2;
        int fContextType = 1;
        Shell[] fShells = new Shell[3];
        Object[] fPopups = new Object[3];

        LayoutManager() {
        }

        protected void add(Object popup, Shell shell, int type, int offset) {
            Assert.isNotNull((Object)popup);
            Assert.isTrue((shell != null && !shell.isDisposed() ? 1 : 0) != 0);
            this.checkType(type);
            if (this.fShells[type] != shell) {
                if (this.fShells[type] != null) {
                    this.fShells[type].removeListener(12, (Listener)this);
                }
                shell.addListener(12, (Listener)this);
                this.fShells[type] = shell;
            }
            this.fPopups[type] = popup;
            if (type == 1 || type == 2) {
                this.fContextType = type;
            }
            this.layout(type, offset);
            this.adjustListeners(type);
        }

        protected void checkType(int type) {
            Assert.isTrue((type == 0 || type == 1 || type == 2 ? 1 : 0) != 0);
        }

        public void handleEvent(Event event) {
            Widget source = event.widget;
            source.removeListener(12, (Listener)this);
            int type = this.getShellType(source);
            this.checkType(type);
            this.fShells[type] = null;
            switch (type) {
                case 0: {
                    if (this.fContextType != 1 || !Helper.okToUse((Widget)this.fShells[1])) break;
                    ContentAssistant.this.addContentAssistListener((IContentAssistListener)this.fPopups[1], 0);
                    break;
                }
                case 1: {
                    if (Helper.okToUse((Widget)this.fShells[0])) {
                        if (ContentAssistant.this.fProposalPopupOrientation == 12) {
                            this.layout(0, ContentAssistant.this.getSelectionOffset());
                        }
                        ContentAssistant.this.addContentAssistListener((IContentAssistListener)this.fPopups[0], 1);
                    }
                    this.fContextType = 2;
                    break;
                }
                case 2: {
                    if (Helper.okToUse((Widget)this.fShells[0]) && ContentAssistant.this.fContextInfoPopupOrientation == 21) {
                        this.layout(0, ContentAssistant.this.getSelectionOffset());
                    }
                    this.fContextType = 1;
                }
            }
        }

        protected int getShellType(Widget shell) {
            int i = 0;
            while (i < this.fShells.length) {
                if (this.fShells[i] == shell) {
                    return i;
                }
                ++i;
            }
            return -1;
        }

        protected void layout(int type, int offset) {
            switch (type) {
                case 0: {
                    this.layoutProposalSelector(offset);
                    break;
                }
                case 1: {
                    this.layoutContextSelector(offset);
                    break;
                }
                case 2: {
                    this.layoutContextInfoPopup(offset);
                }
            }
        }

        protected void layoutProposalSelector(int offset) {
            if (this.fContextType == 2 && ContentAssistant.this.fContextInfoPopupOrientation == 21 && Helper.okToUse((Widget)this.fShells[2])) {
                Shell shell = this.fShells[0];
                Shell parent = this.fShells[2];
                shell.setLocation(this.getStackedLocation(shell, parent));
            } else if (this.fContextType != 1 || !Helper.okToUse((Widget)this.fShells[1])) {
                Shell shell = this.fShells[0];
                CompletionProposalPopup popup = (CompletionProposalPopup)this.fPopups[0];
                shell.setBounds(this.computeBoundsBelowAbove(shell, shell.getSize(), offset, popup));
            } else {
                CompletionProposalPopup popup = (CompletionProposalPopup)this.fPopups[0];
                switch (ContentAssistant.this.fProposalPopupOrientation) {
                    case 11: {
                        this.fShells[1].dispose();
                        Shell shell = this.fShells[0];
                        shell.setBounds(this.computeBoundsBelowAbove(shell, shell.getSize(), offset, popup));
                        break;
                    }
                    case 10: {
                        Shell shell = this.fShells[0];
                        shell.setBounds(this.computeBoundsBelowAbove(shell, shell.getSize(), offset, popup));
                        break;
                    }
                    case 12: {
                        Shell shell = this.fShells[0];
                        Shell parent = this.fShells[1];
                        shell.setLocation(this.getStackedLocation(shell, parent));
                    }
                }
            }
        }

        protected void layoutContextSelector(int offset) {
            Shell shell = this.fShells[1];
            shell.setBounds(this.computeBoundsBelowAbove(shell, shell.getSize(), offset, null));
            if (Helper.okToUse((Widget)this.fShells[0])) {
                switch (ContentAssistant.this.fProposalPopupOrientation) {
                    case 11: {
                        this.fShells[0].dispose();
                        break;
                    }
                    case 10: {
                        break;
                    }
                    case 12: {
                        shell = this.fShells[0];
                        Shell parent = this.fShells[1];
                        shell.setLocation(this.getStackedLocation(shell, parent));
                    }
                }
            }
        }

        protected void layoutContextInfoPopup(int offset) {
            switch (ContentAssistant.this.fContextInfoPopupOrientation) {
                case 20: {
                    Shell shell = this.fShells[2];
                    shell.setBounds(this.computeBoundsAboveBelow(shell, shell.getSize(), offset));
                    break;
                }
                case 21: {
                    Shell parent = this.fShells[2];
                    parent.setBounds(this.computeBoundsBelowAbove(parent, parent.getSize(), offset, null));
                    if (!Helper.okToUse((Widget)this.fShells[0])) break;
                    Shell shell = this.fShells[0];
                    shell.setLocation(this.getStackedLocation(shell, parent));
                }
            }
        }

        protected void constrainLocation(Point point, Point shellSize, Rectangle bounds) {
            if (point.x + shellSize.x > bounds.x + bounds.width) {
                point.x = bounds.x + bounds.width - shellSize.x;
            }
            if (point.x < bounds.x) {
                point.x = bounds.x;
            }
            if (point.y + shellSize.y > bounds.y + bounds.height) {
                point.y = bounds.y + bounds.height - shellSize.y;
            }
            if (point.y < bounds.y) {
                point.y = bounds.y;
            }
        }

        protected Rectangle constrainHorizontally(Rectangle rect, Rectangle bounds) {
            if (rect.width > bounds.width) {
                rect.width = bounds.width;
            }
            if (rect.x + rect.width > bounds.x + bounds.width) {
                rect.x = bounds.x + bounds.width - rect.width;
            }
            if (rect.x < bounds.x) {
                rect.x = bounds.x;
            }
            return rect;
        }

        protected Rectangle computeBoundsAboveBelow(Shell shell, Point preferred, int offset) {
            Control subjectControl = ContentAssistant.this.fContentAssistSubjectControlAdapter.getControl();
            Display display = subjectControl.getDisplay();
            Rectangle caret = this.getCaretRectangle(offset);
            Monitor monitor = this.getClosestMonitor(display, caret);
            Rectangle bounds = monitor.getClientArea();
            Geometry.moveInside((Rectangle)caret, (Rectangle)bounds);
            int spaceAbove = caret.y - bounds.y;
            int caretLowerY = caret.y + caret.height;
            int spaceBelow = bounds.y + bounds.height - caretLowerY;
            Rectangle rect = spaceAbove >= preferred.y ? new Rectangle(caret.x, caret.y - preferred.y, preferred.x, preferred.y) : (spaceBelow >= preferred.y ? new Rectangle(caret.x, caretLowerY, preferred.x, preferred.y) : (spaceBelow <= spaceAbove ? new Rectangle(caret.x, bounds.y, preferred.x, spaceAbove) : new Rectangle(caret.x, caretLowerY, preferred.x, spaceBelow)));
            return this.constrainHorizontally(rect, bounds);
        }

        protected Rectangle computeBoundsBelowAbove(Shell shell, Point preferred, int offset, CompletionProposalPopup popup) {
            Rectangle rect;
            Control subjectControl = ContentAssistant.this.fContentAssistSubjectControlAdapter.getControl();
            Display display = subjectControl.getDisplay();
            Rectangle caret = this.getCaretRectangle(offset);
            Monitor monitor = this.getClosestMonitor(display, caret);
            Rectangle bounds = monitor.getClientArea();
            Geometry.moveInside((Rectangle)caret, (Rectangle)bounds);
            int threshold = popup == null ? Integer.MAX_VALUE : popup.getMinimalHeight();
            int spaceAbove = caret.y - bounds.y;
            int spaceBelow = bounds.y + bounds.height - (caret.y + caret.height);
            boolean switched = false;
            if (spaceBelow >= preferred.y) {
                rect = new Rectangle(caret.x, caret.y + caret.height, preferred.x, preferred.y);
            } else if (spaceBelow >= threshold) {
                rect = new Rectangle(caret.x, caret.y + caret.height, preferred.x, spaceBelow);
            } else if (spaceAbove >= preferred.y) {
                rect = new Rectangle(caret.x, caret.y - preferred.y, preferred.x, preferred.y);
                switched = true;
            } else if (spaceBelow >= spaceAbove) {
                rect = new Rectangle(caret.x, caret.y + caret.height, preferred.x, spaceBelow);
            } else {
                rect = new Rectangle(caret.x, bounds.y, preferred.x, spaceAbove);
                switched = true;
            }
            if (popup != null) {
                popup.switchedPositionToAbove(switched);
            }
            return this.constrainHorizontally(rect, bounds);
        }

        private Rectangle getCaretRectangle(int offset) {
            Point location = ContentAssistant.this.fContentAssistSubjectControlAdapter.getLocationAtOffset(offset);
            Control subjectControl = ContentAssistant.this.fContentAssistSubjectControlAdapter.getControl();
            Point controlSize = subjectControl.getSize();
            this.constrainLocation(location, new Point(0, 0), new Rectangle(0, 0, controlSize.x, controlSize.y));
            location = subjectControl.toDisplay(location);
            Rectangle subjectRectangle = new Rectangle(location.x, location.y, 1, ContentAssistant.this.fContentAssistSubjectControlAdapter.getLineHeight());
            return subjectRectangle;
        }

        protected Point getStackedLocation(Shell shell, Shell parent) {
            Point p = parent.getLocation();
            Point size = parent.getSize();
            p.x += size.x / 4;
            p.y += size.y;
            p = parent.toDisplay(p);
            Point shellSize = shell.getSize();
            Monitor monitor = this.getClosestMonitor(parent.getDisplay(), new Rectangle(p.x, p.y, 0, 0));
            Rectangle displayBounds = monitor.getClientArea();
            this.constrainLocation(p, shellSize, displayBounds);
            return p;
        }

        protected void adjustListeners(int type) {
            switch (type) {
                case 0: {
                    if (this.fContextType != 1 || !Helper.okToUse((Widget)this.fShells[1])) break;
                    ContentAssistant.this.removeContentAssistListener((IContentAssistListener)this.fPopups[1], 0);
                    break;
                }
                case 1: {
                    if (!Helper.okToUse((Widget)this.fShells[0])) break;
                    ContentAssistant.this.removeContentAssistListener((IContentAssistListener)this.fPopups[0], 1);
                    break;
                }
            }
        }

        private Monitor getClosestMonitor(Display toSearch, Rectangle rectangle) {
            int closest = Integer.MAX_VALUE;
            Point toFind = Geometry.centerPoint((Rectangle)rectangle);
            Monitor[] monitors = toSearch.getMonitors();
            Monitor result = monitors[0];
            int idx = 0;
            while (idx < monitors.length) {
                Monitor current = monitors[idx];
                Rectangle clientArea = current.getClientArea();
                if (clientArea.contains(toFind)) {
                    return current;
                }
                int distance = Geometry.distanceSquared((Point)Geometry.centerPoint((Rectangle)clientArea), (Point)toFind);
                if (distance < closest) {
                    closest = distance;
                    result = current;
                }
                ++idx;
            }
            return result;
        }
    }
}

