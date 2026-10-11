/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.ElementMappingType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface VariableMappingsInternalType
extends EObject {
    public FeatureMap getGroup();

    public EList<ElementMappingType> getElementMapping();
}

