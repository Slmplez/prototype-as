/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibex4lin.lincommunication;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4lin.lincommunication.DataTiming;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FreeFormat
extends ARObject {
    public DataTiming getDataTiming();

    public void setDataTiming(DataTiming var1);

    public EList<Integer> getByteValues();

    public void unsetByteValues();

    public boolean isSetByteValues();
}

