/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.osgi.framework.Bundle
 */
package org.eclipse.help.internal.util;

import com.ibm.icu.text.Collator;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.help.HelpSystem;
import org.eclipse.help.internal.HelpData;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.util.SequenceResolver;
import org.osgi.framework.Bundle;

public class ProductPreferences {
    private static Properties[] productPreferences;
    private static SequenceResolver orderResolver;
    private static Map preferencesToPluginIdMap;
    private static Map preferencesToProductIdMap;
    private static List primaryTocOrdering;
    private static List[] secondaryTocOrderings;
    private static final String PLUGINS_ROOT_SLASH = "PLUGINS_ROOT/";
    private static boolean rtl;
    private static boolean directionInitialized;

    static {
        directionInitialized = false;
    }

    public static List getTocOrder(List itemsToOrder, Map nameIdMap) {
        List primaryOrdering = ProductPreferences.getPrimaryTocOrdering();
        List[] secondaryOrdering = new List[]{};
        if (primaryOrdering == null || primaryOrdering.size() == 0) {
            secondaryOrdering = ProductPreferences.getSecondaryTocOrderings();
        }
        return ProductPreferences.getOrderedList(itemsToOrder, primaryOrdering, secondaryOrdering, nameIdMap);
    }

    public static List getPrimaryTocOrdering() {
        if (primaryTocOrdering == null) {
            String baseTOCS;
            String helpDataFile;
            IProduct product = Platform.getProduct();
            String pluginId = null;
            if (product != null) {
                pluginId = product.getDefiningBundle().getSymbolicName();
            }
            if ((primaryTocOrdering = ProductPreferences.getTocOrdering(pluginId, helpDataFile = Platform.getPreferencesService().getString("org.eclipse.help", "HELP_DATA", "", null), baseTOCS = Platform.getPreferencesService().getString("org.eclipse.help", "baseTOCS", "", null))) == null) {
                primaryTocOrdering = new ArrayList();
            }
        }
        return primaryTocOrdering;
    }

    public static List[] getSecondaryTocOrderings() {
        if (secondaryTocOrderings == null) {
            ArrayList<List> list = new ArrayList<List>();
            Properties[] productPreferences = ProductPreferences.getProductPreferences(false);
            int i = 0;
            while (i < productPreferences.length) {
                String baseTOCS;
                String helpDataFile;
                String pluginId = (String)preferencesToPluginIdMap.get(productPreferences[i]);
                List ordering = ProductPreferences.getTocOrdering(pluginId, helpDataFile = (String)productPreferences[i].get("org.eclipse.help/HELP_DATA"), baseTOCS = (String)productPreferences[i].get("org.eclipse.help/baseTOCS"));
                if (ordering != null) {
                    list.add(ordering);
                }
                ++i;
            }
            secondaryTocOrderings = list.toArray(new List[list.size()]);
        }
        return secondaryTocOrderings;
    }

    public static List getTocOrdering(String pluginId, String helpDataFile, String baseTOCS) {
        if (helpDataFile != null && helpDataFile.length() > 0) {
            int nextSlash;
            String helpDataPluginId = pluginId;
            String helpDataPath = helpDataFile;
            if (helpDataFile.startsWith(PLUGINS_ROOT_SLASH) && (nextSlash = helpDataFile.indexOf(47, PLUGINS_ROOT_SLASH.length())) > 0) {
                helpDataPluginId = helpDataFile.substring(PLUGINS_ROOT_SLASH.length(), nextSlash);
                helpDataPath = helpDataFile.substring(nextSlash + 1);
            }
            Bundle bundle = null;
            if (helpDataPluginId != null) {
                bundle = Platform.getBundle((String)helpDataPluginId);
            }
            if (bundle != null) {
                URL helpDataUrl = bundle.getEntry(helpDataPath);
                HelpData helpData = new HelpData(helpDataUrl);
                return helpData.getTocOrder();
            }
        } else if (baseTOCS != null) {
            return ProductPreferences.tokenize(baseTOCS);
        }
        return null;
    }

