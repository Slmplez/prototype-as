/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.jface.viewers.ViewerSorter
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Tree
 */
package org.eclipse.ui.dialogs;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.jface.viewers.ViewerSorter;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.ui.dialogs.ISelectionStatusValidator;
import org.eclipse.ui.dialogs.SelectionStatusDialog;
import org.eclipse.ui.internal.WorkbenchMessages;

public class ElementTreeSelectionDialog
extends SelectionStatusDialog {
    private TreeViewer fViewer;
    private ILabelProvider fLabelProvider;
    private ITreeContentProvider fContentProvider;
    private ISelectionStatusValidator fValidator = null;
    private ViewerComparator fComparator;
    private boolean fAllowMultiple = true;
    private boolean fDoubleClickSelects = true;
    private String fEmptyListMessage = WorkbenchMessages.ElementTreeSelectionDialog_nothing_available;
    private IStatus fCurrStatus = new Status(0, "org.eclipse.ui", 0, "", null);
    private List fFilters;
    private Object fInput;
    private boolean fIsEmpty;
    private int fWidth = 60;
    private int fHeight = 18;

    public ElementTreeSelectionDialog(Shell parent, ILabelProvider labelProvider, ITreeContentProvider contentProvider) {
        super(parent);
        this.fLabelProvider = labelProvider;
        this.fContentProvider = contentProvider;
        this.setResult(new ArrayList(0));
        this.setStatusLineAboveButtons(true);
    }

    public void setInitialSelection(Object selection) {
        this.setInitialSelections(new Object[]{selection});
    }

    public void setEmptyListMessage(String message) {
        this.fEmptyListMessage = message;
    }

    public void setAllowMultiple(boolean allowMultiple) {
        this.fAllowMultiple = allowMultiple;
    }

    public void setDoubleClickSelects(boolean doubleClickSelects) {
        this.fDoubleClickSelects = doubleClickSelects;
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

    public void setSize(int width, int height) {
        this.fWidth = width;
        this.fHeight = height;
    }

    protected void updateOKStatus() {
        if (!this.fIsEmpty) {
            if (this.fValidator != null) {
                this.fCurrStatus = this.fValidator.validate(this.getResult());
                this.updateStatus(this.fCurrStatus);
            } else {
                this.fCurrStatus = new Status(0, "org.eclipse.ui", 0, "", null);
            }
        } else {
            this.fCurrStatus = new Status(4, "org.eclipse.ui", 4, this.fEmptyListMessage, null);
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
        this.setResult(((IStructuredSelection)this.fViewer.getSelection()).toList());
    }

    public void create() {
        BusyIndicator.showWhile(null, (Runnable)new Runnable(){

            public void run() {
                ElementTreeSelectionDialog.this.access$superCreate();
                ElementTreeSelectionDialog.this.fViewer.setSelection((ISelection)new StructuredSelection(ElementTreeSelectionDialog.this.getInitialElementSelections()), true);
                ElementTreeSelectionDialog.this.updateOKStatus();
            }
        });
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = (Composite)super.createDialogArea(parent);
        Label messageLabel = this.createMessageArea(composite);
        TreeViewer treeViewer = this.createTreeViewer(composite);
        GridData data = new GridData(1808);
        data.widthHint = this.convertWidthInCharsToPixels(this.fWidth);
        data.heightHint = this.convertHeightInCharsToPixels(this.fHeight);
        Tree treeWidget = treeViewer.getTree();
        treeWidget.setLayoutData((Object)data);
        treeWidget.setFont(parent.getFont());
        if (this.fIsEmpty) {
            messageLabel.setEnabled(false);
            treeWidget.setEnabled(false);
        }
        return composite;
    }

    protected TreeViewer createTreeViewer(Composite parent) {
        int style = 0x800 | (this.fAllowMultiple ? 2 : 4);
        this.fViewer = this.doCreateTreeViewer(parent, style);
        this.fViewer.setContentProvider((IContentProvider)this.fContentProvider);
        this.fViewer.setLabelProvider((IBaseLabelProvider)this.fLabelProvider);
        this.fViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                ElementTreeSelectionDialog.this.access$setResult(((IStructuredSelection)event.getSelection()).toList());
                ElementTreeSelectionDialog.this.updateOKStatus();
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
        if (this.fDoubleClickSelects) {
            Tree tree = this.fViewer.getTree();
            tree.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetDefaultSelected(SelectionEvent e) {
                    ElementTreeSelectionDialog.this.updateOKStatus();
                    if (ElementTreeSelectionDialog.this.fCurrStatus.isOK()) {
                        ElementTreeSelectionDialog.this.access$superButtonPressed(0);
                    }
                }
            });
        }
        this.fViewer.addDoubleClickListener(new IDoubleClickListener(){

            public void doubleClick(DoubleClickEvent event) {
                ISelection selection;
                ElementTreeSelectionDialog.this.updateOKStatus();
                if (!(ElementTreeSelectionDialog.this.fDoubleClickSelects && ElementTreeSelectionDialog.this.fCurrStatus.isOK() || !((selection = event.getSelection()) instanceof IStructuredSelection))) {
                    Object item = ((IStructuredSelection)selection).getFirstElement();
                    if (ElementTreeSelectionDialog.this.fViewer.getExpandedState(item)) {
                        ElementTreeSelectionDialog.this.fViewer.collapseToLevel(item, 1);
                    } else {
                        ElementTreeSelectionDialog.this.fViewer.expandToLevel(item, 1);
                    }
                }
            }
        });
        this.fViewer.setInput(this.fInput);
        return this.fViewer;
    }

    protected TreeViewer doCreateTreeViewer(Composite parent, int style) {
        return new TreeViewer(new Tree(parent, style));
    }

    protected TreeViewer getTreeViewer() {
        return this.fViewer;
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

    protected void access$superButtonPressed(int id) {
        super.buttonPressed(id);
    }

    protected void access$setResult(List result) {
        super.setResult(result);
    }

    protected void handleShellCloseEvent() {
        super.handleShellCloseEvent();
        if (this.getReturnCode() == 1) {
            this.setResult(null);
        }
    }
}

