/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.update.internal.configurator;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.osgi.util.NLS;
import org.eclipse.update.internal.configurator.IConfigurationConstants;
import org.eclipse.update.internal.configurator.Messages;
import org.eclipse.update.internal.configurator.PluginEntry;
import org.eclipse.update.internal.configurator.Utils;
import org.eclipse.update.internal.configurator.VersionedIdentifier;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class PluginParser
extends DefaultHandler
implements IConfigurationConstants {
    private static final SAXParserFactory parserFactory = SAXParserFactory.newInstance();
    private SAXParser parser;
    private PluginEntry pluginEntry;
    private String location;

    public PluginParser() {
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

    public synchronized PluginEntry parse(File pluginFile) throws SAXException, IOException {
        PluginEntry pluginEntry;
        block7: {
            FileInputStream in = null;
            try {
                in = new FileInputStream(pluginFile);
                pluginEntry = this.parse(in, "plugins/" + pluginFile.getParentFile().getName() + "/");
                if (in == null) break block7;
            }
            catch (Throwable throwable) {
                if (in != null) {
                    try {
                        in.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            try {
                in.close();
            }
            catch (IOException iOException) {}
        }
        return pluginEntry;
    }

    public synchronized PluginEntry parse(InputStream in, String bundleUrl) throws SAXException, IOException {
        try {
            this.location = bundleUrl;
            this.pluginEntry = new PluginEntry();
            this.pluginEntry.setURL(bundleUrl);
            this.parser.parse(new InputSource(in), (DefaultHandler)this);
        }
        catch (ParseCompleteException parseCompleteException) {}
        return this.pluginEntry;
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        String tag = localName.trim();
        if (tag.equalsIgnoreCase("plugin")) {
            this.pluginEntry.isFragment(false);
            this.processPlugin(attributes);
            return;
        }
        if (tag.equalsIgnoreCase("fragment")) {
            this.pluginEntry.isFragment(true);
            this.processPlugin(attributes);
            return;
        }
    }

    private void processPlugin(Attributes attributes) throws ParseCompleteException {
        String id = attributes.getValue("id");
        String version = attributes.getValue("version");
        if (id == null || id.trim().length() == 0) {
            id = "_no_id_";
            Utils.log(NLS.bind((String)Messages.PluginParser_plugin_no_id, (Object[])new String[]{this.location}));
        }
        if (version == null || version.trim().length() == 0) {
            version = "0.0.0";
            Utils.log(NLS.bind((String)Messages.PluginParser_plugin_no_version, (Object[])new String[]{this.location}));
        }
        this.pluginEntry.setVersionedIdentifier(new VersionedIdentifier(id, version));
        throw new ParseCompleteException("");
    }

    private class ParseCompleteException
    extends SAXException {
        private static final long serialVersionUID = 1L;

        public ParseCompleteException(String arg0) {
            super(arg0);
        }
    }
}

