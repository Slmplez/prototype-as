/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.ComplexAttributesT;
import com.etas.amd620.core.ComponentMain.RecordAttributesT;
import org.eclipse.emf.ecore.EObject;

public interface ComplexTypeType
extends EObject {
    public ComplexAttributesT getComplexAttributes();

    public void setComplexAttributes(ComplexAttributesT var1);

    public RecordAttributesT getRecordAttributes();

    public void setRecordAttributes(RecordAttributesT var1);
}

