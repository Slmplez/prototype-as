/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.library.AutosarLibraryDescriptor
 *  org.artop.aal.common.library.AutosarLibraryIDEnumerator
 *  org.artop.aal.common.metamodel.AutosarMetaModelVersionData
 *  org.artop.aal.common.metamodel.AutosarReleaseDescriptor
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor
 */
package autosar40.util;

import autosar40.Activator;
import autosar40.util.Autosar40ResourceFactoryImpl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.artop.aal.common.library.AutosarLibraryDescriptor;
import org.artop.aal.common.library.AutosarLibraryIDEnumerator;
import org.artop.aal.common.metamodel.AutosarMetaModelVersionData;
import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Autosar40ReleaseDescriptor
extends AutosarReleaseDescriptor {
    public static final String ARXML_CONTENT_TYPE_ID = "org.artop.aal.autosar40.autosar40XMLFile";
    private static final String ID = "org.artop.aal.autosar40";
    private static final String NS_POSTFIX = "schema/r4.0";
    private static final String EPKG_PATTERN = "schema/r4\\.0(/\\w+)+";
    private static final String NAME = "AUTOSAR 4.0";
    private static final int MAJOR = 4;
    private static final int MINOR = 0;
    private static final int REVISION = 3;
    private static final int ORDINAL = 40;
    public static final Autosar40ReleaseDescriptor INSTANCE = new Autosar40ReleaseDescriptor();

    public Autosar40ReleaseDescriptor() {
        super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 4, 0, 3, 40));
    }

    public String getDefaultContentTypeId() {
        return ARXML_CONTENT_TYPE_ID;
    }

    public Collection<IMetaModelDescriptor> getCompatibleResourceVersionDescriptors() {
        ArrayList<AutosarReleaseDescriptor> result = new ArrayList<AutosarReleaseDescriptor>();
        result.add(Autosar40ResourceFactoryImpl.AUTOSAR_4_0_1_RESOURCE_DESCRIPTOR);
        result.add(Autosar40ResourceFactoryImpl.AUTOSAR_4_0_2_RESOURCE_DESCRIPTOR);
        return Collections.unmodifiableList(result);
    }

    public Map<AutosarLibraryIDEnumerator, AutosarLibraryDescriptor> getAutosarLibraryDescriptors() {
        if (this.libraries == null) {
            this.libraries = new HashMap();
        }
        this.libraries.put(AutosarLibraryIDEnumerator.ECU_C_PARAM_DEF_LIB_ID, new AutosarLibraryDescriptor((Plugin)Activator.getPlugin(), "ECUConfigurationParameters.arxml", "ECU Configuration Parameters"));
        this.libraries.put(AutosarLibraryIDEnumerator.APPLICATION_INTERFACES_LIB_ID, new AutosarLibraryDescriptor((Plugin)Activator.getPlugin(), Arrays.asList("AISpecificationStandard.arxml", "AISpecificationKeyword.arxml", "AISpecificationBlueprint.arxml"), "Application Interfaces"));
        return this.libraries;
    }
}

