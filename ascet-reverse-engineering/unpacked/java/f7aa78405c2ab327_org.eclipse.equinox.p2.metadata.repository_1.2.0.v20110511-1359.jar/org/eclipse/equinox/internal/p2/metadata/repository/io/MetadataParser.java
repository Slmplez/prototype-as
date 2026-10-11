/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties
 *  org.eclipse.equinox.internal.p2.metadata.ArtifactKey
 *  org.eclipse.equinox.internal.p2.metadata.InstallableUnit
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$AbstractHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$PropertiesHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$TextHandler
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.ICopyright
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.ILicense
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.IRequirementChange
 *  org.eclipse.equinox.p2.metadata.ITouchpointData
 *  org.eclipse.equinox.p2.metadata.ITouchpointInstruction
 *  org.eclipse.equinox.p2.metadata.ITouchpointType
 *  org.eclipse.equinox.p2.metadata.IUpdateDescriptor
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitFragmentDescription
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitPatchDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.metadata.expression.ExpressionParseException
 *  org.eclipse.equinox.p2.metadata.expression.ExpressionUtil
 *  org.eclipse.equinox.p2.metadata.expression.IExpression
 *  org.eclipse.equinox.p2.metadata.expression.IExpressionFactory
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.repository.IRepositoryReference
 *  org.eclipse.equinox.p2.repository.spi.RepositoryReference
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.metadata.repository.io;

