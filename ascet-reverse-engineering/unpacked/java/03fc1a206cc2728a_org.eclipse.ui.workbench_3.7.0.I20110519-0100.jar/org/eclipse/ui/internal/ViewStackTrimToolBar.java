/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.internal.ContainerPlaceholder;
import org.eclipse.ui.internal.FastViewDnDHandler;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.ShowFastViewContribution;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.layout.TrimToolBarBase;

public class ViewStackTrimToolBar
extends TrimToolBarBase {
    private boolean restoreOnUnzoom = false;
    private int paneOrientation;
    private String selectedTabId;

    public ViewStackTrimToolBar(String id, int curSide, int paneOrientation, WorkbenchWindow wbw) {
        super(id, curSide, wbw);
        this.paneOrientation = paneOrientation;
        this.dock(curSide);
    }

    protected void restoreToPresentation() {
        Perspective persp = this.wbw.getActiveWorkbenchPage().getActivePerspective();
        LayoutPart part = persp.getPresentation().findPart(this.getId(), null);
        if (part instanceof ContainerPlaceholder) {
            ViewStack stack = (ViewStack)((ContainerPlaceholder)part).getRealContainer();
            stack.setMinimized(false);
        }
    }

    public void initToolBarManager(final ToolBarManager mgr) {
        ContributionItem restoreContrib = new ContributionItem(){

            public void fill(ToolBar parent, int index) {
                ToolItem restoreItem = new ToolItem(mgr.getControl(), 8, index);
                Image tbImage = WorkbenchImages.getImage("IMG_ETOOL_RESTORE_TRIMPART");
                restoreItem.setImage(tbImage);
                String menuTip = WorkbenchMessages.StandardSystemToolbar_Restore;
                restoreItem.setToolTipText(menuTip);
                restoreItem.addSelectionListener(new SelectionListener(this){
                    final /* synthetic */ 1 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void widgetDefaultSelected(SelectionEvent e) {
                        1.access$0(this.this$1).restoreToPresentation();
                    }

                    public void widgetSelected(SelectionEvent e) {
                        1.access$0(this.this$1).restoreToPresentation();
                    }
                });
            }

            static /* synthetic */ ViewStackTrimToolBar access$0(1 var0) {
                return var0.ViewStackTrimToolBar.this;
            }
        };
        mgr.add((IContributionItem)restoreContrib);
        ShowFastViewContribution sfvc = new ShowFastViewContribution(this.wbw, this.getId());
        mgr.add((IContributionItem)sfvc);
        mgr.setContextMenuManager(new MenuManager());
        MenuManager menuMgr = mgr.getContextMenuManager();
        ContributionItem closeContrib = new ContributionItem(){

            public void fill(Menu parent, int index) {
                MenuItem closeItem = new MenuItem(parent, 0, index++);
                closeItem.setText(WorkbenchMessages.WorkbenchWindow_close);
                closeItem.addSelectionListener((SelectionListener)new SelectionAdapter(this){
                    final /* synthetic */ 3 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void widgetSelected(SelectionEvent e) {
                        WorkbenchPage page;
                        IViewReference selectedView = null;
                        if (ViewStackTrimToolBar.access$0(3.access$0(this.this$1)) != null) {
                            selectedView = (IViewReference)ViewStackTrimToolBar.access$0(3.access$0(this.this$1)).getData("FastView");
                        }
                        if (selectedView != null && (page = ViewStackTrimToolBar.access$1(3.access$0(this.this$1)).getActiveWorkbenchPage()) != null) {
                            page.hideView(selectedView);
                        }
                    }
                });
            }

            static /* synthetic */ ViewStackTrimToolBar access$0(3 var0) {
                return var0.ViewStackTrimToolBar.this;
            }
        };
        menuMgr.addMenuListener(new IMenuListener((IContributionItem)closeContrib){
            private final /* synthetic */ IContributionItem val$closeContrib;
            {
                this.val$closeContrib = iContributionItem;
            }

            public void menuAboutToShow(IMenuManager manager) {
                IViewReference selectedView = null;
                if (ViewStackTrimToolBar.this.contextToolItem != null) {
                    selectedView = (IViewReference)ViewStackTrimToolBar.this.contextToolItem.getData("FastView");
                }
                Perspective persp = ViewStackTrimToolBar.this.wbw.getActiveWorkbenchPage().getActivePerspective();
                this.val$closeContrib.setVisible(selectedView != null && persp.isCloseable(selectedView));
                manager.update(true);
            }
        });
        menuMgr.add((IContributionItem)closeContrib);
    }

    public void hookControl(ToolBarManager mgr) {
        new FastViewDnDHandler(this.id, mgr, this.wbw);
    }

    public void setRestoreOnUnzoom(boolean restoreOnUnzoom) {
        this.restoreOnUnzoom = restoreOnUnzoom;
    }

    public boolean restoreOnUnzoom() {
        return this.restoreOnUnzoom;
    }

    public void setIconSelection(IViewReference ref, boolean selected) {
        ToolItem item = ShowFastViewContribution.getItem(this.tbMgr.getControl(), ref);
        if (item != null) {
            item.setSelection(selected);
            if (selected) {
                this.selectedTabId = ref.getId();
                if (ref.getSecondaryId() != null) {
                    this.selectedTabId = String.valueOf(this.selectedTabId) + ':' + ref.getSecondaryId();
                }
            }
        }
    }

    public int getPaneOrientation() {
        return this.paneOrientation;
    }

    public void setSelectedTabId(String id) {
        this.selectedTabId = id;
    }

    public String getSelectedTabId() {
        return this.selectedTabId;
    }

    public void setOrientation(int newOrientation, WorkbenchWindow wbw) {
        IViewReference curRef;
        WorkbenchPage wbp;
        Perspective persp;
        if (newOrientation == this.paneOrientation) {
            return;
        }
        this.paneOrientation = newOrientation;
        if (wbw.getActivePage() instanceof WorkbenchPage && (persp = (wbp = (WorkbenchPage)wbw.getActivePage()).getActivePerspective()) != null && (curRef = persp.getActiveFastView()) != null) {
            persp.setActiveFastView(null);
            persp.setActiveFastView(curRef);
        }
    }
}

