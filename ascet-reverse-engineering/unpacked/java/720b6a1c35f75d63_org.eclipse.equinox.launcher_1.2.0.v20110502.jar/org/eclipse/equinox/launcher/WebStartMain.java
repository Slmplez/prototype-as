/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.launcher;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.net.JarURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import org.eclipse.equinox.launcher.Main;

public class WebStartMain
extends Main {
    private static final String PROP_WEBSTART_AUTOMATIC_INSTALLATION = "eclipse.webstart.automaticInstallation";
    private static final String DEFAULT_OSGI_BUNDLES = "org.eclipse.equinox.common@2:start, org.eclipse.core.runtime@start";
    private static final String PROP_OSGI_BUNDLES = "osgi.bundles";
    private static final String PROP_CHECK_CONFIG = "osgi.checkConfiguration";
    private Map allBundles = null;
    private List bundleList = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public static void main(String[] args) {
        System.setSecurityManager(null);
        int result = new WebStartMain().run(args);
        if (!Boolean.getBoolean("osgi.noShutdown")) {
            System.exit(result);
        }
    }

    private void setDefaultBundles() {
        if (System.getProperty(PROP_OSGI_BUNDLES) != null) {
            return;
        }
        System.getProperties().put(PROP_OSGI_BUNDLES, DEFAULT_OSGI_BUNDLES);
    }

    protected void basicRun(String[] args) throws Exception {
        this.setDefaultBundles();
        this.initializeBundleListStructure();
        this.discoverBundles();
        String fwkURL = this.searchFor(this.framework, null);
        this.allBundles.remove(this.framework);
        System.getProperties().put("osgi.framework", fwkURL);
        super.basicRun(args);
    }

    protected void beforeFwkInvocation() {
        if (System.getProperty(PROP_CHECK_CONFIG) == null) {
            System.getProperties().put(PROP_CHECK_CONFIG, "true");
        }
        this.buildOSGiBundleList();
        this.cleanup();
    }

    private void cleanup() {
        this.allBundles = null;
        this.bundleList = null;
    }

    protected String searchFor(String target, String start) {
        ArrayList matches = (ArrayList)this.allBundles.get(target);
        if (matches == null) {
            return null;
        }
        int numberOfMatches = matches.size();
        if (numberOfMatches == 1) {
            return ((BundleInfo)matches.get((int)0)).location;
        }
        if (numberOfMatches == 0) {
            return null;
        }
        String[] versions = new String[numberOfMatches];
        int highest = 0;
        int i = 0;
        while (i < versions.length) {
            versions[i] = ((BundleInfo)matches.get((int)i)).version;
            ++i;
        }
        highest = this.findMax(null, versions);
        return ((BundleInfo)matches.get((int)highest)).location;
    }

    private BundleInfo findBundle(String target, String version, boolean removeMatch) {
        int numberOfMatches;
        ArrayList matches = (ArrayList)this.allBundles.get(target);
        int n = numberOfMatches = matches != null ? matches.size() : 0;
        if (numberOfMatches == 1) {
            return (BundleInfo)(removeMatch ? matches.remove(0) : matches.get(0));
        }
        if (numberOfMatches == 0) {
            return null;
        }
        if (version != null) {
            Iterator iterator = matches.iterator();
            while (iterator.hasNext()) {
                BundleInfo bi = (BundleInfo)iterator.next();
                if (!bi.version.equals(version)) continue;
                if (removeMatch) {
                    iterator.remove();
                }
                return bi;
            }
            return null;
        }
        String[] versions = new String[numberOfMatches];
        int highest = 0;
        int i = 0;
        while (i < versions.length) {
            versions[i] = ((BundleInfo)matches.get((int)i)).version;
            ++i;
        }
        highest = this.findMax(null, versions);
        return (BundleInfo)(removeMatch ? matches.remove(highest) : matches.get(highest));
    }

    private void discoverBundles() {
        this.allBundles = new HashMap();
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.equinox.launcher.WebStartMain");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Enumeration<URL> resources = clazz.getClassLoader().getResources("META-INF/MANIFEST.MF");
            while (resources.hasMoreElements()) {
                BundleInfo found = this.getBundleInfo(resources.nextElement());
                if (found == null) continue;
                ArrayList<BundleInfo> matching = (ArrayList<BundleInfo>)this.allBundles.get(found.bsn);
                if (matching == null) {
                    matching = new ArrayList<BundleInfo>(1);
                    this.allBundles.put(found.bsn, matching);
                }
                matching.add(found);
            }
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private String extractInnerURL(URL url) {
        try {
            URLConnection connection = null;
            try {
                connection = url.openConnection();
                if (!(connection instanceof JarURLConnection)) return url.toExternalForm();
                JarFile jarFile = ((JarURLConnection)connection).getJarFile();
                String name = jarFile.getName();
                if (name == null || name.length() == 0) {
                    name = this.getJarNameByReflection(jarFile);
                }
                if (name == null) return url.toExternalForm();
                if (name.length() <= 0) return url.toExternalForm();
                String string = "file:" + name;
                return string;
            }
            finally {
                if (connection != null) {
                    connection.getInputStream().close();
                }
            }
        }
        catch (IOException iOException) {}
        return url.toExternalForm();
    }

    private String getJarNameByReflection(JarFile jarFile) {
        Field nameField;
        block26: {
            block25: {
                if (jarFile == null) {
                    return null;
                }
                nameField = null;
                try {
                    Class<?> clazz = class$1;
                    if (clazz == null) {
                        try {
                            clazz = class$1 = Class.forName("java.util.zip.ZipFile");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    nameField = clazz.getDeclaredField("name");
                }
                catch (NoSuchFieldException noSuchFieldException) {
                    try {
                        Class<?> clazz = class$1;
                        if (clazz == null) {
                            try {
                                clazz = class$1 = Class.forName("java.util.zip.ZipFile");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        nameField = clazz.getDeclaredField("fileName");
                    }
                    catch (NoSuchFieldException noSuchFieldException2) {}
                }
                if (nameField == null || Modifier.isStatic(nameField.getModifiers())) break block25;
                Class<?> clazz = nameField.getType();
                Class<?> clazz2 = class$2;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$2 = Class.forName("java.lang.String");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (clazz == clazz2) break block26;
            }
            return null;
        }
        try {
            nameField.setAccessible(true);
            return (String)nameField.get(jarFile);
        }
        catch (SecurityException securityException) {
        }
        catch (IllegalArgumentException illegalArgumentException) {
        }
        catch (IllegalAccessException illegalAccessException) {}
        return null;
    }

    private void initializeBundleListStructure() {
        String prop = System.getProperty(PROP_OSGI_BUNDLES);
        if (prop == null || prop.trim().equals("")) {
            this.bundleList = new ArrayList(0);
            return;
        }
        this.bundleList = new ArrayList(10);
        StringTokenizer tokens = new StringTokenizer(prop, ",");
        while (tokens.hasMoreTokens()) {
            String token;
            String bundleId = token = tokens.nextToken().trim();
            if (token.equals("")) continue;
            BundleInfo toAdd = new BundleInfo();
            toAdd.bsn = bundleId;
            int startLevelSeparator = token.lastIndexOf(64);
            if (startLevelSeparator != -1) {
                toAdd.bsn = token.substring(0, startLevelSeparator);
                toAdd.startData = token.substring(startLevelSeparator);
            }
            this.bundleList.add(toAdd);
        }
    }

    private BundleInfo getBundleInfo(URL manifestURL) {
        String symbolicNameString;
        Manifest mf;
        block5: {
            try {
                mf = new Manifest(manifestURL.openStream());
                symbolicNameString = mf.getMainAttributes().getValue("Bundle-SymbolicName");
                if (symbolicNameString != null) break block5;
                return null;
            }
            catch (IOException e) {
                if (this.debug) {
                    e.printStackTrace();
                }
                return null;
            }
        }
        BundleInfo result = new BundleInfo();
        String version = mf.getMainAttributes().getValue("Bundle-Version");
        result.version = version != null ? version : "0.0.0";
        result.location = this.extractInnerURL(manifestURL);
        int pos = symbolicNameString.lastIndexOf(59);
        if (pos != -1) {
            result.bsn = symbolicNameString.substring(0, pos);
            return result;
        }
        result.bsn = symbolicNameString;
        return result;
    }

    private void buildOSGiBundleList() {
        StringBuffer finalBundleList = new StringBuffer(this.allBundles.size() * 30);
        Iterator<Object> iterator = this.bundleList.iterator();
        while (iterator.hasNext()) {
            BundleInfo searched = (BundleInfo)iterator.next();
            BundleInfo found = this.findBundle(searched.bsn, searched.version, true);
            if (found == null) continue;
            finalBundleList.append("reference:").append(found.location).append(searched.startData).append(',');
        }
        if (!Boolean.FALSE.toString().equalsIgnoreCase(System.getProperties().getProperty(PROP_WEBSTART_AUTOMATIC_INSTALLATION))) {
            iterator = this.allBundles.values().iterator();
            while (iterator.hasNext()) {
                ArrayList toAdd = (ArrayList)iterator.next();
                Iterator iterator2 = toAdd.iterator();
                while (iterator2.hasNext()) {
                    BundleInfo bi = (BundleInfo)iterator2.next();
                    finalBundleList.append("reference:").append(bi.location).append(',');
                }
            }
        }
        System.getProperties().put(PROP_OSGI_BUNDLES, finalBundleList.toString());
    }

    protected class BundleInfo {
        String bsn;
        String version;
        String startData;
        String location;

        protected BundleInfo() {
        }
    }
}

