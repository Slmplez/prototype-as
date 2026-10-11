/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.metadata.expression.ExpressionUtil
 *  org.eclipse.equinox.p2.query.ExpressionMatchQuery
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRequest
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.query.ExpressionMatchQuery;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;

public class DownloadManager {
    private ProvisioningContext provContext = null;
    ArrayList<IArtifactRequest> requestsToProcess = new ArrayList();
    private IProvisioningAgent agent = null;
    private static final Comparator<IArtifactRepository> LOCAL_FIRST_COMPARATOR = new Comparator<IArtifactRepository>(){
        private static final String FILE_PROTOCOL = "file";

        @Override
        public int compare(IArtifactRepository arg0, IArtifactRepository arg1) {
            String protocol0 = arg0.getLocation().getScheme();
            String protocol1 = arg1.getLocation().getScheme();
            if (FILE_PROTOCOL.equals(protocol0) && !FILE_PROTOCOL.equals(protocol1)) {
                return -1;
            }
            if (!FILE_PROTOCOL.equals(protocol0) && FILE_PROTOCOL.equals(protocol1)) {
                return 1;
            }
            return 0;
        }
    };
    static /* synthetic */ Class class$0;

    public DownloadManager(ProvisioningContext context, IProvisioningAgent agent) {
        this.provContext = context;
        this.agent = agent;
    }

    public void add(IArtifactRequest toAdd) {
        Assert.isNotNull((Object)toAdd);
        this.requestsToProcess.add(toAdd);
    }

    public void add(IArtifactRequest[] toAdd) {
        Assert.isNotNull((Object)toAdd);
        int i = 0;
        while (i < toAdd.length) {
            this.add(toAdd[i]);
            ++i;
        }
    }

    private void filterUnfetched() {
        Iterator<IArtifactRequest> iterator = this.requestsToProcess.iterator();
        while (iterator.hasNext()) {
            IArtifactRequest request = iterator.next();
            if (request.getResult() == null || !request.getResult().isOK()) continue;
            iterator.remove();
        }
    }

    public IStatus start(IProgressMonitor monitor) {
        SubMonitor subMonitor = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.download_artifact, (int)1000);
        try {
            IArtifactRepository[] repositories;
            if (this.requestsToProcess.isEmpty()) {
                IStatus iStatus = Status.OK_STATUS;
                return iStatus;
            }
            if (this.provContext == null) {
                this.provContext = new ProvisioningContext(this.agent);
            }
            IQueryable<IArtifactRepository> repoQueryable = this.provContext.getArtifactRepositories((IProgressMonitor)subMonitor.newChild(250));
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
            IQueryResult iQueryResult = repoQueryable.query((IQuery)all, (IProgressMonitor)subMonitor.newChild(250));
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.equinox.p2.repository.artifact.IArtifactRepository");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((repositories = (IArtifactRepository[])iQueryResult.toArray((Class)clazz2)).length == 0) {
                Status status = new Status(4, "org.eclipse.equinox.p2.engine", Messages.download_no_repository, (Throwable)new Exception("noArtifactRepositoriesAvailable"));
                return status;
            }
            Arrays.sort(repositories, LOCAL_FIRST_COMPARATOR);
            this.fetch(repositories, (IProgressMonitor)subMonitor.newChild(500));
            IStatus iStatus = this.overallStatus(monitor);
            return iStatus;
        }
        finally {
            subMonitor.done();
        }
    }

    private void fetch(IArtifactRepository[] repositories, IProgressMonitor mon) {
        SubMonitor monitor = SubMonitor.convert((IProgressMonitor)mon, (int)this.requestsToProcess.size());
        int i = 0;
        while (i < repositories.length && !this.requestsToProcess.isEmpty() && !monitor.isCanceled()) {
            IArtifactRequest[] requests = this.getRequestsForRepository(repositories[i]);
            IStatus dlStatus = repositories[i].getArtifacts(requests, (IProgressMonitor)monitor.newChild(requests.length));
            if (dlStatus.getSeverity() == 8) {
                return;
            }
            this.filterUnfetched();
            monitor.setWorkRemaining(this.requestsToProcess.size());
            ++i;
        }
    }

    private IArtifactRequest[] getRequestsForRepository(IArtifactRepository repository) {
        ArrayList<IArtifactRequest> applicable = new ArrayList<IArtifactRequest>();
        Iterator<IArtifactRequest> iterator = this.requestsToProcess.iterator();
        while (iterator.hasNext()) {
            IArtifactRequest request = iterator.next();
            if (!repository.contains(request.getArtifactKey())) continue;
            applicable.add(request);
        }
        return applicable.toArray(new IArtifactRequest[applicable.size()]);
    }

    private IStatus overallStatus(IProgressMonitor monitor) {
        if (monitor != null && monitor.isCanceled()) {
            return Status.CANCEL_STATUS;
        }
        if (this.requestsToProcess.size() == 0) {
            return Status.OK_STATUS;
        }
        MultiStatus result = new MultiStatus("org.eclipse.equinox.p2.engine", 0, null, null);
        Iterator<IArtifactRequest> iterator = this.requestsToProcess.iterator();
        while (iterator.hasNext()) {
            IArtifactRequest request = iterator.next();
            IStatus failed = request.getResult();
            if (failed == null || failed.isOK()) continue;
            result.add(failed);
        }
        return result;
    }
}

