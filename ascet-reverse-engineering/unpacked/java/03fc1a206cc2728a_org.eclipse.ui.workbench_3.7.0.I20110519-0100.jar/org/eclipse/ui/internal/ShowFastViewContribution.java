/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.FastViewBar;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.util.Util;

public class ShowFastViewContribution
extends ContributionItem {
    public static final String FAST_VIEW = "FastView";
    private IWorkbenchWindow window;
    private String fvbId;

    public ShowFastViewContribution(IWorkbenchWindow window, String id) {
        super("showFastViewContr");
        this.window = window;
        this.fvbId = id;
    }

    public ShowFastViewContribution(IWorkbenchWindow window) {
        this(window, FastViewBar.FASTVIEWBAR_ID);
    }

    private void updateItem(ToolItem item, IViewReference ref) {
        if (item.getImage() != ref.getTitleImage()) {
            item.setImage(ref.getTitleImage());
        }
        if (!Util.equals(item.getToolTipText(), ref.getTitle())) {
            item.setToolTipText(ref.getTitle());
        }
    }

    public static ToolItem getItem(ToolBar toSearch, IWorkbenchPartReference ref) {
        ToolItem[] items = toSearch.getItems();
        int i = 0;
        while (i < items.length) {
            ToolItem item = items[i];
            if (item.getData(FAST_VIEW) == ref) {
                return item;
            }
            ++i;
        }
        return null;
    }

    public void fill(ToolBar parent, int index) {
        WorkbenchPage page = (WorkbenchPage)this.window.getActivePage();
        if (page == null) {
            return;
        }
        List fvs = new ArrayList();
        Perspective perspective = page.getActivePerspective();
        if (perspective != null) {
            fvs = perspective.getFastViewManager().getFastViews(this.fvbId);
        }
        Iterator fvIter = fvs.iterator();
        while (fvIter.hasNext()) {
            final IViewReference ref = (IViewReference)fvIter.next();
            final ToolItem item = new ToolItem(parent, 32, index);
            this.updateItem(item, ref);
            item.setData(FAST_VIEW, (Object)ref);
            final IPropertyListener propertyListener = new IPropertyListener(){

                public void propertyChanged(Object source, int propId) {
                    if (propId == 1 && !item.isDisposed()) {
                        ShowFastViewContribution.this.updateItem(item, ref);
                    }
                }
            };
            ref.addPropertyListener(propertyListener);
            item.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    ref.removePropertyListener(propertyListener);
                }
            });
            if (ref == page.getActiveFastView()) {
                item.setSelection(true);
            } else {
                item.setSelection(false);
            }
            item.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    ShowFastViewContribution.this.showView(ref);
                }
            });
            ++index;
        }
    }

    public boolean isDynamic() {
        return true;
    }

    private void showView(IViewReference ref) {
        WorkbenchPage page = (WorkbenchPage)ref.getPage();
        page.toggleFastView(ref);
    }
}

