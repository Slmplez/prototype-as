/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.publisher;

import org.eclipse.osgi.util.NLS;

public class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.equinox.internal.p2.publisher.messages";
    public static String exception_errorConverting;
    public static String exception_stateAddition;
    public static String exception_errorReadingManifest;
    public static String exception_errorLoadingManifest;
    public static String exception_errorLoadingProductFile;
    public static String exception_noPluginConverter;
    public static String exception_noArtifactRepo;
    public static String exception_noMetadataRepo;
    public static String exception_noBundlesOrLocations;
    public static String exception_noFeaturesOrLocations;
    public static String exception_invalidSiteReference;
    public static String exception_invalidSiteReferenceInFeature;
    public static String exception_repoMustBeURL;
    public static String exception_sourcePath;
    public static String message_generatingMetadata;
    public static String message_generationCompleted;
    public static String message_noSimpleconfigurator;
    public static String message_resultException;
    public static String message_publisherArguments;
    public static String exception_artifactRepoNoAppendDestroysInput;
    public static String error_rootIU_generation;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.publisher.Messages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

