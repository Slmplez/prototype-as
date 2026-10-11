/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.SpecificationsType;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface DocumentRoot
extends EObject {
    public FeatureMap getMixed();

    public EMap<String, String> getXMLNSPrefixMap();

    public EMap<String, String> getXSISchemaLocation();

    public SpecificationsType getSpecifications();

    public void setSpecifications(SpecificationsType var1);
}

