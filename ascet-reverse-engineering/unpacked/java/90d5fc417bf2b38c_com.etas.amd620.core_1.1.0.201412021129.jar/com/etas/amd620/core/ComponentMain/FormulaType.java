/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.FormalType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface FormulaType
extends EObject {
    public EList<FormalType> getFormal();

    public String getCode();

    public void setCode(String var1);
}

