/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.calibrationvalue;

import autosar40.commonstructure.calibrationvalue.ValueGroup;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwValues
extends ARObject {
    public EList<NumericalValueVariationPoint> getVfs();

    public EList<String> getVts();

    public void unsetVts();

    public boolean isSetVts();

    public EList<String> getVs();

    public void unsetVs();

    public boolean isSetVs();

    public EList<ValueGroup> getVgs();
}

