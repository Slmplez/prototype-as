/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.ComponentTypeType;
import com.etas.amd620.core.ComponentMain.FormattedTextT;
import com.etas.amd620.core.ComponentMain.TimeStampT;
import javax.xml.datatype.XMLGregorianCalendar;
import org.eclipse.emf.ecore.EObject;

public interface ItemBaseT
extends EObject {
    public TimeStampT getTimeStamp();

    public void setTimeStamp(TimeStampT var1);

    public FormattedTextT getComment();

    public void setComment(FormattedTextT var1);

    public byte[] getChecksum();

    public void setChecksum(byte[] var1);

    public ComponentTypeType getComponentType();

    public void setComponentType(ComponentTypeType var1);

    public void unsetComponentType();

    public boolean isSetComponentType();

    public String getName();

    public void setName(String var1);

    public String getNameSpace();

    public void setNameSpace(String var1);

    public String getOID();

    public void setOID(String var1);

    public XMLGregorianCalendar getTimeStamp1();

    public void setTimeStamp1(XMLGregorianCalendar var1);

    public String getUUID();

    public void setUUID(String var1);
}

