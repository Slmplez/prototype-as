/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.pde.core.IEditableModel;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEManager;
import org.eclipse.pde.internal.core.plugin.AbstractPluginModelBase;

public abstract class WorkspacePluginModelBase
extends AbstractPluginModelBase
implements IEditableModel {
    private static final long serialVersionUID = 1L;
    private IFile fUnderlyingResource;
    private boolean fDirty;
    private boolean fEditable = true;

    protected NLResourceHelper createNLResourceHelper() {
        return new NLResourceHelper("plugin", PDEManager.getNLLookupLocations(this));
    }

    public URL getNLLookupLocation() {
        try {
            return new URL("file:" + this.getInstallLocation() + "/");
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }

    public WorkspacePluginModelBase(IFile file, boolean abbreviated) {
        this.fUnderlyingResource = file;
        this.fAbbreviated = abbreviated;
        this.setEnabled(true);
    }

    public void fireModelChanged(IModelChangedEvent event) {
        this.fDirty = true;
        super.fireModelChanged(event);
    }

    public IBuildModel getBuildModel() {
        return null;
    }

    public String getContents() {
        StringWriter swriter = new StringWriter();
        PrintWriter writer = new PrintWriter(swriter);
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

    public IFile getFile() {
        return this.fUnderlyingResource;
    }

    public String getInstallLocation() {
        IPath path = this.fUnderlyingResource.getLocation();
        return path == null ? null : path.removeLastSegments(1).addTrailingSeparator().toOSString();
    }

    public IResource getUnderlyingResource() {
        return this.fUnderlyingResource;
    }

    public boolean isInSync() {
        if (this.fUnderlyingResource == null) {
            return true;
        }
        IPath path = this.fUnderlyingResource.getLocation();
        if (path == null) {
            return false;
        }
        return super.isInSync(path.toFile());
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
        if (this.fUnderlyingResource == null) {
            return;
        }
        if (this.fUnderlyingResource.exists()) {
            InputStream stream = null;
            try {
                try {
                    stream = new BufferedInputStream(this.fUnderlyingResource.getContents(true));
                    this.load(stream, false);
                    return;
                }
                catch (CoreException e) {
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
        this.fPluginBase = this.createPluginBase();
        this.setLoaded(true);
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
                stream = new ByteArrayInputStream(contents.getBytes("UTF8"));
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
        if (this.isLoaded()) {
            this.fPluginBase.write("", writer);
        }
        this.fDirty = false;
    }

    public void setDirty(boolean dirty) {
        this.fDirty = dirty;
    }

    public void setEditable(boolean editable) {
        this.fEditable = editable;
    }
}

