/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.preferences.IPreferencesService
 *  org.osgi.framework.Bundle
 */
package org.eclipse.help.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.util.ProductPreferences;
import org.osgi.framework.Bundle;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class HelpData {
    private static final String ELEMENT_TOC_ORDER = "tocOrder";
    private static final String ELEMENT_HIDDEN = "hidden";
    private static final String ELEMENT_TOC = "toc";
    private static final String ELEMENT_CATEGORY = "category";
    private static final String ELEMENT_INDEX = "index";
    private static final String ATTRIBUTE_ID = "id";
    private static final String ELEMENT_OTHER_TOCS = "otherTocs";
    private static final String ATTRIBUTE_SORT = "sort";
    private static final String PLUGINS_ROOT_SLASH = "PLUGINS_ROOT/";
    private static HelpData productHelpData;
    private URL url;
    private List tocOrder;
    private Set hiddenTocs;
    private Set hiddenIndexes;
    private String sortMode;

    public static synchronized HelpData getProductHelpData() {
        if (productHelpData == null) {
            Bundle bundle;
            int nextSlash;
            String helpDataFile;
            String pluginId = null;
            IProduct product = Platform.getProduct();
            if (product != null) {
                pluginId = product.getDefiningBundle().getSymbolicName();
            }
            if ((helpDataFile = Platform.getPreferencesService().getString("org.eclipse.help", "HELP_DATA", "", null)).length() > 0 && helpDataFile.startsWith(PLUGINS_ROOT_SLASH) && (nextSlash = helpDataFile.indexOf(47, PLUGINS_ROOT_SLASH.length())) > 0) {
                pluginId = helpDataFile.substring(PLUGINS_ROOT_SLASH.length(), nextSlash);
                helpDataFile = helpDataFile.substring(nextSlash + 1);
            }
            if (helpDataFile.length() > 0 && pluginId != null && (bundle = Platform.getBundle((String)pluginId)) != null) {
                URL helpDataUrl = bundle.getEntry(helpDataFile);
                productHelpData = new HelpData(helpDataUrl);
            }
            if (productHelpData == null) {
                productHelpData = new HelpData(null);
            }
        }
        return productHelpData;
    }

    public static void clearProductHelpData() {
        productHelpData = null;
    }

    public HelpData(URL url) {
        this.url = url;
    }

    public synchronized List getTocOrder() {
        if (this.tocOrder == null) {
            this.loadHelpData();
        }
        return this.tocOrder;
    }

    public synchronized Set getHiddenTocs() {
        if (this.hiddenTocs == null) {
            this.loadHelpData();
        }
        return this.hiddenTocs;
    }

    public synchronized Set getHiddenIndexes() {
        if (this.hiddenIndexes == null) {
            this.loadHelpData();
        }
        return this.hiddenIndexes;
    }

    public synchronized boolean isSortOthers() {
        if (this.sortMode == null) {
            this.loadHelpData();
        }
        return "true".equals(this.sortMode);
    }

    public InputStream getHelpDataFile(String filePath) throws IOException {
        return Platform.getProduct().getDefiningBundle().getEntry(filePath).openStream();
    }

    private void loadHelpData() {
        this.tocOrder = new ArrayList();
        this.hiddenTocs = new HashSet();
        this.hiddenIndexes = new HashSet();
        this.sortMode = "true";
        if (this.url != null) {
            try {
                SAXParser parser = SAXParserFactory.newInstance().newSAXParser();
                InputStream in = this.url.openStream();
                parser.parse(in, (DefaultHandler)new Handler());
            }
            catch (Throwable t) {
                String msg = "Error loading help data file \"" + this.url + "\"";
                HelpPlugin.logError(msg, t);
            }
        } else {
            IPreferencesService preferencesService = Platform.getPreferencesService();
            String baseTocs = preferencesService.getString("org.eclipse.help", "baseTOCS", "", null);
            String ignoredTocs = preferencesService.getString("org.eclipse.help", "ignoredTOCS", "", null);
            String ignoredIndexes = preferencesService.getString("org.eclipse.help", "ignoredIndexes", "", null);
            this.tocOrder = ProductPreferences.tokenize(baseTocs);
            this.hiddenTocs.addAll(ProductPreferences.tokenize(ignoredTocs));
            this.hiddenIndexes.addAll(ProductPreferences.tokenize(ignoredIndexes));
        }
    }

    private class Handler
    extends DefaultHandler {
        private boolean inTocOrder;
        private boolean inHidden;

        private Handler() {
        }

        public void startElement(String uri, String localName, String name, Attributes attributes) throws SAXException {
            String sortAttribute;
            if (HelpData.ELEMENT_TOC_ORDER.equals(name)) {
                this.inTocOrder = true;
            } else if (HelpData.ELEMENT_HIDDEN.equals(name)) {
                this.inHidden = true;
            } else if (HelpData.ELEMENT_TOC.equals(name) || HelpData.ELEMENT_CATEGORY.equals(name)) {
                String id = attributes.getValue(HelpData.ATTRIBUTE_ID);
                if (id != null) {
                    if (this.inTocOrder) {
                        HelpData.this.tocOrder.add(id);
                    } else if (this.inHidden) {
                        HelpData.this.hiddenTocs.add(id);
                    }
                }
            } else if (HelpData.ELEMENT_INDEX.equals(name) && this.inHidden) {
                String id = attributes.getValue(HelpData.ATTRIBUTE_ID);
                if (id != null) {
                    HelpData.this.hiddenIndexes.add(id);
                }
            } else if (HelpData.ELEMENT_OTHER_TOCS.equals(name) && (sortAttribute = attributes.getValue(HelpData.ATTRIBUTE_SORT)) != null) {
                HelpData.this.sortMode = sortAttribute.toLowerCase();
            }
        }

        public void endElement(String uri, String localName, String name) throws SAXException {
            if (HelpData.ELEMENT_TOC_ORDER.equals(name)) {
                this.inTocOrder = false;
            } else if (HelpData.ELEMENT_HIDDEN.equals(name)) {
                this.inHidden = false;
            }
        }

        public InputSource resolveEntity(String publicId, String systemId) throws SAXException {
            return new InputSource(new StringReader(""));
        }
    }
}

