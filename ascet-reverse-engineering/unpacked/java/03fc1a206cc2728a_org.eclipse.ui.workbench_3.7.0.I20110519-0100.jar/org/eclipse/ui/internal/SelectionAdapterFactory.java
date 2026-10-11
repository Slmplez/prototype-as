/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.ICountable
 *  org.eclipse.core.expressions.IIterable
 *  org.eclipse.core.runtime.IAdapterFactory
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 */
package org.eclipse.ui.internal;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.expressions.ICountable;
import org.eclipse.core.expressions.IIterable;
import org.eclipse.core.runtime.IAdapterFactory;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;

public class SelectionAdapterFactory
implements IAdapterFactory {
    private static final ICountable ICOUNT_0 = new ICountable(){

        public int count() {
            return 0;
        }
    };
    private static final ICountable ICOUNT_1 = new ICountable(){

        public int count() {
            return 1;
        }
    };
    private static final IIterable ITERATE_EMPTY = new IIterable(){

        public Iterator iterator() {
            return Collections.EMPTY_LIST.iterator();
        }
    };
    private static final Class[] CLASSES;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class[] classArray = new Class[2];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.expressions.IIterable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.core.expressions.ICountable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz2;
        CLASSES = classArray;
    }

    public Object getAdapter(Object adaptableObject, Class adapterType) {
        if (adaptableObject instanceof ISelection) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.expressions.IIterable");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (adapterType == clazz) {
                return this.iterable((ISelection)adaptableObject);
            }
            Class<?> clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = class$1 = Class.forName("org.eclipse.core.expressions.ICountable");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (adapterType == clazz2) {
                return this.countable((ISelection)adaptableObject);
            }
        }
        return null;
    }

    private Object iterable(final ISelection sel) {
        if (sel.isEmpty()) {
            return ITERATE_EMPTY;
        }
        if (sel instanceof IStructuredSelection) {
            return new IIterable(){

                public Iterator iterator() {
                    return ((IStructuredSelection)sel).iterator();
                }
            };
        }
        final List<Object> list = Arrays.asList(sel);
        return new IIterable(){

            public Iterator iterator() {
                return list.iterator();
            }
        };
    }

    private Object countable(ISelection sel) {
        if (sel.isEmpty()) {
            return ICOUNT_0;
        }
        if (sel instanceof IStructuredSelection) {
            final IStructuredSelection ss = (IStructuredSelection)sel;
            return new ICountable(){

                public int count() {
                    return ss.size();
                }
            };
        }
        return ICOUNT_1;
    }

    public Class[] getAdapterList() {
        return CLASSES;
    }
}

