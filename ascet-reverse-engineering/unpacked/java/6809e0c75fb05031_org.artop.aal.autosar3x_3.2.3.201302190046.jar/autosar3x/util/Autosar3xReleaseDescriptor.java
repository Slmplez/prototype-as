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
package autosar3x.util;

import autosar3x.Activator;
import autosar3x.util.Autosar3xResourceFactoryImpl;
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
public class Autosar3xReleaseDescriptor
extends AutosarReleaseDescriptor {
    public static final String ARXML_CONTENT_TYPE_ID = "org.artop.aal.autosar3x.autosar3xXMLFile";
    private static final String ID = "org.artop.aal.autosar3x";
    private static final String NS_POSTFIX = "3.2.1";
    private static final String EPKG_PATTERN = "3\\.2\\.1(/\\w+)+";
    private static final String NAME = "AUTOSAR 3.x";
    private static final int MAJOR = 3;
    private static final int MINOR = 2;
    private static final int REVISION = 1;
    private static final int ORDINAL = 3;
    public static final Autosar3xReleaseDescriptor INSTANCE = new Autosar3xReleaseDescriptor();

    public Autosar3xReleaseDescriptor() {
        super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 3, 2, 1, 3));
    }

    public String getDefaultContentTypeId() {
        return ARXML_CONTENT_TYPE_ID;
    }

    public Collection<IMetaModelDescriptor> getCompatibleResourceVersionDescriptors() {
        ArrayList<AutosarReleaseDescriptor> result = new ArrayList<AutosarReleaseDescriptor>();
        result.add(Autosar3xResourceFactoryImpl.AUTOSAR_3_0_0_RESOURCE_DESCRIPTOR);
        result.add(Autosar3xResourceFactoryImpl.AUTOSAR_3_0_1_RESOURCE_DESCRIPTOR);
        result.add(Autosar3xResourceFactoryImpl.AUTOSAR_3_0_2_RESOURCE_DESCRIPTOR);
        result.add(Autosar3xResourceFactoryImpl.AUTOSAR_3_0_3_RESOURCE_DESCRIPTOR);
        result.add(Autosar3xResourceFactoryImpl.AUTOSAR_3_0_4_RESOURCE_DESCRIPTOR);
        result.add(Autosar3xResourceFactoryImpl.AUTOSAR_3_0_6_RESOURCE_DESCRIPTOR);
        result.add(Autosar3xResourceFactoryImpl.AUTOSAR_3_0_7_RESOURCE_DESCRIPTOR);
        result.add(Autosar3xResourceFactoryImpl.AUTOSAR_3_1_0_RESOURCE_DESCRIPTOR);
        result.add(Autosar3xResourceFactoryImpl.AUTOSAR_3_1_1_RESOURCE_DESCRIPTOR);
        result.add(Autosar3xResourceFactoryImpl.AUTOSAR_3_1_2_RESOURCE_DESCRIPTOR);
        result.add(Autosar3xResourceFactoryImpl.AUTOSAR_3_1_4_RESOURCE_DESCRIPTOR);
        result.add(Autosar3xResourceFactoryImpl.AUTOSAR_3_1_5_RESOURCE_DESCRIPTOR);
        result.add(Autosar3xResourceFactoryImpl.AUTOSAR_3_2_1_RESOURCE_DESCRIPTOR);
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

