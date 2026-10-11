/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.publisher.eclipse;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.publisher.eclipse.Feature;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.publishing.Activator;
import org.eclipse.pde.internal.publishing.Messages;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FeatureManifestParser
extends DefaultHandler {
    private static final SAXParserFactory parserFactory = SAXParserFactory.newInstance();
    private SAXParser parser;
    protected Feature result;
    private URL url;
    private StringBuffer characters = null;
    private MultiStatus status = null;
    private boolean hasImports = false;
    private final List<String> messageKeys = new ArrayList<String>();

    public FeatureManifestParser() {
        this(true);
    }

    public FeatureManifestParser(boolean createParser) {
        if (!createParser) {
            return;
        }
        try {
            parserFactory.setNamespaceAware(true);
            this.parser = parserFactory.newSAXParser();
        }
        catch (ParserConfigurationException e) {
            System.out.println(e);
        }
        catch (SAXException e) {
            System.out.println(e);
        }
    }

    @Override
    public void characters(char[] ch, int start, int length) {
        if (this.characters == null) {
            return;
        }
        this.characters.append(ch, start, length);
    }

    protected Feature createFeature(String id, String version) {
        return new Feature(id, version);
    }

    @Override
    public void endElement(String uri, String localName, String qName) {
        if ("requires".equals(localName) && !this.hasImports) {
            this.error(Messages.feature_parse_emptyRequires);
        }
        if (this.characters == null) {
            return;
        }
        if ("description".equals(localName)) {
            this.result.setDescription(this.localize(this.characters.toString().trim()));
        } else if ("license".equals(localName)) {
            this.result.setLicense(this.localize(this.characters.toString().trim()));
        } else if ("copyright".equals(localName)) {
            this.result.setCopyright(this.localize(this.characters.toString().trim()));
        }
        this.characters = null;
    }

    private void error(String message) {
        if (this.status == null) {
            String msg = NLS.bind((String)Messages.exception_featureParse, (Object)this.url.toExternalForm());
            this.status = new MultiStatus(Activator.ID, 17, msg, null);
        }
        this.status.add((IStatus)new Status(4, Activator.ID, 17, message, null));
    }

    public MultiStatus getStatus() {
        return this.status;
    }

    public List<String> getMessageKeys() {
        return this.messageKeys;
    }

    public Feature getResult() {
        return this.result;
    }

    private String localize(String value) {
        if (value != null && value.startsWith("%")) {
            String key = value.substring(1);
            this.messageKeys.add(key);
        }
        return value;
    }

    public Feature parse(InputStream in, URL featureURL) throws SAXException, IOException {
        this.result = null;
        this.url = featureURL;
        this.parser.parse(new InputSource(in), (DefaultHandler)this);
        return this.result;
    }

    private void processCopyright(Attributes attributes) {
        this.result.setCopyrightURL(attributes.getValue("url"));
        this.characters = new StringBuffer();
    }

    private void processDescription(Attributes attributes) {
        this.result.setDescriptionURL(attributes.getValue("url"));
        this.characters = new StringBuffer();
    }

    private void processDiscoverySite(Attributes attributes) {
        if ("web".equals(attributes.getValue("type"))) {
            return;
        }
        this.result.addDiscoverySite(attributes.getValue("label"), attributes.getValue("url"));
    }

    protected void processFeature(Attributes attributes) {
        String id = attributes.getValue("id");
        String ver = attributes.getValue("version");
        if (id == null || id.trim().equals("") || ver == null || ver.trim().equals("")) {
            this.error(NLS.bind((String)Messages.feature_parse_invalidIdOrVersion, (Object[])new String[]{id, ver}));
        } else {
            this.result = this.createFeature(id, ver);
            String os = attributes.getValue("os");
            String ws = attributes.getValue("ws");
            String nl = attributes.getValue("nl");
            String arch = attributes.getValue("arch");
            this.result.setEnvironment(os, ws, arch, nl);
            this.result.setApplication(attributes.getValue("application"));
            this.result.setBrandingPlugin(attributes.getValue("plugin"));
            this.result.setExclusive(Boolean.valueOf(attributes.getValue("exclusive")));
            this.result.setPrimary(Boolean.valueOf(attributes.getValue("primary")));
            this.result.setColocationAffinity(attributes.getValue("colocation-affinity"));
            this.result.setProviderName(this.localize(attributes.getValue("provider-name")));
            this.result.setLabel(this.localize(attributes.getValue("label")));
            this.result.setImage(attributes.getValue("image"));
            this.result.setLicenseFeature(attributes.getValue("license-feature"));
            this.result.setLicenseFeatureVersion(attributes.getValue("license-feature-version"));
        }
    }

    private void processImport(Attributes attributes) {
        String id = attributes.getValue("feature");
        boolean isPlugin = false;
        if (id == null) {
            id = attributes.getValue("plugin");
            if (id == null) {
                throw new IllegalStateException();
            }
            isPlugin = true;
        }
        String versionStr = attributes.getValue("version");
        FeatureEntry entry = null;
        if ("versionRange".equals(attributes.getValue("match"))) {
            VersionRange versionRange = new VersionRange(versionStr);
            entry = FeatureEntry.createRequires(id, versionRange, attributes.getValue("match"), attributes.getValue("filter"), isPlugin);
        } else {
            entry = FeatureEntry.createRequires(id, versionStr, attributes.getValue("match"), attributes.getValue("filter"), isPlugin);
        }
        if (!isPlugin && "true".equalsIgnoreCase(attributes.getValue("patch"))) {
            entry.setPatch(true);
        }
        this.hasImports = true;
        this.result.addEntry(entry);
    }

    private void processIncludes(Attributes attributes) {
        String optional;
        FeatureEntry entry = new FeatureEntry(attributes.getValue("id"), attributes.getValue("version"), false);
        String unpack = attributes.getValue("unpack");
        if (unpack != null) {
            entry.setUnpack(Boolean.valueOf(unpack));
        }
        if ((optional = attributes.getValue("optional")) != null) {
            entry.setOptional(Boolean.valueOf(optional));
        }
        this.setEnvironment(attributes, entry);
        String filter = attributes.getValue("filter");
        if (filter != null) {
            entry.setFilter(filter);
        }
        this.result.addEntry(entry);
    }

    private void processInstallHandler(Attributes attributes) {
        this.result.setInstallHandler(attributes.getValue("handler"));
        this.result.setInstallHandlerLibrary(attributes.getValue("library"));
        this.result.setInstallHandlerURL(attributes.getValue("url"));
    }

    private void processLicense(Attributes attributes) {
        this.result.setLicenseURL(attributes.getValue("url"));
        this.characters = new StringBuffer();
    }

    private void processPlugin(Attributes attributes) {
        String id = attributes.getValue("id");
        String version = attributes.getValue("version");
        if (id == null || id.trim().equals("") || version == null || version.trim().equals("")) {
            this.error(NLS.bind((String)Messages.feature_parse_invalidIdOrVersion, (Object[])new String[]{id, version}));
        } else {
            String filter;
            String fragment;
            FeatureEntry plugin = new FeatureEntry(id, version, true);
            this.setEnvironment(attributes, plugin);
            String unpack = attributes.getValue("unpack");
            if (unpack != null) {
                plugin.setUnpack(Boolean.valueOf(unpack));
            }
            if ((fragment = attributes.getValue("fragment")) != null) {
                plugin.setFragment(Boolean.valueOf(fragment));
            }
            if ((filter = attributes.getValue("filter")) != null) {
                plugin.setFilter(filter);
            }
            this.result.addEntry(plugin);
        }
    }

    private void processUpdateSite(Attributes attributes) {
        this.result.setUpdateSiteLabel(attributes.getValue("label"));
        this.result.setUpdateSiteURL(attributes.getValue("url"));
    }

    private void setEnvironment(Attributes attributes, FeatureEntry entry) {
        String os = attributes.getValue("os");
        String ws = attributes.getValue("ws");
        String nl = attributes.getValue("nl");
        String arch = attributes.getValue("arch");
        entry.setEnvironment(os, ws, arch, nl);
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) {
        if ("plugin".equals(localName)) {
            this.processPlugin(attributes);
        } else if ("description".equals(localName)) {
            this.processDescription(attributes);
        } else if ("license".equals(localName)) {
            this.processLicense(attributes);
        } else if ("copyright".equals(localName)) {
            this.processCopyright(attributes);
        } else if ("feature".equals(localName)) {
            this.processFeature(attributes);
        } else if ("import".equals(localName)) {
            this.processImport(attributes);
        } else if ("includes".equals(localName)) {
            this.processIncludes(attributes);
        } else if ("install-handler".equals(localName)) {
            this.processInstallHandler(attributes);
        } else if ("update".equals(localName)) {
            this.processUpdateSite(attributes);
        } else if ("discovery".equals(localName)) {
            this.processDiscoverySite(attributes);
        }
    }
}

