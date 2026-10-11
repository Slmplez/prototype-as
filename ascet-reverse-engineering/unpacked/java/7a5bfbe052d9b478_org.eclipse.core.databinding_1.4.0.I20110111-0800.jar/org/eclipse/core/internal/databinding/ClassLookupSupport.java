/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class ClassLookupSupport {
    private static HashMap classSearchOrderLookup;
    static /* synthetic */ Class class$0;

    public static Class[] getTypeHierarchyFlattened(Class type) {
        ArrayList classes = null;
        HashMap lookup = classSearchOrderLookup;
        if (lookup != null) {
            classes = (ArrayList)lookup.get(type);
        }
        if (classes == null) {
            classes = new ArrayList();
            ClassLookupSupport.computeClassOrder(type, classes);
            if (lookup == null) {
                classSearchOrderLookup = lookup = new HashMap();
            }
            lookup.put(type, classes);
        }
        return classes.toArray(new Class[classes.size()]);
    }

    private static void computeClassOrder(Class adaptable, Collection classes) {
        Class clazz = adaptable;
        HashSet seen = new HashSet(4);
        while (clazz != null) {
            Class<Object> clazz2;
            classes.add(clazz);
            ClassLookupSupport.computeInterfaceOrder(clazz.getInterfaces(), classes, seen);
            if (clazz.isInterface()) {
                clazz2 = class$0;
                if (clazz2 != null) continue;
                try {
                    clazz2 = Class.forName("java.lang.Object");
                    continue;
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            clazz2 = clazz = clazz.getSuperclass();
        }
    }

    private static void computeInterfaceOrder(Class[] interfaces, Collection classes, Set seen) {
        ArrayList<Class> newInterfaces = new ArrayList<Class>(interfaces.length);
        int i = 0;
        while (i < interfaces.length) {
            Class interfac = interfaces[i];
            if (seen.add(interfac)) {
                classes.add(interfac);
                newInterfaces.add(interfac);
            }
            ++i;
        }
        Iterator it = newInterfaces.iterator();
        while (it.hasNext()) {
            ClassLookupSupport.computeInterfaceOrder(((Class)it.next()).getInterfaces(), classes, seen);
        }
    }
}

