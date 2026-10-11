/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.runtime;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Map;
import org.eclipse.core.internal.runtime.Activator;
import org.eclipse.core.internal.runtime.PlatformURLPluginConnection;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.osgi.framework.Bundle;

public class FindSupport {
    public static final String PROP_NL = "osgi.nl";
    public static final String PROP_OS = "osgi.os";
    public static final String PROP_WS = "osgi.ws";
    public static final String PROP_ARCH = "osgi.arch";
    private static String[] NL_JAR_VARIANTS = FindSupport.buildNLVariants(Activator.getContext() == null ? System.getProperty("osgi.nl") : Activator.getContext().getProperty("osgi.nl"));

    private static String[] buildNLVariants(String nl) {
        ArrayList<String> result = new ArrayList<String>();
        Path base = new Path("nl");
        IPath path = new Path(nl.replace('_', '/'));
        while (path.segmentCount() > 0) {
            result.add(base.append(path).toString());
            if (path.segmentCount() > 1) {
                result.add(base.append(path.toString().replace('/', '_')).toString());
            }
            path = path.removeLastSegments(1);
        }
        return result.toArray(new String[result.size()]);
    }

    public static URL find(Bundle bundle, IPath path) {
        return FindSupport.find(bundle, path, null);
    }

    public static URL find(Bundle b, IPath path, Map override) {
        return FindSupport.find(b, path, override, null);
    }

    public static URL[] findEntries(Bundle bundle, IPath path) {
        return FindSupport.findEntries(bundle, path, null);
    }

    public static URL[] findEntries(Bundle bundle, IPath path, Map override) {
        ArrayList results = new ArrayList(1);
        FindSupport.find(bundle, path, override, results);
        return results.toArray(new URL[results.size()]);
    }

    private static URL find(Bundle b, IPath path, Map override, ArrayList multiple) {
        if (path == null) {
            return null;
        }
        URL result = null;
        if (path.isEmpty() || path.isRoot()) {
            result = FindSupport.findInPlugin(b, Path.EMPTY, multiple);
            if (result == null || multiple != null) {
                result = FindSupport.findInFragments(b, Path.EMPTY, multiple);
            }
            return result;
        }
        String first = path.segment(0);
        if (first.charAt(0) != '$') {
            result = FindSupport.findInPlugin(b, path, multiple);
            if (result == null || multiple != null) {
                result = FindSupport.findInFragments(b, path, multiple);
            }
            return result;
        }
        IPath rest = path.removeFirstSegments(1);
        if (first.equalsIgnoreCase("$nl$")) {
            return FindSupport.findNL(b, rest, override, multiple);
        }
        if (first.equalsIgnoreCase("$os$")) {
            return FindSupport.findOS(b, rest, override, multiple);
        }
        if (first.equalsIgnoreCase("$ws$")) {
            return FindSupport.findWS(b, rest, override, multiple);
        }
        if (first.equalsIgnoreCase("$files$")) {
            return null;
        }
        return null;
    }

    private static URL findOS(Bundle b, IPath path, Map override, ArrayList multiple) {
        String os = null;
        if (override != null) {
            try {
                os = (String)override.get("$os$");
            }
            catch (ClassCastException classCastException) {}
        }
        if (os == null) {
            os = Activator.getContext().getProperty(PROP_OS);
        }
        if (os.length() == 0) {
            return null;
        }
        String osArch = null;
        if (override != null) {
            try {
                osArch = (String)override.get("$arch$");
            }
            catch (ClassCastException classCastException) {}
        }
        if (osArch == null) {
            osArch = Activator.getContext().getProperty(PROP_ARCH);
        }
        if (osArch.length() == 0) {
            return null;
        }
        URL result = null;
        IPath base = new Path("os").append(os).append(osArch);
        while (base.segmentCount() != 1) {
            IPath filePath = base.append(path);
            result = FindSupport.findInPlugin(b, filePath, multiple);
            if (result != null && multiple == null) {
                return result;
            }
            result = FindSupport.findInFragments(b, filePath, multiple);
            if (result != null && multiple == null) {
                return result;
            }
            base = base.removeLastSegments(1);
        }
        result = FindSupport.findInPlugin(b, path, multiple);
        if (result != null && multiple == null) {
            return result;
        }
        return FindSupport.findInFragments(b, path, multiple);
    }

