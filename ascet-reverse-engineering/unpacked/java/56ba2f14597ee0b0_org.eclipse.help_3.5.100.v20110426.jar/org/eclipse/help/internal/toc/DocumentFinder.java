/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.Bundle
 */
package org.eclipse.help.internal.toc;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.toc.HrefUtil;
import org.eclipse.help.internal.toc.TocFile;
import org.eclipse.help.internal.util.ResourceLocator;
import org.osgi.framework.Bundle;

public class DocumentFinder {
    public static String[] collectExtraDocuments(TocFile tocFile) {
        String dir = HrefUtil.normalizeDirectoryHref(tocFile.getPluginId(), tocFile.getExtraDir());
        String locale = tocFile.getLocale();
        ArrayList<String> result = new ArrayList<String>();
        String pluginID = HrefUtil.getPluginIDFromHref(dir);
        if (pluginID == null) {
            return new String[0];
        }
        Bundle pluginDesc = Platform.getBundle((String)pluginID);
        if (pluginDesc == null || pluginDesc.getState() == 2 || pluginDesc.getState() == 1) {
            return new String[0];
        }
        String directory = HrefUtil.getResourcePathFromHref(dir);
        if (directory == null) {
            directory = "";
        }
        Path iPath = new Path("$nl$/doc.zip");
        HashMap<String, String> override = new HashMap<String, String>(1);
        override.put("$nl$", locale);
        URL url = FileLocator.find((Bundle)pluginDesc, (IPath)iPath, override);
        if (url == null) {
            url = FileLocator.find((Bundle)pluginDesc, (IPath)new Path("doc.zip"), null);
        }
        if (url != null) {
            result.addAll(DocumentFinder.collectExtraDocumentsFromZip(pluginID, directory, url));
        }
        Set paths = ResourceLocator.findTopicPaths(pluginDesc, directory, locale);
        Iterator it = paths.iterator();
        while (it.hasNext()) {
            String href = "/" + pluginID + "/" + (String)it.next();
            href = HrefUtil.normalizeDirectoryPath(href);
            result.add(href);
        }
        return result.toArray(new String[result.size()]);
    }

    private static List collectExtraDocumentsFromZip(String pluginID, String directory, URL url) {
        URL realZipURL;
        List result = new ArrayList();
        try {
            realZipURL = FileLocator.toFileURL((URL)FileLocator.resolve((URL)url));
            if (realZipURL.toExternalForm().startsWith("jar:")) {
                return result;
            }
        }
        catch (IOException ioe) {
            HelpPlugin.logError("IOException occurred, when resolving URL " + url.toString() + ".", ioe);
            return result;
        }
        try {
            ZipFile zipFile = new ZipFile(realZipURL.getFile());
            result = DocumentFinder.createExtraTopicsFromZipFile(pluginID, zipFile, directory);
            zipFile.close();
        }
        catch (IOException ioe) {
            HelpPlugin.logError("IOException occurred, when accessing Zip file " + realZipURL.getFile() + ".  File might not be locally available.", ioe);
            return new ArrayList();
        }
        return result;
    }

    private static List createExtraTopicsFromZipFile(String pluginID, ZipFile zipFile, String directory) {
        String constantHrefSegment = "/" + pluginID + "/";
        ArrayList<String> result = new ArrayList<String>();
        Enumeration<? extends ZipEntry> entriesEnum = zipFile.entries();
        while (entriesEnum.hasMoreElements()) {
            ZipEntry zEntry = entriesEnum.nextElement();
            if (zEntry.isDirectory()) continue;
            String docName = zEntry.getName();
            int l = directory.length();
            if (l != 0 && (docName.length() <= l || docName.charAt(l) != '/' || !directory.equals(docName.substring(0, l)))) continue;
            String href = String.valueOf(constantHrefSegment) + docName;
            result.add(href);
        }
        return result;
    }
}

