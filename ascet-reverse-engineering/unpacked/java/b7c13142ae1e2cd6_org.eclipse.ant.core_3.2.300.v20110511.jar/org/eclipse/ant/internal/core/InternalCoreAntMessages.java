/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ant.internal.core;

import org.eclipse.osgi.util.NLS;

public class InternalCoreAntMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.ant.internal.core.InternalCoreAntMessages";
    public static String AntCorePreferences_Malformed_URL__1;
    public static String AntCorePreferences_Library_not_specified_for___0__4;
    public static String AntCorePreferences_No_library_for_task;
    public static String AntCorePreferences_No_library_for_type;
    public static String AntCorePreferences_8;
    public static String AntCorePreferences_6;
    public static String AntCorePreferences_0;
    public static String AntCorePreferences_1;
    public static String AntRunner_Could_not_find_one_or_more_classes__Please_check_the_Ant_classpath__1;
    public static String AntRunner_Could_not_find_one_or_more_classes__Please_check_the_Ant_classpath__2;
    public static String AntRunner_Build_Failed__3;
    public static String AntRunner_Already_in_progess;
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

