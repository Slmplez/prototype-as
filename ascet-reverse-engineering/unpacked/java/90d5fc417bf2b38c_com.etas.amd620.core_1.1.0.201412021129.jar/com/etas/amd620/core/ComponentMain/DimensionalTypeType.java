/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.DimensionalAttributesT;
import com.etas.amd620.core.ComponentMain.TypeType1;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface DimensionalTypeType
extends EObject {
    public DimensionalAttributesT getDimensionalAttributes();

    public void setDimensionalAttributes(DimensionalAttributesT var1);

    public String getInterpolation();

    public void setInterpolation(String var1);

    public BigInteger getMaxSizeX();

    public void setMaxSizeX(BigInteger var1);

    public BigInteger getMaxSizeY();

    public void setMaxSizeY(BigInteger var1);

    public TypeType1 getType();

    public void setType(TypeType1 var1);

    public void unsetType();

    public boolean isSetType();

    public String getXDistributionName();

    public void setXDistributionName(String var1);

    public String getXDistributionOID();

    public void setXDistributionOID(String var1);

    public String getXSizeVariantElementName();

    public void setXSizeVariantElementName(String var1);

    public String getXSizeVariantElementOID();

    public void setXSizeVariantElementOID(String var1);

    public String getYDistributionName();

    public void setYDistributionName(String var1);

    public String getYDistributionOID();

    public void setYDistributionOID(String var1);

    public String getYSizeVariantElementName();

    public void setYSizeVariantElementName(String var1);

    public String getYSizeVariantElementOID();

    public void setYSizeVariantElementOID(String var1);
}

