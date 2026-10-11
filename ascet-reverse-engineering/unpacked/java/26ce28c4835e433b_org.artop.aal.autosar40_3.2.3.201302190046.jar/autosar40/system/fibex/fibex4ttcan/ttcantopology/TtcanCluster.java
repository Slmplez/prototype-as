/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4ttcan.ttcantopology;

import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCluster;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanClusterConditional;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TtcanCluster
extends AbstractCanCluster {
    public EList<TtcanClusterConditional> getTtcanClusterVariants();
}

