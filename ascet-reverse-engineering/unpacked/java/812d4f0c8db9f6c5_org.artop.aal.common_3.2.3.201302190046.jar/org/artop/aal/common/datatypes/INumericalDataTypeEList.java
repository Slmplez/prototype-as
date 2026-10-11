/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.artop.aal.common.datatypes;

import org.artop.aal.common.datatypes.INumericalDataType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface INumericalDataTypeEList<P, T extends INumericalDataType>
extends EList<P> {
    public T getNumericalData(int var1);

    public void setNumericalData(int var1, T var2);
}

