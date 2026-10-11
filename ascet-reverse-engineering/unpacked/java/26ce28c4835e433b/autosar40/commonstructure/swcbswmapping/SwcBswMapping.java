/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.swcbswmapping;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.commonstructure.swcbswmapping.SwcBswRunnableMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedModeGroupPrototype;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedTrigger;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcBswMapping
extends ARElement,
AtpStructureElement {
    public BswInternalBehavior getBswBehavior();

    public void setBswBehavior(BswInternalBehavior var1);

    public EList<SwcBswRunnableMapping> getRunnableMappings();

    public SwcInternalBehavior getSwcBehavior();

    public void setSwcBehavior(SwcInternalBehavior var1);

    public EList<SwcBswSynchronizedModeGroupPrototype> getSynchronizedModeGroups();

    public EList<SwcBswSynchronizedTrigger> getSynchronizedTriggers();
}

