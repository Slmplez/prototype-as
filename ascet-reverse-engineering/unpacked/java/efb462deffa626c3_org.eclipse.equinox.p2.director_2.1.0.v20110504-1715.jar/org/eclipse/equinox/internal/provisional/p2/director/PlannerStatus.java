/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.Collector
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 */
package org.eclipse.equinox.internal.provisional.p2.director;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.internal.provisional.p2.director.RequestStatus;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.query.Collector;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PlannerStatus
implements IStatus {
    private final IStatus status;
    private final RequestStatus globalRequestStatus;
    private final Map<IInstallableUnit, RequestStatus> requestChanges;
    private final Map<IInstallableUnit, RequestStatus> requestSideEffects;
    private final IQueryable<IInstallableUnit> plannedState;
    private static final IQueryable<IInstallableUnit> EMPTY_IU_QUERYABLE = new IQueryable<IInstallableUnit>(){

        public IQueryResult<IInstallableUnit> query(IQuery<IInstallableUnit> query, IProgressMonitor monitor) {
            return Collector.emptyCollector();
        }
    };

    public PlannerStatus(IStatus status, RequestStatus globalRequestStatus, Map<IInstallableUnit, RequestStatus> requestChanges, Map<IInstallableUnit, RequestStatus> requestSideEffects, IQueryable<IInstallableUnit> plannedState) {
        this.status = status;
        this.globalRequestStatus = globalRequestStatus;
        this.requestChanges = requestChanges;
        this.requestSideEffects = requestSideEffects;
        this.plannedState = plannedState == null ? EMPTY_IU_QUERYABLE : plannedState;
    }

    public RequestStatus getRequestStatus() {
        return this.globalRequestStatus;
    }

    public Map<IInstallableUnit, RequestStatus> getRequestChanges() {
        return this.requestChanges;
    }

    public Map<IInstallableUnit, RequestStatus> getRequestSideEffects() {
        return this.requestSideEffects;
    }

    public IQueryable<IInstallableUnit> getPlannedState() {
        return this.plannedState;
    }

    public IStatus[] getChildren() {
        return this.status.getChildren();
    }

    public int getCode() {
        return this.status.getCode();
    }

    public Throwable getException() {
        return this.status.getException();
    }

    public String getMessage() {
        return this.status.getMessage();
    }

    public String getPlugin() {
        return this.status.getPlugin();
    }

    public int getSeverity() {
        return this.status.getSeverity();
    }

    public boolean isMultiStatus() {
        return this.status.isMultiStatus();
    }

    public boolean isOK() {
        return this.status.isOK();
    }

    public boolean matches(int severityMask) {
        return this.status.matches(severityMask);
    }
}

