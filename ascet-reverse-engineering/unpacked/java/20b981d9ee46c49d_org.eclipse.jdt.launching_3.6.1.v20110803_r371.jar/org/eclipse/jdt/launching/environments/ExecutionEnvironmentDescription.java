/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jdt.launching.environments;

import com.ibm.icu.text.MessageFormat;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.internal.launching.EEVMType;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.internal.launching.StandardVMType;
import org.eclipse.jdt.launching.LibraryLocation;

public final class ExecutionEnvironmentDescription {
    public static final String ENDORSED_DIRS = "-Dee.endorsed.dirs";
    public static final String BOOT_CLASS_PATH = "-Dee.bootclasspath";
    public static final String SOURCE_DEFAULT = "-Dee.src";
    public static final String SOURCE_MAP = "-Dee.src.map";
    public static final String JAVADOC_LOC = "-Dee.javadoc";
    public static final String ADDITIONAL_DIRS = "-Dee.additional.dirs";
    public static final String EXTENSION_DIRS = "-Dee.ext.dirs";
    public static final String LANGUAGE_LEVEL = "-Dee.language.level";
    public static final String CLASS_LIB_LEVEL = "-Dee.class.library.level";
    public static final String EXECUTABLE = "-Dee.executable";
    public static final String EXECUTABLE_CONSOLE = "-Dee.executable.console";
    public static final String JAVA_HOME = "-Djava.home";
    public static final String DEBUG_ARGS = "-Dee.debug.args";
    public static final String EE_NAME = "-Dee.name";
    public static final String EE_HOME = "-Dee.home";
    private static final String VAR_EE_HOME = "${ee.home}";
    private static final String EE_ARG_FILTER = "-Dee.";
    private static final Character WILDCARD_SINGLE_CHAR = new Character('?');
    private static final Character WILDCARD_MULTI_CHAR = new Character('*');
    private static final String REGEX_SPECIAL_CHARS = "+()^$.{}[]|\\";
    private Map fProperties = null;

    public ExecutionEnvironmentDescription(File eeFile) throws CoreException {
        this.initProperties(eeFile);
    }

    public Map getProperties() {
        return this.fProperties;
    }

    public String getProperty(String property) {
        return (String)this.fProperties.get(property);
    }

    public LibraryLocation[] getLibraryLocations() {
        ArrayList allLibs = new ArrayList();
        String dirs = this.getProperty(ENDORSED_DIRS);
        if (dirs != null) {
            allLibs.addAll(StandardVMType.gatherAllLibraries(this.resolvePaths(dirs)));
        }
        if ((dirs = this.getProperty(BOOT_CLASS_PATH)) != null) {
            String[] bootpath = this.resolvePaths(dirs);
            ArrayList<LibraryLocation> boot = new ArrayList<LibraryLocation>(bootpath.length);
            IPath src = this.getSourceLocation();
            URL url = this.getJavadocLocation();
            int i = 0;
            while (i < bootpath.length) {
                Path path = new Path(bootpath[i]);
                File lib = path.toFile();
                if (lib.exists() && lib.isFile()) {
                    LibraryLocation libraryLocation = new LibraryLocation((IPath)path, src, (IPath)Path.EMPTY, url);
                    boot.add(libraryLocation);
                }
                ++i;
            }
            allLibs.addAll(boot);
        }
        if ((dirs = this.getProperty(ADDITIONAL_DIRS)) != null) {
            allLibs.addAll(StandardVMType.gatherAllLibraries(this.resolvePaths(dirs)));
        }
        if ((dirs = this.getProperty(EXTENSION_DIRS)) != null) {
            allLibs.addAll(StandardVMType.gatherAllLibraries(this.resolvePaths(dirs)));
        }
        HashSet<String> set = new HashSet<String>();
        LibraryLocation lib = null;
        ListIterator liter = allLibs.listIterator();
        while (liter.hasNext()) {
            lib = (LibraryLocation)liter.next();
            if (set.add(lib.getSystemLibraryPath().toOSString())) continue;
            liter.remove();
        }
        this.addSourceLocationsToLibraries(this.getSourceMap(), allLibs);
        return allLibs.toArray(new LibraryLocation[allLibs.size()]);
    }

