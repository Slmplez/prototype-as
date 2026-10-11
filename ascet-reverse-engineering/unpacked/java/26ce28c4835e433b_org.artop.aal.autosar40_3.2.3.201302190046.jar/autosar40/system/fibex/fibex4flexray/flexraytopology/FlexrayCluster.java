/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology;

import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayClusterConditional;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCluster;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayCluster
extends CommunicationCluster {
    public EList<FlexrayClusterConditional> getFlexrayClusterVariants();
}

