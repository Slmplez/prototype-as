/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IInstallableUnitFragment
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.query.QueryUtil
 */
package org.eclipse.equinox.internal.p2.director;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnitFragment;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.query.QueryUtil;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AttachmentHelper {
    private static final IInstallableUnitFragment[] NO_FRAGMENTS = new IInstallableUnitFragment[0];

    /*
     * WARNING - void declaration
     */
    public static Collection<IInstallableUnit> attachFragments(Iterator<IInstallableUnit> toAttach, Map<IInstallableUnitFragment, List<IInstallableUnit>> fragmentsToIUs) {
        HashMap<IInstallableUnit, IInstallableUnitFragment[]> fragmentBindings = new HashMap<IInstallableUnit, IInstallableUnitFragment[]>();
        HashMap<IInstallableUnit, ArrayList<IInstallableUnitFragment>> iusToFragment = new HashMap<IInstallableUnit, ArrayList<IInstallableUnitFragment>>(fragmentsToIUs.size());
        for (Map.Entry<IInstallableUnitFragment, List<IInstallableUnit>> entry : fragmentsToIUs.entrySet()) {
            IInstallableUnitFragment fragment = entry.getKey();
            List<IInstallableUnit> existingMatches = entry.getValue();
            for (IInstallableUnit host : existingMatches) {
                ArrayList<IInstallableUnitFragment> potentialFragments = (ArrayList<IInstallableUnitFragment>)iusToFragment.get(host);
                if (potentialFragments == null) {
                    potentialFragments = new ArrayList<IInstallableUnitFragment>();
                    iusToFragment.put(host, potentialFragments);
                }
                potentialFragments.add(fragment);
            }
        }
        for (Map.Entry<Object, List<Object>> entry : iusToFragment.entrySet()) {
            void var9_17;
            IInstallableUnit hostIU = (IInstallableUnit)entry.getKey();
            List<Object> potentialIUFragments = entry.getValue();
            ArrayList<IInstallableUnitFragment> applicableFragments = new ArrayList<IInstallableUnitFragment>();
            for (IInstallableUnitFragment iInstallableUnitFragment : potentialIUFragments) {
                if (hostIU.equals((Object)iInstallableUnitFragment)) continue;
                Collection reqsFromFragment = iInstallableUnitFragment.getHost();
                boolean match = true;
                boolean requirementMatched = false;
                Iterator iterator = reqsFromFragment.iterator();
                while (iterator.hasNext() && match) {
                    IRequirement reqs = (IRequirement)iterator.next();
                    requirementMatched = false;
                    if (hostIU.satisfies(reqs)) {
                        requirementMatched = true;
                    }
                    if (requirementMatched) continue;
                    match = false;
                    break;
                }
                if (!match) continue;
                applicableFragments.add(iInstallableUnitFragment);
            }
            Object var9_16 = null;
            int specificityLevel = 0;
            LinkedList<Object> fragments = new LinkedList<Object>();
            for (IInstallableUnitFragment fragment : applicableFragments) {
                if (AttachmentHelper.isTranslation(fragment)) {
                    fragments.add(fragment);
                    continue;
                }
                if (fragment.getHost().size() <= specificityLevel) continue;
                IInstallableUnitFragment iInstallableUnitFragment = fragment;
                specificityLevel = fragment.getHost().size();
            }
            if (var9_17 != null) {
                fragments.addFirst(var9_17);
            }
            if (fragments.isEmpty()) continue;
            fragmentBindings.put(hostIU, fragments.toArray(new IInstallableUnitFragment[fragments.size()]));
        }
        HashSet<IInstallableUnit> hashSet = new HashSet<IInstallableUnit>();
        while (toAttach.hasNext()) {
            IInstallableUnit iu = toAttach.next();
            if (iu == null) continue;
            if (QueryUtil.isFragment((IInstallableUnit)iu)) {
                hashSet.add(iu);
                continue;
            }
            IInstallableUnitFragment[] fragments = (IInstallableUnitFragment[])fragmentBindings.get(iu);
            if (fragments == null) {
                fragments = NO_FRAGMENTS;
            }
            hashSet.add(MetadataFactory.createResolvedInstallableUnit((IInstallableUnit)iu, (IInstallableUnitFragment[])fragments));
        }
        return hashSet;
    }

    private static boolean isTranslation(IInstallableUnitFragment fragment) {
        for (IProvidedCapability capability : fragment.getProvidedCapabilities()) {
            if (!"org.eclipse.equinox.p2.localization".equals(capability.getNamespace())) continue;
            return true;
        }
        return false;
    }
}

