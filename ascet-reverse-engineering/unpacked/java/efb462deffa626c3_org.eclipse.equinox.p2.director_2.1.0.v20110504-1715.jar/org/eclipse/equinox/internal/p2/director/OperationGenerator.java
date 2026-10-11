/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.engine.IProvisioningPlan
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IInstallableUnitFragment
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.expression.IExpression
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.QueryUtil
 */
package org.eclipse.equinox.internal.p2.director;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import org.eclipse.equinox.internal.p2.director.QueryableArray;
import org.eclipse.equinox.p2.engine.IProvisioningPlan;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnitFragment;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.QueryUtil;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OperationGenerator {
    private static final IInstallableUnit NULL_IU = MetadataFactory.createResolvedInstallableUnit((IInstallableUnit)MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)new MetadataFactory.InstallableUnitDescription()), (IInstallableUnitFragment[])new IInstallableUnitFragment[0]);
    private final IProvisioningPlan plan;

    public OperationGenerator(IProvisioningPlan plan) {
        this.plan = plan;
    }

    public void generateOperation(Collection<IInstallableUnit> from_, Collection<IInstallableUnit> to_) {
        HashSet<IInstallableUnit> intersection = new HashSet<IInstallableUnit>(from_);
        intersection.retainAll(to_);
        HashSet<IInstallableUnit> tmpFrom = new HashSet<IInstallableUnit>(from_);
        HashSet<IInstallableUnit> tmpTo = new HashSet<IInstallableUnit>(to_);
        tmpFrom.removeAll(intersection);
        tmpTo.removeAll(intersection);
        ArrayList<IInstallableUnit> from = new ArrayList<IInstallableUnit>(tmpFrom);
        Collections.sort(from);
        ArrayList<IInstallableUnit> to = new ArrayList<IInstallableUnit>(tmpTo);
        Collections.sort(to);
        this.generateUpdates(from, to);
        this.generateInstallUninstall(from, to);
        this.generateConfigurationChanges(to_, intersection);
    }

    private void generateConfigurationChanges(Collection<IInstallableUnit> to_, Collection<IInstallableUnit> intersection) {
        if (intersection.size() == 0) {
            return;
        }
        TreeSet<IInstallableUnit> to = new TreeSet<IInstallableUnit>(to_);
        for (IInstallableUnit fromIU : intersection) {
            IInstallableUnit toIU = to.tailSet(fromIU).first();
            this.generateConfigurationOperation(fromIU, toIU);
        }
    }

    private void generateConfigurationOperation(IInstallableUnit fromIU, IInstallableUnit toIU) {
        Collection toFragments;
        Collection fromFragments = fromIU.getFragments();
        if (fromFragments == (toFragments = toIU.getFragments())) {
            return;
        }
        if (fromFragments.size() == toFragments.size() && fromFragments.containsAll(toFragments)) {
            return;
        }
        this.plan.updateInstallableUnit(fromIU, toIU);
    }

    private void generateInstallUninstall(List<IInstallableUnit> from, List<IInstallableUnit> to) {
        int toIdx = 0;
        int fromIdx = 0;
        while (fromIdx != from.size() && toIdx != to.size()) {
            IInstallableUnit fromIU = from.get(fromIdx);
            IInstallableUnit toIU = to.get(toIdx);
            int comparison = toIU.compareTo((Object)fromIU);
            if (comparison < 0) {
                this.plan.addInstallableUnit(toIU);
                ++toIdx;
                continue;
            }
            if (comparison == 0) {
                ++toIdx;
                ++fromIdx;
                continue;
            }
            this.plan.removeInstallableUnit(fromIU);
            ++fromIdx;
        }
        if (fromIdx != from.size()) {
            int i = fromIdx;
            while (i < from.size()) {
                this.plan.removeInstallableUnit(from.get(i));
                ++i;
            }
        }
        if (toIdx != to.size()) {
            int i = toIdx;
            while (i < to.size()) {
                this.plan.addInstallableUnit(to.get(i));
                ++i;
            }
        }
    }

    private void generateUpdates(List<IInstallableUnit> from, List<IInstallableUnit> to) {
        if (to.isEmpty() || from.isEmpty()) {
            return;
        }
        HashSet<IInstallableUnit> processed = new HashSet<IInstallableUnit>();
        HashSet<IInstallableUnit> removedFromTo = new HashSet<IInstallableUnit>();
        QueryableArray indexedFromElements = new QueryableArray(from.toArray(new IInstallableUnit[from.size()]));
        int toIdx = 0;
        while (toIdx < to.size()) {
            IInstallableUnit iuTo = to.get(toIdx);
            if (iuTo.getId().equals(this.next(to, toIdx).getId())) {
                toIdx = this.skip(to, iuTo, toIdx) - 1;
            } else if (iuTo.getUpdateDescriptor() != null) {
                IQuery updateQuery = QueryUtil.createMatchQuery((IExpression)((IExpression)iuTo.getUpdateDescriptor().getIUsBeingUpdated().iterator().next()), (Object[])new Object[0]);
                iuTo.getUpdateDescriptor().getIUsBeingUpdated();
                IQueryResult updates = indexedFromElements.query(updateQuery, null);
                if (!updates.isEmpty()) {
                    Iterator updatesIterator = updates.iterator();
                    IInstallableUnit iuFrom = (IInstallableUnit)updatesIterator.next();
                    if (!updatesIterator.hasNext()) {
                        if (iuTo.equals((Object)iuFrom)) {
                            from.remove(iuFrom);
                            removedFromTo.add(iuTo);
                        } else {
                            this.plan.updateInstallableUnit(iuFrom, iuTo);
                            from.remove(iuFrom);
                            processed.add(iuTo);
                        }
                    }
                }
            }
            ++toIdx;
        }
        to.removeAll(processed);
        to.removeAll(removedFromTo);
    }

    private IInstallableUnit next(List<IInstallableUnit> l, int i) {
        if (++i >= l.size()) {
            return NULL_IU;
        }
        return l.get(i);
    }

    private int skip(List<IInstallableUnit> c, IInstallableUnit id, int idx) {
        int i = idx;
        while (i < c.size()) {
            if (!id.getId().equals(c.get(i).getId())) {
                return i;
            }
            ++i;
        }
        return i;
    }
}

