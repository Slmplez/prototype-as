/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.jdt.internal.launching.environments;

import org.eclipse.osgi.util.NLS;

public class EnvironmentMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.jdt.internal.launching.environments.EnvironmentMessages";
    public static String EnvironmentsManager_0;
    public static String ExecutionEnvironmentVariableResolver_0;
    public static String ExecutionEnvironmentVariableResolver_1;
    public static String ExecutionEnvironmentVariableResolver_2;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName(BUNDLE_NAME);
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }

    private EnvironmentMessages() {
    }
}

