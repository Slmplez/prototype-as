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
package autosar21.util;

import autosar21.Activator;
import autosar21.util.Autosar21ReleaseDescriptor;
import autosar21.util.Autosar21ResourceImpl;
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
public class Autosar21ResourceFactoryImpl
extends AutosarResourceFactoryImpl {
    public static final AutosarReleaseDescriptor AUTOSAR_2_1_0_RESOURCE_DESCRIPTOR = new Autosar210ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_2_1_1_RESOURCE_DESCRIPTOR = new Autosar211ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_2_1_2_RESOURCE_DESCRIPTOR = new Autosar212ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_2_1_4_RESOURCE_DESCRIPTOR = new Autosar214ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_2_1_5_RESOURCE_DESCRIPTOR = Autosar21ReleaseDescriptor.INSTANCE;

    public Autosar21ResourceFactoryImpl() {
        super((AutosarReleaseDescriptor)Autosar21ReleaseDescriptor.INSTANCE);
    }

    public Resource createResource(URI uri) {
        Autosar21ResourceImpl result = new Autosar21ResourceImpl(uri);
        this.initResource((XMLResource)result);
        return result;
    }

    protected Map<String, String> createSchemaLocationCatalog() {
        HashMap<String, String> schemaLocationCatalog = new HashMap<String, String>();
        schemaLocationCatalog.put("http://autosar.org/2.1.0", "autosar_2-1-0.xsd");
        schemaLocationCatalog.put("http://autosar.org/2.1.1", "autosar_2-1-1.xsd");
        schemaLocationCatalog.put("http://autosar.org/2.1.2", "autosar_2-1-2.xsd");
        schemaLocationCatalog.put("http://autosar.org/2.1.4", "autosar_2-1-4.xsd");
        schemaLocationCatalog.put("http://autosar.org/2.1.5", "autosar_2-1-5.xsd");
        return schemaLocationCatalog;
    }

    protected void initSchemaLocationBaseURIs() {
        this.schemaLocationURIHandler.addSchemaLocationBaseURI((Plugin)Activator.getPlugin(), "model");
    }

    private static class Autosar210ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar210";
        private static final String NS_POSTFIX = "2.1.0";
        private static final String EPKG_PATTERN = "2\\.1\\.0(/\\w+)+";
        private static final String NAME = "AUTOSAR 2.1.0";
        private static final int MAJOR = 2;
        private static final int MINOR = 1;
        private static final int REVISION = 0;
        private static final int ORDINAL = 210;

        private Autosar210ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 2, 1, 0, 210));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar211ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar211";
        private static final String NS_POSTFIX = "2.1.1";
        private static final String EPKG_PATTERN = "2\\.1\\.1(/\\w+)+";
        private static final String NAME = "AUTOSAR 2.1.1";
        private static final int MAJOR = 2;
        private static final int MINOR = 1;
        private static final int REVISION = 1;
        private static final int ORDINAL = 211;

        private Autosar211ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 2, 1, 1, 211));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar212ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar212";
        private static final String NS_POSTFIX = "2.1.2";
        private static final String EPKG_PATTERN = "2\\.1\\.2(/\\w+)+";
        private static final String NAME = "AUTOSAR 2.1.2";
        private static final int MAJOR = 2;
        private static final int MINOR = 1;
        private static final int REVISION = 2;
        private static final int ORDINAL = 212;

        private Autosar212ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 2, 1, 2, 212));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar214ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar214";
        private static final String NS_POSTFIX = "2.1.4";
        private static final String EPKG_PATTERN = "2\\.1\\.4(/\\w+)+";
        private static final String NAME = "AUTOSAR 2.1.4";
        private static final int MAJOR = 2;
        private static final int MINOR = 1;
        private static final int REVISION = 4;
        private static final int ORDINAL = 214;

        private Autosar214ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 2, 1, 4, 214));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }
}

