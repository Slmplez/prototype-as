/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ColorT;
import com.etas.amd620.core.ComponentSpecification.LineStyleT;
import com.etas.amd620.core.ComponentSpecification.ViewInfoT;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface GraphicObjectT
extends EObject {
    public ViewInfoT getViewInfo();

    public void setViewInfo(ViewInfoT var1);

    public LineStyleT getLineStyle();

    public void setLineStyle(LineStyleT var1);

    public ColorT getFillColor();

    public void setFillColor(ColorT var1);

    public BigInteger getGraphicOID();

    public void setGraphicOID(BigInteger var1);
}