    public String getVMArguments() {
        StringBuffer arguments = new StringBuffer();
        Iterator entries = this.fProperties.entrySet().iterator();
        while (entries.hasNext()) {
            boolean appendArgument;
            Map.Entry entry = entries.next();
            String key = (String)entry.getKey();
            String value = (String)entry.getValue();
            boolean bl = appendArgument = !key.startsWith(EE_ARG_FILTER);
            if (!appendArgument) continue;
            arguments.append(key);
            if (!value.equals("")) {
                arguments.append('=');
                value = this.resolveHome(value);
                if (value.indexOf(32) > -1) {
                    arguments.append('\"').append(value).append('\"');
                } else {
                    arguments.append(value);
                }
            }
            arguments.append(' ');
        }
        if (arguments.charAt(arguments.length() - 1) == ' ') {
            arguments.deleteCharAt(arguments.length() - 1);
        }
        return arguments.toString();
    }

    public File getExecutable() {
        String[] paths;
        String property = this.getProperty(EXECUTABLE);
        if (property != null && (paths = this.resolvePaths(property)).length == 1) {
            return new File(paths[0]);
        }
        return null;
    }

    public File getConsoleExecutable() {
        String[] paths;
        String property = this.getProperty(EXECUTABLE_CONSOLE);
        if (property != null && (paths = this.resolvePaths(property)).length == 1) {
            return new File(paths[0]);
        }
        return null;
    }

