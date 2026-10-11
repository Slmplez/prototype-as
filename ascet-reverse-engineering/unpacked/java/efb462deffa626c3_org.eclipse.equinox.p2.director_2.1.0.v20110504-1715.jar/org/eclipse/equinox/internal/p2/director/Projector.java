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
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.Tracing
 *  org.eclipse.equinox.internal.p2.metadata.IRequiredCapability
 *  org.eclipse.equinox.internal.p2.metadata.InstallableUnit
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IInstallableUnitFragment
 *  org.eclipse.equinox.p2.metadata.IInstallableUnitPatch
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.IRequirementChange
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.expression.IExpression
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.query.Collector
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.osgi.util.NLS
 *  org.sat4j.pb.SolverFactory
 *  org.sat4j.pb.UserFriendlyPBStringSolver
 *  org.sat4j.pb.tools.DependencyHelper
 *  org.sat4j.pb.tools.WeightedObject
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.TimeoutException
 */
package org.eclipse.equinox.internal.p2.director;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.core.helpers.Tracing;
import org.eclipse.equinox.internal.p2.director.ApplicablePatchQuery;
import org.eclipse.equinox.internal.p2.director.DirectorActivator;
import org.eclipse.equinox.internal.p2.director.Explanation;
import org.eclipse.equinox.internal.p2.director.InfiniteProgress;
import org.eclipse.equinox.internal.p2.director.Messages;
import org.eclipse.equinox.internal.p2.director.QueryableArray;
import org.eclipse.equinox.internal.p2.director.Slicer;
import org.eclipse.equinox.internal.p2.metadata.IRequiredCapability;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnitFragment;
import org.eclipse.equinox.p2.metadata.IInstallableUnitPatch;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.IRequirementChange;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.query.Collector;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.osgi.util.NLS;
import org.sat4j.pb.SolverFactory;
import org.sat4j.pb.UserFriendlyPBStringSolver;
import org.sat4j.pb.tools.DependencyHelper;
import org.sat4j.pb.tools.WeightedObject;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVec;
import org.sat4j.specs.TimeoutException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Projector {
    static boolean DEBUG = Tracing.DEBUG_PLANNER_PROJECTOR;
    private static boolean DEBUG_ENCODING = false;
    private IQueryable<IInstallableUnit> picker;
    private QueryableArray patches;
    private Map<IInstallableUnit, AbstractVariable> noopVariables;
    private List<AbstractVariable> abstractVariables;
    private Map<String, Map<Version, IInstallableUnit>> slice;
    private IInstallableUnit selectionContext;
    DependencyHelper<Object, Explanation> dependencyHelper;
    private Collection<IInstallableUnit> solution;
    private Collection<Object> assumptions;
    private MultiStatus result;
    private Collection<IInstallableUnit> alreadyInstalledIUs;
    private IQueryable<IInstallableUnit> lastState;
    private boolean considerMetaRequirements;
    private IInstallableUnit entryPoint;
    private Map<IInstallableUnitFragment, Set<IInstallableUnit>> fragments = new HashMap<IInstallableUnitFragment, Set<IInstallableUnit>>();
    private int numberOfInstalledIUs;
    private Set<IInstallableUnit> nonGreedyIUs;
    private Map<IInstallableUnit, AbstractVariable> nonGreedyVariables = new HashMap<IInstallableUnit, AbstractVariable>();
    private Map<AbstractVariable, List<Object>> nonGreedyProvider = new HashMap<AbstractVariable, List<Object>>();
    private boolean emptyBecauseFiltered;
    static /* synthetic */ Class class$0;

    public Projector(IQueryable<IInstallableUnit> q, Map<String, String> context, Set<IInstallableUnit> nonGreedyIUs, boolean considerMetaRequirements) {
        this.picker = q;
        this.noopVariables = new HashMap<IInstallableUnit, AbstractVariable>();
        this.slice = new HashMap<String, Map<Version, IInstallableUnit>>();
        this.selectionContext = InstallableUnit.contextIU(context);
        this.abstractVariables = new ArrayList<AbstractVariable>();
        this.result = new MultiStatus("org.eclipse.equinox.p2.director", 0, Messages.Planner_Problems_resolving_plan, null);
        this.assumptions = new ArrayList<Object>();
        this.nonGreedyIUs = nonGreedyIUs;
        this.considerMetaRequirements = considerMetaRequirements;
    }

    protected boolean isInstalled(IInstallableUnit iu) {
        return !this.lastState.query(QueryUtil.createIUQuery((IVersionedId)iu), null).isEmpty();
    }

    public void encode(IInstallableUnit entryPointIU, IInstallableUnit[] alreadyExistingRoots, IQueryable<IInstallableUnit> installedIUs, Collection<IInstallableUnit> newRoots, IProgressMonitor monitor) {
        this.alreadyInstalledIUs = Arrays.asList(alreadyExistingRoots);
        this.numberOfInstalledIUs = this.sizeOf(installedIUs);
        this.lastState = installedIUs;
        this.entryPoint = entryPointIU;
        try {
            long start = 0L;
            if (DEBUG) {
                start = System.currentTimeMillis();
                Tracing.debug((String)new StringBuffer("Start projection: ").append(start).toString());
            }
            Object solver = DEBUG_ENCODING ? new UserFriendlyPBStringSolver() : SolverFactory.newEclipseP2();
            int timeout = 1000;
            String timeoutString = null;
            try {
                timeoutString = DirectorActivator.context.getProperty("eclipse.p2.projector.timeout");
                if (timeoutString != null) {
                    timeout = Math.max(timeout, Integer.parseInt(timeoutString));
                }
            }
            catch (Exception e) {
                System.err.println(new StringBuffer("Ignoring user-specified 'eclipse.p2.projector.timeout' value of: ").append(timeoutString).toString());
                e.printStackTrace();
            }
            solver.setTimeoutOnConflicts(timeout);
            IQueryResult queryResult = this.picker.query(QueryUtil.createIUAnyQuery(), null);
            if (DEBUG_ENCODING) {
                this.dependencyHelper = new DependencyHelper(solver, false);
                ((UserFriendlyPBStringSolver)solver).setMapping(this.dependencyHelper.getMappingToDomain());
            } else {
                this.dependencyHelper = new DependencyHelper(solver);
            }
            Iterator iusToEncode = queryResult.iterator();
            ArrayList<IInstallableUnit> iusToOrder = new ArrayList<IInstallableUnit>();
            while (iusToEncode.hasNext()) {
                iusToOrder.add((IInstallableUnit)iusToEncode.next());
            }
            Collections.sort(iusToOrder);
            iusToEncode = iusToOrder.iterator();
            while (iusToEncode.hasNext()) {
                if (monitor.isCanceled()) {
                    this.result.merge(Status.CANCEL_STATUS);
                    throw new OperationCanceledException();
                }
                IInstallableUnit iuToEncode = (IInstallableUnit)iusToEncode.next();
                if (iuToEncode == entryPointIU) continue;
                this.processIU(iuToEncode, false);
            }
            this.createMustHave(entryPointIU, alreadyExistingRoots);
            this.createConstraintsForSingleton();
            this.createConstraintsForNonGreedy();
            this.createOptimizationFunction(entryPointIU, newRoots);
            if (DEBUG) {
                long stop = System.currentTimeMillis();
                Tracing.debug((String)new StringBuffer("Projection complete: ").append(stop - start).toString());
            }
            if (DEBUG_ENCODING) {
                System.out.println(solver.toString());
            }
        }
        catch (IllegalStateException e) {
            this.result.add((IStatus)new Status(4, "org.eclipse.equinox.p2.director", e.getMessage(), (Throwable)e));
        }
        catch (ContradictionException contradictionException) {
            this.result.add((IStatus)new Status(4, "org.eclipse.equinox.p2.director", Messages.Planner_Unsatisfiable_problem));
        }
    }

    private void createConstraintsForNonGreedy() throws ContradictionException {
        for (IInstallableUnit iu : this.nonGreedyIUs) {
            AbstractVariable var = this.getNonGreedyVariable(iu);
            List<Object> providers = this.nonGreedyProvider.get(var);
            if (providers == null || providers.size() == 0) {
                this.dependencyHelper.setFalse((Object)var, (Object)new Explanation.MissingGreedyIU(iu));
                continue;
            }
            this.createImplication(var, providers, Explanation.OPTIONAL_REQUIREMENT);
        }
    }

    private int sizeOf(IQueryable<IInstallableUnit> installedIUs) {
        IQueryResult qr = installedIUs.query(QueryUtil.createIUAnyQuery(), null);
        if (qr instanceof Collector) {
            return ((Collector)qr).size();
        }
        return qr.toUnmodifiableSet().size();
    }

    private void createOptimizationFunction(IInstallableUnit metaIu, Collection<IInstallableUnit> newRoots) {
        BigInteger POWER;
        IQueryable<IInstallableUnit> queryable;
        ArrayList<WeightedObject<? extends Object>> weightedObjects = new ArrayList<WeightedObject<? extends Object>>();
        Set transitiveClosure = newRoots.isEmpty() ? CollectionUtils.emptySet() : ((queryable = new Slicer(this.picker, this.selectionContext, false).slice(newRoots.toArray(new IInstallableUnit[newRoots.size()]), (IProgressMonitor)new NullProgressMonitor())) == null ? CollectionUtils.emptySet() : queryable.query(QueryUtil.ALL_UNITS, (IProgressMonitor)new NullProgressMonitor()).toSet());
        Set<Map.Entry<String, Map<Version, IInstallableUnit>>> s = this.slice.entrySet();
        BigInteger maxWeight = POWER = BigInteger.valueOf(this.numberOfInstalledIUs > 0 ? this.numberOfInstalledIUs + 1 : 2);
        for (Map.Entry<String, Map<Version, IInstallableUnit>> entry : s) {
            ArrayList<IInstallableUnit> conflictingEntries = new ArrayList<IInstallableUnit>(entry.getValue().values());
            if (conflictingEntries.size() == 1) {
                IInstallableUnit iu = (IInstallableUnit)conflictingEntries.get(0);
                if (iu == metaIu) continue;
                weightedObjects.add(WeightedObject.newWO((Object)iu, (BigInteger)POWER));
                continue;
            }
            Collections.sort(conflictingEntries, Collections.reverseOrder());
            BigInteger weight = POWER;
            boolean installedIuMet = false;
            boolean rootedMet = false;
            for (IInstallableUnit iu : conflictingEntries) {
                if (!rootedMet && this.isInstalled(iu) && !transitiveClosure.contains(iu)) {
                    installedIuMet = true;
                    weightedObjects.add(WeightedObject.newWO((Object)iu, (BigInteger)BigInteger.ONE));
                } else if (!installedIuMet && !rootedMet && this.isRoot(iu, newRoots)) {
                    rootedMet = true;
                    weightedObjects.add(WeightedObject.newWO((Object)iu, (BigInteger)BigInteger.ONE));
                } else {
                    weightedObjects.add(WeightedObject.newWO((Object)iu, (BigInteger)weight));
                }
                weight = weight.multiply(POWER);
            }
            if (weight.compareTo(maxWeight) <= 0) continue;
            maxWeight = weight;
        }
        maxWeight = maxWeight.multiply(POWER).multiply(BigInteger.valueOf(s.size()));
        BigInteger abstractWeight = maxWeight.negate();
        for (AbstractVariable var : this.abstractVariables) {
            weightedObjects.add(WeightedObject.newWO((Object)var, (BigInteger)abstractWeight));
        }
        maxWeight = maxWeight.multiply(POWER).add(BigInteger.ONE);
        BigInteger optionalWeight = maxWeight.negate();
        long countOptional = 1L;
        ArrayList<IInstallableUnit> requestedPatches = new ArrayList<IInstallableUnit>();
        Collection reqs = metaIu.getRequirements();
        for (IRequirement req : reqs) {
            if (req.getMin() > 0 || !req.isGreedy()) continue;
            IQueryResult matches = this.picker.query(QueryUtil.createMatchQuery((IExpression)req.getMatches(), (Object[])new Object[0]), null);
            for (IInstallableUnit match : matches) {
                if (match instanceof IInstallableUnitPatch) {
                    requestedPatches.add(match);
                    ++countOptional;
                    continue;
                }
                weightedObjects.add((WeightedObject<? extends Object>)WeightedObject.newWO((Object)match, (BigInteger)optionalWeight));
            }
        }
        BigInteger patchWeight = maxWeight.multiply(POWER).multiply(BigInteger.valueOf(countOptional)).negate();
        Iterator iterator = requestedPatches.iterator();
        while (iterator.hasNext()) {
            weightedObjects.add((WeightedObject<? extends Object>)WeightedObject.newWO((Object)((IInstallableUnit)iterator.next()), (BigInteger)patchWeight));
        }
        if (!weightedObjects.isEmpty()) {
            this.createObjectiveFunction(weightedObjects);
        }
    }

    private boolean isRoot(IInstallableUnit iu, Collection<IInstallableUnit> newRoots) {
        return newRoots.contains(iu);
    }

    private void createObjectiveFunction(List<WeightedObject<? extends Object>> weightedObjects) {
        if (DEBUG) {
            StringBuffer b = new StringBuffer();
            for (WeightedObject<? extends Object> object : weightedObjects) {
                if (b.length() > 0) {
                    b.append(", ");
                }
                b.append(object.getWeight());
                b.append(' ');
                b.append(object.thing);
            }
            Tracing.debug((String)new StringBuffer("objective function: ").append((Object)b).toString());
        }
        WeightedObject[] array = weightedObjects.toArray(new WeightedObject[weightedObjects.size()]);
        this.dependencyHelper.setObjectiveFunction(array);
    }

    private void createMustHave(IInstallableUnit iu, IInstallableUnit[] alreadyExistingRoots) throws ContradictionException {
        this.processIU(iu, true);
        if (DEBUG) {
            Tracing.debug((String)new StringBuffer().append(iu).append("=1").toString());
        }
        this.assumptions.add(iu);
    }

    private void createNegation(IInstallableUnit iu, IRequirement req) throws ContradictionException {
        if (DEBUG) {
            Tracing.debug((String)new StringBuffer().append(iu).append("=0").toString());
        }
        this.dependencyHelper.setFalse((Object)iu, (Object)new Explanation.MissingIU(iu, req, iu == this.entryPoint));
    }

    private boolean isApplicable(IRequirement req) {
        IMatchExpression filter = req.getFilter();
        return filter == null || filter.isMatch((Object)this.selectionContext);
    }

    private boolean isApplicable(IInstallableUnit iu) {
        IMatchExpression filter = iu.getFilter();
        return filter == null || filter.isMatch((Object)this.selectionContext);
    }

    private void expandNegatedRequirement(IRequirement req, IInstallableUnit iu, List<AbstractVariable> optionalAbstractRequirements, boolean isRootIu) throws ContradictionException {
        IInstallableUnit reqIu;
        if (!this.isApplicable(req)) {
            return;
        }
        List<IInstallableUnit> matches = this.getApplicableMatches(req);
        if (matches.isEmpty()) {
            return;
        }
        Explanation explanation = isRootIu ? (this.alreadyInstalledIUs.contains(reqIu = matches.get(0)) ? new Explanation.IUInstalled(reqIu) : new Explanation.IUToInstall(reqIu)) : new Explanation.HardRequirement(iu, req);
        this.createNegationImplication(iu, matches, explanation);
    }

    private void determinePotentialHostsForFragment(IInstallableUnit iu) {
        if (!(iu instanceof IInstallableUnitFragment)) {
            return;
        }
        IInstallableUnitFragment fragment = (IInstallableUnitFragment)iu;
        for (IRequirement req : fragment.getHost()) {
            List<IInstallableUnit> matches = this.getApplicableMatches(req);
            this.rememberHostMatches((IInstallableUnitFragment)iu, matches);
        }
    }

    private void expandRequirement(IRequirement req, IInstallableUnit iu, List<AbstractVariable> optionalAbstractRequirements, boolean isRootIu) throws ContradictionException {
        if (req.getMax() == 0) {
            this.expandNegatedRequirement(req, iu, optionalAbstractRequirements, isRootIu);
            return;
        }
        if (!this.isApplicable(req)) {
            return;
        }
        List<IInstallableUnit> matches = this.getApplicableMatches(req);
        this.determinePotentialHostsForFragment(iu);
        if (req.getMin() > 0) {
            if (matches.isEmpty()) {
                if (iu == this.entryPoint && this.emptyBecauseFiltered) {
                    this.dependencyHelper.setFalse((Object)iu, (Object)new Explanation.NotInstallableRoot(req));
                } else {
                    this.missingRequirement(iu, req);
                }
            } else if (req.isGreedy()) {
                IInstallableUnit reqIu = matches.get(0);
                Explanation explanation = isRootIu ? (this.alreadyInstalledIUs.contains(reqIu) ? new Explanation.IUInstalled(reqIu) : new Explanation.IUToInstall(reqIu)) : new Explanation.HardRequirement(iu, req);
                this.createImplication(iu, matches, explanation);
                for (IInstallableUnit current : matches) {
                    if (!this.nonGreedyIUs.contains(current)) continue;
                    this.addNonGreedyProvider(this.getNonGreedyVariable(current), iu);
                }
            } else {
                ArrayList<AbstractVariable> newConstraint = new ArrayList<AbstractVariable>(matches.size());
                for (IInstallableUnit current : matches) {
                    newConstraint.add(this.getNonGreedyVariable(current));
                }
                this.createImplication(new Object[]{iu}, (List<?>)newConstraint, (Explanation)new Explanation.HardRequirement(iu, req));
            }
        } else if (!matches.isEmpty()) {
            AbstractVariable abs;
            if (req.isGreedy()) {
                abs = this.getAbstractVariable(req);
                this.createImplication(new Object[]{abs, iu}, matches, Explanation.OPTIONAL_REQUIREMENT);
                for (IInstallableUnit current : matches) {
                    if (!this.nonGreedyIUs.contains(current)) continue;
                    this.addNonGreedyProvider(this.getNonGreedyVariable(current), abs);
                }
            } else {
                abs = this.getAbstractVariable(req, false);
                ArrayList<AbstractVariable> newConstraint = new ArrayList<AbstractVariable>();
                for (IInstallableUnit current : matches) {
                    newConstraint.add(this.getNonGreedyVariable(current));
                }
                this.createImplication(new Object[]{abs, iu}, (List<?>)newConstraint, Explanation.OPTIONAL_REQUIREMENT);
            }
            optionalAbstractRequirements.add(abs);
        }
    }

    private void addNonGreedyProvider(AbstractVariable nonGreedyVariable, Object o) {
        List<Object> providers = this.nonGreedyProvider.get(nonGreedyVariable);
        if (providers == null) {
            providers = new ArrayList<Object>();
            this.nonGreedyProvider.put(nonGreedyVariable, providers);
        }
        providers.add(o);
    }

    private void expandRequirements(Collection<IRequirement> reqs, IInstallableUnit iu, boolean isRootIu) throws ContradictionException {
        if (reqs.isEmpty()) {
            return;
        }
        ArrayList<AbstractVariable> optionalAbstractRequirements = new ArrayList<AbstractVariable>();
        for (IRequirement req : reqs) {
            this.expandRequirement(req, iu, optionalAbstractRequirements, isRootIu);
        }
        this.createOptionalityExpression(iu, optionalAbstractRequirements);
    }

    public void processIU(IInstallableUnit iu, boolean isRootIU) throws ContradictionException {
        Map<Version, IInstallableUnit> iuSlice = this.slice.get((iu = iu.unresolved()).getId());
        if (iuSlice == null) {
            iuSlice = new HashMap<Version, IInstallableUnit>();
            this.slice.put(iu.getId(), iuSlice);
        }
        iuSlice.put(iu.getVersion(), iu);
        if (!this.isApplicable(iu)) {
            this.createNegation(iu, null);
            return;
        }
        IQueryResult<IInstallableUnit> applicablePatches = this.getApplicablePatches(iu);
        this.expandLifeCycle(iu, isRootIU);
        if (applicablePatches.isEmpty()) {
            this.expandRequirements(this.getRequiredCapabilities(iu), iu, isRootIU);
        } else {
            this.expandRequirementsWithPatches(iu, applicablePatches, isRootIU);
        }
    }

    private Collection<IRequirement> getRequiredCapabilities(IInstallableUnit iu) {
        boolean isFragment = iu instanceof IInstallableUnitFragment;
        if (!isFragment && iu.getMetaRequirements().size() == 0) {
            return iu.getRequirements();
        }
        ArrayList<IRequirement> aggregatedRequirements = new ArrayList<IRequirement>(iu.getRequirements().size() + iu.getMetaRequirements().size() + (isFragment ? ((IInstallableUnitFragment)iu).getHost().size() : 0));
        aggregatedRequirements.addAll(iu.getRequirements());
        if (iu instanceof IInstallableUnitFragment) {
            aggregatedRequirements.addAll(((IInstallableUnitFragment)iu).getHost());
        }
        if (this.considerMetaRequirements) {
            aggregatedRequirements.addAll(iu.getMetaRequirements());
        }
        return aggregatedRequirements;
    }

    private void expandRequirementsWithPatches(IInstallableUnit iu, IQueryResult<IInstallableUnit> applicablePatches, boolean isRootIu) throws ContradictionException {
        AbstractVariable abs;
        ArrayList<? super IInstallableUnitPatch> newConstraint;
        Explanation explanation;
        IInstallableUnit reqIu;
        ArrayList<AbstractVariable> nonGreedys;
        List<IInstallableUnit> matches;
        Collection<IRequirement> iuRequirements = this.getRequiredCapabilities(iu);
        HashMap<IRequirement, ArrayList<IInstallableUnitPatch>> unchangedRequirements = new HashMap<IRequirement, ArrayList<IInstallableUnitPatch>>(iuRequirements.size());
        HashMap<IRequirement, Pending> nonPatchedRequirements = new HashMap<IRequirement, Pending>(iuRequirements.size());
        for (IInstallableUnitPatch patch : applicablePatches) {
            IRequirement[][] reqs = this.mergeRequirements(iu, patch);
            if (reqs.length == 0) {
                return;
            }
            ArrayList<AbstractVariable> optionalAbstractRequirements = new ArrayList<AbstractVariable>();
            int i = 0;
            while (i < reqs.length) {
                if (reqs[i][0] == reqs[i][1]) {
                    if (reqs[i][0].getMax() == 0) {
                        this.expandNegatedRequirement(reqs[i][0], iu, optionalAbstractRequirements, isRootIu);
                        return;
                    }
                    if (this.isApplicable(reqs[i][0])) {
                        ArrayList<IInstallableUnitPatch> patchesAppliedElseWhere = (ArrayList<IInstallableUnitPatch>)unchangedRequirements.get(reqs[i][0]);
                        if (patchesAppliedElseWhere == null) {
                            patchesAppliedElseWhere = new ArrayList<IInstallableUnitPatch>();
                            unchangedRequirements.put(reqs[i][0], patchesAppliedElseWhere);
                        }
                        patchesAppliedElseWhere.add(patch);
                    }
                } else {
                    IRequirement req;
                    if (this.isApplicable(reqs[i][1])) {
                        req = reqs[i][1];
                        List<IInstallableUnit> matches2 = this.getApplicableMatches(req);
                        this.determinePotentialHostsForFragment(iu);
                        if (req.getMin() > 0) {
                            if (matches2.isEmpty()) {
                                this.missingRequirement((IInstallableUnit)patch, req);
                            } else if (req.isGreedy()) {
                                IInstallableUnit reqIu2 = matches2.get(0);
                                Explanation explanation2 = isRootIu ? (this.alreadyInstalledIUs.contains(reqIu2) ? new Explanation.IUInstalled(reqIu2) : new Explanation.IUToInstall(reqIu2)) : new Explanation.PatchedHardRequirement(iu, req, patch);
                                this.createImplication(new Object[]{patch, iu}, matches2, explanation2);
                                for (IInstallableUnit current : matches2) {
                                    if (!this.nonGreedyIUs.contains(current)) continue;
                                    this.addNonGreedyProvider(this.getNonGreedyVariable(current), iu);
                                }
                            } else {
                                ArrayList<AbstractVariable> newConstraint2 = new ArrayList<AbstractVariable>();
                                for (IInstallableUnit current : matches2) {
                                    newConstraint2.add(this.getNonGreedyVariable(current));
                                }
                                this.createImplication(new Object[]{iu}, (List<?>)newConstraint2, (Explanation)new Explanation.HardRequirement(iu, req));
                            }
                        } else if (!matches2.isEmpty()) {
                            AbstractVariable abs2;
                            if (req.isGreedy()) {
                                abs2 = this.getAbstractVariable(req);
                                this.createImplication(new Object[]{patch, abs2, iu}, matches2, Explanation.OPTIONAL_REQUIREMENT);
                                for (IInstallableUnit current : matches2) {
                                    if (!this.nonGreedyIUs.contains(current)) continue;
                                    this.addNonGreedyProvider(this.getNonGreedyVariable(current), abs2);
                                }
                            } else {
                                abs2 = this.getAbstractVariable(req, false);
                                ArrayList<AbstractVariable> newConstraint3 = new ArrayList<AbstractVariable>(matches2.size());
                                for (IInstallableUnit current : matches2) {
                                    newConstraint3.add(this.getNonGreedyVariable(current));
                                }
                                this.createImplication(new Object[]{patch, abs2, iu}, (List<?>)newConstraint3, Explanation.OPTIONAL_REQUIREMENT);
                            }
                            optionalAbstractRequirements.add(abs2);
                        }
                    }
                    if (this.isApplicable(reqs[i][0])) {
                        req = reqs[i][0];
                        Pending pending = (Pending)nonPatchedRequirements.get(req);
                        if (pending != null) {
                            pending.matches.add((IInstallableUnitPatch)patch);
                        } else {
                            pending = new Pending();
                            pending.left = iu;
                            matches = this.getApplicableMatches(req);
                            this.determinePotentialHostsForFragment(iu);
                            if (req.getMin() > 0) {
                                if (matches.isEmpty()) {
                                    matches.add((IInstallableUnit)patch);
                                    pending.explanation = new Explanation.HardRequirement(iu, req);
                                    pending.matches = matches;
                                } else {
                                    nonGreedys = new ArrayList();
                                    for (IInstallableUnit current : matches) {
                                        if (!this.nonGreedyIUs.contains(current)) continue;
                                        nonGreedys.add(this.getNonGreedyVariable(current));
                                    }
                                    matches.add((IInstallableUnit)patch);
                                    if (req.isGreedy()) {
                                        reqIu = matches.get(0);
                                        explanation = isRootIu ? (this.alreadyInstalledIUs.contains(reqIu) ? new Explanation.IUInstalled(reqIu) : new Explanation.IUToInstall(reqIu)) : new Explanation.HardRequirement(iu, req);
                                        pending.explanation = explanation;
                                        pending.matches = matches;
                                        for (IInstallableUnit current : matches) {
                                            if (!this.nonGreedyIUs.contains(current)) continue;
                                            this.addNonGreedyProvider(this.getNonGreedyVariable(current), iu);
                                        }
                                    } else {
                                        newConstraint = new ArrayList(matches.size());
                                        for (IInstallableUnit current : matches) {
                                            newConstraint.add((IInstallableUnitPatch)this.getNonGreedyVariable(current));
                                        }
                                        pending.explanation = new Explanation.HardRequirement(iu, req);
                                        pending.matches = newConstraint;
                                    }
                                    nonPatchedRequirements.put(req, pending);
                                }
                            } else if (!matches.isEmpty()) {
                                matches.add((IInstallableUnit)patch);
                                pending = new Pending();
                                pending.explanation = Explanation.OPTIONAL_REQUIREMENT;
                                if (req.isGreedy()) {
                                    abs = this.getAbstractVariable(req);
                                    pending.left = new Object[]{abs, iu};
                                    pending.matches = matches;
                                    for (IInstallableUnit current : matches) {
                                        if (!this.nonGreedyIUs.contains(current)) continue;
                                        this.addNonGreedyProvider(this.getNonGreedyVariable(current), abs);
                                    }
                                } else {
                                    abs = this.getAbstractVariable(req, false);
                                    newConstraint = new ArrayList(matches.size());
                                    for (IInstallableUnit current : matches) {
                                        newConstraint.add((IInstallableUnitPatch)this.getNonGreedyVariable(current));
                                    }
                                    newConstraint.add(patch);
                                    pending.left = new Object[]{abs, iu};
                                    pending.matches = newConstraint;
                                }
                                nonPatchedRequirements.put(req, pending);
                                optionalAbstractRequirements.add(abs);
                            }
                        }
                    }
                }
                ++i;
            }
            this.createOptionalityExpression(iu, optionalAbstractRequirements);
        }
        for (Pending pending : nonPatchedRequirements.values()) {
            this.createImplication(pending.left, pending.matches, pending.explanation);
        }
        ArrayList<AbstractVariable> optionalAbstractRequirements = new ArrayList<AbstractVariable>();
        for (Map.Entry entry : unchangedRequirements.entrySet()) {
            List patchesApplied = (List)entry.getValue();
            Iterator allPatches = applicablePatches.iterator();
            ArrayList<IInstallableUnitPatch> requiredPatches = new ArrayList<IInstallableUnitPatch>();
            while (allPatches.hasNext()) {
                IInstallableUnitPatch patch = (IInstallableUnitPatch)allPatches.next();
                if (patchesApplied.contains(patch)) continue;
                requiredPatches.add(patch);
            }
            IRequirement req = (IRequirement)entry.getKey();
            matches = this.getApplicableMatches(req);
            this.determinePotentialHostsForFragment(iu);
            if (req.getMin() > 0) {
                if (matches.isEmpty()) {
                    if (requiredPatches.isEmpty()) {
                        this.missingRequirement(iu, req);
                        continue;
                    }
                    this.createImplication(iu, requiredPatches, (Explanation)new Explanation.HardRequirement(iu, req));
                    continue;
                }
                nonGreedys = new ArrayList<AbstractVariable>(matches.size());
                for (IInstallableUnit current : matches) {
                    if (!this.nonGreedyIUs.contains(current)) continue;
                    nonGreedys.add(this.getNonGreedyVariable(current));
                }
                if (!requiredPatches.isEmpty()) {
                    matches.addAll(requiredPatches);
                }
                if (req.isGreedy()) {
                    reqIu = matches.get(0);
                    explanation = isRootIu ? (this.alreadyInstalledIUs.contains(reqIu) ? new Explanation.IUInstalled(reqIu) : new Explanation.IUToInstall(reqIu)) : new Explanation.HardRequirement(iu, req);
                    this.createImplication(iu, matches, explanation);
                    for (IInstallableUnit current : matches) {
                        if (!this.nonGreedyIUs.contains(current)) continue;
                        this.addNonGreedyProvider(this.getNonGreedyVariable(current), iu);
                    }
                    continue;
                }
                newConstraint = new ArrayList(matches.size());
                for (IInstallableUnit current : matches) {
                    newConstraint.add((IInstallableUnitPatch)this.getNonGreedyVariable(current));
                }
                this.createImplication(new Object[]{iu}, (List<?>)newConstraint, (Explanation)new Explanation.HardRequirement(iu, req));
                continue;
            }
            if (matches.isEmpty()) continue;
            if (!requiredPatches.isEmpty()) {
                matches.addAll(requiredPatches);
            }
            if (req.isGreedy()) {
                abs = this.getAbstractVariable(req);
                this.createImplication(new Object[]{abs, iu}, matches, Explanation.OPTIONAL_REQUIREMENT);
                for (IInstallableUnit current : matches) {
                    if (!this.nonGreedyIUs.contains(current)) continue;
                    this.addNonGreedyProvider(this.getNonGreedyVariable(current), iu);
                }
            } else {
                abs = this.getAbstractVariable(req, false);
                newConstraint = new ArrayList<IInstallableUnitPatch>(matches.size());
                for (IInstallableUnit current : matches) {
                    newConstraint.add((IInstallableUnitPatch)this.getNonGreedyVariable(current));
                }
                this.createImplication(new Object[]{abs, iu}, (List<?>)newConstraint, (Explanation)new Explanation.HardRequirement(iu, req));
            }
            optionalAbstractRequirements.add(abs);
        }
        this.createOptionalityExpression(iu, optionalAbstractRequirements);
    }

    private void expandLifeCycle(IInstallableUnit iu, boolean isRootIu) throws ContradictionException {
        if (!(iu instanceof IInstallableUnitPatch)) {
            return;
        }
        IInstallableUnitPatch patch = (IInstallableUnitPatch)iu;
        IRequirement req = patch.getLifeCycle();
        if (req == null) {
            return;
        }
        this.expandRequirement(req, iu, CollectionUtils.emptyList(), isRootIu);
    }

    private void missingRequirement(IInstallableUnit iu, IRequirement req) throws ContradictionException {
        this.result.add((IStatus)new Status(2, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Planner_Unsatisfied_dependency, (Object)iu, (Object)req)));
        this.createNegation(iu, req);
    }

    private List<IInstallableUnit> getApplicableMatches(IRequirement req) {
        ArrayList<IInstallableUnit> target = new ArrayList<IInstallableUnit>();
        IQueryResult matches = this.picker.query(QueryUtil.createMatchQuery((IExpression)req.getMatches(), (Object[])new Object[0]), null);
        for (IInstallableUnit match : matches) {
            if (!this.isApplicable(match)) continue;
            target.add(match);
        }
        this.emptyBecauseFiltered = !matches.isEmpty() && target.isEmpty();
        return target;
    }

    private IRequirement[][] mergeRequirements(IInstallableUnit iu, IInstallableUnitPatch patch) {
        if (patch == null) {
            return null;
        }
        List changes = patch.getRequirementsChange();
        Collection iuRequirements = iu.getRequirements();
        IRequirement[] originalRequirements = iuRequirements.toArray(new IRequirement[iuRequirements.size()]);
        ArrayList<IRequirement[]> rrr = new ArrayList<IRequirement[]>();
        boolean found = false;
        int i = 0;
        while (i < changes.size()) {
            IRequirementChange change = (IRequirementChange)changes.get(i);
            int j = 0;
            while (j < originalRequirements.length) {
                if (originalRequirements[j] != null && change.matches((IRequiredCapability)originalRequirements[j])) {
                    found = true;
                    if (change.newValue() != null) {
                        rrr.add(new IRequirement[]{originalRequirements[j], change.newValue()});
                    } else {
                        IRequirement[] iRequirementArray = new IRequirement[2];
                        iRequirementArray[0] = originalRequirements[j];
                        rrr.add(iRequirementArray);
                    }
                    originalRequirements[j] = null;
                }
                ++j;
            }
            if (!found && change.applyOn() == null && change.newValue() != null) {
                IRequirement[] iRequirementArray = new IRequirement[2];
                iRequirementArray[1] = change.newValue();
                rrr.add(iRequirementArray);
            }
            ++i;
        }
        i = 0;
        while (i < originalRequirements.length) {
            if (originalRequirements[i] != null) {
                rrr.add(new IRequirement[]{originalRequirements[i], originalRequirements[i]});
            }
            ++i;
        }
        return (IRequirement[][])rrr.toArray((T[])new IRequirement[rrr.size()][]);
    }

    private void createOptionalityExpression(IInstallableUnit iu, List<AbstractVariable> optionalRequirements) throws ContradictionException {
        if (optionalRequirements.isEmpty()) {
            return;
        }
        AbstractVariable noop = this.getNoOperationVariable(iu);
        for (AbstractVariable abs : optionalRequirements) {
            this.createIncompatibleValues(abs, noop);
        }
        optionalRequirements.add(noop);
        this.createImplication(iu, optionalRequirements, Explanation.OPTIONAL_REQUIREMENT);
    }

    private void createNegationImplication(Object left, List<?> right, Explanation name) throws ContradictionException {
        if (DEBUG) {
            Tracing.debug((String)new StringBuffer().append(name).append(": ").append(left).append("->").append(right).toString());
        }
        for (Object r : right) {
            this.dependencyHelper.implication(new Object[]{left}).impliesNot(r).named((Object)name);
        }
    }

    private void createImplication(Object left, List<?> right, Explanation name) throws ContradictionException {
        if (DEBUG) {
            Tracing.debug((String)new StringBuffer().append(name).append(": ").append(left).append("->").append(right).toString());
        }
        this.dependencyHelper.implication(new Object[]{left}).implies(right.toArray()).named((Object)name);
    }

    private void createImplication(Object[] left, List<?> right, Explanation name) throws ContradictionException {
        if (DEBUG) {
            Tracing.debug((String)new StringBuffer().append(name).append(": ").append(Arrays.asList(left)).append("->").append(right).toString());
        }
        this.dependencyHelper.implication(left).implies(right.toArray()).named((Object)name);
    }

    private IQueryResult<IInstallableUnit> getApplicablePatches(IInstallableUnit iu) {
        if (this.patches == null) {
            IQueryResult iQueryResult = this.picker.query(QueryUtil.createIUPatchQuery(), null);
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnit");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.patches = new QueryableArray((IInstallableUnit[])iQueryResult.toArray((Class)clazz));
        }
        return this.patches.query((IQuery)new ApplicablePatchQuery(iu), null);
    }

    private void createConstraintsForSingleton() throws ContradictionException {
        Set<Map.Entry<String, Map<Version, IInstallableUnit>>> s = this.slice.entrySet();
        for (Map.Entry<String, Map<Version, IInstallableUnit>> entry : s) {
            IInstallableUnit[] singletonArray;
            Map<Version, IInstallableUnit> conflictingEntries = entry.getValue();
            if (conflictingEntries.size() < 2) continue;
            Collection<IInstallableUnit> conflictingVersions = conflictingEntries.values();
            ArrayList<IInstallableUnit> singletons = new ArrayList<IInstallableUnit>();
            ArrayList<IInstallableUnit> nonSingletons = new ArrayList<IInstallableUnit>();
            for (IInstallableUnit iu : conflictingVersions) {
                if (iu.isSingleton()) {
                    singletons.add(iu);
                    continue;
                }
                nonSingletons.add(iu);
            }
            if (singletons.isEmpty()) continue;
            if (nonSingletons.isEmpty()) {
                singletonArray = singletons.toArray(new IInstallableUnit[singletons.size()]);
                this.createAtMostOne(singletonArray);
                continue;
            }
            singletonArray = singletons.toArray(new IInstallableUnit[singletons.size() + 1]);
            Iterator iterator = nonSingletons.iterator();
            while (iterator.hasNext()) {
                IInstallableUnit nonSingleton;
                singletonArray[singletonArray.length - 1] = nonSingleton = (IInstallableUnit)iterator.next();
                this.createAtMostOne(singletonArray);
            }
        }
    }

    private void createAtMostOne(IInstallableUnit[] ius) throws ContradictionException {
        if (DEBUG) {
            StringBuffer b = new StringBuffer();
            int i = 0;
            while (i < ius.length) {
                b.append(ius[i].toString());
                ++i;
            }
            Tracing.debug((String)new StringBuffer("At most 1 of ").append((Object)b).toString());
        }
        this.dependencyHelper.atMost(1, (Object[])ius).named((Object)new Explanation.Singleton(ius));
    }

    private void createIncompatibleValues(AbstractVariable v1, AbstractVariable v2) throws ContradictionException {
        Object[] vars = new AbstractVariable[]{v1, v2};
        if (DEBUG) {
            StringBuffer b = new StringBuffer();
            int i = 0;
            while (i < vars.length) {
                b.append(((AbstractVariable)vars[i]).toString());
                ++i;
            }
            Tracing.debug((String)new StringBuffer("At most 1 of ").append((Object)b).toString());
        }
        this.dependencyHelper.atMost(1, vars).named((Object)Explanation.OPTIONAL_REQUIREMENT);
    }

    private AbstractVariable getAbstractVariable(IRequirement req) {
        return this.getAbstractVariable(req, true);
    }

    private AbstractVariable getAbstractVariable(IRequirement req, boolean appearInOptFunction) {
        AbstractVariable abstractVariable;
        AbstractVariable abstractVariable2 = abstractVariable = DEBUG_ENCODING ? new AbstractVariable(new StringBuffer("Abs_").append(req.toString()).toString()) : new AbstractVariable();
        if (appearInOptFunction) {
            this.abstractVariables.add(abstractVariable);
        }
        return abstractVariable;
    }

    private AbstractVariable getNoOperationVariable(IInstallableUnit iu) {
        AbstractVariable v = this.noopVariables.get(iu);
        if (v == null) {
            v = DEBUG_ENCODING ? new AbstractVariable(new StringBuffer("Noop_").append(iu.toString()).toString()) : new AbstractVariable();
            this.noopVariables.put(iu, v);
        }
        return v;
    }

    private AbstractVariable getNonGreedyVariable(IInstallableUnit iu) {
        AbstractVariable v = this.nonGreedyVariables.get(iu);
        if (v == null) {
            v = DEBUG_ENCODING ? new AbstractVariable(new StringBuffer("NG_").append(iu.toString()).toString()) : new AbstractVariable();
            this.nonGreedyVariables.put(iu, v);
        }
        return v;
    }

    public IStatus invokeSolver(IProgressMonitor monitor) {
        if (this.result.getSeverity() == 4) {
            return this.result;
        }
        long start = System.currentTimeMillis();
        if (DEBUG) {
            Tracing.debug((String)new StringBuffer("Invoking solver: ").append(start).toString());
        }
        try {
            if (monitor.isCanceled()) {
                return Status.CANCEL_STATUS;
            }
            if (this.dependencyHelper.hasASolution(this.assumptions)) {
                if (DEBUG) {
                    Tracing.debug((String)"Satisfiable !");
                }
                this.backToIU();
                long stop = System.currentTimeMillis();
                if (DEBUG) {
                    Tracing.debug((String)new StringBuffer("Solver solution found: ").append(stop - start).toString());
                }
            } else {
                long stop = System.currentTimeMillis();
                if (DEBUG) {
                    Tracing.debug((String)"Unsatisfiable !");
                    Tracing.debug((String)new StringBuffer("Solver solution NOT found: ").append(stop - start).toString());
                }
                this.result = new MultiStatus("org.eclipse.equinox.p2.director", 1, this.result.getChildren(), Messages.Planner_Unsatisfiable_problem, null);
                this.result.merge((IStatus)new Status(4, "org.eclipse.equinox.p2.director", 1, Messages.Planner_Unsatisfiable_problem, null));
            }
        }
        catch (TimeoutException timeoutException) {
            this.result.merge((IStatus)new Status(4, "org.eclipse.equinox.p2.director", Messages.Planner_Timeout));
        }
        catch (Exception e) {
            this.result.merge((IStatus)new Status(4, "org.eclipse.equinox.p2.director", Messages.Planner_Unexpected_problem, (Throwable)e));
        }
        if (DEBUG) {
            System.out.println();
        }
        return this.result;
    }

    private void backToIU() {
        this.solution = new ArrayList<IInstallableUnit>();
        IVec sat4jSolution = this.dependencyHelper.getSolution();
        for (Object var : sat4jSolution) {
            IInstallableUnit iu;
            if (!(var instanceof IInstallableUnit) || (iu = (IInstallableUnit)var) == this.entryPoint) continue;
            this.solution.add(iu);
        }
    }

    private void printSolution(Collection<IInstallableUnit> state) {
        ArrayList<IInstallableUnit> l = new ArrayList<IInstallableUnit>(state);
        Collections.sort(l);
        Tracing.debug((String)"Solution:");
        Tracing.debug((String)new StringBuffer("Numbers of IUs selected: ").append(l.size()).toString());
        for (IInstallableUnit s : l) {
            Tracing.debug((String)s.toString());
        }
    }

    public Collection<IInstallableUnit> extractSolution() {
        if (DEBUG) {
            this.printSolution(this.solution);
        }
        return this.solution;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Set<Explanation> getExplanation(IProgressMonitor monitor) {
        ExplanationJob job = new ExplanationJob();
        job.schedule();
        monitor.setTaskName(Messages.Planner_NoSolution);
        InfiniteProgress pm = new InfiniteProgress(monitor);
        pm.beginTask(Messages.Planner_NoSolution, 1000);
        try {
            ExplanationJob explanationJob = job;
            synchronized (explanationJob) {
                while (job.getExplanationResult() == null) {
                    if (job.getState() == 0) {
                        return job.getExplanationResult();
                    }
                    if (monitor.isCanceled()) {
                        job.cancel();
                        throw new OperationCanceledException();
                    }
                    pm.worked(1);
                    try {
                        ((Object)((Object)job)).wait(100L);
                    }
                    catch (InterruptedException interruptedException) {
                        if (!DEBUG) continue;
                        Tracing.debug((String)"Interrupted while computing explanations");
                    }
                }
                return job.getExplanationResult();
            }
        }
        finally {
            monitor.done();
        }
    }

    public Map<IInstallableUnitFragment, List<IInstallableUnit>> getFragmentAssociation() {
        HashMap<IInstallableUnitFragment, List<IInstallableUnit>> resolvedFragments = new HashMap<IInstallableUnitFragment, List<IInstallableUnit>>(this.fragments.size());
        for (Map.Entry<IInstallableUnitFragment, Set<IInstallableUnit>> fragment : this.fragments.entrySet()) {
            if (!this.dependencyHelper.getBooleanValueFor((Object)fragment.getKey())) continue;
            Set<IInstallableUnit> potentialHosts = fragment.getValue();
            ArrayList<IInstallableUnit> resolvedHost = new ArrayList<IInstallableUnit>(potentialHosts.size());
            for (IInstallableUnit host : potentialHosts) {
                if (!this.dependencyHelper.getBooleanValueFor((Object)host)) continue;
                resolvedHost.add(host);
            }
            if (resolvedHost.size() == 0) continue;
            resolvedFragments.put(fragment.getKey(), resolvedHost);
        }
        return resolvedFragments;
    }

    private void rememberHostMatches(IInstallableUnitFragment fragment, List<IInstallableUnit> matches) {
        Set<IInstallableUnit> existingMatches = this.fragments.get(fragment);
        if (existingMatches == null) {
            existingMatches = new HashSet<IInstallableUnit>();
            this.fragments.put(fragment, existingMatches);
            existingMatches.addAll(matches);
        }
        existingMatches.retainAll(matches);
    }

    static class AbstractVariable {
        public AbstractVariable(String name) {
        }

        public AbstractVariable() {
        }

        public String toString() {
            return "AbstractVariable: " + this.hashCode();
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class ExplanationJob
    extends Job {
        private Set<Explanation> explanation;

        public ExplanationJob() {
            super(Messages.Planner_NoSolution);
            this.setSystem(true);
        }

        public boolean belongsTo(Object family) {
            return family == this;
        }

        protected void canceling() {
            super.canceling();
            Projector.this.dependencyHelper.stopExplanation();
        }

        public Set<Explanation> getExplanationResult() {
            return this.explanation;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        protected IStatus run(IProgressMonitor monitor) {
            block15: {
                long start = 0L;
                if (DEBUG) {
                    start = System.currentTimeMillis();
                    Tracing.debug((String)new StringBuffer("Determining cause of failure: ").append(start).toString());
                }
                try {
                    try {
                        this.explanation = Projector.this.dependencyHelper.why();
                        if (DEBUG) {
                            long stop = System.currentTimeMillis();
                            Tracing.debug((String)new StringBuffer("Explanation found: ").append(stop - start).toString());
                            Tracing.debug((String)"Explanation:");
                            for (Explanation ex : this.explanation) {
                                Tracing.debug((String)ex.toString());
                            }
                        }
                    }
                    catch (TimeoutException timeoutException) {
                        if (DEBUG) {
                            Tracing.debug((String)"Timeout while computing explanations");
                        }
                        if (this.explanation == null) {
                            this.explanation = CollectionUtils.emptySet();
                        }
                        break block15;
                    }
                }
                catch (Throwable throwable) {
                    if (this.explanation == null) {
                        this.explanation = CollectionUtils.emptySet();
                    }
                    throw throwable;
                }
                if (this.explanation == null) {
                    this.explanation = CollectionUtils.emptySet();
                }
            }
            ExplanationJob explanationJob = this;
            synchronized (explanationJob) {
                ((Object)((Object)this)).notify();
            }
            return Status.OK_STATUS;
        }
    }

    static final class Pending {
        List<? super IInstallableUnitPatch> matches;
        Explanation explanation;
        Object left;

        Pending() {
        }
    }
}

