/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.internal.FastViewDnDHandler;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.ShowFastViewContribution;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.layout.TrimToolBarBase;

public class EditorAreaTrimToolBar
extends TrimToolBarBase {
    private boolean restoreOnUnzoom = false;
    private int paneOrientation;

    public EditorAreaTrimToolBar(WorkbenchWindow wbw) {
        super("org.eclipse.ui.editorss", 128, wbw);
        this.dock(128);
    }

    protected void restoreToPresentation() {
        Perspective persp = this.wbw.getActiveWorkbenchPage().getActivePerspective();
        persp.setEditorAreaState(2);
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

            static /* synthetic */ EditorAreaTrimToolBar access$0(1 var0) {
                return var0.EditorAreaTrimToolBar.this;
            }
        };
        mgr.add((IContributionItem)restoreContrib);
        ContributionItem eaContrib = new ContributionItem(){

            public void fill(ToolBar parent, int index) {
                ToolItem editorAreaItem = new ToolItem(mgr.getControl(), 8, index);
                Image tbImage = WorkbenchImages.getImage("IMG_ETOOL_EDITOR_TRIMPART");
                editorAreaItem.setImage(tbImage);
                String menuTip = WorkbenchMessages.EditorArea_Tooltip;
                editorAreaItem.setToolTipText(menuTip);
                editorAreaItem.addSelectionListener(new SelectionListener(this){
                    final /* synthetic */ 3 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void widgetDefaultSelected(SelectionEvent e) {
                        3.access$0(this.this$1).restoreToPresentation();
                    }

                    public void widgetSelected(SelectionEvent e) {
                        3.access$0(this.this$1).restoreToPresentation();
                    }
                });
            }

            static /* synthetic */ EditorAreaTrimToolBar access$0(3 var0) {
                return var0.EditorAreaTrimToolBar.this;
            }
        };
        mgr.add((IContributionItem)eaContrib);
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
        }
    }

    public int getPaneOrientation() {
        return this.paneOrientation;
    }
}

