/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.variables;

import org.eclipse.osgi.util.NLS;

public class VariablesMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.core.internal.variables.VariablesMessages";
    public static String StringSubstitutionEngine_3;
    public static String StringSubstitutionEngine_4;
    public static String StringVariableManager_26;
    public static String StringVariableManager_27;
    public static String DynamicVariable_0;
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
}

