/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package org.w3._2000._09.xmldsig;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface TransformType
extends EObject {
    public FeatureMap getMixed();

    public FeatureMap getGroup();

    public FeatureMap getAny();

    public EList<String> getXPath();

    public String getAlgorithm();

    public void setAlgorithm(String var1);
}

