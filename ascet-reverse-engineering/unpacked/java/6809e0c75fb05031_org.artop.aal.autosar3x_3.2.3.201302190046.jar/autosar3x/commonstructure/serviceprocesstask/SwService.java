/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.serviceprocesstask;

import autosar3x.commonstructure.serviceprocesstask.SwServiceAccessedElementSet;
import autosar3x.commonstructure.serviceprocesstask.SwServiceArg;
import autosar3x.commonstructure.serviceprocesstask.SwServiceProps;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwService
extends ARElement {
    public SwServiceArg getSwServiceReturn();

    public void setSwServiceReturn(SwServiceArg var1);

    public EList<SwServiceArg> getSwServiceArgs();

    public EList<SwServiceAccessedElementSet> getSwServiceAccessedElementSets();

    public SwServiceProps getSwServiceProps();

    public void setSwServiceProps(SwServiceProps var1);
}

