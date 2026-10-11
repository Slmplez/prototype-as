/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.bundlefile;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.AccessController;
import java.util.ArrayList;
import java.util.Enumeration;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.internal.protocol.bundleresource.Handler;
import org.eclipse.osgi.framework.util.SecureAction;
import org.eclipse.osgi.util.ManifestElement;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class BundleFile {
    protected static final String PROP_SETPERMS_CMD = "osgi.filepermissions.command";
    static final SecureAction secureAction = AccessController.doPrivileged(SecureAction.createSecureAction());
    protected File basefile;
    private int mruIndex = -1;

    public BundleFile() {
    }

    public BundleFile(File basefile) {
        this.basefile = basefile;
    }

    public abstract File getFile(String var1, boolean var2);

    public abstract BundleEntry getEntry(String var1);

    public abstract Enumeration<String> getEntryPaths(String var1);

    public abstract void close() throws IOException;

    public abstract void open() throws IOException;

    public abstract boolean containsDir(String var1);

    public URL getResourceURL(String path, long hostBundleID) {
        return this.getResourceURL(path, hostBundleID, 0);
    }

    public URL getResourceURL(String path, long hostBundleID, int index) {
        return this.internalGetResourceURL(path, null, hostBundleID, index);
    }

    public URL getResourceURL(String path, BaseData hostData, int index) {
        return this.internalGetResourceURL(path, hostData, 0L, index);
    }

    private URL internalGetResourceURL(String path, BaseData hostData, long hostBundleID, int index) {
        BundleEntry bundleEntry = this.getEntry(path);
        if (bundleEntry == null) {
            return null;
        }
        if (hostData != null) {
            hostBundleID = hostData.getBundleID();
        }
        path = BundleFile.fixTrailingSlash(path, bundleEntry);
        try {
            return secureAction.getURL("bundleresource", new StringBuffer(String.valueOf(Long.toString(hostBundleID))).append(".fwk").append(Integer.toString(hostData.getAdaptor().hashCode())).toString(), index, path, new Handler(bundleEntry, hostData == null ? null : hostData.getAdaptor()));
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }

    public File getBaseFile() {
        return this.basefile;
    }

    void setMruIndex(int index) {
        this.mruIndex = index;
    }

    int getMruIndex() {
        return this.mruIndex;
    }

    public static void setPermissions(File file) {
        String commandProp = FrameworkProperties.getProperty(PROP_SETPERMS_CMD);
        if (commandProp == null) {
            commandProp = FrameworkProperties.getProperty("org.osgi.framework.command.execpermission");
        }
        if (commandProp == null) {
            return;
        }
        String[] temp = ManifestElement.getArrayFromList(commandProp, " ");
        ArrayList<String> command = new ArrayList<String>(temp.length + 1);
        boolean foundFullPath = false;
        int i = 0;
        while (i < temp.length) {
            if ("[fullpath]".equals(temp[i]) || "${abspath}".equals(temp[i])) {
                command.add(file.getAbsolutePath());
                foundFullPath = true;
            } else {
                command.add(temp[i]);
            }
            ++i;
        }
        if (!foundFullPath) {
            command.add(file.getAbsolutePath());
        }
        try {
            Runtime.getRuntime().exec(command.toArray(new String[command.size()])).waitFor();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String toString() {
        return String.valueOf(this.basefile);
    }

    public static String fixTrailingSlash(String path, BundleEntry entry) {
        boolean entrySlash;
        String name;
        if (path.length() == 0) {
            return "/";
        }
        if (path.charAt(0) != '/') {
            path = new StringBuffer(String.valueOf('/')).append(path).toString();
        }
        if ((name = entry.getName()).length() == 0) {
            return path;
        }
        boolean pathSlash = path.charAt(path.length() - 1) == '/';
        boolean bl = entrySlash = name.length() > 0 && name.charAt(name.length() - 1) == '/';
        if (entrySlash != pathSlash) {
            path = entrySlash ? new StringBuffer(String.valueOf(path)).append('/').toString() : path.substring(0, path.length() - 1);
        }
        return path;
    }
}

