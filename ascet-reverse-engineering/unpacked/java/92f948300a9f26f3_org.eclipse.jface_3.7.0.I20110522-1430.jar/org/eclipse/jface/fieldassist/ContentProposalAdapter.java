/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusAdapter
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.ScrollBar
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.fieldassist;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.dialogs.PopupDialog;
import org.eclipse.jface.fieldassist.ContentProposalAdapter;
import org.eclipse.jface.fieldassist.IContentProposal;
import org.eclipse.jface.fieldassist.IContentProposalListener;
import org.eclipse.jface.fieldassist.IContentProposalListener2;
import org.eclipse.jface.fieldassist.IContentProposalProvider;
import org.eclipse.jface.fieldassist.IControlContentAdapter;
import org.eclipse.jface.fieldassist.IControlContentAdapter2;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusAdapter;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Text;

public class ContentProposalAdapter {
    public static final boolean DEBUG = false;
    public static final int PROPOSAL_INSERT = 1;
    public static final int PROPOSAL_REPLACE = 2;
    public static final int PROPOSAL_IGNORE = 3;
    public static final int FILTER_NONE = 1;
    public static final int FILTER_CHARACTER = 2;
    public static final int FILTER_CUMULATIVE = 3;
    private static final boolean USE_VIRTUAL = !Util.isMotif();
    private static final int POPUP_DELAY = 750;
    private static final int POPUP_CHAR_HEIGHT = 10;
    private static final int POPUP_MINIMUM_WIDTH = 300;
    private static final int POPUP_OFFSET = 3;
    private static final String EMPTY = "";
    private IContentProposalProvider proposalProvider;
    private ILabelProvider labelProvider;
    private Control control;
    private IControlContentAdapter controlContentAdapter;
    private ContentProposalPopup popup;
    private KeyStroke triggerKeyStroke;
    private String autoActivateString;
    private int proposalAcceptanceStyle = 1;
    private boolean propagateKeys = true;
    private int filterStyle = 1;
    private Listener controlListener;
    private ListenerList proposalListeners = new ListenerList();
    private ListenerList proposalListeners2 = new ListenerList();
    private boolean isEnabled = true;
    private int autoActivationDelay = 0;
    private boolean receivedKeyDown;
    private Point popupSize;
    private int insertionPos = -1;
    private Point selectionRange = new Point(-1, -1);
    private boolean watchModify = false;

    public ContentProposalAdapter(Control control, IControlContentAdapter controlContentAdapter, IContentProposalProvider proposalProvider, KeyStroke keyStroke, char[] autoActivationCharacters) {
        Assert.isNotNull((Object)control);
        Assert.isNotNull((Object)controlContentAdapter);
        this.control = control;
        this.controlContentAdapter = controlContentAdapter;
        this.proposalProvider = proposalProvider;
        this.triggerKeyStroke = keyStroke;
        if (autoActivationCharacters != null) {
            this.autoActivateString = new String(autoActivationCharacters);
        }
        this.addControlListener(control);
    }

    public Control getControl() {
        return this.control;
    }

