/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.pde.internal.core.text.build;

import java.io.IOException;
import java.io.InputStream;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.core.build.IBuildModelFactory;
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.text.AbstractEditingModel;
import org.eclipse.pde.internal.core.text.build.Build;
import org.eclipse.pde.internal.core.text.build.BuildModelFactory;

public class BuildModel
extends AbstractEditingModel
implements IBuildModel {
    private BuildModelFactory fFactory;
    private Build fBuild;

    public BuildModel(IDocument document, boolean isReconciling) {
        super(document, isReconciling);
    }

    protected NLResourceHelper createNLResourceHelper() {
        return null;
    }

    public void load(InputStream source, boolean outOfSync) throws CoreException {
        try {
            this.fLoaded = true;
            ((Build)this.getBuild()).load(source);
        }
        catch (IOException iOException) {
            this.fLoaded = false;
        }
    }

    public void adjustOffsets(IDocument document) {
        ((Build)this.getBuild()).adjustOffsets(document);
    }

    public IBuild getBuild() {
        if (this.fBuild == null) {
            this.fBuild = new Build(this);
        }
        return this.fBuild;
    }

    public IBuildModelFactory getFactory() {
        if (this.fFactory == null) {
            this.fFactory = new BuildModelFactory(this);
        }
        return this.fFactory;
    }
}

