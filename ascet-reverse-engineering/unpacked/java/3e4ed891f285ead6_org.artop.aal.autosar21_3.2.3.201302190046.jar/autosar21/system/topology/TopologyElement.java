/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.topology;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.topology.SystemTopologyType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TopologyElement
extends Identifiable {
    public SystemTopologyType getSystemTopologyType();

    public void setSystemTopologyType(SystemTopologyType var1);

    public EList<TopologyElement> getChilds();

    public TopologyElement getParent();

    public void setParent(TopologyElement var1);
}

