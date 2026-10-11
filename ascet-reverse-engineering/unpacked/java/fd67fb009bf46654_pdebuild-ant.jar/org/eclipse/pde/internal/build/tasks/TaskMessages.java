/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.tasks;

import org.eclipse.osgi.util.NLS;

public class TaskMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.pde.internal.build.tasks.messages";
    public static String error_creatingFeature;
    public static String error_readingDirectory;
    public static String error_missingElement;
    public static String error_missingDirectoryEntry;
    public static String error_runningRetrieve;
    public static String error_noArtifactRepo;
    public static String error_noMetadataRepo;
    public static String error_metadataRepoManagerService;
    public static String error_agentService;
    public static String error_artifactRepoManagerService;
    public static String error_loadRepository;
    public static String error_unmodifiableRepository;
    public static String error_invalidConfig;
    public static String error_branding;
    public static String error_callingGenerator;
    public static String error_artifactRepoNotURI;
    public static String error_metadataRepoNotURI;
    public static String error_locationNotURI;
    public static String error_noCallAfterReplace;
    public static String error_licenseRootWithoutLicenseRef;
    public static String error_conflictingProperties;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.pde.internal.build.tasks.TaskMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

