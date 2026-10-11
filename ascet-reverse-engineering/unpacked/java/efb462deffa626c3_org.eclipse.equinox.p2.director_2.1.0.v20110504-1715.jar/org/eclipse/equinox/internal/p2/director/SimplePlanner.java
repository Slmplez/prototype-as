/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.Tracing
 *  org.eclipse.equinox.internal.p2.metadata.IRequiredCapability
 *  org.eclipse.equinox.internal.p2.metadata.query.UpdateQuery
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.engine.IEngine
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.IProfileRegistry
 *  org.eclipse.equinox.p2.engine.IProvisioningPlan
 *  org.eclipse.equinox.p2.engine.ProvisioningContext
 *  org.eclipse.equinox.p2.engine.query.IUProfilePropertyQuery
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.metadata.expression.IExpression
 *  org.eclipse.equinox.p2.query.CollectionResult
 *  org.eclipse.equinox.p2.query.CompoundQueryable
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.director;

import java.lang.reflect.Method;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.Tracing;
import org.eclipse.equinox.internal.p2.director.AttachmentHelper;
import org.eclipse.equinox.internal.p2.director.Explanation;
import org.eclipse.equinox.internal.p2.director.Messages;
import org.eclipse.equinox.internal.p2.director.OperationGenerator;
import org.eclipse.equinox.internal.p2.director.ProfileChangeRequest;
import org.eclipse.equinox.internal.p2.director.Projector;
import org.eclipse.equinox.internal.p2.director.QueryableArray;
import org.eclipse.equinox.internal.p2.director.Slicer;
import org.eclipse.equinox.internal.p2.metadata.IRequiredCapability;
import org.eclipse.equinox.internal.p2.metadata.query.UpdateQuery;
import org.eclipse.equinox.internal.p2.rollback.FormerState;
import org.eclipse.equinox.internal.provisional.p2.director.PlannerStatus;
import org.eclipse.equinox.internal.provisional.p2.director.RequestStatus;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IEngine;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;
import org.eclipse.equinox.p2.engine.IProvisioningPlan;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.engine.query.IUProfilePropertyQuery;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.planner.IPlanner;
import org.eclipse.equinox.p2.planner.IProfileChangeRequest;
import org.eclipse.equinox.p2.planner.ProfileInclusionRules;
import org.eclipse.equinox.p2.query.CollectionResult;
import org.eclipse.equinox.p2.query.CompoundQueryable;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SimplePlanner
implements IPlanner {
    private static boolean DEBUG = Tracing.DEBUG_PLANNER_OPERANDS;
    private static final int ExpandWork = 12;
    private static final String INCLUDE_PROFILE_IUS = "org.eclipse.equinox.p2.internal.profileius";
    public static final String INCLUSION_RULES = "org.eclipse.equinox.p2.internal.inclusion.rules";
    private static final String ID_IU_FOR_ACTIONS = "org.eclipse.equinox.p2.engine.actions.root";
    private static final String EXPLANATION = "org.eclipse.equinox.p2.director.explain";
    private static final String CONSIDER_METAREQUIREMENTS = "org.eclipse.equinox.p2.planner.resolveMetaRequirements";
    static final int UNSATISFIABLE = 1;
    private final IProvisioningAgent agent;
    private final IProfileRegistry profileRegistry;
    private final IEngine engine;
    static /* synthetic */ Class class$0;

    private IProvisioningPlan generateProvisioningPlan(Collection<IInstallableUnit> fromState, Collection<IInstallableUnit> toState, ProfileChangeRequest changeRequest, IProvisioningPlan installerPlan, ProvisioningContext context) {
        Map<IInstallableUnit, RequestStatus>[] changes;
        IProvisioningPlan plan = this.engine.createPlan(changeRequest.getProfile(), context);
        this.planIUOperations(plan, fromState, toState);
        this.planPropertyOperations(plan, changeRequest, toState);
        if (DEBUG) {
            Object[] operands = new Object[]{};
            try {
                Method getOperands = plan.getClass().getMethod("getOperands", new Class[0]);
                operands = (Object[])getOperands.invoke(plan, new Object[0]);
            }
            catch (Throwable throwable) {}
            int i = 0;
            while (i < operands.length) {
                Tracing.debug((String)operands[i].toString());
                ++i;
            }
        }
        Map<IInstallableUnit, RequestStatus> requestChanges = (changes = this.computeActualChangeRequest(toState, changeRequest)) == null ? null : changes[0];
        Map<IInstallableUnit, RequestStatus> requestSideEffects = changes == null ? null : changes[1];
        QueryableArray plannedState = new QueryableArray(toState.toArray(new IInstallableUnit[toState.size()]));
        PlannerStatus plannerStatus = new PlannerStatus(Status.OK_STATUS, null, requestChanges, requestSideEffects, (IQueryable<IInstallableUnit>)plannedState);
        plan.setStatus((IStatus)plannerStatus);
        plan.setInstallerPlan(installerPlan);
        return plan;
    }

    private Map<IInstallableUnit, RequestStatus>[] buildDetailedErrors(ProfileChangeRequest changeRequest) {
        Collection<IInstallableUnit> requestedAdditions = changeRequest.getAdditions();
        Collection<IInstallableUnit> requestedRemovals = changeRequest.getRemovals();
        HashMap<IInstallableUnit, RequestStatus> requestStatus = new HashMap<IInstallableUnit, RequestStatus>(requestedAdditions.size() + requestedAdditions.size());
        for (IInstallableUnit added : requestedAdditions) {
            requestStatus.put(added, new RequestStatus(added, 0, 4, null));
        }
        for (IInstallableUnit removed : requestedRemovals) {
            requestStatus.put(removed, new RequestStatus(removed, 1, 4, null));
        }
        Map[] mapArray = new Map[2];
        mapArray[0] = requestStatus;
        Map[] maps = mapArray;
        return maps;
    }

    private Map<IInstallableUnit, RequestStatus>[] computeActualChangeRequest(Collection<IInstallableUnit> toState, ProfileChangeRequest changeRequest) {
        Collection<IInstallableUnit> requestedAdditions = changeRequest.getAdditions();
        Collection<IInstallableUnit> requestedRemovals = changeRequest.getRemovals();
        HashMap<IInstallableUnit, RequestStatus> requestStatus = new HashMap<IInstallableUnit, RequestStatus>(requestedAdditions.size() + requestedRemovals.size());
        for (IInstallableUnit added : requestedAdditions) {
            if (toState.contains(added)) {
                requestStatus.put(added, new RequestStatus(added, 0, 0, null));
                continue;
            }
            requestStatus.put(added, new RequestStatus(added, 0, 4, null));
        }
        for (IInstallableUnit removed : requestedRemovals) {
            if (!toState.contains(removed)) {
                requestStatus.put(removed, new RequestStatus(removed, 1, 0, null));
                continue;
            }
            requestStatus.put(removed, new RequestStatus(removed, 1, 4, null));
        }
        Iterator includedIUs = changeRequest.getProfile().query((IQuery)new IUProfilePropertyQuery(INCLUSION_RULES, "*"), null).iterator();
        HashMap<IInstallableUnit, RequestStatus> sideEffectStatus = new HashMap<IInstallableUnit, RequestStatus>();
        while (includedIUs.hasNext()) {
            IInstallableUnit removal = (IInstallableUnit)includedIUs.next();
            if (toState.contains(removal) || requestStatus.containsKey(removal)) continue;
            sideEffectStatus.put(removal, new RequestStatus(removal, 1, 1, null));
        }
        Map[] maps = new Map[]{requestStatus, sideEffectStatus};
        return maps;
    }

    private IStatus convertExplanationToStatus(Set<Explanation> explanations) {
        if (explanations == null) {
            return new Status(4, "org.eclipse.equinox.p2.director", Messages.Director_Unsatisfied_Dependencies);
        }
        ArrayList<Status> forTargets = new ArrayList<Status>(0);
        for (Explanation next : explanations) {
            if (!(next instanceof Explanation.MissingIU)) continue;
            Explanation.MissingIU missingIU = (Explanation.MissingIU)next;
            if (!(missingIU.req instanceof IRequiredCapability) || !"A.PDE.Target.Platform".equals(((IRequiredCapability)missingIU.req).getNamespace())) continue;
            forTargets.add(new Status(4, "org.eclipse.equinox.p2.director", missingIU.getUserReadableName(missingIU.iu)));
        }
        if (forTargets.size() > 0) {
            forTargets.add(new Status(4, "org.eclipse.equinox.p2.director", Messages.Director_For_Target_Unselect_Required));
            return new MultiStatus("org.eclipse.equinox.p2.director", 1, forTargets.toArray(new IStatus[forTargets.size()]), Messages.Director_For_Target, null);
        }
        MultiStatus root = new MultiStatus("org.eclipse.equinox.p2.director", 1, Messages.Director_Unsatisfied_Dependencies, null);
        String specificMessage = null;
        for (Explanation next : explanations) {
            root.add(next.toStatus());
            if (specificMessage == null && next instanceof Explanation.MissingIU) {
                specificMessage = Messages.Explanation_rootMissing;
                continue;
            }
            if (specificMessage != null || !(next instanceof Explanation.Singleton)) continue;
            specificMessage = Messages.Explanation_rootSingleton;
        }
        if (specificMessage != null) {
            MultiStatus newRoot = new MultiStatus("org.eclipse.equinox.p2.director", 1, specificMessage, null);
            newRoot.merge((IStatus)root);
            root = newRoot;
        }
        return root;
    }

    private void planPropertyOperations(IProvisioningPlan plan, ProfileChangeRequest profileChangeRequest, Collection<IInstallableUnit> toState) {
        String[] toRemove = profileChangeRequest.getPropertiesToRemove();
        int i = 0;
        while (i < toRemove.length) {
            plan.setProfileProperty(toRemove[i], null);
            ++i;
        }
        Map<String, String> propertyChanges = profileChangeRequest.getPropertiesToAdd();
        for (Map.Entry<String, String> entry : propertyChanges.entrySet()) {
            plan.setProfileProperty(entry.getKey(), entry.getValue());
        }
        Map<IInstallableUnit, Map<String, String>> allIUPropertyChanges = profileChangeRequest.getInstallableUnitProfilePropertiesToAdd();
        for (Map.Entry<IInstallableUnit, Map<String, String>> entry : allIUPropertyChanges.entrySet()) {
            IInstallableUnit iu = entry.getKey();
            if (!toState.contains(iu)) continue;
            for (Map.Entry<String, String> entry2 : entry.getValue().entrySet()) {
                plan.setInstallableUnitProfileProperty(iu, entry2.getKey(), entry2.getValue());
            }
        }
        Map<IInstallableUnit, List<String>> allIUPropertyDeletions = profileChangeRequest.getInstallableUnitProfilePropertiesToRemove();
        for (Map.Entry<IInstallableUnit, List<String>> entry : allIUPropertyDeletions.entrySet()) {
            IInstallableUnit iu = entry.getKey();
            List<String> iuPropertyRemovals = entry.getValue();
            for (String key : iuPropertyRemovals) {
                plan.setInstallableUnitProfileProperty(iu, key, null);
            }
        }
    }

    private void planIUOperations(IProvisioningPlan plan, Collection<IInstallableUnit> fromState, Collection<IInstallableUnit> toState) {
        new OperationGenerator(plan).generateOperation(fromState, toState);
    }

    @Override
    public IProvisioningPlan getDiffPlan(IProfile currentProfile, IProfile targetProfile, IProgressMonitor monitor) {
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)12);
        sub.setTaskName(Messages.Director_Task_Resolving_Dependencies);
        try {
            IProfileChangeRequest profileChangeRequest = FormerState.generateProfileDeltaChangeRequest(currentProfile, targetProfile);
            ProvisioningContext context = new ProvisioningContext(this.agent);
            if (context.getProperty(INCLUDE_PROFILE_IUS) == null) {
                context.setProperty(INCLUDE_PROFILE_IUS, Boolean.FALSE.toString());
            }
            IQueryResult iQueryResult = targetProfile.available(QueryUtil.createIUAnyQuery(), null);
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnit");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            context.setExtraInstallableUnits(Arrays.asList((IInstallableUnit[])iQueryResult.toArray((Class)clazz)));
            IProvisioningPlan iProvisioningPlan = this.getProvisioningPlan(profileChangeRequest, context, (IProgressMonitor)sub.newChild(6));
            return iProvisioningPlan;
        }
        finally {
            sub.done();
        }
    }

    public static Collection<IInstallableUnit> findPlannerMarkedIUs(IProfile profile) {
        IUProfilePropertyQuery markerQuery = new IUProfilePropertyQuery(INCLUSION_RULES, "*");
        return profile.query((IQuery)markerQuery, null).toUnmodifiableSet();
    }

    public static Map<String, String> createSelectionContext(Map<String, String> properties) {
        HashMap<String, String> result = new HashMap<String, String>(properties);
        String environments = properties.get("org.eclipse.equinox.p2.environments");
        if (environments == null) {
            return result;
        }
        StringTokenizer tokenizer = new StringTokenizer(environments, ",");
        while (tokenizer.hasMoreElements()) {
            String entry = tokenizer.nextToken();
            int i = entry.indexOf(61);
            String key = entry.substring(0, i).trim();
            String value = entry.substring(i + 1).trim();
            result.put(key, value);
        }
        return result;
    }

    private IInstallableUnit[] gatherAvailableInstallableUnits(IInstallableUnit[] additionalSource, ProvisioningContext context, IProgressMonitor monitor) {
        HashMap<Object, IInstallableUnit> resultsMap = new HashMap<Object, IInstallableUnit>();
        if (additionalSource != null) {
            int i = 0;
            while (i < additionalSource.length) {
                String key = new StringBuffer(String.valueOf(additionalSource[i].getId())).append("_").append(additionalSource[i].getVersion().toString()).toString();
                resultsMap.put(key, additionalSource[i]);
                ++i;
            }
        }
        if (context == null) {
            context = new ProvisioningContext(this.agent);
        } else {
            for (IInstallableUnit iu : context.getExtraInstallableUnits()) {
                String key = new StringBuffer(String.valueOf(iu.getId())).append('_').append(iu.getVersion().toString()).toString();
                resultsMap.put(key, iu);
            }
        }
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)1000);
        IQueryable queryable = context.getMetadata((IProgressMonitor)sub.newChild(500));
        IQueryResult matches = queryable.query(QueryUtil.createIUQuery(null, (VersionRange)VersionRange.emptyRange), (IProgressMonitor)sub.newChild(500));
        for (IInstallableUnit iu : matches) {
            String key = new StringBuffer(String.valueOf(iu.getId())).append("_").append(iu.getVersion().toString()).toString();
            IInstallableUnit currentIU = (IInstallableUnit)resultsMap.get(key);
            if (currentIU != null && !SimplePlanner.hasHigherFidelity(iu, currentIU)) continue;
            resultsMap.put(key, iu);
        }
        sub.done();
        Collection results = resultsMap.values();
        return results.toArray(new IInstallableUnit[results.size()]);
    }

    private static boolean hasHigherFidelity(IInstallableUnit iu, IInstallableUnit currentIU) {
        return Boolean.valueOf(currentIU.getProperty("org.eclipse.equinox.p2.partial.iu")) != false && Boolean.valueOf(iu.getProperty("org.eclipse.equinox.p2.partial.iu")) == false;
    }

    public SimplePlanner(IProvisioningAgent agent) {
        Assert.isNotNull((Object)agent);
        this.agent = agent;
        this.engine = (IEngine)agent.getService(IEngine.SERVICE_NAME);
        this.profileRegistry = (IProfileRegistry)agent.getService(IProfileRegistry.SERVICE_NAME);
        Assert.isNotNull((Object)this.engine);
        Assert.isNotNull((Object)this.profileRegistry);
    }

    private boolean satisfyMetaRequirements(Map<String, String> props) {
        if (props == null) {
            return true;
        }
        return props.get(CONSIDER_METAREQUIREMENTS) == null || "true".equalsIgnoreCase(props.get(CONSIDER_METAREQUIREMENTS));
    }

    private boolean satisfyMetaRequirements(IProfile p) {
        return this.satisfyMetaRequirements(p.getProperties());
    }

    private Object getSolutionFor(ProfileChangeRequest profileChangeRequest, ProvisioningContext context, IProgressMonitor monitor) {
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)12);
        sub.setTaskName(Messages.Director_Task_Resolving_Dependencies);
        try {
            IInstallableUnit[] availableIUs;
            Slicer slicer;
            CompoundQueryable slice;
            IProfile profile = profileChangeRequest.getProfile();
            Object[] updatedPlan = this.updatePlannerInfo(profileChangeRequest, context);
            Map<String, String> newSelectionContext = SimplePlanner.createSelectionContext(profileChangeRequest.getProfileProperties());
            ArrayList<IInstallableUnit> extraIUs = new ArrayList<IInstallableUnit>(profileChangeRequest.getAdditions());
            extraIUs.addAll(profileChangeRequest.getRemovals());
            if (context == null || context.getProperty(INCLUDE_PROFILE_IUS) == null || context.getProperty(INCLUDE_PROFILE_IUS).equalsIgnoreCase(Boolean.TRUE.toString())) {
                Iterator itor = profile.available(QueryUtil.createIUAnyQuery(), null).iterator();
                while (itor.hasNext()) {
                    extraIUs.add((IInstallableUnit)itor.next());
                }
            }
            if ((slice = (slicer = new Slicer((IQueryable<IInstallableUnit>)new QueryableArray(availableIUs = this.gatherAvailableInstallableUnits(extraIUs.toArray(new IInstallableUnit[extraIUs.size()]), context, (IProgressMonitor)sub.newChild(3))), newSelectionContext, this.satisfyMetaRequirements(profileChangeRequest.getProfileProperties()))).slice(new IInstallableUnit[]{(IInstallableUnit)updatedPlan[0]}, (IProgressMonitor)sub.newChild(3))) == null) {
                IProvisioningPlan plan = this.engine.createPlan(profile, context);
                plan.setStatus((IStatus)slicer.getStatus());
                IProvisioningPlan iProvisioningPlan = plan;
                return iProvisioningPlan;
            }
            IQueryable[] queryables = new IQueryable[]{slice, new QueryableArray(profileChangeRequest.getAdditions().toArray(new IInstallableUnit[profileChangeRequest.getAdditions().size()]))};
            slice = new CompoundQueryable(queryables);
            Projector projector = new Projector((IQueryable<IInstallableUnit>)slice, newSelectionContext, slicer.getNonGreedyIUs(), this.satisfyMetaRequirements(profileChangeRequest.getProfileProperties()));
            projector.encode((IInstallableUnit)updatedPlan[0], (IInstallableUnit[])updatedPlan[1], (IQueryable<IInstallableUnit>)profile, profileChangeRequest.getAdditions(), (IProgressMonitor)sub.newChild(3));
            IStatus s = projector.invokeSolver((IProgressMonitor)sub.newChild(3));
            if (s.getSeverity() == 8) {
                IProvisioningPlan plan = this.engine.createPlan(profile, context);
                plan.setStatus(s);
                IProvisioningPlan iProvisioningPlan = plan;
                return iProvisioningPlan;
            }
            if (s.getSeverity() == 4) {
                sub.setTaskName(Messages.Planner_NoSolution);
                if (s.getCode() != 1 || context != null && context.getProperty(EXPLANATION) != null && !Boolean.TRUE.toString().equalsIgnoreCase(context.getProperty(EXPLANATION))) {
                    IProvisioningPlan plan = this.engine.createPlan(profile, context);
                    plan.setStatus(s);
                    IProvisioningPlan iProvisioningPlan = plan;
                    return iProvisioningPlan;
                }
                Set<Explanation> explanation = projector.getExplanation((IProgressMonitor)sub.newChild(3));
                IStatus explanationStatus = this.convertExplanationToStatus(explanation);
                Map<IInstallableUnit, RequestStatus>[] changes = this.buildDetailedErrors(profileChangeRequest);
                Map<IInstallableUnit, RequestStatus> requestChanges = changes == null ? null : changes[0];
                Map<IInstallableUnit, RequestStatus> requestSideEffects = changes == null ? null : changes[1];
                PlannerStatus plannerStatus = new PlannerStatus(explanationStatus, new RequestStatus(null, 1, 4, explanation), requestChanges, requestSideEffects, null);
                IProvisioningPlan plan = this.engine.createPlan(profile, context);
                plan.setStatus((IStatus)plannerStatus);
                IProvisioningPlan iProvisioningPlan = plan;
                return iProvisioningPlan;
            }
            if (Tracing.DEBUG && s.getSeverity() != 0) {
                LogHelper.log((IStatus)s);
            }
            s = Status.OK_STATUS;
            Projector projector2 = projector;
            return projector2;
        }
        finally {
            sub.done();
        }
    }

    @Override
    public IProvisioningPlan getProvisioningPlan(IProfileChangeRequest request, ProvisioningContext context, IProgressMonitor monitor) {
        ProfileChangeRequest pcr = (ProfileChangeRequest)request;
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)12);
        sub.setTaskName(Messages.Director_Task_Resolving_Dependencies);
        try {
            Object resolutionResult = this.getSolutionFor(pcr, context, (IProgressMonitor)sub.newChild(6));
            if (resolutionResult instanceof IProvisioningPlan) {
                IProvisioningPlan iProvisioningPlan = (IProvisioningPlan)resolutionResult;
                return iProvisioningPlan;
            }
            Collection<IInstallableUnit> newState = ((Projector)resolutionResult).extractSolution();
            ArrayList<IInstallableUnit> fullState = new ArrayList<IInstallableUnit>();
            fullState.addAll(newState);
            newState = AttachmentHelper.attachFragments(newState.iterator(), ((Projector)resolutionResult).getFragmentAssociation());
            IProvisioningPlan temporaryPlan = this.generatePlan((Projector)resolutionResult, newState, pcr, context);
            IProvisioningPlan iProvisioningPlan = this.createInstallerPlan(pcr.getProfile(), pcr, fullState, newState, temporaryPlan, context, (IProgressMonitor)sub.newChild(6));
            return iProvisioningPlan;
        }
        catch (OperationCanceledException operationCanceledException) {
            IProvisioningPlan plan = this.engine.createPlan(pcr.getProfile(), context);
            plan.setStatus(Status.CANCEL_STATUS);
            IProvisioningPlan iProvisioningPlan = plan;
            return iProvisioningPlan;
        }
        finally {
            sub.done();
        }
    }

    private Collection<IRequirement> areMetaRequirementsSatisfied(IProfile oldProfile, Collection<IInstallableUnit> newProfile, IProvisioningPlan initialPlan) {
        Collection<IRequirement> allMetaRequirements = this.extractMetaRequirements(newProfile, initialPlan);
        for (IRequirement requirement : allMetaRequirements) {
            if (!oldProfile.query(QueryUtil.createLimitQuery((IQuery)QueryUtil.createMatchQuery((IExpression)requirement.getMatches(), (Object[])new Object[0]), (int)1), null).isEmpty()) continue;
            return allMetaRequirements;
        }
        return null;
    }

    private Collection<IRequirement> extractMetaRequirements(Collection<IInstallableUnit> ius, IProvisioningPlan plan) {
        HashSet<IRequirement> allMetaRequirements = new HashSet<IRequirement>();
        for (IInstallableUnit iu : ius) {
            allMetaRequirements.addAll(iu.getMetaRequirements());
        }
        IQueryResult queryResult = plan.getRemovals().query(QueryUtil.createIUAnyQuery(), null);
        for (IInstallableUnit iu : queryResult) {
            allMetaRequirements.addAll(iu.getMetaRequirements());
        }
        return allMetaRequirements;
    }

    private IProvisioningPlan createInstallerPlan(IProfile profile, ProfileChangeRequest initialRequest, Collection<IInstallableUnit> unattachedState, Collection<IInstallableUnit> expectedState, IProvisioningPlan initialPlan, ProvisioningContext initialContext, IProgressMonitor monitor) {
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)12);
        try {
            sub.setTaskName(Messages.Director_Task_installer_plan);
            if (this.profileRegistry == null) {
                IProvisioningPlan plan = this.engine.createPlan(initialRequest.getProfile(), initialContext);
                plan.setStatus((IStatus)new Status(4, "org.eclipse.equinox.p2.director", Messages.Planner_no_profile_registry));
                IProvisioningPlan iProvisioningPlan = plan;
                return iProvisioningPlan;
            }
            if (this.agent.getService("org.eclipse.equinox.p2.installer.agent") == null) {
                IProvisioningPlan iProvisioningPlan = initialPlan;
                return iProvisioningPlan;
            }
            IProfile installerProfile = ((IProfileRegistry)((IProvisioningAgent)this.agent.getService("org.eclipse.equinox.p2.installer.agent")).getService(IProfileRegistry.SERVICE_NAME)).getProfile((String)this.agent.getService("org.eclipse.equinox.p2.installer.profile.id"));
            if (installerProfile == null) {
                IProvisioningPlan iProvisioningPlan = initialPlan;
                return iProvisioningPlan;
            }
            if (this.haveSameLocation(this.agent, (IProvisioningAgent)this.agent.getService("org.eclipse.equinox.p2.installer.agent")) && profile.getProfileId().equals(installerProfile.getProfileId())) {
                if (profile.getTimestamp() != installerProfile.getTimestamp()) {
                    IProvisioningPlan plan = this.engine.createPlan(initialRequest.getProfile(), initialContext);
                    plan.setStatus((IStatus)new Status(4, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Planner_profile_out_of_sync, (Object)profile.getProfileId())));
                    IProvisioningPlan iProvisioningPlan = plan;
                    return iProvisioningPlan;
                }
                IProvisioningPlan iProvisioningPlan = this.createInstallerPlanForCohostedCase(profile, initialRequest, initialPlan, unattachedState, expectedState, initialContext, sub);
                return iProvisioningPlan;
            }
            if (this.satisfyMetaRequirements(profile) && !profile.getProfileId().equals(installerProfile.getProfileId())) {
                IProvisioningPlan iProvisioningPlan = this.createInstallerPlanForCohostedCaseFromExternalInstaller(profile, initialRequest, initialPlan, expectedState, initialContext, installerProfile, sub);
                return iProvisioningPlan;
            }
            IProvisioningPlan iProvisioningPlan = this.createInstallerPlanForExternalInstaller(profile, initialRequest, initialPlan, expectedState, initialContext, installerProfile, sub);
            return iProvisioningPlan;
        }
        finally {
            sub.done();
        }
    }

    private boolean haveSameLocation(IProvisioningAgent agent1, IProvisioningAgent agent2) {
        if (agent1 == null || agent2 == null) {
            return false;
        }
        if (agent1 == agent2) {
            return true;
        }
        IAgentLocation thisLocation = (IAgentLocation)agent1.getService(IAgentLocation.SERVICE_NAME);
        IAgentLocation otherLocation = (IAgentLocation)agent2.getService(IAgentLocation.SERVICE_NAME);
        if (thisLocation == null || otherLocation == null || thisLocation == null && otherLocation == null) {
            return false;
        }
        return thisLocation.getRootLocation().equals(otherLocation.getRootLocation());
    }

    private IProvisioningPlan createInstallerPlanForCohostedCaseFromExternalInstaller(IProfile profile, ProfileChangeRequest initialRequest, IProvisioningPlan initialPlan, Collection<IInstallableUnit> newState, ProvisioningContext initialContext, IProfile agentProfile, SubMonitor sub) {
        IProvisioningPlan planForProfile = this.generatePlan(null, newState, initialRequest, initialContext);
        return this.createInstallerPlanForExternalInstaller(profile, initialRequest, planForProfile, newState, initialContext, agentProfile, sub);
    }

    private IProvisioningPlan createInstallerPlanForExternalInstaller(IProfile targetedProfile, ProfileChangeRequest initialRequest, IProvisioningPlan initialPlan, Collection<IInstallableUnit> expectedState, ProvisioningContext initialContext, IProfile agentProfile, SubMonitor sub) {
        Object externalInstallerPlan;
        IProfileRegistry installerRegistry = (IProfileRegistry)((IProvisioningAgent)this.agent.getService("org.eclipse.equinox.p2.installer.agent")).getService(IProfileRegistry.SERVICE_NAME);
        IProfile installerProfile = installerRegistry.getProfile((String)this.agent.getService("org.eclipse.equinox.p2.installer.profile.id"));
        Collection<IRequirement> metaRequirements = this.areMetaRequirementsSatisfied(installerProfile, expectedState, initialPlan);
        if (metaRequirements == null) {
            return initialPlan;
        }
        IInstallableUnit actionsIU = this.createIUForMetaRequirements(targetedProfile, metaRequirements);
        IInstallableUnit previousActionsIU = this.getPreviousIUForMetaRequirements(installerProfile, this.getActionGatheringIUId(targetedProfile), (IProgressMonitor)sub);
        ProfileChangeRequest agentRequest = new ProfileChangeRequest(installerProfile);
        agentRequest.add(actionsIU);
        if (previousActionsIU != null) {
            agentRequest.remove(previousActionsIU);
        }
        if ((externalInstallerPlan = this.getSolutionFor(agentRequest, initialContext, (IProgressMonitor)sub.newChild(10))) instanceof IProvisioningPlan && ((IProvisioningPlan)externalInstallerPlan).getStatus().getSeverity() == 4) {
            MultiStatus externalInstallerStatus = new MultiStatus("org.eclipse.equinox.p2.director", 0, Messages.Planner_can_not_install_preq, null);
            externalInstallerStatus.add(((IProvisioningPlan)externalInstallerPlan).getStatus());
            IProvisioningPlan plan = this.engine.createPlan(initialRequest.getProfile(), initialContext);
            plan.setStatus((IStatus)externalInstallerStatus);
            IProvisioningPlan installerPlan = this.engine.createPlan(agentProfile, initialContext);
            installerPlan.setStatus((IStatus)externalInstallerStatus);
            plan.setInstallerPlan(installerPlan);
            return plan;
        }
        initialPlan.setInstallerPlan(this.generatePlan((Projector)externalInstallerPlan, null, agentRequest, initialContext));
        return initialPlan;
    }

    private IProvisioningPlan createInstallerPlanForCohostedCase(IProfile profile, ProfileChangeRequest initialRequest, IProvisioningPlan initialPlan, Collection<IInstallableUnit> unattachedState, Collection<IInstallableUnit> expectedState, ProvisioningContext initialContext, SubMonitor monitor) {
        Collection<IRequirement> metaRequirements;
        Collection<IRequirement> collection = metaRequirements = initialRequest.getRemovals().size() == 0 ? this.areMetaRequirementsSatisfied(profile, expectedState, initialPlan) : this.extractMetaRequirements(expectedState, initialPlan);
        if (metaRequirements == null || metaRequirements.isEmpty()) {
            return initialPlan;
        }
        IInstallableUnit metaRequirementIU = this.createIUForMetaRequirements(profile, metaRequirements);
        IInstallableUnit previousMetaRequirementIU = this.getPreviousIUForMetaRequirements(profile, this.getActionGatheringIUId(profile), (IProgressMonitor)monitor);
        ProfileChangeRequest agentRequest = new ProfileChangeRequest(profile);
        for (Map.Entry<String, String> entry : initialRequest.getPropertiesToAdd().entrySet()) {
            agentRequest.setProfileProperty(entry.getKey(), entry.getValue());
        }
        String[] removedProperties = initialRequest.getPropertiesToRemove();
        int i = 0;
        while (i < removedProperties.length) {
            agentRequest.removeProfileProperty(removedProperties[i]);
            ++i;
        }
        Map<IInstallableUnit, List<String>> removedIUProperties = initialRequest.getInstallableUnitProfilePropertiesToRemove();
        for (Map.Entry<IInstallableUnit, List<String>> entry : removedIUProperties.entrySet()) {
            for (String propKey : entry.getValue()) {
                agentRequest.removeInstallableUnitProfileProperty(entry.getKey(), propKey);
            }
        }
        if (previousMetaRequirementIU != null) {
            agentRequest.remove(previousMetaRequirementIU);
        }
        agentRequest.add(metaRequirementIU);
        ProvisioningContext agentCtx = new ProvisioningContext(this.agent);
        agentCtx.setMetadataRepositories(new URI[0]);
        ArrayList<IInstallableUnit> extraIUs = new ArrayList<IInstallableUnit>(unattachedState);
        agentCtx.setExtraInstallableUnits(extraIUs);
        Object agentSolution = this.getSolutionFor(agentRequest, agentCtx, (IProgressMonitor)monitor.newChild(3));
        if (agentSolution instanceof IProvisioningPlan && ((IProvisioningPlan)agentSolution).getStatus().getSeverity() == 4) {
            MultiStatus agentStatus = new MultiStatus("org.eclipse.equinox.p2.director", 0, Messages.Planner_actions_and_software_incompatible, null);
            agentStatus.add(((IProvisioningPlan)agentSolution).getStatus());
            IProvisioningPlan plan = this.engine.createPlan(initialRequest.getProfile(), initialContext);
            plan.setStatus((IStatus)agentStatus);
            IProvisioningPlan installerPlan = this.engine.createPlan(initialRequest.getProfile(), initialContext);
            installerPlan.setStatus((IStatus)agentStatus);
            plan.setInstallerPlan(installerPlan);
            return plan;
        }
        Collection<IInstallableUnit> agentState = ((Projector)agentSolution).extractSolution();
        agentState.remove(metaRequirementIU);
        agentState = AttachmentHelper.attachFragments(agentState.iterator(), ((Projector)agentSolution).getFragmentAssociation());
        ProvisioningContext noRepoContext = this.createNoRepoContext(initialRequest);
        Object initialSolution = this.getSolutionFor(new ProfileChangeRequest(new EverythingOptionalProfile(initialRequest.getProfile())), noRepoContext, (IProgressMonitor)new NullProgressMonitor());
        if (initialSolution instanceof IProvisioningPlan) {
            LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.director", new StringBuffer("The resolution of the previous state contained in profile ").append(initialRequest.getProfile().getProfileId()).append(" version ").append(initialRequest.getProfile().getTimestamp()).append(" failed.").toString()));
            return (IProvisioningPlan)initialSolution;
        }
        Iterator profileState = initialRequest.getProfile().query(QueryUtil.createIUAnyQuery(), null).iterator();
        Collection<IInstallableUnit> initialState = AttachmentHelper.attachFragments(profileState, ((Projector)initialSolution).getFragmentAssociation());
        IProvisioningPlan agentPlan = this.generateProvisioningPlan(initialState, agentState, initialRequest, null, initialContext);
        return this.generateProvisioningPlan(agentState, expectedState, initialRequest, agentPlan, initialContext);
    }

    private IProvisioningPlan generatePlan(Projector newSolution, Collection<IInstallableUnit> newState, ProfileChangeRequest request, ProvisioningContext context) {
        if (newState == null) {
            newState = newSolution.extractSolution();
            newState = AttachmentHelper.attachFragments(newState.iterator(), newSolution.getFragmentAssociation());
        }
        ProvisioningContext noRepoContext = this.createNoRepoContext(request);
        Object initialSolution = this.getSolutionFor(new ProfileChangeRequest(new EverythingOptionalProfile(request.getProfile())), noRepoContext, (IProgressMonitor)new NullProgressMonitor());
        if (initialSolution instanceof IProvisioningPlan) {
            LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.director", new StringBuffer("The resolution of the previous state contained in profile ").append(request.getProfile().getProfileId()).append(" version ").append(request.getProfile().getTimestamp()).append(" failed.").toString()));
            return (IProvisioningPlan)initialSolution;
        }
        Iterator profileState = request.getProfile().query(QueryUtil.createIUAnyQuery(), null).iterator();
        Collection<IInstallableUnit> initialState = AttachmentHelper.attachFragments(profileState, ((Projector)initialSolution).getFragmentAssociation());
        return this.generateProvisioningPlan(initialState, newState, request, null, context);
    }

    private ProvisioningContext createNoRepoContext(ProfileChangeRequest request) {
        ProvisioningContext noRepoContext = new ProvisioningContext(this.agent);
        noRepoContext.setMetadataRepositories(new URI[0]);
        noRepoContext.setArtifactRepositories(new URI[0]);
        noRepoContext.setProperty(INCLUDE_PROFILE_IUS, Boolean.FALSE.toString());
        noRepoContext.setExtraInstallableUnits(new ArrayList(request.getProfile().query(QueryUtil.createIUAnyQuery(), (IProgressMonitor)new NullProgressMonitor()).toUnmodifiableSet()));
        return noRepoContext;
    }

    private IInstallableUnit getPreviousIUForMetaRequirements(IProfile profile, String iuId, IProgressMonitor monitor) {
        IQueryResult c = profile.query(QueryUtil.createIUQuery((String)iuId), monitor);
        if (c.isEmpty()) {
            return null;
        }
        return (IInstallableUnit)c.iterator().next();
    }

    private String getActionGatheringIUId(IProfile profile) {
        return new StringBuffer("org.eclipse.equinox.p2.engine.actions.root.").append(profile.getProfileId()).toString();
    }

    private IInstallableUnit createIUForMetaRequirements(IProfile profile, Collection<IRequirement> metaRequirements) {
        MetadataFactory.InstallableUnitDescription description = new MetadataFactory.InstallableUnitDescription();
        String id = this.getActionGatheringIUId(profile);
        description.setId(id);
        Version version = Version.createOSGi((int)1, (int)0, (int)0, (String)Long.toString(profile.getTimestamp()));
        description.setVersion(version);
        description.addRequirements(metaRequirements);
        ArrayList<IProvidedCapability> providedCapabilities = new ArrayList<IProvidedCapability>();
        IProvidedCapability providedCapability = MetadataFactory.createProvidedCapability((String)"org.eclipse.equinox.p2.iu", (String)id, (Version)version);
        providedCapabilities.add(providedCapability);
        description.addProvidedCapabilities(providedCapabilities);
        IInstallableUnit actionsIU = MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)description);
        return actionsIU;
    }

    private IInstallableUnit createIURepresentingTheProfile(Set<IRequirement> allRequirements) {
        MetadataFactory.InstallableUnitDescription iud = new MetadataFactory.InstallableUnitDescription();
        String time = Long.toString(System.currentTimeMillis());
        iud.setId(time);
        iud.setVersion(Version.createOSGi((int)0, (int)0, (int)0, (String)time));
        iud.setRequirements(allRequirements.toArray(new IRequirement[allRequirements.size()]));
        return MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)iud);
    }

    private Object[] updatePlannerInfo(ProfileChangeRequest profileChangeRequest, ProvisioningContext context) {
        IRequirement profileRequirement;
        Map<String, String> propertiesForIU;
        IQueryResult alreadyInstalled = profileChangeRequest.getProfile().query((IQuery)new IUProfilePropertyQuery(INCLUSION_RULES, "*"), null);
        Collection<IInstallableUnit> additionRequested = profileChangeRequest.getAdditions();
        Collection<IInstallableUnit> removalRequested = profileChangeRequest.getRemovals();
        for (Map.Entry<IInstallableUnit, List<String>> object : profileChangeRequest.getInstallableUnitProfilePropertiesToRemove().entrySet()) {
            if (!object.getValue().contains(INCLUSION_RULES)) continue;
            profileChangeRequest.setInstallableUnitProfileProperty(object.getKey(), INCLUSION_RULES, ProfileInclusionRules.createStrictInclusionRule(object.getKey()));
        }
        if (removalRequested.size() != 0) {
            Iterator iterator = alreadyInstalled.iterator();
            block3: while (iterator.hasNext()) {
                IInstallableUnit iu = (IInstallableUnit)iterator.next();
                for (IInstallableUnit removed : removalRequested) {
                    if (!iu.equals((Object)removed)) continue;
                    profileChangeRequest.removeInstallableUnitProfileProperty(removed, INCLUSION_RULES);
                    iterator.remove();
                    continue block3;
                }
            }
        }
        HashSet<IRequirement> gatheredRequirements = new HashSet<IRequirement>();
        Map<IInstallableUnit, Map<String, String>> iuPropertiesToAdd = profileChangeRequest.getInstallableUnitProfilePropertiesToAdd();
        for (IInstallableUnit added : additionRequested) {
            propertiesForIU = iuPropertiesToAdd.get(added);
            profileRequirement = null;
            if (propertiesForIU != null) {
                profileRequirement = this.createRequirement(added, propertiesForIU.get(INCLUSION_RULES));
            }
            if (profileRequirement == null) {
                profileChangeRequest.setInstallableUnitProfileProperty(added, INCLUSION_RULES, ProfileInclusionRules.createStrictInclusionRule(added));
                profileRequirement = this.createStrictRequirement(added);
            }
            gatheredRequirements.add(profileRequirement);
        }
        for (IInstallableUnit iu : alreadyInstalled) {
            propertiesForIU = iuPropertiesToAdd.get(iu);
            profileRequirement = null;
            if (propertiesForIU != null) {
                profileRequirement = this.createRequirement(iu, propertiesForIU.get(INCLUSION_RULES));
            }
            if (profileRequirement == null) {
                profileRequirement = this.createRequirement(iu, profileChangeRequest.getProfile().getInstallableUnitProperty(iu, INCLUSION_RULES));
            }
            gatheredRequirements.add(profileRequirement);
        }
        if (profileChangeRequest.getExtraRequirements() != null) {
            gatheredRequirements.addAll(profileChangeRequest.getExtraRequirements());
        }
        Object[] objectArray = new Object[2];
        objectArray[0] = this.createIURepresentingTheProfile(gatheredRequirements);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        objectArray[1] = alreadyInstalled.toArray((Class)clazz);
        return objectArray;
    }

    private IRequirement createRequirement(IInstallableUnit iu, String rule) {
        if (rule == null) {
            return null;
        }
        if (rule.equals(ProfileInclusionRules.createStrictInclusionRule(iu))) {
            return this.createStrictRequirement(iu);
        }
        if (rule.equals(ProfileInclusionRules.createOptionalInclusionRule(iu))) {
            return this.createOptionalRequirement(iu);
        }
        return null;
    }

    private IRequirement createOptionalRequirement(IInstallableUnit iu) {
        return MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)iu.getId(), (VersionRange)new VersionRange(iu.getVersion(), true, iu.getVersion(), true), null, (boolean)true, (boolean)false, (boolean)true);
    }

    private IRequirement createStrictRequirement(IInstallableUnit iu) {
        return MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)iu.getId(), (VersionRange)new VersionRange(iu.getVersion(), true, iu.getVersion(), true), null, (boolean)false, (boolean)false, (boolean)true);
    }

    @Override
    public IQueryResult<IInstallableUnit> updatesFor(IInstallableUnit toUpdate, ProvisioningContext context, IProgressMonitor monitor) {
        HashMap<String, IInstallableUnit> resultsMap = new HashMap<String, IInstallableUnit>();
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)1000);
        IQueryable queryable = context.getMetadata((IProgressMonitor)sub.newChild(500));
        IQueryResult matches = queryable.query((IQuery)new UpdateQuery(toUpdate), (IProgressMonitor)sub.newChild(500));
        for (IInstallableUnit iu : matches) {
            String key = new StringBuffer(String.valueOf(iu.getId())).append("_").append(iu.getVersion().toString()).toString();
            IInstallableUnit currentIU = (IInstallableUnit)resultsMap.get(key);
            if (currentIU != null && !SimplePlanner.hasHigherFidelity(iu, currentIU)) continue;
            resultsMap.put(key, iu);
        }
        sub.done();
        return new CollectionResult(resultsMap.values());
    }

    @Override
    public IProfileChangeRequest createChangeRequest(IProfile profileToChange) {
        return new ProfileChangeRequest(profileToChange);
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class EverythingOptionalProfile
    implements IProfile {
        private IProfile profile;

        public EverythingOptionalProfile(IProfile p) {
            this.profile = p;
        }

        public IQueryResult<IInstallableUnit> available(IQuery<IInstallableUnit> query, IProgressMonitor monitor) {
            return this.profile.available(query, monitor);
        }

        public Map<String, String> getInstallableUnitProperties(IInstallableUnit iu) {
            return this.profile.getInstallableUnitProperties(iu);
        }

        public String getInstallableUnitProperty(IInstallableUnit iu, String key) {
            if (SimplePlanner.INCLUSION_RULES.equals(key)) {
                return ProfileInclusionRules.createOptionalInclusionRule(iu);
            }
            return this.profile.getInstallableUnitProperty(iu, key);
        }

        public String getProfileId() {
            return this.profile.getProfileId();
        }

        public Map<String, String> getProperties() {
            return this.profile.getProperties();
        }

        public String getProperty(String key) {
            return this.profile.getProperty(key);
        }

        public IProvisioningAgent getProvisioningAgent() {
            return this.profile.getProvisioningAgent();
        }

        public long getTimestamp() {
            return this.profile.getTimestamp();
        }

        public IQueryResult<IInstallableUnit> query(IQuery<IInstallableUnit> query, IProgressMonitor monitor) {
            return this.profile.query(query, monitor);
        }
    }
}

