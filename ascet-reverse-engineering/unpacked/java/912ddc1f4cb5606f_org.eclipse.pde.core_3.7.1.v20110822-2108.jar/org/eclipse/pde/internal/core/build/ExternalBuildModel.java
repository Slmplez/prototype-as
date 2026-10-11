/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.build;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.build.Build;
import org.eclipse.pde.internal.core.build.BuildModel;

public class ExternalBuildModel
extends BuildModel {
    private static final long serialVersionUID = 1L;
    private String fInstallLocation;

    public ExternalBuildModel(String installLocation) {
        this.fInstallLocation = installLocation;
    }

    public String getInstallLocation() {
        return this.fInstallLocation;
    }

    public boolean isEditable() {
        return false;
    }

    public void load() {
        InputStream stream = null;
        try {
            try {
                URL url = null;
                File file = new File(this.getInstallLocation());
                url = file.isFile() && file.getName().endsWith(".jar") ? new URL("jar:file:" + file.getAbsolutePath() + "!/build.properties") : new URL("file:" + file.getAbsolutePath() + '/' + "build.properties");
                stream = url.openStream();
                this.load(stream, false);
            }
            catch (IOException iOException) {
                this.fBuild = new Build();
                this.fBuild.setModel(this);
                this.setLoaded(true);
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

    protected void updateTimeStamp() {
        this.updateTimeStamp(this.getLocalFile());
    }

    private File getLocalFile() {
        File file = new File(this.getInstallLocation());
        return file.isFile() ? file : new File(file, "build.properties");
    }

    public boolean isInSync() {
        return true;
    }
}

