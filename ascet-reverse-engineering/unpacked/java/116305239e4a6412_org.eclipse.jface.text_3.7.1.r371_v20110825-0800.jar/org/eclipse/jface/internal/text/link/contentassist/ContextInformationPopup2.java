/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.text.link.contentassist;

import java.util.Stack;
import org.eclipse.jface.internal.text.link.contentassist.ContentAssistant2;
import org.eclipse.jface.internal.text.link.contentassist.Helper2;
import org.eclipse.jface.internal.text.link.contentassist.IContentAssistListener2;
import org.eclipse.jface.internal.text.link.contentassist.PopupCloser2;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.TextPresentation;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.contentassist.IContextInformationExtension;
import org.eclipse.jface.text.contentassist.IContextInformationPresenter;
import org.eclipse.jface.text.contentassist.IContextInformationValidator;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Widget;

class ContextInformationPopup2
implements IContentAssistListener2 {
    private ITextViewer fViewer;
    private ContentAssistant2 fContentAssistant;
    private PopupCloser2 fPopupCloser = new PopupCloser2();
    private Shell fContextSelectorShell;
    private Table fContextSelectorTable;
    private IContextInformation[] fContextSelectorInput;
    private String fLineDelimiter = null;
    private Shell fContextInfoPopup;
    private StyledText fContextInfoText;
    private TextPresentation fTextPresentation;
    private Stack fContextFrameStack = new Stack();

    public ContextInformationPopup2(ContentAssistant2 contentAssistant, ITextViewer viewer) {
        this.fContentAssistant = contentAssistant;
        this.fViewer = viewer;
    }

    public String showContextProposals(boolean autoActivated) {
        final StyledText styledText = this.fViewer.getTextWidget();
        BusyIndicator.showWhile((Display)styledText.getDisplay(), (Runnable)new Runnable(){

            public void run() {
                int count;
                int position = ((ContextInformationPopup2)ContextInformationPopup2.this).fViewer.getSelectedRange().x;
                IContextInformation[] contexts = ContextInformationPopup2.this.computeContextInformation(position);
                int n = count = contexts == null ? 0 : contexts.length;
                if (count == 1) {
                    ContextInformationPopup2.this.internalShowContextInfo(contexts[0], position);
                } else if (count > 0) {
                    if (ContextInformationPopup2.this.fLineDelimiter == null) {
                        ContextInformationPopup2.this.fLineDelimiter = styledText.getLineDelimiter();
                    }
                    ContextInformationPopup2.this.createContextSelector();
                    ContextInformationPopup2.this.setContexts(contexts);
                    ContextInformationPopup2.this.displayContextSelector();
                    ContextInformationPopup2.this.hideContextInfoPopup();
                }
            }
        });
        return this.getErrorMessage();
    }

    public void showContextInformation(final IContextInformation info, final int position) {
        StyledText control = this.fViewer.getTextWidget();
        BusyIndicator.showWhile((Display)control.getDisplay(), (Runnable)new Runnable(){

            public void run() {
                ContextInformationPopup2.this.internalShowContextInfo(info, position);
                ContextInformationPopup2.this.hideContextSelector();
            }
        });
    }

    private void internalShowContextInfo(IContextInformation information, int offset) {
        IContextInformationValidator validator = this.fContentAssistant.getContextInformationValidator(this.fViewer, offset);
        if (validator != null) {
            ContextFrame current = new ContextFrame();
            current.fInformation = information;
            int n = current.fBeginOffset = information instanceof IContextInformationExtension ? ((IContextInformationExtension)((Object)information)).getContextInformationPosition() : offset;
            if (current.fBeginOffset == -1) {
                current.fBeginOffset = offset;
            }
            current.fOffset = offset;
            current.fVisibleOffset = this.fViewer.getTextWidget().getSelectionRange().x - (offset - current.fBeginOffset);
            current.fValidator = validator;
            current.fPresenter = this.fContentAssistant.getContextInformationPresenter(this.fViewer, offset);
            this.fContextFrameStack.push(current);
            this.internalShowContextFrame(current, this.fContextFrameStack.size() == 1);
        }
    }

    private void internalShowContextFrame(ContextFrame frame, boolean initial) {
        frame.fValidator.install(frame.fInformation, this.fViewer, frame.fOffset);
        if (frame.fPresenter != null) {
            if (this.fTextPresentation == null) {
                this.fTextPresentation = new TextPresentation();
            }
            frame.fPresenter.install(frame.fInformation, this.fViewer, frame.fBeginOffset);
            frame.fPresenter.updatePresentation(frame.fOffset, this.fTextPresentation);
        }
        this.createContextInfoPopup();
        this.fContextInfoText.setText(frame.fInformation.getInformationDisplayString());
        if (this.fTextPresentation != null) {
            TextPresentation.applyTextPresentation(this.fTextPresentation, this.fContextInfoText);
        }
        this.resize();
        if (initial) {
            if (this.fContentAssistant.addContentAssistListener(this, 2)) {
                this.fContentAssistant.addToLayout(this, this.fContextInfoPopup, 2, frame.fVisibleOffset);
                this.fContextInfoPopup.setVisible(true);
            }
        } else {
            this.fContentAssistant.layout(2, frame.fVisibleOffset);
        }
    }

    private IContextInformation[] computeContextInformation(int position) {
        return this.fContentAssistant.computeContextInformation(this.fViewer, position);
    }

    private String getErrorMessage() {
        return this.fContentAssistant.getErrorMessage();
    }

    private void createContextInfoPopup() {
        if (Helper2.okToUse((Widget)this.fContextInfoPopup)) {
            return;
        }
        StyledText control = this.fViewer.getTextWidget();
        Display display = control.getDisplay();
        this.fContextInfoPopup = new Shell(control.getShell(), 16392);
        this.fContextInfoPopup.setBackground(display.getSystemColor(2));
        this.fContextInfoText = new StyledText((Composite)this.fContextInfoPopup, 10);
        Color c = this.fContentAssistant.getContextInformationPopupBackground();
        if (c == null) {
            c = display.getSystemColor(29);
        }
        this.fContextInfoText.setBackground(c);
        c = this.fContentAssistant.getContextInformationPopupForeground();
        if (c == null) {
            c = display.getSystemColor(28);
        }
        this.fContextInfoText.setForeground(c);
    }

    private void resize() {
        Point size = this.fContextInfoText.computeSize(-1, -1, true);
        size.x += 3;
        this.fContextInfoText.setSize(size);
        this.fContextInfoText.setLocation(1, 1);
        size.x += 2;
        size.y += 2;
        this.fContextInfoPopup.setSize(size);
    }

    private void hideContextInfoPopup() {
        if (Helper2.okToUse((Widget)this.fContextInfoPopup)) {
            int size = this.fContextFrameStack.size();
            if (size > 0) {
                this.fContextFrameStack.pop();
                --size;
            }
            if (size > 0) {
                ContextFrame current = (ContextFrame)this.fContextFrameStack.peek();
                this.internalShowContextFrame(current, false);
            } else {
                this.fContentAssistant.removeContentAssistListener(this, 2);
                this.fContextInfoPopup.setVisible(false);
                this.fContextInfoPopup.dispose();
                this.fContextInfoPopup = null;
                if (this.fTextPresentation != null) {
                    this.fTextPresentation.clear();
                    this.fTextPresentation = null;
                }
            }
        }
        if (this.fContextInfoPopup == null) {
            this.fContentAssistant.contextInformationClosed();
        }
    }

    private void createContextSelector() {
        if (Helper2.okToUse((Widget)this.fContextSelectorShell)) {
            return;
        }
        StyledText control = this.fViewer.getTextWidget();
        this.fContextSelectorShell = new Shell(control.getShell(), 16392);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        this.fContextSelectorShell.setLayout((Layout)layout);
        this.fContextSelectorShell.setBackground(control.getDisplay().getSystemColor(2));
        this.fContextSelectorTable = new Table((Composite)this.fContextSelectorShell, 768);
        this.fContextSelectorTable.setLocation(1, 1);
        GridData gd = new GridData(1808);
        gd.heightHint = this.fContextSelectorTable.getItemHeight() * 10;
        gd.widthHint = 300;
        this.fContextSelectorTable.setLayoutData((Object)gd);
        this.fContextSelectorShell.pack(true);
        Color c = this.fContentAssistant.getContextSelectorBackground();
        if (c == null) {
            c = control.getDisplay().getSystemColor(29);
        }
        this.fContextSelectorTable.setBackground(c);
        c = this.fContentAssistant.getContextSelectorForeground();
        if (c == null) {
            c = control.getDisplay().getSystemColor(28);
        }
        this.fContextSelectorTable.setForeground(c);
        this.fContextSelectorTable.addSelectionListener(new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
            }

            public void widgetDefaultSelected(SelectionEvent e) {
                ContextInformationPopup2.this.insertSelectedContext();
                ContextInformationPopup2.this.hideContextSelector();
            }
        });
        this.fPopupCloser.install(this.fContentAssistant, this.fContextSelectorTable);
        this.fContextSelectorTable.setHeaderVisible(false);
        this.fContentAssistant.addToLayout(this, this.fContextSelectorShell, 1, this.fContentAssistant.getSelectionOffset());
    }

    private void insertSelectedContext() {
        int i = this.fContextSelectorTable.getSelectionIndex();
        if (i < 0 || i >= this.fContextSelectorInput.length) {
            return;
        }
        int position = this.fViewer.getSelectedRange().x;
        this.internalShowContextInfo(this.fContextSelectorInput[i], position);
    }

    private void setContexts(IContextInformation[] contexts) {
        if (Helper2.okToUse((Widget)this.fContextSelectorTable)) {
            this.fContextSelectorInput = contexts;
            this.fContextSelectorTable.setRedraw(false);
            this.fContextSelectorTable.removeAll();
            int i = 0;
            while (i < contexts.length) {
                IContextInformation t = contexts[i];
                TableItem item = new TableItem(this.fContextSelectorTable, 0);
                if (t.getImage() != null) {
                    item.setImage(t.getImage());
                }
                item.setText(t.getContextDisplayString());
                ++i;
            }
            this.fContextSelectorTable.select(0);
            this.fContextSelectorTable.setRedraw(true);
        }
    }

    private void displayContextSelector() {
        if (this.fContentAssistant.addContentAssistListener(this, 0)) {
            this.fContextSelectorShell.setVisible(true);
        }
    }

    private void hideContextSelector() {
        if (Helper2.okToUse((Widget)this.fContextSelectorShell)) {
            this.fContentAssistant.removeContentAssistListener(this, 0);
            this.fPopupCloser.uninstall();
            this.fContextSelectorShell.setVisible(false);
            this.fContextSelectorShell.dispose();
            this.fContextSelectorShell = null;
        }
        if (!Helper2.okToUse((Widget)this.fContextInfoPopup)) {
            this.fContentAssistant.contextInformationClosed();
        }
    }

    public boolean hasFocus() {
        if (Helper2.okToUse((Widget)this.fContextSelectorShell)) {
            return this.fContextSelectorShell.isFocusControl() || this.fContextSelectorTable.isFocusControl();
        }
        return false;
    }

    public void hide() {
        this.hideContextSelector();
        this.hideContextInfoPopup();
    }

    public boolean isActive() {
        return Helper2.okToUse((Widget)this.fContextInfoPopup) || Helper2.okToUse((Widget)this.fContextSelectorShell);
    }

    public boolean verifyKey(VerifyEvent e) {
        if (Helper2.okToUse((Widget)this.fContextSelectorShell)) {
            return this.contextSelectorKeyPressed(e);
        }
        if (Helper2.okToUse((Widget)this.fContextInfoPopup)) {
            return this.contextInfoPopupKeyPressed((KeyEvent)e);
        }
        return true;
    }

    private boolean contextSelectorKeyPressed(VerifyEvent e) {
        char key = e.character;
        if (key == '\u0000') {
            int change;
            int visibleRows = this.fContextSelectorTable.getSize().y / this.fContextSelectorTable.getItemHeight() - 1;
            int selection = this.fContextSelectorTable.getSelectionIndex();
            switch (e.keyCode) {
                case 0x1000001: {
                    change = this.fContextSelectorTable.getSelectionIndex() > 0 ? -1 : 0;
                    break;
                }
                case 0x1000002: {
                    change = this.fContextSelectorTable.getSelectionIndex() < this.fContextSelectorTable.getItemCount() - 1 ? 1 : 0;
                    break;
                }
                case 0x1000006: {
                    change = visibleRows;
                    if (selection + change < this.fContextSelectorTable.getItemCount()) break;
                    change = this.fContextSelectorTable.getItemCount() - selection;
                    break;
                }
                case 0x1000005: {
                    change = -visibleRows;
                    if (selection + change >= 0) break;
                    change = -selection;
                    break;
                }
                case 0x1000007: {
                    change = -selection;
                    break;
                }
                case 0x1000008: {
                    change = this.fContextSelectorTable.getItemCount() - selection;
                    break;
                }
                default: {
                    if (e.keyCode != SWT.MOD1 && e.keyCode != SWT.MOD2 && e.keyCode != SWT.MOD3 && e.keyCode != SWT.MOD4) {
                        this.hideContextSelector();
                    }
                    return true;
                }
            }
            this.fContextSelectorTable.setSelection(selection + change);
            this.fContextSelectorTable.showSelection();
            e.doit = false;
            return false;
        }
        if ('\t' == key) {
            e.doit = false;
            this.fContextSelectorShell.setFocus();
            return false;
        }
        if (key == '\u001b') {
            e.doit = false;
            this.hideContextSelector();
        }
        return true;
    }

    private boolean contextInfoPopupKeyPressed(KeyEvent e) {
        char key = e.character;
        if (key == '\u0000') {
            switch (e.keyCode) {
                case 0x1000001: 
                case 0x1000002: 
                case 0x1000003: 
                case 0x1000004: {
                    this.validateContextInformation();
                    break;
                }
                default: {
                    if (e.keyCode != SWT.MOD1 && e.keyCode != SWT.MOD2 && e.keyCode != SWT.MOD3 && e.keyCode != SWT.MOD4) {
                        this.hideContextInfoPopup();
                        break;
                    } else {
                        break;
                    }
                }
            }
        } else if (key == '\u001b') {
            e.doit = false;
            this.hideContextInfoPopup();
        } else {
            this.validateContextInformation();
        }
        return true;
    }

    public void processEvent(VerifyEvent event) {
        if (Helper2.okToUse((Widget)this.fContextSelectorShell)) {
            this.contextSelectorProcessEvent(event);
        }
        if (Helper2.okToUse((Widget)this.fContextInfoPopup)) {
            this.contextInfoPopupProcessEvent(event);
        }
    }

    private void contextSelectorProcessEvent(VerifyEvent e) {
        if (e.start == e.end && e.text != null && e.text.equals(this.fLineDelimiter)) {
            e.doit = false;
            this.insertSelectedContext();
        }
        this.hideContextSelector();
    }

    private void contextInfoPopupProcessEvent(VerifyEvent e) {
        if (e.start != e.end && (e.text == null || e.text.length() == 0)) {
            this.validateContextInformation();
        }
    }

    private void validateContextInformation() {
        this.fContextInfoPopup.getDisplay().asyncExec(new Runnable(){
            private ContextFrame fFrame;
            {
                this.fFrame = (ContextFrame)ContextInformationPopup2.this.fContextFrameStack.peek();
            }

            public void run() {
                if (Helper2.okToUse((Widget)ContextInformationPopup2.this.fContextInfoPopup) && this.fFrame == ContextInformationPopup2.this.fContextFrameStack.peek()) {
                    int offset = ((ContextInformationPopup2)ContextInformationPopup2.this).fViewer.getSelectedRange().x;
                    if (this.fFrame.fValidator == null || !this.fFrame.fValidator.isContextInformationValid(offset)) {
                        ContextInformationPopup2.this.hideContextInfoPopup();
                    } else if (this.fFrame.fPresenter != null && this.fFrame.fPresenter.updatePresentation(offset, ContextInformationPopup2.this.fTextPresentation)) {
                        TextPresentation.applyTextPresentation(ContextInformationPopup2.this.fTextPresentation, ContextInformationPopup2.this.fContextInfoText);
                        ContextInformationPopup2.this.resize();
                    }
                }
            }
        });
    }

    static class ContextFrame {
        public int fBeginOffset;
        public int fOffset;
        public int fVisibleOffset;
        public IContextInformation fInformation;
        public IContextInformationValidator fValidator;
        public IContextInformationPresenter fPresenter;

        ContextFrame() {
        }
    }
}

