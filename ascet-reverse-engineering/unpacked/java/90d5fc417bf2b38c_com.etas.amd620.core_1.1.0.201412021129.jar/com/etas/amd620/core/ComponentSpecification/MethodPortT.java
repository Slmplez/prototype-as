/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.SelectorPortT;
import com.etas.amd620.core.ComponentSpecification.SequenceCallT;
import com.etas.amd620.core.ComponentSpecification.TriggerPortType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface MethodPortT
extends EObject {
    public SequenceCallT getSequenceCall();

    public void setSequenceCall(SequenceCallT var1);

    public EList<SelectorPortT> getSelectorPort();

    public TriggerPortType getTriggerPort();

    public void setTriggerPort(TriggerPortType var1);

    public boolean isDefaultMethod();

    public void setDefaultMethod(boolean var1);

    public void unsetDefaultMethod();

    public boolean isSetDefaultMethod();

    public String getMethodName();

    public void setMethodName(String var1);

    public String getMethodOID();

    public void setMethodOID(String var1);
}

