/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminFactory
 */
package org.eclipse.equinox.internal.frameworkadmin.equinox;

import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxFwAdminImpl;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminFactory;

public class EquinoxFrameworkAdminFactoryImpl
extends FrameworkAdminFactory {
    public FrameworkAdmin createFrameworkAdmin() throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        String className = System.getProperty("org.eclipse.equinox.configuratorManipulatorFactory");
        if (className == null) {
            return new EquinoxFwAdminImpl();
        }
        return new EquinoxFwAdminImpl(className);
    }
}

