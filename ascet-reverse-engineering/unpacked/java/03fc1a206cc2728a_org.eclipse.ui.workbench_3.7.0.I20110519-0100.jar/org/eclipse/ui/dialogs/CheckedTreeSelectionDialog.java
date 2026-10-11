/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.viewers.CheckStateChangedEvent
 *  org.eclipse.jface.viewers.CheckboxTreeViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ICheckStateListener
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.jface.viewers.ViewerSorter
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Tree
 */
package org.eclipse.ui.dialogs;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.CheckboxTreeViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.jface.viewers.ViewerSorter;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.ui.dialogs.ContainerCheckedTreeViewer;
import org.eclipse.ui.dialogs.ISelectionStatusValidator;
import org.eclipse.ui.dialogs.SelectionStatusDialog;
import org.eclipse.ui.internal.WorkbenchMessages;

public class CheckedTreeSelectionDialog
extends SelectionStatusDialog {
    private CheckboxTreeViewer fViewer;
    private ILabelProvider fLabelProvider;
    private ITreeContentProvider fContentProvider;
    private ISelectionStatusValidator fValidator = null;
    private ViewerComparator fComparator;
    private String fEmptyListMessage = WorkbenchMessages.CheckedTreeSelectionDialog_nothing_available;
    private IStatus fCurrStatus = new Status(0, "org.eclipse.ui", 0, "", null);
    private List fFilters;
    private Object fInput;
    private boolean fIsEmpty;
    private int fWidth = 60;
    private int fHeight = 18;
    private boolean fContainerMode;
    private Object[] fExpandedElements;

    public CheckedTreeSelectionDialog(Shell parent, ILabelProvider labelProvider, ITreeContentProvider contentProvider) {
        super(parent);
        this.fLabelProvider = labelProvider;
        this.fContentProvider = contentProvider;
        this.setResult(new ArrayList(0));
        this.setStatusLineAboveButtons(true);
        this.fContainerMode = false;
        this.fExpandedElements = null;
    }

    public void setContainerMode(boolean containerMode) {
        this.fContainerMode = containerMode;
    }

    public void setInitialSelection(Object selection) {
        this.setInitialSelections(new Object[]{selection});
    }

    public void setEmptyListMessage(String message) {
        this.fEmptyListMessage = message;
    }

    public void setSorter(ViewerSorter sorter) {
        this.fComparator = sorter;
    }

    public void setComparator(ViewerComparator comparator) {
        this.fComparator = comparator;
    }

    public void addFilter(ViewerFilter filter) {
        if (this.fFilters == null) {
            this.fFilters = new ArrayList(4);
        }
        this.fFilters.add(filter);
    }

    public void setValidator(ISelectionStatusValidator validator) {
        this.fValidator = validator;
    }

    public void setInput(Object input) {
        this.fInput = input;
    }

    public void setExpandedElements(Object[] elements) {
        this.fExpandedElements = elements;
    }

    public void setSize(int width, int height) {
        this.fWidth = width;
        this.fHeight = height;
    }

    protected void updateOKStatus() {
        if (!this.fIsEmpty) {
            if (this.fValidator != null) {
                this.fCurrStatus = this.fValidator.validate(this.fViewer.getCheckedElements());
                this.updateStatus(this.fCurrStatus);
            } else if (!this.fCurrStatus.isOK()) {
                this.fCurrStatus = new Status(0, "org.eclipse.ui", 0, "", null);
            }
        } else {
            this.fCurrStatus = new Status(4, "org.eclipse.ui", 0, this.fEmptyListMessage, null);
        }
        this.updateStatus(this.fCurrStatus);
    }

    public int open() {
        this.fIsEmpty = this.evaluateIfTreeEmpty(this.fInput);
        super.open();
        return this.getReturnCode();
    }

    private void access$superCreate() {
        super.create();
    }

    protected void cancelPressed() {
        this.setResult(null);
        super.cancelPressed();
    }

    protected void computeResult() {
        this.setResult(Arrays.asList(this.fViewer.getCheckedElements()));
    }

    public void create() {
        BusyIndicator.showWhile(null, (Runnable)new Runnable(){

            public void run() {
                CheckedTreeSelectionDialog.this.access$superCreate();
                CheckedTreeSelectionDialog.this.fViewer.setCheckedElements(CheckedTreeSelectionDialog.this.getInitialElementSelections().toArray());
                if (CheckedTreeSelectionDialog.this.fExpandedElements != null) {
                    CheckedTreeSelectionDialog.this.fViewer.setExpandedElements(CheckedTreeSelectionDialog.this.fExpandedElements);
                }
                CheckedTreeSelectionDialog.this.updateOKStatus();
            }
        });
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = (Composite)super.createDialogArea(parent);
        Label messageLabel = this.createMessageArea(composite);
        CheckboxTreeViewer treeViewer = this.createTreeViewer(composite);
        Composite buttonComposite = this.createSelectionButtons(composite);
        GridData data = new GridData(1808);
        data.widthHint = this.convertWidthInCharsToPixels(this.fWidth);
        data.heightHint = this.convertHeightInCharsToPixels(this.fHeight);
        Tree treeWidget = treeViewer.getTree();
        treeWidget.setLayoutData((Object)data);
        treeWidget.setFont(parent.getFont());
        if (this.fIsEmpty) {
            messageLabel.setEnabled(false);
            treeWidget.setEnabled(false);
            buttonComposite.setEnabled(false);
        }
        return composite;
    }

    protected CheckboxTreeViewer createTreeViewer(Composite parent) {
        this.fViewer = this.fContainerMode ? new ContainerCheckedTreeViewer(parent, 2048) : new CheckboxTreeViewer(parent, 2048);
        this.fViewer.setContentProvider((IContentProvider)this.fContentProvider);
        this.fViewer.setLabelProvider((IBaseLabelProvider)this.fLabelProvider);
        this.fViewer.addCheckStateListener(new ICheckStateListener(){

            public void checkStateChanged(CheckStateChangedEvent event) {
                CheckedTreeSelectionDialog.this.updateOKStatus();
            }
        });
        this.fViewer.setComparator(this.fComparator);
        if (this.fFilters != null) {
            int i = 0;
            while (i != this.fFilters.size()) {
                this.fViewer.addFilter((ViewerFilter)this.fFilters.get(i));
                ++i;
            }
        }
        this.fViewer.setInput(this.fInput);
        return this.fViewer;
    }

    protected CheckboxTreeViewer getTreeViewer() {
        return this.fViewer;
    }

    protected Composite createSelectionButtons(Composite composite) {
        Composite buttonComposite = new Composite(composite, 131072);
        GridLayout layout = new GridLayout();
        layout.numColumns = 0;
        layout.marginWidth = 0;
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        buttonComposite.setLayout((Layout)layout);
        buttonComposite.setFont(composite.getFont());
        GridData data = new GridData(640);
        data.grabExcessHorizontalSpace = true;
        buttonComposite.setLayoutData((Object)data);
        Button selectButton = this.createButton(buttonComposite, 18, WorkbenchMessages.CheckedTreeSelectionDialog_select_all, false);
        SelectionAdapter listener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                Object[] viewerElements = CheckedTreeSelectionDialog.this.fContentProvider.getElements(CheckedTreeSelectionDialog.this.fInput);
                if (CheckedTreeSelectionDialog.this.fContainerMode) {
                    CheckedTreeSelectionDialog.this.fViewer.setCheckedElements(viewerElements);
                } else {
                    int i = 0;
                    while (i < viewerElements.length) {
                        CheckedTreeSelectionDialog.this.fViewer.setSubtreeChecked(viewerElements[i], true);
                        ++i;
                    }
                }
                CheckedTreeSelectionDialog.this.updateOKStatus();
            }
        };
        selectButton.addSelectionListener((SelectionListener)listener);
        Button deselectButton = this.createButton(buttonComposite, 19, WorkbenchMessages.CheckedTreeSelectionDialog_deselect_all, false);
        listener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                CheckedTreeSelectionDialog.this.fViewer.setCheckedElements(new Object[0]);
                CheckedTreeSelectionDialog.this.updateOKStatus();
            }
        };
        deselectButton.addSelectionListener((SelectionListener)listener);
        return buttonComposite;
    }

    private boolean evaluateIfTreeEmpty(Object input) {
        Object[] elements = this.fContentProvider.getElements(input);
        if (elements.length > 0 && this.fFilters != null) {
            int i = 0;
            while (i < this.fFilters.size()) {
                ViewerFilter curr = (ViewerFilter)this.fFilters.get(i);
                elements = curr.filter((Viewer)this.fViewer, input, elements);
                ++i;
            }
        }
        return elements.length == 0;
    }
}

