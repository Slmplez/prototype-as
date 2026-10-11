/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.sourcelookup.ISourceContainer
 *  org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainerTypeDelegate
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.internal.launching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.AbstractSourceContainerTypeDelegate;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.launching.sourcelookup.containers.PackageFragmentRootSourceContainer;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class PackageFragmentRootSourceContainerTypeDelegate
extends AbstractSourceContainerTypeDelegate {
    public ISourceContainer createSourceContainer(String memento) throws CoreException {
        Element node = this.parseDocument(memento);
        if (node.getNodeType() == 1) {
            Element element = node;
            if ("packageFragmentRoot".equals(element.getNodeName())) {
                IJavaElement root;
                String string = element.getAttribute("handle");
                if (string == null || string.length() == 0) {
                    this.abort(LaunchingMessages.PackageFragmentRootSourceContainerTypeDelegate_6, null);
                }
                if ((root = JavaCore.create((String)string)) != null && root instanceof IPackageFragmentRoot) {
                    return new PackageFragmentRootSourceContainer((IPackageFragmentRoot)root);
                }
                this.abort(LaunchingMessages.PackageFragmentRootSourceContainerTypeDelegate_7, null);
            } else {
                this.abort(LaunchingMessages.PackageFragmentRootSourceContainerTypeDelegate_8, null);
            }
        }
        this.abort(LaunchingMessages.JavaProjectSourceContainerTypeDelegate_7, null);
        return null;
    }

    public String getMemento(ISourceContainer container) throws CoreException {
        PackageFragmentRootSourceContainer root = (PackageFragmentRootSourceContainer)container;
        Document document = this.newDocument();
        Element element = document.createElement("packageFragmentRoot");
        element.setAttribute("handle", root.getPackageFragmentRoot().getHandleIdentifier());
        document.appendChild(element);
        return this.serializeDocument(document);
    }
}

