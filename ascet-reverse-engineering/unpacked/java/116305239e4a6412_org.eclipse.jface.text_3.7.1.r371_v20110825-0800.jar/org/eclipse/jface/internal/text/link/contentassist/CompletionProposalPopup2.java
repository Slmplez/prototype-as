/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.viewers.StyledString
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.text.link.contentassist;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jface.internal.text.TableOwnerDrawSupport;
import org.eclipse.jface.internal.text.link.contentassist.AdditionalInfoController2;
import org.eclipse.jface.internal.text.link.contentassist.ContentAssistant2;
import org.eclipse.jface.internal.text.link.contentassist.Helper2;
import org.eclipse.jface.internal.text.link.contentassist.IContentAssistListener2;
import org.eclipse.jface.internal.text.link.contentassist.PopupCloser2;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IEditingSupport;
import org.eclipse.jface.text.IEditingSupportRegistry;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.IRewriteTarget;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension2;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension6;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.viewers.StyledString;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Widget;

class CompletionProposalPopup2
implements IContentAssistListener2 {
    private ITextViewer fViewer;
    private ContentAssistant2 fContentAssistant;
    private AdditionalInfoController2 fAdditionalInfoController;
    private PopupCloser2 fPopupCloser = new PopupCloser2();
    private Shell fProposalShell;
    private Table fProposalTable;
    private boolean fInserting = false;
    private KeyListener fKeyListener;
    private List fDocumentEvents = new ArrayList();
    private IDocumentListener fDocumentListener;
    private long fInvocationCounter = 0L;
    private long fInvocationProcessedCounter = 0L;
    private ICompletionProposal[] fFilteredProposals;
    private ICompletionProposal[] fComputedProposals;
    private int fInvocationOffset;
    private int fFilterOffset;
    private String fLineDelimiter;
    private ICompletionProposal fLastProposal;
    private boolean fIsColoredLabelsSupportEnabled = false;
    private final IEditingSupport fFocusEditingSupport = new IEditingSupport(){

        public boolean isOriginator(DocumentEvent event, IRegion focus) {
            return false;
        }

        public boolean ownsFocusShell() {
            return Helper2.okToUse((Widget)CompletionProposalPopup2.this.fProposalShell) && CompletionProposalPopup2.this.fProposalShell.isFocusControl() || Helper2.okToUse((Widget)CompletionProposalPopup2.this.fProposalTable) && CompletionProposalPopup2.this.fProposalTable.isFocusControl();
        }
    };
    private final IEditingSupport fModificationEditingSupport = new IEditingSupport(){

        public boolean isOriginator(DocumentEvent event, IRegion focus) {
            if (CompletionProposalPopup2.this.fViewer != null) {
                Point selection = CompletionProposalPopup2.this.fViewer.getSelectedRange();
                return selection.x <= focus.getOffset() + focus.getLength() && selection.x + selection.y >= focus.getOffset();
            }
            return false;
        }

        public boolean ownsFocusShell() {
            return false;
        }
    };

    public CompletionProposalPopup2(ContentAssistant2 contentAssistant, ITextViewer viewer, AdditionalInfoController2 infoController) {
        this.fContentAssistant = contentAssistant;
        this.fViewer = viewer;
        this.fAdditionalInfoController = infoController;
    }

    public String showProposals(boolean autoActivated) {
        int count;
        StyledText styledText;
        if (this.fKeyListener == null) {
            this.fKeyListener = new KeyListener(){

                public void keyPressed(KeyEvent e) {
                    int index;
                    if (!Helper2.okToUse((Widget)CompletionProposalPopup2.this.fProposalShell)) {
                        return;
                    }
                    if (e.character == '\u0000' && e.keyCode == 262144 && (index = CompletionProposalPopup2.this.fProposalTable.getSelectionIndex()) >= 0) {
                        CompletionProposalPopup2.this.selectProposal(index, true);
                    }
                }

                public void keyReleased(KeyEvent e) {
                    int index;
                    if (!Helper2.okToUse((Widget)CompletionProposalPopup2.this.fProposalShell)) {
                        return;
                    }
                    if (e.character == '\u0000' && e.keyCode == 262144 && (index = CompletionProposalPopup2.this.fProposalTable.getSelectionIndex()) >= 0) {
                        CompletionProposalPopup2.this.selectProposal(index, false);
                    }
                }
            };
        }
        if ((styledText = this.fViewer.getTextWidget()) != null && !styledText.isDisposed()) {
            styledText.addKeyListener(this.fKeyListener);
        }
        this.fInvocationOffset = this.fViewer.getSelectedRange().x;
        this.fComputedProposals = this.computeProposals(this.fInvocationOffset);
        int n = count = this.fComputedProposals == null ? 0 : this.fComputedProposals.length;
        if (count == 0) {
            if (!autoActivated) {
                styledText.getDisplay().beep();
            }
        } else if (count == 1 && !autoActivated && this.fContentAssistant.isAutoInserting()) {
            this.insertProposal(this.fComputedProposals[0], '\u0000', 0, this.fInvocationOffset);
        } else {
            if (this.fLineDelimiter == null) {
                this.fLineDelimiter = styledText.getLineDelimiter();
            }
            this.createProposalSelector();
            this.setProposals(this.fComputedProposals);
            this.resizeProposalSelector(true);
            this.displayProposals();
        }
        return this.getErrorMessage();
    }

    private ICompletionProposal[] computeProposals(int offset) {
        return this.fContentAssistant.computeCompletionProposals(this.fViewer, offset);
    }

    private String getErrorMessage() {
        return this.fContentAssistant.getErrorMessage();
    }

    private void createProposalSelector() {
        if (Helper2.okToUse((Widget)this.fProposalShell)) {
            return;
        }
        StyledText control = this.fViewer.getTextWidget();
        this.fProposalShell = new Shell(control.getShell(), 16384);
        this.fProposalTable = new Table((Composite)this.fProposalShell, 768);
        this.fIsColoredLabelsSupportEnabled = this.fContentAssistant.isColoredLabelsSupportEnabled();
        if (this.fIsColoredLabelsSupportEnabled) {
            TableOwnerDrawSupport.install(this.fProposalTable);
        }
        this.fProposalTable.setLocation(0, 0);
        if (this.fAdditionalInfoController != null) {
            this.fAdditionalInfoController.setSizeConstraints(50, 10, true, false);
        }
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        this.fProposalShell.setLayout((Layout)layout);
        GridData data = new GridData(1808);
        this.fProposalTable.setLayoutData((Object)data);
        this.fProposalShell.pack();
        Point currentLocation = this.fProposalShell.getLocation();
        Point newLocation = this.getLocation();
        if (newLocation.x < currentLocation.x && newLocation.y == currentLocation.y || newLocation.y < currentLocation.y) {
            this.fProposalShell.setLocation(newLocation);
        }
        if (this.fAdditionalInfoController != null) {
            this.fProposalShell.addControlListener(new ControlListener(){

                public void controlMoved(ControlEvent e) {
                }

                public void controlResized(ControlEvent e) {
                    CompletionProposalPopup2.this.fAdditionalInfoController.setSizeConstraints(50, 10, true, false);
                }
            });
        }
        this.fProposalShell.setBackground(control.getDisplay().getSystemColor(2));
        Color c = control.getDisplay().getSystemColor(29);
        this.fProposalTable.setBackground(c);
        c = control.getDisplay().getSystemColor(28);
        this.fProposalTable.setForeground(c);
        this.fProposalTable.addSelectionListener(new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
            }

            public void widgetDefaultSelected(SelectionEvent e) {
                CompletionProposalPopup2.this.selectProposalWithMask(e.stateMask);
            }
        });
        this.fPopupCloser.install(this.fContentAssistant, this.fProposalTable);
        this.fProposalShell.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                CompletionProposalPopup2.this.unregister();
            }
        });
        this.fProposalTable.setHeaderVisible(false);
        this.fContentAssistant.addToLayout(this, this.fProposalShell, 0, this.fContentAssistant.getSelectionOffset());
    }

    private ICompletionProposal getSelectedProposal() {
        int i = this.fProposalTable.getSelectionIndex();
        if (i < 0 || i >= this.fFilteredProposals.length) {
            return null;
        }
        return this.fFilteredProposals[i];
    }

    private boolean selectProposalWithMask(int stateMask) {
        if (this.fInvocationCounter != this.fInvocationProcessedCounter && !this.doFilterProposals()) {
            return false;
        }
        ICompletionProposal p = this.getSelectedProposal();
        this.hide();
        if (p != null) {
            this.insertProposal(p, '\u0000', stateMask, this.fViewer.getSelectedRange().x);
            return true;
        }
        return false;
    }

    private void insertProposal(ICompletionProposal p, char trigger, int stateMask, int offset) {
        this.fInserting = true;
        IRewriteTarget target = null;
        IEditingSupportRegistry registry = null;
        try {
            IContextInformation info;
            Object e;
            IDocument document = this.fViewer.getDocument();
            if (this.fViewer instanceof ITextViewerExtension) {
                ITextViewerExtension extension = (ITextViewerExtension)((Object)this.fViewer);
                target = extension.getRewriteTarget();
            }
            if (target != null) {
                target.beginCompoundChange();
            }
            if (this.fViewer instanceof IEditingSupportRegistry) {
                registry = (IEditingSupportRegistry)((Object)this.fViewer);
                registry.register(this.fModificationEditingSupport);
            }
            if (p instanceof ICompletionProposalExtension2) {
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
                this.fViewer.setSelectedRange(selection.x, selection.y);
                this.fViewer.revealRange(selection.x, selection.y);
            }
            if ((info = p.getContextInformation()) != null) {
                int position;
                if (p instanceof ICompletionProposalExtension) {
                    ICompletionProposalExtension e2 = (ICompletionProposalExtension)((Object)p);
                    position = e2.getContextInformationPosition();
                } else {
                    if (selection == null) {
                        selection = this.fViewer.getSelectedRange();
                    }
                    position = selection.x + selection.y;
                }
                this.fContentAssistant.showContextInformation(info, position);
            }
            this.fContentAssistant.fireProposalChosen(p);
        }
        finally {
            if (target != null) {
                target.endCompoundChange();
            }
            if (registry != null) {
                registry.unregister(this.fModificationEditingSupport);
            }
            this.fInserting = false;
        }
    }

    public boolean hasFocus() {
        if (Helper2.okToUse((Widget)this.fProposalShell)) {
            return this.fProposalShell.isFocusControl() || this.fProposalTable.isFocusControl();
        }
        return false;
    }

    public void hide() {
        this.unregister();
        if (this.fViewer instanceof IEditingSupportRegistry) {
            IEditingSupportRegistry registry = (IEditingSupportRegistry)((Object)this.fViewer);
            registry.unregister(this.fFocusEditingSupport);
        }
        if (Helper2.okToUse((Widget)this.fProposalShell)) {
            this.fContentAssistant.removeContentAssistListener(this, 1);
            this.fPopupCloser.uninstall();
            Shell tempShell = this.fProposalShell;
            this.fProposalShell = null;
            tempShell.setVisible(false);
            tempShell.dispose();
        }
    }

    private void unregister() {
        if (this.fDocumentListener != null) {
            IDocument document = this.fViewer.getDocument();
            if (document != null) {
                document.removeDocumentListener(this.fDocumentListener);
            }
            this.fDocumentListener = null;
        }
        this.fDocumentEvents.clear();
        StyledText styledText = this.fViewer.getTextWidget();
        if (this.fKeyListener != null && styledText != null && !styledText.isDisposed()) {
            styledText.removeKeyListener(this.fKeyListener);
        }
        if (this.fLastProposal != null) {
            if (this.fLastProposal instanceof ICompletionProposalExtension2) {
                ICompletionProposalExtension2 extension = (ICompletionProposalExtension2)((Object)this.fLastProposal);
                extension.unselected(this.fViewer);
            }
            this.fLastProposal = null;
        }
        this.fFilteredProposals = null;
        this.fContentAssistant.possibleCompletionsClosed();
    }

    public boolean isActive() {
        return this.fProposalShell != null && !this.fProposalShell.isDisposed();
    }

    private void setProposals(ICompletionProposal[] proposals) {
        if (Helper2.okToUse((Widget)this.fProposalTable)) {
            ICompletionProposal oldProposal = this.getSelectedProposal();
            if (oldProposal instanceof ICompletionProposalExtension2) {
                ((ICompletionProposalExtension2)((Object)oldProposal)).unselected(this.fViewer);
            }
            this.fFilteredProposals = proposals;
            int selectionIndex = 0;
            this.fProposalTable.setRedraw(false);
            try {
                this.fProposalTable.removeAll();
                Point selection = this.fViewer.getSelectedRange();
                int endOffset = selection.x + selection.y;
                IDocument document = this.fViewer.getDocument();
                boolean validate = false;
                if (selection.y != 0 && document != null) {
                    validate = true;
                }
                int i = 0;
                while (i < proposals.length) {
                    String displayString;
                    ICompletionProposal p = proposals[i];
                    TableItem item = new TableItem(this.fProposalTable, 0);
                    if (p.getImage() != null) {
                        item.setImage(p.getImage());
                    }
                    StyleRange[] styleRanges = null;
                    if (this.fIsColoredLabelsSupportEnabled && p instanceof ICompletionProposalExtension6) {
                        StyledString styledString = ((ICompletionProposalExtension6)((Object)p)).getStyledDisplayString();
                        displayString = styledString.getString();
                        styleRanges = styledString.getStyleRanges();
                    } else {
                        displayString = p.getDisplayString();
                    }
                    item.setText(displayString);
                    if (this.fIsColoredLabelsSupportEnabled) {
                        TableOwnerDrawSupport.storeStyleRanges(item, 0, styleRanges);
                    }
                    item.setData((Object)p);
                    if (validate && this.validateProposal(document, p, endOffset, null)) {
                        selectionIndex = i;
                        validate = false;
                    }
                    ++i;
                }
            }
            finally {
                this.fProposalTable.setRedraw(true);
            }
            this.resizeProposalSelector(false);
            this.selectProposal(selectionIndex, false);
        }
    }

    private void resizeProposalSelector(boolean adjustWidth) {
        int width = adjustWidth ? -1 : ((GridData)this.fProposalTable.getLayoutData()).widthHint;
        Point size = this.fProposalTable.computeSize(width, -1, true);
        GridData data = new GridData(1808);
        data.widthHint = adjustWidth ? Math.min(size.x, 300) : width;
        data.heightHint = Math.min(this.getTableHeightHint(this.fProposalTable, this.fProposalTable.getItemCount()), this.getTableHeightHint(this.fProposalTable, 10));
        this.fProposalTable.setLayoutData((Object)data);
        this.fProposalShell.layout(true);
        this.fProposalShell.pack();
        if (adjustWidth) {
            this.fProposalShell.setLocation(this.getLocation());
        }
    }

    private int getTableHeightHint(Table table, int rows) {
        if (table.getFont().equals((Object)JFaceResources.getDefaultFont())) {
            table.setFont(JFaceResources.getDialogFont());
        }
        int result = table.getItemHeight() * rows;
        if (table.getLinesVisible()) {
            result += table.getGridLineWidth() * (rows - 1);
        }
        return result;
    }

    private boolean validateProposal(IDocument document, ICompletionProposal p, int offset, DocumentEvent event) {
        ICompletionProposalExtension2 e;
        return p instanceof ICompletionProposalExtension2 ? (e = (ICompletionProposalExtension2)((Object)p)).validate(document, offset, event) : p instanceof ICompletionProposalExtension && (e = (ICompletionProposalExtension)((Object)p)).isValidFor(document, offset);
    }

    private Point getLocation() {
        StyledText text = this.fViewer.getTextWidget();
        Point selection = text.getSelection();
        Point p = text.getLocationAtOffset(selection.x);
        p.x -= this.fProposalShell.getBorderWidth();
        if (p.x < 0) {
            p.x = 0;
        }
        if (p.y < 0) {
            p.y = 0;
        }
        p = new Point(p.x, p.y + text.getLineHeight(selection.x));
        p = text.toDisplay(p);
        return p;
    }

    private void displayProposals() {
        if (this.fContentAssistant.addContentAssistListener(this, 1)) {
            IDocument document;
            if (this.fDocumentListener == null) {
                this.fDocumentListener = new IDocumentListener(){

                    public void documentAboutToBeChanged(DocumentEvent event) {
                        if (!CompletionProposalPopup2.this.fInserting) {
                            CompletionProposalPopup2.this.fDocumentEvents.add(event);
                        }
                    }

                    public void documentChanged(DocumentEvent event) {
                        if (!CompletionProposalPopup2.this.fInserting) {
                            CompletionProposalPopup2.this.filterProposals();
                        }
                    }
                };
            }
            if ((document = this.fViewer.getDocument()) != null) {
                document.addDocumentListener(this.fDocumentListener);
            }
            if (this.fViewer instanceof IEditingSupportRegistry) {
                IEditingSupportRegistry registry = (IEditingSupportRegistry)((Object)this.fViewer);
                registry.register(this.fFocusEditingSupport);
            }
            this.fProposalShell.setVisible(true);
            if (!Helper2.okToUse((Widget)this.fProposalShell)) {
                return;
            }
            if (this.fAdditionalInfoController != null) {
                this.fAdditionalInfoController.install((Control)this.fProposalTable);
                this.fAdditionalInfoController.handleTableSelectionChanged();
            }
        }
    }

    public boolean verifyKey(VerifyEvent e) {
        if (!Helper2.okToUse((Widget)this.fProposalShell)) {
            return true;
        }
        char key = e.character;
        if (key == '\u0000') {
            int newSelection = this.fProposalTable.getSelectionIndex();
            int visibleRows = this.fProposalTable.getSize().y / this.fProposalTable.getItemHeight() - 1;
            switch (e.keyCode) {
                case 0x1000003: 
                case 0x1000004: {
                    this.filterProposals();
                    return true;
                }
                case 0x1000001: {
                    if (--newSelection >= 0) break;
                    newSelection = this.fProposalTable.getItemCount() - 1;
                    break;
                }
                case 0x1000002: {
                    if (++newSelection <= this.fProposalTable.getItemCount() - 1) break;
                    newSelection = 0;
                    break;
                }
                case 0x1000006: {
                    if ((newSelection += visibleRows) < this.fProposalTable.getItemCount()) break;
                    newSelection = this.fProposalTable.getItemCount() - 1;
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
                    newSelection = this.fProposalTable.getItemCount() - 1;
                    break;
                }
                default: {
                    if (e.keyCode != SWT.MOD1 && e.keyCode != SWT.MOD2 && e.keyCode != SWT.MOD3 && e.keyCode != SWT.MOD4) {
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
                if ((e.stateMask & 0x40000) != 0) break;
                e.doit = !this.selectProposalWithMask(e.stateMask);
                break;
            }
            case '\t': {
                break;
            }
            default: {
                ICompletionProposalExtension t;
                char[] triggers;
                ICompletionProposal p = this.getSelectedProposal();
                if (!(p instanceof ICompletionProposalExtension) || !this.contains(triggers = (t = (ICompletionProposalExtension)((Object)p)).getTriggerCharacters(), key)) break;
                this.hide();
                e.doit = false;
                this.insertProposal(p, key, e.stateMask, this.fViewer.getSelectedRange().x);
            }
        }
        return true;
    }

    private void selectProposal(int index, boolean smartToggle) {
        ICompletionProposal proposal;
        ICompletionProposal oldProposal = this.getSelectedProposal();
        if (oldProposal instanceof ICompletionProposalExtension2) {
            ((ICompletionProposalExtension2)((Object)oldProposal)).unselected(this.fViewer);
        }
        if ((proposal = this.fFilteredProposals[index]) instanceof ICompletionProposalExtension2) {
            ((ICompletionProposalExtension2)((Object)proposal)).selected(this.fViewer, smartToggle);
        }
        this.fLastProposal = proposal;
        this.fProposalTable.setSelection(index);
        this.fProposalTable.showSelection();
        if (this.fAdditionalInfoController != null) {
            this.fAdditionalInfoController.handleTableSelectionChanged();
        }
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
        ++this.fInvocationCounter;
        StyledText control = this.fViewer.getTextWidget();
        control.getDisplay().asyncExec(new Runnable(){
            long fCounter;
            {
                this.fCounter = CompletionProposalPopup2.this.fInvocationCounter;
            }

            public void run() {
                if (this.fCounter != CompletionProposalPopup2.this.fInvocationCounter) {
                    return;
                }
                if (CompletionProposalPopup2.this.fInvocationProcessedCounter == CompletionProposalPopup2.this.fInvocationCounter) {
                    return;
                }
                CompletionProposalPopup2.this.doFilterProposals();
            }
        });
    }

    public boolean doFilterProposals() {
        ICompletionProposal[] proposals;
        int offset;
        block7: {
            this.fInvocationProcessedCounter = this.fInvocationCounter;
            offset = this.fViewer.getSelectedRange().x;
            proposals = null;
            try {
                try {
                    if (offset > -1) {
                        DocumentEvent event = TextUtilities.mergeProcessedDocumentEvents((List)this.fDocumentEvents);
                        proposals = this.computeFilteredProposals(offset, event);
                    }
                }
                catch (BadLocationException badLocationException) {
                    this.fDocumentEvents.clear();
                    break block7;
                }
            }
            catch (Throwable throwable) {
                this.fDocumentEvents.clear();
                throw throwable;
            }
            this.fDocumentEvents.clear();
        }
        this.fFilterOffset = offset;
        if (proposals != null && proposals.length > 0) {
            this.setProposals(proposals);
            return true;
        }
        this.hide();
        return false;
    }

    private ICompletionProposal[] computeFilteredProposals(int offset, DocumentEvent event) {
        if (offset == this.fInvocationOffset && event == null) {
            return this.fComputedProposals;
        }
        if (offset < this.fInvocationOffset) {
            return null;
        }
        ICompletionProposal[] proposals = this.fComputedProposals;
        if (offset > this.fFilterOffset) {
            proposals = this.fFilteredProposals;
        }
        if (proposals == null) {
            return null;
        }
        IDocument document = this.fViewer.getDocument();
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
                this.fInvocationOffset = offset;
                this.fComputedProposals = this.computeProposals(this.fInvocationOffset);
                return this.fComputedProposals;
            }
            ++i;
        }
        ICompletionProposal[] p = new ICompletionProposal[filtered.size()];
        filtered.toArray(p);
        return p;
    }

    public void setFocus() {
        if (Helper2.okToUse((Widget)this.fProposalShell)) {
            this.fProposalShell.setFocus();
        }
    }
}

