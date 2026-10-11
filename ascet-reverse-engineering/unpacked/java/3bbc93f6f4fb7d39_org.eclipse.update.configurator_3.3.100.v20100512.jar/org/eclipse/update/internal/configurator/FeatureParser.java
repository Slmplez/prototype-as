/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.update.internal.configurator;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.osgi.util.NLS;
import org.eclipse.update.internal.configurator.FeatureEntry;
import org.eclipse.update.internal.configurator.Messages;
import org.eclipse.update.internal.configurator.Utils;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class FeatureParser
extends DefaultHandler {
    private SAXParser parser;
    private FeatureEntry feature;
    private URL url;
    private static final SAXParserFactory parserFactory = SAXParserFactory.newInstance();

    public FeatureParser() {
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

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public FeatureEntry parse(URL featureURL) {
        this.feature = null;
        InputStream in = null;
        try {
            try {
                this.url = featureURL;
                in = featureURL.openStream();
                this.parser.parse(new InputSource(in), (DefaultHandler)this);
                return this.feature;
            }
            catch (SAXException sAXException) {
                if (in == null) return this.feature;
                try {
                    in.close();
                    return this.feature;
                }
                catch (IOException e1) {
                    Utils.log(e1.getLocalizedMessage());
                }
                return this.feature;
            }
            catch (IOException iOException) {
                if (in == null) return this.feature;
                try {
                    in.close();
                    return this.feature;
                }
                catch (IOException e1) {
                    Utils.log(e1.getLocalizedMessage());
                }
                return this.feature;
            }
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
        if ("feature".equals(localName)) {
            this.processFeature(attributes);
            throw new SAXException("");
        }
    }

    private void processFeature(Attributes attributes) {
        String id = attributes.getValue("id");
        String ver = attributes.getValue("version");
        if (id == null || id.trim().equals("") || ver == null || ver.trim().equals("")) {
            System.out.println(NLS.bind((String)Messages.FeatureParser_IdOrVersionInvalid, (Object[])new String[]{id, ver}));
        } else {
            String os = attributes.getValue("os");
            String ws = attributes.getValue("ws");
            String nl = attributes.getValue("nl");
            String arch = attributes.getValue("arch");
            if (!Utils.isValidEnvironment(os, ws, arch, nl)) {
                return;
            }
            String primary = attributes.getValue("primary");
            boolean isPrimary = "true".equals(primary);
            String application = attributes.getValue("application");
            String plugin = attributes.getValue("plugin");
            this.feature = new FeatureEntry(id, ver, plugin, "", isPrimary, application, null);
            if ("file".equals(this.url.getProtocol())) {
                File f = new File(this.url.getFile().replace('/', File.separatorChar));
                this.feature.setURL("features/" + f.getParentFile().getName() + "/");
            } else {
                this.feature.setURL(Utils.makeAbsolute(Utils.getInstallURL(), this.url).toExternalForm());
            }
            Utils.debug("End process DefaultFeature tag: id:" + id + " ver:" + ver + " url:" + this.feature.getURL());
        }
    }
}

