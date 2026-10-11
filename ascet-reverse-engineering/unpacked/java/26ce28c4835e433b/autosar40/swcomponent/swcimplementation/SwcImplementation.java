/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcimplementation.GSwcImplementation
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.swcimplementation;

import autosar40.commonstructure.implementation.Implementation;
import autosar40.swcomponent.swcimplementation.PerInstanceMemorySize;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import gautosar.gswcomponents.gswcimplementation.GSwcImplementation;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcImplementation
extends Implementation,
GSwcImplementation {
    public SwcInternalBehavior getBehavior();

    public void setBehavior(SwcInternalBehavior var1);

    public EList<PerInstanceMemorySize> getPerInstanceMemorySizes();

    public String getRequiredRTEVendor();

    public void setRequiredRTEVendor(String var1);

    public void unsetRequiredRTEVendor();

    public boolean isSetRequiredRTEVendor();
}

