/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.progress.DetailedProgressViewer;
import org.eclipse.ui.internal.progress.FinishedJobs;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.JobsViewPreferenceDialog;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.progress.ProgressViewerContentProvider;
import org.eclipse.ui.part.ViewPart;
import org.eclipse.ui.preferences.ViewPreferencesAction;

public class ProgressView
extends ViewPart
implements IViewPart {
    DetailedProgressViewer viewer;
    Action cancelAction;
    Action clearAllAction;

    public void createPartControl(Composite parent) {
        this.viewer = new DetailedProgressViewer(parent, 258);
        this.viewer.setComparator(ProgressManagerUtil.getProgressViewerComparator());
        this.viewer.getControl().setLayoutData((Object)new GridData(4, 4, true, true));
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.responsive_ui_context");
        this.initContentProvider();
        this.createClearAllAction();
        this.createCancelAction();
        this.initContextMenu();
        this.initPulldownMenu();
        this.initToolBar();
        this.getSite().setSelectionProvider((ISelectionProvider)this.viewer);
    }

    public void setFocus() {
        if (this.viewer != null) {
            this.viewer.setFocus();
        }
    }

    protected void initContentProvider() {
        ProgressViewerContentProvider provider = new ProgressViewerContentProvider(this.viewer, true, true);
        this.viewer.setContentProvider((IContentProvider)provider);
        this.viewer.setInput(ProgressManager.getInstance());
    }

    private void initContextMenu() {
        MenuManager menuMgr = new MenuManager("#PopupMenu");
        Menu menu = menuMgr.createContextMenu(this.viewer.getControl());
        menuMgr.add((IAction)this.cancelAction);
        menuMgr.addMenuListener(new IMenuListener(){

            public void menuAboutToShow(IMenuManager manager) {
                JobInfo info = ProgressView.this.getSelectedInfo();
                if (info == null) {
                    return;
                }
            }
        });
        menuMgr.add((IContributionItem)new Separator("additions"));
        this.getSite().registerContextMenu(menuMgr, (ISelectionProvider)this.viewer);
        this.viewer.getControl().setMenu(menu);
    }

    private void initPulldownMenu() {
        IMenuManager menuMgr = this.getViewSite().getActionBars().getMenuManager();
        menuMgr.add((IAction)this.clearAllAction);
        menuMgr.add((IAction)new ViewPreferencesAction(){

            public void openViewPreferencesDialog() {
                new JobsViewPreferenceDialog(ProgressView.this.viewer.getControl().getShell()).open();
            }
        });
    }

    private void initToolBar() {
        IActionBars bars = this.getViewSite().getActionBars();
        IToolBarManager tm = bars.getToolBarManager();
        tm.add((IAction)this.clearAllAction);
    }

    private IStructuredSelection getSelection() {
        ISelectionProvider provider = this.getSite().getSelectionProvider();
        if (provider == null) {
            return null;
        }
        ISelection currentSelection = provider.getSelection();
        if (currentSelection instanceof IStructuredSelection) {
            return (IStructuredSelection)currentSelection;
        }
        return null;
    }

    JobInfo getSelectedInfo() {
        JobTreeElement element;
        IStructuredSelection selection = this.getSelection();
        if (selection != null && selection.size() == 1 && (element = (JobTreeElement)selection.getFirstElement()).isJobInfo()) {
            return (JobInfo)element;
        }
        return null;
    }

    private void createCancelAction() {
        this.cancelAction = new Action(ProgressMessages.ProgressView_CancelAction){

            public void run() {
                ProgressView.this.viewer.cancelSelection();
            }
        };
    }

    private void createClearAllAction() {
        this.clearAllAction = new Action(ProgressMessages.ProgressView_ClearAllAction){

            public void run() {
                FinishedJobs.getInstance().clearAll();
            }
        };
        this.clearAllAction.setToolTipText(ProgressMessages.NewProgressView_RemoveAllJobsToolTip);
        ImageDescriptor id = WorkbenchImages.getWorkbenchImageDescriptor("/elcl16/progress_remall.gif");
        if (id != null) {
            this.clearAllAction.setImageDescriptor(id);
        }
        if ((id = WorkbenchImages.getWorkbenchImageDescriptor("/dlcl16/progress_remall.gif")) != null) {
            this.clearAllAction.setDisabledImageDescriptor(id);
        }
    }

    public DetailedProgressViewer getViewer() {
        return this.viewer;
    }
}

