/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.fetch;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.build.IAntScript;
import org.eclipse.pde.build.IFetchFactory;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Messages;

public class GETFetchFactory
implements IFetchFactory {
    private static final String UNPACK = "unpack";
    private static final String SEPARATOR = ",";
    private static final String TASK_GET = "get";
    private static final String TASK_MKDIR = "mkdir";
    private static final String TASK_DELETE = "delete";
    private static final String TASK_UNZIP = "unzip";
    private static final String ATTRIBUTE_SRC = "src";
    private static final String ATTRIBUTE_DEST = "dest";
    private static final String ATTRIBUTE_DIR = "dir";
    private static final String ATTRIBUTE_FILE = "file";
    private static final String ATTRIBUTE_VERBOSE = "verbose";
    private static final String ATTRIBUTE_IGNORE_ERRORS = "ignoreerrors";
    private static final String ATTRIBUTE_USE_TIMESTAMP = "usetimestamp";
    private static final String ATTRIBUTE_USERNAME = "username";
    private static final String ATTRIBUTE_PASSWORD = "password";
    private static final String TAG_OPEN = "<";
    private static final String TAG_CLOSE = "/>";

    public void addTargets(IAntScript script) {
    }

    public void generateRetrieveElementCall(Map entryInfos, IPath destination, IAntScript script) {
        this.printGetTask(destination, script, entryInfos);
    }

    public void generateRetrieveFilesCall(Map entryInfos, IPath destination, String[] files, IAntScript script) {
    }

    public void parseMapFileEntry(String rawEntry, Properties overrideTags, Map entryInfos) throws CoreException {
        String url = rawEntry;
        if (rawEntry.indexOf(44) != -1) {
            StringTokenizer tokenizer = new StringTokenizer(rawEntry, SEPARATOR);
            if (tokenizer.hasMoreTokens()) {
                url = tokenizer.nextToken();
            }
            while (tokenizer.hasMoreTokens()) {
                String token = tokenizer.nextToken();
                int index = token.indexOf(61);
                if (index == -1) {
                    Status status = new Status(2, "org.eclipse.pde.build", NLS.bind((String)Messages.warning_problemsParsingMapFileEntry, (Object)rawEntry));
                    BundleHelper.getDefault().getLog().log((IStatus)status);
                    continue;
                }
                String key = token.substring(0, index).trim();
                String value = token.substring(index + 1).trim();
                entryInfos.put(key, value);
            }
        }
        try {
            new URL(url);
        }
        catch (MalformedURLException malformedURLException) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", NLS.bind((String)Messages.error_invalidURLInMapFileEntry, (Object)rawEntry)));
        }
        entryInfos.put(ATTRIBUTE_SRC, url);
    }

    private void printGetTask(IPath destination, IAntScript script, Map entryInfos) {
        String verbose;
        String useTimestamp;
        String src = (String)entryInfos.get(ATTRIBUTE_SRC);
        int index = src.lastIndexOf(47);
        String filename = index == -1 ? src : src.substring(index);
        String dest = (String)entryInfos.get(ATTRIBUTE_DEST);
        if (dest != null) {
            script.printTabs();
            script.print("<mkdir");
            script.printAttribute(ATTRIBUTE_DIR, new Path(dest).removeLastSegments(1).toOSString(), true);
            script.print(TAG_CLOSE);
            script.println();
        } else {
            dest = destination.removeLastSegments(1).append(filename).toOSString();
        }
        script.printTabs();
        script.print("<get");
        script.printAttribute(ATTRIBUTE_SRC, src, true);
        script.printAttribute(ATTRIBUTE_DEST, dest, true);
        String ignoreErrors = (String)entryInfos.get(ATTRIBUTE_IGNORE_ERRORS);
        if (ignoreErrors != null) {
            script.printAttribute(ATTRIBUTE_IGNORE_ERRORS, ignoreErrors, false);
        }
        if ((useTimestamp = (String)entryInfos.get(ATTRIBUTE_USE_TIMESTAMP)) != null) {
            script.printAttribute(ATTRIBUTE_USE_TIMESTAMP, useTimestamp, false);
        }
        if ((verbose = (String)entryInfos.get(ATTRIBUTE_VERBOSE)) != null) {
            script.printAttribute(ATTRIBUTE_VERBOSE, verbose, false);
        }
        String username = (String)entryInfos.get(ATTRIBUTE_USERNAME);
        String password = (String)entryInfos.get(ATTRIBUTE_PASSWORD);
        if (username != null) {
            script.printAttribute(ATTRIBUTE_USERNAME, username, password != null);
        }
        if (password != null) {
            script.printAttribute(ATTRIBUTE_PASSWORD, password, username != null);
        }
        script.print(TAG_CLOSE);
        boolean unpack = Boolean.valueOf((String)entryInfos.get(UNPACK));
        if (unpack || "feature".equals(entryInfos.get("type"))) {
            Path destPath = new Path(dest);
            String unzipped = destPath.removeLastSegments(1).toOSString();
            if (destPath.getFileExtension().equalsIgnoreCase("jar")) {
                unzipped = destPath.removeFileExtension().toOSString();
                script.printTabs();
                script.print("<mkdir");
                script.printAttribute(ATTRIBUTE_DIR, unzipped, true);
                script.print(TAG_CLOSE);
            }
            script.printTabs();
            script.print("<unzip");
            script.printAttribute(ATTRIBUTE_SRC, dest, true);
            script.printAttribute(ATTRIBUTE_DEST, unzipped, true);
            script.print(TAG_CLOSE);
            script.printTabs();
            script.print("<delete");
            script.printAttribute(ATTRIBUTE_FILE, dest, true);
            script.print(TAG_CLOSE);
        }
        script.println();
    }
}

