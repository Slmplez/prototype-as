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
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelProvider;
import org.eclipse.pde.internal.core.plugin.AbstractExtensionsModel;
import org.eclipse.pde.internal.core.plugin.Extensions;

public class WorkspaceExtensionsModel
extends AbstractExtensionsModel
implements IEditableModel,
IBundlePluginModelProvider {
    private static final long serialVersionUID = 1L;
    private IFile fUnderlyingResource;
    private boolean fDirty;
    private boolean fEditable = true;
    private transient IBundlePluginModelBase fBundleModel;

    protected NLResourceHelper createNLResourceHelper() {
        return new NLResourceHelper("OSGI-INF/l10n/bundle", this.getNLLookupLocations());
    }

    public URL getNLLookupLocation() {
        try {
            return new URL("file:" + this.getInstallLocation() + "/");
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }

    public WorkspaceExtensionsModel(IFile file) {
        this.fUnderlyingResource = file;
    }

    public void fireModelChanged(IModelChangedEvent event) {
        this.fDirty = true;
        super.fireModelChanged(event);
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

    public String getInstallLocation() {
        return this.fUnderlyingResource.getLocation().removeLastSegments(1).addTrailingSeparator().toOSString();
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

    public void load() {
        if (this.fUnderlyingResource == null) {
            return;
        }
        this.getExtensions(true);
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
            this.fExtensions.write("", writer);
        }
        this.fDirty = false;
    }

    public void setDirty(boolean dirty) {
        this.fDirty = dirty;
    }

    public void setEditable(boolean editable) {
        this.fEditable = editable;
    }

    protected Extensions createExtensions() {
        Extensions extensions = super.createExtensions();
        extensions.setIsFragment(this.fUnderlyingResource.getName().equals("fragment.xml"));
        return extensions;
    }

    public String toString() {
        return this.fUnderlyingResource.getName();
    }

    public void setBundleModel(IBundlePluginModelBase model) {
        this.fBundleModel = model;
    }

    public IBundlePluginModelBase getBundlePluginModel() {
        return this.fBundleModel;
    }
}

