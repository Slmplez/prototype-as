/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import java.util.Collection;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.Viewer;

public class ArrayContentProvider
implements IStructuredContentProvider {
    private static ArrayContentProvider instance;
    static /* synthetic */ Class class$0;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static ArrayContentProvider getInstance() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.viewers.ArrayContentProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            if (instance == null) {
                instance = new ArrayContentProvider();
            }
            // ** MonitorExit[var0] (shouldn't be in output)
            return instance;
        }
    }

    public Object[] getElements(Object inputElement) {
        if (inputElement instanceof Object[]) {
            return (Object[])inputElement;
        }
        if (inputElement instanceof Collection) {
            return ((Collection)inputElement).toArray();
        }
        return new Object[0];
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
    }

    public void dispose() {
    }
}

