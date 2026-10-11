/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.progress;

import java.util.HashMap;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.progress.IProgressConstants;
import org.eclipse.ui.statushandlers.StatusAdapter;

public class StatusAdapterHelper {
    private static StatusAdapterHelper instance;
    private HashMap map;

    private StatusAdapterHelper() {
    }

    public static StatusAdapterHelper getInstance() {
        if (instance == null) {
            instance = new StatusAdapterHelper();
        }
        return instance;
    }

    public void putStatusAdapter(JobInfo info, StatusAdapter statusAdapter) {
        if (this.map == null) {
            this.map = new HashMap();
        }
        this.map.put(info, statusAdapter);
    }

    public StatusAdapter getStatusAdapter(JobInfo info) {
        if (this.map == null) {
            return null;
        }
        StatusAdapter statusAdapter = (StatusAdapter)this.map.remove(info);
        statusAdapter.setProperty(IProgressConstants.NO_IMMEDIATE_ERROR_PROMPT_PROPERTY, Boolean.FALSE);
        return statusAdapter;
    }

    public void clear() {
        if (this.map != null) {
            this.map.clear();
        }
    }
}

