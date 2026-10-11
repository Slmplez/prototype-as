/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.update.internal.configurator;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.StringTokenizer;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.osgi.util.NLS;
import org.eclipse.update.internal.configurator.Configuration;
import org.eclipse.update.internal.configurator.FeatureEntry;
import org.eclipse.update.internal.configurator.IConfigurationConstants;
import org.eclipse.update.internal.configurator.Messages;
import org.eclipse.update.internal.configurator.PlatformConfiguration;
import org.eclipse.update.internal.configurator.SiteEntry;
import org.eclipse.update.internal.configurator.SitePolicy;
import org.eclipse.update.internal.configurator.Utils;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class ConfigurationParser
extends DefaultHandler
implements IConfigurationConstants {
    private static final String URL_PROPERTY = "org.eclipse.update.resolution_url";
    private static final String EMPTY_STRING = "";
    private static final SAXParserFactory parserFactory = SAXParserFactory.newInstance();
    private SAXParser parser;
    private URL currentSiteURL;
    private Configuration config;
    private URL configURL;
    private InputStream input;
    private URL installLocation;

    public ConfigurationParser() throws InvocationTargetException {
        try {
            parserFactory.setNamespaceAware(true);
            this.parser = parserFactory.newSAXParser();
        }
        catch (ParserConfigurationException e) {
            Utils.log(Utils.newStatus("ConfigurationParser", e));
            throw new InvocationTargetException(e);
        }
        catch (SAXException e) {
            Utils.log(Utils.newStatus("ConfigurationParser", e));
            throw new InvocationTargetException(e);
        }
    }

    public Configuration parse(URL url, URL installLocation) throws Exception {
        Utils.debug("Start parsing Configuration:" + url);
        long lastModified = 0L;
        try {
            this.configURL = url;
            this.installLocation = installLocation;
            if ("file".equals(url.getProtocol())) {
                File inputFile = URIUtil.toFile((URI)URIUtil.toURI((URL)url));
                if (!inputFile.exists() || !inputFile.canRead()) {
                    return null;
                }
                lastModified = inputFile.lastModified();
                this.input = new FileInputStream(inputFile);
            } else {
                this.input = url.openStream();
            }
            this.parser.parse(new InputSource(this.input), (DefaultHandler)this);
            Configuration configuration = this.config;
            return configuration;
        }
        catch (Exception e) {
            Utils.log(Utils.newStatus("ConfigurationParser.parse() error:", e));
            throw e;
        }
        finally {
            if (this.config != null) {
                this.config.setLastModified(lastModified);
            }
            try {
                if (this.input != null) {
                    this.input.close();
                    this.input = null;
                }
            }
            catch (IOException e1) {
                Utils.log(e1.getLocalizedMessage());
            }
        }
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        Utils.debug("Start Element: uri:" + uri + " local Name:" + localName + " qName:" + qName);
        try {
            String tag = localName.trim();
            if (tag.equalsIgnoreCase("config")) {
                this.processConfig(attributes);
                return;
            }
            if (tag.equalsIgnoreCase("site")) {
                this.processSite(attributes);
                return;
            }
            if (tag.equalsIgnoreCase("feature")) {
                this.processFeature(attributes);
                return;
            }
        }
        catch (MalformedURLException e) {
            throw new SAXException(NLS.bind((String)Messages.InstalledSiteParser_UnableToCreateURL, (Object[])new String[]{e.getMessage()}), e);
        }
        catch (CoreException e) {
            throw new SAXException(NLS.bind((String)Messages.InstalledSiteParser_ErrorParsingFile, (Object[])new String[]{e.toString()}), (Exception)((Object)e));
        }
    }

    private void processSite(Attributes attributes) throws MalformedURLException, CoreException {
        int policyType;
        if (this.config == null) {
            return;
        }
        this.currentSiteURL = null;
        String urlString = attributes.getValue("url");
        if (urlString == null) {
            return;
        }
        URL url = null;
        try {
            url = new URL(urlString);
        }
        catch (MalformedURLException malformedURLException) {
            url = new URL(PlatformConfiguration.getInstallURL(), urlString);
            return;
        }
        String property = System.getProperty(URL_PROPERTY, EMPTY_STRING);
        URL root = property == null || property.length() == 0 ? Utils.getInstallURL() : new URL(property);
        url = Utils.makeAbsolute(root, url);
        if (!this.isValidSite(url)) {
            return;
        }
        this.currentSiteURL = url;
        String[] policyList = null;
        String typeString = attributes.getValue("policy");
        if (typeString == null) {
            policyType = PlatformConfiguration.getDefaultPolicy();
            policyList = DEFAULT_POLICY_LIST;
        } else {
            int i = 0;
            while (i < CFG_POLICY_TYPE.length) {
                if (typeString.equals(CFG_POLICY_TYPE[i])) break;
                ++i;
            }
            if (i >= CFG_POLICY_TYPE.length) {
                policyType = PlatformConfiguration.getDefaultPolicy();
                policyList = DEFAULT_POLICY_LIST;
            } else {
                policyType = i;
                String pluginList = attributes.getValue("list");
                if (pluginList != null) {
                    StringTokenizer st = new StringTokenizer(pluginList, ",");
                    policyList = new String[st.countTokens()];
                    i = 0;
                    while (i < policyList.length) {
                        policyList[i] = st.nextToken();
                        ++i;
                    }
                }
            }
        }
        SitePolicy sp = new SitePolicy(policyType, policyList);
        SiteEntry site = new SiteEntry(url, sp);
        String flag = attributes.getValue("updateable");
        if (flag != null) {
            if (flag.equals("true")) {
                site.setUpdateable(true);
            } else {
                site.setUpdateable(false);
            }
        }
        if ((flag = attributes.getValue("enabled")) != null && flag.equals("false")) {
            site.setEnabled(false);
        } else {
            site.setEnabled(true);
        }
        String linkname = attributes.getValue("linkfile");
        if (linkname != null && !linkname.equals(EMPTY_STRING)) {
            site.setLinkFileName(linkname.replace('/', File.separatorChar));
        }
        Utils.debug("End process config site url:" + urlString + " policy:" + typeString + " updatable:" + flag);
        this.currentSiteURL = site.getURL();
        this.config.addSiteEntry(this.currentSiteURL.toExternalForm(), site);
    }

    private void processFeature(Attributes attributes) throws MalformedURLException, CoreException {
        String pluginIdentifier;
        if (this.currentSiteURL == null) {
            return;
        }
        String id = attributes.getValue("id");
        if (id == null) {
            return;
        }
        String version = attributes.getValue("version");
        String pluginVersion = attributes.getValue("plugin-version");
        if (pluginVersion == null || pluginVersion.trim().length() == 0) {
            pluginVersion = version;
        }
        if ((pluginIdentifier = attributes.getValue("plugin-identifier")) != null && pluginIdentifier.trim().length() == 0) {
            pluginIdentifier = null;
        }
        String application = attributes.getValue("application");
        String locations = attributes.getValue("root");
        StringTokenizer st = locations != null ? new StringTokenizer(locations, ",") : new StringTokenizer(EMPTY_STRING);
        ArrayList<URL> rootList = new ArrayList<URL>(st.countTokens());
        while (st.hasMoreTokens()) {
            try {
                URL rootEntry = new URL(st.nextToken());
                rootList.add(rootEntry);
            }
            catch (MalformedURLException malformedURLException) {}
        }
        URL[] roots = rootList.toArray(new URL[rootList.size()]);
        boolean primary = false;
        String flag = attributes.getValue("primary");
        if (flag != null && flag.equals("true")) {
            primary = true;
        }
        FeatureEntry featureEntry = new FeatureEntry(id, version, pluginIdentifier, pluginVersion, primary, application, roots);
        String url = attributes.getValue("url");
        if (url != null && url.trim().length() > 0) {
            featureEntry.setURL(url);
        }
        SiteEntry site = this.config.getSiteEntry(this.currentSiteURL.toExternalForm());
        site.addFeatureEntry(featureEntry);
    }

    private void processConfig(Attributes attributes) {
        String flag;
        String date = attributes.getValue("date");
        if (date == null || date.trim().length() == 0) {
            this.config = new Configuration();
        } else {
            long time = 0L;
            try {
                time = Long.parseLong(date);
                this.config = new Configuration(new Date(time));
            }
            catch (NumberFormatException numberFormatException) {
                time = new Date().getTime();
                Utils.log(NLS.bind((String)Messages.InstalledSiteParser_date, (Object[])new String[]{date}));
                this.config = new Configuration();
            }
        }
        this.config.setURL(this.configURL);
        this.config.setInstallLocation(this.installLocation);
        try {
            String sharedURLString = attributes.getValue("shared_ur");
            if (sharedURLString != null) {
                ConfigurationParser parser = new ConfigurationParser();
                URL sharedURL = Utils.makeAbsolute(this.installLocation, new URL(sharedURLString));
                Configuration sharedConfig = parser.parse(sharedURL, this.installLocation);
                if (sharedConfig == null) {
                    throw new Exception("Failed to parse shared configuration: " + sharedURL);
                }
                this.config.setLinkedConfig(sharedConfig);
            }
        }
        catch (Exception e) {
            Utils.log(Utils.newStatus(Messages.ConfigurationParser_cannotLoadSharedInstall, e));
        }
        if ((flag = attributes.getValue("transient")) != null) {
            this.config.setTransient(flag.equals("true"));
        }
        Utils.debug("End Processing Config Tag: date:" + attributes.getValue("date"));
    }

    private boolean isValidSite(URL url) {
        URL resolvedURL = url;
        if (url.getProtocol().equals("platform")) {
            try {
                if (url.getPath().startsWith("/config")) {
                    URL config_loc = new URL(this.configURL, "..");
                    resolvedURL = PlatformConfiguration.resolvePlatformURL(url, config_loc);
                } else {
                    resolvedURL = PlatformConfiguration.resolvePlatformURL(url, this.config.getInstallURL());
                }
            }
            catch (IOException iOException) {}
        }
        if (!PlatformConfiguration.supportsDetection(resolvedURL, this.config.getInstallURL())) {
            return false;
        }
        File siteRoot = new File(resolvedURL.getFile().replace('/', File.separatorChar));
        if (!siteRoot.exists()) {
            Utils.debug("Site " + resolvedURL + " does not exist ");
            return false;
        }
        return true;
    }

    public void endElement(String uri, String localName, String qName) throws SAXException {
        super.endElement(uri, localName, qName);
        Utils.debug("End Element: uri:" + uri + " local Name:" + localName + " qName:" + qName);
        try {
            String tag = localName.trim();
            if (tag.equalsIgnoreCase("config")) {
                SiteEntry[] sites = this.config.getSites();
                int i = 0;
                while (i < sites.length) {
                    sites[i].initialized();
                    ++i;
                }
                return;
            }
        }
        catch (Exception exception) {}
    }
}

