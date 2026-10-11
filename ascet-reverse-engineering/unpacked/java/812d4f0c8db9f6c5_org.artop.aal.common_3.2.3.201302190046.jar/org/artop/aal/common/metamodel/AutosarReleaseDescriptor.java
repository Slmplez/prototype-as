/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.sphinx.emf.metamodel.AbstractMetaModelDescriptor
 *  org.eclipse.sphinx.emf.metamodel.MetaModelVersionData
 */
package org.artop.aal.common.metamodel;

import java.util.Collections;
import java.util.Map;
import org.artop.aal.common.library.AutosarLibraryDescriptor;
import org.artop.aal.common.library.AutosarLibraryIDEnumerator;
import org.artop.aal.common.metamodel.AutosarMetaModelVersionData;
import org.eclipse.sphinx.emf.metamodel.AbstractMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelVersionData;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AutosarReleaseDescriptor
extends AbstractMetaModelDescriptor
implements Comparable<AutosarReleaseDescriptor> {
    public static final String ID = "org.artop.aal.autosar";
    public static final String BASE_NAMESPACE = "http://autosar.org";
    public static final String ARXML_BASE_CONTENT_TYPE_ID = "org.artop.aal.autosar.autosarXMLFile";
    public static final String ARXML_DEFAULT_FILE_EXTENSION = "arxml";
    public static final AutosarReleaseDescriptor INSTANCE = new AutosarReleaseDescriptor();
    protected AutosarMetaModelVersionData autosarVersionData;
    protected Map<AutosarLibraryIDEnumerator, AutosarLibraryDescriptor> libraries = null;

    private AutosarReleaseDescriptor() {
        this(ID, null);
    }

    protected AutosarReleaseDescriptor(String identifier, AutosarMetaModelVersionData versionData) {
        super(identifier, BASE_NAMESPACE, (MetaModelVersionData)versionData);
        this.autosarVersionData = versionData;
    }

    public String getDefaultContentTypeId() {
        return ARXML_BASE_CONTENT_TYPE_ID;
    }

    public AutosarMetaModelVersionData getAutosarVersionData() {
        return this.autosarVersionData;
    }

    @Override
    public int compareTo(AutosarReleaseDescriptor other) {
        return this.autosarVersionData.compareTo(other.autosarVersionData);
    }

    public Map<AutosarLibraryIDEnumerator, AutosarLibraryDescriptor> getAutosarLibraryDescriptors() {
        if (this.libraries == null) {
            this.libraries = Collections.emptyMap();
        }
        return this.libraries;
    }

    public AutosarLibraryDescriptor getAutosarLibrariesDescriptor(AutosarLibraryIDEnumerator libraryID) {
        return this.getAutosarLibraryDescriptors().get((Object)libraryID);
    }
}

