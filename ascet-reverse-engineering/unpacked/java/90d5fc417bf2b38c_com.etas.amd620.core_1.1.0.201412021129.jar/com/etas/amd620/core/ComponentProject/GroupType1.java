/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.OptionT;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface GroupType1
extends EObject {
    public EList<OptionT> getOption();

    public String getName();

    public void setName(String var1);
}

