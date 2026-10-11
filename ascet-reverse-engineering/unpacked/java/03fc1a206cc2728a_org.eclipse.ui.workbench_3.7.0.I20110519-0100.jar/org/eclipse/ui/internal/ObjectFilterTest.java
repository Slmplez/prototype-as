/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal;

import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.IActionFilter;
import org.eclipse.ui.internal.util.Util;

public class ObjectFilterTest {
    private HashMap filterElements;
    static /* synthetic */ Class class$0;

    public boolean addFilterElement(IConfigurationElement element) {
        String name = element.getAttribute("name");
        if (name == null) {
            return false;
        }
        String value = element.getAttribute("value");
        if (value == null) {
            return false;
        }
        if (this.filterElements == null) {
            this.filterElements = new HashMap();
        }
        this.filterElements.put(name, value);
        return true;
    }

    public boolean matches(Object object, boolean adaptable) {
        if (this.filterElements == null) {
            return true;
        }
        return this.preciselyMatches(object);
    }

    private boolean preciselyMatches(Object object) {
        IActionFilter filter;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.IActionFilter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((filter = (IActionFilter)Util.getAdapter(object, clazz)) == null) {
            return false;
        }
        Iterator iter = this.filterElements.keySet().iterator();
        while (iter.hasNext()) {
            String value;
            String name = (String)iter.next();
            if (filter.testAttribute(object, name, value = (String)this.filterElements.get(name))) continue;
            return false;
        }
        return true;
    }
}

