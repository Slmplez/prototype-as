/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.provisional.frameworkadmin;

import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin;

public abstract class FrameworkAdminFactory {
    protected abstract FrameworkAdmin createFrameworkAdmin() throws InstantiationException, IllegalAccessException, ClassNotFoundException;

    public static FrameworkAdmin getInstance(String className) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        FrameworkAdminFactory factory = (FrameworkAdminFactory)Class.forName(className).newInstance();
        return factory.createFrameworkAdmin();
    }
}

