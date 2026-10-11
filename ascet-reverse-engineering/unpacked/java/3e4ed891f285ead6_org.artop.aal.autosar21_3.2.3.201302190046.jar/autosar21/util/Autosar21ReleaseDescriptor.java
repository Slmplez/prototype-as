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
package autosar21.util;

import autosar21.Activator;
import autosar21.util.Autosar21ResourceFactoryImpl;
import java.util.ArrayList;
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
public class Autosar21ReleaseDescriptor
extends AutosarReleaseDescriptor {
    public static final String ARXML_CONTENT_TYPE_ID = "org.artop.aal.autosar21.autosar21XMLFile";
    private static final String ID = "org.artop.aal.autosar21";
    private static final String NS_POSTFIX = "2.1.5";
    private static final String EPKG_PATTERN = "2\\.1\\.5(/\\w+)+";
    private static final String NAME = "AUTOSAR 2.1";
    private static final int MAJOR = 2;
    private static final int MINOR = 1;
    private static final int REVISION = 5;
    private static final int ORDINAL = 21;
    public static final Autosar21ReleaseDescriptor INSTANCE = new Autosar21ReleaseDescriptor();

    public Autosar21ReleaseDescriptor() {
        super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 2, 1, 5, 21));
    }

    public String getDefaultContentTypeId() {
        return ARXML_CONTENT_TYPE_ID;
    }

    public Collection<IMetaModelDescriptor> getCompatibleResourceVersionDescriptors() {
        ArrayList<AutosarReleaseDescriptor> result = new ArrayList<AutosarReleaseDescriptor>();
        result.add(Autosar21ResourceFactoryImpl.AUTOSAR_2_1_0_RESOURCE_DESCRIPTOR);
        result.add(Autosar21ResourceFactoryImpl.AUTOSAR_2_1_1_RESOURCE_DESCRIPTOR);
        result.add(Autosar21ResourceFactoryImpl.AUTOSAR_2_1_2_RESOURCE_DESCRIPTOR);
        result.add(Autosar21ResourceFactoryImpl.AUTOSAR_2_1_4_RESOURCE_DESCRIPTOR);
        result.add(Autosar21ResourceFactoryImpl.AUTOSAR_2_1_5_RESOURCE_DESCRIPTOR);
        return Collections.unmodifiableList(result);
    }

    public Map<AutosarLibraryIDEnumerator, AutosarLibraryDescriptor> getAutosarLibraryDescriptors() {
        if (this.libraries == null) {
            this.libraries = new HashMap();
        }
        this.libraries.put(AutosarLibraryIDEnumerator.ECU_C_PARAM_DEF_LIB_ID, new AutosarLibraryDescriptor((Plugin)Activator.getPlugin(), "EcucParamDef.arxml", "ECU Configuration Parameters"));
        this.libraries.put(AutosarLibraryIDEnumerator.APPLICATION_INTERFACES_LIB_ID, new AutosarLibraryDescriptor((Plugin)Activator.getPlugin(), "ApplicationInterfaces.arxml", "Application Interfaces"));
        return this.libraries;
    }
}

