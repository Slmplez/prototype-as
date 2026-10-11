/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.measurementandcalibration.calibrationparameter;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwArraysize;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDefProps;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwCalprm
extends ARElement {
    public SwCalprm getSwCalprm();

    public void setSwCalprm(SwCalprm var1);

    public SwArraysize getSwArraysize();

    public void setSwArraysize(SwArraysize var1);

    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public EList<SwCalprm> getSwCalprms();
}

