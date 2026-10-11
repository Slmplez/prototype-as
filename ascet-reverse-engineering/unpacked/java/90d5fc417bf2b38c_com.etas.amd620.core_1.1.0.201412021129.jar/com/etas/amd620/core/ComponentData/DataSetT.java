/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentData;

import com.etas.amd620.core.ComponentData.DataEntryT;
import com.etas.amd620.core.ComponentData.GenericDataT;
import com.etas.amd620.core.ComponentData.NotesT;
import com.etas.amd620.core.ComponentData.TimeStampT;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface DataSetT
extends EObject {
    public TimeStampT getTimeStamp();

    public void setTimeStamp(TimeStampT var1);

    public NotesT getNotes();

    public void setNotes(NotesT var1);

    public EList<GenericDataT> getCustomerData();

    public EList<DataEntryT> getDataEntry();

    public byte[] getChecksum();

    public void setChecksum(byte[] var1);

    public boolean isClassConfig();

    public void setClassConfig(boolean var1);

    public void unsetClassConfig();

    public boolean isSetClassConfig();

    public boolean isDefault();

    public void setDefault(boolean var1);

    public void unsetDefault();

    public boolean isSetDefault();

    public String getName();

    public void setName(String var1);

    public String getOID();

    public void setOID(String var1);

    public String getUUID();

    public void setUUID(String var1);
}

