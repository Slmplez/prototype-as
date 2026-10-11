/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.FileAdapter;
import org.eclipse.pde.internal.core.IFileAdapterFactory;

public class ModelFileAdapter
extends FileAdapter {
    private IPluginModelBase fModel;

    public ModelFileAdapter(IPluginModelBase model, File file, IFileAdapterFactory factory) {
        super(null, file, factory);
        this.fModel = model;
    }

    public IPluginModelBase getModel() {
        return this.fModel;
    }
}