    public ILabelProvider getLabelProvider() {
        return this.labelProvider;
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public void setLabelProvider(ILabelProvider labelProvider) {
        this.labelProvider = labelProvider;
    }

    public IContentProposalProvider getContentProposalProvider() {
        return this.proposalProvider;
    }

    public void setContentProposalProvider(IContentProposalProvider proposalProvider) {
        this.proposalProvider = proposalProvider;
    }

    public char[] getAutoActivationCharacters() {
        if (this.autoActivateString == null) {
            return null;
        }
        return this.autoActivateString.toCharArray();
    }

    public void setAutoActivationCharacters(char[] autoActivationCharacters) {
        this.autoActivateString = autoActivationCharacters == null ? null : new String(autoActivationCharacters);
    }

    public int getAutoActivationDelay() {
        return this.autoActivationDelay;
    }

    public void setAutoActivationDelay(int delay) {
        this.autoActivationDelay = delay;
    }

    public int getProposalAcceptanceStyle() {
        return this.proposalAcceptanceStyle;
    }

    public void setProposalAcceptanceStyle(int acceptance) {
        this.proposalAcceptanceStyle = acceptance;
    }

    public int getFilterStyle() {
        return this.filterStyle;
    }

    public void setFilterStyle(int filterStyle) {
        this.filterStyle = filterStyle;
    }

    public Point getPopupSize() {
        return this.popupSize;
    }

    public void setPopupSize(Point size) {
        this.popupSize = size;
    }

    public boolean getPropagateKeys() {
        return this.propagateKeys;
    }

    public void setPropagateKeys(boolean propagateKeys) {
        this.propagateKeys = propagateKeys;
    }

    public IControlContentAdapter getControlContentAdapter() {
        return this.controlContentAdapter;
    }

    public void setEnabled(boolean enabled) {
        if (this.isEnabled && !enabled && this.popup != null) {
            this.popup.close();
        }
        this.isEnabled = enabled;
    }

    public void addContentProposalListener(IContentProposalListener listener) {
        this.proposalListeners.add((Object)listener);
    }

    public void removeContentProposalListener(IContentProposalListener listener) {
        this.proposalListeners.remove((Object)listener);
    }

    public void addContentProposalListener(IContentProposalListener2 listener) {
        this.proposalListeners2.add((Object)listener);
    }

    public void removeContentProposalListener(IContentProposalListener2 listener) {
        this.proposalListeners2.remove((Object)listener);
    }

    private void addControlListener(Control control) {
        if (this.controlListener != null) {
            return;
        }
        this.controlListener = new Listener(){

            public void handleEvent(Event e) {
                if (!ContentProposalAdapter.this.isEnabled) {
                    return;
                }
                switch (e.type) {
                    case 1: 
                    case 31: {
                        if (ContentProposalAdapter.this.popup != null) {
                            ContentProposalAdapter.this.popup.getTargetControlListener().handleEvent(e);
                            if (ContentProposalAdapter.this.propagateKeys && e.character != '\u0000') {
                                ContentProposalAdapter.this.watchModify = true;
                            }
                            return;
                        }
                        if (e.type == 31) {
                            return;
                        }
                        if (ContentProposalAdapter.this.triggerKeyStroke != null && (ContentProposalAdapter.this.triggerKeyStroke.getModifierKeys() == 0 && ContentProposalAdapter.this.triggerKeyStroke.getNaturalKey() == e.character || ContentProposalAdapter.this.triggerKeyStroke.getNaturalKey() == e.keyCode && (ContentProposalAdapter.this.triggerKeyStroke.getModifierKeys() & e.stateMask) == ContentProposalAdapter.this.triggerKeyStroke.getModifierKeys())) {
                            e.doit = false;
                            ContentProposalAdapter.this.openProposalPopup(false);
                            return;
                        }
                        if (e.character != '\u0000') {
                            if (ContentProposalAdapter.this.autoActivateString != null) {
                                if (ContentProposalAdapter.this.autoActivateString.indexOf(e.character) >= 0) {
                                    ContentProposalAdapter.this.autoActivate();
                                    break;
                                }
                                ContentProposalAdapter.this.receivedKeyDown = true;
                                ContentProposalAdapter.this.watchModify = true;
                                break;
                            }
                            if (ContentProposalAdapter.this.triggerKeyStroke != null) break;
                            ContentProposalAdapter.this.watchModify = true;
                            break;
                        }
                        ContentProposalAdapter.this.receivedKeyDown = true;
                        break;
                    }
                    case 24: {
                        if (!ContentProposalAdapter.this.allowsAutoActivate() || !ContentProposalAdapter.this.watchModify) break;
                        ContentProposalAdapter.this.watchModify = false;
                        if (ContentProposalAdapter.this.isControlContentEmpty()) {
                            ContentProposalAdapter.this.closeProposalPopup();
                            break;
                        }
                        if (ContentProposalAdapter.this.autoActivateString == null) {
                            ContentProposalAdapter.this.autoActivate();
                            break;
                        }
                        if (ContentProposalAdapter.this.shouldPopupRemainOpen()) break;
                        ContentProposalAdapter.this.closeProposalPopup();
                        break;
                    }
                }
            }

            private void dump(String who, Event e) {
                StringBuffer sb = new StringBuffer("--- [ContentProposalAdapter]\n");
                sb.append(who);
                sb.append(" - e: keyCode=" + e.keyCode + this.hex(e.keyCode));
                sb.append("; character=" + e.character + this.hex(e.character));
                sb.append("; stateMask=" + e.stateMask + this.hex(e.stateMask));
                sb.append("; doit=" + e.doit);
                sb.append("; detail=" + e.detail + this.hex(e.detail));
                sb.append("; widget=" + e.widget);
                System.out.println(sb);
            }

            private String hex(int i) {
                return "[0x" + Integer.toHexString(i) + ']';
            }
        };
        control.addListener(1, this.controlListener);
        control.addListener(31, this.controlListener);
        control.addListener(24, this.controlListener);
    }

    private void openProposalPopup(boolean autoActivated) {
        if (this.isValid() && this.popup == null) {
            this.recordCursorPosition();
            IContentProposal[] proposals = this.getProposals();
            if (proposals.length > 0) {
                this.recordCursorPosition();
                this.popup = new ContentProposalPopup(null, proposals);
                this.popup.open();
                this.popup.getShell().addDisposeListener(new DisposeListener(){

                    public void widgetDisposed(DisposeEvent event) {
                        ContentProposalAdapter.this.popup = null;
                    }
                });
                this.internalPopupOpened();
                this.notifyPopupOpened();
            } else if (!autoActivated) {
                this.getControl().getDisplay().beep();
            }
        }
    }

    protected void openProposalPopup() {
        this.openProposalPopup(false);
    }

    protected void closeProposalPopup() {
        if (this.popup != null) {
            this.popup.close();
        }
    }

    private void proposalAccepted(IContentProposal proposal) {
        switch (this.proposalAcceptanceStyle) {
            case 2: {
                this.setControlContent(proposal.getContent(), proposal.getCursorPosition());
                break;
            }
            case 1: {
                this.insertControlContent(proposal.getContent(), proposal.getCursorPosition());
                break;
            }
        }
        this.notifyProposalAccepted(proposal);
    }

    private void setControlContent(String text, int cursorPosition) {
        if (this.isValid()) {
            this.watchModify = false;
            this.controlContentAdapter.setControlContents(this.control, text, cursorPosition);
        }
    }

    private void insertControlContent(String text, int cursorPosition) {
        if (this.isValid()) {
            this.watchModify = false;
            if (this.controlContentAdapter instanceof IControlContentAdapter2 && this.selectionRange.x != -1) {
                ((IControlContentAdapter2)((Object)this.controlContentAdapter)).setSelection(this.control, this.selectionRange);
            } else if (this.insertionPos != -1) {
                this.controlContentAdapter.setCursorPosition(this.control, this.insertionPos);
            }
            this.controlContentAdapter.insertControlContents(this.control, text, cursorPosition);
        }
    }

    private boolean isValid() {
        return this.control != null && !this.control.isDisposed() && this.controlContentAdapter != null;
    }

    private void recordCursorPosition() {
        if (this.isValid()) {
            IControlContentAdapter adapter = this.getControlContentAdapter();
            this.insertionPos = adapter.getCursorPosition(this.control);
            if (adapter instanceof IControlContentAdapter2) {
                this.selectionRange = ((IControlContentAdapter2)((Object)adapter)).getSelection(this.control);
            }
        }
    }

    private IContentProposal[] getProposals() {
        if (this.proposalProvider == null || !this.isValid()) {
            return null;
        }
        int position = this.insertionPos;
        if (position == -1) {
            position = this.getControlContentAdapter().getCursorPosition(this.getControl());
        }
        String contents = this.getControlContentAdapter().getControlContents(this.getControl());
        IContentProposal[] proposals = this.proposalProvider.getProposals(contents, position);
        return proposals;
    }

    private void autoActivate() {
        if (this.autoActivationDelay > 0) {
            Runnable runnable = new Runnable(){

                public void run() {
                    ContentProposalAdapter.this.receivedKeyDown = false;
                    try {
                        Thread.sleep(ContentProposalAdapter.this.autoActivationDelay);
                    }
                    catch (InterruptedException interruptedException) {}
                    if (!ContentProposalAdapter.this.isValid() || ContentProposalAdapter.this.receivedKeyDown) {
                        return;
                    }
                    ContentProposalAdapter.this.getControl().getDisplay().syncExec(new Runnable(this){
                        final /* synthetic */ 12 this$1;
                        {
                            this.this$1 = var1_1;
                        }

                        public void run() {
                            ContentProposalAdapter.access$16(12.access$0(this.this$1), true);
                        }
                    });
                }

                static /* synthetic */ ContentProposalAdapter access$0(12 var0) {
                    return var0.ContentProposalAdapter.this;
                }
            };
            Thread t = new Thread(runnable);
            t.start();
        } else {
            this.getControl().getDisplay().asyncExec(new Runnable(){

                public void run() {
                    if (ContentProposalAdapter.this.isValid()) {
                        ContentProposalAdapter.this.openProposalPopup(true);
                    }
                }
            });
        }
    }

    private void notifyProposalAccepted(IContentProposal proposal) {
        Object[] listenerArray = this.proposalListeners.getListeners();
        int i = 0;
        while (i < listenerArray.length) {
            ((IContentProposalListener)listenerArray[i]).proposalAccepted(proposal);
            ++i;
        }
    }

    private void notifyPopupOpened() {
        Object[] listenerArray = this.proposalListeners2.getListeners();
        int i = 0;
        while (i < listenerArray.length) {
            ((IContentProposalListener2)listenerArray[i]).proposalPopupOpened(this);
            ++i;
        }
    }

    private void notifyPopupClosed() {
        Object[] listenerArray = this.proposalListeners2.getListeners();
        int i = 0;
        while (i < listenerArray.length) {
            ((IContentProposalListener2)listenerArray[i]).proposalPopupClosed(this);
            ++i;
        }
    }

    public boolean hasProposalPopupFocus() {
        return this.popup != null && this.popup.hasFocus();
    }

    private boolean isControlContentEmpty() {
        return this.getControlContentAdapter().getControlContents(this.getControl()).length() == 0;
    }

    private void internalPopupOpened() {
        if (this.control instanceof Combo) {
            ((Combo)this.control).setListVisible(false);
        }
    }

    private boolean shouldPopupRemainOpen() {
        if (this.autoActivateString == null || this.autoActivateString.length() == 0) {
            return true;
        }
        String content = this.getControlContentAdapter().getControlContents(this.getControl());
        int i = 0;
        while (i < this.autoActivateString.length()) {
            if (content.indexOf(this.autoActivateString.charAt(i)) >= 0) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean allowsAutoActivate() {
        return this.autoActivateString != null && this.autoActivateString.length() > 0 || this.autoActivateString == null && this.triggerKeyStroke == null;
    }

    public void setProposalPopupFocus() {
        if (this.isValid() && this.popup != null) {
            this.popup.getShell().setFocus();
        }
    }

    public boolean isProposalPopupOpen() {
        return this.isValid() && this.popup != null;
    }

    static /* synthetic */ void access$11(ContentProposalAdapter contentProposalAdapter) {
        contentProposalAdapter.recordCursorPosition();
    }

    class ContentProposalPopup
    extends PopupDialog {
        private Listener targetControlListener;
        private PopupCloserListener popupCloser;
        private Table proposalTable;
        private IContentProposal[] proposals;
        private InfoPopupDialog infoPopup;
        private boolean pendingDescriptionUpdate = false;
        private String filterText = "";

        ContentProposalPopup(String infoText, IContentProposal[] proposals) {
            super(ContentProposalAdapter.this.control.getShell(), 16400, false, false, false, false, false, null, infoText);
            this.proposals = proposals;
        }

        protected Color getForeground() {
            return JFaceResources.getColorRegistry().get("CONTENT_ASSIST_FOREGROUND_COLOR");
        }

        protected Color getBackground() {
            return JFaceResources.getColorRegistry().get("CONTENT_ASSIST_BACKGROUND_COLOR");
        }

        protected final Control createDialogArea(Composite parent) {
            if (USE_VIRTUAL) {
                this.proposalTable = new Table(parent, 0x10000300);
                Listener listener = new Listener(this){
                    final /* synthetic */ ContentProposalPopup this$1;
                    {
                        this.this$1 = contentProposalPopup;
                    }

                    public void handleEvent(Event event) {
                        ContentProposalPopup.access$10(this.this$1, event);
                    }
                };
                this.proposalTable.addListener(36, listener);
            } else {
                this.proposalTable = new Table(parent, 768);
            }
            this.setProposals(this.filterProposals(this.proposals, this.filterText));
            this.proposalTable.setHeaderVisible(false);
            this.proposalTable.addSelectionListener(new SelectionListener(this){
                final /* synthetic */ ContentProposalPopup this$1;
                {
                    this.this$1 = contentProposalPopup;
                }

                public void widgetSelected(SelectionEvent e) {
                    if (e.item == null) {
                        if (ContentProposalPopup.access$2(this.this$1) != null) {
                            ContentProposalPopup.access$2(this.this$1).close();
                        }
                    } else {
                        ContentProposalPopup.access$11(this.this$1);
                    }
                }

                public void widgetDefaultSelected(SelectionEvent e) {
                    ContentProposalPopup.access$8(this.this$1);
                }
            });
            return this.proposalTable;
        }

        protected void adjustBounds() {
            Point location = ContentProposalAdapter.this.control.getDisplay().map((Control)ContentProposalAdapter.this.control.getParent(), null, ContentProposalAdapter.this.control.getLocation());
            int initialX = location.x + 3;
            int initialY = location.y + ((ContentProposalAdapter)ContentProposalAdapter.this).control.getSize().y + 3;
            if (ContentProposalAdapter.this.getProposalAcceptanceStyle() == 1) {
                Rectangle insertionBounds = ContentProposalAdapter.this.controlContentAdapter.getInsertionBounds(ContentProposalAdapter.this.control);
                initialX += insertionBounds.x;
                initialY = location.y + insertionBounds.y + insertionBounds.height;
            }
            if (ContentProposalAdapter.this.popupSize == null) {
                GridData data = new GridData(1808);
                data.heightHint = this.proposalTable.getItemHeight() * 10;
                data.widthHint = Math.max(((ContentProposalAdapter)ContentProposalAdapter.this).control.getSize().x, 300);
                this.proposalTable.setLayoutData((Object)data);
                this.getShell().pack();
                ContentProposalAdapter.this.popupSize = this.getShell().getSize();
            }
            Rectangle constrainedBounds = this.getConstrainedShellBounds(new Rectangle(initialX, initialY, ((ContentProposalAdapter)ContentProposalAdapter.this).popupSize.x, ((ContentProposalAdapter)ContentProposalAdapter.this).popupSize.y));
            if (constrainedBounds.y < initialY) {
                this.getShell().setBounds(initialX, location.y - ((ContentProposalAdapter)ContentProposalAdapter.this).popupSize.y, ((ContentProposalAdapter)ContentProposalAdapter.this).popupSize.x, ((ContentProposalAdapter)ContentProposalAdapter.this).popupSize.y);
            } else {
                this.getShell().setBounds(initialX, initialY, ((ContentProposalAdapter)ContentProposalAdapter.this).popupSize.x, ((ContentProposalAdapter)ContentProposalAdapter.this).popupSize.y);
            }
            this.getShell().addListener(11, new Listener(this){
                final /* synthetic */ ContentProposalPopup this$1;
                {
                    this.this$1 = contentProposalPopup;
                }

                public void handleEvent(Event e) {
                    ContentProposalAdapter.access$6(ContentProposalPopup.access$15(this.this$1), this.this$1.getShell().getSize());
                    if (ContentProposalPopup.access$2(this.this$1) != null) {
                        ContentProposalPopup.access$2(this.this$1).adjustBounds();
                    }
                }
            });
        }

        private void handleSetData(Event event) {
            TableItem item = (TableItem)event.item;
            int index = this.proposalTable.indexOf(item);
            if (index >= 0 && index < this.proposals.length) {
                IContentProposal current = this.proposals[index];
                item.setText(this.getString(current));
                item.setImage(this.getImage(current));
                item.setData((Object)current);
            }
        }

        private void setProposals(IContentProposal[] newProposals) {
            if (newProposals == null || newProposals.length == 0) {
                newProposals = this.getEmptyProposalArray();
            }
            this.proposals = newProposals;
            if (this.isValid()) {
                int newSize = newProposals.length;
                if (USE_VIRTUAL) {
                    this.proposalTable.setItemCount(newSize);
                    this.proposalTable.clearAll();
                } else {
                    this.proposalTable.setRedraw(false);
                    this.proposalTable.setItemCount(newSize);
                    TableItem[] items = this.proposalTable.getItems();
                    int i = 0;
                    while (i < items.length) {
                        TableItem item = items[i];
                        IContentProposal proposal = newProposals[i];
                        item.setText(this.getString(proposal));
                        item.setImage(this.getImage(proposal));
                        item.setData((Object)proposal);
                        ++i;
                    }
                    this.proposalTable.setRedraw(true);
                }
                if (newProposals.length > 0) {
                    this.selectProposal(0);
                } else if (this.infoPopup != null) {
                    this.infoPopup.close();
                }
            }
        }

        private String getString(IContentProposal proposal) {
            if (proposal == null) {
                return ContentProposalAdapter.EMPTY;
            }
            if (ContentProposalAdapter.this.labelProvider == null) {
                return proposal.getLabel() == null ? proposal.getContent() : proposal.getLabel();
            }
            return ContentProposalAdapter.this.labelProvider.getText(proposal);
        }

        private Image getImage(IContentProposal proposal) {
            if (proposal == null || ContentProposalAdapter.this.labelProvider == null) {
                return null;
            }
            return ContentProposalAdapter.this.labelProvider.getImage(proposal);
        }

        private IContentProposal[] getEmptyProposalArray() {
            return new IContentProposal[0];
        }

        private boolean isValid() {
            return this.proposalTable != null && !this.proposalTable.isDisposed();
        }

        private boolean hasFocus() {
            if (!this.isValid()) {
                return false;
            }
            if (this.getShell().isFocusControl() || this.proposalTable.isFocusControl()) {
                return true;
            }
            return this.infoPopup != null && this.infoPopup.hasFocus();
        }

        private IContentProposal getSelectedProposal() {
            if (this.isValid()) {
                int i = this.proposalTable.getSelectionIndex();
                if (this.proposals == null || i < 0 || i >= this.proposals.length) {
                    return null;
                }
                return this.proposals[i];
            }
            return null;
        }

        private void selectProposal(int index) {
            Assert.isTrue((index >= 0 ? 1 : 0) != 0, (String)"Proposal index should never be negative");
            if (!this.isValid() || this.proposals == null || index >= this.proposals.length) {
                return;
            }
            this.proposalTable.setSelection(index);
            this.proposalTable.showSelection();
            this.showProposalDescription();
        }

        public int open() {
            int value = super.open();
            if (this.popupCloser == null) {
                this.popupCloser = new PopupCloserListener();
            }
            this.popupCloser.installListeners();
            IContentProposal p = this.getSelectedProposal();
            if (p != null) {
                this.showProposalDescription();
            }
            return value;
        }

        public boolean close() {
            this.popupCloser.removeListeners();
            if (this.infoPopup != null) {
                this.infoPopup.close();
            }
            boolean ret = super.close();
            ContentProposalAdapter.this.notifyPopupClosed();
            return ret;
        }

        private void showProposalDescription() {
            if (!this.pendingDescriptionUpdate) {
                Runnable runnable = new Runnable(this){
                    final /* synthetic */ ContentProposalPopup this$1;
                    {
                        this.this$1 = contentProposalPopup;
                    }

                    public void run() {
                        ContentProposalPopup.access$12(this.this$1, true);
                        try {
                            Thread.sleep(750L);
                        }
                        catch (InterruptedException interruptedException) {}
                        if (!ContentProposalPopup.access$0(this.this$1)) {
                            return;
                        }
                        this.this$1.getShell().getDisplay().syncExec(new Runnable(this){
                            final /* synthetic */ 6 this$2;
                            {
                                this.this$2 = var1_1;
                            }

                            public void run() {
                                IContentProposal p = ContentProposalPopup.access$7(6.access$0(this.this$2));
                                if (p != null) {
                                    String description = p.getDescription();
                                    if (description != null) {
                                        if (ContentProposalPopup.access$2(6.access$0(this.this$2)) == null) {
                                            ContentProposalPopup.access$13(6.access$0(this.this$2), 6.access$0(this.this$2).new InfoPopupDialog(6.access$0(this.this$2).getShell()));
                                            ContentProposalPopup.access$2(6.access$0(this.this$2)).open();
                                            ContentProposalPopup.access$2(6.access$0(this.this$2)).getShell().addDisposeListener(new DisposeListener(this){
                                                final /* synthetic */ 7 this$3;
                                                {
                                                    this.this$3 = var1_1;
                                                }

                                                public void widgetDisposed(DisposeEvent event) {
                                                    ContentProposalPopup.access$13(6.access$0(7.access$0(this.this$3)), null);
                                                }
                                            });
                                        }
                                        ContentProposalPopup.access$2(6.access$0(this.this$2)).setContents(p.getDescription());
                                    } else if (ContentProposalPopup.access$2(6.access$0(this.this$2)) != null) {
                                        ContentProposalPopup.access$2(6.access$0(this.this$2)).close();
                                    }
                                    ContentProposalPopup.access$12(6.access$0(this.this$2), false);
                                }
                            }

                            static /* synthetic */ 6 access$0(7 var0) {
                                return var0.this$2;
                            }
                        });
                    }

                    static /* synthetic */ ContentProposalPopup access$0(6 var0) {
                        return var0.this$1;
                    }
                };
                Thread t = new Thread(runnable);
                t.start();
            }
        }

        private void acceptCurrentProposal() {
            IContentProposal proposal = this.getSelectedProposal();
            this.close();
            ContentProposalAdapter.this.proposalAccepted(proposal);
        }

        private void recomputeProposals(String filterText) {
            IContentProposal[] allProposals = ContentProposalAdapter.this.getProposals();
            if (allProposals == null) {
                allProposals = this.getEmptyProposalArray();
            }
            if (allProposals.length == 0) {
                this.proposals = allProposals;
                this.close();
            } else {
                this.setProposals(this.filterProposals(allProposals, filterText));
            }
        }

        private void asyncRecomputeProposals(String filterText) {
            if (this.isValid()) {
                ContentProposalAdapter.this.control.getDisplay().asyncExec(new Runnable(this, filterText){
                    final /* synthetic */ ContentProposalPopup this$1;
                    private final /* synthetic */ String val$filterText;
                    {
                        this.this$1 = contentProposalPopup;
                        this.val$filterText = string;
                    }

                    public void run() {
                        ContentProposalAdapter.access$11(ContentProposalPopup.access$15(this.this$1));
                        ContentProposalPopup.access$14(this.this$1, this.val$filterText);
                    }
                });
            } else {
                this.recomputeProposals(filterText);
            }
        }

        private IContentProposal[] filterProposals(IContentProposal[] proposals, String filterString) {
            if (filterString.length() == 0) {
                return proposals;
            }
            ArrayList<IContentProposal> list = new ArrayList<IContentProposal>();
            int i = 0;
            while (i < proposals.length) {
                String string = this.getString(proposals[i]);
                if (string.length() >= filterString.length() && string.substring(0, filterString.length()).equalsIgnoreCase(filterString)) {
                    list.add(proposals[i]);
                }
                ++i;
            }
            return list.toArray(new IContentProposal[list.size()]);
        }

        Listener getTargetControlListener() {
            if (this.targetControlListener == null) {
                this.targetControlListener = new TargetControlListener();
            }
            return this.targetControlListener;
        }

        static /* synthetic */ InfoPopupDialog access$2(ContentProposalPopup contentProposalPopup) {
            return contentProposalPopup.infoPopup;
        }

        static /* synthetic */ void access$10(ContentProposalPopup contentProposalPopup, Event event) {
            contentProposalPopup.handleSetData(event);
        }

        static /* synthetic */ void access$11(ContentProposalPopup contentProposalPopup) {
            contentProposalPopup.showProposalDescription();
        }

        static /* synthetic */ void access$12(ContentProposalPopup contentProposalPopup, boolean bl) {
            contentProposalPopup.pendingDescriptionUpdate = bl;
        }

        static /* synthetic */ void access$13(ContentProposalPopup contentProposalPopup, InfoPopupDialog infoPopupDialog) {
            contentProposalPopup.infoPopup = infoPopupDialog;
        }

        static /* synthetic */ void access$14(ContentProposalPopup contentProposalPopup, String string) {
            contentProposalPopup.recomputeProposals(string);
        }

        private class InfoPopupDialog
        extends PopupDialog {
            private Text text;
            private String contents = "";

            InfoPopupDialog(Shell parent) {
                super(parent, 540676, false, false, false, false, false, null, null);
            }

            protected Control createDialogArea(Composite parent) {
                this.text = new Text(parent, 524362);
                GridData gd = new GridData(1809);
                gd.horizontalIndent = 1;
                gd.verticalIndent = 1;
                this.text.setLayoutData((Object)gd);
                this.text.setText(this.contents);
                this.text.addFocusListener((FocusListener)new FocusAdapter(this){
                    final /* synthetic */ InfoPopupDialog this$2;
                    {
                        this.this$2 = infoPopupDialog;
                    }

                    public void focusGained(FocusEvent event) {
                        InfoPopupDialog.access$0(this.this$2).close();
                    }
                });
                return this.text;
            }

            protected void adjustBounds() {
                Rectangle proposedBounds;
                Rectangle parentBounds = this.getParentShell().getBounds();
                Rectangle rightProposedBounds = new Rectangle(parentBounds.x + parentBounds.width + 1, parentBounds.y + 1, parentBounds.width, parentBounds.height);
                if ((rightProposedBounds = this.getConstrainedShellBounds(rightProposedBounds)).intersects(parentBounds)) {
                    Rectangle leftProposedBounds = new Rectangle(parentBounds.x - parentBounds.width - 1 - 1, parentBounds.y, parentBounds.width, parentBounds.height);
                    if ((leftProposedBounds = this.getConstrainedShellBounds(leftProposedBounds)).intersects(parentBounds)) {
                        if (rightProposedBounds.x - parentBounds.x >= parentBounds.x - leftProposedBounds.x) {
                            rightProposedBounds.x = parentBounds.x + parentBounds.width + 1;
                            proposedBounds = rightProposedBounds;
                        } else {
                            leftProposedBounds.width = parentBounds.x - 1 - leftProposedBounds.x;
                            proposedBounds = leftProposedBounds;
                        }
                    } else {
                        proposedBounds = leftProposedBounds;
                    }
                } else {
                    proposedBounds = rightProposedBounds;
                }
                this.getShell().setBounds(proposedBounds);
            }

            protected Color getForeground() {
                return ContentProposalAdapter.this.control.getDisplay().getSystemColor(28);
            }

            protected Color getBackground() {
                return ContentProposalAdapter.this.control.getDisplay().getSystemColor(29);
            }

            void setContents(String newContents) {
                if (newContents == null) {
                    newContents = ContentProposalAdapter.EMPTY;
                }
                this.contents = newContents;
                if (this.text != null && !this.text.isDisposed()) {
                    this.text.setText(this.contents);
                }
            }

            boolean hasFocus() {
                if (this.text == null || this.text.isDisposed()) {
                    return false;
                }
                return this.text.getShell().isFocusControl() || this.text.isFocusControl();
            }

            static /* synthetic */ ContentProposalPopup access$0(InfoPopupDialog infoPopupDialog) {
                return infoPopupDialog.ContentProposalPopup.this;
            }
        }

        private final class PopupCloserListener
        implements Listener {
            private boolean scrollbarClicked = false;

            private PopupCloserListener() {
            }

            public void handleEvent(Event e) {
                if (e.type == 16) {
                    this.scrollbarClicked = false;
                    e.display.asyncExec(new Runnable(this, e){
                        final /* synthetic */ PopupCloserListener this$2;
                        private final /* synthetic */ Event val$e;
                        {
                            this.this$2 = popupCloserListener;
                            this.val$e = event;
                        }

                        public void run() {
                            if (ContentProposalPopup.access$0(PopupCloserListener.access$2(this.this$2))) {
                                if (PopupCloserListener.access$0(this.this$2) || ContentProposalPopup.access$1(PopupCloserListener.access$2(this.this$2))) {
                                    return;
                                }
                                Shell activeShell = this.val$e.display.getActiveShell();
                                if (activeShell == PopupCloserListener.access$2(this.this$2).getShell() || ContentProposalPopup.access$2(PopupCloserListener.access$2(this.this$2)) != null && ContentProposalPopup.access$2(PopupCloserListener.access$2(this.this$2)).getShell() == activeShell) {
                                    return;
                                }
                                PopupCloserListener.access$2(this.this$2).close();
                            }
                        }
                    });
                    return;
                }
                if (e.type == 13) {
                    this.scrollbarClicked = true;
                    return;
                }
                ContentProposalPopup.this.close();
            }

            void installListeners() {
                ContentProposalPopup.this.proposalTable.addListener(16, (Listener)this);
                ScrollBar scrollbar = ContentProposalPopup.this.proposalTable.getVerticalBar();
                if (scrollbar != null) {
                    scrollbar.addListener(13, (Listener)this);
                }
                ContentProposalPopup.this.getShell().addListener(27, (Listener)this);
                ContentProposalPopup.this.getShell().addListener(21, (Listener)this);
                ContentProposalAdapter.this.control.addListener(8, (Listener)this);
                ContentProposalAdapter.this.control.addListener(3, (Listener)this);
                ContentProposalAdapter.this.control.addListener(12, (Listener)this);
                ContentProposalAdapter.this.control.addListener(16, (Listener)this);
                Shell controlShell = ContentProposalAdapter.this.control.getShell();
                controlShell.addListener(10, (Listener)this);
                controlShell.addListener(11, (Listener)this);
            }

            void removeListeners() {
                if (ContentProposalPopup.this.isValid()) {
                    ContentProposalPopup.this.proposalTable.removeListener(16, (Listener)this);
                    ScrollBar scrollbar = ContentProposalPopup.this.proposalTable.getVerticalBar();
                    if (scrollbar != null) {
                        scrollbar.removeListener(13, (Listener)this);
                    }
                    ContentProposalPopup.this.getShell().removeListener(27, (Listener)this);
                    ContentProposalPopup.this.getShell().removeListener(21, (Listener)this);
                }
                if (ContentProposalAdapter.this.control != null && !ContentProposalAdapter.this.control.isDisposed()) {
                    ContentProposalAdapter.this.control.removeListener(8, (Listener)this);
                    ContentProposalAdapter.this.control.removeListener(3, (Listener)this);
                    ContentProposalAdapter.this.control.removeListener(12, (Listener)this);
                    ContentProposalAdapter.this.control.removeListener(16, (Listener)this);
                    Shell controlShell = ContentProposalAdapter.this.control.getShell();
                    controlShell.removeListener(10, (Listener)this);
                    controlShell.removeListener(11, (Listener)this);
                }
            }

            static /* synthetic */ boolean access$0(PopupCloserListener popupCloserListener) {
                return popupCloserListener.scrollbarClicked;
            }

            static /* synthetic */ ContentProposalPopup access$2(PopupCloserListener popupCloserListener) {
                return popupCloserListener.ContentProposalPopup.this;
            }
        }

        private final class TargetControlListener
        implements Listener {
            private TargetControlListener() {
            }

            public void handleEvent(Event e) {
                if (!ContentProposalPopup.this.isValid()) {
                    return;
                }
                char key = e.character;
                if (e.type == 31) {
                    if (key != '\u0000') {
                        e.doit = false;
                        return;
                    }
                    e.detail = 0;
                    e.doit = true;
                } else {
                    e.doit = ContentProposalAdapter.this.propagateKeys;
                }
                if (key == '\u0000') {
                    int newSelection = ContentProposalPopup.this.proposalTable.getSelectionIndex();
                    int visibleRows = ((ContentProposalPopup)ContentProposalPopup.this).proposalTable.getSize().y / ContentProposalPopup.this.proposalTable.getItemHeight() - 1;
                    switch (e.keyCode) {
                        case 0x1000001: {
                            if (--newSelection < 0) {
                                newSelection = ContentProposalPopup.this.proposalTable.getItemCount() - 1;
                            }
                            if (e.type != 1) break;
                            e.doit = false;
                            break;
                        }
                        case 0x1000002: {
                            if (++newSelection > ContentProposalPopup.this.proposalTable.getItemCount() - 1) {
                                newSelection = 0;
                            }
                            if (e.type != 1) break;
                            e.doit = false;
                            break;
                        }
                        case 0x1000006: {
                            if ((newSelection += visibleRows) >= ContentProposalPopup.this.proposalTable.getItemCount()) {
                                newSelection = ContentProposalPopup.this.proposalTable.getItemCount() - 1;
                            }
                            if (e.type != 1) break;
                            e.doit = false;
                            break;
                        }
                        case 0x1000005: {
                            if ((newSelection -= visibleRows) < 0) {
                                newSelection = 0;
                            }
                            if (e.type != 1) break;
                            e.doit = false;
                            break;
                        }
                        case 0x1000007: {
                            newSelection = 0;
                            if (e.type != 1) break;
                            e.doit = false;
                            break;
                        }
                        case 0x1000008: {
                            newSelection = ContentProposalPopup.this.proposalTable.getItemCount() - 1;
                            if (e.type != 1) break;
                            e.doit = false;
                            break;
                        }
                        case 0x1000003: 
                        case 0x1000004: {
                            if (e.type == 31) {
                                e.doit = false;
                                break;
                            }
                            e.doit = true;
                            String contents = ContentProposalAdapter.this.getControlContentAdapter().getControlContents(ContentProposalAdapter.this.getControl());
                            if (contents.length() <= 0) break;
                            ContentProposalPopup.this.asyncRecomputeProposals(ContentProposalPopup.this.filterText);
                            break;
                        }
                        default: {
                            if (e.keyCode != 16777298 && e.keyCode != 16777299 && e.keyCode != SWT.MOD1 && e.keyCode != SWT.MOD2 && e.keyCode != SWT.MOD3 && e.keyCode != SWT.MOD4) {
                                ContentProposalPopup.this.close();
                            }
                            return;
                        }
                    }
                    if (newSelection >= 0) {
                        ContentProposalPopup.this.selectProposal(newSelection);
                    }
                    return;
                }
                switch (key) {
                    case '\u001b': {
                        e.doit = false;
                        ContentProposalPopup.this.close();
                        break;
                    }
                    case '\n': 
                    case '\r': {
                        e.doit = false;
                        IContentProposal p = ContentProposalPopup.this.getSelectedProposal();
                        if (p != null) {
                            ContentProposalPopup.this.acceptCurrentProposal();
                            break;
                        }
                        ContentProposalPopup.this.close();
                        break;
                    }
                    case '\t': {
                        e.doit = false;
                        ContentProposalPopup.this.getShell().setFocus();
                        return;
                    }
                    case '\b': {
                        if (ContentProposalAdapter.this.filterStyle != 1) {
                            if (ContentProposalPopup.this.filterText.length() == 0) {
                                return;
                            }
                            ContentProposalPopup.this.filterText = ContentProposalPopup.this.filterText.substring(0, ContentProposalPopup.this.filterText.length() - 1);
                            ContentProposalPopup.this.asyncRecomputeProposals(ContentProposalPopup.this.filterText);
                            return;
                        }
                        int pos = ContentProposalAdapter.this.getControlContentAdapter().getCursorPosition(ContentProposalAdapter.this.getControl());
                        if (pos <= 0) break;
                        ContentProposalPopup.this.asyncRecomputeProposals(ContentProposalPopup.this.filterText);
                        break;
                    }
                    default: {
                        if (!Character.isDefined(key)) break;
                        if (ContentProposalAdapter.this.filterStyle == 3) {
                            ContentProposalPopup contentProposalPopup = ContentProposalPopup.this;
                            contentProposalPopup.filterText = String.valueOf(contentProposalPopup.filterText) + String.valueOf(key);
                        } else if (ContentProposalAdapter.this.filterStyle == 2) {
                            ContentProposalPopup.this.filterText = String.valueOf(key);
                        }
                        ContentProposalPopup.this.asyncRecomputeProposals(ContentProposalPopup.this.filterText);
                    }
                }
            }
        }
    }
}

