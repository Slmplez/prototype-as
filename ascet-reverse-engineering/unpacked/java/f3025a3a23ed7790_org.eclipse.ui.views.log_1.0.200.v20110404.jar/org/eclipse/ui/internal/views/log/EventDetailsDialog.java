/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.DateFormat
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.TrayDialog
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.custom.SashForm
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.ui.IMemento
 *  org.eclipse.ui.PlatformUI
 */
package org.eclipse.ui.internal.views.log;

import com.ibm.icu.text.DateFormat;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.TrayDialog;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.custom.SashForm;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.views.log.AbstractEntry;
import org.eclipse.ui.internal.views.log.Activator;
import org.eclipse.ui.internal.views.log.FilterDialog;
import org.eclipse.ui.internal.views.log.LogEntry;
import org.eclipse.ui.internal.views.log.LogView;
import org.eclipse.ui.internal.views.log.LogViewLabelProvider;
import org.eclipse.ui.internal.views.log.Messages;
import org.eclipse.ui.internal.views.log.SharedImages;

public class EventDetailsDialog
extends TrayDialog {
    public static final String FILTER_ENABLED = "detailsStackFilterEnabled";
    public static final String FILTER_LIST = "detailsStackFilterList";
    private IMemento memento;
    private AbstractEntry entry;
    private AbstractEntry parentEntry;
    private AbstractEntry[] entryChildren;
    private LogViewLabelProvider labelProvider;
    private TreeViewer provider;
    private static int COPY_ID = 22;
    private int childIndex = 0;
    private boolean isOpen;
    private boolean isLastChild;
    private boolean isAtEndOfLog;
    private Label dateLabel;
    private Label severityImageLabel;
    private Label severityLabel;
    private Text msgText;
    private Text stackTraceText;
    private Text sessionDataText;
    private Clipboard clipboard;
    private Button copyButton;
    private Button backButton;
    private Button nextButton;
    private SashForm sashForm;
    private Comparator comparator = null;
    Collator collator;
    private String[] stackFilterPatterns = null;
    private Point dialogLocation;
    private Point dialogSize;
    private int[] sashWeights;
    private DateFormat dateFormat = DateFormat.getDateTimeInstance((int)3, (int)3);

    protected EventDetailsDialog(Shell parentShell, IAdaptable selection, ISelectionProvider provider, Comparator comparator, IMemento memento) {
        super(parentShell);
        this.provider = (TreeViewer)provider;
        this.labelProvider = (LogViewLabelProvider)this.provider.getLabelProvider();
        this.labelProvider.connect((Object)this);
        this.entry = (AbstractEntry)selection;
        this.comparator = comparator;
        this.memento = memento;
        this.setShellStyle(3312);
        this.clipboard = new Clipboard(parentShell.getDisplay());
        this.initialize();
        this.collator = Collator.getInstance();
        this.readConfiguration();
        this.isLastChild = false;
        this.isAtEndOfLog = false;
        this.stackFilterPatterns = this.getFilters();
    }

    protected void configureShell(Shell newShell) {
        super.configureShell(newShell);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)newShell, "org.eclipse.pde.doc.user.log_eventdetails");
    }

    private void initialize() {
        this.parentEntry = (AbstractEntry)((Object)this.entry.getParent((Object)this.entry));
        if (this.isChild(this.entry)) {
            this.setEntryChildren(this.parentEntry);
        } else {
            this.setEntryChildren();
        }
        this.resetChildIndex();
        this.isLastChild = false;
        this.isAtEndOfLog = false;
    }

    private void resetChildIndex() {
        if (this.entryChildren == null) {
            return;
        }
        LogEntry thisEntry = (LogEntry)this.entry;
        int i = 0;
        while (i < this.entryChildren.length) {
            LogEntry logEntry;
            if (this.entryChildren[i] instanceof LogEntry && (logEntry = (LogEntry)this.entryChildren[i]) == thisEntry) {
                this.childIndex = i;
                return;
            }
            ++i;
        }
        this.childIndex = 0;
    }

    private boolean isChild(AbstractEntry entry) {
        return entry.getParent((Object)entry) != null;
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    public int open() {
        this.isOpen = true;
        if (this.sashWeights == null) {
            int a;
            int b;
            int c;
            int height = this.getSashForm().getClientArea().height;
            if (height < 250) {
                b = c = height / 3;
                a = c;
            } else {
                a = 100;
                c = 100;
                b = height - a - c;
            }
            this.sashWeights = new int[]{a, b, c};
        }
        this.getSashForm().setWeights(this.sashWeights);
        return super.open();
    }

    public boolean close() {
        if (this.clipboard != null) {
            this.clipboard.dispose();
            this.clipboard = null;
        }
        this.storeSettings();
        this.isOpen = false;
        this.labelProvider.disconnect((Object)this);
        return super.close();
    }

    public void create() {
        super.create();
        if (this.dialogLocation != null) {
            this.getShell().setLocation(this.dialogLocation);
        }
        if (this.dialogSize != null) {
            this.getShell().setSize(this.dialogSize);
        } else {
            this.getShell().setSize(500, 550);
        }
        EventDetailsDialog.applyDialogFont((Control)this.buttonBar);
        this.getButton(0).setFocus();
    }

    protected void buttonPressed(int buttonId) {
        if (buttonId == 0) {
            this.okPressed();
        } else if (1 == buttonId) {
            this.cancelPressed();
        } else if (14 == buttonId) {
            this.backPressed();
        } else if (15 == buttonId) {
            this.nextPressed();
        } else if (COPY_ID == buttonId) {
            this.copyPressed();
        }
    }

    protected void backPressed() {
        if (this.childIndex > 0) {
            if (this.isLastChild && this.isChild(this.entry)) {
                this.setEntryChildren(this.parentEntry);
                this.isLastChild = false;
            }
            --this.childIndex;
            this.entry = this.entryChildren[this.childIndex];
        } else if (this.parentEntry instanceof LogEntry) {
            this.entry = this.parentEntry;
            if (this.isChild(this.entry)) {
                this.setEntryChildren((AbstractEntry)((Object)this.entry.getParent((Object)this.entry)));
            } else {
                this.setEntryChildren();
            }
            this.resetChildIndex();
        }
        this.setEntrySelectionInTable();
    }

    protected void nextPressed() {
        if (this.childIndex < this.entryChildren.length - 1) {
            ++this.childIndex;
            this.entry = this.entryChildren[this.childIndex];
            this.isLastChild = this.childIndex == this.entryChildren.length - 1;
        } else if (this.isChild(this.entry) && this.isLastChild && !this.isAtEndOfLog) {
            this.findNextSelectedChild(this.entry);
        } else {
            this.setEntryChildren(this.entry);
            this.entry = this.entryChildren[0];
            this.isAtEndOfLog = this.entryChildren.length == 0;
            this.isLastChild = this.entryChildren.length == 0;
        }
        this.setEntrySelectionInTable();
    }

    protected void copyPressed() {
        StringWriter writer = new StringWriter();
        PrintWriter pwriter = new PrintWriter(writer);
        this.entry.write(pwriter);
        pwriter.flush();
        String textVersion = writer.toString();
        try {
            pwriter.close();
            writer.close();
        }
        catch (IOException iOException) {}
        this.clipboard.setContents(new Object[]{textVersion}, new Transfer[]{TextTransfer.getInstance()});
    }

    public void setComparator(Comparator comparator) {
        this.comparator = comparator;
        this.updateProperties();
    }

    private void setComparator(byte sortType, final int sortOrder) {
        this.comparator = sortType == 2 ? new Comparator(){

            public int compare(Object e1, Object e2) {
                Date date1 = ((LogEntry)((Object)e1)).getDate();
                Date date2 = ((LogEntry)((Object)e2)).getDate();
                if (sortOrder == LogView.ASCENDING) {
                    return date1.getTime() < date2.getTime() ? LogView.DESCENDING : LogView.ASCENDING;
                }
                return date1.getTime() > date2.getTime() ? LogView.DESCENDING : LogView.ASCENDING;
            }
        } : (sortType == 1 ? new Comparator(){

            public int compare(Object e1, Object e2) {
                LogEntry entry1 = (LogEntry)((Object)e1);
                LogEntry entry2 = (LogEntry)((Object)e2);
                return EventDetailsDialog.this.collator.compare(entry1.getPluginId(), entry2.getPluginId()) * sortOrder;
            }
        } : new Comparator(){

            public int compare(Object e1, Object e2) {
                LogEntry entry1 = (LogEntry)((Object)e1);
                LogEntry entry2 = (LogEntry)((Object)e2);
                return EventDetailsDialog.this.collator.compare(entry1.getMessage(), entry2.getMessage()) * sortOrder;
            }
        });
    }

    public void resetSelection(IAdaptable selectedEntry, byte sortType, int sortOrder) {
        this.setComparator(sortType, sortOrder);
        this.resetSelection(selectedEntry);
    }

    public void resetSelection(IAdaptable selectedEntry) {
        if (((Object)((Object)this.entry)).equals(selectedEntry)) {
            this.updateProperties();
            return;
        }
        if (selectedEntry instanceof AbstractEntry) {
            this.entry = (AbstractEntry)selectedEntry;
            this.initialize();
            this.updateProperties();
        }
    }

    public void resetButtons() {
        this.backButton.setEnabled(false);
        this.nextButton.setEnabled(false);
    }

    private void setEntrySelectionInTable() {
        StructuredSelection selection = new StructuredSelection((Object)this.entry);
        this.provider.setSelection((ISelection)selection);
    }

    public void updateProperties() {
        if (this.isChild(this.entry)) {
            this.parentEntry = (AbstractEntry)((Object)this.entry.getParent((Object)this.entry));
            this.setEntryChildren(this.parentEntry);
            this.resetChildIndex();
            if (this.childIndex == this.entryChildren.length - 1) {
                this.isLastChild = true;
            }
        }
        if (this.entry instanceof LogEntry) {
            String session;
            LogEntry logEntry = (LogEntry)this.entry;
            String strDate = this.dateFormat.format(logEntry.getDate());
            this.dateLabel.setText(strDate);
            this.severityImageLabel.setImage(this.labelProvider.getColumnImage((Object)this.entry, 0));
            this.severityLabel.setText(logEntry.getSeverityText());
            this.msgText.setText(logEntry.getMessage() != null ? logEntry.getMessage() : "");
            String stack = logEntry.getStack();
            if (stack != null) {
                stack = this.filterStack(stack);
                this.stackTraceText.setText(stack);
            } else {
                this.stackTraceText.setText(Messages.EventDetailsDialog_noStack);
            }
            if (logEntry.getSession() != null && (session = logEntry.getSession().getSessionData()) != null) {
                this.sessionDataText.setText(session);
            }
        } else {
            this.dateLabel.setText("");
            this.severityImageLabel.setImage(null);
            this.severityLabel.setText("");
            this.msgText.setText("");
            this.stackTraceText.setText("");
            this.sessionDataText.setText("");
        }
        this.updateButtons();
    }

    private void updateButtons() {
        boolean isAtEnd;
        boolean bl = isAtEnd = this.childIndex == this.entryChildren.length - 1;
        if (this.isChild(this.entry)) {
            boolean canGoToParent = this.entry.getParent((Object)this.entry) instanceof LogEntry;
            this.backButton.setEnabled(this.childIndex > 0 || canGoToParent);
            this.nextButton.setEnabled(this.nextChildExists(this.entry, this.parentEntry, this.entryChildren) || this.entry.hasChildren() || !this.isLastChild || !isAtEnd);
        } else {
            this.backButton.setEnabled(this.childIndex != 0);
            this.nextButton.setEnabled(!isAtEnd || this.entry.hasChildren());
        }
    }

    private void findNextSelectedChild(AbstractEntry originalEntry) {
        if (this.isChild(this.parentEntry)) {
            this.entry = this.parentEntry;
            this.setEntryChildren((AbstractEntry)((Object)this.parentEntry.getParent((Object)this.parentEntry)));
            this.parentEntry = (AbstractEntry)((Object)this.parentEntry.getParent((Object)this.parentEntry));
            this.resetChildIndex();
            boolean bl = this.isLastChild = this.childIndex == this.entryChildren.length - 1;
            if (this.isLastChild) {
                this.findNextSelectedChild(originalEntry);
            } else {
                this.nextPressed();
            }
        } else if (this.parentEntry instanceof LogEntry) {
            this.entry = this.parentEntry;
            this.setEntryChildren();
            this.resetChildIndex();
            boolean bl = this.isLastChild = this.childIndex == this.entryChildren.length - 1;
            if (this.isLastChild) {
                if (this.isChild(this.entry)) {
                    this.findNextSelectedChild(originalEntry);
                } else {
                    this.entry = originalEntry;
                    this.isAtEndOfLog = true;
                    this.nextPressed();
                }
            } else {
                this.nextPressed();
            }
        } else {
            this.entry = originalEntry;
            this.isAtEndOfLog = true;
            this.nextPressed();
        }
    }

    private boolean nextChildExists(AbstractEntry originalEntry, AbstractEntry originalParent, AbstractEntry[] originalEntries) {
        if (this.isChild(this.parentEntry)) {
            this.entry = this.parentEntry;
            this.parentEntry = (AbstractEntry)((Object)this.entry.getParent((Object)this.entry));
            this.setEntryChildren(this.parentEntry);
            this.resetChildIndex();
            if (this.childIndex == this.entryChildren.length - 1) {
                return this.nextChildExists(originalEntry, originalParent, originalEntries);
            }
            this.entry = originalEntry;
            this.parentEntry = originalParent;
            this.entryChildren = originalEntries;
            this.resetChildIndex();
            return true;
        }
        if (this.parentEntry instanceof LogEntry) {
            this.entry = this.parentEntry;
            this.setEntryChildren();
            this.childIndex = -1;
            this.resetChildIndex();
            if (this.childIndex != -1 && this.childIndex < this.entryChildren.length - 1) {
                this.entry = originalEntry;
                this.parentEntry = originalParent;
                this.entryChildren = originalEntries;
                this.resetChildIndex();
                return true;
            }
        }
        this.entry = originalEntry;
        this.parentEntry = originalParent;
        this.entryChildren = originalEntries;
        this.resetChildIndex();
        return false;
    }

    private void setEntryChildren() {
        AbstractEntry[] children = this.getElements();
        if (this.comparator != null) {
            Arrays.sort(children, this.comparator);
        }
        this.entryChildren = new AbstractEntry[children.length];
        System.arraycopy(children, 0, this.entryChildren, 0, children.length);
    }

    private void setEntryChildren(AbstractEntry entry) {
        Object[] children = entry.getChildren((Object)entry);
        if (this.comparator != null) {
            Arrays.sort(children, this.comparator);
        }
        ArrayList<Object> result = new ArrayList<Object>();
        int i = 0;
        while (i < children.length) {
            if (children[i] instanceof AbstractEntry) {
                result.add(children[i]);
            }
            ++i;
        }
        this.entryChildren = result.toArray(new AbstractEntry[result.size()]);
    }

    public SashForm getSashForm() {
        return this.sashForm;
    }

    protected Control createDialogArea(Composite parent) {
        Composite container = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 1;
        container.setLayout((Layout)layout);
        GridData gd = new GridData(1808);
        container.setLayoutData((Object)gd);
        this.createSashForm(container);
        this.createDetailsSection((Composite)this.getSashForm());
        this.createStackSection((Composite)this.getSashForm());
        this.createSessionSection((Composite)this.getSashForm());
        this.updateProperties();
        Dialog.applyDialogFont((Control)container);
        return container;
    }

    private void createSashForm(Composite parent) {
        this.sashForm = new SashForm(parent, 512);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        this.sashForm.setLayout((Layout)layout);
        this.sashForm.setLayoutData((Object)new GridData(1808));
        this.sashForm.setSashWidth(10);
    }

    private void createToolbarButtonBar(Composite parent) {
        Composite comp = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        comp.setLayout((Layout)layout);
        comp.setLayoutData((Object)new GridData(1040));
        ((GridData)comp.getLayoutData()).verticalAlignment = 1024;
        Composite container = new Composite(comp, 0);
        layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        container.setLayout((Layout)layout);
        container.setLayoutData((Object)new GridData(1808));
        this.backButton = this.createButton(container, 14, "", false);
        GridData gd = new GridData(768);
        this.backButton.setLayoutData((Object)gd);
        this.backButton.setToolTipText(Messages.EventDetailsDialog_previous);
        this.backButton.setImage(SharedImages.getImage("icons/eview16/event_prev.gif"));
        this.backButton.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = Messages.EventDetailsDialog_previous;
            }
        });
        this.copyButton = this.createButton(container, COPY_ID, "", false);
        gd = new GridData();
        this.copyButton.setLayoutData((Object)gd);
        this.copyButton.setImage(PlatformUI.getWorkbench().getSharedImages().getImage("IMG_TOOL_COPY"));
        this.copyButton.setToolTipText(Messages.EventDetailsDialog_copy);
        this.copyButton.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = Messages.EventDetailsDialog_copy;
            }
        });
        this.nextButton = this.createButton(container, 15, "", false);
        gd = new GridData();
        this.nextButton.setLayoutData((Object)gd);
        this.nextButton.setToolTipText(Messages.EventDetailsDialog_next);
        this.nextButton.setImage(SharedImages.getImage("icons/eview16/event_next.gif"));
        this.nextButton.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = Messages.EventDetailsDialog_next;
            }
        });
        Button button = new Button(container, 0);
        button.setToolTipText(Messages.EventDetailsDialog_ShowFilterDialog);
        button.setImage(SharedImages.getImage("icons/elcl16/filter_ps.gif"));
        gd = new GridData();
        gd.horizontalAlignment = 131072;
        button.setLayoutData((Object)gd);
        button.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                FilterDialog dialog = new FilterDialog(EventDetailsDialog.this.getShell(), EventDetailsDialog.this.memento);
                dialog.create();
                dialog.getShell().setText(Messages.EventDetailsDialog_FilterDialog);
                if (dialog.open() == 0) {
                    EventDetailsDialog.this.stackFilterPatterns = EventDetailsDialog.this.getFilters();
                }
                EventDetailsDialog.this.updateProperties();
            }
        });
        button.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = Messages.EventDetailsDialog_FilterDialog;
            }
        });
        layout.numColumns = 2;
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
    }

    private void createDetailsSection(Composite parent) {
        Composite container = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.numColumns = 2;
        container.setLayout((Layout)layout);
        GridData data = new GridData(768);
        data.heightHint = 200;
        container.setLayoutData((Object)data);
        this.createTextSection(container);
        this.createToolbarButtonBar(container);
    }

    private void createTextSection(Composite parent) {
        Composite textContainer = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 3;
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        textContainer.setLayout((Layout)layout);
        textContainer.setLayoutData((Object)new GridData(1808));
        Label label = new Label(textContainer, 0);
        label.setText(Messages.EventDetailsDialog_date);
        this.dateLabel = new Label(textContainer, 0);
        GridData gd = new GridData(768);
        gd.horizontalSpan = 2;
        this.dateLabel.setLayoutData((Object)gd);
        label = new Label(textContainer, 0);
        label.setText(Messages.EventDetailsDialog_severity);
        this.severityImageLabel = new Label(textContainer, 0);
        this.severityLabel = new Label(textContainer, 0);
        gd = new GridData(768);
        this.severityLabel.setLayoutData((Object)gd);
        label = new Label(textContainer, 0);
        label.setText(Messages.EventDetailsDialog_message);
        gd = new GridData(2);
        label.setLayoutData((Object)gd);
        this.msgText = new Text(textContainer, 2626);
        this.msgText.setEditable(false);
        gd = new GridData(1810);
        gd.horizontalSpan = 2;
        gd.grabExcessVerticalSpace = true;
        this.msgText.setLayoutData((Object)gd);
    }

    private void createStackSection(Composite parent) {
        Composite container = new Composite(parent, 0);
        GridLayout layout = new GridLayout(2, false);
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        container.setLayout((Layout)layout);
        GridData gd = new GridData(1808);
        gd.heightHint = 200;
        container.setLayoutData((Object)gd);
        Label label = new Label(container, 0);
        label.setText(Messages.EventDetailsDialog_exception);
        gd = new GridData();
        gd.verticalAlignment = 1024;
        label.setLayoutData((Object)gd);
        this.stackTraceText = new Text(container, 2818);
        gd = new GridData(1808);
        gd.grabExcessHorizontalSpace = true;
        gd.horizontalSpan = 2;
        this.stackTraceText.setLayoutData((Object)gd);
        this.stackTraceText.setEditable(false);
    }

    private void createSessionSection(Composite parent) {
        Composite container = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        container.setLayout((Layout)layout);
        GridData gd = new GridData(768);
        gd.heightHint = 100;
        container.setLayoutData((Object)gd);
        Label label = new Label(container, 0);
        label.setText(Messages.EventDetailsDialog_session);
        gd = new GridData(768);
        label.setLayoutData((Object)gd);
        this.sessionDataText = new Text(container, 2816);
        gd = new GridData(1808);
        gd.grabExcessHorizontalSpace = true;
        this.sessionDataText.setLayoutData((Object)gd);
        this.sessionDataText.setEditable(false);
    }

    private String[] getFilters() {
        Boolean filterEnabled = this.memento.getBoolean(FILTER_ENABLED);
        String filtersString = this.memento.getString(FILTER_LIST);
        if (filterEnabled == null || !filterEnabled.booleanValue() || filtersString == null) {
            return new String[0];
        }
        StringTokenizer st = new StringTokenizer(filtersString, ";");
        ArrayList<String> filters = new ArrayList<String>();
        while (st.hasMoreElements()) {
            String filter = st.nextToken();
            filters.add(filter);
        }
        return filters.toArray(new String[filters.size()]);
    }

    private String filterStack(String stack) {
        if (this.stackFilterPatterns.length == 0) {
            return stack;
        }
        StringTokenizer st = new StringTokenizer(stack, "\n");
        StringBuffer result = new StringBuffer();
        while (st.hasMoreTokens()) {
            String stackElement = st.nextToken();
            boolean filtered = false;
            int i = 0;
            while (!filtered && i < this.stackFilterPatterns.length) {
                filtered = stackElement.indexOf(this.stackFilterPatterns[i]) >= 0;
                ++i;
            }
            if (filtered) continue;
            result.append(stackElement).append("\n");
        }
        return result.toString();
    }

    private void storeSettings() {
        this.writeConfiguration();
    }

    private IDialogSettings getDialogSettings() {
        IDialogSettings settings = Activator.getDefault().getDialogSettings();
        IDialogSettings dialogSettings = settings.getSection(((Object)((Object)this)).getClass().getName());
        if (dialogSettings == null) {
            dialogSettings = settings.addNewSection(((Object)((Object)this)).getClass().getName());
        }
        return dialogSettings;
    }

    private void readConfiguration() {
        IDialogSettings s = this.getDialogSettings();
        try {
            int x = s.getInt("x");
            int y = s.getInt("y");
            this.dialogLocation = new Point(x, y);
            x = s.getInt("width");
            y = s.getInt("height");
            this.dialogSize = new Point(x, y);
            this.sashWeights = new int[3];
            this.sashWeights[0] = s.getInt("sashWidth1");
            this.sashWeights[1] = s.getInt("sashWidth2");
            this.sashWeights[2] = s.getInt("sashWidth3");
        }
        catch (NumberFormatException numberFormatException) {
            this.dialogLocation = null;
            this.dialogSize = null;
            this.sashWeights = null;
        }
    }

    private void writeConfiguration() {
        IDialogSettings s = this.getDialogSettings();
        Point location = this.getShell().getLocation();
        s.put("x", location.x);
        s.put("y", location.y);
        Point size = this.getShell().getSize();
        s.put("width", size.x);
        s.put("height", size.y);
        this.sashWeights = this.getSashForm().getWeights();
        s.put("sashWidth1", this.sashWeights[0]);
        s.put("sashWidth2", this.sashWeights[1]);
        s.put("sashWidth3", this.sashWeights[2]);
    }

    private AbstractEntry[] getElements() {
        return (AbstractEntry[])((ITreeContentProvider)this.provider.getContentProvider()).getElements(null);
    }
}

