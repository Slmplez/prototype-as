/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.build;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IEditableModel;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.build.Build;
import org.eclipse.pde.internal.core.build.BuildModel;

public class WorkspaceBuildModel
extends BuildModel
implements IEditableModel {
    private static final long serialVersionUID = 1L;
    private IFile fUnderlyingResource;
    private boolean fDirty;
    private boolean fEditable = true;

    public WorkspaceBuildModel(IFile file) {
        this.fUnderlyingResource = file;
    }

    public void fireModelChanged(IModelChangedEvent event) {
        this.setDirty(event.getChangeType() != 99);
        super.fireModelChanged(event);
    }

    public String getContents() {
        StringWriter swriter = new StringWriter();
        PrintWriter writer = new PrintWriter(swriter);
        this.save(writer);
        writer.flush();
        try {
            swriter.close();
            writer.close();
        }
        catch (IOException e) {
            PDECore.logException(e);
        }
        return swriter.toString();
    }

    public IResource getUnderlyingResource() {
        return this.fUnderlyingResource;
    }

    public boolean isDirty() {
        return this.fDirty;
    }

    public boolean isEditable() {
        return this.fEditable;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void load() {
        if (this.fUnderlyingResource.exists()) {
            InputStream stream = null;
            try {
                try {
                    stream = this.fUnderlyingResource.getContents(true);
                    this.load(stream, false);
                    return;
                }
                catch (Exception e) {
                    PDECore.logException(e);
                    try {
                        if (stream == null) return;
                        stream.close();
                        return;
                    }
                    catch (IOException e2) {
                        PDECore.logException(e2);
                    }
                }
                return;
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
        this.fBuild = new Build();
        this.fBuild.setModel(this);
        this.setLoaded(true);
    }

    public boolean isInSync() {
        return true;
    }

    protected void updateTimeStamp() {
        this.updateTimeStamp(this.fUnderlyingResource.getLocation().toFile());
    }

    public void save() {
        if (this.fUnderlyingResource == null) {
            return;
        }
        ByteArrayInputStream stream = null;
        try {
            try {
                String contents = this.getContents();
                stream = new ByteArrayInputStream(contents.getBytes("8859_1"));
                if (this.fUnderlyingResource.exists()) {
                    this.fUnderlyingResource.setContents((InputStream)stream, false, false, null);
                } else {
                    this.fUnderlyingResource.create((InputStream)stream, false, null);
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

    public void save(PrintWriter writer) {
        this.getBuild().write("", writer);
        this.fDirty = false;
    }

    public void setDirty(boolean dirty) {
        this.fDirty = dirty;
    }

    public void setEditable(boolean editable) {
        this.fEditable = editable;
    }

    public String getInstallLocation() {
        return this.fUnderlyingResource.getLocation().toOSString();
    }
}

