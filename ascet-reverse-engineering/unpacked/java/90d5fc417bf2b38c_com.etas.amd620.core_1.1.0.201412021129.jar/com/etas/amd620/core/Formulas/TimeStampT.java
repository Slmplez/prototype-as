/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.Formulas;

import java.math.BigInteger;
import javax.xml.datatype.XMLGregorianCalendar;
import org.eclipse.emf.ecore.EObject;

public interface TimeStampT
extends EObject {
    public BigInteger getTimeStampCounter();

    public void setTimeStampCounter(BigInteger var1);

    public String getTimeStampKey();

    public void setTimeStampKey(String var1);

    public XMLGregorianCalendar getTimeStampValue();

    public void setTimeStampValue(XMLGregorianCalendar var1);
}

