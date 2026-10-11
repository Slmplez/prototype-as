/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.DateFormat
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.progress;

import com.ibm.icu.text.DateFormat;
import java.util.Date;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.progress.ProgressMessages;

public class ErrorInfo
extends JobTreeElement {
    private final IStatus errorStatus;
    private final Job job;
    private final long timestamp;

    public ErrorInfo(IStatus status, Job job) {
        this.errorStatus = status;
        this.job = job;
        this.timestamp = System.currentTimeMillis();
    }

    boolean hasChildren() {
        return false;
    }

    Object[] getChildren() {
        return ProgressManagerUtil.EMPTY_OBJECT_ARRAY;
    }

    String getDisplayString() {
        return NLS.bind((String)ProgressMessages.JobInfo_Error, (Object[])new Object[]{this.job.getName(), DateFormat.getDateTimeInstance((int)1, (int)1).format(new Date(this.timestamp))});
    }

    Image getImage() {
        return JFaceResources.getImage((String)"ERROR_JOB");
    }

    boolean isJobInfo() {
        return false;
    }

    IStatus getErrorStatus() {
        return this.errorStatus;
    }

    boolean isActive() {
        return true;
    }

    public Job getJob() {
        return this.job;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public int compareTo(Object arg0) {
        if (arg0 instanceof ErrorInfo) {
            long otherTimestamp = ((ErrorInfo)arg0).timestamp;
            if (this.timestamp < otherTimestamp) {
                return -1;
            }
            if (this.timestamp > otherTimestamp) {
                return 1;
            }
            return 0;
        }
        return super.compareTo(arg0);
    }
}

