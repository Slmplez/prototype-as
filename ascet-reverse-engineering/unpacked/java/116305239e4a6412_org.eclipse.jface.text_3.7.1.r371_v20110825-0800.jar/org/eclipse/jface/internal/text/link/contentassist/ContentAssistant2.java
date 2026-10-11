/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.util.OpenStrategy
 *  org.eclipse.swt.SWTError
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.text.link.contentassist;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.text.link.contentassist.AdditionalInfoController2;
import org.eclipse.jface.internal.text.link.contentassist.CompletionProposalPopup2;
import org.eclipse.jface.internal.text.link.contentassist.ContentAssistMessages;
import org.eclipse.jface.internal.text.link.contentassist.ContextInformationPopup2;
import org.eclipse.jface.internal.text.link.contentassist.Helper2;
import org.eclipse.jface.internal.text.link.contentassist.IContentAssistListener2;
import org.eclipse.jface.internal.text.link.contentassist.IProposalListener;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DefaultInformationControl;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IEventConsumer;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.IViewportListener;
import org.eclipse.jface.text.IWidgetTokenKeeper;
import org.eclipse.jface.text.IWidgetTokenKeeperExtension;
import org.eclipse.jface.text.IWidgetTokenOwner;
import org.eclipse.jface.text.IWidgetTokenOwnerExtension;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.contentassist.CompletionProposal;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.IContentAssistProcessor;
import org.eclipse.jface.text.contentassist.IContentAssistant;
import org.eclipse.jface.text.contentassist.IContentAssistantExtension;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.contentassist.IContextInformationPresenter;
import org.eclipse.jface.text.contentassist.IContextInformationValidator;
import org.eclipse.jface.util.OpenStrategy;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Widget;

