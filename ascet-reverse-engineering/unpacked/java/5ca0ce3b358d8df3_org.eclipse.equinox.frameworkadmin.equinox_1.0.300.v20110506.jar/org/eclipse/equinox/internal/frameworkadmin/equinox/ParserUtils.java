/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.frameworkadmin.equinox;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Properties;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Log;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Messages;
import org.eclipse.equinox.internal.frameworkadmin.equinox.utils.FileUtils;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.osgi.util.NLS;

public class ParserUtils {
    private static final String FILE_PROTOCOL = "file:";

    public static File getOSGiInstallArea(List programArgs, Properties properties, LauncherData launcherData) {
        if (launcherData == null) {
            return null;
        }
        URI base = null;
        if (launcherData.getLauncher() != null) {
            base = launcherData.getLauncher().getParentFile().toURI();
        } else if (launcherData.getHome() != null) {
            base = launcherData.getHome().toURI();
        }
        File result = ParserUtils.getOSGiInstallArea(programArgs, properties, base);
        if (result != null) {
            return result;
        }
        if (launcherData.getHome() != null) {
            return launcherData.getHome();
        }
        if (launcherData.getFwJar() != null) {
            return ParserUtils.fromOSGiJarToOSGiInstallArea(launcherData.getFwJar().getAbsolutePath());
        }
        File launcherFile = launcherData.getLauncher();
        if (launcherFile != null) {
            Path launcherPath;
            if ("macosx".equals(launcherData.getOS()) && (launcherPath = new Path(launcherFile.getAbsolutePath())).segmentCount() > 4) {
                launcherPath = launcherPath.removeLastSegments(4);
                return launcherPath.toFile();
            }
            return launcherFile.getParentFile();
        }
        return null;
    }

    public static URI getFrameworkJar(List lines, URI launcherFolder) {
        String fwk = ParserUtils.getValueForArgument("-framework", lines);
        if (fwk == null) {
            URI location = FileUtils.getEclipsePluginFullLocation("org.eclipse.osgi", new File(URIUtil.toFile((URI)launcherFolder), "plugins"));
            if (location != null) {
                return location;
            }
            return null;
        }
        try {
            return URIUtil.makeAbsolute((URI)URIUtil.fromString((String)fwk), (URI)launcherFolder);
        }
        catch (URISyntaxException uRISyntaxException) {
            Log.log(1, NLS.bind((String)Messages.exception_createAbsoluteURI, (Object)fwk, (Object)launcherFolder));
            return null;
        }
    }

    public static File getOSGiInstallArea(List args, Properties properties, URI base) {
        if (args == null) {
            return null;
        }
        String install = ParserUtils.getValueForArgument("-install", args);
        if (install == null && properties != null) {
            install = properties.getProperty("osgi.install.area");
        }
        if (install != null) {
            File installFile;
            if (install.startsWith(FILE_PROTOCOL)) {
                install = install.substring(FILE_PROTOCOL.length() + 1);
            }
            if ((installFile = new File(install)).isAbsolute()) {
                return installFile;
            }
            return URIUtil.toFile((URI)URIUtil.makeAbsolute((URI)installFile.toURI(), (URI)base));
        }
        String startup = ParserUtils.getValueForArgument("-startup", args);
        if (startup != null && base != null) {
            File osgiInstallArea;
            if (startup.startsWith(FILE_PROTOCOL)) {
                try {
                    URI startupURI = new URI(startup);
                    startup = new File(startupURI).getAbsolutePath();
                }
                catch (URISyntaxException uRISyntaxException) {
                    startup = startup.substring(FILE_PROTOCOL.length() + 1);
                }
            }
            if ((osgiInstallArea = ParserUtils.fromOSGiJarToOSGiInstallArea(startup)).isAbsolute()) {
                return osgiInstallArea;
            }
            File baseFile = new File(base);
            return new File(baseFile, osgiInstallArea.getPath());
        }
        return null;
    }

    public static File fromOSGiJarToOSGiInstallArea(String path) {
        IPath parentFolder = new Path(path).removeLastSegments(1);
        if ("plugins".equalsIgnoreCase(parentFolder.lastSegment())) {
            return parentFolder.removeLastSegments(1).toFile();
        }
        return parentFolder.toFile();
    }

    public static boolean isArgumentSet(String arg, List args) {
        if (arg == null || args == null) {
            return false;
        }
        int i = 0;
        while (i < args.size()) {
            if (args.get(i) != null && ((String)args.get(i)).equalsIgnoreCase(arg)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public static String getValueForArgument(String arg, List args) {
        if (arg == null || args == null) {
            return null;
        }
        int i = 0;
        while (i < args.size()) {
            String value;
            if (args.get(i) != null && ((String)args.get(i)).equalsIgnoreCase(arg) && i + 1 < args.size() && (value = (String)args.get(i + 1)) != null && value.length() > 0 && value.charAt(0) != '-') {
                return value;
            }
            ++i;
        }
        return null;
    }

    public static boolean setValueForArgument(String arg, String value, List args) {
        if (arg == null || args == null) {
            return false;
        }
        int i = 0;
        while (i < args.size()) {
            String currentArg;
            if (args.get(i) != null && (currentArg = ((String)args.get(i)).trim()).equalsIgnoreCase(arg)) {
                if (i + 1 < args.size()) {
                    String nextArg = (String)args.get(i + 1);
                    if (nextArg == null || nextArg.charAt(0) != '-') {
                        args.set(i + 1, value);
                    } else {
                        args.add(i + 1, value);
                    }
                    return true;
                }
                args.add(value);
                return true;
            }
            ++i;
        }
        args.add(arg);
        args.add(value);
        return true;
    }

    public static boolean removeArgument(String arg, List args) {
        if (arg == null || args == null) {
            return false;
        }
        int i = 0;
        while (i < args.size()) {
            String currentArg;
            if (args.get(i) != null && (currentArg = ((String)args.get(i)).trim()).equalsIgnoreCase(arg)) {
                args.set(i, null);
                while (i + 1 < args.size() && args.get(i + 1) != null && ((String)args.get(i + 1)).charAt(0) != '-') {
                    args.set(i + 1, null);
                    ++i;
                }
            }
            ++i;
        }
        return false;
    }
}

