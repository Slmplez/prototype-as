/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcimplementation.GSwcImplementation
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.swcimplementation;

import autosar3x.commonstructure.implementation.Implementation;
import autosar3x.swcomponent.swcimplementation.PerInstanceMemorySize;
import autosar3x.swcomponent.swcinternalbehavior.InternalBehavior;
import gautosar.gswcomponents.gswcimplementation.GSwcImplementation;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcImplementation
extends Implementation,
GSwcImplementation {
    public InternalBehavior getBehavior();

    public void setBehavior(InternalBehavior var1);

    public EList<PerInstanceMemorySize> getPerInstanceMemorySizes();

    public String getRequiredRTEVendor();

    public void setRequiredRTEVendor(String var1);

    public void unsetRequiredRTEVendor();

    public boolean isSetRequiredRTEVendor();
}

