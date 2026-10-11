/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.platform.messages.PlatformMessages
 */
package org.artop.aal.common.library;

import org.artop.aal.common.library.AutosarLibraryIDEnumerator;
import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.util.URI;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.platform.messages.PlatformMessages;

@Deprecated
public final class AutosarLibraryUtil {
    private AutosarLibraryUtil() {
    }

    public static String getEcuCParamDefARXMLLocation(AutosarReleaseDescriptor releaseDescriptor) {
        return releaseDescriptor.getAutosarLibrariesDescriptor(AutosarLibraryIDEnumerator.ECU_C_PARAM_DEF_LIB_ID).getFileURI().toPlatformString(true);
    }

    public static String getApplInterfacesARXMLLocation(AutosarReleaseDescriptor releaseDescriptor) {
        Assert.isNotNull((Object)releaseDescriptor, (String)NLS.bind((String)PlatformMessages.arg_mustNotBeNull, (Object)"releaseDescriptor"));
        return releaseDescriptor.getAutosarLibrariesDescriptor(AutosarLibraryIDEnumerator.APPLICATION_INTERFACES_LIB_ID).getFileURI().toPlatformString(true);
    }

    public static URI getLibraryARXMLURI(String libraryIdentifier, AutosarReleaseDescriptor releaseDescriptor) {
        if (AutosarLibraryIDEnumerator.ECU_C_PARAM_DEF_LIB_ID.getID().equals(libraryIdentifier)) {
            return releaseDescriptor.getAutosarLibrariesDescriptor(AutosarLibraryIDEnumerator.ECU_C_PARAM_DEF_LIB_ID).getFileURI();
        }
        if (AutosarLibraryIDEnumerator.APPLICATION_INTERFACES_LIB_ID.getID().equals(libraryIdentifier)) {
            return releaseDescriptor.getAutosarLibrariesDescriptor(AutosarLibraryIDEnumerator.APPLICATION_INTERFACES_LIB_ID).getFileURI();
        }
        return null;
    }
}

