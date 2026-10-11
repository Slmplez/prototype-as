/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 */
package org.eclipse.ui.internal;

import com.ibm.icu.text.Collator;
import java.util.Comparator;
import org.eclipse.ui.IWorkingSet;

public class WorkingSetComparator
implements Comparator {
    private static ThreadLocal INSTANCES = new ThreadLocal(){

        protected synchronized Object initialValue() {
            return new WorkingSetComparator();
        }
    };
    private Collator fCollator = Collator.getInstance();

    public static WorkingSetComparator getInstance() {
        return (WorkingSetComparator)INSTANCES.get();
    }

    public int compare(Object o1, Object o2) {
        int result;
        String name1 = null;
        String name2 = null;
        if (o1 instanceof IWorkingSet) {
            name1 = ((IWorkingSet)o1).getLabel();
        }
        if (o2 instanceof IWorkingSet) {
            name2 = ((IWorkingSet)o2).getLabel();
        }
        if ((result = this.fCollator.compare(name1, name2)) == 0) {
            if (o1 instanceof IWorkingSet) {
                name1 = ((IWorkingSet)o1).getName();
            }
            if (o2 instanceof IWorkingSet) {
                name2 = ((IWorkingSet)o2).getName();
            }
            result = name1.compareTo(name2);
        }
        return result;
    }
}

