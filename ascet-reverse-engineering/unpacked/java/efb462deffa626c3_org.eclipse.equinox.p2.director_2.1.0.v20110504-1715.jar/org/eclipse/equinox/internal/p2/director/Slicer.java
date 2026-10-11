/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.Tracing
 *  org.eclipse.equinox.internal.p2.metadata.InstallableUnit
 *  org.eclipse.equinox.internal.p2.metadata.InstallableUnitPatch
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IInstallableUnitFragment
 *  org.eclipse.equinox.p2.metadata.IInstallableUnitPatch
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.IRequirementChange
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.expression.IExpression
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.director;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.Tracing;
import org.eclipse.equinox.internal.p2.director.Messages;
import org.eclipse.equinox.internal.p2.director.QueryableArray;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnit;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnitPatch;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnitFragment;
import org.eclipse.equinox.p2.metadata.IInstallableUnitPatch;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.IRequirementChange;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Slicer {
    private static boolean DEBUG = false;
    private final IQueryable<IInstallableUnit> possibilites;
    private final boolean considerMetaRequirements;
    protected final IInstallableUnit selectionContext;
    private final Map<String, Map<Version, IInstallableUnit>> slice;
    private final MultiStatus result;
    private LinkedList<IInstallableUnit> toProcess;
    private Set<IInstallableUnit> considered;
    private Set<IInstallableUnit> nonGreedyIUs = new HashSet<IInstallableUnit>();

    public Slicer(IQueryable<IInstallableUnit> input, Map<String, String> context, boolean considerMetaRequirements) {
        this(input, InstallableUnit.contextIU(context), considerMetaRequirements);
    }

    public Slicer(IQueryable<IInstallableUnit> possibilites, IInstallableUnit selectionContext, boolean considerMetaRequirements) {
        this.possibilites = possibilites;
        this.selectionContext = selectionContext;
        this.considerMetaRequirements = considerMetaRequirements;
        this.slice = new HashMap<String, Map<Version, IInstallableUnit>>();
        this.result = new MultiStatus("org.eclipse.equinox.p2.director", 0, Messages.Planner_Problems_resolving_plan, null);
    }

    public IQueryable<IInstallableUnit> slice(IInstallableUnit[] ius, IProgressMonitor monitor) {
        try {
            long start = 0L;
            if (DEBUG) {
                start = System.currentTimeMillis();
                System.out.println(new StringBuffer("Start slicing: ").append(start).toString());
            }
            this.validateInput(ius);
            this.considered = new HashSet<IInstallableUnit>(Arrays.asList(ius));
            this.toProcess = new LinkedList<IInstallableUnit>(this.considered);
            while (!this.toProcess.isEmpty()) {
                if (monitor.isCanceled()) {
                    this.result.merge(Status.CANCEL_STATUS);
                    throw new OperationCanceledException();
                }
                this.processIU(this.toProcess.removeFirst());
            }
            this.computeNonGreedyIUs();
            if (DEBUG) {
                long stop = System.currentTimeMillis();
                System.out.println(new StringBuffer("Slicing complete: ").append(stop - start).toString());
            }
        }
        catch (IllegalStateException e) {
            this.result.add((IStatus)new Status(4, "org.eclipse.equinox.p2.director", e.getMessage(), (Throwable)e));
        }
        if (Tracing.DEBUG && this.result.getSeverity() != 0) {
            LogHelper.log((IStatus)this.result);
        }
        if (this.result.getSeverity() == 4) {
            return null;
        }
        return new QueryableArray(this.considered.toArray(new IInstallableUnit[this.considered.size()]));
    }

    private void computeNonGreedyIUs() {
        QueryableArray queryable = new QueryableArray(this.considered.toArray(new IInstallableUnit[this.considered.size()]));
        Iterator it = queryable.query(QueryUtil.ALL_UNITS, (IProgressMonitor)new NullProgressMonitor()).iterator();
        while (it.hasNext()) {
            Collection<IRequirement> reqs = this.getRequirements(((IInstallableUnit)it.next()).unresolved());
            for (IRequirement req : reqs) {
                if (!this.isApplicable(req) || this.isGreedy(req)) continue;
                this.nonGreedyIUs.addAll(queryable.query(QueryUtil.createMatchQuery((IExpression)req.getMatches(), (Object[])new Object[0]), null).toUnmodifiableSet());
            }
        }
    }

    public MultiStatus getStatus() {
        return this.result;
    }

    private void validateInput(IInstallableUnit[] ius) {
        int i = 0;
        while (i < ius.length) {
            if (!this.isApplicable(ius[i])) {
                throw new IllegalStateException(NLS.bind((String)Messages.Explanation_missingRootFilter, (Object)ius[i]));
            }
            ++i;
        }
    }

    protected boolean isApplicable(IRequirement req) {
        IMatchExpression filter = req.getFilter();
        return filter == null || filter.isMatch((Object)this.selectionContext);
    }

    protected boolean isApplicable(IInstallableUnit iu) {
        IMatchExpression filter = iu.getFilter();
        return filter == null || filter.isMatch((Object)this.selectionContext);
    }

    protected void processIU(IInstallableUnit iu) {
        Map<Version, IInstallableUnit> iuSlice = this.slice.get((iu = iu.unresolved()).getId());
        if (iuSlice == null) {
            iuSlice = new HashMap<Version, IInstallableUnit>();
            this.slice.put(iu.getId(), iuSlice);
        }
        iuSlice.put(iu.getVersion(), iu);
        if (!this.isApplicable(iu)) {
            return;
        }
        Collection<IRequirement> reqs = this.getRequirements(iu);
        if (reqs.isEmpty()) {
            return;
        }
        for (IRequirement req : reqs) {
            if (!this.isApplicable(req) || !this.isGreedy(req)) continue;
            this.expandRequirement(iu, req);
        }
    }

    protected boolean isGreedy(IRequirement req) {
        return req.isGreedy();
    }

    private Collection<IRequirement> getRequirements(IInstallableUnit iu) {
        boolean isPatch = iu instanceof IInstallableUnitPatch;
        boolean isFragment = iu instanceof IInstallableUnitFragment;
        if (!isFragment && !isPatch && iu.getMetaRequirements().size() == 0) {
            return iu.getRequirements();
        }
        ArrayList<IRequirement> aggregatedRequirements = new ArrayList<IRequirement>(iu.getRequirements().size() + iu.getMetaRequirements().size() + (isFragment ? ((IInstallableUnitFragment)iu).getHost().size() : 0) + (isPatch ? ((IInstallableUnitPatch)iu).getRequirementsChange().size() : 0));
        aggregatedRequirements.addAll(iu.getRequirements());
        if (iu instanceof IInstallableUnitFragment) {
            aggregatedRequirements.addAll(((IInstallableUnitFragment)iu).getHost());
        }
        if (iu instanceof InstallableUnitPatch) {
            IInstallableUnitPatch patchIU = (IInstallableUnitPatch)iu;
            List changes = patchIU.getRequirementsChange();
            int i = 0;
            while (i < changes.size()) {
                aggregatedRequirements.add((IRequirement)((IRequirementChange)changes.get(i)).newValue());
                ++i;
            }
        }
        if (this.considerMetaRequirements) {
            aggregatedRequirements.addAll(iu.getMetaRequirements());
        }
        return aggregatedRequirements;
    }

    private void expandRequirement(IInstallableUnit iu, IRequirement req) {
        if (req.getMax() == 0) {
            return;
        }
        IQueryResult matches = this.possibilites.query(QueryUtil.createMatchQuery((IExpression)req.getMatches(), (Object[])new Object[0]), null);
        int validMatches = 0;
        for (IInstallableUnit match : matches) {
            if (!this.isApplicable(match)) continue;
            ++validMatches;
            Map<Version, IInstallableUnit> iuSlice = this.slice.get(match.getId());
            if (iuSlice != null && iuSlice.containsKey(match.getVersion())) continue;
            this.consider(match);
        }
        if (validMatches == 0) {
            if (req.getMin() == 0) {
                if (DEBUG) {
                    System.out.println(new StringBuffer("No IU found to satisfy optional dependency of ").append(iu).append(" on req ").append(req).toString());
                }
            } else {
                this.result.add((IStatus)new Status(2, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Planner_Unsatisfied_dependency, (Object)iu, (Object)req)));
            }
        }
    }

    private void consider(IInstallableUnit match) {
        if (this.considered.add(match)) {
            this.toProcess.addLast(match);
        }
    }

    Set<IInstallableUnit> getNonGreedyIUs() {
        return this.nonGreedyIUs;
    }
}

