/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.build;

import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Properties;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.core.build.IBuildModelFactory;
import org.eclipse.pde.internal.core.AbstractModel;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.build.Build;
import org.eclipse.pde.internal.core.build.BuildModelFactory;

public abstract class BuildModel
extends AbstractModel
implements IBuildModel {
    private static final long serialVersionUID = 1L;
    protected Build fBuild;
    private BuildModelFactory fFactory;

    public IBuild getBuild() {
        if (!this.isLoaded()) {
            this.load();
        }
        return this.fBuild;
    }

    public IBuild getBuild(boolean createIfMissing) {
        if (this.fBuild == null && createIfMissing) {
            this.fBuild = new Build();
            this.fBuild.setModel(this);
            this.setLoaded(true);
        }
        return this.getBuild();
    }

    public IBuildModelFactory getFactory() {
        if (this.fFactory == null) {
            this.fFactory = new BuildModelFactory(this);
        }
        return this.fFactory;
    }

    public abstract void load();

    public void load(InputStream source, boolean outOfSync) {
        Properties properties = new Properties();
        try {
            properties.load(source);
            if (!outOfSync) {
                this.updateTimeStamp();
            }
        }
        catch (IOException e) {
            PDECore.logException(e);
            return;
        }
        this.fBuild = new Build();
        this.fBuild.setModel(this);
        Enumeration<?> names = properties.propertyNames();
        while (names.hasMoreElements()) {
            String name = names.nextElement().toString();
            this.fBuild.processEntry(name, (String)properties.get(name));
        }
        this.setLoaded(true);
    }

    public void reload(InputStream source, boolean outOfSync) {
        if (this.fBuild != null) {
            this.fBuild.reset();
        } else {
            this.fBuild = new Build();
            this.fBuild.setModel(this);
        }
        this.load(source, outOfSync);
        this.fireModelChanged(new ModelChangedEvent(this, 99, new Object[0], null));
    }
}

