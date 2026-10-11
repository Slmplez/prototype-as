/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package com.etas.amd620.core.ComponentData;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface GenericDataT
extends EObject {
    public FeatureMap getAny();

    public String getName();

    public void setName(String var1);
}

