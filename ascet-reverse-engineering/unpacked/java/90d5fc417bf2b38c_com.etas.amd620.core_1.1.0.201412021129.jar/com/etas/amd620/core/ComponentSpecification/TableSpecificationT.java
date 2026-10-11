/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.BooleanTableType;
import com.etas.amd620.core.ComponentSpecification.ConditionalTableType;
import com.etas.amd620.core.ComponentSpecification.ESDLCodeT;
import org.eclipse.emf.ecore.EObject;

public interface TableSpecificationT
extends EObject {
    public ESDLCodeT getESDLCode();

    public void setESDLCode(ESDLCodeT var1);

    public ConditionalTableType getConditionalTable();

    public void setConditionalTable(ConditionalTableType var1);

    public BooleanTableType getBooleanTable();

    public void setBooleanTable(BooleanTableType var1);
}

