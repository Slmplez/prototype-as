/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TreeViewer
 */
package org.eclipse.ui.part;

import java.util.Arrays;
import java.util.List;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.ui.ISharedImages;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.part.DrillFrame;
import org.eclipse.ui.part.DrillStack;

public class DrillDownAdapter
implements ISelectionChangedListener {
    private TreeViewer fChildTree;
    private DrillStack fDrillStack = new DrillStack();
    private Action homeAction;
    private Action backAction;
    private Action forwardAction;

    public DrillDownAdapter(TreeViewer tree) {
        this.fChildTree = tree;
    }

    public void addNavigationActions(IMenuManager manager) {
        this.createActions();
        manager.add((IAction)this.homeAction);
        manager.add((IAction)this.backAction);
        manager.add((IAction)this.forwardAction);
        this.updateNavigationButtons();
    }

    public void addNavigationActions(IToolBarManager toolBar) {
        this.createActions();
        toolBar.add((IAction)this.homeAction);
        toolBar.add((IAction)this.backAction);
        toolBar.add((IAction)this.forwardAction);
        this.updateNavigationButtons();
    }

    public boolean canExpand(Object element) {
        return this.fChildTree.isExpandable(element);
    }

    public boolean canGoBack() {
        return this.fDrillStack.canGoBack();
    }

    public boolean canGoHome() {
        return this.fDrillStack.canGoHome();
    }

    public boolean canGoInto() {
        IStructuredSelection oSelection = (IStructuredSelection)this.fChildTree.getSelection();
        if (oSelection == null || oSelection.size() != 1) {
            return false;
        }
        Object anElement = oSelection.getFirstElement();
        return this.canExpand(anElement);
    }

    private void createActions() {
        if (this.homeAction != null) {
            return;
        }
        this.homeAction = new Action(WorkbenchMessages.GoHome_text){

            public void run() {
                DrillDownAdapter.this.goHome();
            }
        };
        this.homeAction.setToolTipText(WorkbenchMessages.GoHome_toolTip);
        this.homeAction.setImageDescriptor(WorkbenchImages.getImageDescriptor("IMG_ETOOL_HOME_NAV"));
        ISharedImages images = PlatformUI.getWorkbench().getSharedImages();
        this.backAction = new Action(WorkbenchMessages.GoBack_text){

            public void run() {
                DrillDownAdapter.this.goBack();
            }
        };
        this.backAction.setToolTipText(WorkbenchMessages.GoBack_toolTip);
        this.backAction.setImageDescriptor(images.getImageDescriptor("IMG_TOOL_BACK"));
        this.backAction.setDisabledImageDescriptor(images.getImageDescriptor("IMG_TOOL_BACK_DISABLED"));
        this.forwardAction = new Action(WorkbenchMessages.GoInto_text){

            public void run() {
                DrillDownAdapter.this.goInto();
            }
        };
        this.forwardAction.setToolTipText(WorkbenchMessages.GoInto_toolTip);
        this.forwardAction.setImageDescriptor(images.getImageDescriptor("IMG_TOOL_FORWARD"));
        this.forwardAction.setDisabledImageDescriptor(images.getImageDescriptor("IMG_TOOL_FORWARD_DISABLED"));
        this.fChildTree.addSelectionChangedListener((ISelectionChangedListener)this);
        this.updateNavigationButtons();
    }

    private void expand(List items) {
        this.fChildTree.setExpandedElements(items.toArray());
    }

    private List getExpanded() {
        return Arrays.asList(this.fChildTree.getExpandedElements());
    }

    public void goBack() {
        Object currentInput = this.fChildTree.getInput();
        DrillFrame oFrame = this.fDrillStack.goBack();
        Object input = oFrame.getElement();
        this.fChildTree.setInput(input);
        this.expand(oFrame.getExpansion());
        if (this.fChildTree.getSelection().isEmpty()) {
            this.fChildTree.setSelection((ISelection)new StructuredSelection(currentInput), true);
        }
        this.updateNavigationButtons();
    }

    public void goHome() {
        Object currentInput = this.fChildTree.getInput();
        DrillFrame oFrame = this.fDrillStack.goHome();
        Object input = oFrame.getElement();
        this.fChildTree.setInput(input);
        this.expand(oFrame.getExpansion());
        if (this.fChildTree.getSelection().isEmpty()) {
            this.fChildTree.setSelection((ISelection)new StructuredSelection(currentInput), true);
        }
        this.updateNavigationButtons();
    }

    public void goInto() {
        IStructuredSelection sel = (IStructuredSelection)this.fChildTree.getSelection();
        Object element = sel.getFirstElement();
        this.goInto(element);
    }

    public void goInto(Object newInput) {
        if (this.canExpand(newInput)) {
            Object oldInput = this.fChildTree.getInput();
            List expandedList = this.getExpanded();
            this.fDrillStack.add(new DrillFrame(oldInput, "null", expandedList));
            this.fChildTree.setInput(newInput);
            this.expand(expandedList);
            this.updateNavigationButtons();
        }
    }

    public void reset() {
        this.fDrillStack.reset();
        this.updateNavigationButtons();
    }

    public void selectionChanged(SelectionChangedEvent event) {
        this.updateNavigationButtons();
    }

    protected void updateNavigationButtons() {
        if (this.homeAction != null) {
            this.homeAction.setEnabled(this.canGoHome());
            this.backAction.setEnabled(this.canGoBack());
            this.forwardAction.setEnabled(this.canGoInto());
        }
    }
}

