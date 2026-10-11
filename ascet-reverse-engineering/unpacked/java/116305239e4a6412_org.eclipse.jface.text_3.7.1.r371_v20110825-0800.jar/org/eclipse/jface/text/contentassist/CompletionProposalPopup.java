/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.bindings.keys.KeyStroke
 *  org.eclipse.jface.bindings.keys.SWTKeySupport
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.jface.viewers.StyledString
 *  org.eclipse.osgi.util.TextProcessor
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.text.contentassist;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.bindings.keys.SWTKeySupport;
import org.eclipse.jface.contentassist.IContentAssistSubjectControl;
import org.eclipse.jface.internal.text.InformationControlReplacer;
import org.eclipse.jface.internal.text.TableOwnerDrawSupport;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.AbstractInformationControlManager;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IEditingSupport;
import org.eclipse.jface.text.IEditingSupportRegistry;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.IRewriteTarget;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.contentassist.AdditionalInfoController;
import org.eclipse.jface.text.contentassist.ContentAssistSubjectControlAdapter;
import org.eclipse.jface.text.contentassist.ContentAssistant;
import org.eclipse.jface.text.contentassist.Helper;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension2;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension3;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension4;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension6;
import org.eclipse.jface.text.contentassist.IContentAssistListener;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.contentassist.JFaceTextMessages;
import org.eclipse.jface.text.contentassist.PopupCloser;
import org.eclipse.jface.util.Geometry;
import org.eclipse.jface.viewers.StyledString;
import org.eclipse.osgi.util.TextProcessor;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Widget;

