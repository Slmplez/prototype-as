/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import javax.xml.datatype.XMLGregorianCalendar;
import org.eclipse.emf.ecore.EObject;

public interface FileType
extends EObject {
    public String getName();

    public void setName(String var1);

    public String getLocation();

    public void setLocation(String var1);

    public String getAbstractLocation();

    public void setAbstractLocation(String var1);

    public String getOriginalLocation();

    public void setOriginalLocation(String var1);

    public XMLGregorianCalendar getTimeStamp();

    public void setTimeStamp(XMLGregorianCalendar var1);
}

