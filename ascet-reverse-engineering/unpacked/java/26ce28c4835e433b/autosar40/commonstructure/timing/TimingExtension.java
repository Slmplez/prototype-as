/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.timing;

import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TimingExtension
extends ARElement {
    public EList<TimingDescription> getTimingDescriptions();

    public EList<TimingConstraint> getTimingGuarantees();

    public EList<TimingConstraint> getTimingRequirements();
}

