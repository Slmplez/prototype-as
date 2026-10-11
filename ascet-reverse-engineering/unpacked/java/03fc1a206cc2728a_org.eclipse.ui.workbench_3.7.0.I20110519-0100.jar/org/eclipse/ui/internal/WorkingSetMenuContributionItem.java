/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.WorkingSetFilterActionGroup;

public class WorkingSetMenuContributionItem
extends ContributionItem {
    private Image image;
    private int id;
    private IWorkingSet workingSet;
    private WorkingSetFilterActionGroup actionGroup;
    static /* synthetic */ Class class$0;

    public static String getId(int id) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.WorkingSetMenuContributionItem");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return String.valueOf(clazz.getName()) + "." + id;
    }

    public WorkingSetMenuContributionItem(int id, WorkingSetFilterActionGroup actionGroup, IWorkingSet workingSet) {
        super(WorkingSetMenuContributionItem.getId(id));
        Assert.isNotNull((Object)actionGroup);
        Assert.isNotNull((Object)workingSet);
        this.id = id;
        this.actionGroup = actionGroup;
        this.workingSet = workingSet;
    }

    public void fill(Menu menu, int index) {
        ImageDescriptor imageDescriptor;
        MenuItem mi = new MenuItem(menu, 16, index);
        mi.setText("&" + this.id + " " + this.workingSet.getLabel());
        mi.setSelection(this.workingSet.equals(this.actionGroup.getWorkingSet()));
        mi.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                IWorkingSetManager manager = PlatformUI.getWorkbench().getWorkingSetManager();
                WorkingSetMenuContributionItem.this.actionGroup.setWorkingSet(WorkingSetMenuContributionItem.this.workingSet);
                manager.addRecentWorkingSet(WorkingSetMenuContributionItem.this.workingSet);
            }
        });
        if (this.image == null && (imageDescriptor = this.workingSet.getImageDescriptor()) != null) {
            this.image = imageDescriptor.createImage();
        }
        mi.setImage(this.image);
    }

    public boolean isDynamic() {
        return true;
    }

    public void dispose() {
        if (this.image != null && !this.image.isDisposed()) {
            this.image.dispose();
        }
        this.image = null;
        super.dispose();
    }
}

