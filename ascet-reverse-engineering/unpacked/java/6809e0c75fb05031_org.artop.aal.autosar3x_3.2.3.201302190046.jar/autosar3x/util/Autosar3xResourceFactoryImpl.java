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
package autosar3x.util;

import autosar3x.Activator;
import autosar3x.util.Autosar3xReleaseDescriptor;
import autosar3x.util.Autosar3xResourceImpl;
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
public class Autosar3xResourceFactoryImpl
extends AutosarResourceFactoryImpl {
    public static final AutosarReleaseDescriptor AUTOSAR_3_0_0_RESOURCE_DESCRIPTOR = new Autosar300ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_3_0_1_RESOURCE_DESCRIPTOR = new Autosar301ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_3_0_2_RESOURCE_DESCRIPTOR = new Autosar302ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_3_0_3_RESOURCE_DESCRIPTOR = new Autosar303ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_3_0_4_RESOURCE_DESCRIPTOR = new Autosar304ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_3_0_6_RESOURCE_DESCRIPTOR = new Autosar306ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_3_0_7_RESOURCE_DESCRIPTOR = new Autosar307ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_3_1_0_RESOURCE_DESCRIPTOR = new Autosar310ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_3_1_1_RESOURCE_DESCRIPTOR = new Autosar311ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_3_1_2_RESOURCE_DESCRIPTOR = new Autosar312ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_3_1_4_RESOURCE_DESCRIPTOR = new Autosar314ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_3_1_5_RESOURCE_DESCRIPTOR = new Autosar315ResourceDescriptor();
    public static final AutosarReleaseDescriptor AUTOSAR_3_2_1_RESOURCE_DESCRIPTOR = Autosar3xReleaseDescriptor.INSTANCE;

    public Autosar3xResourceFactoryImpl() {
        super((AutosarReleaseDescriptor)Autosar3xReleaseDescriptor.INSTANCE);
    }

    public Resource createResource(URI uri) {
        Autosar3xResourceImpl result = new Autosar3xResourceImpl(uri);
        this.initResource((XMLResource)result);
        return result;
    }

    protected Map<String, String> createSchemaLocationCatalog() {
        HashMap<String, String> schemaLocationCatalog = new HashMap<String, String>();
        schemaLocationCatalog.put("http://autosar.org/3.0.0", "autosar_3-0-0.xsd");
        schemaLocationCatalog.put("http://autosar.org/3.0.1", "autosar_3-0-1.xsd");
        schemaLocationCatalog.put("http://autosar.org/3.0.2", "autosar_3-0-2.xsd");
        schemaLocationCatalog.put("http://autosar.org/3.0.3", "autosar_3-0-3.xsd");
        schemaLocationCatalog.put("http://autosar.org/3.0.4", "autosar_3-0-4.xsd");
        schemaLocationCatalog.put("http://autosar.org/3.0.6", "autosar_3-0-6.xsd");
        schemaLocationCatalog.put("http://autosar.org/3.0.7", "autosar_3-0-7.xsd");
        schemaLocationCatalog.put("http://autosar.org/3.1.1", "autosar_3-1-1.xsd");
        schemaLocationCatalog.put("http://autosar.org/3.1.2", "autosar_3-1-2.xsd");
        schemaLocationCatalog.put("http://autosar.org/3.1.4", "autosar_3-1-4.xsd");
        schemaLocationCatalog.put("http://autosar.org/3.1.5", "autosar_3-1-5.xsd");
        schemaLocationCatalog.put("http://autosar.org/3.2.1", "autosar_3-2-1.xsd");
        return schemaLocationCatalog;
    }

    protected void initSchemaLocationBaseURIs() {
        this.schemaLocationURIHandler.addSchemaLocationBaseURI((Plugin)Activator.getPlugin(), "model");
    }

    private static class Autosar300ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar300";
        private static final String NS_POSTFIX = "3.0.0";
        private static final String EPKG_PATTERN = "3\\.0\\.0(/\\w+)+";
        private static final String NAME = "AUTOSAR 3.0.0";
        private static final int MAJOR = 3;
        private static final int MINOR = 0;
        private static final int REVISION = 0;
        private static final int ORDINAL = 300;

        private Autosar300ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 3, 0, 0, 300));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar301ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar301";
        private static final String NS_POSTFIX = "3.0.1";
        private static final String EPKG_PATTERN = "3\\.0\\.1(/\\w+)+";
        private static final String NAME = "AUTOSAR 3.0.1";
        private static final int MAJOR = 3;
        private static final int MINOR = 0;
        private static final int REVISION = 1;
        private static final int ORDINAL = 301;

        private Autosar301ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 3, 0, 1, 301));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar302ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar302";
        private static final String NS_POSTFIX = "3.0.2";
        private static final String EPKG_PATTERN = "3\\.0\\.2(/\\w+)+";
        private static final String NAME = "AUTOSAR 3.0.2";
        private static final int MAJOR = 3;
        private static final int MINOR = 0;
        private static final int REVISION = 2;
        private static final int ORDINAL = 302;

        private Autosar302ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 3, 0, 2, 302));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar303ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar303";
        private static final String NS_POSTFIX = "3.0.3";
        private static final String EPKG_PATTERN = "3\\.0\\.3(/\\w+)+";
        private static final String NAME = "AUTOSAR 3.0.3";
        private static final int MAJOR = 3;
        private static final int MINOR = 0;
        private static final int REVISION = 3;
        private static final int ORDINAL = 303;

        private Autosar303ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 3, 0, 3, 303));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar304ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar304";
        private static final String NS_POSTFIX = "3.0.4";
        private static final String EPKG_PATTERN = "3\\.0\\.4(/\\w+)+";
        private static final String NAME = "AUTOSAR 3.0.4";
        private static final int MAJOR = 3;
        private static final int MINOR = 0;
        private static final int REVISION = 4;
        private static final int ORDINAL = 304;

        private Autosar304ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 3, 0, 4, 304));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar306ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar306";
        private static final String NS_POSTFIX = "3.0.6";
        private static final String EPKG_PATTERN = "3\\.0\\.6(/\\w+)+";
        private static final String NAME = "AUTOSAR 3.0.6";
        private static final int MAJOR = 3;
        private static final int MINOR = 0;
        private static final int REVISION = 6;
        private static final int ORDINAL = 306;

        private Autosar306ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 3, 0, 6, 306));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar307ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar307";
        private static final String NS_POSTFIX = "3.0.7";
        private static final String EPKG_PATTERN = "3\\.0\\.7(/\\w+)+";
        private static final String NAME = "AUTOSAR 3.0.7";
        private static final int MAJOR = 3;
        private static final int MINOR = 0;
        private static final int REVISION = 7;
        private static final int ORDINAL = 307;

        private Autosar307ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 3, 0, 7, 307));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar310ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar310";
        private static final String NS_POSTFIX = "3.1.0";
        private static final String EPKG_PATTERN = "3\\.1\\.0(/\\w+)+";
        private static final String NAME = "AUTOSAR 3.1.0";
        private static final int MAJOR = 3;
        private static final int MINOR = 1;
        private static final int REVISION = 0;
        private static final int ORDINAL = 310;

        private Autosar310ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 3, 1, 0, 310));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar311ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar311";
        private static final String NS_POSTFIX = "3.1.1";
        private static final String EPKG_PATTERN = "3\\.1\\.1(/\\w+)+";
        private static final String NAME = "AUTOSAR 3.1.1";
        private static final int MAJOR = 3;
        private static final int MINOR = 1;
        private static final int REVISION = 1;
        private static final int ORDINAL = 311;

        private Autosar311ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 3, 1, 1, 311));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar312ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar312";
        private static final String NS_POSTFIX = "3.1.2";
        private static final String EPKG_PATTERN = "3\\.1\\.2(/\\w+)+";
        private static final String NAME = "AUTOSAR 3.1.2";
        private static final int MAJOR = 3;
        private static final int MINOR = 1;
        private static final int REVISION = 2;
        private static final int ORDINAL = 312;

        private Autosar312ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 3, 1, 2, 312));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar314ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar314";
        private static final String NS_POSTFIX = "3.1.4";
        private static final String EPKG_PATTERN = "3\\.1\\.4(/\\w+)+";
        private static final String NAME = "AUTOSAR 3.1.4";
        private static final int MAJOR = 3;
        private static final int MINOR = 1;
        private static final int REVISION = 4;
        private static final int ORDINAL = 314;

        private Autosar314ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 3, 1, 4, 314));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }

    private static class Autosar315ResourceDescriptor
    extends AutosarReleaseDescriptor {
        private static final String ID = "org.artop.aal.autosar315";
        private static final String NS_POSTFIX = "3.1.5";
        private static final String EPKG_PATTERN = "3\\.1\\.5(/\\w+)+";
        private static final String NAME = "AUTOSAR 3.1.5";
        private static final int MAJOR = 3;
        private static final int MINOR = 1;
        private static final int REVISION = 5;
        private static final int ORDINAL = 315;

        private Autosar315ResourceDescriptor() {
            super(ID, new AutosarMetaModelVersionData(NS_POSTFIX, EPKG_PATTERN, NAME, 3, 1, 5, 315));
        }

        public String getDefaultContentTypeId() {
            return this.getRootEPackageContentTypeId();
        }
    }
}

