/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.pde.internal.publishing.Utils
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AssemblyInformation;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.IBuildPropertiesConstants;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.IXMLConstants;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.ant.AntScript;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.eclipse.pde.internal.build.site.BuildTimeSite;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

public final class Utils
implements IPDEBuildConstants,
IBuildPropertiesConstants,
IXMLConstants {
    private static final String BASE_64_ENCODING = "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz";
    private static final String REGEX_ROOT_CONFIG = "^root((\\.[\\w-\\*]+){3})$";
    private static final String REGEX_ROOT_CONFIG_FOLDER = "^root((\\.[\\w-\\*]+){3})?\\.folder\\.(.*)$";
    private static final String REGEX_ROOT_CONFIG_PERMISSIONS = "^root((\\.[\\w-\\*]+){3})?\\.permissions\\.(.*)$";
    private static final String REGEX_ROOT_CONFIG_LINK = "^root((\\.[\\w-\\*]+){3})?\\.link$";
    public static final String ROOT_PERMISSIONS = "!!ROOT.PERMISSIONS!!";
    public static final String ROOT_LINK = "!!ROOT.LINK!!";
    public static final String ROOT_COMMON = "!!COMMON!!";
    public static final String EXTRA_ID = "id";
    public static final String EXTRA_VERSION = "version";
    public static final String EXTRA_UNPACK = "unpack";
    public static final String EXTRA_OPTIONAL = "optional";
    public static final String EXTRA_OS = "os";
    public static final String EXTRA_WS = "ws";
    public static final String EXTRA_ARCH = "arch";

    public static int qualifierCharValue(char c) {
        int index = BASE_64_ENCODING.indexOf(c);
        return index + 1;
    }

    public static char base64Character(int number) {
        if (number < 0 || number > 63) {
            return ' ';
        }
        return BASE_64_ENCODING.charAt(number);
    }

    public static VersionRange createVersionRange(String versionId) {
        VersionRange range = null;
        if (versionId == null || versionId.length() == 0 || "0.0.0".equals(versionId)) {
            range = VersionRange.emptyRange;
        } else {
            int qualifierIdx = versionId.indexOf("qualifier");
            if (qualifierIdx != -1) {
                String newVersion = versionId.substring(0, qualifierIdx);
                if (newVersion.endsWith(".")) {
                    newVersion = newVersion.substring(0, newVersion.length() - 1);
                }
                Version lower = new Version(newVersion);
                Version upper = null;
                String newQualifier = Utils.incrementQualifier(lower.getQualifier());
                upper = newQualifier == null ? new Version(lower.getMajor(), lower.getMinor(), lower.getMicro() + 1) : new Version(lower.getMajor(), lower.getMinor(), lower.getMicro(), newQualifier);
                range = new VersionRange(lower, true, upper, false);
            } else {
                range = new VersionRange(new Version(versionId), true, new Version(versionId), true);
            }
        }
        return range;
    }

    public static VersionRange createVersionRange(FeatureEntry entry) {
        String versionSpec = entry.getVersion();
        if (versionSpec == null) {
            return VersionRange.emptyRange;
        }
        Version version = new Version(versionSpec);
        if (version.equals((Object)Version.emptyVersion)) {
            return VersionRange.emptyRange;
        }
        String match = entry.getMatch();
        if (!entry.isRequires() || match == null) {
            return Utils.createVersionRange(versionSpec);
        }
        if (match.equals("perfect")) {
            return new VersionRange(version, true, version, true);
        }
        if (match.equals("equivalent")) {
            Version upper = new Version(version.getMajor(), version.getMinor() + 1, 0);
            return new VersionRange(version, true, upper, false);
        }
        if (match.equals("compatible")) {
            Version upper = new Version(version.getMajor() + 1, 0, 0);
            return new VersionRange(version, true, upper, false);
        }
        if (match.equals("greaterOrEqual")) {
            return new VersionRange(version, true, new VersionRange(null).getMaximum(), true);
        }
        return VersionRange.emptyRange;
    }

    private static String incrementQualifier(String qualifier) {
        int idx = qualifier.length() - 1;
        while (idx >= 0) {
            if (qualifier.charAt(idx) != 'z') break;
            --idx;
        }
        if (idx >= 0) {
            int c = Utils.qualifierCharValue(qualifier.charAt(idx));
            String newQualifier = qualifier.substring(0, idx);
            newQualifier = String.valueOf(newQualifier) + Utils.base64Character(c);
            return newQualifier;
        }
        return null;
    }

    public static String[] getArrayFromString(String list, String separator) {
        if (list == null || list.trim().equals("")) {
            return new String[0];
        }
        ArrayList<String> result = new ArrayList<String>();
        StringTokenizer tokens = new StringTokenizer(list, separator);
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            if (token.equals("")) continue;
            result.add(token);
        }
        return result.toArray(new String[result.size()]);
    }

    public static String[] getArrayFromStringWithBlank(String list, String separator) {
        if (list == null || list.trim().length() == 0) {
            return new String[0];
        }
        ArrayList<String> result = new ArrayList<String>();
        boolean previousWasSeparator = true;
        StringTokenizer tokens = new StringTokenizer(list, separator, true);
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            if (token.equals(separator)) {
                if (previousWasSeparator) {
                    result.add("");
                }
                previousWasSeparator = true;
                continue;
            }
            result.add(token);
            previousWasSeparator = false;
        }
        return result.toArray(new String[result.size()]);
    }

    public static String[] getArrayFromString(String list) {
        return Utils.getArrayFromString(list, ",");
    }

    public static URL[] asURL(String[] target) throws CoreException {
        if (target == null) {
            return null;
        }
        try {
            URL[] result = new URL[target.length];
            int i = 0;
            while (i < target.length) {
                result[i] = new URL(target[i]);
                ++i;
            }
            return result;
        }
        catch (MalformedURLException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 3, e.getMessage(), (Throwable)e));
        }
    }

    public static URL[] asURL(Collection target) throws CoreException {
        if (target == null) {
            return null;
        }
        try {
            URL[] result = new URL[target.size()];
            int i = 0;
            Iterator iter = target.iterator();
            while (iter.hasNext()) {
                result[i++] = ((File)iter.next()).toURL();
            }
            return result;
        }
        catch (MalformedURLException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 3, e.getMessage(), (Throwable)e));
        }
    }

    public static File[] asFile(String[] target) {
        if (target == null) {
            return new File[0];
        }
        File[] result = new File[target.length];
        int i = 0;
        while (i < result.length) {
            result[i] = new File(target[i]);
            ++i;
        }
        return result;
    }

    public static File[] asFile(URL[] target) {
        if (target == null) {
            return new File[0];
        }
        File[] result = new File[target.length];
        int i = 0;
        while (i < result.length) {
            result[i] = new File(target[i].getFile());
            ++i;
        }
        return result;
    }

    public static File[] asFile(Collection collection) {
        if (collection.size() == 0) {
            return new File[0];
        }
        Object first = collection.iterator().next();
        if (first instanceof String) {
            return Utils.asFile(collection.toArray(new String[collection.size()]));
        }
        if (first instanceof URL) {
            return Utils.asFile(collection.toArray(new URL[collection.size()]));
        }
        if (first instanceof File) {
            return collection.toArray(new File[collection.size()]);
        }
        throw new IllegalArgumentException();
    }

    public static String getStringFromCollection(Collection collection, String separator) {
        StringBuffer result = new StringBuffer();
        boolean first = true;
        Iterator i = collection.iterator();
        while (i.hasNext()) {
            if (first) {
                first = false;
            } else {
                result.append(separator);
            }
            result.append(i.next());
        }
        return result.toString();
    }

    public static String getStringFromArray(String[] values, String separator) {
        StringBuffer result = new StringBuffer();
        int i = 0;
        while (i < values.length) {
            if (values[i] != null) {
                if (i > 0) {
                    result.append(separator);
                }
                result.append(values[i]);
            }
            ++i;
        }
        return result.toString();
    }

    public static IPath makeRelative(IPath location, IPath base) {
        if (location.getDevice() == null ? base.getDevice() != null : !location.getDevice().equalsIgnoreCase(base.getDevice())) {
            return location;
        }
        int baseCount = base.segmentCount();
        int count = base.matchingFirstSegments(location);
        String temp = "";
        int j = 0;
        while (j < baseCount - count) {
            temp = String.valueOf(temp) + "../";
            ++j;
        }
        return new Path(temp).append(location.removeFirstSegments(count));
    }

    public static void transferStreams(InputStream source, OutputStream destination) throws IOException {
        source = new BufferedInputStream(source);
        destination = new BufferedOutputStream(destination);
        try {
            byte[] buffer = new byte[8192];
            while (true) {
                int bytesRead = -1;
                bytesRead = source.read(buffer);
                if (bytesRead != -1) {
                    destination.write(buffer, 0, bytesRead);
                    continue;
                }
                break;
            }
        }
        catch (Throwable throwable) {
            try {
                source.close();
            }
            catch (IOException iOException) {}
            try {
                destination.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            source.close();
        }
        catch (IOException iOException) {}
        try {
            destination.close();
        }
        catch (IOException iOException) {}
    }

    public static void copyFile(String src, String dest) throws IOException {
        File source = new File(src);
        if (!source.exists()) {
            return;
        }
        File destination = new File(dest);
        File destDir = destination.getParentFile();
        if (!destDir.exists() && !destDir.mkdirs() || destDir.isFile()) {
            return;
        }
        Utils.copy(source, destination);
    }

    public static void copy(File source, File destination) throws IOException {
        org.eclipse.pde.internal.publishing.Utils.copy((File)source, (File)destination);
    }

    public static void writeBuffer(StringBuffer buffer, File outputFile) throws IOException {
        FileOutputStream stream = null;
        try {
            outputFile.getParentFile().mkdirs();
            stream = new FileOutputStream(outputFile);
            stream.write(buffer.toString().getBytes());
        }
        catch (Throwable throwable) {
            Utils.close(stream);
            throw throwable;
        }
        Utils.close(stream);
    }

    public static void writeProperties(Properties properites, File outputFile, String comment) throws IOException {
        outputFile.getParentFile().mkdirs();
        BufferedOutputStream buildFile = new BufferedOutputStream(new FileOutputStream(outputFile));
        try {
            properites.store(buildFile, comment);
        }
        finally {
            Utils.close(buildFile);
        }
    }

    public static FeatureEntry[] getPluginEntry(BuildTimeFeature feature, String pluginId, boolean raw) {
        FeatureEntry[] plugins = raw ? feature.getRawPluginEntries() : feature.getPluginEntries();
        ArrayList<FeatureEntry> foundEntries = new ArrayList<FeatureEntry>(5);
        int i = 0;
        while (i < plugins.length) {
            if (plugins[i].getId().equals(pluginId)) {
                foundEntries.add(plugins[i]);
            }
            ++i;
        }
        return foundEntries.toArray(new FeatureEntry[foundEntries.size()]);
    }

    public static Collection findFiles(File from, String foldername, final String filename) {
        File root = from;
        if (root.isFile() && root.getName().equals(filename)) {
            ArrayList<File> coll = new ArrayList<File>(1);
            coll.add(root);
            return coll;
        }
        ArrayList<File> collectedElements = new ArrayList<File>(10);
        File[] featureDirectoryContent = new File(from, foldername).listFiles();
        if (featureDirectoryContent == null) {
            return null;
        }
        int i = 0;
        while (i < featureDirectoryContent.length) {
            File[] featureFiles;
            if (featureDirectoryContent[i].isDirectory() && (featureFiles = featureDirectoryContent[i].listFiles(new FilenameFilter(){

                public boolean accept(File dir, String name) {
                    return name.equals(filename);
                }
            })).length != 0) {
                collectedElements.add(featureFiles[0]);
            }
            ++i;
        }
        return collectedElements;
    }

    public static boolean isIn(FeatureEntry[] array, FeatureEntry element) {
        int i = 0;
        while (i < array.length) {
            if (array[i].getId().equals(element.getId()) && array[i].getVersion().equals(element.getVersion())) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public static Collection copyFiles(String fromDir, String toDir) throws CoreException {
        File[] files;
        File templateLocation = new File(fromDir);
        ArrayList<String> copiedFiles = new ArrayList<String>();
        if (templateLocation.exists() && (files = templateLocation.listFiles()) != null) {
            int i = 0;
            while (i < files.length) {
                if (files[i].isDirectory()) {
                    File subDir = new File(toDir, files[i].getName());
                    if (!subDir.exists()) {
                        subDir.mkdirs();
                    }
                    Collection subFiles = Utils.copyFiles(String.valueOf(fromDir) + '/' + files[i].getName(), String.valueOf(toDir) + '/' + files[i].getName());
                    Iterator iter = subFiles.iterator();
                    while (iter.hasNext()) {
                        String sub = (String)iter.next();
                        copiedFiles.add(String.valueOf(files[i].getName()) + '/' + sub);
                    }
                } else {
                    FileInputStream inputStream = null;
                    FileOutputStream outputStream = null;
                    try {
                        inputStream = new FileInputStream(files[i]);
                    }
                    catch (FileNotFoundException e) {
                        String message = NLS.bind((String)Messages.exception_missingFile, (Object)files[i].getAbsolutePath());
                        throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 10, message, (Throwable)e));
                    }
                    String fileToCopy = String.valueOf(toDir) + '/' + files[i].getName();
                    try {
                        outputStream = new FileOutputStream(fileToCopy);
                    }
                    catch (FileNotFoundException e) {
                        String message = NLS.bind((String)Messages.exception_missingFile, (Object)fileToCopy);
                        throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 10, message, (Throwable)e));
                    }
                    try {
                        Utils.transferStreams(inputStream, outputStream);
                        copiedFiles.add(files[i].getName());
                    }
                    catch (IOException e) {
                        String message = NLS.bind((String)Messages.exception_writingFile, (Object)fileToCopy);
                        throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e));
                    }
                }
                ++i;
            }
        }
        return copiedFiles;
    }

    public static List extractPlugins(List initialList, Set toExtract) {
        if (initialList.size() == toExtract.size()) {
            return initialList;
        }
        ArrayList result = new ArrayList(toExtract.size());
        Iterator iter = initialList.iterator();
        while (iter.hasNext()) {
            Object element = iter.next();
            if (!toExtract.contains(element)) continue;
            result.add(element);
            if (result.size() == toExtract.size()) break;
        }
        return result;
    }

    public static int isStringIn(String[] searched, String toSearch) {
        if (searched == null || toSearch == null) {
            return -1;
        }
        int i = 0;
        while (i < searched.length) {
            if (toSearch.startsWith(searched[i])) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public static Properties getOldExecutableRootOverrides() {
        Properties overrides = new Properties();
        overrides.put("root.win32.win32.x86", "file:bin/win32/win32/x86/launcher.exe");
        overrides.put("root.win32.win32.x86_64", "file:bin/win32/win32/x86_64/launcher.exe");
        overrides.put("root.win32.wpf.x86", "file:bin/wpf/win32/x86/launcher.exe");
        return overrides;
    }

    public static Map processRootProperties(Properties properties, boolean mergeCommon) {
        String existing;
        HashMap map = new HashMap();
        HashMap<String, String> common = new HashMap<String, String>();
        Enumeration keys = properties.keys();
        while (keys.hasMoreElements()) {
            HashMap<String, String> submap;
            String entry = (String)keys.nextElement();
            String config = null;
            String entryKey = null;
            if (entry.equals("root") || entry.matches(REGEX_ROOT_CONFIG)) {
                config = entry.length() > 4 ? entry.substring(5) : "";
                entryKey = "";
            } else if (entry.matches(REGEX_ROOT_CONFIG_FOLDER)) {
                int folderIdx = entry.indexOf(".folder.");
                config = folderIdx > 5 ? entry.substring(5, folderIdx) : "";
                entryKey = entry.substring(folderIdx + 8);
            } else if (entry.matches(REGEX_ROOT_CONFIG_PERMISSIONS)) {
                int permissionIdx = entry.indexOf(".permissions.");
                config = permissionIdx > 5 ? entry.substring(5, permissionIdx) : "";
                entryKey = ROOT_PERMISSIONS + entry.substring(permissionIdx + 13);
            } else if (entry.matches(REGEX_ROOT_CONFIG_LINK)) {
                int linkIdx = entry.indexOf(".link");
                config = linkIdx > 5 ? entry.substring(5, linkIdx) : "";
                entryKey = ROOT_LINK;
            }
            if (config == null) continue;
            Map<String, String> map2 = submap = config.length() == 0 ? common : (Map)map.get(config);
            if (submap == null) {
                submap = new HashMap();
                map.put(config, submap);
            }
            if (submap.containsKey(entryKey)) {
                existing = (String)submap.get(entryKey);
                submap.put(entryKey, String.valueOf(existing) + "," + properties.getProperty(entry));
                continue;
            }
            submap.put(entryKey, (String)properties.get(entry));
        }
        if (common.size() > 0 && mergeCommon) {
            Iterator iterator = map.keySet().iterator();
            while (iterator.hasNext()) {
                String key = (String)iterator.next();
                Map submap = (Map)map.get(key);
                Iterator commonKeys = common.keySet().iterator();
                while (commonKeys.hasNext()) {
                    String commonKey = (String)commonKeys.next();
                    if (submap.containsKey(commonKey)) {
                        existing = (String)submap.get(commonKey);
                        submap.put(commonKey, String.valueOf(existing) + "," + common.get(commonKey));
                        continue;
                    }
                    submap.put(commonKey, common.get(commonKey));
                }
            }
        }
        if (mergeCommon || common.size() > 0) {
            map.put(ROOT_COMMON, common);
        }
        return map;
    }

    public static void generatePermissions(Properties featureProperties, Config aConfig, String targetRootProperty, AntScript script) {
        if (featureProperties == null) {
            return;
        }
        String configInfix = aConfig.toString(".");
        String configPath = aConfig.toStringReplacingAny(".", "ANY");
        String prefixPermissions = "root." + configInfix + '.' + "permissions" + '.';
        String prefixLinks = "root." + configInfix + '.' + "link";
        String commonPermissions = "root.permissions.";
        String commonLinks = "root.link";
        Iterator iter = featureProperties.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry permission = iter.next();
            String instruction = (String)permission.getKey();
            String parameters = Utils.removeEndingSlashes((String)permission.getValue());
            if (instruction.startsWith(prefixPermissions)) {
                Utils.generateChmodInstruction(script, String.valueOf(Utils.getPropertyFormat(targetRootProperty)) + '/' + configPath + '/' + Utils.getPropertyFormat("collectingFolder"), instruction.substring(prefixPermissions.length()), parameters);
                continue;
            }
            if (instruction.startsWith(prefixLinks)) {
                Utils.generateLinkInstruction(script, String.valueOf(Utils.getPropertyFormat(targetRootProperty)) + '/' + configPath + '/' + Utils.getPropertyFormat("collectingFolder"), parameters);
                continue;
            }
            if (instruction.startsWith(commonPermissions)) {
                Utils.generateChmodInstruction(script, String.valueOf(Utils.getPropertyFormat(targetRootProperty)) + '/' + configPath + '/' + Utils.getPropertyFormat("collectingFolder"), instruction.substring(commonPermissions.length()), parameters);
                continue;
            }
            if (!instruction.startsWith(commonLinks)) continue;
            Utils.generateLinkInstruction(script, String.valueOf(Utils.getPropertyFormat(targetRootProperty)) + '/' + configPath + '/' + Utils.getPropertyFormat("collectingFolder"), parameters);
        }
    }

    public static String removeEndingSlashes(String value) {
        String[] params = Utils.getArrayFromString(value, ",");
        int i = 0;
        while (i < params.length) {
            if (params[i].endsWith("/")) {
                params[i] = params[i].substring(0, params[i].length() - 1);
            }
            ++i;
        }
        return Utils.getStringFromArray(params, ",");
    }

    private static void generateChmodInstruction(AntScript script, String dir, String rights, String files) {
        if (rights.equals("executable")) {
            rights = "755";
        }
        script.printChmod(dir, rights, files);
    }

    private static void generateLinkInstruction(AntScript script, String dir, String files) {
        String[] links = Utils.getArrayFromString(files, ",");
        ArrayList<String> arguments = new ArrayList<String>(2);
        int i = 0;
        while (i < links.length) {
            arguments.add("-sf");
            arguments.add(links[i]);
            arguments.add(links[i + 1]);
            script.printExecTask("ln", dir, arguments, "Linux");
            arguments.clear();
            i += 2;
        }
    }

    public static String getPropertyFormat(String propertyName) {
        StringBuffer sb = new StringBuffer();
        sb.append("${");
        sb.append(propertyName);
        sb.append("}");
        return sb.toString();
    }

    public static String getMacroFormat(String propertyName) {
        StringBuffer sb = new StringBuffer();
        sb.append("@{");
        sb.append(propertyName);
        sb.append("}");
        return sb.toString();
    }

    public static boolean isBinary(BundleDescription bundle) {
        Properties bundleProperties = (Properties)bundle.getUserObject();
        if (bundleProperties == null || bundleProperties.get("isCompiler") == null) {
            File props = new File(bundle.getLocation(), "build.properties");
            return !props.exists() || !props.isFile();
        }
        return Boolean.FALSE == bundleProperties.get("isCompiler");
    }

    public static boolean isSourceBundle(BundleDescription bundle) {
        Properties bundleProperties = (Properties)bundle.getUserObject();
        return bundleProperties != null && bundleProperties.containsKey("Eclipse-SourceBundle");
    }

    public static boolean hasBundleShapeHeader(BundleDescription bundle) {
        Properties bundleProperties = (Properties)bundle.getUserObject();
        return bundleProperties != null && bundleProperties.containsKey("Eclipse-BundleShape");
    }

    public static String getSourceBundleHeader(BundleDescription bundle) {
        Properties bundleProperties = (Properties)bundle.getUserObject();
        if (bundleProperties == null || !bundleProperties.containsKey("Eclipse-SourceBundle")) {
            return "";
        }
        String header = bundleProperties.getProperty("Eclipse-SourceBundle");
        return header;
    }

    public static File getOldSourceLocation(BundleDescription bundle) {
        File previousSrcRoot;
        Properties props = (Properties)bundle.getUserObject();
        if (props == null || !props.containsKey("oldBundleLocation")) {
            return null;
        }
        String oldBundleLocation = props.getProperty("oldBundleLocation");
        if (oldBundleLocation != null && (previousSrcRoot = new File(oldBundleLocation, "src")).exists()) {
            return previousSrcRoot;
        }
        return null;
    }

    public static Map parseSourceBundleEntry(BundleDescription bundle) {
        ManifestElement[] elements;
        String header = Utils.getSourceBundleHeader(bundle);
        if (header.length() == 0) {
            return Collections.EMPTY_MAP;
        }
        HashMap map = new HashMap();
        try {
            elements = ManifestElement.parseHeader((String)"Eclipse-SourceBundle", (String)header);
        }
        catch (BundleException bundleException) {
            return Collections.EMPTY_MAP;
        }
        int i = 0;
        while (i < elements.length) {
            String key = elements[i].getValue();
            HashMap<String, String> subMap = new HashMap<String, String>(2);
            map.put(key, subMap);
            Enumeration e = elements[i].getDirectiveKeys();
            while (e != null && e.hasMoreElements()) {
                String directive = (String)e.nextElement();
                subMap.put(directive, elements[i].getDirective(directive));
            }
            e = elements[i].getKeys();
            while (e != null && e.hasMoreElements()) {
                String attribute = (String)e.nextElement();
                subMap.put(attribute, elements[i].getAttribute(attribute));
            }
            ++i;
        }
        return map;
    }

    public static Map parseExtraBundlesString(String input, boolean onlyId) {
        HashMap<String, Object> results = new HashMap<String, Object>();
        StringTokenizer tokenizer = null;
        tokenizer = onlyId ? (input.startsWith("plugin@") ? new StringTokenizer(input.substring(7), ";") : (input.startsWith("exclude@") || input.startsWith("feature@") ? new StringTokenizer(input.substring(8), ";") : new StringTokenizer(input, ";"))) : new StringTokenizer(input, ";");
        results.put(EXTRA_ID, tokenizer.nextToken());
        results.put(EXTRA_VERSION, Version.emptyVersion);
        results.put(EXTRA_UNPACK, Boolean.TRUE);
        while (tokenizer.hasMoreTokens()) {
            String token = tokenizer.nextToken();
            String value = null;
            int idx = token.indexOf(61);
            if (idx > 0 && idx < token.length() - 1 && (value = token.substring(idx + 1).trim()).charAt(0) == '\"' && value.charAt(value.length() - 1) == '\"') {
                value = value.substring(1, value.length() - 1);
            }
            if (token.startsWith(EXTRA_VERSION)) {
                results.put(EXTRA_VERSION, new Version(value));
                continue;
            }
            if (token.startsWith(EXTRA_UNPACK)) {
                results.put(EXTRA_UNPACK, Boolean.valueOf(value));
                continue;
            }
            if (token.startsWith(EXTRA_OS)) {
                results.put(EXTRA_OS, value);
                continue;
            }
            if (token.startsWith(EXTRA_WS)) {
                results.put(EXTRA_WS, value);
                continue;
            }
            if (token.startsWith(EXTRA_ARCH)) {
                results.put(EXTRA_ARCH, value);
                continue;
            }
            if (!token.startsWith(EXTRA_OPTIONAL)) continue;
            results.put(EXTRA_OPTIONAL, Boolean.valueOf(value));
        }
        return results;
    }

    public static boolean matchVersions(String version1, String version2) {
        if (version1 == null) {
            version1 = "0.0.0";
        }
        if (version2 == null) {
            version2 = "0.0.0";
        }
        if (version1.equals(version2) || version1.equals("0.0.0") || version2.equals("0.0.0")) {
            return true;
        }
        if (version1.endsWith("qualifier") || version2.endsWith("qualifier")) {
            int idx = version1.indexOf("qualifier");
            if (idx > -1) {
                version1 = version1.substring(0, idx);
            }
            return (version1 = version1.substring(0, idx = version2.indexOf("qualifier"))).length() > version2.length() ? version1.startsWith(version2) : version2.startsWith(version1);
        }
        return false;
    }

    public static int scan(StringBuffer buf, int start, String target) {
        return Utils.scan(buf, start, new String[]{target});
    }

    public static int scan(StringBuffer buf, int start, String[] targets) {
        int i = start;
        while (i < buf.length()) {
            int j = 0;
            while (j < targets.length) {
                String match;
                if (i < buf.length() - targets[j].length() && targets[j].equals(match = buf.substring(i, i + targets[j].length()))) {
                    return i;
                }
                ++j;
            }
            ++i;
        }
        return -1;
    }

    public static StringBuffer readFile(File target) throws IOException {
        return Utils.readFile(new FileInputStream(target));
    }

    public static StringBuffer readFile(InputStream stream) throws IOException {
        InputStreamReader reader = new InputStreamReader(new BufferedInputStream(stream));
        StringBuffer result = new StringBuffer();
        char[] buf = new char[4096];
        try {
            int count = reader.read(buf, 0, buf.length);
            while (count != -1) {
                result.append(buf, 0, count);
                count = reader.read(buf, 0, buf.length);
            }
        }
        catch (Throwable throwable) {
            try {
                reader.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            reader.close();
        }
        catch (IOException iOException) {}
        return result;
    }

    public static void updateVersion(File buildFile, String propertyName, String version) throws IOException {
        String newVersion;
        int end;
        StringBuffer buffer = Utils.readFile(buildFile);
        int pos = Utils.scan(buffer, 0, propertyName);
        if (pos == -1) {
            return;
        }
        if ((pos = Utils.scan(buffer, pos, "value")) == -1) {
            return;
        }
        int begin = Utils.scan(buffer, pos, "\"");
        if (begin == -1) {
            return;
        }
        if ((end = Utils.scan(buffer, ++begin, "\"")) == -1) {
            return;
        }
        String currentVersion = buffer.substring(begin, end);
        if (currentVersion.equals(newVersion = version)) {
            return;
        }
        buffer.replace(begin, end, newVersion);
        Utils.transferStreams(new ByteArrayInputStream(buffer.toString().getBytes()), new FileOutputStream(buildFile));
    }

    public static Enumeration getArrayEnumerator(Object[] array) {
        return new ArrayEnumeration(array);
    }

    public static void close(Object obj) {
        if (obj == null) {
            return;
        }
        try {
            if (obj instanceof InputStream) {
                ((InputStream)obj).close();
            } else if (obj instanceof ZipFile) {
                ((ZipFile)obj).close();
            } else if (obj instanceof OutputStream) {
                ((OutputStream)obj).close();
            }
        }
        catch (IOException iOException) {}
    }

    public static boolean guessUnpack(BundleDescription bundle, String[] classpath) {
        return org.eclipse.pde.internal.publishing.Utils.guessUnpack((BundleDescription)bundle, (String[])classpath);
    }

    public static Version extract3Segments(String s) {
        Version tmp = new Version(s);
        return new Version(tmp.getMajor(), tmp.getMinor(), tmp.getMicro());
    }

    private static boolean needsReplacement(String s) {
        return s.equalsIgnoreCase("0.0.0") || s.endsWith("qualifier");
    }

    public static String getEntryVersionMappings(FeatureEntry[] entries, BuildTimeSite site) {
        return Utils.getEntryVersionMappings(entries, site, null);
    }

    public static String getEntryVersionMappings(FeatureEntry[] entries, BuildTimeSite site, AssemblyInformation assembly) {
        if (entries == null || site == null) {
            return null;
        }
        StringBuffer result = new StringBuffer();
        int i = 0;
        while (i < entries.length) {
            block12: {
                String versionRequested = entries[i].getVersion();
                if (versionRequested == null) {
                    versionRequested = "0.0.0";
                }
                String id = entries[i].getId();
                String newVersion = null;
                if (Utils.needsReplacement(versionRequested)) {
                    block11: {
                        try {
                            if (entries[i].isPlugin()) {
                                BundleDescription model = null;
                                if (assembly != null) {
                                    model = assembly.getPlugin(entries[i].getId(), versionRequested);
                                }
                                if (model == null) {
                                    model = site.getRegistry().getResolvedBundle(id, versionRequested);
                                }
                                if (model != null) {
                                    newVersion = model.getVersion().toString();
                                }
                                break block11;
                            }
                            BuildTimeFeature feature = site.findFeature(id, versionRequested, false);
                            if (feature == null) break block11;
                            newVersion = feature.getVersion();
                        }
                        catch (CoreException coreException) {
                            break block12;
                        }
                    }
                    if (newVersion != null) {
                        result.append(id);
                        result.append(':');
                        result.append(Utils.extract3Segments(versionRequested));
                        result.append(',');
                        result.append(newVersion);
                        result.append(',');
                    }
                }
            }
            ++i;
        }
        return result.toString();
    }

    static class ArrayEnumeration
    implements Enumeration {
        private final Object[] array;
        int cur = 0;

        public ArrayEnumeration(Object[] array) {
            this.array = new Object[array.length];
            System.arraycopy(array, 0, this.array, 0, this.array.length);
        }

        public boolean hasMoreElements() {
            return this.cur < this.array.length;
        }

        public Object nextElement() {
            return this.array[this.cur++];
        }
    }
}

