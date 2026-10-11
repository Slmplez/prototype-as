/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecuresource;

import autosar3x.ecuresource.HWElementContainer;
import autosar3x.ecuresource.HWPort;
import autosar3x.ecuresource.SignalTransformation;
import autosar3x.ecuresource.basicelements.SupportsSafety;
import autosar3x.ecuresource.basicelements.SupportsSecurity;
import autosar3x.ecuresource.basicelements.Temperature;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
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

