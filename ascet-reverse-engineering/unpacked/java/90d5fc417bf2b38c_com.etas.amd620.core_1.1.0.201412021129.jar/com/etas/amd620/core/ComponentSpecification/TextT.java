/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.FormattedTextT;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.ViewInfoT;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface TextT
extends EObject {
    public ViewInfoT getViewInfo();

    public void setViewInfo(ViewInfoT var1);

    public PointT getPosition();

    public void setPosition(PointT var1);

    public PointT getOffset();

    public void setOffset(PointT var1);

    public FormattedTextT getText();

    public void setText(FormattedTextT var1);

    public BigInteger getGraphicOID();

    public void setGraphicOID(BigInteger var1);

    public boolean isVisible();

    public void setVisible(boolean var1);

    public void unsetVisible();

    public boolean isSetVisible();
}