public class ContentAssistant2
implements IContentAssistant,
IContentAssistantExtension,
IWidgetTokenKeeper,
IWidgetTokenKeeperExtension {
    static final int CONTEXT_SELECTOR = 0;
    static final int PROPOSAL_SELECTOR = 1;
    static final int CONTEXT_INFO_POPUP = 2;
    public static final int WIDGET_PRIORITY = 10;
    private static final int DEFAULT_AUTO_ACTIVATION_DELAY = 500;
    private IInformationControlCreator fInformationControlCreator;
    private int fAutoActivationDelay = 500;
    private boolean fIsAutoActivated = false;
    private boolean fIsAutoInserting = false;
    private int fProposalPopupOrientation = 10;
    private int fContextInfoPopupOrientation = 20;
    private Map fProcessors;
    private String fPartitioning;
    private Color fContextInfoPopupBackground;
    private Color fContextInfoPopupForeground;
    private Color fContextSelectorBackground;
    private Color fContextSelectorForeground;
    private ITextViewer fViewer;
    private String fLastErrorMessage;
    private Closer fCloser;
    private LayoutManager fLayoutManager;
    private AutoAssistListener fAutoAssistListener;
    private InternalListener fInternalListener;
    private CompletionProposalPopup2 fProposalPopup;
    private ContextInformationPopup2 fContextInfoPopup;
    private boolean fKeyListenerHooked = false;
    private IContentAssistListener2[] fListeners = new IContentAssistListener2[4];
    private int fCompletionPosition;
    private String[] fProposalStrings;
    private ICompletionProposal[] fProposals;
    private final List fProposalListeners = new ArrayList();
    private boolean fIsColoredLabelsSupportEnabled = false;

    public ContentAssistant2() {
        this.setContextInformationPopupOrientation(20);
        this.setInformationControlCreator(this.getInformationControlCreator());
    }

    private IInformationControlCreator getInformationControlCreator() {
        return new IInformationControlCreator(){

            public IInformationControl createInformationControl(Shell parent) {
                return new DefaultInformationControl(parent, false);
            }
        };
    }

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
            if (this.fViewer != null && this.fAutoAssistListener == null) {
                this.fAutoAssistListener = new AutoAssistListener();
                if (this.fViewer instanceof ITextViewerExtension) {
                    ITextViewerExtension extension = (ITextViewerExtension)((Object)this.fViewer);
                    extension.appendVerifyKeyListener(this.fAutoAssistListener);
                } else {
                    StyledText textWidget = this.fViewer.getTextWidget();
                    if (Helper2.okToUse((Widget)textWidget)) {
                        textWidget.addVerifyKeyListener((VerifyKeyListener)this.fAutoAssistListener);
                    }
                }
            }
        } else if (this.fAutoAssistListener != null) {
            if (this.fViewer instanceof ITextViewerExtension) {
                ITextViewerExtension extension = (ITextViewerExtension)((Object)this.fViewer);
                extension.removeVerifyKeyListener(this.fAutoAssistListener);
            } else {
                StyledText textWidget = this.fViewer.getTextWidget();
                if (Helper2.okToUse((Widget)textWidget)) {
                    textWidget.removeVerifyKeyListener((VerifyKeyListener)this.fAutoAssistListener);
                }
            }
            this.fAutoAssistListener = null;
        }
    }

    public void setAutoActivationDelay(int delay) {
        this.fAutoActivationDelay = delay;
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

    public void install(ITextViewer textViewer) {
        Assert.isNotNull((Object)textViewer);
        this.fViewer = textViewer;
        this.fLayoutManager = new LayoutManager();
        this.fInternalListener = new InternalListener();
        AdditionalInfoController2 controller = null;
        if (this.fInformationControlCreator != null) {
            controller = new AdditionalInfoController2(this.fInformationControlCreator, OpenStrategy.getPostSelectionDelay());
        }
        this.fContextInfoPopup = new ContextInformationPopup2(this, this.fViewer);
        this.fProposalPopup = new CompletionProposalPopup2(this, this.fViewer, controller);
        this.manageAutoActivation(this.fIsAutoActivated);
    }

    public void uninstall() {
        if (this.fProposalPopup != null) {
            this.fProposalPopup.hide();
        }
        if (this.fContextInfoPopup != null) {
            this.fContextInfoPopup.hide();
        }
        this.manageAutoActivation(false);
        if (this.fCloser != null) {
            this.fCloser.uninstall();
            this.fCloser = null;
        }
        this.fViewer = null;
    }

    void addToLayout(Object popup, Shell shell, int type, int visibleOffset) {
        this.fLayoutManager.add(popup, shell, type, visibleOffset);
    }

    void layout(int type, int visibleOffset) {
        this.fLayoutManager.layout(type, visibleOffset);
    }

    void popupFocusLost(FocusEvent e) {
        this.fCloser.focusLost(e);
    }

    int getSelectionOffset() {
        StyledText text = this.fViewer.getTextWidget();
        return text.getSelectionRange().x;
    }

    private boolean acquireWidgetToken(int type) {
        switch (type) {
            case 0: 
            case 1: {
                if (this.fViewer instanceof IWidgetTokenOwner) {
                    IWidgetTokenOwner owner = (IWidgetTokenOwner)((Object)this.fViewer);
                    return owner.requestWidgetToken(this);
                }
                if (!(this.fViewer instanceof IWidgetTokenOwnerExtension)) break;
                IWidgetTokenOwnerExtension extension = (IWidgetTokenOwnerExtension)((Object)this.fViewer);
                return extension.requestWidgetToken(this, 10);
            }
        }
        return true;
    }

    boolean addContentAssistListener(IContentAssistListener2 listener, int type) {
        if (this.acquireWidgetToken(type)) {
            this.fListeners[type] = listener;
            if (this.getNumberOfListeners() == 1) {
                this.fCloser = new Closer();
                this.fCloser.install();
                this.fViewer.setEventConsumer(this.fInternalListener);
                this.installKeyListener();
            }
            return true;
        }
        return false;
    }

    private void installKeyListener() {
        StyledText text;
        if (!this.fKeyListenerHooked && Helper2.okToUse((Widget)(text = this.fViewer.getTextWidget()))) {
            if (this.fViewer instanceof ITextViewerExtension) {
                ITextViewerExtension e = (ITextViewerExtension)((Object)this.fViewer);
                e.prependVerifyKeyListener(this.fInternalListener);
            } else {
                text.addVerifyKeyListener((VerifyKeyListener)this.fInternalListener);
            }
            this.fKeyListenerHooked = true;
        }
    }

    private void releaseWidgetToken(int type) {
        if (this.fListeners[0] == null && this.fListeners[1] == null && this.fViewer instanceof IWidgetTokenOwner) {
            IWidgetTokenOwner owner = (IWidgetTokenOwner)((Object)this.fViewer);
            owner.releaseWidgetToken(this);
        }
    }

    void removeContentAssistListener(IContentAssistListener2 listener, int type) {
        this.fListeners[type] = null;
        if (this.getNumberOfListeners() == 0) {
            if (this.fCloser != null) {
                this.fCloser.uninstall();
                this.fCloser = null;
            }
            this.uninstallKeyListener();
            this.fViewer.setEventConsumer(null);
        }
        this.releaseWidgetToken(type);
    }

    private void uninstallKeyListener() {
        StyledText text;
        if (this.fKeyListenerHooked && Helper2.okToUse((Widget)(text = this.fViewer.getTextWidget()))) {
            if (this.fViewer instanceof ITextViewerExtension) {
                ITextViewerExtension e = (ITextViewerExtension)((Object)this.fViewer);
                e.removeVerifyKeyListener(this.fInternalListener);
            } else {
                text.removeVerifyKeyListener((VerifyKeyListener)this.fInternalListener);
            }
            this.fKeyListenerHooked = false;
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
        return this.fProposalPopup.showProposals(false);
    }

    public void hidePossibleCompletions() {
        if (this.fProposalPopup != null) {
            this.fProposalPopup.hide();
        }
    }

    protected void hide() {
        if (this.fProposalPopup != null) {
            this.fProposalPopup.hide();
        }
        if (this.fContextInfoPopup != null) {
            this.fContextInfoPopup.hide();
        }
    }

    protected void possibleCompletionsClosed() {
    }

    public String showContextInformation() {
        return this.fContextInfoPopup.showContextProposals(false);
    }

    protected void contextInformationClosed() {
    }

    void showContextInformation(IContextInformation contextInformation, int position) {
        this.fContextInfoPopup.showContextInformation(contextInformation, position);
    }

    String getErrorMessage() {
        return this.fLastErrorMessage;
    }

    private IContentAssistProcessor getProcessor(ITextViewer viewer, int offset) {
        try {
            String type = TextUtilities.getContentType((IDocument)viewer.getDocument(), (String)this.getDocumentPartitioning(), (int)offset, (boolean)true);
            return this.getContentAssistProcessor(type);
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
    }

    ICompletionProposal[] computeCompletionProposals(ITextViewer viewer, int position) {
        if (this.fProposals != null) {
            return this.fProposals;
        }
        if (this.fProposalStrings != null) {
            ICompletionProposal[] result = new ICompletionProposal[this.fProposalStrings.length];
            int i = 0;
            while (i < this.fProposalStrings.length) {
                result[i] = new CompletionProposal(this.fProposalStrings[i], position, this.fProposalStrings[i].length(), this.fProposalStrings[i].length());
                ++i;
            }
            return result;
        }
        return null;
    }

    IContextInformation[] computeContextInformation(ITextViewer viewer, int position) {
        this.fLastErrorMessage = null;
        IContextInformation[] result = null;
        IContentAssistProcessor p = this.getProcessor(viewer, position);
        if (p != null) {
            result = p.computeContextInformation(viewer, position);
            this.fLastErrorMessage = p.getErrorMessage();
        }
        return result;
    }

    IContextInformationValidator getContextInformationValidator(ITextViewer textViewer, int offset) {
        IContentAssistProcessor p = this.getProcessor(textViewer, offset);
        return p != null ? p.getContextInformationValidator() : null;
    }

    IContextInformationPresenter getContextInformationPresenter(ITextViewer textViewer, int offset) {
        IContextInformationValidator validator = this.getContextInformationValidator(textViewer, offset);
        if (validator instanceof IContextInformationPresenter) {
            return (IContextInformationPresenter)((Object)validator);
        }
        return null;
    }

    private char[] getCompletionProposalAutoActivationCharacters(ITextViewer textViewer, int offset) {
        IContentAssistProcessor p = this.getProcessor(textViewer, offset);
        return p != null ? p.getCompletionProposalAutoActivationCharacters() : null;
    }

    private char[] getContextInformationAutoActivationCharacters(ITextViewer textViewer, int offset) {
        IContentAssistProcessor p = this.getProcessor(textViewer, offset);
        return p != null ? p.getContextInformationAutoActivationCharacters() : null;
    }

    public boolean requestWidgetToken(IWidgetTokenOwner owner) {
        this.hidePossibleCompletions();
        return true;
    }

    public void setCompletionPosition(int completionPosition) {
        this.fCompletionPosition = completionPosition;
    }

    public int getCompletionPosition() {
        return this.fCompletionPosition;
    }

    public void setCompletions(String[] proposals) {
        this.fProposalStrings = proposals;
    }

    public void setCompletions(ICompletionProposal[] proposals) {
        this.fProposals = proposals;
    }

    public boolean requestWidgetToken(IWidgetTokenOwner owner, int priority) {
        if (priority > 10) {
            this.hidePossibleCompletions();
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

    public boolean hasFocus() {
        return this.fProposalPopup != null && this.fProposalPopup.hasFocus() || this.fContextInfoPopup != null && this.fContextInfoPopup.hasFocus();
    }

    public String completePrefix() {
        return null;
    }

    public void fireProposalChosen(ICompletionProposal proposal) {
        ArrayList list = new ArrayList(this.fProposalListeners);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            IProposalListener listener = (IProposalListener)it.next();
            listener.proposalChosen(proposal);
        }
    }

    public void removeProposalListener(IProposalListener listener) {
        this.fProposalListeners.remove(listener);
    }

    public void addProposalListener(IProposalListener listener) {
        this.fProposalListeners.add(listener);
    }

    boolean isColoredLabelsSupportEnabled() {
        return this.fIsColoredLabelsSupportEnabled;
    }

    public void enableColoredLabels(boolean isEnabled) {
        this.fIsColoredLabelsSupportEnabled = isEnabled;
    }

    static /* synthetic */ int access$1(ContentAssistant2 contentAssistant2) {
        return contentAssistant2.fAutoActivationDelay;
    }

    class AutoAssistListener
    implements VerifyKeyListener,
    Runnable {
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
            this.fThread = new Thread((Runnable)this, ContentAssistMessages.getString("ContentAssistant.assist_delay_timer_name"));
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
            if (threadToStop != null) {
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

        public void verifyKey(VerifyEvent e) {
            int showStyle;
            if (e.character == '\u0000' && (e.keyCode & 0x1000000) == 0) {
                return;
            }
            if (e.character != '\u0000' && e.stateMask == 65536) {
                return;
            }
            int pos = ((ContentAssistant2)ContentAssistant2.this).fViewer.getSelectedRange().x;
            char[] activation = ContentAssistant2.this.getCompletionProposalAutoActivationCharacters(ContentAssistant2.this.fViewer, pos);
            if (this.contains(activation, e.character) && !ContentAssistant2.this.fProposalPopup.isActive()) {
                showStyle = 1;
            } else {
                activation = ContentAssistant2.this.getContextInformationAutoActivationCharacters(ContentAssistant2.this.fViewer, pos);
                if (this.contains(activation, e.character) && !ContentAssistant2.this.fContextInfoPopup.isActive()) {
                    showStyle = 2;
                } else {
                    if (this.fThread != null && this.fThread.isAlive()) {
                        this.stop();
                    }
                    return;
                }
            }
            if (this.fThread != null && this.fThread.isAlive()) {
                this.reset(showStyle);
            } else {
                this.start(showStyle);
            }
        }

        protected void showAssist(int showStyle) {
            StyledText control = ContentAssistant2.this.fViewer.getTextWidget();
            Display d = control.getDisplay();
            if (d != null) {
                try {
                    d.syncExec(new Runnable(this, showStyle){
                        final /* synthetic */ AutoAssistListener this$1;
                        private final /* synthetic */ int val$showStyle;
                        {
                            this.this$1 = autoAssistListener;
                            this.val$showStyle = n;
                        }

                        public void run() {
                            if (this.val$showStyle == 1) {
                                ContentAssistant2.access$3(AutoAssistListener.access$0(this.this$1)).showProposals(true);
                            } else if (this.val$showStyle == 2) {
                                ContentAssistant2.access$5(AutoAssistListener.access$0(this.this$1)).showContextProposals(true);
                            }
                        }
                    });
                }
                catch (SWTError sWTError) {}
            }
        }

        static /* synthetic */ ContentAssistant2 access$0(AutoAssistListener autoAssistListener) {
            return autoAssistListener.ContentAssistant2.this;
        }
    }

    class Closer
    implements ControlListener,
    MouseListener,
    FocusListener,
    DisposeListener,
    IViewportListener {
        private Shell fShell;
        private long fViewportListenerStartTime;

        Closer() {
        }

        protected void install() {
            StyledText w = ContentAssistant2.this.fViewer.getTextWidget();
            if (Helper2.okToUse((Widget)w)) {
                Shell shell;
                this.fShell = shell = w.getShell();
                shell.addControlListener((ControlListener)this);
                w.addMouseListener((MouseListener)this);
                w.addFocusListener((FocusListener)this);
                w.addDisposeListener((DisposeListener)this);
            }
            ContentAssistant2.this.fViewer.addViewportListener(this);
            this.fViewportListenerStartTime = System.currentTimeMillis() + 500L;
        }

        protected void uninstall() {
            StyledText w;
            Shell shell = this.fShell;
            this.fShell = null;
            if (Helper2.okToUse((Widget)shell)) {
                shell.removeControlListener((ControlListener)this);
            }
            if (Helper2.okToUse((Widget)(w = ContentAssistant2.this.fViewer.getTextWidget()))) {
                w.removeMouseListener((MouseListener)this);
                w.removeFocusListener((FocusListener)this);
                w.removeDisposeListener((DisposeListener)this);
            }
            ContentAssistant2.this.fViewer.removeViewportListener(this);
        }

        public void controlResized(ControlEvent e) {
            ContentAssistant2.this.hide();
        }

        public void controlMoved(ControlEvent e) {
            ContentAssistant2.this.hide();
        }

        public void mouseDown(MouseEvent e) {
            ContentAssistant2.this.hide();
        }

        public void mouseUp(MouseEvent e) {
        }

        public void mouseDoubleClick(MouseEvent e) {
            ContentAssistant2.this.hide();
        }

        public void focusGained(FocusEvent e) {
        }

        public void focusLost(FocusEvent e) {
            Display d;
            StyledText control;
            if (ContentAssistant2.this.fViewer != null && (control = ContentAssistant2.this.fViewer.getTextWidget()) != null && (d = control.getDisplay()) != null) {
                d.asyncExec(new Runnable(this){
                    final /* synthetic */ Closer this$1;
                    {
                        this.this$1 = closer;
                    }

                    public void run() {
                        if (!Closer.access$0(this.this$1).hasFocus()) {
                            Closer.access$0(this.this$1).hide();
                        }
                    }
                });
            }
        }

        public void widgetDisposed(DisposeEvent e) {
            ContentAssistant2.this.hide();
        }

        public void viewportChanged(int topIndex) {
            if (System.currentTimeMillis() > this.fViewportListenerStartTime) {
                ContentAssistant2.this.hide();
            }
        }

        static /* synthetic */ ContentAssistant2 access$0(Closer closer) {
            return closer.ContentAssistant2.this;
        }
    }

    class InternalListener
    implements VerifyKeyListener,
    IEventConsumer {
        InternalListener() {
        }

        public void verifyKey(VerifyEvent e) {
            IContentAssistListener2[] listeners = (IContentAssistListener2[])ContentAssistant2.this.fListeners.clone();
            int i = 0;
            while (i < listeners.length) {
                if (!(listeners[i] == null || listeners[i].verifyKey(e) && e.doit)) {
                    return;
                }
                ++i;
            }
        }

        public void processEvent(VerifyEvent event) {
            ContentAssistant2.this.installKeyListener();
            IContentAssistListener2[] listeners = (IContentAssistListener2[])ContentAssistant2.this.fListeners.clone();
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
                    if (this.fContextType != 1 || !Helper2.okToUse((Widget)this.fShells[1])) break;
                    ContentAssistant2.this.addContentAssistListener((IContentAssistListener2)this.fPopups[1], 0);
                    break;
                }
                case 1: {
                    if (Helper2.okToUse((Widget)this.fShells[0])) {
                        if (ContentAssistant2.this.fProposalPopupOrientation == 12) {
                            this.layout(0, ContentAssistant2.this.getSelectionOffset());
                        }
                        ContentAssistant2.this.addContentAssistListener((IContentAssistListener2)this.fPopups[0], 1);
                    }
                    this.fContextType = 2;
                    break;
                }
                case 2: {
                    if (Helper2.okToUse((Widget)this.fShells[0]) && ContentAssistant2.this.fContextInfoPopupOrientation == 21) {
                        this.layout(0, ContentAssistant2.this.getSelectionOffset());
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
            if (this.fContextType == 2 && ContentAssistant2.this.fContextInfoPopupOrientation == 21 && Helper2.okToUse((Widget)this.fShells[2])) {
                Shell shell = this.fShells[0];
                Shell parent = this.fShells[2];
                shell.setLocation(this.getStackedLocation(shell, parent));
            } else if (this.fContextType != 1 || !Helper2.okToUse((Widget)this.fShells[1])) {
                Shell shell = this.fShells[0];
                shell.setLocation(this.getBelowLocation(shell, offset));
            } else {
                switch (ContentAssistant2.this.fProposalPopupOrientation) {
                    case 11: {
                        this.fShells[1].dispose();
                        Shell shell = this.fShells[0];
                        shell.setLocation(this.getBelowLocation(shell, offset));
                        break;
                    }
                    case 10: {
                        Shell shell = this.fShells[0];
                        shell.setLocation(this.getBelowLocation(shell, offset));
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
            shell.setLocation(this.getBelowLocation(shell, offset));
            if (Helper2.okToUse((Widget)this.fShells[0])) {
                switch (ContentAssistant2.this.fProposalPopupOrientation) {
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
            switch (ContentAssistant2.this.fContextInfoPopupOrientation) {
                case 20: {
                    Shell shell = this.fShells[2];
                    shell.setLocation(this.getAboveLocation(shell, offset));
                    break;
                }
                case 21: {
                    Shell parent = this.fShells[2];
                    parent.setLocation(this.getBelowLocation(parent, offset));
                    if (!Helper2.okToUse((Widget)this.fShells[0])) break;
                    Shell shell = this.fShells[0];
                    shell.setLocation(this.getStackedLocation(shell, parent));
                }
            }
        }

        protected void shiftHorizontalLocation(Point location, Rectangle shellBounds, Rectangle displayBounds) {
            if (location.x + shellBounds.width > displayBounds.width) {
                location.x = displayBounds.width - shellBounds.width;
            }
            if (location.x < displayBounds.x) {
                location.x = displayBounds.x;
            }
        }

        protected void shiftVerticalLocation(Point location, Rectangle shellBounds, Rectangle displayBounds) {
            if (location.y + shellBounds.height > displayBounds.height) {
                location.y = displayBounds.height - shellBounds.height;
            }
            if (location.y < displayBounds.y) {
                location.y = displayBounds.y;
            }
        }

        protected Point getAboveLocation(Shell shell, int offset) {
            StyledText text = ContentAssistant2.this.fViewer.getTextWidget();
            Point location = text.getLocationAtOffset(offset);
            location = text.toDisplay(location);
            Rectangle shellBounds = shell.getBounds();
            Rectangle displayBounds = shell.getDisplay().getClientArea();
            location.y -= shellBounds.height;
            this.shiftHorizontalLocation(location, shellBounds, displayBounds);
            this.shiftVerticalLocation(location, shellBounds, displayBounds);
            return location;
        }

        protected Point getBelowLocation(Shell shell, int offset) {
            StyledText text = ContentAssistant2.this.fViewer.getTextWidget();
            Point location = text.getLocationAtOffset(offset);
            if (location.x < 0) {
                location.x = 0;
            }
            if (location.y < 0) {
                location.y = 0;
            }
            location = text.toDisplay(location);
            Rectangle shellBounds = shell.getBounds();
            Rectangle displayBounds = shell.getDisplay().getClientArea();
            location.y += text.getLineHeight(offset);
            this.shiftHorizontalLocation(location, shellBounds, displayBounds);
            this.shiftVerticalLocation(location, shellBounds, displayBounds);
            return location;
        }

        protected Point getStackedLocation(Shell shell, Shell parent) {
            Point p = parent.getLocation();
            Point size = parent.getSize();
            p.x += size.x / 4;
            p.y += size.y;
            p = parent.toDisplay(p);
            Rectangle shellBounds = shell.getBounds();
            Rectangle displayBounds = shell.getDisplay().getClientArea();
            this.shiftHorizontalLocation(p, shellBounds, displayBounds);
            this.shiftVerticalLocation(p, shellBounds, displayBounds);
            return p;
        }

        protected void adjustListeners(int type) {
            switch (type) {
                case 0: {
                    if (this.fContextType != 1 || !Helper2.okToUse((Widget)this.fShells[1])) break;
                    ContentAssistant2.this.removeContentAssistListener((IContentAssistListener2)this.fPopups[1], 0);
                    break;
                }
                case 1: {
                    if (!Helper2.okToUse((Widget)this.fShells[0])) break;
                    ContentAssistant2.this.removeContentAssistListener((IContentAssistListener2)this.fPopups[0], 1);
                    break;
                }
            }
        }
    }
}

