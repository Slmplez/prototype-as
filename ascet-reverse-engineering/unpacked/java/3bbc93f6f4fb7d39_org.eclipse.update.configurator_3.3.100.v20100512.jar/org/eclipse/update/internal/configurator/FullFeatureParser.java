/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.update.internal.configurator;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ResourceBundle;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.osgi.util.NLS;
import org.eclipse.update.internal.configurator.FeatureEntry;
import org.eclipse.update.internal.configurator.IConfigurationConstants;
import org.eclipse.update.internal.configurator.Messages;
import org.eclipse.update.internal.configurator.PluginEntry;
import org.eclipse.update.internal.configurator.Utils;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class FullFeatureParser
extends DefaultHandler
implements IConfigurationConstants {
    private SAXParser parser;
    private FeatureEntry feature;
    private URL url;
    private boolean isDescription;
    private StringBuffer description = new StringBuffer();
    private static final SAXParserFactory parserFactory = SAXParserFactory.newInstance();

    public FullFeatureParser(FeatureEntry feature) {
        this.feature = feature;
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

    public void parse() {
        InputStream in = null;
        try {
            if (this.feature.getSite() == null) {
                return;
            }
            try {
                this.url = new URL(this.feature.getSite().getResolvedURL(), String.valueOf(this.feature.getURL()) + "feature.xml");
                in = this.url.openStream();
                this.parser.parse(new InputSource(in), (DefaultHandler)this);
            }
            catch (SAXException sAXException) {
            }
            catch (IOException iOException) {}
        }
        finally {
            if (in != null) {
                try {
                    in.close();
                }
                catch (IOException e1) {
                    Utils.log(e1.getLocalizedMessage());
                }
            }
        }
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        Utils.debug("Start Element: uri:" + uri + " local Name:" + localName + " qName:" + qName);
        if ("plugin".equals(localName)) {
            this.processPlugin(attributes);
        } else if ("description".equals(localName)) {
            this.isDescription = true;
        } else if ("license".equals(localName)) {
            this.processLicense(attributes);
        }
    }

    private void processPlugin(Attributes attributes) {
        String id = attributes.getValue("id");
        String ver = attributes.getValue("version");
        if (id == null || id.trim().equals("") || ver == null || ver.trim().equals("")) {
            System.out.println(NLS.bind((String)Messages.FeatureParser_IdOrVersionInvalid, (Object[])new String[]{id, ver}));
        } else {
            String arch;
            String ws;
            String nl = attributes.getValue("nl");
            String os = attributes.getValue("os");
            if (!Utils.isValidEnvironment(os, ws = attributes.getValue("ws"), arch = attributes.getValue("arch"), nl)) {
                return;
            }
            PluginEntry plugin = new PluginEntry();
            plugin.setPluginIdentifier(id);
            plugin.setPluginVersion(ver);
            this.feature.addPlugin(plugin);
            Utils.debug("End process DefaultFeature tag: id:" + id + " ver:" + ver + " url:" + this.feature.getURL());
        }
    }

    private void processLicense(Attributes attributes) {
        this.feature.setLicenseURL(attributes.getValue("url"));
    }

    public void characters(char[] ch, int start, int length) throws SAXException {
        if (!this.isDescription) {
            return;
        }
        this.description.append(ch, start, length);
    }

    public void endElement(String uri, String localName, String qName) throws SAXException {
        if ("description".equals(localName)) {
            this.isDescription = false;
            String d = this.description.toString().trim();
            ResourceBundle bundle = this.feature.getResourceBundle();
            this.feature.setDescription(Utils.getResourceString(bundle, d));
        }
    }
}