import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties;
import org.eclipse.equinox.internal.p2.metadata.ArtifactKey;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnit;
import org.eclipse.equinox.internal.p2.metadata.repository.io.XMLConstants;
import org.eclipse.equinox.internal.p2.persistence.XMLParser;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.ICopyright;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.ILicense;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.IRequirementChange;
import org.eclipse.equinox.p2.metadata.ITouchpointData;
import org.eclipse.equinox.p2.metadata.ITouchpointInstruction;
import org.eclipse.equinox.p2.metadata.ITouchpointType;
import org.eclipse.equinox.p2.metadata.IUpdateDescriptor;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.ExpressionParseException;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.repository.IRepositoryReference;
import org.eclipse.equinox.p2.repository.spi.RepositoryReference;
import org.osgi.framework.BundleContext;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class MetadataParser
extends XMLParser
implements XMLConstants {
    static final ILicense[] NO_LICENSES = new ILicense[0];

    public MetadataParser(BundleContext context, String bundleId) {
        super(context, bundleId);
    }

    static IMatchExpression<IInstallableUnit> createMatchExpression(String match, String matchParams) {
        Object[] params;
        IExpressionFactory factory = ExpressionUtil.getFactory();
        IExpression expr = ExpressionUtil.parse((String)match);
        if (matchParams == null) {
            params = new Object[]{};
        } else {
            IExpression[] arrayExpr = ExpressionUtil.getOperands((IExpression)ExpressionUtil.parse((String)matchParams));
            params = new Object[arrayExpr.length];
            int idx = 0;
            while (idx < arrayExpr.length) {
                params[idx] = arrayExpr[idx].evaluate(null);
                ++idx;
            }
        }
        return factory.matchExpression(expr, params);
    }

    protected abstract class AbstractMetadataHandler
    extends XMLParser.AbstractHandler {
        public AbstractMetadataHandler(ContentHandler parentHandler, String elementHandled) {
            super((XMLParser)MetadataParser.this, parentHandler, elementHandled);
        }

        int getOptionalSize(Attributes attributes, int dflt) {
            String sizeStr = this.parseOptionalAttribute(attributes, "size");
            return sizeStr != null ? Integer.parseInt(sizeStr) : dflt;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class ApplicabilityScopeHandler
    extends XMLParser.AbstractHandler {
        private RequiredCapabilitiesHandler children;
        private List<IRequirement[]> scopes;

        public ApplicabilityScopeHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, List<IRequirement[]> scopes) {
            super((XMLParser)MetadataParser.this, (ContentHandler)parentHandler, "scope");
            this.scopes = scopes;
        }

        public void startElement(String name, Attributes attributes) {
            if ("requires".equals(name)) {
                this.children = new RequiredCapabilitiesHandler(this, attributes);
            } else {
                MetadataParser.this.duplicateElement(this, name, attributes);
            }
        }

        protected void finished() {
            if (this.children != null) {
                this.scopes.add(this.children.getRequiredCapabilities());
            }
        }
    }

    protected class ApplicabilityScopesHandler
    extends AbstractMetadataHandler {
        private List<IRequirement[]> scopes;

        public ApplicabilityScopesHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super((ContentHandler)parentHandler, "patchScope");
            this.scopes = new ArrayList<IRequirement[]>(this.getOptionalSize(attributes, 4));
        }

        public void startElement(String name, Attributes attributes) {
            if ("scope".equals(name)) {
                new ApplicabilityScopeHandler(this, attributes, this.scopes);
            } else {
                MetadataParser.this.duplicateElement(this, name, attributes);
            }
        }

        public IRequirement[][] getScope() {
            return (IRequirement[][])this.scopes.toArray((T[])new IRequirement[this.scopes.size()][]);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class ArtifactHandler
    extends XMLParser.AbstractHandler {
        private final String[] required;

        public ArtifactHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, List<IArtifactKey> artifacts) {
            super((XMLParser)MetadataParser.this, (ContentHandler)parentHandler, "artifact");
            this.required = new String[]{"classifier", "id", "version"};
            String[] values = this.parseRequiredAttributes(attributes, this.required);
            Version version = MetadataParser.this.checkVersion("artifact", "version", values[2]);
            artifacts.add((IArtifactKey)new ArtifactKey(values[0], values[1], version));
        }

        public void startElement(String name, Attributes attributes) {
            this.invalidElement(name, attributes);
        }
    }

    protected class ArtifactsHandler
    extends XMLParser.AbstractHandler {
        private List<IArtifactKey> artifacts;

        public ArtifactsHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super((XMLParser)MetadataParser.this, (ContentHandler)parentHandler, "artifacts");
            String size = this.parseOptionalAttribute(attributes, "size");
            this.artifacts = size != null ? new ArrayList(new Integer(size)) : new ArrayList(4);
        }

        public IArtifactKey[] getArtifactKeys() {
            return this.artifacts.toArray(new IArtifactKey[this.artifacts.size()]);
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("artifact")) {
                new ArtifactHandler(this, attributes, this.artifacts);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    protected class CopyrightHandler
    extends XMLParser.TextHandler {
        URI location;
        private ICopyright copyright;

        public CopyrightHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super((XMLParser)MetadataParser.this, parentHandler, "copyright");
            this.location = null;
            this.location = this.parseURIAttribute(attributes, false);
        }

        protected void finished() {
            if (MetadataParser.this.isValidXML()) {
                this.copyright = MetadataFactory.createCopyright((URI)this.location, (String)this.getText());
            }
        }

        public ICopyright getCopyright() {
            return this.copyright;
        }
    }

    protected class HostRequiredCapabilitiesHandler
    extends AbstractMetadataHandler {
        private List<IRequirement> requiredCapabilities;

        public HostRequiredCapabilitiesHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super((ContentHandler)parentHandler, "hostRequirements");
            this.requiredCapabilities = new ArrayList<IRequirement>(this.getOptionalSize(attributes, 4));
        }

        public IRequirement[] getHostRequiredCapabilities() {
            return this.requiredCapabilities.toArray(new IRequirement[this.requiredCapabilities.size()]);
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("required")) {
                new RequirementHandler(this, attributes, this.requiredCapabilities);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class InstallableUnitHandler
    extends XMLParser.AbstractHandler {
        MetadataFactory.InstallableUnitDescription currentUnit;
        private XMLParser.PropertiesHandler propertiesHandler;
        private ProvidedCapabilitiesHandler providedCapabilitiesHandler;
        private RequiredCapabilitiesHandler requiredCapabilitiesHandler;
        private HostRequiredCapabilitiesHandler hostRequiredCapabilitiesHandler;
        private MetaRequiredCapabilitiesHandler metaRequiredCapabilitiesHandler;
        private XMLParser.TextHandler filterHandler;
        private ArtifactsHandler artifactsHandler;
        private TouchpointTypeHandler touchpointTypeHandler;
        private TouchpointDataHandler touchpointDataHandler;
        private UpdateDescriptorHandler updateDescriptorHandler;
        private LicensesHandler licensesHandler;
        private CopyrightHandler copyrightHandler;
        private RequirementsChangeHandler requirementChangesHandler;
        private ApplicabilityScopesHandler applicabilityScopeHandler;
        private LifeCycleHandler lifeCycleHandler;
        private String id;
        private Version version;
        private boolean singleton;
        private List<MetadataFactory.InstallableUnitDescription> units;

        public InstallableUnitHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, List<MetadataFactory.InstallableUnitDescription> units) {
            super((XMLParser)MetadataParser.this, (ContentHandler)parentHandler, "unit");
            this.currentUnit = null;
            this.propertiesHandler = null;
            this.providedCapabilitiesHandler = null;
            this.requiredCapabilitiesHandler = null;
            this.hostRequiredCapabilitiesHandler = null;
            this.metaRequiredCapabilitiesHandler = null;
            this.filterHandler = null;
            this.artifactsHandler = null;
            this.touchpointTypeHandler = null;
            this.touchpointDataHandler = null;
            this.updateDescriptorHandler = null;
            this.licensesHandler = null;
            this.copyrightHandler = null;
            this.requirementChangesHandler = null;
            this.applicabilityScopeHandler = null;
            String[] values = this.parseAttributes(attributes, REQUIRED_IU_ATTRIBUTES, OPTIONAL_IU_ATTRIBUTES);
            this.units = units;
            if (values[0] == null) {
                return;
            }
            this.id = values[0];
            this.version = MetadataParser.this.checkVersion("unit", "version", values[1]);
            this.singleton = MetadataParser.this.checkBoolean("unit", "singleton", values[2], true);
        }

        public IInstallableUnit getInstallableUnit() {
            return MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)this.currentUnit);
        }

        public void startElement(String name, Attributes attributes) {
            MetadataParser.this.checkCancel();
            if ("properties".equals(name)) {
                if (this.propertiesHandler == null) {
                    this.propertiesHandler = new XMLParser.PropertiesHandler((XMLParser)MetadataParser.this, (ContentHandler)((Object)this), attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("provides".equals(name)) {
                if (this.providedCapabilitiesHandler == null) {
                    this.providedCapabilitiesHandler = new ProvidedCapabilitiesHandler(this, attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("requires".equals(name)) {
                if (this.requiredCapabilitiesHandler == null) {
                    this.requiredCapabilitiesHandler = new RequiredCapabilitiesHandler(this, attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("hostRequirements".equals(name)) {
                if (this.hostRequiredCapabilitiesHandler == null) {
                    this.hostRequiredCapabilitiesHandler = new HostRequiredCapabilitiesHandler(this, attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("metaRequirements".equals(name)) {
                if (this.metaRequiredCapabilitiesHandler == null) {
                    this.metaRequiredCapabilitiesHandler = new MetaRequiredCapabilitiesHandler(this, attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("filter".equals(name)) {
                if (this.filterHandler == null) {
                    this.filterHandler = new XMLParser.TextHandler((XMLParser)MetadataParser.this, (XMLParser.AbstractHandler)this, "filter", attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("artifacts".equals(name)) {
                if (this.artifactsHandler == null) {
                    this.artifactsHandler = new ArtifactsHandler(this, attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("touchpoint".equals(name)) {
                if (this.touchpointTypeHandler == null) {
                    this.touchpointTypeHandler = new TouchpointTypeHandler(this, attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("touchpointData".equals(name)) {
                if (this.touchpointDataHandler == null) {
                    this.touchpointDataHandler = new TouchpointDataHandler(this, attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("update".equals(name)) {
                if (this.updateDescriptorHandler == null) {
                    this.updateDescriptorHandler = new UpdateDescriptorHandler(this, attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("licenses".equals(name)) {
                if (this.licensesHandler == null) {
                    this.licensesHandler = new LicensesHandler((ContentHandler)((Object)this), attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("changes".equals(name)) {
                if (this.requirementChangesHandler == null) {
                    this.requirementChangesHandler = new RequirementsChangeHandler(this, attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("patchScope".equals(name)) {
                if (this.applicabilityScopeHandler == null) {
                    this.applicabilityScopeHandler = new ApplicabilityScopesHandler(this, attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("lifeCycle".equals(name)) {
                if (this.lifeCycleHandler == null) {
                    this.lifeCycleHandler = new LifeCycleHandler(this, attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("copyright".equals(name)) {
                if (this.copyrightHandler == null) {
                    this.copyrightHandler = new CopyrightHandler(this, attributes);
                } else {
                    MetadataParser.this.duplicateElement(this, name, attributes);
                }
            } else {
                this.invalidElement(name, attributes);
            }
        }

        protected void finished() {
            if (MetadataParser.this.isValidXML()) {
                if (this.requirementChangesHandler != null) {
                    this.currentUnit = new MetadataFactory.InstallableUnitPatchDescription();
                    ((MetadataFactory.InstallableUnitPatchDescription)this.currentUnit).setRequirementChanges(this.requirementChangesHandler.getRequirementChanges().toArray(new IRequirementChange[this.requirementChangesHandler.getRequirementChanges().size()]));
                    if (this.applicabilityScopeHandler != null) {
                        ((MetadataFactory.InstallableUnitPatchDescription)this.currentUnit).setApplicabilityScope(this.applicabilityScopeHandler.getScope());
                    }
                    if (this.lifeCycleHandler != null) {
                        ((MetadataFactory.InstallableUnitPatchDescription)this.currentUnit).setLifeCycle(this.lifeCycleHandler.getLifeCycleRequirement());
                    }
                } else if (this.hostRequiredCapabilitiesHandler == null || this.hostRequiredCapabilitiesHandler.getHostRequiredCapabilities().length == 0) {
                    this.currentUnit = new MetadataFactory.InstallableUnitDescription();
                } else {
                    this.currentUnit = new MetadataFactory.InstallableUnitFragmentDescription();
                    ((MetadataFactory.InstallableUnitFragmentDescription)this.currentUnit).setHost(this.hostRequiredCapabilitiesHandler.getHostRequiredCapabilities());
                }
                this.currentUnit.setId(this.id);
                this.currentUnit.setVersion(this.version);
                this.currentUnit.setSingleton(this.singleton);
                OrderedProperties properties = this.propertiesHandler == null ? new OrderedProperties(0) : this.propertiesHandler.getProperties();
                String updateFrom = null;
                VersionRange updateRange = null;
                for (Map.Entry e : properties.entrySet()) {
                    String key = (String)e.getKey();
                    String value = (String)e.getValue();
                    if (key.equals("equinox.p2.update.from")) {
                        updateFrom = value;
                        continue;
                    }
                    if (key.equals("equinox.p2.update.range")) {
                        updateRange = new VersionRange(value);
                        continue;
                    }
                    this.currentUnit.setProperty(key, value);
                }
                if (updateFrom != null && updateRange != null) {
                    this.currentUnit.setUpdateDescriptor(MetadataFactory.createUpdateDescriptor(updateFrom, updateRange, (int)0, null));
                }
                if (this.licensesHandler != null) {
                    this.currentUnit.setLicenses(this.licensesHandler.getLicenses());
                }
                if (this.copyrightHandler != null) {
                    ICopyright copyright = this.copyrightHandler.getCopyright();
                    this.currentUnit.setCopyright(copyright);
                }
                IProvidedCapability[] providedCapabilities = this.providedCapabilitiesHandler == null ? new IProvidedCapability[]{} : this.providedCapabilitiesHandler.getProvidedCapabilities();
                this.currentUnit.setCapabilities(providedCapabilities);
                IRequirement[] requiredCapabilities = this.requiredCapabilitiesHandler == null ? new IRequirement[]{} : this.requiredCapabilitiesHandler.getRequiredCapabilities();
                this.currentUnit.setRequirements(requiredCapabilities);
                IRequirement[] metaRequiredCapabilities = this.metaRequiredCapabilitiesHandler == null ? new IRequirement[]{} : this.metaRequiredCapabilitiesHandler.getMetaRequiredCapabilities();
                this.currentUnit.setMetaRequirements(metaRequiredCapabilities);
                if (this.filterHandler != null) {
                    this.currentUnit.setFilter(this.filterHandler.getText());
                }
                IArtifactKey[] artifacts = this.artifactsHandler == null ? new IArtifactKey[]{} : this.artifactsHandler.getArtifactKeys();
                this.currentUnit.setArtifacts(artifacts);
                if (this.touchpointTypeHandler != null) {
                    this.currentUnit.setTouchpointType(this.touchpointTypeHandler.getTouchpointType());
                }
                ITouchpointData[] touchpointData = this.touchpointDataHandler == null ? new ITouchpointData[]{} : this.touchpointDataHandler.getTouchpointData();
                int i = 0;
                while (i < touchpointData.length) {
                    this.currentUnit.addTouchpointData(touchpointData[i]);
                    ++i;
                }
                if (this.updateDescriptorHandler != null) {
                    this.currentUnit.setUpdateDescriptor(this.updateDescriptorHandler.getUpdateDescriptor());
                }
                this.units.add(this.currentUnit);
            }
        }
    }

    protected class InstallableUnitsHandler
    extends AbstractMetadataHandler {
        private ArrayList<MetadataFactory.InstallableUnitDescription> units;

        public InstallableUnitsHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super((ContentHandler)parentHandler, "units");
            this.units = new ArrayList(this.getOptionalSize(attributes, 4));
        }

        public IInstallableUnit[] getUnits() {
            int size = this.units.size();
            IInstallableUnit[] result = new IInstallableUnit[size];
            int i = 0;
            Iterator<MetadataFactory.InstallableUnitDescription> iterator = this.units.iterator();
            while (iterator.hasNext()) {
                MetadataFactory.InstallableUnitDescription desc = iterator.next();
                result[i++] = MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)desc);
            }
            return result;
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("unit")) {
                new InstallableUnitHandler(this, attributes, this.units);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class LicenseHandler
    extends XMLParser.TextHandler {
        URI location;
        private final List<ILicense> licenses;

        public LicenseHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, List<ILicense> licenses) {
            super((XMLParser)MetadataParser.this, parentHandler, "license");
            this.location = null;
            this.location = this.parseURIAttribute(attributes, false);
            this.licenses = licenses;
        }

        protected void finished() {
            if (MetadataParser.this.isValidXML()) {
                this.licenses.add(MetadataFactory.createLicense((URI)this.location, (String)this.getText()));
            }
        }
    }

    protected class LicensesHandler
    extends XMLParser.AbstractHandler {
        private List<ILicense> licenses;

        public LicensesHandler(ContentHandler parentHandler, Attributes attributes) {
            super((XMLParser)MetadataParser.this, parentHandler, "licenses");
            String size = this.parseOptionalAttribute(attributes, "size");
            this.licenses = size != null ? new ArrayList(new Integer(size)) : new ArrayList(2);
        }

        public ILicense[] getLicenses() {
            if (this.licenses.size() == 0) {
                return NO_LICENSES;
            }
            return this.licenses.toArray(new ILicense[this.licenses.size()]);
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("license")) {
                new LicenseHandler(this, attributes, this.licenses);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    protected class LifeCycleHandler
    extends XMLParser.AbstractHandler {
        private List<IRequirement> lifeCycleRequirement;

        public LifeCycleHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super((XMLParser)MetadataParser.this, (ContentHandler)parentHandler, "lifeCycle");
            this.lifeCycleRequirement = new ArrayList<IRequirement>(1);
        }

        public IRequirement getLifeCycleRequirement() {
            if (this.lifeCycleRequirement.size() == 0) {
                return null;
            }
            return this.lifeCycleRequirement.get(0);
        }

        public void startElement(String name, Attributes attributes) {
            if ("required".equals(name)) {
                new RequirementHandler(this, attributes, this.lifeCycleRequirement);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    protected class MetaRequiredCapabilitiesHandler
    extends AbstractMetadataHandler {
        private List<IRequirement> requiredCapabilities;

        public MetaRequiredCapabilitiesHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super((ContentHandler)parentHandler, "metaRequirements");
            this.requiredCapabilities = new ArrayList<IRequirement>(this.getOptionalSize(attributes, 4));
        }

        public IRequirement[] getMetaRequiredCapabilities() {
            return this.requiredCapabilities.toArray(new IRequirement[this.requiredCapabilities.size()]);
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("required")) {
                new RequirementHandler(this, attributes, this.requiredCapabilities);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    protected class ProvidedCapabilitiesHandler
    extends AbstractMetadataHandler {
        private List<IProvidedCapability> providedCapabilities;

        public ProvidedCapabilitiesHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super((ContentHandler)parentHandler, "provides");
            this.providedCapabilities = new ArrayList<IProvidedCapability>(this.getOptionalSize(attributes, 4));
        }

        public IProvidedCapability[] getProvidedCapabilities() {
            return this.providedCapabilities.toArray(new IProvidedCapability[this.providedCapabilities.size()]);
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("provided")) {
                new ProvidedCapabilityHandler(this, attributes, this.providedCapabilities);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class ProvidedCapabilityHandler
    extends XMLParser.AbstractHandler {
        public ProvidedCapabilityHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, List<IProvidedCapability> capabilities) {
            super((XMLParser)MetadataParser.this, (ContentHandler)parentHandler, "provided");
            String[] values = this.parseRequiredAttributes(attributes, REQUIRED_PROVIDED_CAPABILITY_ATTRIBUTES);
            Version version = MetadataParser.this.checkVersion("provided", "version", values[2]);
            capabilities.add(MetadataFactory.createProvidedCapability((String)values[0], (String)values[1], (Version)version));
        }

        public void startElement(String name, Attributes attributes) {
            this.invalidElement(name, attributes);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class RepositoryReferenceHandler
    extends XMLParser.AbstractHandler {
        private final String[] required;

        public RepositoryReferenceHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, Set<IRepositoryReference> references) {
            super((XMLParser)MetadataParser.this, (ContentHandler)parentHandler, "repository");
            this.required = new String[]{"type", "options"};
            String[] values = this.parseRequiredAttributes(attributes, this.required);
            String name = this.parseOptionalAttribute(attributes, "name");
            int type = MetadataParser.this.checkInteger(this.elementHandled, "type", values[0]);
            int options = MetadataParser.this.checkInteger(this.elementHandled, "options", values[1]);
            URI location = this.parseURIAttribute(attributes, true);
            if (location != null) {
                references.add((IRepositoryReference)new RepositoryReference(location, name, type, options));
            }
        }

        public void startElement(String name, Attributes attributes) {
            this.invalidElement(name, attributes);
        }
    }

    protected class RepositoryReferencesHandler
    extends AbstractMetadataHandler {
        private HashSet<IRepositoryReference> references;

        public RepositoryReferencesHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super((ContentHandler)parentHandler, "references");
            this.references = new HashSet(this.getOptionalSize(attributes, 4));
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("repository")) {
                new RepositoryReferenceHandler(this, attributes, this.references);
            } else {
                this.invalidElement(name, attributes);
            }
        }

        public IRepositoryReference[] getReferences() {
            return this.references.toArray(new IRepositoryReference[this.references.size()]);
        }
    }

    protected class RequiredCapabilitiesHandler
    extends AbstractMetadataHandler {
        private List<IRequirement> requiredCapabilities;

        public RequiredCapabilitiesHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super((ContentHandler)parentHandler, "requires");
            this.requiredCapabilities = new ArrayList<IRequirement>(this.getOptionalSize(attributes, 4));
        }

        public IRequirement[] getRequiredCapabilities() {
            return this.requiredCapabilities.toArray(new IRequirement[this.requiredCapabilities.size()]);
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("required")) {
                new RequirementHandler(this, attributes, this.requiredCapabilities);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class RequirementChangeEltHandler
    extends XMLParser.AbstractHandler {
        private List<IRequirement> requirement;

        public RequirementChangeEltHandler(XMLParser.AbstractHandler parentHandler, String parentId, Attributes attributes, List<IRequirement> from) {
            super((XMLParser)MetadataParser.this, (ContentHandler)parentHandler, parentId);
            this.requirement = from;
        }

        public void startElement(String name, Attributes attributes) {
            if ("required".equals(name)) {
                new RequirementHandler(this, attributes, this.requirement);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class RequirementChangeHandler
    extends XMLParser.AbstractHandler {
        private List<IRequirement> from;
        private List<IRequirement> to;
        private List<IRequirementChange> requirementChanges;

        public RequirementChangeHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, List<IRequirementChange> requirementChanges) {
            super((XMLParser)MetadataParser.this, (ContentHandler)parentHandler, "change");
            this.from = new ArrayList<IRequirement>(1);
            this.to = new ArrayList<IRequirement>(1);
            this.requirementChanges = requirementChanges;
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("from")) {
                new RequirementChangeEltHandler(this, "from", attributes, this.from);
                return;
            }
            if (name.equals("to")) {
                new RequirementChangeEltHandler(this, "to", attributes, this.to);
                return;
            }
            this.invalidElement(name, attributes);
        }

        protected void finished() {
            this.requirementChanges.add(MetadataFactory.createRequirementChange((IRequirement)(this.from.size() == 0 ? null : this.from.get(0)), this.to.size() == 0 ? null : this.to.get(0)));
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class RequirementHandler
    extends XMLParser.AbstractHandler {
        private List<IRequirement> capabilities;
        private String match;
        private String matchParams;
        private String namespace;
        private String name;
        private VersionRange range;
        private int min;
        private int max;
        private boolean greedy;
        private XMLParser.TextHandler filterHandler;
        private XMLParser.TextHandler descriptionHandler;

        public RequirementHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, List<IRequirement> capabilities) {
            super((XMLParser)MetadataParser.this, (ContentHandler)parentHandler, "required");
            this.filterHandler = null;
            this.descriptionHandler = null;
            this.capabilities = capabilities;
            if (attributes.getIndex("namespace") >= 0) {
                String[] values = this.parseAttributes(attributes, REQIURED_CAPABILITY_ATTRIBUTES, OPTIONAL_CAPABILITY_ATTRIBUTES);
                this.namespace = values[0];
                this.name = values[1];
                this.range = MetadataParser.this.checkVersionRange("required", "range", values[2]);
                boolean isOptional = MetadataParser.this.checkBoolean("required", "optional", values[3], false);
                this.min = isOptional ? 0 : 1;
                boolean isMultiple = MetadataParser.this.checkBoolean("required", "multiple", values[4], false);
                this.max = isMultiple ? Integer.MAX_VALUE : 1;
                this.greedy = MetadataParser.this.checkBoolean("required", "greedy", values[5], true);
            } else {
                String[] values = this.parseAttributes(attributes, REQIUREMENT_ATTRIBUTES, OPTIONAL_REQUIREMENT_ATTRIBUTES);
                this.match = values[0];
                this.matchParams = values[1];
                this.min = values[2] == null ? 1 : MetadataParser.this.checkInteger("required", "min", values[2]);
                this.max = values[3] == null ? 1 : MetadataParser.this.checkInteger("required", "max", values[3]);
                this.greedy = MetadataParser.this.checkBoolean("required", "greedy", values[4], true);
            }
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("filter")) {
                this.filterHandler = new XMLParser.TextHandler((XMLParser)MetadataParser.this, (XMLParser.AbstractHandler)this, "filter", attributes);
            } else if (name.equals("description")) {
                this.descriptionHandler = new XMLParser.TextHandler((XMLParser)MetadataParser.this, (XMLParser.AbstractHandler)this, "description", attributes);
            } else {
                this.invalidElement(name, attributes);
            }
        }

        protected void finished() {
            IRequirement requirement;
            String description;
            IMatchExpression filter;
            block6: {
                if (!MetadataParser.this.isValidXML()) {
                    return;
                }
                filter = null;
                if (this.filterHandler != null) {
                    try {
                        filter = InstallableUnit.parseFilter((String)this.filterHandler.getText());
                    }
                    catch (ExpressionParseException e) {
                        if (this.removeWhiteSpace(this.filterHandler.getText()).equals("(&(|)(|)(|))")) break block6;
                        throw e;
                    }
                }
            }
            String string = description = this.descriptionHandler == null ? null : this.descriptionHandler.getText();
            if (this.match != null) {
                IMatchExpression<IInstallableUnit> matchExpr = MetadataParser.createMatchExpression(this.match, this.matchParams);
                requirement = MetadataFactory.createRequirement(matchExpr, (IMatchExpression)filter, (int)this.min, (int)this.max, (boolean)this.greedy, (String)description);
            } else {
                requirement = MetadataFactory.createRequirement((String)this.namespace, (String)this.name, (VersionRange)this.range, (IMatchExpression)filter, (int)this.min, (int)this.max, (boolean)this.greedy, (String)description);
            }
            this.capabilities.add(requirement);
        }

        private String removeWhiteSpace(String s) {
            if (s == null) {
                return "";
            }
            StringBuffer builder = new StringBuffer();
            int i = 0;
            while (i < s.length()) {
                if (s.charAt(i) != ' ') {
                    builder.append(s.charAt(i));
                }
                ++i;
            }
            return builder.toString();
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class RequirementsChangeHandler
    extends AbstractMetadataHandler {
        private List<IRequirementChange> requirementChanges;

        public RequirementsChangeHandler(InstallableUnitHandler parentHandler, Attributes attributes) {
            super((ContentHandler)((Object)parentHandler), "changes");
            this.requirementChanges = new ArrayList<IRequirementChange>(this.getOptionalSize(attributes, 4));
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("change")) {
                new RequirementChangeHandler(this, attributes, this.requirementChanges);
            } else {
                this.invalidElement(name, attributes);
            }
        }

        public List<IRequirementChange> getRequirementChanges() {
            return this.requirementChanges;
        }
    }

    protected class TouchpointDataHandler
    extends XMLParser.AbstractHandler {
        ITouchpointData touchpointData;
        List<TouchpointInstructionsHandler> data;

        public TouchpointDataHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super((XMLParser)MetadataParser.this, (ContentHandler)parentHandler, "touchpointData");
            this.touchpointData = null;
            this.data = null;
            String size = this.parseOptionalAttribute(attributes, "size");
            this.data = size != null ? new ArrayList(new Integer(size)) : new ArrayList(4);
        }

        public ITouchpointData[] getTouchpointData() {
            ITouchpointData[] result = new ITouchpointData[this.data.size()];
            int i = 0;
            while (i < result.length) {
                result[i] = this.data.get(i).getTouchpointData();
                ++i;
            }
            return result;
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("instructions")) {
                this.data.add(new TouchpointInstructionsHandler(this, attributes, this.data));
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class TouchpointInstructionHandler
    extends XMLParser.TextHandler {
        private final String[] required;
        private final String[] optional;
        Map<String, ITouchpointInstruction> instructions;
        String key;
        String qualifier;

        public TouchpointInstructionHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, Map<String, ITouchpointInstruction> instructions) {
            super((XMLParser)MetadataParser.this, parentHandler, "instruction");
            this.required = new String[]{"key"};
            this.optional = new String[]{"import"};
            this.instructions = null;
            this.key = null;
            this.qualifier = null;
            String[] values = this.parseAttributes(attributes, this.required, this.optional);
            this.key = values[0];
            this.qualifier = values[1];
            this.instructions = instructions;
        }

        protected void finished() {
            if (MetadataParser.this.isValidXML() && this.key != null) {
                this.instructions.put(this.key, MetadataFactory.createTouchpointInstruction((String)this.getText(), (String)this.qualifier));
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class TouchpointInstructionsHandler
    extends XMLParser.AbstractHandler {
        Map<String, ITouchpointInstruction> instructions;

        public TouchpointInstructionsHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, List<TouchpointInstructionsHandler> data) {
            super((XMLParser)MetadataParser.this, (ContentHandler)parentHandler, "instructions");
            this.instructions = null;
            String size = this.parseOptionalAttribute(attributes, "size");
            this.instructions = size != null ? new LinkedHashMap(new Integer(size)) : new LinkedHashMap(4);
        }

        public ITouchpointData getTouchpointData() {
            return MetadataFactory.createTouchpointData(this.instructions);
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("instruction")) {
                new TouchpointInstructionHandler(this, attributes, this.instructions);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    protected class TouchpointTypeHandler
    extends XMLParser.AbstractHandler {
        private final String[] required;
        ITouchpointType touchpointType;

        public TouchpointTypeHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super((XMLParser)MetadataParser.this, (ContentHandler)parentHandler, "touchpoint");
            this.required = new String[]{"id", "version"};
            this.touchpointType = null;
            String[] values = this.parseRequiredAttributes(attributes, this.required);
            Version version = MetadataParser.this.checkVersion("touchpoint", "version", values[1]);
            this.touchpointType = MetadataFactory.createTouchpointType((String)values[0], (Version)version);
        }

        public ITouchpointType getTouchpointType() {
            return this.touchpointType;
        }

        public void startElement(String name, Attributes attributes) {
            this.invalidElement(name, attributes);
        }
    }

    protected class UpdateDescriptorHandler
    extends XMLParser.TextHandler {
        private final String[] requiredSimple;
        private final String[] optionalSimple;
        private final String[] requiredComplex;
        private final String[] optionalComplex;
        private IUpdateDescriptor descriptor;

        public UpdateDescriptorHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            int severity;
            String description;
            int severityIdx;
            String[] values;
            boolean simple;
            super((XMLParser)MetadataParser.this, parentHandler, "unit");
            this.requiredSimple = new String[]{"id", "range"};
            this.optionalSimple = new String[]{"severity", "description"};
            this.requiredComplex = new String[]{"match"};
            this.optionalComplex = new String[]{"severity", "description", "matchParameters"};
            boolean bl = simple = attributes.getIndex("id") >= 0;
            if (simple) {
                values = this.parseAttributes(attributes, this.requiredSimple, this.optionalSimple);
                severityIdx = 2;
                description = values[3];
            } else {
                values = this.parseAttributes(attributes, this.requiredComplex, this.optionalComplex);
                severityIdx = 1;
                description = values[2];
            }
            try {
                severity = new Integer(values[severityIdx]);
            }
            catch (NumberFormatException numberFormatException) {
                MetadataParser.this.invalidAttributeValue("update", "severity", values[severityIdx]);
                severity = 0;
            }
            URI location = this.parseURIAttribute(attributes, false);
            if (simple) {
                VersionRange range = MetadataParser.this.checkVersionRange("required", "range", values[1]);
                this.descriptor = MetadataFactory.createUpdateDescriptor((String)values[0], (VersionRange)range, (int)severity, (String)description, (URI)location);
            } else {
                IMatchExpression<IInstallableUnit> r = MetadataParser.createMatchExpression(values[0], values[3]);
                this.descriptor = MetadataFactory.createUpdateDescriptor(Collections.singleton(r), (int)severity, (String)description, (URI)location);
            }
        }

        public IUpdateDescriptor getUpdateDescriptor() {
            return this.descriptor;
        }
    }
}