    private static URL findWS(Bundle b, IPath path, Map override, ArrayList multiple) {
        IPath filePath;
        URL result;
        String ws = null;
        if (override != null) {
            try {
                ws = (String)override.get("$ws$");
            }
            catch (ClassCastException classCastException) {}
        }
        if (ws == null) {
            ws = Activator.getContext().getProperty(PROP_WS);
        }
        if ((result = FindSupport.findInPlugin(b, filePath = new Path("ws").append(ws).append(path), multiple)) != null && multiple == null) {
            return result;
        }
        result = FindSupport.findInFragments(b, filePath, multiple);
        if (result != null && multiple == null) {
            return result;
        }
        result = FindSupport.findInPlugin(b, path, multiple);
        if (result != null && multiple == null) {
            return result;
        }
        return FindSupport.findInFragments(b, path, multiple);
    }

    private static URL findNL(Bundle b, IPath path, Map override, ArrayList multiple) {
        String nl = null;
        String[] nlVariants = null;
        if (override != null) {
            try {
                nl = (String)override.get("$nl$");
            }
            catch (ClassCastException classCastException) {}
        }
        String[] stringArray = nlVariants = nl == null ? NL_JAR_VARIANTS : FindSupport.buildNLVariants(nl);
        if (nl != null && nl.length() == 0) {
            return null;
        }
        URL result = null;
        int i = 0;
        while (i < nlVariants.length) {
            IPath filePath = new Path(nlVariants[i]).append(path);
            result = FindSupport.findInPlugin(b, filePath, multiple);
            if (result != null && multiple == null) {
                return result;
            }
            result = FindSupport.findInFragments(b, filePath, multiple);
            if (result != null && multiple == null) {
                return result;
            }
            ++i;
        }
        result = FindSupport.findInPlugin(b, path, multiple);
        if (result != null && multiple == null) {
            return result;
        }
        return FindSupport.findInFragments(b, path, multiple);
    }

    private static URL findInPlugin(Bundle b, IPath filePath, ArrayList multiple) {
        URL result = b.getEntry(filePath.toString());
        if (result != null && multiple != null) {
            multiple.add(result);
        }
        return result;
    }

    private static URL findInFragments(Bundle b, IPath filePath, ArrayList multiple) {
        Activator activator = Activator.getDefault();
        if (activator == null) {
            return null;
        }
        Bundle[] fragments = activator.getFragments(b);
        if (fragments == null) {
            return null;
        }
        if (multiple != null) {
            multiple.ensureCapacity(fragments.length + 1);
        }
        int i = 0;
        while (i < fragments.length) {
            URL fileURL = fragments[i].getEntry(filePath.toString());
            if (fileURL != null) {
                if (multiple == null) {
                    return fileURL;
                }
                multiple.add(fileURL);
            }
            ++i;
        }
        return null;
    }

    public static final InputStream openStream(Bundle bundle, IPath file, boolean substituteArgs) throws IOException {
        URL url = null;
        if (!substituteArgs) {
            url = FindSupport.findInPlugin(bundle, file, null);
            if (url == null) {
                url = FindSupport.findInFragments(bundle, file, null);
            }
        } else {
            url = FindSupport.find(bundle, file);
        }
        if (url != null) {
            return url.openStream();
        }
        throw new IOException("Cannot find " + file.toString());
    }

    public static URL find(URL url) {
        if (!"platform".equalsIgnoreCase(url.getProtocol())) {
            return null;
        }
        String spec = url.getFile().trim();
        Object[] obj = null;
        try {
            obj = PlatformURLPluginConnection.parse(spec, url);
        }
        catch (IOException e) {
            RuntimeLog.log(new Status(4, "org.eclipse.core.runtime", "Invalid input url:" + url, e));
            return null;
        }
        Bundle bundle = (Bundle)obj[0];
        String path = (String)obj[1];
        if ("/".equals(path)) {
            return bundle.getEntry(path);
        }
        return FindSupport.find(bundle, new Path(path), null);
    }
}

