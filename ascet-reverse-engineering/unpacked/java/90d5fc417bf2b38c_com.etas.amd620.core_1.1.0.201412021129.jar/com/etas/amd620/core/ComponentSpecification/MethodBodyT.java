/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.FormattedTextT;
import com.etas.amd620.core.ComponentSpecification.GenericDataT;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface MethodBodyT
extends EObject {
    public FormattedTextT getHeaderBlock();

    public void setHeaderBlock(FormattedTextT var1);

    public FormattedTextT getCodeBlock();

    public void setCodeBlock(FormattedTextT var1);

    public EList<GenericDataT> getCustomerData();

    public String getMethodName();

    public void setMethodName(String var1);

    public String getMethodOID();

    public void setMethodOID(String var1);
}

