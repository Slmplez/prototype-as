/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.text.contentassist;

import java.util.Iterator;
import java.util.Stack;
import org.eclipse.jface.contentassist.IContentAssistSubjectControl;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.TextPresentation;
import org.eclipse.jface.text.contentassist.ContentAssistSubjectControlAdapter;
import org.eclipse.jface.text.contentassist.ContentAssistant;
import org.eclipse.jface.text.contentassist.Helper;
import org.eclipse.jface.text.contentassist.IContentAssistListener;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.contentassist.IContextInformationExtension;
import org.eclipse.jface.text.contentassist.IContextInformationPresenter;
import org.eclipse.jface.text.contentassist.IContextInformationValidator;
import org.eclipse.jface.text.contentassist.PopupCloser;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Widget;

class ContextInformationPopup
implements IContentAssistListener {
    private ITextViewer fViewer;
    private ContentAssistant fContentAssistant;
    private PopupCloser fPopupCloser = new PopupCloser();
    private Shell fContextSelectorShell;
    private Table fContextSelectorTable;
    private IContextInformation[] fContextSelectorInput;
    private String fLineDelimiter = null;
    private Shell fContextInfoPopup;
    private StyledText fContextInfoText;
    private TextPresentation fTextPresentation;
    private Stack fContextFrameStack = new Stack();
    private IContentAssistSubjectControl fContentAssistSubjectControl;
    private ContentAssistSubjectControlAdapter fContentAssistSubjectControlAdapter;
    private SelectionListener fTextWidgetSelectionListener;
    private ContextFrame fLastContext = null;

    public ContextInformationPopup(ContentAssistant contentAssistant, ITextViewer viewer) {
        this.fContentAssistant = contentAssistant;
        this.fViewer = viewer;
        this.fContentAssistSubjectControlAdapter = new ContentAssistSubjectControlAdapter(this.fViewer);
    }

    public ContextInformationPopup(ContentAssistant contentAssistant, IContentAssistSubjectControl contentAssistSubjectControl) {
        this.fContentAssistant = contentAssistant;
        this.fContentAssistSubjectControl = contentAssistSubjectControl;
        this.fContentAssistSubjectControlAdapter = new ContentAssistSubjectControlAdapter(this.fContentAssistSubjectControl);
    }

    public String showContextProposals(boolean autoActivated) {
        Control control = this.fContentAssistSubjectControlAdapter.getControl();
        BusyIndicator.showWhile((Display)control.getDisplay(), (Runnable)new Runnable(){

            public void run() {
                int count;
                int offset = ((ContextInformationPopup)ContextInformationPopup.this).fContentAssistSubjectControlAdapter.getSelectedRange().x;
                IContextInformation[] contexts = ContextInformationPopup.this.computeContextInformation(offset);
                int n = count = contexts == null ? 0 : contexts.length;
                if (count == 1) {
                    ContextFrame frame = ContextInformationPopup.this.createContextFrame(contexts[0], offset);
                    if (ContextInformationPopup.this.isDuplicate(frame)) {
                        ContextInformationPopup.this.validateContextInformation();
                    } else {
                        ContextInformationPopup.this.internalShowContextInfo(frame);
                    }
                } else if (count > 0) {
                    int index = 0;
                    int i = 0;
                    while (i < contexts.length) {
                        IContextInformation info = contexts[i];
                        ContextFrame frame = ContextInformationPopup.this.createContextFrame(info, offset);
                        if (ContextInformationPopup.this.isDuplicate(frame)) {
                            ContextInformationPopup.this.validateContextInformation();
                            return;
                        }
                        if (ContextInformationPopup.this.isLastFrame(frame)) {
                            index = i;
                        }
                        Iterator it = ContextInformationPopup.this.fContextFrameStack.iterator();
                        while (it.hasNext()) {
                            ContextFrame stackFrame = (ContextFrame)it.next();
                            if (!stackFrame.equals(frame)) continue;
                            ContextInformationPopup.this.validateContextInformation();
                            return;
                        }
                        ++i;
                    }
                    if (ContextInformationPopup.this.fLineDelimiter == null) {
                        ContextInformationPopup.this.fLineDelimiter = ContextInformationPopup.this.fContentAssistSubjectControlAdapter.getLineDelimiter();
                    }
                    ContextInformationPopup.this.createContextSelector();
                    ContextInformationPopup.this.setContexts(contexts, index);
                    ContextInformationPopup.this.displayContextSelector();
                }
            }
        });
        return this.getErrorMessage();
    }

    public void showContextInformation(final IContextInformation info, final int offset) {
        Control control = this.fContentAssistSubjectControlAdapter.getControl();
        BusyIndicator.showWhile((Display)control.getDisplay(), (Runnable)new Runnable(){

            public void run() {
                if (info == null) {
                    ContextInformationPopup.this.validateContextInformation();
                } else {
                    ContextFrame frame = ContextInformationPopup.this.createContextFrame(info, offset);
                    if (ContextInformationPopup.this.isDuplicate(frame)) {
                        ContextInformationPopup.this.validateContextInformation();
                    } else {
                        ContextInformationPopup.this.internalShowContextInfo(frame);
                    }
                    ContextInformationPopup.this.hideContextSelector();
                }
            }
        });
    }

    private void internalShowContextInfo(ContextFrame frame) {
        if (frame != null) {
            this.fContextFrameStack.push(frame);
            if (this.fContextFrameStack.size() == 1) {
                this.fLastContext = null;
            }
            this.internalShowContextFrame(frame, this.fContextFrameStack.size() == 1);
            this.validateContextInformation();
        }
    }

    private ContextFrame createContextFrame(IContextInformation information, int offset) {
        IContextInformationValidator validator = this.fContentAssistSubjectControlAdapter.getContextInformationValidator(this.fContentAssistant, offset);
        if (validator != null) {
            int beginOffset;
            int n = beginOffset = information instanceof IContextInformationExtension ? ((IContextInformationExtension)((Object)information)).getContextInformationPosition() : offset;
            if (beginOffset == -1) {
                beginOffset = offset;
            }
            int visibleOffset = this.fContentAssistSubjectControlAdapter.getWidgetSelectionRange().x - (offset - beginOffset);
            IContextInformationPresenter presenter = this.fContentAssistSubjectControlAdapter.getContextInformationPresenter(this.fContentAssistant, offset);
            return new ContextFrame(information, beginOffset, offset, visibleOffset, validator, presenter);
        }
        return null;
    }

    private boolean isDuplicate(ContextFrame frame) {
        if (frame == null) {
            return false;
        }
        if (this.fContextFrameStack.isEmpty()) {
            return false;
        }
        ContextFrame top = (ContextFrame)this.fContextFrameStack.peek();
        return frame.equals(top);
    }

    private boolean isLastFrame(ContextFrame frame) {
        return frame != null && frame.equals(this.fLastContext);
    }

    private void internalShowContextFrame(ContextFrame frame, boolean initial) {
        this.fContentAssistSubjectControlAdapter.installValidator(frame);
        if (frame.fPresenter != null) {
            if (this.fTextPresentation == null) {
                this.fTextPresentation = new TextPresentation();
            }
            this.fContentAssistSubjectControlAdapter.installContextInformationPresenter(frame);
            frame.fPresenter.updatePresentation(frame.fOffset, this.fTextPresentation);
        }
        this.createContextInfoPopup();
        this.fContextInfoText.setText(frame.fInformation.getInformationDisplayString());
        if (this.fTextPresentation != null) {
            TextPresentation.applyTextPresentation(this.fTextPresentation, this.fContextInfoText);
        }
        this.resize(frame.fVisibleOffset);
        if (initial) {
            if (this.fContentAssistant.addContentAssistListener(this, 2)) {
                if (this.fContentAssistSubjectControlAdapter.getControl() != null) {
                    this.fTextWidgetSelectionListener = new SelectionAdapter(){

                        public void widgetSelected(SelectionEvent e) {
                            ContextInformationPopup.this.validateContextInformation();
                        }
                    };
                    this.fContentAssistSubjectControlAdapter.addSelectionListener(this.fTextWidgetSelectionListener);
                }
                this.fContentAssistant.addToLayout(this, this.fContextInfoPopup, 2, frame.fVisibleOffset);
                this.fContextInfoPopup.setVisible(true);
            }
        } else {
            this.fContentAssistant.layout(2, frame.fVisibleOffset);
        }
    }

    private IContextInformation[] computeContextInformation(int offset) {
        return this.fContentAssistSubjectControlAdapter.computeContextInformation(this.fContentAssistant, offset);
    }

    private String getErrorMessage() {
        return this.fContentAssistant.getErrorMessage();
    }

    private void createContextInfoPopup() {
        if (Helper.okToUse((Widget)this.fContextInfoPopup)) {
            return;
        }
        Control control = this.fContentAssistSubjectControlAdapter.getControl();
        Display display = control.getDisplay();
        this.fContextInfoPopup = new Shell(control.getShell(), 16392);
        this.fContextInfoPopup.setBackground(display.getSystemColor(2));
        this.fContextInfoText = new StyledText((Composite)this.fContextInfoPopup, 74);
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

    private void resize(int offset) {
        Point size = this.fContextInfoText.computeSize(-1, -1, true);
        size.x += 2;
        Rectangle bounds = this.fContentAssistant.getLayoutManager().computeBoundsAboveBelow(this.fContextInfoPopup, size, offset);
        if (bounds.width < size.x) {
            size = this.fContextInfoText.computeSize(bounds.width - 2, -1, true);
        }
        size.x += 0;
        this.fContextInfoText.setSize(size);
        this.fContextInfoText.setLocation(1, 1);
        size.x += 2;
        size.y += 2;
        this.fContextInfoPopup.setSize(size);
    }

    private void hideContextInfoPopup() {
        if (Helper.okToUse((Widget)this.fContextInfoPopup)) {
            int size = this.fContextFrameStack.size();
            if (size > 0) {
                this.fLastContext = (ContextFrame)this.fContextFrameStack.pop();
                --size;
            }
            if (size > 0) {
                ContextFrame current = (ContextFrame)this.fContextFrameStack.peek();
                this.internalShowContextFrame(current, false);
            } else {
                this.fContentAssistant.removeContentAssistListener(this, 2);
                if (this.fContentAssistSubjectControlAdapter.getControl() != null) {
                    this.fContentAssistSubjectControlAdapter.removeSelectionListener(this.fTextWidgetSelectionListener);
                }
                this.fTextWidgetSelectionListener = null;
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
        if (Helper.okToUse((Widget)this.fContextSelectorShell)) {
            return;
        }
        Control control = this.fContentAssistSubjectControlAdapter.getControl();
        this.fContextSelectorShell = new Shell(control.getShell(), 16400);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        this.fContextSelectorShell.setLayout((Layout)layout);
        this.fContextSelectorShell.setBackground(control.getDisplay().getSystemColor(2));
        if (this.fViewer instanceof ITextViewerExtension) {
            final ITextViewerExtension textViewerExtension = (ITextViewerExtension)((Object)this.fViewer);
            final StyledText textWidget = this.fViewer.getTextWidget();
            final VerifyKeyListener verifyListener = new VerifyKeyListener(){

                public void verifyKey(VerifyEvent event) {
                    if (ContextInformationPopup.this.isActive() && event.keyCode == 13 && event.character == '\r' && event.widget == textWidget) {
                        event.doit = false;
                        ContextInformationPopup.this.insertSelectedContext();
                        ContextInformationPopup.this.hideContextSelector();
                    }
                }
            };
            textViewerExtension.prependVerifyKeyListener(verifyListener);
            this.fContextSelectorShell.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    textViewerExtension.removeVerifyKeyListener(verifyListener);
                }
            });
        }
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
                ContextInformationPopup.this.insertSelectedContext();
                ContextInformationPopup.this.hideContextSelector();
            }
        });
        this.fPopupCloser.install(this.fContentAssistant, this.fContextSelectorTable);
        this.fContextSelectorTable.setHeaderVisible(false);
        this.fContentAssistant.addToLayout(this, this.fContextSelectorShell, 1, this.fContentAssistant.getSelectionOffset());
    }

    int getMinimalHeight() {
        int height = 0;
        if (Helper.okToUse((Widget)this.fContextSelectorTable)) {
            int items = this.fContextSelectorTable.getItemHeight() * 10;
            Rectangle trim = this.fContextSelectorTable.computeTrim(0, 0, -1, items);
            height = trim.height;
        }
        return height;
    }

    private void insertSelectedContext() {
        int i = this.fContextSelectorTable.getSelectionIndex();
        if (i < 0 || i >= this.fContextSelectorInput.length) {
            return;
        }
        int offset = this.fContentAssistSubjectControlAdapter.getSelectedRange().x;
        this.internalShowContextInfo(this.createContextFrame(this.fContextSelectorInput[i], offset));
    }

    private void setContexts(IContextInformation[] contexts, int selectionIndex) {
        if (Helper.okToUse((Widget)this.fContextSelectorTable)) {
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
            this.fContextSelectorTable.select(selectionIndex);
            this.fContextSelectorTable.setRedraw(true);
        }
    }

    private void displayContextSelector() {
        if (this.fContentAssistant.addContentAssistListener(this, 0)) {
            this.fContextSelectorShell.setVisible(true);
        }
    }

    private void hideContextSelector() {
        if (Helper.okToUse((Widget)this.fContextSelectorShell)) {
            this.fContentAssistant.removeContentAssistListener(this, 0);
            this.fPopupCloser.uninstall();
            this.fContextSelectorShell.setVisible(false);
            this.fContextSelectorShell.dispose();
            this.fContextSelectorShell = null;
        }
        if (!Helper.okToUse((Widget)this.fContextInfoPopup)) {
            this.fContentAssistant.contextInformationClosed();
        }
    }

    public boolean hasFocus() {
        if (Helper.okToUse((Widget)this.fContextSelectorShell)) {
            return this.fContextSelectorShell.isFocusControl() || this.fContextSelectorTable.isFocusControl();
        }
        return false;
    }

    public void hide() {
        this.hideContextSelector();
        this.hideContextInfoPopup();
    }

    public boolean isActive() {
        return Helper.okToUse((Widget)this.fContextInfoPopup) || Helper.okToUse((Widget)this.fContextSelectorShell);
    }

    public boolean verifyKey(VerifyEvent e) {
        if (Helper.okToUse((Widget)this.fContextSelectorShell)) {
            return this.contextSelectorKeyPressed(e);
        }
        if (Helper.okToUse((Widget)this.fContextInfoPopup)) {
            return this.contextInfoPopupKeyPressed((KeyEvent)e);
        }
        return true;
    }

    private boolean contextSelectorKeyPressed(VerifyEvent e) {
        char key = e.character;
        if (key == '\u0000') {
            int newSelection = this.fContextSelectorTable.getSelectionIndex();
            int visibleRows = this.fContextSelectorTable.getSize().y / this.fContextSelectorTable.getItemHeight() - 1;
            int itemCount = this.fContextSelectorTable.getItemCount();
            switch (e.keyCode) {
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
                        this.hideContextSelector();
                    }
                    return true;
                }
            }
            this.fContextSelectorTable.setSelection(newSelection);
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
                    if (e.keyCode != 16777298 && e.keyCode != SWT.MOD1 && e.keyCode != SWT.MOD2 && e.keyCode != SWT.MOD3 && e.keyCode != SWT.MOD4) {
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
        if (Helper.okToUse((Widget)this.fContextSelectorShell)) {
            this.contextSelectorProcessEvent(event);
        }
        if (Helper.okToUse((Widget)this.fContextInfoPopup)) {
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
        if (!Helper.okToUse((Widget)this.fContextInfoPopup)) {
            return;
        }
        this.fContextInfoPopup.getDisplay().asyncExec(new Runnable(){
            private ContextFrame fFrame;
            {
                this.fFrame = (ContextFrame)ContextInformationPopup.this.fContextFrameStack.peek();
            }

            public void run() {
                if (!ContextInformationPopup.this.fContextFrameStack.isEmpty() && this.fFrame == ContextInformationPopup.this.fContextFrameStack.peek()) {
                    int offset = ((ContextInformationPopup)ContextInformationPopup.this).fContentAssistSubjectControlAdapter.getSelectedRange().x;
                    while (Helper.okToUse((Widget)ContextInformationPopup.this.fContextInfoPopup) && !ContextInformationPopup.this.fContextFrameStack.isEmpty()) {
                        ContextFrame top = (ContextFrame)ContextInformationPopup.this.fContextFrameStack.peek();
                        if (top.fValidator == null || !top.fValidator.isContextInformationValid(offset)) {
                            ContextInformationPopup.this.hideContextInfoPopup();
                            continue;
                        }
                        if (top.fPresenter == null || !top.fPresenter.updatePresentation(offset, ContextInformationPopup.this.fTextPresentation)) break;
                        int widgetOffset = ((ContextInformationPopup)ContextInformationPopup.this).fContentAssistSubjectControlAdapter.getWidgetSelectionRange().x;
                        TextPresentation.applyTextPresentation(ContextInformationPopup.this.fTextPresentation, ContextInformationPopup.this.fContextInfoText);
                        ContextInformationPopup.this.resize(widgetOffset);
                        break;
                    }
                }
            }
        });
    }

    static class ContextFrame {
        final int fBeginOffset;
        final int fOffset;
        final int fVisibleOffset;
        final IContextInformation fInformation;
        final IContextInformationValidator fValidator;
        final IContextInformationPresenter fPresenter;

        public ContextFrame(IContextInformation information, int beginOffset, int offset, int visibleOffset, IContextInformationValidator validator, IContextInformationPresenter presenter) {
            this.fInformation = information;
            this.fBeginOffset = beginOffset;
            this.fOffset = offset;
            this.fVisibleOffset = visibleOffset;
            this.fValidator = validator;
            this.fPresenter = presenter;
        }

        public boolean equals(Object obj) {
            if (obj instanceof ContextFrame) {
                ContextFrame frame = (ContextFrame)obj;
                return this.fInformation.equals(frame.fInformation) && this.fBeginOffset == frame.fBeginOffset;
            }
            return super.equals(obj);
        }

        public int hashCode() {
            return this.fInformation.hashCode() << 16 | this.fBeginOffset;
        }
    }
}

