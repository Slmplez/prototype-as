/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.metadata.repository.io.MetadataParser
 *  org.eclipse.equinox.internal.p2.metadata.repository.io.MetadataParser$InstallableUnitsHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$AbstractHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$PropertiesHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$RootHandler
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.LinkedHashMap;
import java.util.Map;
import org.eclipse.equinox.internal.p2.engine.ProfileXMLConstants;
import org.eclipse.equinox.internal.p2.metadata.repository.io.MetadataParser;
import org.eclipse.equinox.internal.p2.persistence.XMLParser;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.osgi.framework.BundleContext;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;

public abstract class ProfileParser
extends MetadataParser
implements ProfileXMLConstants {
    public ProfileParser(BundleContext context, String bundleId) {
        super(context, bundleId);
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class IUPropertiesHandler
    extends XMLParser.AbstractHandler {
        private final String[] required;
        private String iuIdentity;
        private Map<String, Map<String, String>> iusPropertiesMap;
        private XMLParser.PropertiesHandler propertiesHandler;

        public IUPropertiesHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, Map<String, Map<String, String>> iusPropertiesMap) {
            super((XMLParser)ProfileParser.this, (ContentHandler)parentHandler, "iuProperties");
            this.required = new String[]{"id", "version"};
            this.iusPropertiesMap = iusPropertiesMap;
            String[] values = this.parseRequiredAttributes(attributes, this.required);
            String id = values[0];
            Version version = ProfileParser.this.checkVersion("iuProperties", "version", values[1]);
            this.iuIdentity = new StringBuffer(String.valueOf(id)).append("_").append(version.toString()).toString();
        }

        protected void finished() {
            if (ProfileParser.this.isValidXML() && this.iuIdentity != null && this.propertiesHandler != null) {
                this.iusPropertiesMap.put(this.iuIdentity, (Map<String, String>)this.propertiesHandler.getProperties());
            }
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("properties")) {
                this.propertiesHandler = new XMLParser.PropertiesHandler((XMLParser)ProfileParser.this, (ContentHandler)((Object)this), attributes);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class IUsPropertiesHandler
    extends XMLParser.AbstractHandler {
        private Map<String, Map<String, String>> iusPropertiesMap;

        public IUsPropertiesHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super((XMLParser)ProfileParser.this, (ContentHandler)parentHandler, "iusProperties");
            String sizeStr = this.parseOptionalAttribute(attributes, "size");
            int size = sizeStr != null ? new Integer(sizeStr) : 4;
            this.iusPropertiesMap = new LinkedHashMap<String, Map<String, String>>(size);
        }

        public Map<String, Map<String, String>> getIUsPropertiesMap() {
            return this.iusPropertiesMap;
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("iuProperties")) {
                new IUPropertiesHandler(this, attributes, this.iusPropertiesMap);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class ProfileHandler
    extends XMLParser.RootHandler {
        private final String[] required;
        private String profileId;
        private String parentId;
        private String timestamp;
        private XMLParser.PropertiesHandler propertiesHandler;
        private MetadataParser.InstallableUnitsHandler unitsHandler;
        private IUsPropertiesHandler iusPropertiesHandler;

        public ProfileHandler() {
            super((XMLParser)ProfileParser.this);
            this.required = new String[]{"id"};
        }

        protected ProfileHandler(String profileId) {
            super((XMLParser)ProfileParser.this);
            this.required = new String[]{"id"};
            this.profileId = profileId;
        }

        protected void handleRootAttributes(Attributes attributes) {
            this.profileId = this.parseRequiredAttributes(attributes, this.required)[0];
            this.parentId = this.parseOptionalAttribute(attributes, "parentId");
            this.timestamp = this.parseOptionalAttribute(attributes, "timestamp");
        }

        public void startElement(String name, Attributes attributes) {
            if ("properties".equals(name)) {
                if (this.propertiesHandler == null) {
                    this.propertiesHandler = new XMLParser.PropertiesHandler((XMLParser)ProfileParser.this, (ContentHandler)((Object)this), attributes);
                } else {
                    ProfileParser.this.duplicateElement((XMLParser.AbstractHandler)this, name, attributes);
                }
            } else if ("units".equals(name)) {
                if (this.unitsHandler == null) {
                    this.unitsHandler = new MetadataParser.InstallableUnitsHandler((MetadataParser)ProfileParser.this, (XMLParser.AbstractHandler)this, attributes);
                } else {
                    ProfileParser.this.duplicateElement((XMLParser.AbstractHandler)this, name, attributes);
                }
            } else if ("iusProperties".equals(name)) {
                if (this.iusPropertiesHandler == null) {
                    this.iusPropertiesHandler = new IUsPropertiesHandler((XMLParser.AbstractHandler)this, attributes);
                } else {
                    ProfileParser.this.duplicateElement((XMLParser.AbstractHandler)this, name, attributes);
                }
            } else {
                this.invalidElement(name, attributes);
            }
        }

        public String getProfileId() {
            return this.profileId;
        }

        public String getParentId() {
            return this.parentId;
        }

        public long getTimestamp() {
            if (this.timestamp != null) {
                try {
                    return Long.parseLong(this.timestamp);
                }
                catch (NumberFormatException numberFormatException) {}
            }
            return 0L;
        }

        public Map<String, String> getProperties() {
            if (this.propertiesHandler == null) {
                return null;
            }
            return this.propertiesHandler.getProperties();
        }

        public IInstallableUnit[] getInstallableUnits() {
            if (this.unitsHandler == null) {
                return null;
            }
            return this.unitsHandler.getUnits();
        }

        public Map<String, String> getIUProperties(IInstallableUnit iu) {
            if (this.iusPropertiesHandler == null) {
                return null;
            }
            Map<String, Map<String, String>> iusPropertiesMap = this.iusPropertiesHandler.getIUsPropertiesMap();
            if (iusPropertiesMap == null) {
                return null;
            }
            String iuIdentity = new StringBuffer(String.valueOf(iu.getId())).append("_").append(iu.getVersion().toString()).toString();
            return iusPropertiesMap.get(iuIdentity);
        }
    }
}

