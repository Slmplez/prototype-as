/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.FormattedTextT;
import com.etas.amd620.core.ComponentMain.GenericDataT;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface ReturnT
extends EObject {
    public FormattedTextT getComment();

    public void setComment(FormattedTextT var1);

    public ElementAttributesT getElementAttributes();

    public void setElementAttributes(ElementAttributesT var1);

    public EList<GenericDataT> getCustomerData();

    public String getOID();

    public void setOID(String var1);

    public String getUUID();

    public void setUUID(String var1);
}

