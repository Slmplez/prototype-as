/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package com.etas.amd620.core.Implementationtypes;

import com.etas.amd620.core.Implementationtypes.ImplementationTypesType;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface DocumentRoot
extends EObject {
    public FeatureMap getMixed();

    public EMap<String, String> getXMLNSPrefixMap();

    public EMap<String, String> getXSISchemaLocation();

    public ImplementationTypesType getImplementationTypes();

    public void setImplementationTypes(ImplementationTypesType var1);
}