    public static boolean getBoolean(Plugin plugin, String key) {
        return Platform.getPreferencesService().getBoolean(plugin.getBundle().getSymbolicName(), key, false, null);
    }

    public static List getOrderedList(List items, List order) {
        return ProductPreferences.getOrderedList(items, order, null, null);
    }

    public static List getOrderedList(List items, List primary, List[] secondary, Map nameIdMap) {
        ArrayList result = new ArrayList();
        ArrayList set = new ArrayList(items);
        if (orderResolver == null) {
            orderResolver = new SequenceResolver();
        }
        List order = orderResolver.getSequence(primary, secondary);
        Iterator iter = order.iterator();
        while (iter.hasNext()) {
            Object obj = iter.next();
            if (!set.contains(obj)) continue;
            result.add(obj);
            set.remove(obj);
        }
        if (HelpData.getProductHelpData().isSortOthers() && nameIdMap != null) {
            ArrayList remaining = new ArrayList();
            remaining.addAll(set);
            ProductPreferences.sortByName(remaining, nameIdMap);
            result.addAll(remaining);
        } else {
            result.addAll(set);
        }
        return result;
    }

    private static void sortByName(List remaining, Map categorized) {
        Collections.sort(remaining, new NameComparator(categorized));
    }

    public static synchronized String getPluginId(Properties prefs) {
        return (String)preferencesToPluginIdMap.get(prefs);
    }

    public static synchronized String getProductId(Properties prefs) {
        return (String)preferencesToProductIdMap.get(prefs);
    }

    public static synchronized Properties[] getProductPreferences(boolean includeActiveProduct) {
        if (productPreferences == null) {
            String activeProductId = null;
            IProduct activeProduct = Platform.getProduct();
            if (activeProduct != null) {
                activeProductId = activeProduct.getId();
            }
            ArrayList<Properties> collection = new ArrayList<Properties>();
            IConfigurationElement[] elements = Platform.getExtensionRegistry().getConfigurationElementsFor("org.eclipse.core.runtime.products");
            int i = 0;
            while (i < elements.length) {
                if (elements[i].getName().equals("product")) {
                    String productId = elements[i].getDeclaringExtension().getUniqueIdentifier();
                    if (includeActiveProduct || activeProductId == null || !activeProductId.equals(productId)) {
                        String contributor = elements[i].getContributor().getName();
                        IConfigurationElement[] propertyElements = elements[i].getChildren("property");
                        int j = 0;
                        while (j < propertyElements.length) {
                            String value;
                            String name = propertyElements[j].getAttribute("name");
                            if (name != null && name.equals("preferenceCustomization") && (value = propertyElements[j].getAttribute("value")) != null) {
                                Properties properties = ProductPreferences.loadPropertiesFile(contributor, value);
                                if (properties != null) {
                                    collection.add(properties);
                                }
                                if (preferencesToPluginIdMap == null) {
                                    preferencesToPluginIdMap = new HashMap();
                                }
                                preferencesToPluginIdMap.put(properties, contributor);
                                if (preferencesToProductIdMap == null) {
                                    preferencesToProductIdMap = new HashMap();
                                }
                                preferencesToProductIdMap.put(properties, productId);
                            }
                            ++j;
                        }
                    }
                }
                ++i;
            }
            productPreferences = collection.toArray(new Properties[collection.size()]);
        }
        return productPreferences;
    }

    public static String getValue(String key, Properties primary, Properties[] secondary) {
        String value = null;
        if (primary != null) {
            value = primary.getProperty(key);
        }
        if (value == null) {
            int i = 0;
            while (i < secondary.length) {
                if (secondary[i] != primary && (value = secondary[i].getProperty(key)) != null) break;
                ++i;
            }
        }
        return value;
    }

