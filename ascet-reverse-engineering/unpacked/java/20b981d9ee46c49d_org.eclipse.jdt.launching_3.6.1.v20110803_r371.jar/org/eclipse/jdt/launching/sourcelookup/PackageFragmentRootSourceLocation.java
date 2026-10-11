/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.jdt.core.IClassFile
 *  org.eclipse.jdt.core.ICompilationUnit
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IPackageFragment
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.launching.sourcelookup;

import java.io.IOException;
import java.io.StringReader;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.sourcelookup.IJavaSourceLocation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class PackageFragmentRootSourceLocation
extends PlatformObject
implements IJavaSourceLocation {
    private IPackageFragmentRoot fRoot = null;

    public PackageFragmentRootSourceLocation() {
    }

    public PackageFragmentRootSourceLocation(IPackageFragmentRoot root) {
        this.setPackageFragmentRoot(root);
    }

    public Object findSourceElement(String name) throws CoreException {
        if (name != null && this.getPackageFragmentRoot() != null) {
            IPackageFragment pkg = null;
            int index = name.lastIndexOf(46);
            if (index >= 0) {
                String fragment = name.substring(0, index);
                pkg = this.getPackageFragmentRoot().getPackageFragment(fragment);
                name = name.substring(index + 1);
            } else {
                pkg = this.getPackageFragmentRoot().getPackageFragment("");
            }
            if (pkg.exists()) {
                boolean possibleInnerType = false;
                String typeName = name;
                do {
                    ICompilationUnit cu;
                    if ((cu = pkg.getCompilationUnit(String.valueOf(typeName) + ".java")).exists()) {
                        return cu;
                    }
                    IClassFile cf = pkg.getClassFile(String.valueOf(typeName) + ".class");
                    if (cf.exists()) {
                        return cf;
                    }
                    index = typeName.lastIndexOf(36);
                    if (index >= 0) {
                        typeName = typeName.substring(0, index);
                        possibleInnerType = true;
                        continue;
                    }
                    possibleInnerType = false;
                } while (possibleInnerType);
            }
        }
        return null;
    }

    public String getMemento() throws CoreException {
        Document doc = DebugPlugin.newDocument();
        Element node = doc.createElement("javaPackageFragmentRootSourceLocation");
        doc.appendChild(node);
        String handle = "";
        if (this.getPackageFragmentRoot() != null) {
            handle = this.getPackageFragmentRoot().getHandleIdentifier();
        }
        node.setAttribute("handleId", handle);
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
            String handle = root.getAttribute("handleId");
            if (handle == null) {
                this.abort(LaunchingMessages.PackageFragmentRootSourceLocation_Unable_to_initialize_source_location___missing_handle_identifier_for_package_fragment_root__6, null);
            } else if (handle.length() == 0) {
                this.setPackageFragmentRoot(null);
            } else {
                IJavaElement element = JavaCore.create((String)handle);
                if (element instanceof IPackageFragmentRoot) {
                    this.setPackageFragmentRoot((IPackageFragmentRoot)element);
                } else {
                    this.abort(LaunchingMessages.PackageFragmentRootSourceLocation_Unable_to_initialize_source_location___package_fragment_root_does_not_exist__7, null);
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
        this.abort(LaunchingMessages.PackageFragmentRootSourceLocation_Exception_occurred_initializing_source_location__8, ex);
    }

    public IPackageFragmentRoot getPackageFragmentRoot() {
        return this.fRoot;
    }

    private void setPackageFragmentRoot(IPackageFragmentRoot root) {
        this.fRoot = root;
    }

    private void abort(String message, Throwable e) throws CoreException {
        Status s = new Status(4, LaunchingPlugin.getUniqueIdentifier(), 150, message, e);
        throw new CoreException((IStatus)s);
    }

    public boolean equals(Object object) {
        if (object instanceof PackageFragmentRootSourceLocation) {
            PackageFragmentRootSourceLocation root = (PackageFragmentRootSourceLocation)object;
            if (this.getPackageFragmentRoot() == null) {
                return root.getPackageFragmentRoot() == null;
            }
            return this.getPackageFragmentRoot().equals(root.getPackageFragmentRoot());
        }
        return false;
    }

    public int hashCode() {
        if (this.getPackageFragmentRoot() == null) {
            return this.getClass().hashCode();
        }
        return this.getPackageFragmentRoot().hashCode();
    }
}

