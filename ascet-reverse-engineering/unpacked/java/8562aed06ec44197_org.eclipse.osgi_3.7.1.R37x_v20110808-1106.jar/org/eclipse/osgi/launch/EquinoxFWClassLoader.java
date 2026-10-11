/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.launch;

import java.net.URL;
import java.net.URLClassLoader;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class EquinoxFWClassLoader
extends URLClassLoader {
    private static final String[] DELEGATE_PARENT_FIRST = new String[]{"java.", "org.osgi.", "org.eclipse.osgi.launch.", "org.eclipse.osgi.service.", "org.eclipse.osgi.framework.log", "org.eclipse.osgi.framework.adaptor", "org.eclipse.osgi.framework.internal.core.ReferenceInputStream"};
    private static final String[] DELEGATE_CHILD_FIRST = new String[0];
    private final ClassLoader parent;

    public EquinoxFWClassLoader(URL[] urls, ClassLoader parent) {
        super(urls, parent);
        this.parent = parent;
    }

    @Override
    protected Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        Class<?> clazz = this.findLoadedClass(name);
        if (clazz != null) {
            return clazz;
        }
        boolean childFirst = this.childFirst(name);
        ClassNotFoundException cnfe = null;
        if (childFirst) {
            try {
                clazz = this.findClass(name);
            }
            catch (ClassNotFoundException e) {
                cnfe = e;
            }
        }
        if (clazz == null) {
            try {
                clazz = this.parent.loadClass(name);
            }
            catch (ClassNotFoundException classNotFoundException) {}
        }
        if (clazz == null && cnfe != null) {
            throw cnfe;
        }
        if (clazz == null && !childFirst) {
            clazz = this.findClass(name);
        }
        if (resolve) {
            this.resolveClass(clazz);
        }
        return clazz;
    }

    private boolean childFirst(String name) {
        int i = DELEGATE_CHILD_FIRST.length - 1;
        while (i >= 0) {
            if (name.startsWith(DELEGATE_CHILD_FIRST[i])) {
                return true;
            }
            --i;
        }
        i = DELEGATE_PARENT_FIRST.length - 1;
        while (i >= 0) {
            if (name.startsWith(DELEGATE_PARENT_FIRST[i])) {
                return false;
            }
            --i;
        }
        return true;
    }
}

