/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.engine;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.eclipse.equinox.internal.p2.engine.EngineActivator;
import org.eclipse.equinox.internal.p2.engine.Phase;
import org.eclipse.equinox.internal.p2.engine.PhaseSet;
import org.eclipse.equinox.internal.p2.engine.SizingPhaseSet;
import org.eclipse.equinox.internal.p2.engine.phases.CheckTrust;
import org.eclipse.equinox.internal.p2.engine.phases.Collect;
import org.eclipse.equinox.internal.p2.engine.phases.Configure;
import org.eclipse.equinox.internal.p2.engine.phases.Install;
import org.eclipse.equinox.internal.p2.engine.phases.Property;
import org.eclipse.equinox.internal.p2.engine.phases.Unconfigure;
import org.eclipse.equinox.internal.p2.engine.phases.Uninstall;
import org.eclipse.equinox.p2.engine.IPhaseSet;
import org.eclipse.equinox.p2.engine.ISizingPhaseSet;

public class PhaseSetFactory {
    private static final boolean forcedUninstall = Boolean.valueOf(EngineActivator.getContext().getProperty("org.eclipse.equinox.p2.engine.forcedUninstall"));
    public static String PHASE_CHECK_TRUST = "checkTrust";
    public static String PHASE_COLLECT = "collect";
    public static String PHASE_CONFIGURE = "configure";
    public static String PHASE_INSTALL = "install";
    public static String PHASE_PROPERTY = "property";
    public static String PHASE_UNCONFIGURE = "unconfigure";
    public static String PHASE_UNINSTALL = "uninstall";
    private static final List<String> ALL_PHASES_LIST = Arrays.asList(PHASE_COLLECT, PHASE_UNCONFIGURE, PHASE_UNINSTALL, PHASE_PROPERTY, PHASE_CHECK_TRUST, PHASE_INSTALL, PHASE_CONFIGURE);

    public static final IPhaseSet createDefaultPhaseSetExcluding(String[] exclude) {
        if (exclude == null || exclude.length == 0) {
            return PhaseSetFactory.createDefaultPhaseSet();
        }
        List<String> excludeList = Arrays.asList(exclude);
        ArrayList<String> includeList = new ArrayList<String>(ALL_PHASES_LIST);
        includeList.removeAll(excludeList);
        return PhaseSetFactory.createPhaseSetIncluding(includeList.toArray(new String[includeList.size()]));
    }

    public static final IPhaseSet createPhaseSetIncluding(String[] include) {
        if (include == null || include.length == 0) {
            return new PhaseSet(new Phase[0]);
        }
        List<String> includeList = Arrays.asList(include);
        ArrayList<Phase> phases = new ArrayList<Phase>();
        if (includeList.contains(PHASE_COLLECT)) {
            phases.add(new Collect(100));
        }
        if (includeList.contains(PHASE_CHECK_TRUST)) {
            phases.add(new CheckTrust(10));
        }
        if (includeList.contains(PHASE_UNCONFIGURE)) {
            phases.add(new Unconfigure(10, forcedUninstall));
        }
        if (includeList.contains(PHASE_UNINSTALL)) {
            phases.add(new Uninstall(50, forcedUninstall));
        }
        if (includeList.contains(PHASE_PROPERTY)) {
            phases.add(new Property(1));
        }
        if (includeList.contains(PHASE_INSTALL)) {
            phases.add(new Install(50));
        }
        if (includeList.contains(PHASE_CONFIGURE)) {
            phases.add(new Configure(10));
        }
        return new PhaseSet(phases.toArray(new Phase[phases.size()]));
    }

    public static IPhaseSet createDefaultPhaseSet() {
        return PhaseSetFactory.createPhaseSetIncluding(ALL_PHASES_LIST.toArray(new String[ALL_PHASES_LIST.size()]));
    }

    public static ISizingPhaseSet createSizingPhaseSet() {
        return new SizingPhaseSet();
    }
}

