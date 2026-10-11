/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.pde.internal.core.product;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.internal.core.IWorkspaceModel;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.product.ProductModel;

public class WorkspaceProductModel
extends ProductModel
implements IWorkspaceModel {
    private static final long serialVersionUID = 1L;
    private IFile fFile;
    private boolean fDirty;
    private boolean fEditable;

    public WorkspaceProductModel(IFile file, boolean editable) {
        this.fFile = file;
        this.fEditable = editable;
    }

    public void load() throws CoreException {
        block17: {
            if (this.fFile.exists()) {
                BufferedInputStream stream = null;
                try {
                    stream = new BufferedInputStream(this.fFile.getContents(true));
                    try {
                        try {
                            if (((InputStream)stream).available() > 0) {
                                this.load(stream, false);
                                break block17;
                            }
                            this.setLoaded(true);
                        }
                        catch (IOException e) {
                            PDECore.logException(e);
                            try {
                                if (stream != null) {
                                    ((InputStream)stream).close();
                                }
                            }
                            catch (IOException e2) {
                                PDECore.logException(e2);
                            }
                        }
                    }
                    finally {
                        try {
                            if (stream != null) {
                                ((InputStream)stream).close();
                            }
                        }
                        catch (IOException e) {
                            PDECore.logException(e);
                        }
                    }
                }
                catch (CoreException e) {
                    PDECore.logException(e);
                }
            }
        }
    }

    public boolean isInSync() {
        IPath path = this.fFile.getLocation();
        return path == null ? false : this.isInSync(path.toFile());
    }

    public IResource getUnderlyingResource() {
        return this.fFile;
    }

    public String getInstallLocation() {
        return this.fFile.getLocation().toOSString();
    }

    public void save() {
        ByteArrayInputStream stream = null;
        try {
            try {
                String contents = this.getContents();
                stream = new ByteArrayInputStream(contents.getBytes("UTF8"));
                if (this.fFile.exists()) {
                    this.fFile.setContents((InputStream)stream, false, false, null);
                } else {
                    this.fFile.create((InputStream)stream, false, null);
                }
                stream.close();
            }
            catch (CoreException e) {
                PDECore.logException(e);
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException e2) {
                    PDECore.logException(e2);
                }
            }
            catch (IOException e) {
                PDECore.logException(e);
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException e3) {
                    PDECore.logException(e3);
                }
            }
        }
        finally {
            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException e) {
                PDECore.logException(e);
            }
        }
    }

    public String getContents() {
        StringWriter swriter = new StringWriter();
        PrintWriter writer = new PrintWriter(swriter);
        this.setLoaded(true);
        this.save(writer);
        writer.flush();
        try {
            swriter.close();
        }
        catch (IOException e) {
            PDECore.logException(e);
        }
        return swriter.toString();
    }

    public boolean isDirty() {
        return this.fDirty;
    }

    public void save(PrintWriter writer) {
        if (this.isLoaded()) {
            writer.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
            writer.println("<?pde version=\"3.5\"?>");
            writer.println();
            this.getProduct().write("", writer);
        }
        this.setDirty(false);
    }

    public void setDirty(boolean dirty) {
        this.fDirty = dirty;
    }

    public void fireModelChanged(IModelChangedEvent event) {
        this.setDirty(true);
        super.fireModelChanged(event);
    }

    public boolean isEditable() {
        return this.fEditable;
    }

    public void reload() {
        if (this.fFile.exists()) {
            BufferedInputStream stream = null;
            try {
                stream = new BufferedInputStream(this.fFile.getContents(true));
                this.reload(stream, false);
                this.setDirty(false);
            }
            catch (CoreException coreException) {}
        }
    }
}