    private void initProperties(File eeFile) throws CoreException {
        String value;
        String key;
        HashMap<String, String> properties = new HashMap<String, String>();
        String eeHome = eeFile.getParentFile().getAbsolutePath();
        BufferedReader bufferedReader = null;
        try {
            try {
                FileReader reader = new FileReader(eeFile);
                bufferedReader = new BufferedReader(reader);
                String line = bufferedReader.readLine();
                while (line != null) {
                    if (!line.startsWith("#") && line.trim().length() > 0) {
                        int eq = line.indexOf(61);
                        if (eq > 0) {
                            key = line.substring(0, eq);
                            value = null;
                            if (line.length() > eq + 1) {
                                value = line.substring(eq + 1).trim();
                            }
                            properties.put(key, value);
                        } else {
                            properties.put(line, "");
                        }
                    }
                    line = bufferedReader.readLine();
                }
            }
            catch (FileNotFoundException e) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.ExecutionEnvironmentDescription_0, (Object[])new String[]{eeFile.getPath()}), (Throwable)e));
            }
            catch (IOException e) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.ExecutionEnvironmentDescription_1, (Object[])new String[]{eeFile.getPath()}), (Throwable)e));
            }
        }
        catch (Throwable throwable) {
            try {
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            if (bufferedReader != null) {
                bufferedReader.close();
            }
        }
        catch (IOException iOException) {}
        if (!properties.containsKey(EE_HOME)) {
            properties.put(EE_HOME, eeHome);
        }
        this.fProperties = properties;
        Iterator entries = properties.entrySet().iterator();
        HashMap<String, String> resolved = new HashMap<String, String>(properties.size());
        while (entries.hasNext()) {
            Map.Entry entry = entries.next();
            key = entry.getKey();
            value = (String)entry.getValue();
            if (value != null) {
                value = this.resolveHome(value);
                resolved.put(key, value);
                continue;
            }
            resolved.put(key, "");
        }
        this.fProperties = resolved;
    }

    private String resolveHome(String value) {
        int start = 0;
        int index = value.indexOf(VAR_EE_HOME, start);
        StringBuffer replaced = null;
        String eeHome = this.getProperty(EE_HOME);
        while (index >= 0) {
            if (replaced == null) {
                replaced = new StringBuffer();
            }
            replaced.append(value.substring(start, index));
            replaced.append(eeHome);
            start = index + VAR_EE_HOME.length();
            index = value.indexOf(VAR_EE_HOME, start);
        }
        if (replaced != null) {
            replaced.append(value.substring(start));
            return replaced.toString();
        }
        return value;
    }

    private String[] resolvePaths(String paths) {
        String[] strings = paths.split(File.pathSeparator, -1);
        String eeHome = this.getProperty(EE_HOME);
        Path root = new Path(eeHome);
        int i = 0;
        while (i < strings.length) {
            strings[i] = this.makePathAbsolute(strings[i], (IPath)root);
            ++i;
        }
        return strings;
    }

    private String makePathAbsolute(String pathString, IPath root) {
        Path path = new Path(pathString.trim());
        if (!path.isEmpty() && !path.isAbsolute()) {
            IPath filePath = root.append((IPath)path);
            return filePath.toOSString();
        }
        return path.toOSString();
    }

    /*
     * Unable to fully structure code
     */
    private Map getSourceMap() {
        block13: {
            srcMapString = this.getProperty("-Dee.src.map");
            srcMap = new HashMap<String, String>();
            if (srcMapString == null) break block13;
            entries = srcMapString.split(File.pathSeparator);
            i = 0;
            while (i < entries.length) {
                block15: {
                    block14: {
                        index = entries[i].indexOf(61);
                        if (index <= 0 || index >= entries[i].length() - 1) break block14;
                        root = new Path(this.getProperty("-Dee.home"));
                        key = entries[i].substring(0, index);
                        value = entries[i].substring(index + 1);
                        key = this.makePathAbsolute(key, (IPath)root);
                        value = this.makePathAbsolute(value, (IPath)root);
                        wildcards = new ArrayList<Character>();
                        keyBuffer = new StringBuffer();
                        chars = key.toCharArray();
                        j = 0;
                        while (j < chars.length) {
                            if (chars[j] == ExecutionEnvironmentDescription.WILDCARD_MULTI_CHAR.charValue()) {
                                wildcards.add(ExecutionEnvironmentDescription.WILDCARD_MULTI_CHAR);
                                keyBuffer.append("(.*)");
                            } else if (chars[j] == ExecutionEnvironmentDescription.WILDCARD_SINGLE_CHAR.charValue()) {
                                wildcards.add(ExecutionEnvironmentDescription.WILDCARD_SINGLE_CHAR);
                                keyBuffer.append("(.)");
                            } else if ("+()^$.{}[]|\\".indexOf(chars[j]) != -1) {
                                keyBuffer.append('\\').append(chars[j]);
                            } else {
                                keyBuffer.append(chars[j]);
                            }
                            ++j;
                        }
                        currentWild = 0;
                        valueBuffer = new StringBuffer();
                        chars = value.toCharArray();
                        j = 0;
                        while (j < chars.length) {
                            if (chars[j] != ExecutionEnvironmentDescription.WILDCARD_MULTI_CHAR.charValue() && chars[j] != ExecutionEnvironmentDescription.WILDCARD_SINGLE_CHAR.charValue()) ** GOTO lbl56
                            if (currentWild >= wildcards.size()) ** GOTO lbl54
                            wild = (Character)wildcards.get(currentWild);
                            if (chars[j] == wild.charValue()) {
                                valueBuffer.append('$').append(currentWild + 1);
                                ++currentWild;
                            } else {
                                LaunchingPlugin.log(MessageFormat.format((String)LaunchingMessages.EEVMType_5, (Object[])new String[]{entries[i]}));
                                break;
lbl54:
                                // 1 sources

                                LaunchingPlugin.log(MessageFormat.format((String)LaunchingMessages.EEVMType_5, (Object[])new String[]{entries[i]}));
                                break;
lbl56:
                                // 1 sources

                                if ("+()^$.{}[]|\\".indexOf(chars[j]) != -1) {
                                    valueBuffer.append('\\').append(chars[j]);
                                } else {
                                    valueBuffer.append(chars[j]);
                                }
                            }
                            ++j;
                        }
                        srcMap.put(keyBuffer.toString(), valueBuffer.toString());
                        break block15;
                    }
                    LaunchingPlugin.log(MessageFormat.format((String)LaunchingMessages.EEVMType_6, (Object[])new String[]{entries[i]}));
                }
                ++i;
            }
        }
        return srcMap;
    }

    private void addSourceLocationsToLibraries(Map srcMap, List libraries) {
        Iterator patternIterator = srcMap.keySet().iterator();
        while (patternIterator.hasNext()) {
            String currentKey = (String)patternIterator.next();
            Pattern currentPattern = Pattern.compile(currentKey);
            Matcher matcher = currentPattern.matcher("");
            Iterator locationIterator = libraries.iterator();
            while (locationIterator.hasNext()) {
                String sourceLocation;
                Path sourcePath;
                LibraryLocation currentLibrary = (LibraryLocation)locationIterator.next();
                matcher.reset(currentLibrary.getSystemLibraryPath().toOSString());
                if (!matcher.find() || !(sourcePath = new Path(sourceLocation = matcher.replaceAll((String)srcMap.get(currentKey)))).toFile().exists()) continue;
                currentLibrary.setSystemLibrarySource((IPath)sourcePath);
            }
        }
    }

    private IPath getSourceLocation() {
        String src = this.getProperty(SOURCE_DEFAULT);
        if (src != null) {
            String eeHome = this.getProperty(EE_HOME);
            src = this.makePathAbsolute(src, (IPath)new Path(eeHome));
            return new Path(src);
        }
        return Path.EMPTY;
    }

    private URL getJavadocLocation() {
        return EEVMType.getJavadocLocation(this.fProperties);
    }
}

