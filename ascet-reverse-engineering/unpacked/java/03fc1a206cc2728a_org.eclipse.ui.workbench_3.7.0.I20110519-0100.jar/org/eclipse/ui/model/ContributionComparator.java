/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.util.Policy
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 */
package org.eclipse.ui.model;

import java.util.Comparator;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.ui.model.IComparableContribution;

public class ContributionComparator
extends ViewerComparator
implements Comparator {
    public int compare(Object o1, Object o2) {
        IComparableContribution c1 = null;
        IComparableContribution c2 = null;
        if (o1 instanceof IComparableContribution) {
            c1 = (IComparableContribution)o1;
        }
        if (o2 instanceof IComparableContribution) {
            c2 = (IComparableContribution)o2;
        }
        if (c1 == null && c2 == null) {
            String s1 = this.getComparisonString(o1);
            String s2 = this.getComparisonString(o2);
            return Policy.getComparator().compare(s1, s2);
        }
        if (c1 == null) {
            return 1;
        }
        if (c2 == null) {
            return -1;
        }
        return this.compare(c1, c2);
    }

    private String getComparisonString(Object o) {
        if (o instanceof IPreferenceNode) {
            return ((IPreferenceNode)o).getLabelText();
        }
        return o.toString();
    }

    public int compare(IComparableContribution c1, IComparableContribution c2) {
        int cat2;
        int cat1 = this.category(c1);
        if (cat1 != (cat2 = this.category(c2))) {
            return cat1 - cat2;
        }
        String name1 = c1.getLabel();
        String name2 = c2.getLabel();
        if (name1 == null) {
            name1 = "";
        }
        if (name2 == null) {
            name2 = "";
        }
        return Policy.getComparator().compare(name1, name2);
    }

    public int compare(Viewer viewer, Object e1, Object e2) {
        return this.compare(e1, e2);
    }

    public int category(IComparableContribution c) {
        return c.getPriority();
    }

    public int category(Object element) {
        return this.category((IComparableContribution)element);
    }
}

