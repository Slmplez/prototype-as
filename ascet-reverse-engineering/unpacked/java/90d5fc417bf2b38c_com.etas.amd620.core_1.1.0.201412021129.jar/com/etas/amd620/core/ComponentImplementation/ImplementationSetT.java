/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import com.etas.amd620.core.ComponentImplementation.GenericDataT;
import com.etas.amd620.core.ComponentImplementation.NotesT;
import com.etas.amd620.core.ComponentImplementation.TimeStampT;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface ImplementationSetT
extends EObject {
    public TimeStampT getTimeStamp();

    public void setTimeStamp(TimeStampT var1);

    public NotesT getNotes();

    public void setNotes(NotesT var1);

    public EList<GenericDataT> getCustomerData();

    public CacheLockingType getCacheLocking();

    public void setCacheLocking(CacheLockingType var1);

    public void unsetCacheLocking();

    public boolean isSetCacheLocking();

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

    public Object getGenerateDataStructures();

    public void setGenerateDataStructures(Object var1);

    public boolean isGenerateMethodBody();

    public void setGenerateMethodBody(boolean var1);

    public void unsetGenerateMethodBody();

    public boolean isSetGenerateMethodBody();

    public boolean isHierarchicalGenerationForSM();

    public void setHierarchicalGenerationForSM(boolean var1);

    public void unsetHierarchicalGenerationForSM();

    public boolean isSetHierarchicalGenerationForSM();

    public boolean isInlinePrivateMethodsSM();

    public void setInlinePrivateMethodsSM(boolean var1);

    public void unsetInlinePrivateMethodsSM();

    public boolean isSetInlinePrivateMethodsSM();

    public boolean isIsService();

    public void setIsService(boolean var1);

    public void unsetIsService();

    public boolean isSetIsService();

    public String getMemoryLocation();

    public void setMemoryLocation(String var1);

    public String getName();

    public void setName(String var1);

    public String getOID();

    public void setOID(String var1);

    public boolean isOptimizeMethodCalls();

    public void setOptimizeMethodCalls(boolean var1);

    public void unsetOptimizeMethodCalls();

    public boolean isSetOptimizeMethodCalls();

    public boolean isOutlineMethodsSM();

    public void setOutlineMethodsSM(boolean var1);

    public void unsetOutlineMethodsSM();

    public boolean isSetOutlineMethodsSM();

    public String getPackageName();

    public void setPackageName(String var1);

    public boolean isUserDefinedOrder();

    public void setUserDefinedOrder(boolean var1);

    public void unsetUserDefinedOrder();

    public boolean isSetUserDefinedOrder();

    public boolean isUsingServiceRoutines();

    public void setUsingServiceRoutines(boolean var1);

    public void unsetUsingServiceRoutines();

    public boolean isSetUsingServiceRoutines();

    public String getUUID();

    public void setUUID(String var1);
}

