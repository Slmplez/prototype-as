/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.osgi.service.pluginconversion.PluginConversionException
 *  org.eclipse.osgi.service.pluginconversion.PluginConverter
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.equinox.internal.frameworkadmin.utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.JarURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.TreeMap;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.frameworkadmin.utils.Activator;
import org.eclipse.osgi.service.pluginconversion.PluginConversionException;
import org.eclipse.osgi.service.pluginconversion.PluginConverter;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.BundleException;

public class Utils {
    private static final String FEATURE_MANIFEST = "feature.xml";
    private static final String FILE_SCHEME = "file";
    private static final String FRAGMENT_MANIFEST = "fragment.xml";
    private static final String PATH_SEP = "/";
    private static final String PLUGIN_MANIFEST = "plugin.xml";

    public static Properties appendProperties(Properties to, Properties from) {
        if (from != null) {
            if (to == null) {
                to = new Properties();
            }
            Enumeration enumeration = from.keys();
            while (enumeration.hasMoreElements()) {
                String key = (String)enumeration.nextElement();
                to.setProperty(key, from.getProperty(key));
            }
        }
        return to;
    }

    /*
     * Exception decompiling
     */
    private static Dictionary basicLoadManifest(File bundleLocation) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    public static void checkAbsoluteDir(File file, String dirName) throws IllegalArgumentException {
        if (file == null) {
            throw new IllegalArgumentException(String.valueOf(dirName) + " is null");
        }
        if (!file.isAbsolute()) {
            throw new IllegalArgumentException(String.valueOf(dirName) + " is not absolute path. file=" + file.getAbsolutePath());
        }
        if (!file.isDirectory()) {
            throw new IllegalArgumentException(String.valueOf(dirName) + " is not directory. file=" + file.getAbsolutePath());
        }
    }

    public static void checkAbsoluteFile(File file, String dirName) {
        if (file == null) {
            throw new IllegalArgumentException(String.valueOf(dirName) + " is null");
        }
        if (!file.isAbsolute()) {
            throw new IllegalArgumentException(String.valueOf(dirName) + " is not absolute path. file=" + file.getAbsolutePath());
        }
        if (file.isDirectory()) {
            throw new IllegalArgumentException(String.valueOf(dirName) + " is not file but directory");
        }
    }

    public static URL checkFullUrl(URL url, String urlName) throws IllegalArgumentException {
        if (url == null) {
            throw new IllegalArgumentException(String.valueOf(urlName) + " is null");
        }
        if (!url.getProtocol().endsWith(FILE_SCHEME)) {
            return url;
        }
        File file = new File(url.getFile());
        if (!file.isAbsolute()) {
            throw new IllegalArgumentException(String.valueOf(urlName) + "(" + url + ") does not have absolute path");
        }
        if (file.getAbsolutePath().startsWith(PATH_SEP)) {
            return url;
        }
        try {
            return Utils.getUrl(FILE_SCHEME, null, PATH_SEP + file.getAbsolutePath());
        }
        catch (MalformedURLException malformedURLException) {
            throw new IllegalArgumentException(String.valueOf(urlName) + "(" + "file:" + PATH_SEP + file.getAbsolutePath() + ") is not fully quallified");
        }
    }

    private static Dictionary convertPluginManifest(File bundleLocation, boolean logConversionException) {
        PluginConverter converter;
        block6: {
            try {
                converter = Activator.acquirePluginConverter();
                if (converter != null) break block6;
                new RuntimeException("Unable to aquire PluginConverter service during generation for: " + bundleLocation).printStackTrace();
                return null;
            }
            catch (PluginConversionException convertException) {
                if (bundleLocation.getName().equals(FEATURE_MANIFEST)) {
                    return null;
                }
                if (!new File(bundleLocation, PLUGIN_MANIFEST).exists() && !new File(bundleLocation, FRAGMENT_MANIFEST).exists()) {
                    return null;
                }
                if (logConversionException) {
                    Status status = new Status(2, "org.eclipse.equinox.frameworkadmin", 0, "Error converting bundle manifest.", (Throwable)convertException);
                    System.out.println(status);
                }
                return null;
            }
        }
        return converter.convertManifest(bundleLocation, false, null, true, null);
    }

    public static boolean createParentDir(File file) {
        File parent = file.getParentFile();
        if (parent == null) {
            return false;
        }
        if (parent.exists()) {
            return true;
        }
        return parent.mkdirs();
    }

