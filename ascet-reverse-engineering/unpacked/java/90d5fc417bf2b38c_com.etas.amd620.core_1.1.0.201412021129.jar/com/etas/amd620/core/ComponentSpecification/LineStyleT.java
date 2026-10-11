/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ColorT;
import com.etas.amd620.core.ComponentSpecification.TypeType5;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface LineStyleT
extends EObject {
    public ColorT getColor();

    public void setColor(ColorT var1);

    public TypeType5 getType();

    public void setType(TypeType5 var1);

    public void unsetType();

    public boolean isSetType();

    public BigInteger getWidth();

    public void setWidth(BigInteger var1);
}

