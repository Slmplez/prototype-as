/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.publisher.ant;

import org.eclipse.osgi.util.NLS;

public class TaskMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.equinox.internal.p2.publisher.ant.messages";
    public static String exception_errorOccurredCallingGenerator;
    public static String exception_errorArtifactRepo;
    public static String exception_errorMetadataRepo;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.publisher.ant.TaskMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

