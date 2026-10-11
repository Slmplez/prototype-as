/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.swclass;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.swclass.SwCalprmImpl;
import autosar3x.commonstructure.swclass.SwVariableImpl;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwClassAttrImpl
extends Identifiable {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public EList<SwVariableImpl> getSwVariableImpls();

    public EList<SwCalprmImpl> getSwCalprmImpls();
}

