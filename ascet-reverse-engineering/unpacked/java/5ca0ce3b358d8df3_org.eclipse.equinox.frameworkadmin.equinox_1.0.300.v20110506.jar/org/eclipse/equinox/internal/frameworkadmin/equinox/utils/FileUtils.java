/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.osgi.framework.Version
 */
package org.eclipse.equinox.internal.frameworkadmin.equinox.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.frameworkadmin.equinox.ParserUtils;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.osgi.framework.Version;

public class FileUtils {
    private static String FILE_SCHEME = "file";
    private static String FILE_PROTOCOL = "file:";
    private static String REFERENCE_PROTOCOL = "reference:";
    private static String INITIAL_PREFIX = "initial@";

    public static URI getEclipseRealLocation(Manipulator manipulator, String location) {
        try {
            new URL(location);
            return URIUtil.makeAbsolute((URI)new URI(location), (URI)ParserUtils.getOSGiInstallArea(Arrays.asList(manipulator.getLauncherData().getProgramArgs()), manipulator.getConfigData().getProperties(), manipulator.getLauncherData()).toURI());
        }
        catch (URISyntaxException uRISyntaxException) {
        }
        catch (MalformedURLException malformedURLException) {}
        File base = new File(location);
        if (!base.isAbsolute()) {
            String pluginsDir = FileUtils.getSysPath(manipulator);
            if (pluginsDir == null) {
                return null;
            }
            base = new File(pluginsDir, location);
        }
        return FileUtils.getEclipsePluginFullLocation(base.getName(), base.getParentFile());
    }

    private static String getSysPath(Manipulator manipulator) {
        Properties properties = manipulator.getConfigData().getProperties();
        String path = (String)properties.get("osgi.syspath");
        if (path != null) {
            return path;
        }
        path = (String)properties.get("osgi.framework");
        if (path != null) {
            if (path.startsWith(FILE_PROTOCOL)) {
                path = path.substring(FILE_PROTOCOL.length());
            }
            File file = new File(path);
            return file.getParentFile().getAbsolutePath();
        }
        LauncherData launcherData = manipulator.getLauncherData();
        File home = launcherData.getHome();
        File pluginsDir = null;
        if (home != null) {
            pluginsDir = new File(home, "plugins");
        } else if (launcherData.getFwJar() != null) {
            pluginsDir = launcherData.getFwJar().getParentFile();
        } else if (launcherData.getLauncher() != null) {
            File launcherDir = null;
            if ("macosx".equals(launcherData.getOS())) {
                Path launcherPath = new Path(launcherData.getLauncher().getAbsolutePath());
                if (launcherPath.segmentCount() > 4) {
                    launcherPath = launcherPath.removeLastSegments(4);
                    launcherDir = launcherPath.toFile();
                }
            } else {
                launcherDir = launcherData.getLauncher().getParentFile();
            }
            pluginsDir = new File(launcherDir, "plugins");
        }
        if (pluginsDir != null) {
            return pluginsDir.getAbsolutePath();
        }
        return null;
    }

    public static String removeEquinoxSpecificProtocols(String location) {
        if (location == null) {
            return null;
        }
        String ret = location;
        if (location.startsWith(REFERENCE_PROTOCOL)) {
            ret = location.substring(REFERENCE_PROTOCOL.length());
        } else if (location.startsWith(INITIAL_PREFIX)) {
            ret = location.substring(INITIAL_PREFIX.length());
        }
        return ret;
    }

    public static URI getRealLocation(Manipulator manipulator, String location) {
        return FileUtils.getEclipseRealLocation(manipulator, FileUtils.removeEquinoxSpecificProtocols(location));
    }

    private static Version getVersion(String version) {
        if (version.length() == 0) {
            return Version.emptyVersion;
        }
        if (version.endsWith(".jar")) {
            version = version.substring(0, version.length() - 4);
        }
        try {
            return new Version(version);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return null;
        }
    }

    public static URI getEclipsePluginFullLocation(String pluginName, File bundlesDir) {
        if (bundlesDir == null) {
            return null;
        }
        File[] candidates = bundlesDir.listFiles();
        if (candidates == null) {
            return null;
        }
        File result = null;
        Version maxVersion = null;
        int i = 0;
        while (i < candidates.length) {
            String candidateName = candidates[i].getName();
            if (candidateName.startsWith(pluginName) && (candidateName.length() <= pluginName.length() || candidateName.charAt(pluginName.length()) == '_' || candidates[i].isFile() && candidateName.length() == 4 + pluginName.length() && candidateName.endsWith(".jar"))) {
                Version currentVersion;
                String candidateVersion = "";
                if (candidateName.length() > pluginName.length() + 1 && candidateName.charAt(pluginName.length()) == '_') {
                    candidateVersion = candidateName.substring(pluginName.length() + 1);
                }
                if ((currentVersion = FileUtils.getVersion(candidateVersion)) != null && (maxVersion == null || maxVersion.compareTo(currentVersion) < 0)) {
                    maxVersion = currentVersion;
                    result = candidates[i];
                }
            }
            ++i;
        }
        return result != null ? result.getAbsoluteFile().toURI() : null;
    }

    public static URI fromPath(String path) throws URISyntaxException {
        File f;
        if (path.startsWith(FILE_PROTOCOL)) {
            try {
                return new URI(path);
            }
            catch (URISyntaxException uRISyntaxException) {
                path = path.substring(FILE_PROTOCOL.length() + 1);
            }
        }
        if ((f = new File(path)).isAbsolute()) {
            return f.toURI();
        }
        return URIUtil.fromString((String)(String.valueOf(FILE_PROTOCOL) + path));
    }

    public static String toPath(URI uri) {
        if (!FILE_SCHEME.equalsIgnoreCase(uri.getScheme())) {
            return new File(URIUtil.toUnencodedString((URI)uri)).getPath();
        }
        return URIUtil.toFile((URI)uri).getAbsolutePath();
    }

    public static String toFileURL(URI uri) {
        if (uri.getScheme() != null) {
            return URIUtil.toUnencodedString((URI)uri);
        }
        return String.valueOf(FILE_PROTOCOL) + URIUtil.toUnencodedString((URI)uri);
    }

    public static URI fromFileURL(String url) throws URISyntaxException {
        if (url.startsWith(FILE_PROTOCOL)) {
            return URIUtil.fromString((String)(new File(url.substring(FILE_PROTOCOL.length())).isAbsolute() ? url : url.substring(FILE_PROTOCOL.length())));
        }
        throw new URISyntaxException(url, "Not a file url");
    }

    public static List loadFile(File file) throws IOException {
        ArrayList<String> arrayList;
        block8: {
            BufferedReader br = null;
            try {
                String line;
                br = new BufferedReader(new FileReader(file));
                ArrayList<String> list = new ArrayList<String>();
                while ((line = br.readLine()) != null) {
                    if (line.trim().length() <= 0) continue;
                    list.add(line);
                }
                arrayList = list;
                if (br == null) break block8;
            }
            catch (Throwable throwable) {
                if (br != null) {
                    try {
                        br.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            try {
                br.close();
            }
            catch (IOException iOException) {}
        }
        return arrayList;
    }
}

