/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.dialogs;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.dialogs.FilteredList;
import org.eclipse.ui.dialogs.ISelectionStatusValidator;
import org.eclipse.ui.dialogs.SelectionStatusDialog;

public abstract class AbstractElementListSelectionDialog
extends SelectionStatusDialog {
    private ILabelProvider fRenderer;
    private boolean fIgnoreCase = true;
    private boolean fIsMultipleSelection = false;
    private boolean fMatchEmptyString = true;
    private boolean fAllowDuplicates = true;
    private Label fMessage;
    protected FilteredList fFilteredList;
    private Text fFilterText;
    private ISelectionStatusValidator fValidator;
    private String fFilter = null;
    private String fEmptyListMessage = "";
    private String fEmptySelectionMessage = "";
    private int fWidth = 60;
    private int fHeight = 18;
    private Object[] fSelection = new Object[0];

    protected AbstractElementListSelectionDialog(Shell parent, ILabelProvider renderer) {
        super(parent);
        this.fRenderer = renderer;
    }

    protected void handleDefaultSelected() {
        if (this.validateCurrentSelection()) {
            this.buttonPressed(0);
        }
    }

    public void setIgnoreCase(boolean ignoreCase) {
        this.fIgnoreCase = ignoreCase;
    }

    public boolean isCaseIgnored() {
        return this.fIgnoreCase;
    }

    public void setMatchEmptyString(boolean matchEmptyString) {
        this.fMatchEmptyString = matchEmptyString;
    }

    public void setMultipleSelection(boolean multipleSelection) {
        this.fIsMultipleSelection = multipleSelection;
    }

    public void setAllowDuplicates(boolean allowDuplicates) {
        this.fAllowDuplicates = allowDuplicates;
    }

    public void setSize(int width, int height) {
        this.fWidth = width;
        this.fHeight = height;
    }

    public void setEmptyListMessage(String message) {
        this.fEmptyListMessage = message;
    }

    public void setEmptySelectionMessage(String message) {
        this.fEmptySelectionMessage = message;
    }

    public void setValidator(ISelectionStatusValidator validator) {
        this.fValidator = validator;
    }

    protected void setListElements(Object[] elements) {
        Assert.isNotNull((Object)((Object)this.fFilteredList));
        this.fFilteredList.setElements(elements);
    }

    public void setFilter(String filter) {
        if (this.fFilterText == null) {
            this.fFilter = filter;
        } else {
            this.fFilterText.setText(filter);
        }
    }

    public String getFilter() {
        if (this.fFilteredList == null) {
            return this.fFilter;
        }
        return this.fFilteredList.getFilter();
    }

    protected int[] getSelectionIndices() {
        Assert.isNotNull((Object)((Object)this.fFilteredList));
        return this.fFilteredList.getSelectionIndices();
    }

    protected int getSelectionIndex() {
        Assert.isNotNull((Object)((Object)this.fFilteredList));
        return this.fFilteredList.getSelectionIndex();
    }

    protected void setSelection(Object[] selection) {
        Assert.isNotNull((Object)((Object)this.fFilteredList));
        this.fFilteredList.setSelection(selection);
    }

    protected Object[] getSelectedElements() {
        Assert.isNotNull((Object)((Object)this.fFilteredList));
        return this.fFilteredList.getSelection();
    }

    public Object[] getFoldedElements(int index) {
        Assert.isNotNull((Object)((Object)this.fFilteredList));
        return this.fFilteredList.getFoldedElements(index);
    }

    protected Label createMessageArea(Composite composite) {
        Label label = super.createMessageArea(composite);
        GridData data = new GridData();
        data.grabExcessVerticalSpace = false;
        data.grabExcessHorizontalSpace = true;
        data.horizontalAlignment = 4;
        data.verticalAlignment = 1;
        label.setLayoutData((Object)data);
        this.fMessage = label;
        return label;
    }

    protected void handleSelectionChanged() {
        this.validateCurrentSelection();
    }

    protected boolean validateCurrentSelection() {
        Assert.isNotNull((Object)((Object)this.fFilteredList));
        Object[] elements = this.getSelectedElements();
        Object status = elements.length > 0 ? (this.fValidator != null ? this.fValidator.validate(elements) : new Status(0, "org.eclipse.ui", 0, "", null)) : (this.fFilteredList.isEmpty() ? new Status(4, "org.eclipse.ui", 4, this.fEmptyListMessage, null) : new Status(4, "org.eclipse.ui", 4, this.fEmptySelectionMessage, null));
        this.updateStatus((IStatus)status);
        return status.isOK();
    }

    protected void cancelPressed() {
        this.setResult(null);
        super.cancelPressed();
    }

    protected FilteredList createFilteredList(Composite parent) {
        int flags = 0xB00 | (this.fIsMultipleSelection ? 2 : 4);
        FilteredList list = new FilteredList(parent, flags, this.fRenderer, this.fIgnoreCase, this.fAllowDuplicates, this.fMatchEmptyString);
        GridData data = new GridData();
        data.widthHint = this.convertWidthInCharsToPixels(this.fWidth);
        data.heightHint = this.convertHeightInCharsToPixels(this.fHeight);
        data.grabExcessVerticalSpace = true;
        data.grabExcessHorizontalSpace = true;
        data.horizontalAlignment = 4;
        data.verticalAlignment = 4;
        list.setLayoutData(data);
        list.setFont(parent.getFont());
        list.setFilter(this.fFilter == null ? "" : this.fFilter);
        list.addSelectionListener(new SelectionListener(){

            public void widgetDefaultSelected(SelectionEvent e) {
                AbstractElementListSelectionDialog.this.handleDefaultSelected();
            }

            public void widgetSelected(SelectionEvent e) {
                AbstractElementListSelectionDialog.this.handleWidgetSelected();
            }
        });
        this.fFilteredList = list;
        return list;
    }

    private void handleWidgetSelected() {
        Object[] newSelection = this.fFilteredList.getSelection();
        if (newSelection.length != this.fSelection.length) {
            this.fSelection = newSelection;
            this.handleSelectionChanged();
        } else {
            int i = 0;
            while (i != newSelection.length) {
                if (!newSelection[i].equals(this.fSelection[i])) {
                    this.fSelection = newSelection;
                    this.handleSelectionChanged();
                    break;
                }
                ++i;
            }
        }
    }

    protected Text createFilterText(Composite parent) {
        Text text = new Text(parent, 2048);
        GridData data = new GridData();
        data.grabExcessVerticalSpace = false;
        data.grabExcessHorizontalSpace = true;
        data.horizontalAlignment = 4;
        data.verticalAlignment = 1;
        text.setLayoutData((Object)data);
        text.setFont(parent.getFont());
        text.setText(this.fFilter == null ? "" : this.fFilter);
        Listener listener = new Listener(){

            public void handleEvent(Event e) {
                AbstractElementListSelectionDialog.this.fFilteredList.setFilter(AbstractElementListSelectionDialog.this.fFilterText.getText());
            }
        };
        text.addListener(24, listener);
        text.addKeyListener(new KeyListener(){

            public void keyPressed(KeyEvent e) {
                if (e.keyCode == 0x1000002) {
                    AbstractElementListSelectionDialog.this.fFilteredList.setFocus();
                }
            }

            public void keyReleased(KeyEvent e) {
            }
        });
        this.fFilterText = text;
        return text;
    }

    public int open() {
        super.open();
        return this.getReturnCode();
    }

    private void access$superCreate() {
        super.create();
    }

    public void create() {
        BusyIndicator.showWhile(null, (Runnable)new Runnable(){

            public void run() {
                AbstractElementListSelectionDialog.this.access$superCreate();
                Assert.isNotNull((Object)((Object)AbstractElementListSelectionDialog.this.fFilteredList));
                if (AbstractElementListSelectionDialog.this.fFilteredList.isEmpty()) {
                    AbstractElementListSelectionDialog.this.handleEmptyList();
                } else {
                    AbstractElementListSelectionDialog.this.validateCurrentSelection();
                    AbstractElementListSelectionDialog.this.fFilterText.selectAll();
                    AbstractElementListSelectionDialog.this.fFilterText.setFocus();
                }
            }
        });
    }

    protected void handleEmptyList() {
        this.fMessage.setEnabled(false);
        this.fFilterText.setEnabled(false);
        this.fFilteredList.setEnabled(false);
        this.updateOkState();
    }

    protected void updateOkState() {
        Button okButton = this.getOkButton();
        if (okButton != null) {
            okButton.setEnabled(this.getSelectedElements().length != 0);
        }
    }

    protected ISelectionStatusValidator getValidator() {
        return this.fValidator;
    }
}

