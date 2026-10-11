/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecuresource;

import autosar21.ecuresource.HWElementContainer;
import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.SignalTransformation;
import autosar21.ecuresource.basicelements.SupportsSafety;
import autosar21.ecuresource.basicelements.SupportsSecurity;
import autosar21.ecuresource.basicelements.Temperature;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface HWElement
extends ARElement {
    public HWElementContainer getHWElementContainer();

    public void setHWElementContainer(HWElementContainer var1);

    public Temperature getHwElementTemperature();

    public void setHwElementTemperature(Temperature var1);

    public EList<HWPort> getPorts();

    public EList<SignalTransformation> getSignalTransformations();

    public Double getStandbyCurrent();

    public void setStandbyCurrent(Double var1);

    public void unsetStandbyCurrent();

    public boolean isSetStandbyCurrent();

    public SupportsSafety getSupportsSafety();

    public void setSupportsSafety(SupportsSafety var1);

    public SupportsSecurity getSupportsSecurity();

    public void setSupportsSecurity(SupportsSecurity var1);
}

