/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.PrintWriter;
import java.io.Serializable;
import org.eclipse.pde.core.ISourceObject;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.plugin.IWritableDelimiter;
import org.eclipse.pde.internal.core.plugin.PluginImport;
import org.eclipse.pde.internal.core.plugin.PluginReference;

public class ImportObject
extends PluginReference
implements IWritable,
Serializable,
IWritableDelimiter {
    private static final long serialVersionUID = 1L;
    private IPluginImport iimport;
    static /* synthetic */ Class class$0;

    public ImportObject() {
    }

    public ImportObject(IPluginImport iimport) {
        super(iimport.getId());
        this.iimport = iimport;
    }

    public ImportObject(IPluginImport iimport, IPlugin plugin) {
        super(plugin);
        this.iimport = iimport;
    }

    public IPluginImport getImport() {
        return this.iimport;
    }

    public boolean equals(Object object) {
        ImportObject io;
        return object instanceof ImportObject && this.iimport.equals((io = (ImportObject)object).getImport());
    }

    public void write(String indent, PrintWriter writer) {
        this.iimport.write(indent, writer);
    }

    public Object getAdapter(Class key) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.pde.core.ISourceObject");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (key.equals(clazz) && this.iimport instanceof ISourceObject) {
            return this.iimport;
        }
        return super.getAdapter(key);
    }

    public void reconnect(IPluginModelBase model) {
        super.reconnect(model);
        IPluginBase parent = model.getPluginBase();
        if (this.iimport instanceof PluginImport) {
            ((PluginImport)this.iimport).reconnect(model, parent);
        }
    }

    public void writeDelimeter(PrintWriter writer) {
        if (this.iimport instanceof PluginImport) {
            ((PluginImport)this.iimport).writeDelimeter(writer);
        }
    }
}