    public static BundleInfo[] getBundleInfosFromList(List list) {
        if (list == null) {
            return new BundleInfo[0];
        }
        BundleInfo[] ret = new BundleInfo[list.size()];
        list.toArray(ret);
        return ret;
    }

    public static String[] getClauses(String header) {
        StringTokenizer token = new StringTokenizer(header, ",");
        LinkedList<String> list = new LinkedList<String>();
        while (token.hasMoreTokens()) {
            list.add(token.nextToken());
        }
        String[] ret = new String[list.size()];
        list.toArray(ret);
        return ret;
    }

    public static String[] getClausesManifestMainAttributes(URI location, String name) {
        return Utils.getClauses(Utils.getManifestMainAttributes(location, name));
    }

    public static String getManifestMainAttributes(URI location, String name) {
        Dictionary manifest = Utils.getOSGiManifest(location);
        if (manifest == null) {
            throw new RuntimeException("Unable to locate bundle manifest: " + location);
        }
        return (String)manifest.get(name);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Dictionary getOSGiManifest(URI location) {
        if (location == null) {
            return null;
        }
        if (FILE_SCHEME.equals(location.getScheme())) {
            return Utils.basicLoadManifest(URIUtil.toFile((URI)location));
        }
        try {
            URL url = new URL("jar:" + location.toString() + "!/");
            JarURLConnection jarConnection = (JarURLConnection)url.openConnection();
            JarFile jar = jarConnection.getJarFile();
            try {
                ZipEntry entry = ((ZipFile)jar).getEntry("META-INF/MANIFEST.MF");
                if (entry == null) {
                    return null;
                }
                Map manifest = ManifestElement.parseBundleManifest((InputStream)((ZipFile)jar).getInputStream(entry), null);
                if (manifest.get("Bundle-SymbolicName") == null) {
                    String jarName = jar.getName();
                    File file = jarName != null ? new File(jarName) : null;
                    if (file == null) return null;
                    if (!file.exists()) return null;
                    Dictionary dictionary = Utils.convertPluginManifest(file, true);
                    return dictionary;
                }
                Properties properties = Utils.manifestToProperties(manifest);
                return properties;
            }
            catch (BundleException bundleException) {
                return null;
            }
            finally {
                jar.close();
            }
        }
        catch (IOException e) {
            if (System.getProperty("osgi.debug") == null) return null;
            System.err.println("location=" + location);
            e.printStackTrace();
            return null;
        }
    }

    public static String getPathFromClause(String clause) {
        if (clause == null) {
            return null;
        }
        if (clause.indexOf(";") != -1) {
            clause = clause.substring(0, clause.indexOf(";"));
        }
        return clause.trim();
    }

    public static String getRelativePath(File target, File from) {
        String targetPath = Utils.replaceAll(target.getAbsolutePath(), File.separator, PATH_SEP);
        String fromPath = Utils.replaceAll(from.getAbsolutePath(), File.separator, PATH_SEP);
        String[] targetTokens = Utils.getTokens(targetPath, PATH_SEP);
        String[] fromTokens = Utils.getTokens(fromPath, PATH_SEP);
        int index = -1;
        int i = 0;
        while (i < fromTokens.length) {
            if (!fromTokens[i].equals(targetTokens[i])) break;
            index = i++;
        }
        StringBuffer sb = new StringBuffer();
        int i2 = index + 1;
        while (i2 < fromTokens.length) {
            sb.append("../");
            ++i2;
        }
        i2 = index + 1;
        while (i2 < targetTokens.length) {
            if (i2 != targetTokens.length - 1) {
                sb.append(String.valueOf(targetTokens[i2]) + PATH_SEP);
            } else {
                sb.append(targetTokens[i2]);
            }
            ++i2;
        }
        return sb.toString();
    }

    public static File getSimpleDataFormattedFile(File file) {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
        String date = df.format(new Date());
        String filename = file.getName();
        int index = filename.lastIndexOf(".");
        filename = index != -1 ? String.valueOf(filename.substring(0, index)) + "." + date + "." + filename.substring(index + 1) : String.valueOf(filename) + "." + date;
        File dest = new File(file.getParentFile(), filename);
        return dest;
    }

    public static String[] getTokens(String msg, String delim) {
        return Utils.getTokens(msg, delim, false);
    }

    public static String[] getTokens(String msg, String delim, boolean returnDelims) {
        StringTokenizer targetST = new StringTokenizer(msg, delim, returnDelims);
        String[] tokens = new String[targetST.countTokens()];
        ArrayList<String> list = new ArrayList<String>(targetST.countTokens());
        while (targetST.hasMoreTokens()) {
            list.add(targetST.nextToken());
        }
        list.toArray(tokens);
        return tokens;
    }

    public static URL getUrl(String protocol, String host, String file) throws MalformedURLException {
        file = Utils.replaceAll(file, File.separator, PATH_SEP);
        return new URL(protocol, host, file);
    }

    public static URL getUrlInFull(String path, URL from) throws MalformedURLException {
        Utils.checkFullUrl(from, "from");
        path = Utils.replaceAll(path, File.separator, PATH_SEP);
        String fromSt = Utils.removeLastCh(from.toExternalForm(), '/');
        if (path.startsWith(PATH_SEP)) {
            String fileSt = from.getFile();
            return new URL(String.valueOf(fromSt.substring(0, fromSt.lastIndexOf(fileSt) - 1)) + path);
        }
        return new URL(String.valueOf(fromSt) + PATH_SEP + path);
    }

    private static Properties manifestToProperties(Map d) {
        Iterator iter = d.keySet().iterator();
        Properties result = new Properties();
        while (iter.hasNext()) {
            String key = (String)iter.next();
            result.put(key, d.get(key));
        }
        return result;
    }

    public static void printoutProperties(PrintStream ps, String name, Properties props) {
        if (props == null || props.size() == 0) {
            ps.println("Props(" + name + ") is empty");
            return;
        }
        ps.println("Props(" + name + ")=");
        Enumeration enumeration = props.keys();
        while (enumeration.hasMoreElements()) {
            String key = (String)enumeration.nextElement();
            ps.print("\tkey=" + key);
            ps.println("\tvalue=" + props.getProperty(key));
        }
    }

    public static String removeLastCh(String target, char ch) {
        while (target.charAt(target.length() - 1) == ch) {
            target = target.substring(0, target.length() - 1);
        }
        return target;
    }

    public static String replaceAll(String st, String oldSt, String newSt) {
        if (oldSt.equals(newSt)) {
            return st;
        }
        int index = -1;
        while ((index = st.indexOf(oldSt)) != -1) {
            st = String.valueOf(st.substring(0, index)) + newSt + st.substring(index + oldSt.length());
        }
        return st;
    }

    public static BundleInfo[] sortBundleInfos(BundleInfo[] bInfos, int initialBSL) {
        TreeMap<Integer, LinkedList<BundleInfo>> bslToList = new TreeMap<Integer, LinkedList<BundleInfo>>();
        int i = 0;
        while (i < bInfos.length) {
            LinkedList<BundleInfo> list;
            Integer sL = new Integer(bInfos[i].getStartLevel());
            if (sL == -1) {
                sL = new Integer(initialBSL);
            }
            if ((list = (LinkedList<BundleInfo>)bslToList.get(sL)) == null) {
                list = new LinkedList<BundleInfo>();
                bslToList.put(sL, list);
            }
            list.add(bInfos[i]);
            ++i;
        }
        LinkedList<BundleInfo> bundleInfoList = new LinkedList<BundleInfo>();
        Iterator ite = bslToList.keySet().iterator();
        while (ite.hasNext()) {
            Integer sL = (Integer)ite.next();
            List list = (List)bslToList.get(sL);
            Iterator ite2 = list.iterator();
            while (ite2.hasNext()) {
                BundleInfo bInfo = (BundleInfo)ite2.next();
                bundleInfoList.add(bInfo);
            }
        }
        return Utils.getBundleInfosFromList(bundleInfoList);
    }

    public static String toStringProperties(String name, Properties props) {
        if (props == null || props.size() == 0) {
            return "Props(" + name + ") is empty\n";
        }
        StringBuffer sb = new StringBuffer();
        sb.append("Props(" + name + ") is \n");
        Enumeration enumeration = props.keys();
        while (enumeration.hasMoreElements()) {
            String key = (String)enumeration.nextElement();
            sb.append("\tkey=" + key + "\tvalue=" + props.getProperty(key) + "\n");
        }
        return sb.toString();
    }
}

