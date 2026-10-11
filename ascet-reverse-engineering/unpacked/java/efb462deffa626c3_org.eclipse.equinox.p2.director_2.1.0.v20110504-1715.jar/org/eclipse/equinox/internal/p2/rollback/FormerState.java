/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.QueryUtil
 */
package org.eclipse.equinox.internal.p2.rollback;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.equinox.internal.p2.director.ProfileChangeRequest;
import org.eclipse.equinox.internal.p2.director.SimplePlanner;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.planner.IProfileChangeRequest;
import org.eclipse.equinox.p2.query.QueryUtil;

public class FormerState {
    public static IProfileChangeRequest generateProfileDeltaChangeRequest(IProfile current, IProfile target) {
        ProfileChangeRequest request = new ProfileChangeRequest(current);
        FormerState.synchronizeProfileProperties(request, current, target);
        FormerState.synchronizeMarkedIUs(request, current, target);
        FormerState.synchronizeAllIUProperties(request, current, target);
        return request;
    }

    private static void synchronizeAllIUProperties(IProfileChangeRequest request, IProfile current, IProfile target) {
        IInstallableUnit iu;
        Set currentIUset = current.query(QueryUtil.createIUAnyQuery(), null).toUnmodifiableSet();
        Iterator targetIUs = target.query(QueryUtil.createIUAnyQuery(), null).iterator();
        ArrayList<IInstallableUnit> iusToAdd = new ArrayList<IInstallableUnit>();
        ArrayList<IInstallableUnit> iusToUpdate = new ArrayList<IInstallableUnit>();
        while (targetIUs.hasNext()) {
            IInstallableUnit nxt = (IInstallableUnit)targetIUs.next();
            if (currentIUset.contains(nxt)) {
                iusToUpdate.add(nxt);
                continue;
            }
            iusToAdd.add(nxt);
        }
        Iterator iterator = iusToAdd.iterator();
        while (iterator.hasNext()) {
            iu = (IInstallableUnit)iterator.next();
            Iterator iterator2 = target.getInstallableUnitProperties(iu).entrySet().iterator();
            while (iterator2.hasNext()) {
                Map.Entry entry = iterator2.next();
                request.setInstallableUnitProfileProperty(iu, (String)entry.getKey(), (String)entry.getValue());
            }
        }
        iterator = iusToUpdate.iterator();
        while (iterator.hasNext()) {
            Map.Entry entry;
            iu = (IInstallableUnit)iterator.next();
            HashMap propertiesToSet = new HashMap(target.getInstallableUnitProperties(iu));
            Iterator iterator3 = current.getInstallableUnitProperties(iu).entrySet().iterator();
            while (iterator3.hasNext()) {
                entry = iterator3.next();
                String key = (String)entry.getKey();
                String newValue = (String)propertiesToSet.get(key);
                if (newValue == null) {
                    request.removeInstallableUnitProfileProperty(iu, key);
                    continue;
                }
                if (!newValue.equals(entry.getValue())) continue;
                propertiesToSet.remove(key);
            }
            iterator3 = propertiesToSet.entrySet().iterator();
            while (iterator3.hasNext()) {
                entry = iterator3.next();
                request.setInstallableUnitProfileProperty(iu, (String)entry.getKey(), (String)entry.getValue());
            }
        }
    }

    private static void synchronizeMarkedIUs(IProfileChangeRequest request, IProfile current, IProfile target) {
        Collection<IInstallableUnit> currentPlannerMarkedIUs = SimplePlanner.findPlannerMarkedIUs(current);
        Collection<IInstallableUnit> targetPlannerMarkedIUs = SimplePlanner.findPlannerMarkedIUs(target);
        HashSet<IInstallableUnit> markedIUsToAdd = new HashSet<IInstallableUnit>(targetPlannerMarkedIUs);
        markedIUsToAdd.removeAll(currentPlannerMarkedIUs);
        request.addAll(markedIUsToAdd);
        HashSet<IInstallableUnit> markedIUsToRemove = new HashSet<IInstallableUnit>(currentPlannerMarkedIUs);
        markedIUsToRemove.removeAll(targetPlannerMarkedIUs);
        request.removeAll(markedIUsToRemove);
    }

    private static void synchronizeProfileProperties(IProfileChangeRequest request, IProfile current, IProfile target) {
        Map.Entry entry;
        HashMap profilePropertiesToSet = new HashMap(target.getProperties());
        Iterator iterator = current.getProperties().entrySet().iterator();
        while (iterator.hasNext()) {
            entry = iterator.next();
            String key = (String)entry.getKey();
            String newValue = (String)profilePropertiesToSet.get(key);
            if (newValue == null) {
                request.removeProfileProperty(key);
                continue;
            }
            if (!newValue.equals(entry.getValue())) continue;
            profilePropertiesToSet.remove(key);
        }
        iterator = profilePropertiesToSet.entrySet().iterator();
        while (iterator.hasNext()) {
            entry = iterator.next();
            request.setProfileProperty((String)entry.getKey(), (String)entry.getValue());
        }
    }
}