    /*
     * Loose catch block
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Properties loadPropertiesFile(String bundleId, String path) {
        URL url;
        Bundle bundle = Platform.getBundle((String)bundleId);
        if (bundle == null || (url = bundle.getEntry(path)) == null) return null;
        InputStream in = null;
        in = url.openStream();
        Properties properties = new Properties();
        properties.load(in);
        Properties properties2 = properties;
        if (in == null) return properties2;
        try {
            in.close();
            return properties2;
        }
        catch (IOException iOException) {}
        return properties2;
        catch (IOException e) {
            try {
                HelpPlugin.logError("Error opening product's plugin customization file: " + bundleId + "/" + path, e);
                if (in == null) return null;
            }
            catch (Throwable throwable) {
                if (in == null) throw throwable;
                try {
                    in.close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                in.close();
                return null;
            }
            catch (IOException iOException) {}
            return null;
        }
    }

    public static List tokenize(String str) {
        if (str != null) {
            StringTokenizer tok = new StringTokenizer(str, " \n\r\t;,");
            ArrayList<String> list = new ArrayList<String>();
            while (tok.hasMoreElements()) {
                list.add(tok.nextToken());
            }
            return list;
        }
        return new ArrayList();
    }

    public int compare(Object o1, Object o2) {
        return 0;
    }

    public static void resetPrimaryTocOrdering() {
        primaryTocOrdering = null;
    }

    public static boolean isRTL() {
        if (!directionInitialized) {
            directionInitialized = true;
            rtl = ProductPreferences.initializeRTL();
        }
        return rtl;
    }

    private static boolean initializeRTL() {
        String orientation = System.getProperty("eclipse.orientation");
        if ("rtl".equals(orientation)) {
            return true;
        }
        if ("ltr".equals(orientation)) {
            return false;
        }
        String[] args = Platform.getCommandLineArgs();
        int i = 0;
        while (i < args.length) {
            if ("-dir".equalsIgnoreCase(args[i])) {
                return i + 1 < args.length && "rtl".equalsIgnoreCase(args[i + 1]);
            }
            ++i;
        }
        if (System.getProperty("osgi.nl.user") == null) {
            return false;
        }
        String locale = Platform.getNL();
        if (locale == null) {
            locale = Locale.getDefault().toString();
        }
        return locale.startsWith("ar") || locale.startsWith("fa") || locale.startsWith("he") || locale.startsWith("iw") || locale.startsWith("ur");
    }

    public static String resolveSpecialIdentifiers(String path) {
        Bundle productBundle;
        IProduct product;
        String bundleName;
        if (path == null) {
            return null;
        }
        int index = path.indexOf("PLUGINS_ROOT");
        if (index != -1) {
            path = path.substring(index + "PLUGINS_ROOT".length());
        }
        if ((index = path.indexOf(47, 1)) != -1 && ("PRODUCT_PLUGIN".equals(bundleName = path.substring(0, index)) || "/PRODUCT_PLUGIN".equals(bundleName)) && (product = Platform.getProduct()) != null && (productBundle = product.getDefiningBundle()) != null) {
            bundleName = productBundle.getSymbolicName();
            return String.valueOf('/') + bundleName + path.substring(index);
        }
        return path;
    }

    public static boolean useEnablementFilters() {
        if (!HelpSystem.isShared()) {
            return true;
        }
        return Platform.getPreferencesService().getBoolean("org.eclipse.help", "filterInfocenter", false, null);
    }

    private static class NameComparator
    implements Comparator {
        private Map tocNames;

        public NameComparator(Map tocNames) {
            this.tocNames = tocNames;
        }

        public int compare(Object o1, Object o2) {
            Object name1 = this.tocNames.get(o1);
            Object name2 = this.tocNames.get(o2);
            if (!(name1 instanceof String)) {
                return name2 instanceof String ? -1 : 0;
            }
            if (!(name2 instanceof String)) {
                return 1;
            }
            return Collator.getInstance().compare((String)name1, (String)name2);
        }
    }
}

