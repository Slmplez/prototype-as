/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.pde.internal.core.feature;

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
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.feature.AbstractFeatureModel;
import org.eclipse.pde.internal.core.feature.Feature;

public class WorkspaceFeatureModel
extends AbstractFeatureModel
implements IEditableModel {
    private static final long serialVersionUID = 1L;
    private boolean dirty;
    private IFile file;
    private boolean editable = true;

    public WorkspaceFeatureModel() {
    }

    public WorkspaceFeatureModel(IFile file) {
        this.setFile(file);
    }

    public void fireModelChanged(IModelChangedEvent event) {
        this.setDirty(event.getChangeType() != 99);
        super.fireModelChanged(event);
    }

    protected NLResourceHelper createNLResourceHelper() {
        block4: {
            try {
                if (this.file != null && this.file.getLocation() != null) break block4;
                return null;
            }
            catch (MalformedURLException malformedURLException) {
                return null;
            }
        }
        IPath path = this.file.getLocation().removeLastSegments(1);
        String installLocation = path.toOSString();
        if (!installLocation.startsWith("file:")) {
            installLocation = "file:" + installLocation;
        }
        URL url = new URL(String.valueOf(installLocation) + "/");
        String name = "feature";
        NLResourceHelper helper = new NLResourceHelper(name, new URL[]{url});
        return helper;
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

    public IFile getFile() {
        return this.file;
    }

    public String getInstallLocation() {
        IPath path = this.file.getParent().getLocation();
        return path == null ? null : path.toOSString();
    }

    public IResource getUnderlyingResource() {
        return this.file;
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public boolean isEditable() {
        return this.editable;
    }

    public boolean isInSync() {
        return this.isInSync(this.file.getLocation().toFile());
    }

    protected void updateTimeStamp() {
        this.updateTimeStamp(this.file.getLocation().toFile());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void load() {
        if (this.file == null) {
            return;
        }
        if (this.file.exists()) {
            InputStream stream = null;
            try {
                try {
                    stream = new BufferedInputStream(this.file.getContents(true));
                    if (stream.available() > 0) {
                        this.load(stream, false);
                        return;
                    }
                    this.setLoaded(true);
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
                    return;
                }
                catch (IOException e) {
                    PDECore.logException(e);
                    try {
                        if (stream == null) return;
                        stream.close();
                        return;
                    }
                    catch (IOException e3) {
                        PDECore.logException(e3);
                    }
                    return;
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
        this.feature = new Feature();
        this.feature.model = this;
        this.setLoaded(true);
    }

    public void save() {
        if (this.file == null) {
            return;
        }
        ByteArrayInputStream stream = null;
        try {
            try {
                String contents = this.getContents();
                stream = new ByteArrayInputStream(contents.getBytes("UTF8"));
                if (this.file.exists()) {
                    this.file.setContents((InputStream)stream, false, false, null);
                } else {
                    this.file.create((InputStream)stream, false, null);
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
            writer.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
            this.feature.write("", writer);
        }
        this.setDirty(false);
    }

    public void setDirty(boolean dirty) {
        this.dirty = dirty;
    }

    public void setEditable(boolean newEditable) {
        this.editable = newEditable;
    }

    public void setFile(IFile newFile) {
        this.file = newFile;
    }
}

