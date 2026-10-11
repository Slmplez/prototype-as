/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ConnectionLineT;
import com.etas.amd620.core.ComponentSpecification.ConnectionPointT;
import com.etas.amd620.core.ComponentSpecification.LineStyleT;
import com.etas.amd620.core.ComponentSpecification.ViewInfoT;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface ConnectionT
extends EObject {
    public ViewInfoT getViewInfo();

    public void setViewInfo(ViewInfoT var1);

    public LineStyleT getLineStyle();

    public void setLineStyle(LineStyleT var1);

    public ConnectionPointT getStart();

    public void setStart(ConnectionPointT var1);

    public ConnectionPointT getEnd();

    public void setEnd(ConnectionPointT var1);

    public ConnectionLineT getConnectionLine();

    public void setConnectionLine(ConnectionLineT var1);

    public BigInteger getConnectionPointNumber();

    public void setConnectionPointNumber(BigInteger var1);
}

