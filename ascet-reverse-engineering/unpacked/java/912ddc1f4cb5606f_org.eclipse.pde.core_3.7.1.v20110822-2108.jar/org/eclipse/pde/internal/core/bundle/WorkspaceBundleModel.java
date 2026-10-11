/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.pde.internal.core.bundle;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.pde.core.IEditableModel;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.bundle.Bundle;
import org.eclipse.pde.internal.core.bundle.BundleModel;
import org.eclipse.pde.internal.core.converter.PluginConverter;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundleModelFactory;
import org.eclipse.pde.internal.core.text.bundle.BundleModelFactory;
import org.eclipse.pde.internal.core.util.CoreUtility;

public class WorkspaceBundleModel
extends BundleModel
implements IEditableModel {
    private static final long serialVersionUID = 1L;
    private IFile fUnderlyingResource;
    private boolean fDirty;
    private boolean fEditable = true;
    private IBundleModelFactory fFactory;
    private static final String MANIFEST_VERSION = "Manifest-Version";

    public WorkspaceBundleModel(IFile file) {
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
        }
        catch (IOException e) {
            PDECore.logException(e);
        }
        return swriter.toString();
    }

    public IResource getUnderlyingResource() {
        return this.fUnderlyingResource;
    }

    public String getInstallLocation() {
        if (this.fUnderlyingResource == null) {
            return null;
        }
        IPath path = this.fUnderlyingResource.getLocation();
        if (path == null) {
            return null;
        }
        return path.removeLastSegments(2).addTrailingSeparator().toOSString();
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
        if (this.fUnderlyingResource.exists()) {
            InputStream stream = null;
            try {
                try {
                    stream = this.fUnderlyingResource.getContents(true);
                    this.load(stream, false);
                }
                catch (Exception e) {
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
    }

    public boolean isInSync() {
        if (this.fUnderlyingResource == null) {
            return false;
        }
        if (this.fUnderlyingResource.getLocation() == null) {
            return false;
        }
        return this.isInSync(this.fUnderlyingResource.getLocation().toFile());
    }

    protected void updateTimeStamp() {
        if (this.fUnderlyingResource == null) {
            return;
        }
        if (this.fUnderlyingResource.getLocation() == null) {
            return;
        }
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
                stream = new ByteArrayInputStream(contents.getBytes("UTF-8"));
                if (this.fUnderlyingResource.exists()) {
                    this.fUnderlyingResource.setContents((InputStream)stream, false, false, null);
                } else {
                    IContainer parent = this.fUnderlyingResource.getParent();
                    if (!parent.exists() && parent instanceof IFolder) {
                        CoreUtility.createFolder((IFolder)parent);
                    }
                    this.fUnderlyingResource.create((InputStream)stream, false, null);
                }
                stream.close();
                this.setLoaded(true);
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
        block9: {
            boolean addManifestVersion;
            IBundle bundle = this.getBundle();
            Map headers = ((Bundle)bundle).getHeaders();
            boolean bl = addManifestVersion = headers.get(MANIFEST_VERSION) == null;
            if (addManifestVersion) {
                headers.put(MANIFEST_VERSION, "1.0");
            }
            try {
                try {
                    PluginConverter.getDefault().writeManifest(headers, writer);
                }
                catch (IOException e) {
                    PDECore.logException(e);
                    if (addManifestVersion) {
                        headers.remove(MANIFEST_VERSION);
                    }
                    break block9;
                }
            }
            catch (Throwable throwable) {
                if (addManifestVersion) {
                    headers.remove(MANIFEST_VERSION);
                }
                throw throwable;
            }
            if (addManifestVersion) {
                headers.remove(MANIFEST_VERSION);
            }
        }
        this.fDirty = false;
    }

    public void setDirty(boolean dirty) {
        this.fDirty = dirty;
    }

    public void setEditable(boolean editable) {
        this.fEditable = editable;
    }

    public IBundleModelFactory getFactory() {
        if (this.fFactory == null) {
            this.fFactory = new BundleModelFactory(this);
        }
        return this.fFactory;
    }
}

