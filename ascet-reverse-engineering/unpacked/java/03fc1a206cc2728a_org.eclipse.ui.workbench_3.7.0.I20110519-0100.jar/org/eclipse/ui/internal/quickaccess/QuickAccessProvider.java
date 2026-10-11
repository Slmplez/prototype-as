/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.quickaccess;

import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;

public abstract class QuickAccessProvider {
    private QuickAccessElement[] sortedElements;

    public abstract String getId();

    public abstract String getName();

    public abstract ImageDescriptor getImageDescriptor();

    public abstract QuickAccessElement[] getElements();

    public QuickAccessElement[] getElementsSorted() {
        if (this.sortedElements == null) {
            this.sortedElements = this.getElements();
            Arrays.sort(this.sortedElements, new Comparator(){

                public int compare(Object o1, Object o2) {
                    QuickAccessElement e1 = (QuickAccessElement)o1;
                    QuickAccessElement e2 = (QuickAccessElement)o2;
                    return e1.getLabel().compareTo(e2.getLabel());
                }
            });
        }
        return this.sortedElements;
    }

    public abstract QuickAccessElement getElementForId(String var1);
}

