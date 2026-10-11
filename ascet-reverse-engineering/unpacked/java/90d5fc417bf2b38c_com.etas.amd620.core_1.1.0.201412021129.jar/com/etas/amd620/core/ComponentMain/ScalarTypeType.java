/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.EnumerationAttributesT;
import com.etas.amd620.core.ComponentMain.ScalarAttributesT;
import org.eclipse.emf.ecore.EObject;

public interface ScalarTypeType
extends EObject {
    public ScalarAttributesT getScalarAttributes();

    public void setScalarAttributes(ScalarAttributesT var1);

    public EnumerationAttributesT getEnumerationAttributes();

    public void setEnumerationAttributes(EnumerationAttributesT var1);
}

