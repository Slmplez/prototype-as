/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.ui.statushandlers;

import java.util.HashMap;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.ui.statushandlers.IStatusAdapterConstants;

public class StatusAdapter
implements IAdaptable {
    public static final QualifiedName TITLE_PROPERTY = IStatusAdapterConstants.TITLE_PROPERTY;
    public static final QualifiedName TIMESTAMP_PROPERTY = IStatusAdapterConstants.TIMESTAMP_PROPERTY;
    private IStatus status;
    private HashMap properties;
    private HashMap adapters;

    public StatusAdapter(IStatus status) {
        this.status = status;
    }

    public void addAdapter(Class adapter, Object object) {
        if (this.adapters == null) {
            this.adapters = new HashMap();
        }
        this.adapters.put(adapter, object);
    }

    public Object getAdapter(Class adapter) {
        if (this.adapters == null) {
            return null;
        }
        return this.adapters.get(adapter);
    }

    public IStatus getStatus() {
        return this.status;
    }

    public void setStatus(IStatus status) {
        this.status = status;
    }

    public Object getProperty(QualifiedName key) {
        if (this.properties == null) {
            return null;
        }
        return this.properties.get(key);
    }

    public void setProperty(QualifiedName key, Object value) {
        if (this.properties == null) {
            this.properties = new HashMap();
        }
        this.properties.put(key, value);
    }
}

