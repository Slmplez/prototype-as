/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.metamodel.AutosarMetaModelVersionData
 *  org.artop.aal.common.metamodel.AutosarReleaseDescriptor
 *  org.artop.aal.common.resource.impl.AutosarResourceFactoryImpl
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.xmi.XMLResource
 */
package autosar40.util;

import autosar40.Activator;
import autosar40.util.Autosar40ReleaseDescriptor;
import autosar40.util.Autosar40ResourceImpl;
import java.util.HashMap;
import java.util.Map;
import org.artop.aal.common.metamodel.AutosarMetaModelVersionData;
import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.aal.common.resource.impl.AutosarResourceFactoryImpl;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.XMLResource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Autosar40ResourceFactoryImpl
extends AutosarResourceFactoryImpl {
    public static final AutosarReleaseDescriptor AUTOSAR_4_0_1_RESOURCE_DESCRIPTOR = new Autosar401ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_4_0_2_RESOURCE_DESCRIPTOR = new Autosar402ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_4_0_3_RESOURCE_DESCRIPTOR = Autosar40ReleaseDescriptor.INSTANCE;

    public Autosar40ResourceFactoryImpl() {
        super((AutosarReleaseDescriptor)Autosar40ReleaseDescriptor.INSTANCE);
    }

    public Resource createResource(URI uri) {
        Autosar40ResourceImpl result = new Autosar40ResourceImpl(uri);
        this.initResource((XMLResource)result);
        return result;
    }

    protected Map<String, String> createSchemaLocationCatalog() {
        HashMap<String, String> schemaLocationCatalog = new HashMap<String, String>();
        schemaLocationCatalog.put("http://autosar.org/schema/r4.0", "autosar_4-0-3.xsd");
        return schemaLocationCatalog;
    }

    protected void initSchemaLocationBaseURIs() {
        this.schemaLocationURIHandler.addSchemaLocationBaseURI((Plugin)Activator.getPlugin(), "model");
    }

    private static class Autosar401ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar401";
        private static final String NS_POSTFIX = "schema/r4.0";
        private static final String EPKG_PATTERN = "schema/r4\\.0(/\\w+)+";
        private static final String NAME = "AUTOSAR 4.0.1";
        private static final int MAJOR = 4;
        private static final int MINOR = 0;
        private static final int REVISION = 1;
        private static final int ORDINAL = 401;

        private Autosar401ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 4, 0, 1, 401));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar402ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar402";
        private static final String NS_POSTFIX = "schema/r4.0";
        private static final String EPKG_PATTERN = "schema/r4\\.0(/\\w+)+";
        private static final String NAME = "AUTOSAR 4.0.2";
        private static final int MAJOR = 4;
        private static final int MINOR = 0;
        private static final int REVISION = 2;
        private static final int ORDINAL = 402;

        private Autosar402ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 4, 0, 2, 402));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }
}

