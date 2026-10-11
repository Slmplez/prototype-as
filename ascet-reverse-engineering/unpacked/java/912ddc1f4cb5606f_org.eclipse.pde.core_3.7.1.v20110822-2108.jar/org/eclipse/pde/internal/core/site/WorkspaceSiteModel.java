/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.pde.internal.core.site;

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
import org.eclipse.pde.internal.core.site.AbstractSiteModel;
import org.eclipse.pde.internal.core.site.Site;

public class WorkspaceSiteModel
extends AbstractSiteModel
implements IEditableModel {
    private static final long serialVersionUID = 1L;
    private boolean fDirty;
    private IFile fFile;
    private boolean fEditable = true;

    public WorkspaceSiteModel(IFile file) {
        this.fFile = file;
    }

    public void fireModelChanged(IModelChangedEvent event) {
        this.setDirty(event.getChangeType() != 99);
        super.fireModelChanged(event);
    }

    protected NLResourceHelper createNLResourceHelper() {
        try {
            IPath path = this.fFile.getLocation().removeLastSegments(1);
            String installLocation = path.toOSString();
            if (!installLocation.startsWith("file:")) {
                installLocation = "file:" + installLocation;
            }
            URL url = new URL(String.valueOf(installLocation) + "/");
            String name = "site";
            NLResourceHelper helper = new NLResourceHelper(name, new URL[]{url});
            return helper;
        }
        catch (MalformedURLException malformedURLException) {
            return null;
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
        catch (IOException iOException) {}
        return swriter.toString();
    }

    public IFile getFile() {
        return this.fFile;
    }

    public String getInstallLocation() {
        return this.fFile.getParent().getLocation().toOSString();
    }

    public IResource getUnderlyingResource() {
        return this.fFile;
    }

    public boolean isDirty() {
        return this.fDirty;
    }

    public boolean isEditable() {
        return this.fEditable;
    }

    public boolean isInSync() {
        return this.isInSync(this.fFile.getLocation().toFile());
    }

    protected void updateTimeStamp() {
        this.updateTimeStamp(this.fFile.getLocation().toFile());
    }

    public void load() {
        block19: {
            if (this.fFile.exists()) {
                InputStream stream;
                block18: {
                    stream = null;
                    try {
                        try {
                            stream = new BufferedInputStream(this.fFile.getContents(true));
                            try {
                                if (stream.available() > 0) {
                                    this.load(stream, false);
                                    break block18;
                                }
                                this.setLoaded(true);
                            }
                            catch (IOException iOException) {}
                        }
                        catch (CoreException coreException) {
                            try {
                                if (stream != null) {
                                    stream.close();
                                }
                                break block19;
                            }
                            catch (IOException iOException) {}
                            break block19;
                        }
                    }
                    catch (Throwable throwable) {
                        try {
                            if (stream != null) {
                                stream.close();
                            }
                        }
                        catch (IOException iOException) {}
                        throw throwable;
                    }
                }
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException iOException) {}
            } else {
                this.site = new Site();
                this.site.model = this;
                this.setLoaded(true);
            }
        }
    }

    public void save() {
        try {
            String contents = this.getContents();
            ByteArrayInputStream stream = new ByteArrayInputStream(contents.getBytes("UTF8"));
            if (this.fFile.exists()) {
                this.fFile.setContents((InputStream)stream, false, false, null);
            } else {
                this.fFile.create((InputStream)stream, false, null);
            }
            stream.close();
        }
        catch (CoreException e) {
            PDECore.logException(e);
        }
        catch (IOException iOException) {}
    }

    public void save(PrintWriter writer) {
        if (this.isLoaded()) {
            writer.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
            this.site.write("", writer);
        }
        this.setDirty(false);
    }

    public void setDirty(boolean dirty) {
        this.fDirty = dirty;
    }

    public void setEditable(boolean newEditable) {
        this.fEditable = newEditable;
    }
}

