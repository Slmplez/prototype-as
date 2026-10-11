/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugPlugin
 */
package org.eclipse.jdt.launching.sourcelookup;

import com.ibm.icu.text.MessageFormat;
import java.io.IOException;
import java.io.StringReader;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.sourcelookup.IJavaSourceLocation;
import org.eclipse.jdt.launching.sourcelookup.ZipEntryStorage;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class ArchiveSourceLocation
extends PlatformObject
implements IJavaSourceLocation {
    private static HashMap fZipFileCache = new HashMap(5);
    private IPath fRootPath;
    private boolean fRootDetected = false;
    private String fName;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static ZipFile getZipFile(String name) throws IOException {
        HashMap hashMap = fZipFileCache;
        synchronized (hashMap) {
            ZipFile zip = (ZipFile)fZipFileCache.get(name);
            if (zip == null) {
                zip = new ZipFile(name);
                fZipFileCache.put(name, zip);
            }
            return zip;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static void closeArchives() {
        HashMap hashMap = fZipFileCache;
        synchronized (hashMap) {
            Iterator iter = fZipFileCache.values().iterator();
            while (iter.hasNext()) {
                ZipFile file;
                ZipFile zipFile = file = (ZipFile)iter.next();
                synchronized (zipFile) {
                    try {
                        file.close();
                    }
                    catch (IOException e) {
                        LaunchingPlugin.log(e);
                    }
                }
            }
            fZipFileCache.clear();
        }
    }

    public ArchiveSourceLocation() {
    }

    public ArchiveSourceLocation(String archiveName, String sourceRoot) {
        this.setName(archiveName);
        this.setRootPath(sourceRoot);
    }

    public Object findSourceElement(String name) throws CoreException {
        block7: {
            if (this.getArchive() != null) break block7;
            return null;
        }
        try {
            boolean possibleInnerType = false;
            String pathStr = name.replace('.', '/');
            int lastSlash = pathStr.lastIndexOf(47);
            String typeName = pathStr;
            do {
                ZipEntry entry;
                Path entryPath = new Path(String.valueOf(typeName) + ".java");
                this.autoDetectRoot((IPath)entryPath);
                if (this.getRootPath() != null) {
                    entryPath = this.getRootPath().append((IPath)entryPath);
                }
                if ((entry = this.getArchive().getEntry(entryPath.toString())) != null) {
                    return new ZipEntryStorage(this.getArchive(), entry);
                }
                int index = typeName.lastIndexOf(36);
                if (index > lastSlash) {
                    typeName = typeName.substring(0, index);
                    possibleInnerType = true;
                    continue;
                }
                possibleInnerType = false;
            } while (possibleInnerType);
            return null;
        }
        catch (IOException e) {
            throw new CoreException((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), 150, MessageFormat.format((String)LaunchingMessages.ArchiveSourceLocation_Unable_to_locate_source_element_in_archive__0__1, (Object[])new String[]{this.getName()}), (Throwable)e));
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void autoDetectRoot(IPath path) throws CoreException {
        if (!this.fRootDetected) {
            ZipFile zip = null;
            try {
                zip = this.getArchive();
            }
            catch (IOException e) {
                throw new CoreException((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), 150, MessageFormat.format((String)LaunchingMessages.ArchiveSourceLocation_Exception_occurred_while_detecting_root_source_directory_in_archive__0__1, (Object[])new String[]{this.getName()}), (Throwable)e));
            }
            ZipFile zipFile = zip;
            synchronized (zipFile) {
                Enumeration<? extends ZipEntry> entries = zip.entries();
                String fileName = path.toString();
                try {
                    while (entries.hasMoreElements()) {
                        ZipEntry entry = entries.nextElement();
                        String entryName = entry.getName();
                        if (!entryName.endsWith(fileName)) continue;
                        int rootLength = entryName.length() - fileName.length();
                        if (rootLength > 0) {
                            String root = entryName.substring(0, rootLength);
                            this.setRootPath(root);
                        }
                        this.fRootDetected = true;
                        return;
                    }
                }
                catch (IllegalStateException e) {
                    throw new CoreException((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), 150, MessageFormat.format((String)LaunchingMessages.ArchiveSourceLocation_Exception_occurred_while_detecting_root_source_directory_in_archive__0__2, (Object[])new String[]{this.getName()}), (Throwable)e));
                }
            }
        }
    }

    protected ZipFile getArchive() throws IOException {
        return ArchiveSourceLocation.getZipFile(this.getName());
    }

    private void setRootPath(String path) {
        if (path == null || path.trim().length() == 0) {
            this.fRootPath = null;
        } else {
            this.fRootPath = new Path(path);
            this.fRootDetected = true;
        }
    }

    public IPath getRootPath() {
        return this.fRootPath;
    }

    public String getName() {
        return this.fName;
    }

    private void setName(String name) {
        this.fName = name;
    }

    public boolean equals(Object object) {
        return object instanceof ArchiveSourceLocation && this.getName().equals(((ArchiveSourceLocation)object).getName());
    }

    public int hashCode() {
        return this.getName().hashCode();
    }

    public String getMemento() throws CoreException {
        Document doc = DebugPlugin.newDocument();
        Element node = doc.createElement("archiveSourceLocation");
        doc.appendChild(node);
        node.setAttribute("archivePath", this.getName());
        if (this.getRootPath() != null) {
            node.setAttribute("rootPath", this.getRootPath().toString());
        }
        return DebugPlugin.serializeDocument((Document)doc);
    }

    public void initializeFrom(String memento) throws CoreException {
        Exception ex = null;
        try {
            Element root = null;
            DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            parser.setErrorHandler(new DefaultHandler());
            StringReader reader = new StringReader(memento);
            InputSource source = new InputSource(reader);
            root = parser.parse(source).getDocumentElement();
            String path = root.getAttribute("archivePath");
            if (this.isEmpty(path)) {
                this.abort(LaunchingMessages.ArchiveSourceLocation_Unable_to_initialize_source_location___missing_archive_path__3, null);
            }
            String rootPath = root.getAttribute("rootPath");
            this.setName(path);
            this.setRootPath(rootPath);
            return;
        }
        catch (ParserConfigurationException e) {
            ex = e;
        }
        catch (SAXException e) {
            ex = e;
        }
        catch (IOException e) {
            ex = e;
        }
        this.abort(LaunchingMessages.ArchiveSourceLocation_Exception_occurred_initializing_source_location__5, ex);
    }

    private boolean isEmpty(String string) {
        return string == null || string.length() == 0;
    }

    private void abort(String message, Throwable e) throws CoreException {
        Status s = new Status(4, LaunchingPlugin.getUniqueIdentifier(), 150, message, e);
        throw new CoreException((IStatus)s);
    }
}

