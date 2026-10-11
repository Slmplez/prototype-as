/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.pde.internal.core.build;

import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.StringTokenizer;
import java.util.Vector;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.internal.core.build.BuildObject;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.util.PropertiesUtil;

public class BuildEntry
extends BuildObject
implements IBuildEntry {
    private Vector tokens = new Vector();
    private String name;

    public BuildEntry(String name) {
        this.name = name;
    }

    public void addToken(String token) throws CoreException {
        this.ensureModelEditable();
        this.tokens.add(token);
        this.getModel().fireModelChanged(new ModelChangedEvent(this.getModel(), 1, new Object[]{token}, null));
    }

    public String getName() {
        return this.name;
    }

    public String[] getTokens() {
        Object[] result = new String[this.tokens.size()];
        this.tokens.copyInto(result);
        return result;
    }

    public boolean contains(String token) {
        return this.tokens.contains(token);
    }

    void processEntry(String value) {
        IPath rootPath = this.getRootPath();
        StringTokenizer stok = new StringTokenizer(value, ",");
        while (stok.hasMoreTokens()) {
            String token = stok.nextToken();
            token = token.trim();
            token = this.fromRelative(token, rootPath);
            this.tokens.add(token);
        }
    }

    public void removeToken(String token) throws CoreException {
        this.ensureModelEditable();
        this.tokens.remove(token);
        this.getModel().fireModelChanged(new ModelChangedEvent(this.getModel(), 2, new Object[]{token}, null));
    }

    public void renameToken(String oldName, String newName) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < this.tokens.size()) {
            if (this.tokens.elementAt(i).toString().equals(oldName)) {
                this.tokens.setElementAt(newName, i);
                break;
            }
            ++i;
        }
        this.getModel().fireModelChanged(new ModelChangedEvent(this.getModel(), 3, new Object[]{oldName}, null));
    }

    public void setName(String name) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.name;
        this.name = name;
        this.getModel().fireModelObjectChanged(this, "name", oldValue, name);
    }

    public String toString() {
        return String.valueOf(this.name) + " = " + this.tokens;
    }

    public void write(String indent, PrintWriter writer) {
        Enumeration elements = this.tokens.elements();
        IPath rootPath = this.getRootPath();
        if (rootPath != null) {
            Vector<String> vector = new Vector<String>();
            while (elements.hasMoreElements()) {
                String e = (String)elements.nextElement();
                vector.add(this.toRelative(e, rootPath));
            }
            elements = vector.elements();
        }
        PropertiesUtil.writeKeyValuePair(indent, this.name, elements, writer);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("name")) {
            this.setName(newValue != null ? newValue.toString() : null);
        }
    }

    IPath getRootPath() {
        IContainer root;
        IProject project;
        IResource resource;
        if ((this.name.startsWith("source.") || this.name.startsWith("output.")) && (resource = this.getModel().getUnderlyingResource()) != null && (project = resource.getProject()) != null && (root = PDEProject.getBundleRoot(project)) != null && !root.equals((Object)project)) {
            return root.getProjectRelativePath();
        }
        return null;
    }

    String toRelative(String token, IPath root) {
        if (root == null) {
            return token;
        }
        return new Path(token).makeRelativeTo(root).toPortableString();
    }

    String fromRelative(String token, IPath root) {
        if (root == null) {
            return token;
        }
        return root.append((IPath)new Path(token)).toPortableString();
    }
}

