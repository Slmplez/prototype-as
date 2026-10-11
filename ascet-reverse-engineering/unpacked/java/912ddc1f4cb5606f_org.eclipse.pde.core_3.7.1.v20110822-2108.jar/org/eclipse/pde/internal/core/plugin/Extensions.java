/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.PrintWriter;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.internal.core.plugin.AbstractExtensions;

public class Extensions
extends AbstractExtensions {
    private static final long serialVersionUID = 1L;
    private Boolean fValid;
    private boolean fIsFragment;

    public Extensions(boolean readOnly) {
        super(readOnly);
    }

    void load(Extensions srcPluginBase) {
        super.load(srcPluginBase);
    }

    void load(String schemaVersion) {
        this.fSchemaVersion = schemaVersion;
    }

    public void reset() {
        super.reset();
        this.fValid = null;
    }

    public boolean isValid() {
        if (this.fValid == null) {
            this.fValid = new Boolean(this.hasRequiredAttributes());
        }
        return this.fValid;
    }

    public void write(String indent, PrintWriter writer) {
        writer.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
        if (this.fSchemaVersion != null) {
            writer.println("<?eclipse version=\"" + this.fSchemaVersion + "\"?>");
        }
        writer.println(this.fIsFragment ? "<fragment>" : "<plugin>");
        String firstIndent = "   ";
        IPluginObject[] children = this.getExtensionPoints();
        if (children.length > 0) {
            writer.println();
        }
        int i = 0;
        while (i < children.length) {
            children[i].write(firstIndent, writer);
            ++i;
        }
        children = this.getExtensions();
        if (children.length > 0) {
            writer.println();
        }
        i = 0;
        while (i < children.length) {
            ((IPluginExtension)children[i]).write(firstIndent, writer);
            ++i;
        }
        writer.println();
        writer.println(this.fIsFragment ? "</fragment>" : "</plugin>");
    }

    public void setIsFragment(boolean isFragment) {
        this.fIsFragment = isFragment;
    }
}

