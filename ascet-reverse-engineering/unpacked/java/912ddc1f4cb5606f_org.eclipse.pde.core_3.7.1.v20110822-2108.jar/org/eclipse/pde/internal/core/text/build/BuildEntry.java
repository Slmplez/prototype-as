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
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.TextUtilities
 */
package org.eclipse.pde.internal.core.text.build;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.text.IDocumentKey;
import org.eclipse.pde.internal.core.text.IEditingModel;
import org.eclipse.pde.internal.core.util.PropertiesUtil;

public class BuildEntry
implements IBuildEntry,
IDocumentKey {
    private int fLength = -1;
    private int fOffset = -1;
    private IBuildModel fModel;
    private String fName;
    private ArrayList fTokens = new ArrayList();
    private String fLineDelimiter;

    public BuildEntry(String name, IBuildModel model) {
        this.fName = name;
        this.fModel = model;
        this.setLineDelimiter();
    }

    private void setLineDelimiter() {
        if (this.fModel instanceof IEditingModel) {
            IDocument document = ((IEditingModel)((Object)this.fModel)).getDocument();
            this.fLineDelimiter = TextUtilities.getDefaultLineDelimiter((IDocument)document);
        } else {
            this.fLineDelimiter = System.getProperty("line.separator");
        }
    }

    public void addToken(String token) throws CoreException {
        if (this.fTokens.contains(token)) {
            return;
        }
        if (this.fTokens.add(token)) {
            this.getModel().fireModelObjectChanged(this, this.getName(), null, token);
        }
    }

    public String getName() {
        return this.fName;
    }

    public String[] getTokens() {
        return this.fTokens.toArray(new String[this.fTokens.size()]);
    }

    public boolean contains(String token) {
        return this.fTokens.contains(token);
    }

    public void removeToken(String token) throws CoreException {
        if (this.fTokens.remove(token)) {
            this.getModel().fireModelObjectChanged(this, this.getName(), token, null);
        }
    }

    public void renameToken(String oldToken, String newToken) throws CoreException {
        int index = this.fTokens.indexOf(oldToken);
        if (index != -1) {
            this.fTokens.set(index, newToken);
            this.getModel().fireModelObjectChanged(this, this.getName(), oldToken, newToken);
        }
    }

    public void setName(String name) {
        String oldName = this.fName;
        if (this.getModel() != null) {
            try {
                IBuild build = this.getModel().getBuild();
                build.remove(this);
                this.fName = name;
                build.add(this);
            }
            catch (CoreException e) {
                PDECore.logException(e);
            }
            this.getModel().fireModelObjectChanged(this, this.getName(), oldName, name);
        } else {
            this.fName = name;
        }
    }

    public int getOffset() {
        return this.fOffset;
    }

    public void setOffset(int offset) {
        this.fOffset = offset;
    }

    public int getLength() {
        return this.fLength;
    }

    public void setLength(int length) {
        this.fLength = length;
    }

    public void write(String indent, PrintWriter writer) {
    }

    public IBuildModel getModel() {
        return this.fModel;
    }

    public void processEntry(String value) {
        StringTokenizer stok = new StringTokenizer(value, ",");
        IPath root = this.getRootPath();
        while (stok.hasMoreTokens()) {
            String token = stok.nextToken().trim();
            token = this.fromRelative(token, root);
            this.fTokens.add(token);
        }
    }

    public String write() {
        StringBuffer buffer = new StringBuffer();
        buffer.append(PropertiesUtil.createWritableName(this.fName));
        buffer.append(" = ");
        int indentLength = this.fName.length() + 3;
        IPath rootPath = this.getRootPath();
        int i = 0;
        while (i < this.fTokens.size()) {
            String token = this.fTokens.get(i).toString();
            token = this.toRelative(token, rootPath);
            buffer.append(PropertiesUtil.createEscapedValue(token));
            if (i < this.fTokens.size() - 1) {
                buffer.append(",\\");
                buffer.append(this.fLineDelimiter);
                int j = 0;
                while (j < indentLength) {
                    buffer.append(" ");
                    ++j;
                }
            }
            ++i;
        }
        buffer.append(this.fLineDelimiter);
        return buffer.toString();
    }

    public void swap(int index1, int index2) {
        Object obj1 = this.fTokens.get(index1);
        Object obj2 = this.fTokens.set(index2, obj1);
        this.fTokens.set(index1, obj2);
        this.getModel().fireModelObjectChanged(this, this.getName(), new Object[]{obj1, obj2}, new Object[]{obj2, obj1});
    }

    public String getPreviousToken(String targetToken) {
        if (this.fTokens.size() <= 1) {
            return null;
        }
        int targetIndex = this.fTokens.indexOf(targetToken);
        if (targetIndex < 0) {
            return null;
        }
        if (targetIndex == 0) {
            return null;
        }
        String previousToken = (String)this.fTokens.get(targetIndex - 1);
        return previousToken;
    }

    public String getNextToken(String targetToken) {
        if (this.fTokens.size() <= 1) {
            return null;
        }
        int targetIndex = this.fTokens.indexOf(targetToken);
        int lastIndex = this.fTokens.size() - 1;
        if (targetIndex < 0) {
            return null;
        }
        if (targetIndex >= lastIndex) {
            return null;
        }
        String nextToken = (String)this.fTokens.get(targetIndex + 1);
        return nextToken;
    }

    public int getIndexOf(String targetToken) {
        return this.fTokens.indexOf(targetToken);
    }

    public void addToken(String token, int position) {
        if (position < 0) {
            return;
        }
        if (position > this.fTokens.size()) {
            return;
        }
        if (this.fTokens.contains(token)) {
            return;
        }
        this.fTokens.add(position, token);
        this.getModel().fireModelObjectChanged(this, this.getName(), null, token);
    }

    IPath getRootPath() {
        IContainer root;
        IProject project;
        IResource resource;
        if ((this.fName.startsWith("source.") || this.fName.startsWith("output.")) && (resource = this.getModel().getUnderlyingResource()) != null && (project = resource.getProject()) != null && (root = PDEProject.getBundleRoot(project)) != null && !root.equals((Object)project)) {
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

