/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.pde.internal.core.bundle;

import java.io.PrintWriter;
import java.io.Serializable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.plugin.IWritableDelimiter;

public class BundleObject
implements Serializable,
IWritable,
IWritableDelimiter {
    private static final long serialVersionUID = 1L;
    private transient IBundleModel model;

    public IBundleModel getModel() {
        return this.model;
    }

    public void setModel(IBundleModel newModel) {
        this.model = newModel;
    }

    protected void throwCoreException(String message) throws CoreException {
        Status status = new Status(4, "org.eclipse.pde.core", 0, message, null);
        throw new CoreException((IStatus)status);
    }

    protected void fireStructureChanged(BundleObject[] children, int changeType) {
        ModelChangedEvent e = new ModelChangedEvent(this.model, changeType, children, null);
        this.fireModelChanged(e);
    }

    protected void fireStructureChanged(BundleObject child, int changeType) {
        ModelChangedEvent e = new ModelChangedEvent(this.model, changeType, new Object[]{child}, null);
        this.fireModelChanged(e);
    }

    protected void fireModelChanged(IModelChangedEvent e) {
        IBundleModel provider = this.model;
        provider.fireModelChanged(e);
    }

    protected void firePropertyChanged(BundleObject object, String property, Object oldValue, Object newValue) {
        IBundleModel provider = this.model;
        provider.fireModelObjectChanged(object, property, oldValue, newValue);
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(indent);
        writer.print(this.toString());
    }

    public void reconnect(IBundleModel model) {
        this.model = model;
    }

    public void writeDelimeter(PrintWriter writer) {
        writer.println(',');
        writer.print(' ');
    }
}