class CompletionProposalPopup
implements IContentAssistListener {
    private static final boolean USE_VIRTUAL = !"motif".equals(SWT.getPlatform());
    private ITextViewer fViewer;
    private final ContentAssistant fContentAssistant;
    private final AdditionalInfoController fAdditionalInfoController;
    private final PopupCloser fPopupCloser = new PopupCloser();
    private Shell fProposalShell;
    private Table fProposalTable;
    private boolean fInserting = false;
    private ProposalSelectionListener fKeyListener;
    private final List fDocumentEvents = new ArrayList();
    private IDocumentListener fDocumentListener;
    private ICompletionProposal[] fFilteredProposals;
    private ICompletionProposal[] fComputedProposals;
    private int fInvocationOffset;
    private int fFilterOffset;
    private ICompletionProposal fLastProposal;
    private IContentAssistSubjectControl fContentAssistSubjectControl;
    private final ContentAssistSubjectControlAdapter fContentAssistSubjectControlAdapter;
    private Point fSize;
    private IEditingSupport fFocusHelper;
    private boolean fIsFilteredSubset;
    private final Runnable fFilterRunnable = new Runnable(){

        public void run() {
            ICompletionProposal[] proposals;
            int offset;
            block10: {
                if (!CompletionProposalPopup.this.fIsFilterPending) {
                    return;
                }
                CompletionProposalPopup.this.fIsFilterPending = false;
                if (!Helper.okToUse((Widget)CompletionProposalPopup.this.fContentAssistSubjectControlAdapter.getControl())) {
                    return;
                }
                offset = ((CompletionProposalPopup)CompletionProposalPopup.this).fContentAssistSubjectControlAdapter.getSelectedRange().x;
                proposals = null;
                try {
                    try {
                        if (offset > -1) {
                            DocumentEvent event = TextUtilities.mergeProcessedDocumentEvents((List)CompletionProposalPopup.this.fDocumentEvents);
                            proposals = CompletionProposalPopup.this.computeFilteredProposals(offset, event);
                        }
                    }
                    catch (BadLocationException badLocationException) {
                        CompletionProposalPopup.this.fDocumentEvents.clear();
                        break block10;
                    }
                }
                catch (Throwable throwable) {
                    CompletionProposalPopup.this.fDocumentEvents.clear();
                    throw throwable;
                }
                CompletionProposalPopup.this.fDocumentEvents.clear();
            }
            CompletionProposalPopup.this.fFilterOffset = offset;
            if (proposals != null && proposals.length > 0) {
                CompletionProposalPopup.this.setProposals(proposals, CompletionProposalPopup.this.fIsFilteredSubset);
            } else {
                CompletionProposalPopup.this.hide();
            }
        }
    };
    private boolean fIsFilterPending = false;
    private Label fMessageText;
    private Font fMessageTextFont;
    private int fLastCompletionOffset;
    private final EmptyProposal fEmptyProposal = new EmptyProposal();
    private String fEmptyMessage = null;
    private boolean fIsColoredLabelsSupportEnabled = false;

    public CompletionProposalPopup(ContentAssistant contentAssistant, ITextViewer viewer, AdditionalInfoController infoController) {
        this.fContentAssistant = contentAssistant;
        this.fViewer = viewer;
        this.fAdditionalInfoController = infoController;
        this.fContentAssistSubjectControlAdapter = new ContentAssistSubjectControlAdapter(this.fViewer);
    }

    public CompletionProposalPopup(ContentAssistant contentAssistant, IContentAssistSubjectControl contentAssistSubjectControl, AdditionalInfoController infoController) {
        this.fContentAssistant = contentAssistant;
        this.fContentAssistSubjectControl = contentAssistSubjectControl;
        this.fAdditionalInfoController = infoController;
        this.fContentAssistSubjectControlAdapter = new ContentAssistSubjectControlAdapter(this.fContentAssistSubjectControl);
    }

    public String showProposals(final boolean autoActivated) {
        if (this.fKeyListener == null) {
            this.fKeyListener = new ProposalSelectionListener();
        }
        Control control = this.fContentAssistSubjectControlAdapter.getControl();
        if (!Helper.okToUse((Widget)this.fProposalShell) && control != null && !control.isDisposed()) {
            this.fContentAssistSubjectControlAdapter.addKeyListener(this.fKeyListener);
            BusyIndicator.showWhile((Display)control.getDisplay(), (Runnable)new Runnable(){

                public void run() {
                    int count;
                    CompletionProposalPopup.this.fInvocationOffset = ((CompletionProposalPopup)CompletionProposalPopup.this).fContentAssistSubjectControlAdapter.getSelectedRange().x;
                    CompletionProposalPopup.this.fFilterOffset = CompletionProposalPopup.this.fInvocationOffset;
                    CompletionProposalPopup.this.fLastCompletionOffset = CompletionProposalPopup.this.fFilterOffset;
                    CompletionProposalPopup.this.fComputedProposals = CompletionProposalPopup.this.computeProposals(CompletionProposalPopup.this.fInvocationOffset);
                    int n = count = CompletionProposalPopup.this.fComputedProposals == null ? 0 : CompletionProposalPopup.this.fComputedProposals.length;
                    if (count == 0 && CompletionProposalPopup.this.hideWhenNoProposals(autoActivated)) {
                        return;
                    }
                    if (count == 1 && !autoActivated && CompletionProposalPopup.this.canAutoInsert(CompletionProposalPopup.this.fComputedProposals[0])) {
                        CompletionProposalPopup.this.insertProposal(CompletionProposalPopup.this.fComputedProposals[0], '\u0000', 0, CompletionProposalPopup.this.fInvocationOffset);
                        CompletionProposalPopup.this.hide();
                    } else {
                        CompletionProposalPopup.this.createProposalSelector();
                        CompletionProposalPopup.this.setProposals(CompletionProposalPopup.this.fComputedProposals, false);
                        CompletionProposalPopup.this.displayProposals();
                    }
                }
            });
        } else {
            this.fLastCompletionOffset = this.fFilterOffset;
            this.handleRepeatedInvocation();
        }
        return this.getErrorMessage();
    }

    private boolean hideWhenNoProposals(boolean autoActivated) {
        if (autoActivated || !this.fContentAssistant.isShowEmptyList()) {
            Control control;
            if (!autoActivated && (control = this.fContentAssistSubjectControlAdapter.getControl()) != null && !control.isDisposed()) {
                control.getDisplay().beep();
            }
            this.hide();
            return true;
        }
        return false;
    }

    private void handleRepeatedInvocation() {
        if (this.fContentAssistant.isRepeatedInvocationMode()) {
            this.fComputedProposals = this.computeProposals(this.fFilterOffset);
            this.setProposals(this.fComputedProposals, false);
        }
    }

    private ICompletionProposal[] computeProposals(int offset) {
        if (this.fContentAssistSubjectControl != null) {
            return this.fContentAssistant.computeCompletionProposals(this.fContentAssistSubjectControl, offset);
        }
        return this.fContentAssistant.computeCompletionProposals(this.fViewer, offset);
    }

    private String getErrorMessage() {
        return this.fContentAssistant.getErrorMessage();
    }

    private void createProposalSelector() {
        if (Helper.okToUse((Widget)this.fProposalShell)) {
            return;
        }
        Control control = this.fContentAssistSubjectControlAdapter.getControl();
        this.fProposalShell = new Shell(control.getShell(), 16400);
        this.fProposalShell.setFont(JFaceResources.getDefaultFont());
        if (USE_VIRTUAL) {
            this.fProposalTable = new Table((Composite)this.fProposalShell, 0x10000300);
            Listener listener = new Listener(){

                public void handleEvent(Event event) {
                    CompletionProposalPopup.this.handleSetData(event);
                }
            };
            this.fProposalTable.addListener(36, listener);
        } else {
            this.fProposalTable = new Table((Composite)this.fProposalShell, 768);
        }
        this.fIsColoredLabelsSupportEnabled = this.fContentAssistant.isColoredLabelsSupportEnabled();
        if (this.fIsColoredLabelsSupportEnabled) {
            TableOwnerDrawSupport.install(this.fProposalTable);
        }
        this.fProposalTable.setLocation(0, 0);
        if (this.fAdditionalInfoController != null) {
            this.fAdditionalInfoController.setSizeConstraints(50, 10, true, true);
        }
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.verticalSpacing = 1;
        this.fProposalShell.setLayout((Layout)layout);
        if (this.fContentAssistant.isStatusLineVisible()) {
            this.createMessageText();
        }
        GridData data = new GridData(1808);
        Point size = this.fContentAssistant.restoreCompletionProposalPopupSize();
        if (size != null) {
            this.fProposalTable.setLayoutData((Object)data);
            this.fProposalShell.setSize(size);
        } else {
            int height = this.fProposalTable.getItemHeight() * 10;
            double aspectRatio = (1.0 + Math.sqrt(5.0)) / 2.0;
            int width = (int)((double)height * aspectRatio);
            Rectangle trim = this.fProposalTable.computeTrim(0, 0, width, height);
            data.heightHint = trim.height;
            data.widthHint = trim.width;
            this.fProposalTable.setLayoutData((Object)data);
            this.fProposalShell.pack();
        }
        this.fContentAssistant.addToLayout(this, this.fProposalShell, 0, this.fContentAssistant.getSelectionOffset());
        this.fProposalShell.addControlListener(new ControlListener(){

            public void controlMoved(ControlEvent e) {
            }

            public void controlResized(ControlEvent e) {
                if (CompletionProposalPopup.this.fAdditionalInfoController != null) {
                    CompletionProposalPopup.this.fAdditionalInfoController.setSizeConstraints(50, 10, true, false);
                    CompletionProposalPopup.this.fAdditionalInfoController.hideInformationControl();
                    CompletionProposalPopup.this.fAdditionalInfoController.handleTableSelectionChanged();
                }
                CompletionProposalPopup.this.fSize = CompletionProposalPopup.this.fProposalShell.getSize();
            }
        });
        this.fProposalShell.setBackground(control.getDisplay().getSystemColor(15));
        Color c = this.getBackgroundColor(control);
        this.fProposalTable.setBackground(c);
        c = this.getForegroundColor(control);
        this.fProposalTable.setForeground(c);
        this.fProposalTable.addSelectionListener(new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
            }

            public void widgetDefaultSelected(SelectionEvent e) {
                CompletionProposalPopup.this.insertSelectedProposalWithMask(e.stateMask);
            }
        });
        this.fPopupCloser.install(this.fContentAssistant, this.fProposalTable, this.fAdditionalInfoController);
        this.fProposalShell.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                CompletionProposalPopup.this.unregister();
            }
        });
        this.fProposalTable.setHeaderVisible(false);
        this.addCommandSupport((Control)this.fProposalTable);
    }

    int getMinimalHeight() {
        int height = 0;
        if (Helper.okToUse((Widget)this.fProposalTable)) {
            int items = this.fProposalTable.getItemHeight() * 10;
            Rectangle trim = this.fProposalTable.computeTrim(0, 0, -1, items);
            height = trim.height;
        }
        if (Helper.okToUse((Widget)this.fMessageText)) {
            height += this.fMessageText.getSize().y + 1;
        }
        return height;
    }

    private void addCommandSupport(final Control control) {
        final KeySequence commandSequence = this.fContentAssistant.getRepeatedInvocationKeySequence();
        if (commandSequence != null && !commandSequence.isEmpty() && this.fContentAssistant.isRepeatedInvocationMode()) {
            control.addFocusListener(new FocusListener(){
                private CommandKeyListener fCommandKeyListener;

                public void focusGained(FocusEvent e) {
                    if (Helper.okToUse((Widget)control) && this.fCommandKeyListener == null) {
                        this.fCommandKeyListener = new CommandKeyListener(commandSequence);
                        CompletionProposalPopup.this.fProposalTable.addKeyListener((KeyListener)this.fCommandKeyListener);
                    }
                }

                public void focusLost(FocusEvent e) {
                    if (this.fCommandKeyListener != null) {
                        control.removeKeyListener((KeyListener)this.fCommandKeyListener);
                        this.fCommandKeyListener = null;
                    }
                }
            });
        }
        if (this.fAdditionalInfoController != null) {
            control.addFocusListener(new FocusListener(){
                private TraverseListener fTraverseListener;

                public void focusGained(FocusEvent e) {
                    if (Helper.okToUse((Widget)control) && this.fTraverseListener == null) {
                        this.fTraverseListener = new TraverseListener(this){
                            final /* synthetic */ 8 this$1;
                            {
                                this.this$1 = var1_1;
                            }

                            public void keyTraversed(TraverseEvent event) {
                                if (event.detail == 16) {
                                    IInformationControl iControl = CompletionProposalPopup.access$25(8.access$0(this.this$1)).getCurrentInformationControl2();
                                    if (CompletionProposalPopup.access$25(8.access$0(this.this$1)).getInternalAccessor().canReplace(iControl)) {
                                        CompletionProposalPopup.access$25(8.access$0(this.this$1)).getInternalAccessor().replaceInformationControl(true);
                                        event.doit = false;
                                    }
                                }
                            }
                        };
                        CompletionProposalPopup.this.fProposalTable.addTraverseListener(this.fTraverseListener);
                    }
                }

                public void focusLost(FocusEvent e) {
                    if (this.fTraverseListener != null) {
                        control.removeTraverseListener(this.fTraverseListener);
                        this.fTraverseListener = null;
                    }
                }

                static /* synthetic */ CompletionProposalPopup access$0(8 var0) {
                    return var0.CompletionProposalPopup.this;
                }
            });
        }
    }

    private Color getBackgroundColor(Control control) {
        Color c = this.fContentAssistant.getProposalSelectorBackground();
        if (c == null) {
            c = JFaceResources.getColorRegistry().get("CONTENT_ASSIST_BACKGROUND_COLOR");
        }
        return c;
    }

    private Color getForegroundColor(Control control) {
        Color c = this.fContentAssistant.getProposalSelectorForeground();
        if (c == null) {
            c = JFaceResources.getColorRegistry().get("CONTENT_ASSIST_FOREGROUND_COLOR");
        }
        return c;
    }

    private void createMessageText() {
        if (this.fMessageText == null) {
            this.fMessageText = new Label((Composite)this.fProposalShell, 131072);
            GridData textData = new GridData(4, 1024, true, false);
            this.fMessageText.setLayoutData((Object)textData);
            this.fMessageText.setText(String.valueOf(this.fContentAssistant.getStatusMessage()) + " ");
            if (this.fMessageTextFont == null) {
                Font font = this.fMessageText.getFont();
                Display display = this.fProposalShell.getDisplay();
                FontData[] fontDatas = font.getFontData();
                int i = 0;
                while (i < fontDatas.length) {
                    fontDatas[i].setHeight(fontDatas[i].getHeight() * 9 / 10);
                    ++i;
                }
                this.fMessageTextFont = new Font((Device)display, fontDatas);
            }
            this.fMessageText.setFont(this.fMessageTextFont);
            this.fMessageText.setBackground(this.getBackgroundColor((Control)this.fProposalShell));
            this.fMessageText.setForeground(this.getForegroundColor((Control)this.fProposalShell));
            if (this.fContentAssistant.isRepeatedInvocationMode()) {
                this.fMessageText.setCursor(this.fProposalShell.getDisplay().getSystemCursor(21));
                this.fMessageText.addMouseListener((MouseListener)new MouseAdapter(){

                    public void mouseUp(MouseEvent e) {
                        CompletionProposalPopup.this.fLastCompletionOffset = CompletionProposalPopup.this.fFilterOffset;
                        CompletionProposalPopup.this.fProposalTable.setFocus();
                        CompletionProposalPopup.this.handleRepeatedInvocation();
                    }

                    public void mouseDown(MouseEvent e) {
                    }
                });
            }
        }
    }

    private void handleSetData(Event event) {
        TableItem item = (TableItem)event.item;
        int index = this.fProposalTable.indexOf(item);
        if (index >= 0 && index < this.fFilteredProposals.length) {
            String displayString;
            ICompletionProposal current = this.fFilteredProposals[index];
            StyleRange[] styleRanges = null;
            if (this.fIsColoredLabelsSupportEnabled && current instanceof ICompletionProposalExtension6) {
                StyledString styledString = ((ICompletionProposalExtension6)((Object)current)).getStyledDisplayString();
                displayString = styledString.getString();
                styleRanges = styledString.getStyleRanges();
            } else {
                displayString = current.getDisplayString();
            }
            item.setText(displayString);
            if (this.fIsColoredLabelsSupportEnabled) {
                TableOwnerDrawSupport.storeStyleRanges(item, 0, styleRanges);
            }
            item.setImage(current.getImage());
            item.setData((Object)current);
        }
    }

    private ICompletionProposal getSelectedProposal() {
        if (this.fIsFilterPending) {
            this.fFilterRunnable.run();
        }
        if (!Helper.okToUse((Widget)this.fProposalTable)) {
            return null;
        }
        int i = this.fProposalTable.getSelectionIndex();
        if (this.fFilteredProposals == null || i < 0 || i >= this.fFilteredProposals.length) {
            return null;
        }
        return this.fFilteredProposals[i];
    }

    private void insertSelectedProposalWithMask(int stateMask) {
        ICompletionProposal p = this.getSelectedProposal();
        this.hide();
        if (p != null) {
            this.insertProposal(p, '\u0000', stateMask, this.fContentAssistSubjectControlAdapter.getSelectedRange().x);
        }
    }

    private void insertProposal(ICompletionProposal p, char trigger, int stateMask, final int offset) {
        this.fInserting = true;
        IRewriteTarget target = null;
        IEditingSupport helper = new IEditingSupport(){

            public boolean isOriginator(DocumentEvent event, IRegion focus) {
                return focus.getOffset() <= offset && focus.getOffset() + focus.getLength() >= offset;
            }

            public boolean ownsFocusShell() {
                return false;
            }
        };
        try {
            IContextInformation info;
            Object e;
            IDocument document = this.fContentAssistSubjectControlAdapter.getDocument();
            if (this.fViewer instanceof ITextViewerExtension) {
                ITextViewerExtension extension = (ITextViewerExtension)((Object)this.fViewer);
                target = extension.getRewriteTarget();
            }
            if (target != null) {
                target.beginCompoundChange();
            }
            if (this.fViewer instanceof IEditingSupportRegistry) {
                IEditingSupportRegistry registry = (IEditingSupportRegistry)((Object)this.fViewer);
                registry.register(helper);
            }
            if (p instanceof ICompletionProposalExtension2 && this.fViewer != null) {
                e = (ICompletionProposalExtension2)((Object)p);
                e.apply(this.fViewer, trigger, stateMask, offset);
            } else if (p instanceof ICompletionProposalExtension) {
                e = (ICompletionProposalExtension)((Object)p);
                e.apply(document, trigger, offset);
            } else {
                p.apply(document);
            }
            Point selection = p.getSelection(document);
            if (selection != null) {
                this.fContentAssistSubjectControlAdapter.setSelectedRange(selection.x, selection.y);
                this.fContentAssistSubjectControlAdapter.revealRange(selection.x, selection.y);
            }
            if ((info = p.getContextInformation()) != null) {
                int contextInformationOffset;
                if (p instanceof ICompletionProposalExtension) {
                    ICompletionProposalExtension e2 = (ICompletionProposalExtension)((Object)p);
                    contextInformationOffset = e2.getContextInformationPosition();
                } else {
                    if (selection == null) {
                        selection = this.fContentAssistSubjectControlAdapter.getSelectedRange();
                    }
                    contextInformationOffset = selection.x + selection.y;
                }
                this.fContentAssistant.showContextInformation(info, contextInformationOffset);
            } else {
                this.fContentAssistant.showContextInformation(null, -1);
            }
        }
        finally {
            if (target != null) {
                target.endCompoundChange();
            }
            if (this.fViewer instanceof IEditingSupportRegistry) {
                IEditingSupportRegistry registry = (IEditingSupportRegistry)((Object)this.fViewer);
                registry.unregister(helper);
            }
            this.fInserting = false;
        }
    }

    public boolean hasFocus() {
        if (Helper.okToUse((Widget)this.fProposalShell)) {
            if (this.fProposalShell.getDisplay().getActiveShell() == this.fProposalShell) {
                return true;
            }
            if (this.fAdditionalInfoController != null) {
                IInformationControl informationControl = this.fAdditionalInfoController.getCurrentInformationControl2();
                if (informationControl != null && informationControl.isFocusControl()) {
                    return true;
                }
                InformationControlReplacer replacer = this.fAdditionalInfoController.getInternalAccessor().getInformationControlReplacer();
                if (replacer != null && (informationControl = replacer.getCurrentInformationControl2()) != null && informationControl.isFocusControl()) {
                    return true;
                }
            }
        }
        return false;
    }

    public void hide() {
        this.unregister();
        if (this.fViewer instanceof IEditingSupportRegistry) {
            IEditingSupportRegistry registry = (IEditingSupportRegistry)((Object)this.fViewer);
            registry.unregister(this.fFocusHelper);
        }
        if (Helper.okToUse((Widget)this.fProposalShell)) {
            this.fContentAssistant.removeContentAssistListener(this, 1);
            this.fPopupCloser.uninstall();
            this.fProposalShell.setVisible(false);
            this.fProposalShell.dispose();
            this.fProposalShell = null;
        }
        if (this.fMessageTextFont != null) {
            this.fMessageTextFont.dispose();
            this.fMessageTextFont = null;
        }
        if (this.fMessageText != null) {
            this.fMessageText = null;
        }
        this.fEmptyMessage = null;
        this.fLastCompletionOffset = -1;
        this.fContentAssistant.fireSessionEndEvent();
    }

    private void unregister() {
        if (this.fDocumentListener != null) {
            IDocument document = this.fContentAssistSubjectControlAdapter.getDocument();
            if (document != null) {
                document.removeDocumentListener(this.fDocumentListener);
            }
            this.fDocumentListener = null;
        }
        this.fDocumentEvents.clear();
        if (this.fKeyListener != null && this.fContentAssistSubjectControlAdapter.getControl() != null && !this.fContentAssistSubjectControlAdapter.getControl().isDisposed()) {
            this.fContentAssistSubjectControlAdapter.removeKeyListener(this.fKeyListener);
            this.fKeyListener = null;
        }
        if (this.fLastProposal != null) {
            if (this.fLastProposal instanceof ICompletionProposalExtension2 && this.fViewer != null) {
                ICompletionProposalExtension2 extension = (ICompletionProposalExtension2)((Object)this.fLastProposal);
                extension.unselected(this.fViewer);
            }
            this.fLastProposal = null;
        }
        this.fFilteredProposals = null;
        this.fComputedProposals = null;
        this.fContentAssistant.possibleCompletionsClosed();
    }

    public boolean isActive() {
        return this.fProposalShell != null && !this.fProposalShell.isDisposed();
    }

    private void setProposals(ICompletionProposal[] proposals, boolean isFilteredSubset) {
        ICompletionProposal[] oldProposals = this.fFilteredProposals;
        ICompletionProposal oldProposal = this.getSelectedProposal();
        if (oldProposals != this.fFilteredProposals) {
            return;
        }
        if (Helper.okToUse((Widget)this.fProposalTable)) {
            if (oldProposal instanceof ICompletionProposalExtension2 && this.fViewer != null) {
                ((ICompletionProposalExtension2)((Object)oldProposal)).unselected(this.fViewer);
            }
            if (proposals == null || proposals.length == 0) {
                this.fEmptyProposal.fOffset = this.fFilterOffset;
                this.fEmptyProposal.fDisplayString = this.fEmptyMessage != null ? this.fEmptyMessage : JFaceTextMessages.getString("CompletionProposalPopup.no_proposals");
                proposals = new ICompletionProposal[]{this.fEmptyProposal};
            }
            this.fFilteredProposals = proposals;
            int newLen = proposals.length;
            if (USE_VIRTUAL) {
                this.fProposalTable.setItemCount(newLen);
                this.fProposalTable.clearAll();
            } else {
                this.fProposalTable.setRedraw(false);
                this.fProposalTable.setItemCount(newLen);
                TableItem[] items = this.fProposalTable.getItems();
                int i = 0;
                while (i < items.length) {
                    TableItem item = items[i];
                    ICompletionProposal proposal = proposals[i];
                    item.setText(proposal.getDisplayString());
                    item.setImage(proposal.getImage());
                    item.setData((Object)proposal);
                    ++i;
                }
                this.fProposalTable.setRedraw(true);
            }
            Point currentLocation = this.fProposalShell.getLocation();
            Point newLocation = this.getLocation();
            if (newLocation.x < currentLocation.x && newLocation.y == currentLocation.y || newLocation.y < currentLocation.y) {
                this.fProposalShell.setLocation(newLocation);
            }
            this.selectProposal(0, false);
        }
    }

    private Point getLocation() {
        int caret = this.fContentAssistSubjectControlAdapter.getCaretOffset();
        Rectangle location = this.fContentAssistant.getLayoutManager().computeBoundsBelowAbove(this.fProposalShell, this.fSize == null ? this.fProposalShell.getSize() : this.fSize, caret, this);
        return Geometry.getLocation((Rectangle)location);
    }

    Point getSize() {
        return this.fSize;
    }

    private void displayProposals() {
        if (!Helper.okToUse((Widget)this.fProposalShell) || !Helper.okToUse((Widget)this.fProposalTable)) {
            return;
        }
        if (this.fContentAssistant.addContentAssistListener(this, 1)) {
            this.ensureDocumentListenerInstalled();
            if (this.fFocusHelper == null) {
                this.fFocusHelper = new IEditingSupport(){

                    public boolean isOriginator(DocumentEvent event, IRegion focus) {
                        return false;
                    }

                    public boolean ownsFocusShell() {
                        return true;
                    }
                };
            }
            if (this.fViewer instanceof IEditingSupportRegistry) {
                IEditingSupportRegistry registry = (IEditingSupportRegistry)((Object)this.fViewer);
                registry.register(this.fFocusHelper);
            }
            this.fProposalShell.setVisible(true);
            if (!this.fContentAssistSubjectControlAdapter.supportsVerifyKeyListener() && Helper.okToUse((Widget)this.fProposalShell)) {
                this.fProposalShell.setFocus();
            }
            if (this.fAdditionalInfoController != null && Helper.okToUse((Widget)this.fProposalTable)) {
                this.fAdditionalInfoController.install((Control)this.fProposalTable);
                this.fAdditionalInfoController.handleTableSelectionChanged();
            }
        } else {
            this.hide();
        }
    }

    private void ensureDocumentListenerInstalled() {
        if (this.fDocumentListener == null) {
            this.fDocumentListener = new IDocumentListener(){

                public void documentAboutToBeChanged(DocumentEvent event) {
                    if (!CompletionProposalPopup.this.fInserting) {
                        CompletionProposalPopup.this.fDocumentEvents.add(event);
                    }
                }

                public void documentChanged(DocumentEvent event) {
                    if (!CompletionProposalPopup.this.fInserting) {
                        CompletionProposalPopup.this.filterProposals();
                    }
                }
            };
            IDocument document = this.fContentAssistSubjectControlAdapter.getDocument();
            if (document != null) {
                document.addDocumentListener(this.fDocumentListener);
            }
        }
    }

    public boolean verifyKey(VerifyEvent e) {
        if (!Helper.okToUse((Widget)this.fProposalShell)) {
            return true;
        }
        char key = e.character;
        if (key == '\u0000') {
            int newSelection = this.fProposalTable.getSelectionIndex();
            int visibleRows = this.fProposalTable.getSize().y / this.fProposalTable.getItemHeight() - 1;
            int itemCount = this.fProposalTable.getItemCount();
            switch (e.keyCode) {
                case 0x1000003: 
                case 0x1000004: {
                    this.filterProposals();
                    return true;
                }
                case 0x1000001: {
                    if (--newSelection >= 0) break;
                    newSelection = itemCount - 1;
                    break;
                }
                case 0x1000002: {
                    if (++newSelection <= itemCount - 1) break;
                    newSelection = 0;
                    break;
                }
                case 0x1000006: {
                    if ((newSelection += visibleRows) < itemCount) break;
                    newSelection = itemCount - 1;
                    break;
                }
                case 0x1000005: {
                    if ((newSelection -= visibleRows) >= 0) break;
                    newSelection = 0;
                    break;
                }
                case 0x1000007: {
                    newSelection = 0;
                    break;
                }
                case 0x1000008: {
                    newSelection = itemCount - 1;
                    break;
                }
                default: {
                    if (e.keyCode != 16777298 && e.keyCode != SWT.MOD1 && e.keyCode != SWT.MOD2 && e.keyCode != SWT.MOD3 && e.keyCode != SWT.MOD4) {
                        this.hide();
                    }
                    return true;
                }
            }
            this.selectProposal(newSelection, (e.stateMask & 0x40000) != 0);
            e.doit = false;
            return false;
        }
        switch (key) {
            case '\u001b': {
                e.doit = false;
                this.hide();
                break;
            }
            case '\n': 
            case '\r': {
                e.doit = false;
                this.insertSelectedProposalWithMask(e.stateMask);
                break;
            }
            case '\t': {
                e.doit = false;
                this.fProposalShell.setFocus();
                return false;
            }
            default: {
                ICompletionProposalExtension t;
                char[] triggers;
                ICompletionProposal p = this.getSelectedProposal();
                if (!(p instanceof ICompletionProposalExtension) || !this.contains(triggers = (t = (ICompletionProposalExtension)((Object)p)).getTriggerCharacters(), key)) break;
                e.doit = false;
                this.hide();
                this.insertProposal(p, key, e.stateMask, this.fContentAssistSubjectControlAdapter.getSelectedRange().x);
            }
        }
        return true;
    }

    private void selectProposal(int index, boolean smartToggle) {
        ICompletionProposal oldProposal = this.getSelectedProposal();
        if (oldProposal instanceof ICompletionProposalExtension2 && this.fViewer != null) {
            ((ICompletionProposalExtension2)((Object)oldProposal)).unselected(this.fViewer);
        }
        if (this.fFilteredProposals == null) {
            this.fireSelectionEvent(null, smartToggle);
            return;
        }
        ICompletionProposal proposal = this.fFilteredProposals[index];
        if (proposal instanceof ICompletionProposalExtension2 && this.fViewer != null) {
            ((ICompletionProposalExtension2)((Object)proposal)).selected(this.fViewer, smartToggle);
        }
        this.fireSelectionEvent(proposal, smartToggle);
        this.fLastProposal = proposal;
        this.fProposalTable.setSelection(index);
        this.fProposalTable.showSelection();
        if (this.fAdditionalInfoController != null) {
            this.fAdditionalInfoController.handleTableSelectionChanged();
        }
    }

    private void fireSelectionEvent(ICompletionProposal proposal, boolean smartToggle) {
        this.fContentAssistant.fireSelectionEvent(proposal, smartToggle);
    }

    private boolean contains(char[] characters, char c) {
        if (characters == null) {
            return false;
        }
        int i = 0;
        while (i < characters.length) {
            if (c == characters[i]) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void processEvent(VerifyEvent e) {
    }

    private void filterProposals() {
        if (!this.fIsFilterPending) {
            this.fIsFilterPending = true;
            Control control = this.fContentAssistSubjectControlAdapter.getControl();
            control.getDisplay().asyncExec(this.fFilterRunnable);
        }
    }

    private ICompletionProposal[] computeFilteredProposals(int offset, DocumentEvent event) {
        ICompletionProposal[] proposals;
        if (offset == this.fInvocationOffset && event == null) {
            this.fIsFilteredSubset = false;
            return this.fComputedProposals;
        }
        if (offset < this.fInvocationOffset) {
            this.fIsFilteredSubset = false;
            this.fInvocationOffset = offset;
            this.fContentAssistant.fireSessionRestartEvent();
            this.fComputedProposals = this.computeProposals(this.fInvocationOffset);
            return this.fComputedProposals;
        }
        if (offset < this.fFilterOffset) {
            proposals = this.fComputedProposals;
            this.fIsFilteredSubset = false;
        } else {
            proposals = this.fFilteredProposals;
            this.fIsFilteredSubset = true;
        }
        if (proposals == null) {
            this.fIsFilteredSubset = false;
            return null;
        }
        IDocument document = this.fContentAssistSubjectControlAdapter.getDocument();
        int length = proposals.length;
        ArrayList<Object> filtered = new ArrayList<Object>(length);
        int i = 0;
        while (i < length) {
            Object p;
            if (proposals[i] instanceof ICompletionProposalExtension2) {
                p = (ICompletionProposalExtension2)((Object)proposals[i]);
                if (p.validate(document, offset, event)) {
                    filtered.add(p);
                }
            } else if (proposals[i] instanceof ICompletionProposalExtension) {
                p = (ICompletionProposalExtension)((Object)proposals[i]);
                if (p.isValidFor(document, offset)) {
                    filtered.add(p);
                }
            } else {
                this.fIsFilteredSubset = false;
                this.fInvocationOffset = offset;
                this.fContentAssistant.fireSessionRestartEvent();
                this.fComputedProposals = this.computeProposals(this.fInvocationOffset);
                return this.fComputedProposals;
            }
            ++i;
        }
        return filtered.toArray(new ICompletionProposal[filtered.size()]);
    }

    public void setFocus() {
        if (Helper.okToUse((Widget)this.fProposalShell)) {
            this.fProposalShell.setFocus();
        }
    }

    private boolean canAutoInsert(ICompletionProposal proposal) {
        if (this.fContentAssistant.isAutoInserting()) {
            if (proposal instanceof ICompletionProposalExtension4) {
                ICompletionProposalExtension4 ext = (ICompletionProposalExtension4)((Object)proposal);
                return ext.isAutoInsertable();
            }
            return true;
        }
        return false;
    }

    public String incrementalComplete() {
        if (Helper.okToUse((Widget)this.fProposalShell) && this.fFilteredProposals != null) {
            if (this.fLastCompletionOffset == this.fFilterOffset) {
                this.handleRepeatedInvocation();
            } else {
                this.fLastCompletionOffset = this.fFilterOffset;
                this.completeCommonPrefix();
            }
        } else {
            Control control = this.fContentAssistSubjectControlAdapter.getControl();
            if (this.fKeyListener == null) {
                this.fKeyListener = new ProposalSelectionListener();
            }
            if (!Helper.okToUse((Widget)this.fProposalShell) && !control.isDisposed()) {
                this.fContentAssistSubjectControlAdapter.addKeyListener(this.fKeyListener);
            }
            BusyIndicator.showWhile((Display)control.getDisplay(), (Runnable)new Runnable(){

                public void run() {
                    int count;
                    CompletionProposalPopup.this.fInvocationOffset = ((CompletionProposalPopup)CompletionProposalPopup.this).fContentAssistSubjectControlAdapter.getSelectedRange().x;
                    CompletionProposalPopup.this.fFilterOffset = CompletionProposalPopup.this.fInvocationOffset;
                    CompletionProposalPopup.this.fLastCompletionOffset = CompletionProposalPopup.this.fFilterOffset;
                    CompletionProposalPopup.this.fFilteredProposals = CompletionProposalPopup.this.computeProposals(CompletionProposalPopup.this.fInvocationOffset);
                    int n = count = CompletionProposalPopup.this.fFilteredProposals == null ? 0 : CompletionProposalPopup.this.fFilteredProposals.length;
                    if (count == 0 && CompletionProposalPopup.this.hideWhenNoProposals(false)) {
                        return;
                    }
                    if (count == 1 && CompletionProposalPopup.this.canAutoInsert(CompletionProposalPopup.this.fFilteredProposals[0])) {
                        CompletionProposalPopup.this.insertProposal(CompletionProposalPopup.this.fFilteredProposals[0], '\u0000', 0, CompletionProposalPopup.this.fInvocationOffset);
                        CompletionProposalPopup.this.hide();
                    } else {
                        CompletionProposalPopup.this.ensureDocumentListenerInstalled();
                        if (count > 0 && CompletionProposalPopup.this.completeCommonPrefix()) {
                            CompletionProposalPopup.this.hide();
                        } else {
                            CompletionProposalPopup.this.fComputedProposals = CompletionProposalPopup.this.fFilteredProposals;
                            CompletionProposalPopup.this.createProposalSelector();
                            CompletionProposalPopup.this.setProposals(CompletionProposalPopup.this.fComputedProposals, false);
                            CompletionProposalPopup.this.displayProposals();
                        }
                    }
                }
            });
        }
        return this.getErrorMessage();
    }

    private boolean completeCommonPrefix() {
        if (this.fFilteredProposals.length == 1) {
            if (this.canAutoInsert(this.fFilteredProposals[0])) {
                this.insertProposal(this.fFilteredProposals[0], '\u0000', 0, this.fFilterOffset);
                this.hide();
                return true;
            }
            return false;
        }
        IDocument document = this.fContentAssistSubjectControlAdapter.getDocument();
        StringBuffer rightCasePostfix = null;
        ArrayList<ICompletionProposal> rightCase = new ArrayList<ICompletionProposal>();
        boolean isWrongCaseMatch = false;
        CharSequence wrongCasePrefix = null;
        int wrongCasePrefixStart = 0;
        StringBuffer wrongCasePostfix = null;
        ArrayList<ICompletionProposal> wrongCase = new ArrayList<ICompletionProposal>();
        int i = 0;
        while (i < this.fFilteredProposals.length) {
            block22: {
                ICompletionProposal proposal = this.fFilteredProposals[i];
                if (!(proposal instanceof ICompletionProposalExtension3)) {
                    return false;
                }
                int start = ((ICompletionProposalExtension3)((Object)proposal)).getPrefixCompletionStart(this.fContentAssistSubjectControlAdapter.getDocument(), this.fFilterOffset);
                CharSequence insertion = ((ICompletionProposalExtension3)((Object)proposal)).getPrefixCompletionText(this.fContentAssistSubjectControlAdapter.getDocument(), this.fFilterOffset);
                if (insertion == null) {
                    insertion = TextProcessor.deprocess((String)proposal.getDisplayString());
                }
                try {
                    int prefixLength = this.fFilterOffset - start;
                    int relativeCompletionOffset = Math.min(insertion.length(), prefixLength);
                    String prefix = document.get(start, prefixLength);
                    if (!isWrongCaseMatch && insertion.toString().startsWith(prefix)) {
                        isWrongCaseMatch = false;
                        rightCase.add(proposal);
                        CharSequence newPostfix = insertion.subSequence(relativeCompletionOffset, insertion.length());
                        if (rightCasePostfix == null) {
                            rightCasePostfix = new StringBuffer(newPostfix.toString());
                        } else {
                            this.truncatePostfix(rightCasePostfix, newPostfix);
                        }
                        break block22;
                    }
                    if (i == 0 || isWrongCaseMatch) {
                        CharSequence newPrefix = insertion.subSequence(0, relativeCompletionOffset);
                        if (this.isPrefixCompatible(wrongCasePrefix, wrongCasePrefixStart, newPrefix, start, document)) {
                            isWrongCaseMatch = true;
                            wrongCasePrefix = newPrefix;
                            wrongCasePrefixStart = start;
                            CharSequence newPostfix = insertion.subSequence(relativeCompletionOffset, insertion.length());
                            if (wrongCasePostfix == null) {
                                wrongCasePostfix = new StringBuffer(newPostfix.toString());
                            } else {
                                this.truncatePostfix(wrongCasePostfix, newPostfix);
                            }
                            wrongCase.add(proposal);
                            break block22;
                        }
                        return false;
                    }
                    return false;
                }
                catch (BadLocationException badLocationException) {
                    return false;
                }
            }
            if (rightCasePostfix != null && rightCasePostfix.length() == 0 && rightCase.size() > 1) {
                return false;
            }
            ++i;
        }
        if (rightCase.size() == 1) {
            ICompletionProposal proposal = (ICompletionProposal)rightCase.get(0);
            if (this.canAutoInsert(proposal) && rightCasePostfix.length() > 0) {
                this.insertProposal(proposal, '\u0000', 0, this.fInvocationOffset);
                this.hide();
                return true;
            }
            return false;
        }
        if (isWrongCaseMatch && wrongCase.size() == 1) {
            ICompletionProposal proposal = (ICompletionProposal)wrongCase.get(0);
            if (this.canAutoInsert(proposal)) {
                this.insertProposal(proposal, '\u0000', 0, this.fInvocationOffset);
                this.hide();
                return true;
            }
            return false;
        }
        CharSequence prefix = isWrongCaseMatch ? wrongCasePrefix : "";
        StringBuffer postfix = isWrongCaseMatch ? wrongCasePostfix : rightCasePostfix;
        if (prefix == null || postfix == null) {
            return false;
        }
        try {
            int to = Math.min(document.getLength(), this.fFilterOffset + postfix.length());
            StringBuffer inDocument = new StringBuffer(document.get(this.fFilterOffset, to - this.fFilterOffset));
            this.truncatePostfix(inDocument, postfix);
            document.replace(this.fFilterOffset - prefix.length(), prefix.length() + inDocument.length(), String.valueOf(prefix.toString()) + postfix.toString());
            this.fContentAssistSubjectControlAdapter.setSelectedRange(this.fFilterOffset + postfix.length(), 0);
            this.fContentAssistSubjectControlAdapter.revealRange(this.fFilterOffset + postfix.length(), 0);
            this.fFilterOffset += postfix.length();
            this.fLastCompletionOffset = this.fFilterOffset;
            return false;
        }
        catch (BadLocationException badLocationException) {
            return false;
        }
    }

    private boolean isPrefixCompatible(CharSequence oneSequence, int oneOffset, CharSequence twoSequence, int twoOffset, IDocument document) throws BadLocationException {
        if (oneSequence == null || twoSequence == null) {
            return true;
        }
        int min = Math.min(oneOffset, twoOffset);
        int oneEnd = oneOffset + oneSequence.length();
        int twoEnd = twoOffset + twoSequence.length();
        String one = String.valueOf(document.get(oneOffset, min - oneOffset)) + oneSequence + document.get(oneEnd, Math.min(this.fFilterOffset, this.fFilterOffset - oneEnd));
        String two = String.valueOf(document.get(twoOffset, min - twoOffset)) + twoSequence + document.get(twoEnd, Math.min(this.fFilterOffset, this.fFilterOffset - twoEnd));
        return one.equals(two);
    }

    private void truncatePostfix(StringBuffer buffer, CharSequence sequence) {
        int min = Math.min(buffer.length(), sequence.length());
        int c = 0;
        while (c < min) {
            if (sequence.charAt(c) != buffer.charAt(c)) {
                buffer.delete(c, buffer.length());
                return;
            }
            ++c;
        }
        buffer.delete(min, buffer.length());
    }

    void setMessage(String message) {
        Assert.isNotNull((Object)message);
        if (this.isActive() && this.fMessageText != null) {
            this.fMessageText.setText(String.valueOf(message) + " ");
        }
    }

    void setEmptyMessage(String message) {
        Assert.isNotNull((Object)message);
        this.fEmptyMessage = message;
    }

    public void setStatusLineVisible(boolean show) {
        if (!this.isActive() || show == (this.fMessageText != null)) {
            return;
        }
        if (show) {
            this.createMessageText();
        } else {
            this.fMessageText.dispose();
            this.fMessageText = null;
        }
        this.fProposalShell.layout();
    }

    void switchedPositionToAbove(boolean above) {
        if (this.fAdditionalInfoController != null) {
            this.fAdditionalInfoController.setFallbackAnchors(new AbstractInformationControlManager.Anchor[]{AbstractInformationControlManager.ANCHOR_RIGHT, AbstractInformationControlManager.ANCHOR_LEFT, above ? AbstractInformationControlManager.ANCHOR_TOP : AbstractInformationControlManager.ANCHOR_BOTTOM});
        }
    }

    IHandler createProposalSelectionHandler(int operationCode) {
        return new ProposalSelectionHandler(operationCode);
    }

    private final class CommandKeyListener
    extends KeyAdapter {
        private final KeySequence fCommandSequence;

        private CommandKeyListener(KeySequence keySequence) {
            this.fCommandSequence = keySequence;
        }

        public void keyPressed(KeyEvent e) {
            if (!Helper.okToUse((Widget)CompletionProposalPopup.this.fProposalShell)) {
                return;
            }
            int accelerator = SWTKeySupport.convertEventToUnmodifiedAccelerator((KeyEvent)e);
            KeySequence sequence = KeySequence.getInstance((KeyStroke)SWTKeySupport.convertAcceleratorToKeyStroke((int)accelerator));
            if (sequence.equals((Object)this.fCommandSequence)) {
                if (CompletionProposalPopup.this.fContentAssistant.isPrefixCompletionEnabled()) {
                    CompletionProposalPopup.this.incrementalComplete();
                } else {
                    CompletionProposalPopup.this.showProposals(false);
                }
            }
        }
    }

    private static final class EmptyProposal
    implements ICompletionProposal,
    ICompletionProposalExtension {
        String fDisplayString;
        int fOffset;

        private EmptyProposal() {
        }

        public void apply(IDocument document) {
        }

        public Point getSelection(IDocument document) {
            return new Point(this.fOffset, 0);
        }

        public IContextInformation getContextInformation() {
            return null;
        }

        public Image getImage() {
            return null;
        }

        public String getDisplayString() {
            return this.fDisplayString;
        }

        public String getAdditionalProposalInfo() {
            return null;
        }

        public void apply(IDocument document, char trigger, int offset) {
        }

        public boolean isValidFor(IDocument document, int offset) {
            return false;
        }

        public char[] getTriggerCharacters() {
            return null;
        }

        public int getContextInformationPosition() {
            return -1;
        }
    }

    final class ProposalSelectionHandler
    extends AbstractHandler {
        static final int SELECT_NEXT = 1;
        static final int SELECT_PREVIOUS = 2;
        private final int fOperationCode;

        public ProposalSelectionHandler(int operationCode) {
            Assert.isLegal((operationCode == 1 || operationCode == 2 ? 1 : 0) != 0);
            this.fOperationCode = operationCode;
        }

        public Object execute(ExecutionEvent event) throws ExecutionException {
            int itemCount = CompletionProposalPopup.this.fProposalTable.getItemCount();
            int selectionIndex = CompletionProposalPopup.this.fProposalTable.getSelectionIndex();
            switch (this.fOperationCode) {
                case 1: {
                    if (++selectionIndex <= itemCount - 1) break;
                    selectionIndex = 0;
                    break;
                }
                case 2: {
                    if (--selectionIndex >= 0) break;
                    selectionIndex = itemCount - 1;
                }
            }
            CompletionProposalPopup.this.selectProposal(selectionIndex, false);
            return null;
        }
    }

    private final class ProposalSelectionListener
    implements KeyListener {
        private ProposalSelectionListener() {
        }

        public void keyPressed(KeyEvent e) {
            int index;
            if (!Helper.okToUse((Widget)CompletionProposalPopup.this.fProposalShell)) {
                return;
            }
            if (e.character == '\u0000' && e.keyCode == 262144 && (index = CompletionProposalPopup.this.fProposalTable.getSelectionIndex()) >= 0) {
                CompletionProposalPopup.this.selectProposal(index, true);
            }
        }

        public void keyReleased(KeyEvent e) {
            int index;
            if (!Helper.okToUse((Widget)CompletionProposalPopup.this.fProposalShell)) {
                return;
            }
            if (e.character == '\u0000' && e.keyCode == 262144 && (index = CompletionProposalPopup.this.fProposalTable.getSelectionIndex()) >= 0) {
                CompletionProposalPopup.this.selectProposal(index, false);
            }
        }
    }
}

