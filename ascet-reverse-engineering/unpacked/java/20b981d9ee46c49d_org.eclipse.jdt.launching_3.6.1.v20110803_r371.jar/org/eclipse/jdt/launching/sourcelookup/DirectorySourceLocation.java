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
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
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
import org.eclipse.jdt.launching.sourcelookup.LocalFileStorage;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class DirectorySourceLocation
extends PlatformObject
implements IJavaSourceLocation {
    private File fDirectory;

    public DirectorySourceLocation() {
    }

    public DirectorySourceLocation(File directory) {
        this.setDirectory(directory);
    }

    public Object findSourceElement(String name) throws CoreException {
        if (this.getDirectory() == null) {
            return null;
        }
        String pathStr = name.replace('.', '/');
        int lastSlash = pathStr.lastIndexOf(47);
        try {
            Path root = new Path(this.getDirectory().getCanonicalPath());
            boolean possibleInnerType = false;
            String typeName = pathStr;
            do {
                IPath filePath;
                File file;
                if ((file = (filePath = root.append((IPath)new Path(String.valueOf(typeName) + ".java"))).toFile()).exists()) {
                    return new LocalFileStorage(file);
                }
                int index = typeName.lastIndexOf(36);
                if (index > lastSlash) {
                    typeName = typeName.substring(0, index);
                    possibleInnerType = true;
                    continue;
                }
                possibleInnerType = false;
            } while (possibleInnerType);
        }
        catch (IOException e) {
            throw new CoreException((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), e.getMessage(), (Throwable)e));
        }
        return null;
    }

    private void setDirectory(File directory) {
        this.fDirectory = directory;
    }

    public File getDirectory() {
        return this.fDirectory;
    }

    public boolean equals(Object object) {
        return object instanceof DirectorySourceLocation && this.getDirectory().equals(((DirectorySourceLocation)object).getDirectory());
    }

    public int hashCode() {
        return this.getDirectory().hashCode();
    }

    public String getMemento() throws CoreException {
        Document doc = DebugPlugin.newDocument();
        Element node = doc.createElement("directorySourceLocation");
        doc.appendChild(node);
        node.setAttribute("path", this.getDirectory().getAbsolutePath());
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
            String path = root.getAttribute("path");
            if (this.isEmpty(path)) {
                this.abort(LaunchingMessages.DirectorySourceLocation_Unable_to_initialize_source_location___missing_directory_path_3, null);
            } else {
                File dir = new File(path);
                if (dir.exists() && dir.isDirectory()) {
                    this.setDirectory(dir);
                } else {
                    this.abort(MessageFormat.format((String)LaunchingMessages.DirectorySourceLocation_Unable_to_initialize_source_location___directory_does_not_exist___0__4, (Object[])new String[]{path}), null);
                }
            }
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
        this.abort(LaunchingMessages.DirectorySourceLocation_Exception_occurred_initializing_source_location__5, ex);
    }

    private boolean isEmpty(String string) {
        return string == null || string.length() == 0;
    }

    private void abort(String message, Throwable e) throws CoreException {
        Status s = new Status(4, LaunchingPlugin.getUniqueIdentifier(), 150, message, e);
        throw new CoreException((IStatus)s);
    }
}

