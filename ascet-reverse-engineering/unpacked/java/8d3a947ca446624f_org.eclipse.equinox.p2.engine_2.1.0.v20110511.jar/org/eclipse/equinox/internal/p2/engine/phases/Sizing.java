/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.ITouchpointType
 *  org.eclipse.equinox.p2.metadata.expression.ExpressionUtil
 *  org.eclipse.equinox.p2.query.ExpressionMatchQuery
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRequest
 */
package org.eclipse.equinox.internal.p2.engine.phases;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitOperand;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitPhase;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.ITouchpointType;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.query.ExpressionMatchQuery;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Sizing
extends InstallableUnitPhase {
    private static final String PHASE_ID = "sizing";
    private static final String COLLECT_PHASE_ID = "collect";
    private long sizeOnDisk;
    private long dlSize;
    static /* synthetic */ Class class$0;

    public Sizing(int weight) {
        super(PHASE_ID, weight);
    }

    @Override
    protected boolean isApplicable(InstallableUnitOperand op) {
        return op.second() != null && !op.second().equals((Object)op.first());
    }

    public long getDiskSize() {
        return this.sizeOnDisk;
    }

    public long getDownloadSize() {
        return this.dlSize;
    }

    @Override
    protected List<ProvisioningAction> getActions(InstallableUnitOperand operand) {
        IInstallableUnit unit = operand.second();
        List<ProvisioningAction> parsedActions = this.getActions(unit, COLLECT_PHASE_ID);
        if (parsedActions != null) {
            return parsedActions;
        }
        ITouchpointType type = unit.getTouchpointType();
        if (type == null || type == ITouchpointType.NONE) {
            return null;
        }
        String actionId = this.getActionManager().getTouchpointQualifiedActionId(COLLECT_PHASE_ID, type);
        ProvisioningAction action = this.getActionManager().getAction(actionId, null);
        if (action == null) {
            return null;
        }
        return Collections.singletonList(action);
    }

    @Override
    protected String getProblemMessage() {
        return Messages.Phase_Sizing_Error;
    }

    @Override
    protected IStatus completePhase(IProgressMonitor monitor, IProfile profile, Map<String, Object> parameters) {
        List artifactRequests = (List)parameters.get("artifactRequests");
        ProvisioningContext context = (ProvisioningContext)parameters.get("context");
        int statusCode = 0;
        HashSet<IArtifactRequest> artifactsToObtain = new HashSet<IArtifactRequest>(artifactRequests.size());
        for (IArtifactRequest[] requests : artifactRequests) {
            if (requests == null) continue;
            int i = 0;
            while (i < requests.length) {
                artifactsToObtain.add(requests[i]);
                ++i;
            }
        }
        if (monitor.isCanceled()) {
            return Status.CANCEL_STATUS;
        }
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)1000);
        IQueryable<IArtifactRepository> repoQueryable = context.getArtifactRepositories((IProgressMonitor)sub.newChild(500));
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.repository.artifact.IArtifactRepository");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ExpressionMatchQuery all = new ExpressionMatchQuery((Class)clazz, ExpressionUtil.TRUE_EXPRESSION, new Object[0]);
        IQueryResult iQueryResult = repoQueryable.query((IQuery)all, (IProgressMonitor)sub.newChild(500));
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.equinox.p2.repository.artifact.IArtifactRepository");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IArtifactRepository[] repositories = (IArtifactRepository[])iQueryResult.toArray((Class)clazz2);
        for (IArtifactRequest artifactRequest : artifactsToObtain) {
            if (sub.isCanceled()) break;
            boolean found = false;
            int i = 0;
            while (i < repositories.length) {
                IArtifactRepository repo = repositories[i];
                if (sub.isCanceled()) {
                    return Status.CANCEL_STATUS;
                }
                IArtifactDescriptor[] descriptors = repo.getArtifactDescriptors(artifactRequest.getArtifactKey());
                if (descriptors.length > 0) {
                    if (descriptors[0].getProperty("artifact.size") != null) {
                        this.sizeOnDisk += Long.parseLong(descriptors[0].getProperty("artifact.size"));
                    } else {
                        statusCode = 1202;
                    }
                    if (descriptors[0].getProperty("download.size") != null) {
                        this.dlSize += Long.parseLong(descriptors[0].getProperty("download.size"));
                    } else {
                        statusCode = 1202;
                    }
                    found = true;
                    break;
                }
                ++i;
            }
            if (found) continue;
            return new Status(4, "org.eclipse.equinox.p2.engine", 1200, Messages.Phase_Sizing_Error, null);
        }
        if (statusCode != 0) {
            return new Status(2, "org.eclipse.equinox.p2.engine", statusCode, Messages.Phase_Sizing_Warning, null);
        }
        return null;
    }

    @Override
    protected IStatus initializePhase(IProgressMonitor monitor, IProfile profile, Map<String, Object> parameters) {
        parameters.put("artifactRequests", new ArrayList());
        return null;
    }

    @Override
    protected IStatus initializeOperand(IProfile profile, InstallableUnitOperand operand, Map<String, Object> parameters, IProgressMonitor monitor) {
        IStatus status = super.initializeOperand(profile, operand, parameters, monitor);
        IInstallableUnit iu = operand.second();
        parameters.put("iu", iu);
        return status;
    }
}

