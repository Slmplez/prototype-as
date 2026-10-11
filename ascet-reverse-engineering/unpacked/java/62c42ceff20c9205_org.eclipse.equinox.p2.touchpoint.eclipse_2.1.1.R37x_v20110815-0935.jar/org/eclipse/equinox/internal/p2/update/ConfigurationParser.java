/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.update;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.StringTokenizer;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.update.Configuration;
import org.eclipse.equinox.internal.p2.update.ConfigurationCache;
import org.eclipse.equinox.internal.p2.update.ConfigurationConstants;
import org.eclipse.equinox.internal.p2.update.Feature;
import org.eclipse.equinox.internal.p2.update.Messages;
import org.eclipse.equinox.internal.p2.update.Site;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.osgi.util.NLS;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class ConfigurationParser
implements ConfigurationConstants {
    static final String PLATFORM_BASE = "platform:/base/";
    private URL osgiInstallArea;

    static Configuration parse(File file, URL osgiInstallArea) throws ProvisionException {
        return new ConfigurationParser(osgiInstallArea).internalParse(file);
    }

    private ConfigurationParser(URL osgiInstallArea) {
        this.osgiInstallArea = osgiInstallArea;
    }

    private Feature createFeature(Node node, Site site) {
        String locations;
        String flag;
        String application;
        String pluginVersion;
        String pluginIdentifier;
        String version;
        String url;
        Feature result = new Feature(site);
        String id = this.getAttribute(node, "id");
        if (id != null) {
            result.setId(id);
        }
        if ((url = this.getAttribute(node, "url")) != null) {
            result.setUrl(url);
        }
        if ((version = this.getAttribute(node, "version")) != null) {
            result.setVersion(version);
        }
        if ((pluginIdentifier = this.getAttribute(node, "plugin-identifier")) != null) {
            result.setPluginIdentifier(pluginIdentifier);
        }
        if ((pluginVersion = this.getAttribute(node, "plugin-version")) == null) {
            pluginVersion = version;
        }
        if (pluginVersion != null) {
            result.setPluginVersion(pluginVersion);
        }
        if ((application = this.getAttribute(node, "application")) != null) {
            result.setApplication(application);
        }
        if ((flag = this.getAttribute(node, "primary")) != null && Boolean.valueOf(flag).booleanValue()) {
            result.setPrimary(true);
        }
        if ((locations = this.getAttribute(node, "root")) != null) {
            StringTokenizer tokenizer = new StringTokenizer(locations, ",");
            ArrayList<URL> rootList = new ArrayList<URL>();
            while (tokenizer.hasMoreTokens()) {
                try {
                    URL rootEntry = new URL(tokenizer.nextToken().trim());
                    rootList.add(rootEntry);
                }
                catch (MalformedURLException malformedURLException) {}
            }
            URL[] roots = rootList.toArray(new URL[rootList.size()]);
            result.setRoots(roots);
        }
        return result;
    }

    private void createFeatures(Node node, Site site) {
        NodeList children = node.getChildNodes();
        int size = children.getLength();
        int i = 0;
        while (i < size) {
            Feature feature;
            Node child = children.item(i);
            if (child.getNodeType() == 1 && "feature".equalsIgnoreCase(child.getNodeName()) && (feature = this.createFeature(child, site)) != null) {
                site.addFeature(feature);
            }
            ++i;
        }
    }

    private Site createSite(Node node) {
        String list;
        String linkFile;
        String url;
        String updateable;
        String enabled;
        Site result = new Site();
        String policy = this.getAttribute(node, "policy");
        if (policy != null) {
            result.setPolicy(policy);
        }
        if ((enabled = this.getAttribute(node, "enabled")) != null) {
            result.setEnabled(Boolean.valueOf(enabled));
        }
        if ((updateable = this.getAttribute(node, "updateable")) != null) {
            result.setUpdateable(Boolean.valueOf(updateable));
        }
        if ((url = this.getAttribute(node, "url")) != null) {
            try {
                URI uri = URIUtil.fromString((String)url);
                URI osgiURI = this.osgiInstallArea != null ? URIUtil.toURI((URL)this.osgiInstallArea) : null;
                result.setUrl(this.getLocation(uri, osgiURI).toString());
            }
            catch (URISyntaxException uRISyntaxException) {
                result.setUrl(url);
            }
        }
        if ((linkFile = this.getAttribute(node, "linkfile")) != null) {
            result.setLinkFile(linkFile);
        }
        if ((list = this.getAttribute(node, "list")) != null) {
            StringTokenizer tokenizer = new StringTokenizer(list, ",");
            while (tokenizer.hasMoreTokens()) {
                result.addPlugin(tokenizer.nextToken());
            }
        }
        this.createFeatures(node, result);
        return result;
    }

    private URI getLocation(URI location, URI osgiArea) {
        if (osgiArea == null) {
            return location;
        }
        if (PLATFORM_BASE.equals(location.toString())) {
            return osgiArea;
        }
        return URIUtil.makeAbsolute((URI)location, (URI)osgiArea);
    }

    private String getAttribute(Node node, String name) {
        NamedNodeMap attributes = node.getAttributes();
        Node temp = attributes.getNamedItem(name);
        return temp == null ? null : temp.getNodeValue();
    }

    private Document load(InputStream input) throws ParserConfigurationException, IOException, SAXException {
        Document document;
        block7: {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            input = new BufferedInputStream(input);
            try {
                document = builder.parse(input);
                if (input == null) break block7;
            }
            catch (Throwable throwable) {
                if (input != null) {
                    try {
                        input.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            try {
                input.close();
            }
            catch (IOException iOException) {}
        }
        return document;
    }

    private Configuration internalParse(File file) throws ProvisionException {
        if (!file.exists()) {
            ConfigurationCache.put(file, null);
            return null;
        }
        Configuration result = ConfigurationCache.get(file);
        if (result != null) {
            return result;
        }
        try {
            BufferedInputStream input = new BufferedInputStream(new FileInputStream(file));
            Document document = this.load(input);
            result = this.process(document);
            ConfigurationCache.put(file, result);
            return result;
        }
        catch (IOException e) {
            throw new ProvisionException(NLS.bind((String)Messages.error_reading_config, (Object)file), (Throwable)e);
        }
        catch (ParserConfigurationException e) {
            throw new ProvisionException(Messages.error_parsing_config, (Throwable)e);
        }
        catch (SAXException e) {
            throw new ProvisionException(Messages.error_parsing_config, (Throwable)e);
        }
    }

    private Configuration process(Document document) {
        Node node = this.getConfigElement(document);
        if (node == null) {
            return null;
        }
        Configuration configuration = this.createConfiguration(node);
        NodeList children = node.getChildNodes();
        int size = children.getLength();
        int i = 0;
        while (i < size) {
            Site site;
            Node child = children.item(i);
            if (child.getNodeType() == 1 && "site".equalsIgnoreCase(child.getNodeName()) && (site = this.createSite(child)) != null) {
                configuration.add(site);
            }
            ++i;
        }
        return configuration;
    }

    private Configuration createConfiguration(Node node) {
        Configuration result = new Configuration();
        String value = this.getAttribute(node, "date");
        if (value != null) {
            result.setDate(value);
        }
        if ((value = this.getAttribute(node, "transient")) != null) {
            result.setTransient(Boolean.valueOf(value));
        }
        if ((value = this.getAttribute(node, "shared_ur")) != null) {
            result.setSharedUR(value);
        }
        if ((value = this.getAttribute(node, "version")) != null) {
            result.setVersion(value);
        }
        return result;
    }

    private Node getConfigElement(Document doc) {
        NodeList children = doc.getChildNodes();
        int size = children.getLength();
        int i = 0;
        while (i < size) {
            Node child = children.item(i);
            if (child.getNodeType() == 1 && "config".equalsIgnoreCase(child.getNodeName())) {
                return child;
            }
            ++i;
        }
        return null;
    }
}

