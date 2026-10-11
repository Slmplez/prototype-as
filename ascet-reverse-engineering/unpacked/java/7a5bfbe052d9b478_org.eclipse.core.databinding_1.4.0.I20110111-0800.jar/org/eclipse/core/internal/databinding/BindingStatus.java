/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 */
package org.eclipse.core.internal.databinding;

import java.util.Arrays;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;

public class BindingStatus
extends MultiStatus {
    public BindingStatus(String pluginId, int code, String message, Throwable exception) {
        super(pluginId, code, message, exception);
    }

    public void add(IStatus status) {
        if (status.getSeverity() >= this.getSeverity()) {
            this.setMessage(status.getMessage() != null ? status.getMessage() : "");
            this.setException(status.getException());
            this.setPlugin(status.getPlugin());
            this.setCode(status.getCode());
        }
        super.add(status);
    }

    public static BindingStatus ok() {
        return new BindingStatus("org.eclipse.core.databinding", 0, "", null);
    }

    private static int hashCode(Object[] array) {
        if (array == null) {
            return 0;
        }
        int result = 1;
        int index = 0;
        while (index < array.length) {
            result = 31 * result + (array[index] == null ? 0 : array[index].hashCode());
            ++index;
        }
        return result;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + BindingStatus.hashCode(this.getChildren());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (((Object)((Object)this)).getClass() != obj.getClass()) {
            return false;
        }
        BindingStatus other = (BindingStatus)((Object)obj);
        return Arrays.equals(this.getChildren(), other.getChildren());
    }
}

