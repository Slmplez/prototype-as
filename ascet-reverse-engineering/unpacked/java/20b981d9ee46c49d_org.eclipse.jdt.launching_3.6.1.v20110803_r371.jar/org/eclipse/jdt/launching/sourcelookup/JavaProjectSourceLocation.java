/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 */
package org.eclipse.jdt.launching.sourcelookup;

import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.sourcelookup.IJavaSourceLocation;
import org.eclipse.jdt.launching.sourcelookup.PackageFragmentRootSourceLocation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class JavaProjectSourceLocation
extends PlatformObject
implements IJavaSourceLocation {
    private IJavaProject fProject;
    private IJavaSourceLocation[] fRootLocations = null;

    public JavaProjectSourceLocation() {
    }

    public JavaProjectSourceLocation(IJavaProject project) {
        this.setJavaProject(project);
    }

    public Object findSourceElement(String name) throws CoreException {
        if (this.fRootLocations != null) {
            int i = 0;
            while (i < this.fRootLocations.length) {
                Object element = this.fRootLocations[i].findSourceElement(name);
                if (element != null) {
                    return element;
                }
                ++i;
            }
        }
        return null;
    }

    private void setJavaProject(IJavaProject project) {
        this.fProject = project;
        this.fRootLocations = null;
        if (this.fProject != null) {
            try {
                IPackageFragmentRoot[] roots = project.getPackageFragmentRoots();
                ArrayList<PackageFragmentRootSourceLocation> list = new ArrayList<PackageFragmentRootSourceLocation>(roots.length);
                int i = 0;
                while (i < roots.length) {
                    if (roots[i].getKind() == 1) {
                        list.add(new PackageFragmentRootSourceLocation(roots[i]));
                    }
                    ++i;
                }
                this.fRootLocations = list.toArray(new IJavaSourceLocation[list.size()]);
            }
            catch (JavaModelException e) {
                LaunchingPlugin.log(e);
            }
        }
    }

    public IJavaProject getJavaProject() {
        return this.fProject;
    }

    public boolean equals(Object object) {
        return object instanceof JavaProjectSourceLocation && this.getJavaProject().equals(((JavaProjectSourceLocation)object).getJavaProject());
    }

    public int hashCode() {
        return this.getJavaProject().hashCode();
    }

    public String getMemento() throws CoreException {
        Document doc = DebugPlugin.newDocument();
        Element node = doc.createElement("javaProjectSourceLocation");
        doc.appendChild(node);
        node.setAttribute("name", this.getJavaProject().getElementName());
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
            String name = root.getAttribute("name");
            if (this.isEmpty(name)) {
                this.abort(LaunchingMessages.JavaProjectSourceLocation_Unable_to_initialize_source_location___missing_project_name_3, null);
            } else {
                IProject proj = ResourcesPlugin.getWorkspace().getRoot().getProject(name);
                this.setJavaProject(JavaCore.create((IProject)proj));
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
        this.abort(LaunchingMessages.JavaProjectSourceLocation_Exception_occurred_initializing_source_location__4, ex);
    }

    private boolean isEmpty(String string) {
        return string == null || string.length() == 0;
    }

    private void abort(String message, Throwable e) throws CoreException {
        Status s = new Status(4, LaunchingPlugin.getUniqueIdentifier(), 150, message, e);
        throw new CoreException((IStatus)s);
    }
}

